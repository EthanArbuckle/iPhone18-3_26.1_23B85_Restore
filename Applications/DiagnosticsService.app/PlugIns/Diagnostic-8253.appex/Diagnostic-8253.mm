size_t JasDiagnosticInteractor::primaryScalerHxISPFrameAvailableCallback(size_t result, CVPixelBufferRef pixelBuffer, uint64_t a3, int a4)
{
  if (a4 == 3)
  {
    v5 = result;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    result = CVPixelBufferGetDataSize(pixelBuffer);
    if (result)
    {
      if (Height * Width)
      {
        *(v5 + 21) = 1;
        ++*(v5 + 16);
      }
    }
  }

  return result;
}

JasDiagnosticInteractor *JasDiagnosticInteractor::setIsJasperSuperWideframeArrived(JasDiagnosticInteractor *this, int a2)
{
  if (a2)
  {
    this->m_isRgbSuperWideFramesArrived = 1;
    ++this->m_rgbSuperWideFrameCount;
  }

  return this;
}

void JasDiagnosticInteractor::pointCloudHxISPFrameAvailableCallback(uint64_t a1, CVBufferRef buffer, uint64_t a3, int a4)
{
  if (buffer)
  {
    ++*(a1 + 92);
    CVBufferRetain(buffer);
    v17 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
    v16 = [(__CFDictionary *)v17 objectForKey:@"MetadataDictionary"];
    v7 = [ADJasperPointCloud makeWithDataBuffer:buffer];
    v8 = [v7 length];
    v9 = [v7 confidences];
    v10 = [v7 bankIds];
    if (!*v10)
    {
      sub_100001878(a1 + 64, *(a1 + 72));
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = a1 + 72;
    }

    if (v8 >= 1)
    {
      v11 = v8;
      do
      {
        v12 = *v10++;
        v18 = v12;
        v19 = &v18;
        *(sub_1000018CC(a1 + 64, &v18) + 8) = 1;
        if (*v9 >= 0.5)
        {
          ++*(a1 + 88);
        }

        ++v9;
        --v11;
      }

      while (v11);
    }

    CVBufferRelease(buffer);
    if (a4 == 4 && *(a1 + 80) == *(a1 + 48))
    {
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/JasDiagnosticInteractor.mm"];
      v14 = [v13 lastPathComponent];
      v15 = [NSString stringWithFormat:@"BankDict size %zu point count %d frame %d", *(a1 + 80), *(a1 + 88), *(a1 + 8)];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v14, 83, v15);

      JasDiagnosticInteractor::setIsJasperFrameArrived(a1, 1, *(a1 + 88), *(a1 + 92));
      sub_100001878(a1 + 64, *(a1 + 72));
      *(a1 + 64) = a1 + 72;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
    }
  }
}

JasDiagnosticInteractor *JasDiagnosticInteractor::setIsJasperFrameArrived(JasDiagnosticInteractor *this, int a2, int a3, int a4)
{
  if (a2)
  {
    v6 = this;
    this->m_isJasperFramesArrived = 1;
    m_jasperFramesCount = this->m_jasperFramesCount;
    if (!m_jasperFramesCount)
    {
      this = mach_absolute_time();
      v6->m_timer.beginTime = this;
      m_jasperFramesCount = v6->m_jasperFramesCount;
    }

    v8 = v6->m_jasperPointsCount + a3;
    v6->m_jasperFramesCount = m_jasperFramesCount + 1;
    v6->m_jasperPointsCount = v8;
    v6->m_subframeCount += a4;
  }

  return this;
}

void JasDiagnosticInteractor::JasDiagnosticInteractor(JasDiagnosticInteractor *this)
{
  this->_vptr$StreamingClient = off_1000206C0;
  *&this->m_jasperFramesCount = 0;
  p_m_jasperFramesCount = &this->m_jasperFramesCount;
  *(&this->m_jasperPointsCount + 2) = 0;
  mach_timebase_info(&this->m_timer.sTimebaseInfo);
  this->m_banksIdDictionary.__tree_.__end_node_.__left_ = 0;
  this->m_banksIdDictionary.__tree_.__begin_node_ = &this->m_banksIdDictionary.__tree_.__end_node_;
  this->m_deviceName = 0;
  this->m_banksIdDictionary.__tree_.__size_ = 0;
  this->m_maxBanksNumberForFrame = 4;
  this->m_minAveragePointsNumberThreshold = 200.0;
  v3 = MGCopyAnswer();
  m_deviceName = this->m_deviceName;
  this->m_deviceName = v3;

  v5 = [(NSString *)this->m_deviceName lowercaseString];
  if (([v5 hasPrefix:@"d8"] & 1) == 0)
  {
    v6 = [(NSString *)this->m_deviceName lowercaseString];
    if (([v6 hasPrefix:@"d9"] & 1) == 0)
    {
      v7 = [(NSString *)this->m_deviceName lowercaseString];
      if (([v7 hasPrefix:@"v5"] & 1) == 0)
      {
        v8 = [(NSString *)this->m_deviceName lowercaseString];
        if (([v8 hasPrefix:@"j7"] & 1) == 0)
        {
          v9 = [(NSString *)this->m_deviceName lowercaseString];
          v10 = [v9 hasPrefix:@"j8"];

          if ((v10 & 1) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:
  this->m_maxBanksNumberForFrame = 8;
  this->m_minAveragePointsNumberThreshold = 56.0;
LABEL_10:
  *(p_m_jasperFramesCount + 6) = 0;
  *p_m_jasperFramesCount = 0;
  sub_100001878(&this->m_banksIdDictionary, this->m_banksIdDictionary.__tree_.__end_node_.__left_);
  this->m_banksIdDictionary.__tree_.__begin_node_ = &this->m_banksIdDictionary.__tree_.__end_node_;
  *&this->m_banksIdDictionary.__tree_.__end_node_.__left_ = 0u;
  *&this->m_goodPointsCount = 0;
  this->m_subframeCount = 0;
}

void sub_100001664(_Unwind_Exception *a1)
{
  sub_100001878(v2, *(v1 + 72));

  _Unwind_Resume(a1);
}

double JasDiagnosticInteractor::resetMembers(JasDiagnosticInteractor *this)
{
  p_end_node = &this->m_banksIdDictionary.__tree_.__end_node_;
  left = this->m_banksIdDictionary.__tree_.__end_node_.__left_;
  *(&this->m_jasperPointsCount + 2) = 0;
  *&this->m_jasperFramesCount = 0;
  sub_100001878(&this->m_banksIdDictionary, left);
  result = 0.0;
  p_end_node[-1].__left_ = p_end_node;
  *&p_end_node->__left_ = 0u;
  p_end_node[2].__left_ = 0;
  LODWORD(p_end_node[3].__left_) = 0;
  return result;
}

double JasDiagnosticInteractor::getJasperAveragePointsDuringStreaming(JasDiagnosticInteractor *this)
{
  m_jasperFramesCount = this->m_jasperFramesCount;
  if (m_jasperFramesCount)
  {
    return this->m_jasperPointsCount / m_jasperFramesCount;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_1000017B0(uint64_t a1)
{
  *a1 = off_1000206C0;
  sub_100001878(a1 + 64, *(a1 + 72));

  return a1;
}

void sub_100001804(uint64_t a1)
{
  *a1 = off_1000206C0;
  sub_100001878(a1 + 64, *(a1 + 72));

  operator delete();
}

void sub_100001878(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100001878(a1, *a2);
    sub_100001878(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_1000018CC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_10000199C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1000019F4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_1000019F4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_100002070(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100005C18(a1, a2);
  }

  else
  {
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    result = (v3 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1000021C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_100003184(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1 - v2 != 8)
  {
    return v1 == v2;
  }

  v4 = [*v2 allKeys];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 intValue];

  if (v6)
  {
    v2 = *(a1 + 8);
    v1 = *(a1 + 16);
    return v1 == v2;
  }

  return 1;
}

void sub_100003220(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSNumber numberWithInt:a2];
  v21 = v6;
  v22 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v9 = a1[2];
  v8 = a1[3];
  if (v9 >= v8)
  {
    v11 = a1[1];
    v12 = (v9 - v11) >> 3;
    if ((v12 + 1) >> 61)
    {
      sub_100005950();
    }

    v13 = v8 - v11;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v20 = a1 + 1;
    if (v15)
    {
      sub_100005A0C((a1 + 1), v15);
    }

    v16 = 0;
    v17 = (8 * v12);
    v19 = 0;
    *v17 = v7;
    v18 = 8 * v12 + 8;
    sub_1000058A0((a1 + 1), &v16);
    v10 = a1[2];
    sub_100005A88(&v16);
  }

  else
  {
    *v9 = v7;
    v10 = v9 + 1;
    a1[2] = v10;
  }

  a1[2] = v10;
}

void sub_10000337C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100005A88(&a9);

  _Unwind_Resume(a1);
}

void sub_1000034A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t sub_100004794(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100005E64(a1, a2);
  }

  else
  {
    sub_100005DEC(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

id *sub_1000047D4(id *a1)
{
  v3 = a1 + 1;
  sub_100005B98(&v3);

  return a1;
}

void sub_1000058A0(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_10000597C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000059D8(exception, a1);
}

std::logic_error *sub_1000059D8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100005A0C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100005A54();
}

void sub_100005A54()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_100005A88(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100005ADC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100005B5C(result, a4);
  }

  return result;
}

void sub_100005B5C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100005A0C(a1, a2);
  }

  sub_100005950();
}

void sub_100005B98(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100005C18(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_100005950();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16 = a1;
  if (v7)
  {
    sub_100005DA4(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v13 = v8;
  v15 = 0;
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v14 = 8 * v2 + 8;
  sub_100005D38(a1, &__p);
  v10 = *(a1 + 8);
  if (v14 != v13)
  {
    v14 += (v13 - v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_100005D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int **sub_100005D38(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5;
      v8 = v5[1];
      v5 += 2;
      *v6 = v7;
      v6[1] = v8;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v9 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v9;
  v10 = result[1];
  result[1] = a2[2];
  a2[2] = v10;
  v11 = result[2];
  result[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void sub_100005DA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100005A54();
}

uint64_t sub_100005DEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = sub_100005ADC((v4 + 1), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 8) = v4 + 4;
  return result;
}

uint64_t sub_100005E64(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100005950();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_100005FA0(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  v17 = v8;
  *v8 = *a2;
  v8[2] = 0;
  v8[3] = 0;
  v8[1] = 0;
  sub_100005ADC((v8 + 1), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *&v17 = v17 + 32;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  sub_100005FE8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100006190(&v15);
  return v14;
}

void sub_100005F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100006190(va);
  _Unwind_Resume(a1);
}

void sub_100005FA0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100005A54();
}

uint64_t sub_100005FE8(uint64_t a1, void **a2, void **a3, void *a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v4 + 1);
      a4[3] = v4[3];
      v4[1] = 0;
      v4[2] = 0;
      v4[3] = 0;
      v4 += 4;
      a4 += 4;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  sub_100006094(a1, a2, a3);
  return sub_1000060EC(v7);
}

void sub_100006094(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v8[3] = v3;
    v8[4] = v4;
    v6 = a2;
    do
    {
      v8[0] = v6 + 1;
      sub_100005B98(v8);
      v7 = *v6;
      v6 += 4;
    }

    while (v6 != a3);
  }
}

uint64_t sub_1000060EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100006138(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100006138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v10[3] = v5;
    v10[4] = v6;
    v8 = a3;
    do
    {
      v10[0] = (v8 - 24);
      sub_100005B98(v10);
      v9 = *(v8 - 32);
      v8 -= 32;
    }

    while (v8 != a5);
  }
}

uint64_t sub_100006190(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v5 = (i - 24);
    sub_100005B98(&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100006204(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100006258(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100006258(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {
    v6 = (i - 24);
    sub_100005B98(&v6);
    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

void DeviceCMInterface::DeviceCMInterface(DeviceCMInterface *this)
{
  this->m_currentPearlConfiguration.deviceName = 0;
  this->m_hVersion = -1;
  *&this->m_currentPearlConfiguration.isIrOn = 0;
  this->m_currentPearlConfiguration.isRgbOn = 0;
  this->m_currentPearlConfiguration.irType = 0;
  this->m_currentPearlConfiguration.bitMaskID = 0;
  this->m_currentJasperConfiguration.isJasperOn = 1;
  *&this->m_currentJasperConfiguration.isSuperWideOn = 0;
  *&this->m_currentJasperConfiguration.bitMaskID = 0xFFFFFFFF00000000;
  *&this->m_streamIdsInfo.rgbTeleStreamId = -1;
  *&this->m_streamIdsInfo.rgbPearlStreamId = -1;
  *&this->m_streamIdsInfo.rgbSuperWideStreamId = -1;
  *&this->m_isPearlRgbConfigured = 0;
  this->m_delegate = 0;
  this->m_captureDeviceController = 0;
}

{
  this->m_currentPearlConfiguration.deviceName = 0;
  this->m_hVersion = -1;
  *&this->m_currentPearlConfiguration.isIrOn = 0;
  this->m_currentPearlConfiguration.isRgbOn = 0;
  this->m_currentPearlConfiguration.irType = 0;
  this->m_currentPearlConfiguration.bitMaskID = 0;
  this->m_currentJasperConfiguration.isJasperOn = 1;
  *&this->m_currentJasperConfiguration.isSuperWideOn = 0;
  *&this->m_currentJasperConfiguration.bitMaskID = 0xFFFFFFFF00000000;
  *&this->m_streamIdsInfo.rgbTeleStreamId = -1;
  *&this->m_streamIdsInfo.rgbPearlStreamId = -1;
  *&this->m_streamIdsInfo.rgbSuperWideStreamId = -1;
  *&this->m_isPearlRgbConfigured = 0;
  this->m_delegate = 0;
  this->m_captureDeviceController = 0;
}

DeviceCMInterface *DeviceCMInterface::resetMembers(DeviceCMInterface *this)
{
  this->m_hVersion = -1;
  *&this->m_currentPearlConfiguration.isIrOn = 0;
  this->m_currentPearlConfiguration.isRgbOn = 0;
  this->m_currentPearlConfiguration.irType = 0;
  this->m_currentPearlConfiguration.bitMaskID = 0;
  this->m_currentJasperConfiguration.isJasperOn = 1;
  *&this->m_currentJasperConfiguration.isSuperWideOn = 0;
  *&this->m_currentJasperConfiguration.bitMaskID = 0xFFFFFFFF00000000;
  *&this->m_streamIdsInfo.rgbTeleStreamId = -1;
  *&this->m_streamIdsInfo.rgbPearlStreamId = -1;
  *&this->m_streamIdsInfo.rgbSuperWideStreamId = -1;
  *&this->m_isPearlRgbConfigured = 0;
  this->m_delegate = 0;
  this->m_captureDeviceController = 0;
  return this;
}

HxISPCaptureDeviceController *DeviceCMInterface::releaseInterface(DeviceCMInterface *this)
{
  result = this->m_captureDeviceController;
  if (result)
  {
    HxISPCaptureDeviceController::deactivate(result);
    result = this->m_captureDeviceController;
    if (result)
    {
      HxISPCaptureDeviceController::~HxISPCaptureDeviceController(result);
      operator delete();
    }
  }

  this->m_hVersion = -1;
  *&this->m_currentPearlConfiguration.isIrOn = 0;
  this->m_currentPearlConfiguration.isRgbOn = 0;
  this->m_currentPearlConfiguration.irType = 0;
  this->m_currentPearlConfiguration.bitMaskID = 0;
  this->m_currentJasperConfiguration.isJasperOn = 1;
  *&this->m_currentJasperConfiguration.isSuperWideOn = 0;
  *&this->m_currentJasperConfiguration.bitMaskID = 0xFFFFFFFF00000000;
  *&this->m_streamIdsInfo.rgbTeleStreamId = -1;
  *&this->m_streamIdsInfo.rgbPearlStreamId = -1;
  *&this->m_streamIdsInfo.rgbSuperWideStreamId = -1;
  *&this->m_isPearlRgbConfigured = 0;
  this->m_delegate = 0;
  this->m_captureDeviceController = 0;
  return result;
}

uint64_t DeviceCMInterface::setRgbConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0 || (v3 = *(a1 + 16)) == 0)
  {
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v12 = [v11 lastPathComponent];
    v13 = [NSString stringWithFormat:@"error bad streamID of %d ", a2];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 159, v13);

    return 3758097084;
  }

  v4 = *(a3 + 44);
  if (v4 == -1)
  {
    v76 = 0;
    v6 = HxISPCaptureDeviceController::CopyStreamProperty(v3, a2, kFigCaptureStreamProperty_SupportedFormatsArray, &v76);
    if (v6)
    {
      obja = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v14 = [obja lastPathComponent];
      v15 = DeviceCMInterface::getErrorInformationString(v6);
      v16 = [NSString stringWithFormat:@"error %d failed to get sw stream supported formats %@", v6, v15];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v14, 170, v16);

      return v6;
    }

    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v76;
    v30 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v30)
    {
      v31 = -1;
      v67 = *v73;
LABEL_21:
      v32 = 0;
      v4 = (v31 + 1);
      v63 = v31 + v30;
      while (1)
      {
        if (*v73 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v72 + 1) + 8 * v32);
        v34 = [v33 valueForKey:@"VideoIsBinned"];
        v35 = [v34 BOOLValue];

        v36 = [v33 valueForKey:@"SensorWidth"];
        LODWORD(v34) = [v36 integerValue];

        v37 = [v33 valueForKey:@"SensorHeight"];
        LODWORD(v36) = [v37 integerValue];

        v38 = [v33 valueForKey:@"SupportedOutputs"];
        v39 = [v38 valueForKey:@"PrimaryScaler"];
        v40 = [v39 valueForKey:@"DefaultCropRect"];
        v41 = [v40 valueForKey:@"X"];
        [v41 floatValue];
        v43 = v42;

        v44 = [v40 valueForKey:@"Y"];
        [v44 floatValue];
        v46 = v45;

        v47 = [v40 valueForKey:@"Width"];
        [v47 floatValue];
        v49 = v48;

        v50 = [v40 valueForKey:@"Height"];
        [v50 floatValue];
        v52 = v51;

        LODWORD(v50) = (v35 & 1) != *(a3 + 40);
        LODWORD(v34) = *a3 != v34;
        LODWORD(v36) = *(a3 + 4) != v36;
        v69 = *(a3 + 24);
        v70 = *(a3 + 8);

        v53.f64[0] = v43;
        v54.f64[0] = v49;
        v53.f64[1] = v46;
        v54.f64[1] = v52;
        *&v53.f64[0] = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v70, v53), vceqq_f64(v69, v54))));
        LOWORD(v53.f64[0]) = vmaxv_u16(*&v53.f64[0]);
        if (((LODWORD(v53.f64[0]) | v34 | v50 | v36) & 1) == 0)
        {
          break;
        }

        v32 = v32 + 1;
        v4 = (v4 + 1);
        if (v30 == v32)
        {
          v30 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
          v31 = v63;
          if (v30)
          {
            goto LABEL_21;
          }

          v4 = 0xFFFFFFFFLL;
          break;
        }
      }

      if (v4 != -1)
      {
        v3 = *(a1 + 16);
        goto LABEL_4;
      }
    }

    else
    {
    }

    v56 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v57 = [v56 lastPathComponent];
    v58 = DeviceCMInterface::getErrorInformationString(0);
    v59 = [NSString stringWithFormat:@"error %d failed to find cam required format, %@", 0, v58];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v57, 211, v59);

    return 0;
  }

LABEL_4:
  v5 = [NSNumber numberWithInt:v4];
  v6 = HxISPCaptureDeviceController::SetStreamProperty(v3, a2, kFigCaptureStreamProperty_FormatIndex, v5);
  if (!v6)
  {
    v17 = objc_alloc_init(NSMutableDictionary);
    if (*(a3 + 52))
    {
      v18 = [NSNumber numberWithInt:?];
      [v17 setValue:v18 forKey:kFigCaptureStreamVideoOutputConfigurationKey_Height];
    }

    if (*(a3 + 48))
    {
      v19 = [NSNumber numberWithInt:?];
      [v17 setValue:v19 forKey:kFigCaptureStreamVideoOutputConfigurationKey_Width];
    }

    v20 = *(a3 + 80);
    if (v20 != 0.0)
    {
      v21 = *(a3 + 56);
      v22 = *(a3 + 64);
      v23 = *(a3 + 72);
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v20 - 3));
      [v17 setValue:DictionaryRepresentation forKey:kFigCaptureStreamVideoOutputConfigurationKey_CropRect];
    }

    if ([v17 count])
    {
      v77 = kFigCaptureStreamVideoOutputID_PrimaryScaler;
      v78 = v17;
      v25 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v6 = HxISPCaptureDeviceController::SetStreamProperty(*(a1 + 16), a2, kFigCaptureStreamProperty_VideoOutputConfigurations, v25);
      if (v6)
      {
        v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v27 = [v26 lastPathComponent];
        v28 = DeviceCMInterface::getErrorInformationString(v6);
        v29 = [NSString stringWithFormat:@"error %d failed to video configuration, %@", v6, v28];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v27, 238, v29);
        goto LABEL_18;
      }
    }

    v55 = a1;
    if (*(a3 + 100))
    {
      v6 = HxISPCaptureDeviceController::SetStreamProperty(*(a1 + 16), a2, kFigCaptureStreamProperty_ContinuousAutoFocusNow, 0);
      if (v6)
      {
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v26 = [(__CFBoolean *)v25 lastPathComponent];
        v27 = DeviceCMInterface::getErrorInformationString(v6);
        v28 = [NSString stringWithFormat:@"error %d failed to set auto focus, %@", v6, v27];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v26, 246, v28);
        goto LABEL_47;
      }

      v55 = a1;
      v6 = HxISPCaptureDeviceController::SetStreamProperty(*(a1 + 16), a2, kFigCaptureStreamProperty_AutoFocusPositionSensorMode, &off_100023E80);
      if (v6)
      {
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v26 = [(__CFBoolean *)v25 lastPathComponent];
        v27 = DeviceCMInterface::getErrorInformationString(v6);
        v28 = [NSString stringWithFormat:@"error %d failed to set auto focus pos, %@", v6, v27];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v26, 252, v28);
        goto LABEL_47;
      }
    }

    if (*(a3 + 92))
    {
      v60 = *(v55 + 16);
      v61 = [NSNumber numberWithInt:?];
      v6 = HxISPCaptureDeviceController::SetStreamProperty(v60, a2, kFigCaptureStreamProperty_MaxIntegrationTime, v61);
      v55 = a1;
      if (v6)
      {
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v26 = [(__CFBoolean *)v25 lastPathComponent];
        v27 = DeviceCMInterface::getErrorInformationString(v6);
        v28 = [NSString stringWithFormat:@"error %d failed to set max integrtion time, %@", v6, v27];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v26, 260, v28);
        goto LABEL_47;
      }
    }

    if (*(a3 + 104))
    {
      v6 = HxISPCaptureDeviceController::SetStreamProperty(*(v55 + 16), a2, kFigCaptureStreamProperty_UnlockAENow, &__kCFBooleanTrue);
      if (v6)
      {
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v26 = [(__CFBoolean *)v25 lastPathComponent];
        v27 = DeviceCMInterface::getErrorInformationString(v6);
        v28 = [NSString stringWithFormat:@"error %d failed to set unlock auto expsosure now, %@", v6, v27];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v26, 269, v28);
        goto LABEL_47;
      }
    }

    if (*(a3 + 96))
    {
      v6 = HxISPCaptureDeviceController::SetStreamProperty(*(v55 + 16), a2, kFigCaptureStreamProperty_SphereMode, kFigCaptureStreamSphereMode_Lock);
      if (v6)
      {
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v26 = [(__CFBoolean *)v25 lastPathComponent];
        v27 = DeviceCMInterface::getErrorInformationString(v6);
        v28 = [NSString stringWithFormat:@"error %d failed to set SphereMode, %@", v6, v27];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v26, 278, v28);
        goto LABEL_47;
      }
    }

    if (!*(a3 + 88))
    {
      v6 = 0;
      goto LABEL_49;
    }

    v25 = [NSNumber numberWithInt:?];
    v6 = HxISPCaptureDeviceController::SetStreamProperty(*(a1 + 16), a2, kFigCaptureStreamProperty_MaximumFrameRate, v25);
    if (!v6)
    {
LABEL_48:

LABEL_49:
      return v6;
    }

    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v27 = [v26 lastPathComponent];
    v28 = DeviceCMInterface::getErrorInformationString(v6);
    v29 = [NSString stringWithFormat:@"error %d failed to set auto focus, %@", v6, v28];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v27, 287, v29);
LABEL_18:

LABEL_47:
    goto LABEL_48;
  }

  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v8 = [v7 lastPathComponent];
  v9 = DeviceCMInterface::getErrorInformationString(v6);
  v10 = [NSString stringWithFormat:@"error %d failed to set sw format index, %@", v6, v9];
  NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 217, v10);

  return v6;
}

const __CFString *DeviceCMInterface::getErrorInformationString(DeviceCMInterface *this)
{
  if (this > -12789)
  {
    if (this > -12784)
    {
      if (this <= -12782)
      {
        if (this == -12783)
        {
          return @"base object error value not available";
        }

        else
        {
          return @"base object error unsupported operation";
        }
      }

      else if (this == -12781)
      {
        return @"base object error unsupported version";
      }

      else if (this == -12780)
      {
        return @"base object error parameter error";
      }

      else if (this)
      {
        return @"Unknown error information";
      }

      else
      {
        return @"OK";
      }
    }

    else if (this <= -12787)
    {
      if (this == -12788)
      {
        return @"base object error unsupported protocol";
      }

      else
      {
        return @"base object error property not supported";
      }
    }

    else if (this == -12786)
    {
      return @"base object error allocation failed";
    }

    else if (this == -12785)
    {
      return @"base object error invalidated";
    }

    else
    {
      return @"base object error property not found";
    }
  }

  else
  {
    switch(this)
    {
      case 0xE00002BC:
        result = @"general error";
        break;
      case 0xE00002BD:
        result = @"can't allocate memory";
        break;
      case 0xE00002BE:
        result = @"resource shortage";
        break;
      case 0xE00002BF:
        result = @"error during IPC";
        break;
      case 0xE00002C0:
        result = @"no such device";
        break;
      case 0xE00002C1:
        result = @"privilege violation";
        break;
      case 0xE00002C2:
        result = @"invalid argument";
        break;
      case 0xE00002C3:
        result = @"device read locked";
        break;
      case 0xE00002C4:
        result = @"device write locked";
        break;
      case 0xE00002C5:
        result = @"exclusive access and";
        break;
      case 0xE00002C6:
        result = @"sent/received messages";
        break;
      case 0xE00002C7:
        result = @"unsupported function";
        break;
      case 0xE00002C8:
        result = @"misc. VM failure";
        break;
      case 0xE00002C9:
        result = @"internal error";
        break;
      case 0xE00002CA:
        result = @"General I/O error";
        break;
      case 0xE00002CB:
      case 0xE00002DC:
        return @"Unknown error information";
      case 0xE00002CC:
        result = @"can't acquire lock";
        break;
      case 0xE00002CD:
        result = @"device not open";
        break;
      case 0xE00002CE:
        result = @"read not supported";
        break;
      case 0xE00002CF:
        result = @"write not supported";
        break;
      case 0xE00002D0:
        result = @"alignment error";
        break;
      case 0xE00002D1:
        result = @"Media Error";
        break;
      case 0xE00002D2:
        result = @"device(s) still open";
        break;
      case 0xE00002D3:
        result = @"rld failure";
        break;
      case 0xE00002D4:
        result = @"DMA failure";
        break;
      case 0xE00002D5:
        result = @"Device Busy";
        break;
      case 0xE00002D6:
        result = @"I/O Timeout";
        break;
      case 0xE00002D7:
        result = @"device offline";
        break;
      case 0xE00002D8:
        result = @"not ready";
        break;
      case 0xE00002D9:
        result = @"device not attached";
        break;
      case 0xE00002DA:
        result = @"no DMA channels left";
        break;
      case 0xE00002DB:
        result = @"no space for data";
        break;
      case 0xE00002DD:
        result = @"port already exists";
        break;
      case 0xE00002DE:
        result = @"can't wire down";
        break;
      case 0xE00002DF:
        result = @"no interrupt attached";
        break;
      case 0xE00002E0:
        result = @"no DMA frames enqueued";
        break;
      case 0xE00002E1:
        result = @"oversized msg received";
        break;
      case 0xE00002E2:
        result = @"not permitted";
        break;
      case 0xE00002E3:
        result = @"no power to device";
        break;
      case 0xE00002E4:
        result = @"media not present";
        break;
      case 0xE00002E5:
        result = @"media not formatted";
        break;
      case 0xE00002E6:
        result = @"no such mode";
        break;
      case 0xE00002E7:
        result = @"data underrun";
        break;
      case 0xE00002E8:
        result = @"data overrun";
        break;
      case 0xE00002E9:
        result = @"the device is not working properly!";
        break;
      case 0xE00002EA:
        result = @"a completion routine is required";
        break;
      case 0xE00002EB:
        result = @"operation aborted";
        break;
      case 0xE00002EC:
        result = @"bus bandwidth would be exceeded";
        break;
      case 0xE00002ED:
        result = @"device not responding";
        break;
      case 0xE00002EE:
        result = @"isochronous I/O request for distant past!";
        break;
      case 0xE00002EF:
        result = @"isochronous I/O request for distant future";
        break;
      case 0xE00002F0:
        result = @"data was not found";
        break;
      default:
        if (this != -536870911)
        {
          return @"Unknown error information";
        }

        result = @"should never be seen";
        break;
    }
  }

  return result;
}

DeviceCMInterface *DeviceCMInterface::enableJasperRgbVideo(DeviceCMInterface *this)
{
  if (this->m_currentJasperConfiguration.isWideOn)
  {
    v2 = DeviceCMInterface::enableRGBOutputForStreamId(this, this->m_streamIdsInfo.rgbWideStreamId);
    if (v2)
    {
      v3 = v2;
      v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v5 = [v4 lastPathComponent];
      v6 = DeviceCMInterface::getErrorInformationString(v3);
      v7 = [NSString stringWithFormat:@"enable wide stream failed with %d, %@", v3, v6];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 301, v7);
LABEL_7:

LABEL_10:
      return v3;
    }
  }

  if (this->m_currentJasperConfiguration.isSuperWideOn)
  {
    v8 = DeviceCMInterface::enableRGBOutputForStreamId(this, this->m_streamIdsInfo.rgbSuperWideStreamId);
    if (v8)
    {
      v3 = v8;
      v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v5 = [v4 lastPathComponent];
      v6 = DeviceCMInterface::getErrorInformationString(v3);
      v7 = [NSString stringWithFormat:@"enable wide stream failed with %d, %@", v3, v6];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 310, v7);
      goto LABEL_7;
    }
  }

  v3 = DeviceCMInterface::enableJasperPointCloudOutput(this);
  if (v3)
  {
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v5 = [v4 lastPathComponent];
    v6 = [NSString stringWithFormat:@"failed to enable outputs"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 318, v6);
    goto LABEL_10;
  }

  return v3;
}

uint64_t DeviceCMInterface::enableRGBOutputForStreamId(DeviceCMInterface *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || !this->m_captureDeviceController)
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    v9 = [NSString stringWithFormat:@"enableRGBOutputForStreamId failed, stream id invalid"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 892, v9);
    v6 = 3758097129;

    return v6;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  CFDictionarySetValue(Mutable, kFigCaptureStreamVideoOutputID_PrimaryScaler, kCFBooleanTrue);
  if (!HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, a2, kFigCaptureStreamProperty_VideoOutputsEnabled, v5))
  {
    CFRelease(v5);
    return 0;
  }

  return 3758097129;
}

uint64_t DeviceCMInterface::enableJasperPointCloudOutput(DeviceCMInterface *this)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, kFigCaptureStreamVideoOutputID_PointCloud, kCFBooleanTrue);
    v4 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, kFigCaptureStreamProperty_VideoOutputsEnabled, v3);
    if (v4)
    {
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v6 = [v5 lastPathComponent];
      v7 = DeviceCMInterface::getErrorInformationString(v4);
      v8 = [NSString stringWithFormat:@"enableJasperOutput failed with OSStatus 0x%x, %@", v4, v7];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 952, v8);

      return 3758097129;
    }

    else
    {
      CFRelease(v3);
    }
  }

  else
  {
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v10 = [v9 lastPathComponent];
    v11 = [NSString stringWithFormat:@"fail to create output enable dictionary for pointcloud output"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 961, v11);
    v4 = 3758097084;
  }

  return v4;
}

uint64_t DeviceCMInterface::configJasperRgbMultiStream(DeviceCMInterface *this, const JasperConfiguration *a2)
{
  v2 = 3758097126;
  if (!a2->isSyncModeOn && a2->isJasperOn)
  {
    if (this->m_streamIdsInfo.jasperStreamId == -1)
    {
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v15 = [v14 lastPathComponent];
      v16 = [NSString stringWithFormat:@"no jasper id detected"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v15, 334, v16);

      return 3758097088;
    }

    bitMaskID = a2->bitMaskID;
    if (bitMaskID == 16 || bitMaskID == 8)
    {
      v34 = kFigCaptureTimeOfFlightConfigurationKey_ProjectorMode;
      v35 = &off_100023E98;
      v7 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v8 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, kFigCaptureStreamProperty_TimeOfFlightConfiguration, v7);
      if (v8)
      {
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        jasperStreamId = this->m_streamIdsInfo.jasperStreamId;
        v12 = DeviceCMInterface::getErrorInformationString(v8);
        v13 = [NSString stringWithFormat:@"setting property kFigCaptureStreamProperty_TimeOfFlightConfiguration failed with OSStatus 0x%x for stream id %d (%@)", v8, jasperStreamId, v12];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 351, v13);

LABEL_11:
        v2 = v8;
LABEL_12:

        return v2;
      }

      this->m_isJasperConfigured = 1;
      this->m_currentJasperConfiguration.isJasperOn = 1;
      if (a2->isSuperWideOn)
      {
        v8 = DeviceCMInterface::setJasperMultiOutModeByStreamId(this, this->m_streamIdsInfo.rgbSuperWideStreamId, 1);
        if (v8)
        {
          v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
          v10 = [v9 lastPathComponent];
          v18 = [NSString stringWithFormat:@"setMultiOutModeByStreamId for rgb sw failed"];
          NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 364, v18);

          goto LABEL_11;
        }

        p_isWideOn = &a2->isWideOn;
        if (!a2->isWideOn)
        {
LABEL_23:
          v8 = DeviceCMInterface::setJasperMultiOutModeByStreamId(this, this->m_streamIdsInfo.jasperStreamId, 1);
          if (v8)
          {
            v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
            v10 = [v9 lastPathComponent];
            v21 = [NSString stringWithFormat:@"faile to enable jasper multi output mode"];
            NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 382, v21);
          }

          else
          {
            v22 = this->m_captureDeviceController + 16;
            v23 = *&v22[8 * this->m_streamIdsInfo.rgbSuperWideStreamId];
            v24 = *&v22[8 * this->m_streamIdsInfo.rgbWideStreamId];
            v25 = *&v22[8 * this->m_streamIdsInfo.jasperStreamId];
            v26 = objc_alloc_init(NSMutableArray);
            v10 = v26;
            if (*p_isWideOn)
            {
              [v26 addObject:v24];
            }

            if (a2->isSuperWideOn)
            {
              [v10 addObject:v23];
            }

            if (a2->isJasperOn)
            {
              [v10 addObject:v25];
            }

            v32 = kFigCaptureDeviceMultiCamConfigurationKey_ActiveUnsynchronizedStreams;
            v33 = v10;
            v9 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            v8 = HxISPCaptureDeviceController::SetDeviceProperty(this->m_captureDeviceController, kFigCaptureDeviceProperty_MultiCamConfiguration, v9);
            if (v8)
            {
              v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
              v28 = [v27 lastPathComponent];
              v29 = this->m_streamIdsInfo.jasperStreamId;
              v30 = DeviceCMInterface::getErrorInformationString(v8);
              v31 = [NSString stringWithFormat:@"enableSyncForEnumeratedStreams failed with OSStatus 0x%x for stream id %d (%@)", v8, v29, v30];
              NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v28, 403, v31);
            }

            else
            {
              this->m_currentJasperConfiguration = *a2;
            }
          }

          goto LABEL_11;
        }
      }

      else
      {
        p_isWideOn = &a2->isWideOn;
        if (!a2->isWideOn)
        {
          goto LABEL_12;
        }
      }

      v8 = DeviceCMInterface::setJasperMultiOutModeByStreamId(this, this->m_streamIdsInfo.rgbWideStreamId, 1);
      if (v8)
      {
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        v20 = [NSString stringWithFormat:@"setMultiOutModeByStreamId for rgb w failed"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 373, v20);

        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  return v2;
}

uint64_t DeviceCMInterface::setJasperMultiOutModeByStreamId(DeviceCMInterface *this, uint64_t a2, int a3)
{
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController)
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 781, v10);
    v7 = 3758097084;
    goto LABEL_10;
  }

  if (this->m_streamIdsInfo.jasperStreamId != a2 && this->m_streamIdsInfo.rgbSuperWideStreamId != a2 && this->m_streamIdsInfo.rgbWideStreamId != a2)
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"stream id %d is invalid (should be %d or %d or %d for jasper)", a2, this->m_streamIdsInfo.jasperStreamId, this->m_streamIdsInfo.rgbSuperWideStreamId, this->m_streamIdsInfo.rgbWideStreamId];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 787, v10);
    v7 = 3758097090;
    goto LABEL_10;
  }

  v6 = &kCFBooleanTrue;
  if (!a3)
  {
    v6 = &kCFBooleanFalse;
  }

  v7 = HxISPCaptureDeviceController::SetStreamProperty(m_captureDeviceController, a2, kFigCaptureStreamProperty_MultipleOutputSupportEnabled, *v6);
  if (v7)
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = DeviceCMInterface::getErrorInformationString(v7);
    v11 = [NSString stringWithFormat:@"setMultiOutModeByStreamId failed, OSStatus error 0x%x (%@)", v7, v10];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 797, v11);

    v7 = 3758097129;
LABEL_10:
  }

  return v7;
}

uint64_t DeviceCMInterface::configJasperDevice(DeviceCMInterface *this, const JasperConfiguration *a2)
{
  *&this->m_isJasperSuperWideConfigured = 0;
  this->m_currentJasperConfiguration.isJasperOn = 1;
  *&this->m_currentJasperConfiguration.isSuperWideOn = 0;
  this->m_currentJasperConfiguration.bitMaskID = 0;
  jasperStreamId = this->m_streamIdsInfo.jasperStreamId;
  if (jasperStreamId == -1)
  {
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v13 = [v12 lastPathComponent];
    v14 = [NSString stringWithFormat:@"no jasper id detected"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v13, 419, v14);

    return 3758097088;
  }

  if (a2->isJasperOn)
  {
    theArray = 0;
    v5 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, jasperStreamId, kFigCaptureStreamProperty_SupportedTimeOfFlightProjectorModes, &theArray);
    v6 = theArray;
    theArray = 0;
    if (v5)
    {
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v8 = [v7 lastPathComponent];
      v9 = this->m_streamIdsInfo.jasperStreamId;
      v10 = DeviceCMInterface::getErrorInformationString(v5);
      v11 = [NSString stringWithFormat:@"setting property kFigCaptureStreamProperty_SupportedTimeOfFlightProjectorModes failed with OSStatus 0x%x for stream id %d (%@)", v5, v9, v10];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 436, v11);

      return v5;
    }

    v15 = [(__CFArray *)v6 containsObject:&off_100023EB0];
    v16 = [(__CFArray *)v6 containsObject:&off_100023E98];
    if (v15)
    {
      v74 = kFigCaptureTimeOfFlightConfigurationKey_ProjectorMode;
      v75 = &off_100023EB0;
      v17 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v19 = [v18 lastPathComponent];
      v20 = [NSString stringWithFormat:@"NormalShortHybridMode detected"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v19, 451, v20);
    }

    else
    {
      if (!v16)
      {
        v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v22 = [v27 lastPathComponent];
        v23 = [NSString stringWithFormat:@"cannot resolve projector mode"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v22, 462, v23);
        v5 = 3758097084;
        goto LABEL_34;
      }

      v72 = kFigCaptureTimeOfFlightConfigurationKey_ProjectorMode;
      v73 = &off_100023E98;
      v17 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v19 = [v18 lastPathComponent];
      v20 = [NSString stringWithFormat:@"NormalMode detected"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v19, 458, v20);
    }

    v21 = v17;

    v5 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, kFigCaptureStreamProperty_TimeOfFlightConfiguration, v17);
    if (v5)
    {
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v23 = [v22 lastPathComponent];
      v24 = this->m_streamIdsInfo.jasperStreamId;
      v25 = DeviceCMInterface::getErrorInformationString(v5);
      v26 = [NSString stringWithFormat:@"setting property kFigCaptureStreamProperty_TimeOfFlightConfiguration failed with OSStatus 0x%x for stream id %d (%@)", v5, v24, v25];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v23, 469, v26);

      v27 = v21;
LABEL_34:

      return v5;
    }

    this->m_isJasperConfigured = 1;
    this->m_currentJasperConfiguration.isJasperOn = 1;
  }

  if (a2->isSuperWideOn)
  {
    rgbSuperWideStreamId = this->m_streamIdsInfo.rgbSuperWideStreamId;
    if (rgbSuperWideStreamId == -1)
    {
      DeviceCMInterface::enumerateStreamsIndices(this);
      rgbSuperWideStreamId = this->m_streamIdsInfo.rgbSuperWideStreamId;
      if (rgbSuperWideStreamId == -1)
      {
        v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v44 = [v43 lastPathComponent];
        v45 = [NSString stringWithFormat:@"no available RGB super wide stream index"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v44, 480, v45);

        return 3758097136;
      }
    }

    v5 = DeviceCMInterface::setJasperMultiOutModeByStreamId(this, rgbSuperWideStreamId, 1);
    if (v5)
    {
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v30 = [v29 lastPathComponent];
      v31 = [NSString stringWithFormat:@"setMultiOutModeByStreamId for rgb failed"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v30, 488, v31);

      return v5;
    }

    this->m_isJasperSuperWideConfigured = 1;
    if (a2->isJasperOn && a2->isSuperWideOn)
    {
      m_captureDeviceController = this->m_captureDeviceController;
      if (a2->isSyncModeOn)
      {
        if (*(m_captureDeviceController + 536))
        {
          v33 = kFigCaptureSynchronizedStreamsGroupProperty_SupportedStreams;
          v34 = 260;
          do
          {
            theArray = 0;
            FigBaseObject = FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
            v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v36 || v36(FigBaseObject, v33, kCFAllocatorDefault, &theArray))
            {
              break;
            }

            v37 = theArray;
            v76.length = CFArrayGetCount(theArray);
            v76.location = 0;
            if (CFArrayContainsValue(v37, v76, *(this->m_captureDeviceController + this->m_streamIdsInfo.jasperStreamId + 2)) && (v38 = theArray, v77.length = CFArrayGetCount(theArray), v77.location = 0, CFArrayContainsValue(v38, v77, *(this->m_captureDeviceController + this->m_streamIdsInfo.rgbSuperWideStreamId + 2))))
            {
              v39 = *(this->m_captureDeviceController + v34);
            }

            else
            {
              v39 = 0;
            }

            CFRelease(theArray);
            if (v39)
            {
              goto LABEL_32;
            }

            v40 = v34 - 259;
            ++v34;
          }

          while (v40 < *(this->m_captureDeviceController + 536));
        }

        v39 = 0;
LABEL_32:
        v69 = v39;
        v70 = kFigCaptureDeviceMultiCamConfigurationKey_ActiveSynchronizedStreamsGroups;
        v41 = [NSArray arrayWithObjects:&v69 count:1];
        v71 = v41;
        v42 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      }

      else
      {
        v46 = m_captureDeviceController + 16;
        v47 = *&v46[8 * this->m_streamIdsInfo.jasperStreamId];
        v66[1] = *&v46[8 * this->m_streamIdsInfo.rgbSuperWideStreamId];
        v67 = kFigCaptureDeviceMultiCamConfigurationKey_ActiveUnsynchronizedStreams;
        v66[0] = v47;
        v41 = [NSArray arrayWithObjects:v66 count:2];
        v68 = v41;
        v42 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      }

      v48 = v42;

      v49 = HxISPCaptureDeviceController::SetDeviceProperty(this->m_captureDeviceController, kFigCaptureDeviceProperty_MultiCamConfiguration, v48);
      if (v49)
      {
        v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v51 = [v50 lastPathComponent];
        v52 = this->m_streamIdsInfo.jasperStreamId;
        v53 = DeviceCMInterface::getErrorInformationString(v49);
        v54 = [NSString stringWithFormat:@"enableSyncForEnumeratedStreams failed with OSStatus 0x%x for stream id %d (%@)", v49, v52, v53];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v51, 537, v54);
      }

      v5 = DeviceCMInterface::enableSWRGBOutput(this);
      if (v5)
      {
        v55 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v56 = [v55 lastPathComponent];
        v57 = [NSString stringWithFormat:@"Configure the primary output to multioutput + enable failed"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v56, 544, v57);

        return v5;
      }
    }
  }

  v5 = DeviceCMInterface::setJasperMultiOutModeByStreamId(this, this->m_streamIdsInfo.jasperStreamId, 1);
  if (v5)
  {
    v58 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v59 = [v58 lastPathComponent];
    v60 = [NSString stringWithFormat:@"faile to enable jasper multi output mode"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v59, 555, v60);
  }

  else
  {
    v5 = DeviceCMInterface::enableJasperPointCloudOutput(this);
    if (v5)
    {
      v61 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v62 = [v61 lastPathComponent];
      v63 = [NSString stringWithFormat:@"failed to enable outputs"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v62, 563, v63);
    }

    else
    {
      this->m_currentJasperConfiguration = *a2;
    }
  }

  return v5;
}

BOOL DeviceCMInterface::isJasperSuperWideExist(DeviceCMInterface *this)
{
  if (this->m_streamIdsInfo.rgbSuperWideStreamId != -1)
  {
    return 1;
  }

  DeviceCMInterface::enumerateStreamsIndices(this);
  return this->m_streamIdsInfo.rgbSuperWideStreamId != -1;
}

uint64_t DeviceCMInterface::enableSWRGBOutput(DeviceCMInterface *this)
{
  v1 = DeviceCMInterface::enableRGBOutputForStreamId(this, this->m_streamIdsInfo.rgbSuperWideStreamId);
  if (v1)
  {
    v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v3 = [v2 lastPathComponent];
    v4 = [NSString stringWithFormat:@"enableRGBOutput failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v3, 933, v4);
  }

  return v1;
}

uint64_t DeviceCMInterface::requestControlOfStreams(DeviceCMInterface *this, int a2, useconds_t a3)
{
  if (this->m_captureDeviceController)
  {
    if (a2)
    {
      v30 = kFigCaptureDeviceRequestControlOfStreamsOptionsKey_ClientPriority;
      v31 = &off_100023EB0;
      v4 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v6 = [v5 lastPathComponent];
      v7 = [NSString stringWithFormat:@"request control on high priority"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 587, v7);

      v29 = v4;
    }

    else
    {
      v29 = 0;
    }

    v12 = 1;
    while (1)
    {
      v13 = HxISPCaptureDeviceController::RequestStreams(this->m_captureDeviceController, *(this->m_captureDeviceController + 1), v29);
      v14 = v13;
      if (v13 != -12681)
      {
        break;
      }

      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v16 = [v15 lastPathComponent];
      v17 = [NSString stringWithFormat:@"requestControlOfStreamscontrol - controlled by another client. %d/%d", v12, 10];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 595, v17);

      usleep(0x7A120u);
      v12 = (v12 + 1);
      if (v12 == 11)
      {
        goto LABEL_17;
      }
    }

    if (v13 != -12782 && v13 != 0)
    {
LABEL_17:
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v23 = [v22 lastPathComponent];
      v24 = DeviceCMInterface::getErrorInformationString(v14);
      v25 = [NSString stringWithFormat:@"requestControlOfStreamscontrol failed, OSStatus error 0x%x, %@", v14, v24];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v23, 609, v25);

      v11 = 3758097129;
      goto LABEL_18;
    }

    if (a2)
    {
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v20 = [v19 lastPathComponent];
      v21 = [NSString stringWithFormat:@"waiting for preempted client to terminate for %.2f sec...", a3 / 1000000.0];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v20, 616, v21);

      usleep(a3);
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v23 = [v22 lastPathComponent];
      v24 = [NSString stringWithFormat:@"done waiting"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v23, 618, v24);
      v11 = 0;
LABEL_18:

      goto LABEL_20;
    }

    v11 = 0;
LABEL_20:
  }

  else
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 579, v10);
    v11 = 3758097084;
  }

  return v11;
}

uint64_t DeviceCMInterface::releaseControlOfStreams(DeviceCMInterface *this)
{
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController)
  {
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v4 = [v3 lastPathComponent];
    v5 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v4, 630, v5);
    v2 = 3758097084;
    goto LABEL_5;
  }

  v2 = HxISPCaptureDeviceController::RelinquishStreams(m_captureDeviceController, *(m_captureDeviceController + 1));
  if (v2)
  {
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v4 = [v3 lastPathComponent];
    v5 = DeviceCMInterface::getErrorInformationString(v2);
    v6 = [NSString stringWithFormat:@"fail during releaseControlOfStreams, OSStatus error 0x%x (%@)", v2, v5];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v4, 637, v6);

LABEL_5:
  }

  return v2;
}

uint64_t DeviceCMInterface::enumerateStreamsIndices(DeviceCMInterface *this)
{
  v2 = 0;
  *&this->m_streamIdsInfo.rgbTeleStreamId = -1;
  *&this->m_streamIdsInfo.rgbPearlStreamId = -1;
  *&this->m_streamIdsInfo.rgbSuperWideStreamId = -1;
  p_m_streamIdsInfo = &this->m_streamIdsInfo;
  v3 = kFigCaptureStreamProperty_PortType;
  v4 = kFigCapturePortType_FrontFacingInfraredCamera;
  v5 = kFigCapturePortType_FrontFacingCamera;
  v28 = kFigCapturePortType_FrontFacingSuperWideCamera;
  v6 = kFigCapturePortType_BackFacingSuperWideCamera;
  v7 = kFigCapturePortType_BackFacingCamera;
  v8 = kFigCapturePortType_BackFacingTelephotoCamera;
  v9 = kFigCapturePortType_BackFacingSparseTimeOfFlightCamera;
  while (1)
  {
    theString1 = 0;
    v10 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, v2, v3, &theString1);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = theString1 == 0;
    }

    if (!v11)
    {
      if (CFStringCompare(theString1, v4, 0) == kCFCompareEqualTo)
      {
        this->m_streamIdsInfo.irPearlStreamId = v2;
      }

      if (CFStringCompare(theString1, v5, 0) == kCFCompareEqualTo || CFStringCompare(theString1, v28, 0) == kCFCompareEqualTo)
      {
        this->m_streamIdsInfo.rgbPearlStreamId = v2;
      }

      if (CFStringCompare(theString1, v6, 0) == kCFCompareEqualTo)
      {
        this->m_streamIdsInfo.rgbSuperWideStreamId = v2;
      }

      if (CFStringCompare(theString1, v7, 0) == kCFCompareEqualTo)
      {
        this->m_streamIdsInfo.rgbWideStreamId = v2;
      }

      if (CFStringCompare(theString1, v8, 0) == kCFCompareEqualTo)
      {
        p_m_streamIdsInfo->rgbTeleStreamId = v2;
      }

      if (CFStringCompare(theString1, v9, 0) == kCFCompareEqualTo)
      {
        this->m_streamIdsInfo.jasperStreamId = v2;
      }

      goto LABEL_28;
    }

    v12 = v10 != 0;
    if (theString1)
    {
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = v10 == 0;
    }

    if (v13 || v12)
    {
      break;
    }

LABEL_28:
    if (theString1)
    {
      CFRelease(theString1);
    }

    if (++v2 == 8)
    {
      if ((!this->m_captureDeviceController || this->m_streamIdsInfo.irPearlStreamId < 0) && (+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"), v15 = objc_claimAutoreleasedReturnValue(), [v15 lastPathComponent], v16 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"IR Stream id not found, (NOTE: possibly not required if not pearl device)"), v17 = objc_claimAutoreleasedReturnValue(), NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 711, v17), v17, v16, v15, !this->m_captureDeviceController) || this->m_streamIdsInfo.rgbPearlStreamId < 0)
      {
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v19 = [v18 lastPathComponent];
        v20 = [NSString stringWithFormat:@"RGB Stream id not found"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v19, 716, v20);
      }

      return 0;
    }
  }

  v22 = @"NULL Type";
  if (theString1)
  {
    v22 = theString1;
  }

  v23 = v22;
  v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v25 = [v24 lastPathComponent];
  v26 = [NSString stringWithFormat:@"enumeration encountered in unexpected results or retVal = %d and type = %@", v10, v23];
  NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v25, 695, v26);

  if (theString1)
  {
    CFRelease(theString1);
  }

  return 3758097136;
}

uint64_t DeviceCMInterface::setPearlMultiOutModeByStreamId(DeviceCMInterface *this, uint64_t a2, int a3)
{
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController)
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 809, v10);
    v7 = 3758097084;
    goto LABEL_10;
  }

  if (this->m_streamIdsInfo.rgbPearlStreamId != a2 && this->m_streamIdsInfo.irPearlStreamId != a2)
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"stream id %d is invalid (should be %d for rgb or %d for ir)", a2, this->m_streamIdsInfo.rgbPearlStreamId, this->m_streamIdsInfo.irPearlStreamId];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 815, v10);
    v7 = 3758097090;
    goto LABEL_10;
  }

  v6 = &kCFBooleanTrue;
  if (!a3)
  {
    v6 = &kCFBooleanFalse;
  }

  v7 = HxISPCaptureDeviceController::SetStreamProperty(m_captureDeviceController, a2, kFigCaptureStreamProperty_MultipleOutputSupportEnabled, *v6);
  if (v7)
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = DeviceCMInterface::getErrorInformationString(v7);
    v11 = [NSString stringWithFormat:@"setMultiOutModeByStreamId failed, OSStatus error 0x%x (%@)", v7, v10];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 826, v11);

    v7 = 3758097129;
LABEL_10:
  }

  return v7;
}

BOOL DeviceCMInterface::isPearlIrExist(DeviceCMInterface *this)
{
  if (this->m_streamIdsInfo.irPearlStreamId != -1)
  {
    return 1;
  }

  DeviceCMInterface::enumerateStreamsIndices(this);
  return this->m_streamIdsInfo.irPearlStreamId != -1;
}

BOOL DeviceCMInterface::isPearlRgbExist(DeviceCMInterface *this)
{
  if (this->m_streamIdsInfo.rgbPearlStreamId != -1)
  {
    return 1;
  }

  DeviceCMInterface::enumerateStreamsIndices(this);
  return this->m_streamIdsInfo.rgbPearlStreamId != -1;
}

BOOL DeviceCMInterface::isJasperExist(DeviceCMInterface *this)
{
  if (this->m_streamIdsInfo.jasperStreamId != -1)
  {
    return 1;
  }

  DeviceCMInterface::enumerateStreamsIndices(this);
  return this->m_streamIdsInfo.jasperStreamId != -1;
}

uint64_t DeviceCMInterface::setStreamProperty(DeviceCMInterface *this, uint64_t a2, const __CFString *a3, NSDictionary *a4)
{
  v7 = a4;
  m_captureDeviceController = this->m_captureDeviceController;
  if (m_captureDeviceController)
  {
    v9 = HxISPCaptureDeviceController::SetStreamProperty(m_captureDeviceController, a2, a3, v7);
    if (!v9)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v11 = [v10 lastPathComponent];
    v12 = DeviceCMInterface::getErrorInformationString(v9);
    v13 = [NSString stringWithFormat:@"SetStreamProperty %@ for stream id %d failed with OSStatus 0x%x (%@)", a3, a2, v9, v12];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v11, 846, v13);

    v14 = 3758097129;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v11 = [v10 lastPathComponent];
    v12 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v11, 838, v12);
    v14 = 3758097084;
  }

LABEL_7:
  return v14;
}

uint64_t DeviceCMInterface::enablePearlIROutput(DeviceCMInterface *this)
{
  v2 = kFigCaptureStreamVideoOutputID_PrimaryScaler;
  v16 = kFigCaptureStreamVideoOutputID_PrimaryScaler;
  v14 = kFigCaptureStreamVideoOutputConfigurationKey_AttachRaw;
  v15 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  v5 = DeviceCMInterface::setStreamProperty(this, this->m_streamIdsInfo.irPearlStreamId, kFigCaptureStreamProperty_VideoOutputConfigurations, v4);
  if (!v5)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v10 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, v2, kCFBooleanTrue);
      v11 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, kFigCaptureStreamProperty_VideoOutputsEnabled, v10);
      if (v11)
      {
        v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v7 = [v6 lastPathComponent];
        v8 = DeviceCMInterface::getErrorInformationString(v11);
        v12 = [NSString stringWithFormat:@"enableIROutput failed with OSStatus 0x%x (%@)", v11, v8];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 877, v12);

        v5 = 3758097129;
        goto LABEL_3;
      }

      CFRelease(v10);
    }

    v5 = 0;
    goto LABEL_9;
  }

  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v7 = [v6 lastPathComponent];
  v8 = [NSString stringWithFormat:@"Configure the primary output failed"];
  NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 862, v8);
LABEL_3:

LABEL_9:
  return v5;
}

void sub_10000A768(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t DeviceCMInterface::enablePearlRGBOutput(DeviceCMInterface *this)
{
  v1 = DeviceCMInterface::enableRGBOutputForStreamId(this, this->m_streamIdsInfo.rgbPearlStreamId);
  if (v1)
  {
    v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v3 = [v2 lastPathComponent];
    v4 = [NSString stringWithFormat:@"enableRGBOutput failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v3, 921, v4);
  }

  return v1;
}

uint64_t DeviceCMInterface::setPearlIrCofiguration(DeviceCMInterface *this, int a2)
{
  v3 = 0;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v22[0] = @"EnableIRProjector";
        v22[1] = @"ProjectorType";
        v23[0] = &__kCFBooleanTrue;
        v23[1] = @"Flood";
        v3 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
        v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v5 = [v4 lastPathComponent];
        v6 = [NSString stringWithFormat:@"Setting Pearl Ir configuration to %@", @"Flood"];
        NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 988, v6);
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_17;
        }

        v20[0] = @"EnableIRProjector";
        v20[1] = @"ProjectorType";
        v21[0] = &__kCFBooleanTrue;
        v21[1] = @"SparseLowPower";
        v3 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
        v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v5 = [v4 lastPathComponent];
        v6 = [NSString stringWithFormat:@"Setting Pearl Ir configuration to %@", @"SparseLowPower"];
        NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 996, v6);
      }
    }

    else
    {
      v24 = @"EnableIRProjector";
      v25 = &__kCFBooleanFalse;
      v3 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v5 = [v4 lastPathComponent];
      v6 = [NSString stringWithFormat:@"Setting Pearl Ir configuration to %@", @"None"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 979, v6);
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v16[0] = @"EnableIRProjector";
      v16[1] = @"ProjectorType";
      v17[0] = &__kCFBooleanTrue;
      v17[1] = @"DenseProbeAB";
      v3 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v5 = [v4 lastPathComponent];
      v6 = [NSString stringWithFormat:@"Setting Pearl Ir configuration to %@", @"DenseProbeAB"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 1012, v6);
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_17;
      }

      v12[0] = @"EnableIRProjector";
      v12[1] = @"ProjectorType";
      v13[0] = &__kCFBooleanTrue;
      v13[1] = @"SparseProbeAB";
      v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
      v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v5 = [v4 lastPathComponent];
      v6 = [NSString stringWithFormat:@"Setting Pearl Ir configuration to %@", @"SparseProbeAB"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 1030, v6);
    }
  }

  else if (a2 == 3)
  {
    v18[0] = @"EnableIRProjector";
    v18[1] = @"ProjectorType";
    v19[0] = &__kCFBooleanTrue;
    v19[1] = @"Sparse";
    v3 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v5 = [v4 lastPathComponent];
    v6 = [NSString stringWithFormat:@"Setting Pearl Ir configuration to %@", @"Sparse"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 1004, v6);
  }

  else
  {
    v14[0] = @"EnableIRProjector";
    v14[1] = @"ProjectorType";
    v15[0] = &__kCFBooleanTrue;
    v15[1] = @"Dense";
    v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v5 = [v4 lastPathComponent];
    v6 = [NSString stringWithFormat:@"Setting Pearl Ir configuration to %@", @"Dense"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 1021, v6);
  }

LABEL_17:
  v7 = DeviceCMInterface::setStreamProperty(this, this->m_streamIdsInfo.irPearlStreamId, @"IRProjectorParams", v3);
  if (v7)
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"setProjectorMode failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 1038, v10);
  }

  return v7;
}

uint64_t DeviceCMInterface::setPearlDepthConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v23 = a3;
  valuePtr = a2;
  if (!*(a1 + 16))
  {
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v20 = [v19 lastPathComponent];
    v21 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v20, 1049, v21, v23, valuePtr);
    v14 = 3758097084;

    return v14;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v23);
  CFDictionarySetValue(Mutable, kFigCaptureStreamDepthEngineConfigurationKey_OutputWidth, v9);
  CFDictionarySetValue(Mutable, kFigCaptureStreamDepthEngineConfigurationKey_OutputHeight, v10);
  CFRelease(v9);
  CFRelease(v10);
  v11 = &kFigCapturePortType_FrontFacingCamera;
  if (!a4)
  {
    v11 = &kFigCapturePortType_FrontFacingInfraredCamera;
  }

  CFDictionarySetValue(Mutable, kFigCaptureStreamDepthEngineConfigurationKey_DepthPerspectivePortType, *v11);
  v12 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v13 = v12;
  if (a5)
  {
    CFArrayAppendValue(v12, kFigCaptureStreamDepthData_DX);
    if ((a5 & 0x10000) != 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a5 & 0x10000) != 0)
  {
LABEL_6:
    CFArrayAppendValue(v13, kFigCaptureStreamDepthData_DY);
    if ((a5 & 0x1000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if ((a5 & 0x1000000) != 0)
  {
LABEL_7:
    CFArrayAppendValue(v13, kFigCaptureStreamDepthData_DepthImage);
    if ((a5 & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    if ((a5 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_12:
  if ((a5 & 0x100) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  CFArrayAppendValue(v13, kFigCaptureStreamDepthData_NormalizedDX);
  if ((a5 & 0x100000000) != 0)
  {
LABEL_14:
    CFArrayAppendValue(v13, kFigCaptureStreamDepthData_GMS);
  }

LABEL_15:
  CFDictionarySetValue(Mutable, kFigCaptureStreamDepthEngineConfigurationKey_EnabledOutputs, v13);
  v14 = HxISPCaptureDeviceController::SetStreamProperty(*(a1 + 16), *(a1 + 36), kFigCaptureStreamProperty_DepthEngineConfiguration, Mutable);
  CFRelease(v13);
  if (v14)
  {
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v16 = [v15 lastPathComponent];
    v17 = DeviceCMInterface::getErrorInformationString(v14);
    v18 = [NSString stringWithFormat:@"setDepthCofiguration failed with OSStatus 0x%x (%@)", v14, v17];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 1099, v18, v23, valuePtr);

    return 3758097129;
  }

  return v14;
}

uint64_t DeviceCMInterface::startRgbStream(DeviceCMInterface *this, uint64_t a2)
{
  if (!this->m_captureDeviceController)
  {
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v12 = [v11 lastPathComponent];
    v13 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 1296, v13);
    started = 3758097084;
LABEL_13:

    return started;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v5 = [v4 lastPathComponent];
    v6 = [NSString stringWithFormat:@"stream id is invalid"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 1302, v6);
  }

  if (!this->m_currentJasperConfiguration.bitMaskID)
  {
    v15 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, a2, kFigCaptureStreamProperty_MinimumFrameRate, &off_100023EE0);
    if (v15)
    {
      v16 = v15;
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v12 = [v11 lastPathComponent];
      v13 = DeviceCMInterface::getErrorInformationString(v16);
      v14 = [NSString stringWithFormat:@"set min fps 30 failed with OSStatus 0x%x (%@)", v16, v13];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 1308, v14);
      goto LABEL_12;
    }

    v17 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, a2, kFigCaptureStreamProperty_MaximumFrameRate, &off_100023EE0);
    if (v17)
    {
      v18 = v17;
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v12 = [v11 lastPathComponent];
      v13 = DeviceCMInterface::getErrorInformationString(v18);
      v14 = [NSString stringWithFormat:@"set max fps 30 failed with OSStatus 0x%x (%@)", v18, v13];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 1314, v14);
      goto LABEL_12;
    }
  }

  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v8 = [v7 lastPathComponent];
  v9 = [NSString stringWithFormat:@"start receiving stream id: %d", a2];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 1319, v9);

  started = HxISPCaptureDeviceController::startReceiveWithRealTimeCallbacks(this->m_captureDeviceController, a2, sub_10000C4B8, this, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (started)
  {
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v12 = [v11 lastPathComponent];
    v13 = DeviceCMInterface::getErrorInformationString(started);
    v14 = [NSString stringWithFormat:@"startRgbStream failed with OSStatus 0x%x (%@)", started, v13];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 1328, v14);
LABEL_12:

    started = 3758097129;
    goto LABEL_13;
  }

  return started;
}

void sub_10000B73C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t DeviceCMInterface::startJasperStream(DeviceCMInterface *this)
{
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController)
  {
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v11 = [v10 lastPathComponent];
    v12 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v11, 1121, v12);

    return 3758097084;
  }

  v37 = 0;
  valuePtr = 0x7FFFFFFF;
  v35 = 0;
  v3 = HxISPCaptureDeviceController::CopyStreamProperty(m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, kFigCaptureProperty_SupportedPropertiesDictionary, &v35);
  if (v3)
  {
    v4 = v3;
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v6 = [v5 lastPathComponent];
    v7 = DeviceCMInterface::getErrorInformationString(v4);
    v8 = [NSString stringWithFormat:@"get SupportedPropertiesDictionary failed with OSStatus 0x%x (%@)", v4, v7];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 1134, v8);
    goto LABEL_4;
  }

  v14 = v35;
  v5 = [v35 allKeys];

  v35 = 0;
  v15 = kFigCaptureStreamProperty_MaximumAllowedFrameRate;
  if ([v5 containsObject:kFigCaptureStreamProperty_MaximumAllowedFrameRate])
  {
    v16 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, v15, &v37);
    if (v16)
    {
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v18 = [v17 lastPathComponent];
      v19 = DeviceCMInterface::getErrorInformationString(v16);
      v20 = [NSString stringWithFormat:@"failed resolving maximum frame rate information OSStatus 0x%x (%@)", v16, v19];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v18, 1155, v20);
      v9 = 3758097129;

      if (v37)
      {
        CFRelease(v37);
      }

      goto LABEL_5;
    }

    v21 = v37;
    if (!v37)
    {
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v7 = [v6 lastPathComponent];
      v8 = [NSString stringWithFormat:@"null maximum frame rate detected"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 1163, v8);
      v4 = 3758097129;
      goto LABEL_4;
    }
  }

  else
  {
    v21 = &off_100023EC8;
    v37 = &off_100023EC8;
  }

  CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
  v22 = valuePtr;
  v23 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, kFigCaptureStreamProperty_MinimumFrameRate, v37);
  v4 = 3758097129;
  if (v23)
  {
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v25 = [v24 lastPathComponent];
    v26 = DeviceCMInterface::getErrorInformationString(v23);
    v27 = [NSString stringWithFormat:@"set min fps of %d failed with OSStatus 0x%x (%@)", v22, v23, v26];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v25, 1175, v27);
  }

  else
  {
    v28 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, kFigCaptureStreamProperty_MaximumFrameRate, v37);
    if (!v28)
    {
      v9 = 0;
      v29 = 1;
      goto LABEL_18;
    }

    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v25 = [v24 lastPathComponent];
    v26 = DeviceCMInterface::getErrorInformationString(v28);
    v27 = [NSString stringWithFormat:@"set max fps of %d failed with OSStatus 0x%x (%@)", v22, v28, v26];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v25, 1183, v27);
  }

  v29 = 0;
  v9 = 3758097129;
LABEL_18:
  CFRelease(v37);
  if (!v29)
  {
    goto LABEL_5;
  }

  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v31 = [v30 lastPathComponent];
  v32 = [NSString stringWithFormat:@"start receiving stream id: %d", this->m_streamIdsInfo.jasperStreamId];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v31, 1194, v32);

  started = HxISPCaptureDeviceController::startReceiveWithRealTimeCallbacks(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, sub_10000BE60, this);
  if (!started)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v7 = [v6 lastPathComponent];
  v8 = DeviceCMInterface::getErrorInformationString(started);
  v34 = [NSString stringWithFormat:@"startJasperStream failed with OSStatus 0x%x (%@)", started, v8];
  NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 1208, v34);

LABEL_4:
  v9 = v4;
LABEL_5:

  return v9;
}

uint64_t sub_10000BE60(uint64_t result, __int128 *a2, int a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = *(a4 + 8);
    if (result)
    {
      if (*(a4 + 36) == a3)
      {
        v7 = 1;
      }

      else
      {
        if (*(a4 + 40) == a3)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        if (*(a4 + 32) == a3)
        {
          v9 = 2;
        }

        else
        {
          v9 = v8;
        }

        if (*(a4 + 44) == a3)
        {
          v7 = 4;
        }

        else
        {
          v7 = v9;
        }
      }

      v12 = v4;
      v13 = v5;
      v10 = *a2;
      v11 = *(a2 + 2);
      return (*(*result + 8))(result, v6, &v10, v7);
    }
  }

  return result;
}

uint64_t DeviceCMInterface::stopJasperStream(DeviceCMInterface *this)
{
  m_captureDeviceController = this->m_captureDeviceController;
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v4 = v3;
  if (!m_captureDeviceController)
  {
    v8 = [v3 lastPathComponent];
    v9 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 1219, v9);
    v7 = 3758097084;
    goto LABEL_5;
  }

  v5 = [v3 lastPathComponent];
  v6 = [NSString stringWithFormat:@"stop receiving stream id: %d", this->m_streamIdsInfo.jasperStreamId];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 1223, v6);

  v7 = HxISPCaptureDeviceController::stopReceive(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId);
  if (v7)
  {
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v4 lastPathComponent];
    v9 = DeviceCMInterface::getErrorInformationString(v7);
    v10 = [NSString stringWithFormat:@"stopJasperStream failed with OSStatus 0x%x (%@)", v7, v9];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 1227, v10);

    v7 = 3758097129;
LABEL_5:
  }

  return v7;
}

uint64_t DeviceCMInterface::startPearlIrStream(DeviceCMInterface *this)
{
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v6 = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 1239, v7);
    started = 3758097084;
LABEL_10:

    return started;
  }

  v3 = HxISPCaptureDeviceController::SetStreamProperty(m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, kFigCaptureStreamProperty_MinimumFrameRate, &off_100023EE0);
  if (v3)
  {
    v4 = v3;
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v6 = [v5 lastPathComponent];
    v7 = DeviceCMInterface::getErrorInformationString(v4);
    v8 = [NSString stringWithFormat:@"set min fps 30 failed with OSStatus 0x%x (%@)", v4, v7];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 1246, v8);
LABEL_9:

    started = 3758097129;
    goto LABEL_10;
  }

  v10 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, kFigCaptureStreamProperty_MaximumFrameRate, &off_100023EE0);
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v5 = v11;
  if (v10)
  {
    v6 = [v11 lastPathComponent];
    v7 = DeviceCMInterface::getErrorInformationString(v10);
    v8 = [NSString stringWithFormat:@"set max fps 30 failed with OSStatus 0x%x (%@)", v10, v7];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 1252, v8);
    goto LABEL_9;
  }

  v12 = [v11 lastPathComponent];
  v13 = [NSString stringWithFormat:@"start receiving stream id: %d", this->m_streamIdsInfo.irPearlStreamId];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 1257, v13);

  started = HxISPCaptureDeviceController::startReceiveWithRealTimeCallbacks(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, sub_10000C4B8, this, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (started)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v6 = [v5 lastPathComponent];
    v7 = DeviceCMInterface::getErrorInformationString(started);
    v8 = [NSString stringWithFormat:@"startIrStream failed with OSStatus 0x%x (%@)", started, v7];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 1266, v8);
    goto LABEL_9;
  }

  return started;
}

void sub_10000C440(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t (***sub_10000C4B8(uint64_t (***result)(void, void, __int128 *, uint64_t), __int128 *a2, int a3, uint64_t a4))(void, void, __int128 *, uint64_t)
{
  if (a4)
  {
    v6 = result;
    result = *(a4 + 8);
    if (result)
    {
      if (*(a4 + 36) == a3)
      {
        v7 = 1;
      }

      else
      {
        if (*(a4 + 28) == a3)
        {
          v8 = 5;
        }

        else
        {
          v8 = 0;
        }

        if (*(a4 + 40) == a3)
        {
          v8 = 3;
        }

        if (*(a4 + 32) == a3)
        {
          v8 = 2;
        }

        if (*(a4 + 44) == a3)
        {
          v7 = 4;
        }

        else
        {
          v7 = v8;
        }
      }

      v11 = v4;
      v12 = v5;
      v9 = *a2;
      v10 = *(a2 + 2);
      return (**result)(result, v6, &v9, v7);
    }
  }

  return result;
}

uint64_t DeviceCMInterface::stopPearlIrStream(DeviceCMInterface *this)
{
  m_captureDeviceController = this->m_captureDeviceController;
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v4 = v3;
  if (!m_captureDeviceController)
  {
    v8 = [v3 lastPathComponent];
    v9 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 1277, v9);
    v7 = 3758097084;
    goto LABEL_5;
  }

  v5 = [v3 lastPathComponent];
  v6 = [NSString stringWithFormat:@"stop receiving stream id: %d", this->m_streamIdsInfo.irPearlStreamId];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 1281, v6);

  v7 = HxISPCaptureDeviceController::stopReceive(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId);
  if (v7)
  {
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v4 lastPathComponent];
    v9 = DeviceCMInterface::getErrorInformationString(v7);
    v10 = [NSString stringWithFormat:@"stopIrStream failed with OSStatus 0x%x (%@)", v7, v9];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 1285, v10);

    v7 = 3758097129;
LABEL_5:
  }

  return v7;
}

uint64_t DeviceCMInterface::stopRgbStream(DeviceCMInterface *this, uint64_t a2)
{
  m_captureDeviceController = this->m_captureDeviceController;
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v6 = v5;
  if (!m_captureDeviceController)
  {
    v10 = [v5 lastPathComponent];
    v11 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1344, v11);
    v9 = 3758097084;
    goto LABEL_5;
  }

  v7 = [v5 lastPathComponent];
  v8 = [NSString stringWithFormat:@"stop receiving stream id: %d", a2];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 1348, v8);

  v9 = HxISPCaptureDeviceController::stopReceive(this->m_captureDeviceController, a2);
  if (v9)
  {
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v10 = [v6 lastPathComponent];
    v11 = DeviceCMInterface::getErrorInformationString(v9);
    v12 = [NSString stringWithFormat:@"stopRgbStream failed with OSStatus 0x%x (%@)", v9, v11];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1352, v12);

LABEL_5:
  }

  return v9;
}

uint64_t DeviceCMInterface::validateJasperFwStatus(DeviceCMInterface *this, unsigned int *a2)
{
  number = 0;
  valuePtr = 0x7FFFFFFF;
  *a2 = 0x7FFFFFFF;
  v4 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, @"ValidateComplianceWithDetails", &number);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    CFRelease(number);
    result = 0;
    *a2 = valuePtr;
  }

  else
  {
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v7 = [v6 lastPathComponent];
    irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
    v9 = DeviceCMInterface::getErrorInformationString(v4);
    v10 = [NSString stringWithFormat:@"validateJasperFwStatus failed with OSStatus 0x%x for stream id %d (%@)", v4, irPearlStreamId, v9];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 1392, v10);

    return 3758097084;
  }

  return result;
}

uint64_t DeviceCMInterface::validateIrFwStatus(DeviceCMInterface *this, unsigned int *a2)
{
  number = 0;
  valuePtr = 0x7FFFFFFF;
  *a2 = 0x7FFFFFFF;
  m_captureDeviceController = this->m_captureDeviceController;
  if (m_captureDeviceController && *(m_captureDeviceController + 2148) == 1 && (v5 = this->m_streamIdsInfo.irPearlStreamId, (v5 & 0x80000000) == 0))
  {
    v6 = HxISPCaptureDeviceController::CopyStreamProperty(m_captureDeviceController, v5, @"ValidateComplianceWithDetails", &number);
    if (v6)
    {
      v7 = v6;
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v9 = [v8 lastPathComponent];
      irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
      v11 = DeviceCMInterface::getErrorInformationString(v7);
      v12 = [NSString stringWithFormat:@"validateIrFwStatus failed with OSStatus 0x%x for stream id %d (%@)", v7, irPearlStreamId, v11];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 1414, v12);
      v13 = 3758097084;
    }

    else
    {
      v13 = 0;
    }

    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      CFRelease(number);
      *a2 = valuePtr;
      return v13;
    }

    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v15 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"validateIrFwStatus failed as bit mask was NULL"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v15, 1426, v16);
  }

  else
  {
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v15 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"device is not activated"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v15, 1407, v16);
  }

  v13 = 3758097084;

  return v13;
}

uint64_t DeviceCMInterface::enableDefaultDepthStream(DeviceCMInterface *this)
{
  v1 = DeviceCMInterface::setPearlDepthConfiguration(this, 360, 640, 1, 0x1000000);
  if (v1)
  {
    v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v3 = [v2 lastPathComponent];
    v4 = [NSString stringWithFormat:@"setDepthCofiguration failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v3, 1442, v4);
  }

  return v1;
}

DeviceCMInterface *DeviceCMInterface::setPearlMultiCam(DeviceCMInterface *this)
{
  v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v3 = [v2 lastPathComponent];
  v4 = [NSString stringWithFormat:@"setting multicam..."];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v3, 1450, v4);

  Group = HxISPCaptureDeviceController::FindGroup(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId);
  v6 = HxISPCaptureDeviceController::FindGroup(this->m_captureDeviceController, this->m_streamIdsInfo.rgbPearlStreamId);
  if (Group && (v7 = v6, Group != v6) && v6)
  {
    CFRelease(Group);
    CFRelease(v7);
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"cannot set multi cam if both rgb/ir groups not the same"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 1459, v10);

    return 3758097084;
  }

  else
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
    v13 = Mutable;
    if (Mutable)
    {
      CFArrayAppendValue(Mutable, Group);
    }

    v24 = kFigCaptureDeviceMultiCamConfigurationKey_ActiveSynchronizedStreamsGroups;
    v25 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = HxISPCaptureDeviceController::SetDeviceProperty(this->m_captureDeviceController, kFigCaptureDeviceProperty_MultiCamConfiguration, v14);
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v16 = [v15 lastPathComponent];
    v17 = [NSString stringWithFormat:@"setting kFigCaptureDeviceProperty_MultiCamConfiguration return val is %d", v11];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 1476, v17);

    if (v13)
    {
      CFRelease(v13);
    }

    if (v11)
    {
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v19 = [v18 lastPathComponent];
      irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
      v21 = DeviceCMInterface::getErrorInformationString(v11);
      v22 = [NSString stringWithFormat:@"kFigCaptureDeviceProperty_MultiCamConfiguration failed with OSStatus 0x%x for stream id %d (%@)", v11, irPearlStreamId, v21];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v19, 1483, v22);
    }
  }

  return v11;
}

uint64_t DeviceCMInterface::enableSyncForEnumeratedStreams(DeviceCMInterface *this, int a2)
{
  if (!this->m_captureDeviceController || this->m_streamIdsInfo.rgbPearlStreamId < 0 || this->m_streamIdsInfo.irPearlStreamId < 0)
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    v10 = [NSString stringWithFormat:@"cannot enableSyncForEnumeratedStreams one or more stream ids is invalid"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 1493, v10);
    v6 = 3758097084;
    goto LABEL_13;
  }

  irPearlStreamId = a2;
  this->m_primarySyncModeStreamID = a2;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);
  v5 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, *(this->m_captureDeviceController + this->m_streamIdsInfo.rgbPearlStreamId + 2));
    CFArrayAppendValue(v5, *(this->m_captureDeviceController + this->m_streamIdsInfo.irPearlStreamId + 2));
  }

  if (!irPearlStreamId)
  {
    irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
  }

  v6 = HxISPCaptureDeviceController::SetGroupProperty(this->m_captureDeviceController, irPearlStreamId, kFigCaptureSynchronizedStreamsGroupProperty_ActiveStreams, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    rgbPearlStreamId = this->m_streamIdsInfo.rgbPearlStreamId;
    v10 = DeviceCMInterface::getErrorInformationString(v6);
    v11 = [NSString stringWithFormat:@"enableSyncForEnumeratedStreams failed with OSStatus 0x%x for stream id %d (%@)", v6, rgbPearlStreamId, v10];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 1545, v11);

    v6 = 3758097129;
LABEL_13:
  }

  return v6;
}

void sub_10000D3FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t DeviceCMInterface::setPearlSyncSlave(DeviceCMInterface *this, uint64_t a2, int a3)
{
  valuePtr = a3;
  if (this->m_captureDeviceController)
  {
    if ((a2 & 0x80000000) == 0 || this->m_streamIdsInfo.irPearlStreamId == a2 || this->m_streamIdsInfo.rgbPearlStreamId == a2)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(Mutable, kFigCaptureStreamSynchronizedStreamsSlaveConfigurationKey_StreamingOutputsEnabled, kCFBooleanTrue);
      CFDictionarySetValue(Mutable, kFigCaptureStreamSynchronizedStreamsSlaveConfigurationKey_FrameSkippingEnabled, kCFBooleanFalse);
      if (a3)
      {
        v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(Mutable, kFigCaptureStreamSynchronizedStreamsSlaveConfigurationKey_MasterToSlaveFrameRateRatio, v7);
        CFRelease(v7);
      }

      v8 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, a2, kFigCaptureStreamProperty_SynchronizedStreamsSlaveConfiguration, Mutable);
      CFRelease(Mutable);
      if (v8)
      {
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        v11 = DeviceCMInterface::getErrorInformationString(v8);
        v12 = [NSString stringWithFormat:@"setSyncSlave failed with OSStatus 0x%x for stream id %d (%@)", v8, a2, v11];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1605, v12);
      }
    }

    else
    {
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v18 = [v17 lastPathComponent];
      v19 = [NSString stringWithFormat:@"cannot set stream %d as master for sync, stream is invalid", a2];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v18, 1563, v19);

      return 3758096385;
    }
  }

  else
  {
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v14 = [v13 lastPathComponent];
    v15 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v14, 1556, v15);

    return 3758097084;
  }

  return v8;
}

DeviceCMInterface *DeviceCMInterface::disablePearlSyncMode(DeviceCMInterface *this, unsigned int irPearlStreamId)
{
  m_primarySyncModeStreamID = this->m_primarySyncModeStreamID;
  if (m_primarySyncModeStreamID == -1)
  {
    m_captureDeviceController = this->m_captureDeviceController;
    if (!irPearlStreamId)
    {
      irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
    }

    v5 = kFigCaptureSynchronizedStreamsGroupProperty_ActiveStreams;
  }

  else
  {
    m_captureDeviceController = this->m_captureDeviceController;
    v5 = kFigCaptureSynchronizedStreamsGroupProperty_ActiveStreams;
    irPearlStreamId = m_primarySyncModeStreamID;
  }

  v6 = HxISPCaptureDeviceController::SetGroupProperty(m_captureDeviceController, irPearlStreamId, v5, 0);
  if (v6)
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    v9 = DeviceCMInterface::getErrorInformationString(v6);
    v10 = [NSString stringWithFormat:@"disableSyncMode failed with OSStatus 0x%x for stream id (%@)", v6, v9];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 1643, v10);
  }

  return v6;
}

uint64_t DeviceCMInterface::setPearlFormatIndex(DeviceCMInterface *this, unsigned int a2)
{
  m_captureDeviceController = this->m_captureDeviceController;
  v4 = kFigCaptureStreamProperty_FormatIndex;
  v5 = [NSNumber numberWithInt:?];

  return HxISPCaptureDeviceController::SetStreamProperty(m_captureDeviceController, a2, v4, v5);
}

uint64_t DeviceCMInterface::configPearlDevice(DeviceCMInterface *this, const PearlConfiguration *a2)
{
  *&this->m_isPearlRgbConfigured = 0;
  *&this->m_currentPearlConfiguration.isIrOn = 0;
  this->m_currentPearlConfiguration.isRgbOn = 0;
  this->m_currentPearlConfiguration.irType = 0;
  this->m_currentPearlConfiguration.bitMaskID = 0;
  if (a2->isRgbOn)
  {
    rgbPearlStreamId = this->m_streamIdsInfo.rgbPearlStreamId;
    if (rgbPearlStreamId == -1)
    {
      DeviceCMInterface::enumerateStreamsIndices(this);
      rgbPearlStreamId = this->m_streamIdsInfo.rgbPearlStreamId;
      if (rgbPearlStreamId == -1)
      {
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        v11 = [NSString stringWithFormat:@"no available RGB stream index"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1738, v11);
LABEL_28:
        v5 = 3758097136;
        goto LABEL_36;
      }
    }

    if (a2->isIrOn && a2->isRgbOn)
    {
      v5 = DeviceCMInterface::enableSyncForEnumeratedStreams(this, rgbPearlStreamId);
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v7 = [v6 lastPathComponent];
      v8 = [NSString stringWithFormat:@"cmsync 2 3 (enableSyncForEnumeratedStreams) ret = %d", v5];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 1747, v8);

      if (v5)
      {
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        v11 = [NSString stringWithFormat:@"enableSyncForEnumeratedStreams failed"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1751, v11);
LABEL_36:

        return v5;
      }

      v5 = DeviceCMInterface::setPearlMultiCam(this);
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v13 = [v12 lastPathComponent];
      v14 = [NSString stringWithFormat:@"CMMULTICAMCREATE -s 2 3(setPearlMultiCam) ret = %d", v5];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v13, 1757, v14);

      if (v5)
      {
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        v11 = [NSString stringWithFormat:@"setMultiOutModeByStreamId for rgb failed"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1761, v11);
        goto LABEL_36;
      }

      v5 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.rgbPearlStreamId, kFigCaptureStreamProperty_FormatIndex, [NSNumber numberWithInt:0]);
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v16 = [v15 lastPathComponent];
      v17 = [NSString stringWithFormat:@"cmsetcurrentformat 2 0, setPearlFormatIndex(m_streamIdsInfo.rgbPearlStreamId, 0) ret = %d", this->m_streamIdsInfo.rgbPearlStreamId];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 1767, v17);

      if (v5)
      {
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        v11 = [NSString stringWithFormat:@"setMultiOutModeByStreamId for rgb failed"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1771, v11);
        goto LABEL_36;
      }

      rgbPearlStreamId = this->m_streamIdsInfo.rgbPearlStreamId;
    }

    v18 = DeviceCMInterface::setPearlMultiOutModeByStreamId(this, rgbPearlStreamId, 1);
    if (v18)
    {
      v5 = v18;
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v10 = [v9 lastPathComponent];
      v11 = [NSString stringWithFormat:@"setMultiOutModeByStreamId for rgb failed"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1780, v11);
      goto LABEL_36;
    }

    v19 = DeviceCMInterface::enablePearlRGBOutput(this);
    if (v19)
    {
      v5 = v19;
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v10 = [v9 lastPathComponent];
      v11 = [NSString stringWithFormat:@"Configure the primary output to multioutput + enable failed"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1788, v11);
      goto LABEL_36;
    }

    this->m_isPearlRgbConfigured = 1;
  }

  isIrOn = a2->isIrOn;
  if (!isIrOn)
  {
    goto LABEL_43;
  }

  irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
  if (irPearlStreamId == -1)
  {
    DeviceCMInterface::enumerateStreamsIndices(this);
    irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
    if (irPearlStreamId == -1)
    {
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v10 = [v9 lastPathComponent];
      v11 = [NSString stringWithFormat:@"no available IR stream index"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1799, v11);
      goto LABEL_28;
    }
  }

  v22 = DeviceCMInterface::setPearlMultiOutModeByStreamId(this, irPearlStreamId, 1);
  if (v22)
  {
    v5 = v22;
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v10 = [v9 lastPathComponent];
    v11 = [NSString stringWithFormat:@"setMultiOutModeByStreamId failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1807, v11);
    goto LABEL_36;
  }

  if (this->m_hVersion < 11)
  {
    goto LABEL_31;
  }

  v41 = 0;
  PearlProjectorHWVersion = DeviceCMInterface::getPearlProjectorHWVersion(this, &v41);
  if (!PearlProjectorHWVersion)
  {
    if (v41 == 10)
    {
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v28 = [v27 lastPathComponent];
      v29 = [NSString stringWithFormat:@"projector version %d", 10];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v28, 1823, v29);

      v30 = 1;
LABEL_32:
      v5 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, kFigCaptureStreamProperty_FormatIndex, [NSNumber numberWithInt:v30]);
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v32 = [v31 lastPathComponent];
      v33 = [NSString stringWithFormat:@"cmsetcurrentformat 2 %d, setPearlFormatIndex(m_streamIdsInfo.rgbPearlStreamId, %d) ret = %d", this->m_streamIdsInfo.rgbPearlStreamId, v30, v5];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v32, 1833, v33);

      if (v5)
      {
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        v11 = [NSString stringWithFormat:@"setPearlFormatIndex failed"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1837, v11);
        goto LABEL_36;
      }

      v34 = DeviceCMInterface::enablePearlIROutput(this);
      if (v34)
      {
        v5 = v34;
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v10 = [v9 lastPathComponent];
        v11 = [NSString stringWithFormat:@"Configure the primary output to multioutput + enable failed"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1845, v11);
        goto LABEL_36;
      }

      v35 = DeviceCMInterface::setPearlIrCofiguration(this, a2->irType);
      if (v35)
      {
        v5 = v35;
        v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
        v37 = [v36 lastPathComponent];
        v38 = [NSString stringWithFormat:@"set projector mode to %u failed", a2->irType];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v37, 1853, v38);

        return v5;
      }

      if (a2->isDepthOn)
      {
        v39 = DeviceCMInterface::enableDefaultDepthStream(this);
        if (v39)
        {
          v5 = v39;
          v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
          v10 = [v9 lastPathComponent];
          v11 = [NSString stringWithFormat:@"enableDefaultDepthStream failed"];
          NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v10, 1863, v11);
          goto LABEL_36;
        }
      }

      this->m_isPearlIrConfigured = 1;
      LOBYTE(isIrOn) = a2->isIrOn;
LABEL_43:
      v5 = 0;
      this->m_currentPearlConfiguration.irType = a2->irType;
      this->m_currentPearlConfiguration.isIrOn = isIrOn;
      *&this->m_currentPearlConfiguration.isDepthOn = *&a2->isDepthOn;
      return v5;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  v5 = PearlProjectorHWVersion;
  v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
  v25 = [v24 lastPathComponent];
  v26 = [NSString stringWithFormat:@"config pearl device failed to read projector version"];
  NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v25, 1828, v26);

  return v5;
}

uint64_t DeviceCMInterface::getPearlProjectorHWVersion(DeviceCMInterface *this, int *a2)
{
  cf = 0;
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController || (irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId, (irPearlStreamId & 0x80000000) != 0))
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    v9 = [NSString stringWithFormat:@"getPearlProjectorVersion failed, ir stream id invalid"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 2405, v9);

    return 3758097084;
  }

  else
  {
    v6 = HxISPCaptureDeviceController::CopyStreamProperty(m_captureDeviceController, irPearlStreamId, @"ProjectorHWVersion", &cf);
    if (cf)
    {
      *a2 = FigCFNumberGetSInt32();
      CFRelease(cf);
    }

    else
    {
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v12 = [v11 lastPathComponent];
      v13 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_ProjectorHWVersion"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 2417, v13);
    }
  }

  return v6;
}

void sub_10000E504(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

DeviceCMInterface *DeviceCMInterface::setCurrentPearlConfiguration(DeviceCMInterface *this, const PearlConfiguration *a2)
{
  this->m_currentPearlConfiguration.irType = a2->irType;
  this->m_currentPearlConfiguration.isRgbOn = a2->isRgbOn;
  *&this->m_currentPearlConfiguration.isIrOn = *&a2->isIrOn;
  return this;
}

id DeviceCMInterface::getJasperConfigurationStringKey(DeviceCMInterface *this, JasperConfiguration *a2)
{
  p_m_currentJasperConfiguration = &this->m_currentJasperConfiguration;
  if (a2)
  {
    p_m_currentJasperConfiguration = a2;
  }

  v3 = *p_m_currentJasperConfiguration;
  v4 = +[NSMutableString string];
  [v4 appendString:@"DEVICE_CONFIG"];
  if (v3.isJasperOn)
  {
    [v4 appendString:@"_JASPER_DEPTH"];
  }

  if ((*&v3.isJasperOn & 0x10000) != 0)
  {
    [v4 appendString:@"_WIDE"];
  }

  if ((*&v3.isJasperOn & 0x100) != 0)
  {
    if ((*&v3.isJasperOn & 0x1000000) != 0)
    {
      v5 = @"_SUPER_WIDE_SYNCED";
    }

    else
    {
      v5 = @"_SUPER_WIDE_UNSYNCED";
    }

    [v4 appendString:v5];
  }

  v6 = [NSString stringWithString:v4];

  return v6;
}

id DeviceCMInterface::getPearlConfigurationStringKey(DeviceCMInterface *this, PearlConfiguration *a2)
{
  p_m_currentPearlConfiguration = &this->m_currentPearlConfiguration;
  p_isDepthOn = &this->m_currentPearlConfiguration.isDepthOn;
  p_isRgbOn = &this->m_currentPearlConfiguration.isRgbOn;
  p_irType = &this->m_currentPearlConfiguration.irType;
  p_deviceName = &this->m_currentPearlConfiguration.deviceName;
  if (a2)
  {
    p_deviceName = &a2->deviceName;
    p_isRgbOn = &a2->isRgbOn;
    p_isDepthOn = &a2->isDepthOn;
    p_m_currentPearlConfiguration = a2;
    p_irType = &a2->irType;
  }

  v7 = *p_irType;
  isIrOn = p_m_currentPearlConfiguration->isIrOn;
  v9 = *p_isDepthOn;
  v10 = *p_isRgbOn;
  v11 = *p_deviceName;
  v12 = +[NSMutableString string];
  [v12 appendString:@"DEVICE_CONFIG"];
  if (isIrOn)
  {
    [v12 appendString:@"_IR"];
  }

  if (v9)
  {
    v13 = @"_DEPTH";
  }

  else
  {
    v13 = @"_NO_PCE";
  }

  [v12 appendString:v13];
  if (v10)
  {
    [v12 appendString:@"_RGB"];
  }

  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v14 = @"_FLOOD";
      }

      else
      {
        if (v7 != 2)
        {
          goto LABEL_27;
        }

        v14 = @"_SPARSE_LOW_POWER";
      }
    }

    else
    {
      v14 = @"_IR_MODE_NONE";
    }

    goto LABEL_26;
  }

  if (v7 <= 4)
  {
    if (v7 == 3)
    {
      v14 = @"_SPARSE";
    }

    else
    {
      v14 = @"_DENSE";
    }

    goto LABEL_26;
  }

  if (v7 == 5)
  {
    [v12 appendString:@"_DENSE_PROB_AB"];
    goto LABEL_24;
  }

  if (v7 == 6)
  {
LABEL_24:
    v14 = @"_SPARSE_PROB_AB";
LABEL_26:
    [v12 appendString:v14];
  }

LABEL_27:
  v15 = [NSString stringWithString:v12];

  return v15;
}

uint64_t DeviceCMInterface::isPDECaliobrationValid(DeviceCMInterface *this, BOOL *a2)
{
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v6 = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"plugin CM controller is nil"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 2011, v7);
LABEL_6:
    v4 = 3758097084;

    return v4;
  }

  cf = 0;
  *a2 = HxISPCaptureDeviceController::CopyStreamProperty(m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, @"PCECalib", &cf) == 0;
  if (!cf)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v6 = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_PCECalib"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 2030, v7);
    goto LABEL_6;
  }

  CFRelease(cf);
  return 0;
}

DeviceCMInterface *DeviceCMInterface::getJasperProjectorFault(uint64_t a1, void *a2, void *a3)
{
  if (*a1 <= 15)
  {
    valuePtr = 0;
    number = 0;
    v5 = HxISPCaptureDeviceController::CopyStreamProperty(*(a1 + 16), *(a1 + 44), @"ProjectorRikerFaultStatus", &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      CFRelease(number);
      *a2 = valuePtr;
    }

    v6 = @"ProjectorRikerFaultStatus";
    if (!v5)
    {
      return v5;
    }

LABEL_9:
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v9 = [v8 lastPathComponent];
    v10 = *(a1 + 44);
    v11 = DeviceCMInterface::getErrorInformationString(v5);
    v12 = [NSString stringWithFormat:@"getJasperProjectorFault %@ failed with OSStatus 0x%x for stream id %d (%@) and property (%@)", v6, v5, v10, v11, v6];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 2070, v12);

    return v5;
  }

  number = 0;
  v5 = HxISPCaptureDeviceController::CopyStreamProperty(*(a1 + 16), *(a1 + 44), @"ProjectorQuarkFaultStatus", &number);
  if (number)
  {
    *a3 = number;
    CFRelease(number);
  }

  v6 = @"ProjectorQuarkFaultStatus";
  if (v5)
  {
    goto LABEL_9;
  }

  return v5;
}

DeviceCMInterface *DeviceCMInterface::getJasperProjectorWillFault(DeviceCMInterface *this, unint64_t *a2)
{
  number = 0;
  valuePtr = 0;
  v4 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, @"ProjectorWillFaultStatus", &number);
  if (v4)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v6 = [v5 lastPathComponent];
    jasperStreamId = this->m_streamIdsInfo.jasperStreamId;
    v8 = DeviceCMInterface::getErrorInformationString(v4);
    v9 = [NSString stringWithFormat:@"getJasperRikerProjectorWillFault failed with OSStatus 0x%x for stream id %d (%@)", v4, jasperStreamId, v8];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 2087, v9);
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    CFRelease(number);
    *a2 = valuePtr;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v11 = [v10 lastPathComponent];
    v12 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_ProjectorWillFaultStatus"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v11, 2099, v12);
  }

  return v4;
}

DeviceCMInterface *DeviceCMInterface::getJasperResistance(DeviceCMInterface *this, unint64_t *a2)
{
  number = 0;
  valuePtr = 0;
  v4 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, @"RikerResistance", &number);
  if (v4)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v6 = [v5 lastPathComponent];
    jasperStreamId = this->m_streamIdsInfo.jasperStreamId;
    v8 = DeviceCMInterface::getErrorInformationString(v4);
    v9 = [NSString stringWithFormat:@"getJasperRikerResistance failed with OSStatus 0x%x for stream id %d (%@)", v4, jasperStreamId, v8];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 2114, v9);
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    CFRelease(number);
    *a2 = valuePtr;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v11 = [v10 lastPathComponent];
    v12 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_RikerResistance"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v11, 2126, v12);
  }

  return v4;
}

DeviceCMInterface *DeviceCMInterface::getPearlFloodProjectorFault(DeviceCMInterface *this, unint64_t *a2)
{
  number = 0;
  valuePtr = 0;
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController || (v5 = this->m_streamIdsInfo.irPearlStreamId, (v5 & 0x80000000) != 0))
  {
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v13 = [v12 lastPathComponent];
    v14 = [NSString stringWithFormat:@"getFloodProjectorFault failed, ir stream id invalid"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v13, 2139, v14);

    return 3758097084;
  }

  else
  {
    v6 = HxISPCaptureDeviceController::CopyStreamProperty(m_captureDeviceController, v5, @"ProjectorRosalineFaultStatus", &number);
    if (v6)
    {
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v8 = [v7 lastPathComponent];
      irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
      v10 = DeviceCMInterface::getErrorInformationString(v6);
      v11 = [NSString stringWithFormat:@"getFloodProjectorFault failed with OSStatus 0x%x for stream id %d (%@)", v6, irPearlStreamId, v10];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 2146, v11);
    }

    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      CFRelease(number);
      *a2 = valuePtr;
    }

    else
    {
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v17 = [v16 lastPathComponent];
      v18 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_ProjectorRosalineFaultStatus"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v17, 2158, v18);
    }
  }

  return v6;
}

DeviceCMInterface *DeviceCMInterface::getStructuredProjectorFault(DeviceCMInterface *this, unint64_t *a2)
{
  valuePtr = 0;
  number = 0;
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController || (v5 = this->m_streamIdsInfo.irPearlStreamId, (v5 & 0x80000000) != 0))
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    v9 = [NSString stringWithFormat:@"getStructuredProjectorFault failed, ir stream id invalid"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 2170, v9);

    return 3758097084;
  }

  else
  {
    v6 = HxISPCaptureDeviceController::CopyStreamProperty(m_captureDeviceController, v5, @"ProjectorFaultStatus", &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      CFRelease(number);
      *a2 = valuePtr;
    }

    else
    {
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v12 = [v11 lastPathComponent];
      irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId;
      v14 = DeviceCMInterface::getErrorInformationString(v6);
      v15 = [NSString stringWithFormat:@"getStructuredProjectorFault failed with OSStatus 0x%x for stream id %d (%@)", v6, irPearlStreamId, v14];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 2183, v15);
    }
  }

  return v6;
}

void sub_10000F31C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

HxISPCaptureDeviceController *DeviceCMInterface::releaseDevice(DeviceCMInterface *this)
{
  if (DeviceCMInterface::releaseControlOfStreams(this))
  {
    v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v3 = [v2 lastPathComponent];
    v4 = [NSString stringWithFormat:@"releaseControlOfStreams failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v3, 2194, v4);
  }

  return DeviceCMInterface::releaseInterface(this);
}

__n128 DeviceCMInterface::getStreamIdsInfo@<Q0>(DeviceCMInterface *this@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  if (a2)
  {
    DeviceCMInterface::initAndActivateCaptureDeviceController(this);
  }

  result = *&this->m_streamIdsInfo.rgbTeleStreamId;
  *a3 = result;
  a3[1].n128_u64[0] = *&this->m_streamIdsInfo.rgbSuperWideStreamId;
  return result;
}

DeviceCMInterface *DeviceCMInterface::getRgbjReport(DeviceCMInterface *this, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  theDict = 0;
  v12 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, @"RgbjReport", &theDict);
  if (v12)
  {
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v14 = [v13 lastPathComponent];
    jasperStreamId = this->m_streamIdsInfo.jasperStreamId;
    v16 = DeviceCMInterface::getErrorInformationString(v12);
    v17 = [NSString stringWithFormat:@"getRgbjReport: failed with OSStatus 0x%x for stream id %d (%@)", v12, jasperStreamId, v16];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v14, 2239, v17);
  }

  else
  {
    Value = CFDictionaryGetValue(theDict, @"RgbjReportControllerReached");
    CFNumberGetValue(Value, kCFNumberIntType, a2);
    v19 = CFDictionaryGetValue(theDict, @"RgbjReportControllerPassed");
    CFNumberGetValue(v19, kCFNumberIntType, a3);
    v20 = CFDictionaryGetValue(theDict, @"RgbjReportIsfSuccess");
    CFNumberGetValue(v20, kCFNumberIntType, a4);
    v21 = CFDictionaryGetValue(theDict, @"RgbjReportIsfFailure");
    CFNumberGetValue(v21, kCFNumberIntType, a5);
    *a6 = 0;
    v22 = CFDictionaryGetValue(theDict, @"RgbjReportFailedToSave");
    if (v22)
    {
      v23 = v22;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v23))
      {
        CFNumberGetValue(v23, kCFNumberIntType, a6);
      }

      else
      {
        NSLog(@"The value for key %@ is not a number", @"RgbjReportFailedToSave");
      }
    }

    CFRelease(theDict);
  }

  return v12;
}

DeviceCMInterface *DeviceCMInterface::forceSaveWideJasperCalib(DeviceCMInterface *this)
{
  v2 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, @"RgbjForceSaveCalib", 0);
  if (v2)
  {
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v4 = [v3 lastPathComponent];
    jasperStreamId = this->m_streamIdsInfo.jasperStreamId;
    v6 = DeviceCMInterface::getErrorInformationString(v2);
    v7 = [NSString stringWithFormat:@"forceSaveWideJasperCalib: failed with OSStatus 0x%x for stream id %d (%@)", v2, jasperStreamId, v6];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v4, 2270, v7);
  }

  return v2;
}

DeviceCMInterface *DeviceCMInterface::setRgbjConfiguration(DeviceCMInterface *this, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v16[0] = @"RgbjConfigurationFeatureVectorSize";
  v6 = [NSNumber numberWithUnsignedInt:?];
  v16[1] = @"RgbjConfigurationDilutionRate";
  v17[0] = v6;
  v7 = [NSNumber numberWithUnsignedInt:a4];
  v17[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  v9 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, @"RgbjConfiguration", v8);
  if (v9)
  {
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v11 = [v10 lastPathComponent];
    jasperStreamId = this->m_streamIdsInfo.jasperStreamId;
    v13 = DeviceCMInterface::getErrorInformationString(v9);
    v14 = [NSString stringWithFormat:@"setRgbjConfiguration: failed with OSStatus 0x%x for stream id %d (%@)", v9, jasperStreamId, v13];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v11, 2283, v14);
  }

  return v9;
}

DeviceCMInterface *DeviceCMInterface::setWideJasperExtrinsics(DeviceCMInterface *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v13 = [NSNumber numberWithFloat:?];
  v32[0] = v13;
  *&v14 = a3;
  v15 = [NSNumber numberWithFloat:v14];
  v32[1] = v15;
  *&v16 = a4;
  v17 = [NSNumber numberWithFloat:v16];
  v32[2] = v17;
  *&v18 = a5;
  v19 = [NSNumber numberWithFloat:v18];
  v32[3] = v19;
  *&v20 = a6;
  v21 = [NSNumber numberWithFloat:v20];
  v32[4] = v21;
  *&v22 = a7;
  v23 = [NSNumber numberWithFloat:v22];
  v32[5] = v23;
  v24 = [NSArray arrayWithObjects:v32 count:6];

  v25 = HxISPCaptureDeviceController::SetStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.jasperStreamId, @"OverrideJasperWideExtrinsics", v24);
  if (v25)
  {
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v27 = [v26 lastPathComponent];
    jasperStreamId = this->m_streamIdsInfo.jasperStreamId;
    v29 = DeviceCMInterface::getErrorInformationString(v25);
    v30 = [NSString stringWithFormat:@"setWideJasperExtrinsics: failed with OSStatus 0x%x for stream id %d (%@)", v25, jasperStreamId, v29];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v27, 2295, v30);
  }

  return v25;
}

uint64_t DeviceCMInterface::getPearlPleUUID(DeviceCMInterface *this, unsigned __int8 *a2)
{
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController || (irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId, (irPearlStreamId & 0x80000000) != 0))
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    v9 = [NSString stringWithFormat:@"getPearlPCECalib failed, ir stream id invalid"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 2327, v9);

    return 3758097084;
  }

  else
  {
    theData = 0;
    v6 = HxISPCaptureDeviceController::CopyStreamProperty(m_captureDeviceController, irPearlStreamId, @"PCECalib", &theData);
    if (theData)
    {
      *a2 = *(CFDataGetBytePtr(theData) + 8);
      CFRelease(theData);
    }

    else
    {
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v12 = [v11 lastPathComponent];
      v13 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_PCECalib"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 2343, v13);
    }
  }

  return v6;
}

void sub_10000FE1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t DeviceCMInterface::getPearlRigelSerialNumber(uint64_t a1, void *a2)
{
  v15 = 0;
  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 36), (v5 & 0x80000000) != 0))
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    v9 = [NSString stringWithFormat:@"getPearlRigelSerialNumber failed, ir stream id invalid"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 2356, v9);

    return 3758097084;
  }

  else
  {
    v6 = HxISPCaptureDeviceController::CopyStreamProperty(v3, v5, @"RigelSerialNumber", &v15);
    if (v15)
    {
      *a2 = v15;
    }

    else
    {
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v12 = [v11 lastPathComponent];
      v13 = DeviceCMInterface::getErrorInformationString(v6);
      v14 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_RigelSerialNumber, %@", v13];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 2367, v14);
    }
  }

  return v6;
}

uint64_t DeviceCMInterface::getPearlRigelOtpVersion(DeviceCMInterface *this, int *a2)
{
  cf = 0;
  m_captureDeviceController = this->m_captureDeviceController;
  if (!m_captureDeviceController || (irPearlStreamId = this->m_streamIdsInfo.irPearlStreamId, (irPearlStreamId & 0x80000000) != 0))
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v8 = [v7 lastPathComponent];
    v9 = [NSString stringWithFormat:@"getPearlRigelOtpVersion failed, ir stream id invalid, %@", @"OK"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 2380, v9);

    return 3758097084;
  }

  else
  {
    v6 = HxISPCaptureDeviceController::CopyStreamProperty(m_captureDeviceController, irPearlStreamId, @"ProjectorVersion", &cf);
    if (cf)
    {
      *a2 = FigCFNumberGetSInt32();
      CFRelease(cf);
    }

    else
    {
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v12 = [v11 lastPathComponent];
      v13 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_ProjectorVersion"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 2392, v13);
    }
  }

  return v6;
}

void sub_100010190(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

DeviceCMInterface *DeviceCMInterface::getGuadalupeValues(DeviceCMInterface *this, uint64_t *a2, uint64_t *a3, uint64_t *a4, int *a5, uint64_t *a6)
{
  cf = 0;
  v12 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, @"GuadRecordRegisters", &cf);
  if (!cf)
  {
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v16 = [v15 lastPathComponent];
    v17 = DeviceCMInterface::getErrorInformationString(v12);
    v18 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_GuadRecordRegisters, %@", v17];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 2435, v18);

LABEL_14:
    return v12;
  }

  *a6 = FigCFNumberGetSInt32();
  CFRelease(cf);
  cf = 0;
  v12 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, @"GuadLastResistance", &cf);
  if (!cf)
  {
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v16 = [v15 lastPathComponent];
    v17 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_GuadLastResistance"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 2450, v17);
    goto LABEL_14;
  }

  *a5 = FigCFNumberGetSInt32();
  CFRelease(cf);
  cf = 0;
  v12 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, @"BaneState", &cf);
  if (!cf)
  {
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v16 = [v15 lastPathComponent];
    v17 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_ProjectorBaneState"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 2464, v17);
    goto LABEL_14;
  }

  *a2 = FigCFNumberGetSInt32();
  CFRelease(cf);
  cf = 0;
  v13 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, @"ProjectorRosalineFaultStatus", &cf);
  if (cf)
  {
    *a3 = FigCFNumberGetSInt32();
    CFRelease(cf);
    cf = 0;
    v14 = HxISPCaptureDeviceController::CopyStreamProperty(this->m_captureDeviceController, this->m_streamIdsInfo.irPearlStreamId, @"BaneResistance", &cf);
    if (cf)
    {
      if (!v12)
      {
        LODWORD(v12) = v13;
      }

      *a4 = FigCFNumberGetSInt32();
      CFRelease(cf);
      if (v12)
      {
        return v12;
      }

      else
      {
        return v14;
      }
    }

    else
    {
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
      v24 = [v23 lastPathComponent];
      v25 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_ProjectorBaneResistance"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v24, 2497, v25);

      return v14;
    }
  }

  else
  {
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DeviceCMInterface.mm"];
    v21 = [v20 lastPathComponent];
    v22 = [NSString stringWithFormat:@"Null cfType detected for kFigCaptureStreamProperty_ProjectorRosalineFaultStatus"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v21, 2480, v22);

    return v13;
  }
}

uint64_t HxISPCaptureDeviceController::FindGroup(HxISPCaptureDeviceController *this, int a2)
{
  if (!*(this + 536))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = this + 2080;
  v7 = kFigCaptureSynchronizedStreamsGroupProperty_SupportedStreams;
  v8 = this + 16;
  do
  {
    theArray = 0;
    FigBaseObject = FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10 || v10(FigBaseObject, v7, kCFAllocatorDefault, &theArray))
    {
      break;
    }

    v11 = theArray;
    v14.length = CFArrayGetCount(theArray);
    v14.location = 0;
    if (CFArrayContainsValue(v11, v14, *&v8[8 * a2]))
    {
      v5 = *&v6[8 * v4];
    }

    CFRelease(theArray);
    ++v4;
  }

  while (v4 < *(this + 536));
  return v5;
}

void HxISPCaptureDeviceController::HxISPCaptureDeviceController(HxISPCaptureDeviceController *this)
{
  for (i = 296; i != 2280; i += 248)
  {
    *(this + i) = 0;
  }

  v3 = 0;
  *(this + 538) = -1;
  *(this + 259) = 0;
  *(this + 536) = 0;
  *(this + 2148) = 0;
  *(this + 516) = 0;
  v4 = -1984;
  *this = 0;
  *(this + 1) = 0;
  do
  {
    v5 = this + 8 * v3;
    *(v5 + 2) = 0;
    *(v5 + 260) = 0;
    v6 = this + v4;
    pthread_mutex_init((this + v4 + 2080), 0);
    pthread_cond_init((this + v4 + 2144), 0);
    *(v6 + 1128) = 0;
    *(v6 + 281) = 0;
    *(v6 + 548) = 0;
    *(v6 + 2200) = 0u;
    *(v6 + 2216) = 0u;
    *(v6 + 2225) = 0u;
    *(v6 + 258) = this;
    *(v6 + 518) = v3;
    *(v6 + 2260) = 0xFFFFLL;
    *(v6 + 284) = 0;
    ++v3;
    *(v6 + 1134) = 0;
    v4 += 248;
  }

  while (v4);
}

void HxISPCaptureDeviceController::~HxISPCaptureDeviceController(HxISPCaptureDeviceController *this)
{
  v2 = 0;
  v3 = 256;
  do
  {
    if (*(this + v3) == 1)
    {
      HxISPCaptureDeviceController::stopReceive(this, v2);
    }

    ++v2;
    v3 += 248;
  }

  while (v2 != 8);
  if (*(this + 2148))
  {
    HxISPCaptureDeviceController::deactivate(this);
  }

  v4 = -1984;
  do
  {
    pthread_cond_destroy((this + v4 + 2144));
    pthread_mutex_destroy((this + v4 + 2080));
    v4 += 248;
  }

  while (v4);
}

uint64_t HxISPCaptureDeviceController::stopReceive(HxISPCaptureDeviceController *this, unsigned int a2)
{
  v2 = this + 248 * a2;
  if (v2[256])
  {
    if (*(this + 516) <= a2)
    {
      v6 = 3758097084;
      printf("Error: HxISPCaptureDeviceController::stopReceive - Invalid streamIndex %d\n", a2);
    }

    else
    {
      v3 = v2 + 80;
      v2[272] = 1;
      v4 = *(this + a2 + 2);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v5)
      {
        v6 = v5(v4);
      }

      else
      {
        v6 = 4294954514;
      }

      v7 = *(v3 + 17);
      if (v7)
      {
        CMBufferQueueRemoveTrigger(v7, *(v3 + 18));
        while (1)
        {
          v8 = CMBufferQueueDequeueAndRetain(*(v3 + 17));
          if (!v8)
          {
            break;
          }

          CFRelease(v8);
        }

        while (1)
        {
          v9 = CMBufferQueueDequeueAndRetain(*(v3 + 19));
          if (!v9)
          {
            break;
          }

          CFRelease(v9);
        }
      }

      if (*(v3 + 23))
      {
        while (1)
        {
          pthread_mutex_lock((v3 + 16));
          if (*(v3 + 32) != 1)
          {
            break;
          }

          pthread_mutex_unlock((v3 + 16));
          usleep(0x2710u);
        }

        v11 = 0;
        *(v3 + 32) = 2;
        pthread_cond_signal((v3 + 80));
        pthread_mutex_unlock((v3 + 16));
        pthread_join(*(v3 + 23), &v11);
        *(v3 + 23) = 0;
      }

      *(v3 + 20) = 0;
      *(v3 + 21) = 0;
      v3[176] = 0;
    }
  }

  else
  {
    v6 = 3758097084;
    puts("Error: HxISPCaptureDeviceController::startReceive - not already streaming");
  }

  return v6;
}

uint64_t HxISPCaptureDeviceController::deactivate(HxISPCaptureDeviceController *this)
{
  if (*(this + 2148) == 1)
  {
    for (i = 16; i != 80; i += 8)
    {
      if (*(this + i))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
      }
    }

    for (j = 0; j != 1984; j += 248)
    {
      v4 = *(this + j + 216);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(this + j + 232);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    v6 = 0;
    v7 = -1984;
    do
    {
      v8 = this + v6;
      *(v8 + 2) = 0;
      *(v8 + 260) = 0;
      v9 = this + v7;
      pthread_mutex_init((this + v7 + 2080), 0);
      pthread_cond_init((this + v7 + 2144), 0);
      *(v9 + 1128) = 0;
      *(v9 + 281) = 0;
      *(v9 + 548) = 0;
      *(v9 + 2200) = 0u;
      *(v9 + 2216) = 0u;
      *(v9 + 2225) = 0u;
      *(v9 + 258) = this;
      v6 += 8;
      *(v9 + 518) = 0;
      v7 += 248;
    }

    while (v7);
    v10 = *(this + 259);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(this + 1);
    if (v11)
    {
      CFRelease(v11);
    }

    if (*this)
    {
      FigBaseObject = FigCaptureDeviceGetFigBaseObject();
      if (FigBaseObject)
      {
        v13 = FigBaseObject;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v14)
        {
          v14(v13);
        }
      }

      CFRelease(*this);
    }

    *(this + 2148) = 0;
    *(this + 516) = 0;
    *this = 0;
    *(this + 1) = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t HxISPCaptureDeviceController::activate(HxISPCaptureDeviceController *this)
{
  v1 = 0xFFFFFFFFLL;
  if (*(this + 2148))
  {
    return v1;
  }

  *(this + 538) = -1;
  v21 = 0;
  v1 = sub_100012E00("/System/Library/MediaCapture/VirtualCameraDevice.mediacapture", "FigVirtualCameraDeviceCreate", &v21);
  if (v21)
  {
    fprintf(__stderrp, "+++ Found and loaded %s\n", "/System/Library/MediaCapture/VirtualCameraDevice.mediacapture");
    v3 = v21;
    if (v21)
    {
LABEL_13:
      *this = v3;
      goto LABEL_14;
    }
  }

  v4 = &dword_100020B00;
  v5 = 1;
  do
  {
    v6 = IOServiceMatching(*(v4 - 3));
    if (IOServiceGetMatchingService(kIOMainPortDefault, v6))
    {
      v7 = *(v4 - 2);
      v1 = sub_100012E00(v7, *(v4 - 1), &v21);
      if (!v21)
      {
        v3 = 0;
        goto LABEL_10;
      }

      fprintf(__stderrp, "+++ Found and loaded  %s\n", v7);
      *(this + 538) = *v4;
    }

    v3 = v21;
LABEL_10:
    if (v5 > 4)
    {
      break;
    }

    ++v5;
    v4 += 8;
  }

  while (!v3);
  if (this)
  {
    goto LABEL_13;
  }

  if (v3)
  {
    CFRelease(v3);
  }

LABEL_14:
  if (v1 || !*this)
  {
    puts("HxISPCaptureDeviceController::activate - Error: Could not create CaptureDevice");
  }

  else
  {
    FigBaseObject = FigCaptureDeviceGetFigBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      return 4294954514;
    }

    v11 = v10(FigBaseObject, kFigCaptureDeviceProperty_StreamArray, kCFAllocatorDefault, this + 8);
    if (v11)
    {
      return v11;
    }

    Count = CFArrayGetCount(*(this + 1));
    if (Count >= 8)
    {
      LODWORD(v13) = 8;
    }

    else
    {
      LODWORD(v13) = Count;
    }

    *(this + 516) = v13;
    if (Count)
    {
      v14 = 0;
      do
      {
        *(this + v14 + 2) = CFArrayGetValueAtIndex(*(this + 1), v14);
        ++v14;
        v13 = *(this + 516);
      }

      while (v14 < v13);
    }

    if (v13)
    {
      v15 = 0;
      do
      {
        if (*(this + v15 + 2))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
        }

        else
        {
          printf("HxISPCaptureDeviceController::activate - CaptureStream %d not found\n", v15);
        }

        ++v15;
      }

      while (v15 < *(this + 516));
    }

    v16 = FigCaptureDeviceGetFigBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v11 = v17(v16, kFigCaptureDeviceProperty_SupportedSynchronizedStreamsGroups, kCFAllocatorDefault, this + 2072);
      if (v11)
      {
        return v11;
      }

      else
      {
        v18 = CFArrayGetCount(*(this + 259));
        if (v18 >= 8)
        {
          v19 = 8;
        }

        else
        {
          v19 = v18;
        }

        *(this + 536) = v19;
        if (v18)
        {
          v20 = 0;
          do
          {
            *(this + v20 + 260) = CFArrayGetValueAtIndex(*(this + 259), v20);
            ++v20;
          }

          while (v20 < *(this + 536));
        }

        v1 = 0;
        *(this + 2148) = 1;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return v1;
}

size_t sub_100010F70(int a1, uint64_t a2, const __CFString *a3, CFTypeRef cf1)
{
  if (a2 && cf1)
  {
    if (*(a2 + 2064))
    {
      v7 = 0;
      do
      {
        if (CFEqual(cf1, *(a2 + 16 + 8 * v7)))
        {
          break;
        }

        ++v7;
      }

      while (v7 < *(a2 + 2064));
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v11 = __stdoutp;
    CStringPtr = CFStringGetCStringPtr(a3, 0);
    fprintf(v11, "HxISPCaptureDeviceController::handleStreamNotification: %s (streamIndex %d)\n", CStringPtr, v8);
    fflush(__stdoutp);
    result = CFEqual(a3, kFigCaptureStreamNotification_StreamControlTakenByAnotherClient);
    if (result && *(a2 + 248 * v8 + 256) == 1)
    {

      return HxISPCaptureDeviceController::stopReceive(a2, v8);
    }
  }

  else
  {
    v9 = __stdoutp;

    return fwrite("Diagnostic_FW Device controller recievd null notification info objects\n", 0x47uLL, 1uLL, v9);
  }

  return result;
}

uint64_t HxISPCaptureDeviceController::RequestStreams(HxISPCaptureDeviceController *this, const __CFArray *a2, const __CFDictionary *a3)
{
  if (!a2)
  {
    return 4294954516;
  }

  v5 = *this;
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (*v6 < 2uLL)
  {
    return 4294954514;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v5, a2, a3);
}

uint64_t HxISPCaptureDeviceController::RelinquishStreams(HxISPCaptureDeviceController *this, const __CFArray *a2)
{
  if (!a2)
  {
    return 4294954516;
  }

  v3 = *this;
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 < 2uLL)
  {
    return 4294954514;
  }

  v5 = v4[3];
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v3, a2, 0);
}

uint64_t HxISPCaptureDeviceController::startReceive(HxISPCaptureDeviceController *this, unsigned int a2, void (*a3)(opaqueCMSampleBuffer *, unsigned int, void *), void *a4)
{
  if ((*(this + 2148) & 1) == 0)
  {
    puts("Error: HxISPCaptureDeviceController::startReceive - No CM plug-in");
    return 0xFFFFFFFFLL;
  }

  if (*(this + 516) <= a2)
  {
    printf("Error: HxISPCaptureDeviceController::startReceive - Invalid streamIndex %d\n");
    return 0xFFFFFFFFLL;
  }

  v5 = this + 248 * a2;
  if (v5[256] == 1)
  {
    printf("Error: HxISPCaptureDeviceController::startReceive - already streaming on streamIndex %d\n");
    return 0xFFFFFFFFLL;
  }

  v8 = v5 + 80;
  *(v5 + 30) = a3;
  *(v5 + 31) = a4;
  obj = 0;
  v9 = this + 16;
  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11 && !v11(FigBaseObject, kFigCaptureStreamProperty_FormatDescription, kCFAllocatorDefault, &obj))
  {
    CFShow(obj);
    CFRelease(obj);
    obj = 0;
  }

  if (!*(v8 + 17))
  {
    v13 = FigCaptureStreamGetFigBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v14)
    {
      return 4294954514;
    }

    v15 = v14(v13, kFigCaptureStreamProperty_BufferQueue, kCFAllocatorDefault, v8 + 136);
    if (v15)
    {
      return v15;
    }
  }

  if (*(v8 + 19))
  {
    goto LABEL_14;
  }

  v16 = FigCaptureStreamGetFigBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    return 4294954514;
  }

  v15 = v17(v16, kFigCaptureStreamProperty_StillImageBufferQueue, kCFAllocatorDefault, v8 + 152);
  if (v15)
  {
    return v15;
  }

LABEL_14:
  v12 = *(v8 + 17);
  *&time.__sig = *&kCMTimeZero.value;
  *&time.__opaque[8] = kCMTimeZero.epoch;
  if (CMBufferQueueInstallTrigger(v12, sub_100011678, v8, 7, &time, v8 + 18))
  {
    return 3758097084;
  }

  pthread_mutex_lock((v8 + 16));
  v8[192] = 0;
  *(v8 + 32) = 0;
  pthread_attr_init(&time);
  pthread_attr_setdetachstate(&time, 1);
  pthread_create(v8 + 23, &time, sub_1000116E4, v8);
  pthread_attr_destroy(&time);
  pthread_mutex_unlock((v8 + 16));
  v18 = *&v9[8 * a2];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v19)
  {
    v6 = v19(v18);
    if (!v6)
    {
      v8[176] = 1;
      return v6;
    }
  }

  else
  {
    v6 = 4294954514;
  }

  CMBufferQueueRemoveTrigger(*(v8 + 17), *(v8 + 18));
  while (1)
  {
    usleep(0x2710u);
    time.__sig = 0;
    pthread_mutex_lock((v8 + 16));
    if (*(v8 + 32) != 1)
    {
      break;
    }

    pthread_mutex_unlock((v8 + 16));
  }

  *(v8 + 32) = 2;
  pthread_cond_signal((v8 + 80));
  pthread_mutex_unlock((v8 + 16));
  pthread_join(*(v8 + 23), &time);
  v8[176] = 0;
  return v6;
}

uint64_t sub_100011678(uint64_t result)
{
  if ((*(result + 192) & 1) == 0)
  {
    v1 = result;
    if (*(result + 128) != 1)
    {
      pthread_mutex_lock((result + 16));
      *(v1 + 128) = 1;
      pthread_cond_signal((v1 + 80));

      return pthread_mutex_unlock((v1 + 16));
    }
  }

  return result;
}

uint64_t sub_1000116E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = "HxISPCaptureDeviceStreamFrameReceiveThread1";
  }

  else
  {
    v2 = "HxISPCaptureDeviceStreamFrameReceiveThread0";
  }

  pthread_setname_np(v2);
  pthread_mutex_lock((a1 + 16));
  while (1)
  {
    pthread_cond_wait((a1 + 80), (a1 + 16));
    if (*(a1 + 128) == 2)
    {
      break;
    }

    v3 = CMBufferQueueDequeueAndRetain(*(a1 + 136));
    if (v3)
    {
      v4 = v3;
      do
      {
        v5 = *(a1 + 160);
        if (v5)
        {
          v5(v4, *(a1 + 8), *(a1 + 168));
        }

        CFRelease(v4);
        v4 = CMBufferQueueDequeueAndRetain(*(a1 + 136));
      }

      while (v4);
    }

    *(a1 + 128) = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  return 0;
}

uint64_t HxISPCaptureDeviceController::startReceiveWithRealTimeCallbacks(HxISPCaptureDeviceController *this, unsigned int a2, void (*a3)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a4, void (*a5)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a6, void (*a7)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a8, void (*a9)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a10, void (*a11)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a12, void (*a13)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a14, void (*a15)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a16, void (*a17)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a18, void (*a19)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a20, void (*a21)(__CVBuffer *, CMTime *__struct_ptr, unsigned int, void *), void *a22)
{
  if ((*(this + 2148) & 1) == 0)
  {
    puts("Error: HxISPCaptureDeviceController::startReceiveWithRealTimeCallbacks - No CM plug-in");
    return 0xFFFFFFFFLL;
  }

  if (*(this + 516) <= a2)
  {
    printf("Error: HxISPCaptureDeviceController::startReceiveWithRealTimeCallbacks - Invalid streamIndex %d\n");
    return 0xFFFFFFFFLL;
  }

  v24 = this + 248 * a2;
  if (v24[256] == 1)
  {
    printf("Error: HxISPCaptureDeviceController::startReceiveWithRealTimeCallbacks - already streaming on streamIndex %d\n");
    return 0xFFFFFFFFLL;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v33 = Mutable;
    v34 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v34)
    {
      v35 = v34;
      value[0] = _NSConcreteStackBlock;
      value[1] = 0x40000000;
      value[2] = sub_100012134;
      value[3] = &unk_100020708;
      v81 = a2;
      value[4] = a3;
      value[5] = a4;
      CFDictionarySetValue(v34, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, value);
      CFDictionarySetValue(v35, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_100020748);
      CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_PrimaryScaler, v35);
      CFRelease(v35);
    }

    v36 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v36)
    {
      v37 = v36;
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 0x40000000;
      v78[2] = sub_1000121B0;
      v78[3] = &unk_100020768;
      v79 = a2;
      v78[4] = a5;
      v78[5] = a6;
      CFDictionarySetValue(v36, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, v78);
      CFDictionarySetValue(v37, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_1000207A8);
      CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_SecondaryScaler, v37);
      CFRelease(v37);
    }

    v38 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v38)
    {
      v39 = v38;
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 0x40000000;
      v76[2] = sub_10001222C;
      v76[3] = &unk_1000207C8;
      v77 = a2;
      v76[4] = a7;
      v76[5] = a8;
      CFDictionarySetValue(v38, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, v76);
      CFDictionarySetValue(v39, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_100020808);
      CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_IntermediateTap, v39);
      CFRelease(v39);
    }

    if (a9)
    {
      v40 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v40)
      {
        v41 = v40;
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 0x40000000;
        v74[2] = sub_1000122A8;
        v74[3] = &unk_100020828;
        v75 = a2;
        v74[4] = a9;
        v74[5] = a10;
        CFDictionarySetValue(v40, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, v74);
        CFDictionarySetValue(v41, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_100020868);
        CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_StillImage, v41);
        CFRelease(v41);
      }
    }

    if (a11)
    {
      v42 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v42)
      {
        v43 = v42;
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 0x40000000;
        v72[2] = sub_100012324;
        v72[3] = &unk_100020888;
        v73 = a2;
        v72[4] = a11;
        v72[5] = a12;
        CFDictionarySetValue(v42, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, v72);
        CFDictionarySetValue(v43, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_1000208C8);
        CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_StillImageIntermediateTap, v43);
        CFRelease(v43);
      }
    }

    if (a13)
    {
      v44 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v44)
      {
        v45 = v44;
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 0x40000000;
        v70[2] = sub_1000123A0;
        v70[3] = &unk_1000208E8;
        v71 = a2;
        v70[4] = a13;
        v70[5] = a14;
        CFDictionarySetValue(v44, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, v70);
        CFDictionarySetValue(v45, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_100020928);
        CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_Depth, v45);
        CFRelease(v45);
      }
    }

    if (a15)
    {
      v46 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v46)
      {
        v47 = v46;
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 0x40000000;
        v68[2] = sub_10001241C;
        v68[3] = &unk_100020948;
        v69 = a2;
        v68[4] = a15;
        v68[5] = a16;
        CFDictionarySetValue(v46, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, v68);
        CFDictionarySetValue(v47, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_100020988);
        CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_Raw, v47);
        CFRelease(v47);
      }
    }

    if (a17)
    {
      v48 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v48)
      {
        v49 = v48;
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 0x40000000;
        v66[2] = sub_100012498;
        v66[3] = &unk_1000209A8;
        v67 = a2;
        v66[4] = a17;
        v66[5] = a18;
        CFDictionarySetValue(v48, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, v66);
        CFDictionarySetValue(v49, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_1000209E8);
        CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_StillImageRaw, v49);
        CFRelease(v49);
      }
    }

    if (a19)
    {
      v50 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v50)
      {
        v51 = v50;
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 0x40000000;
        v64[2] = sub_100012514;
        v64[3] = &unk_100020A08;
        v65 = a2;
        v64[4] = a19;
        v64[5] = a20;
        CFDictionarySetValue(v50, kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler, v64);
        CFDictionarySetValue(v51, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_100020A48);
        CFDictionarySetValue(v33, @"VisPipe", v51);
        CFRelease(v51);
      }
    }

    if (a21)
    {
      v52 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v52)
      {
        v53 = v52;
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 0x40000000;
        v62[2] = sub_100012590;
        v62[3] = &unk_100020A68;
        v63 = a2;
        v62[4] = a21;
        v62[5] = a22;
        CFDictionarySetValue(v52, kFigCaptureStreamVideoOutputHandlerKey_DataBufferHandler, v62);
        CFDictionarySetValue(v53, kFigCaptureStreamVideoOutputHandlerKey_EventHandler, &stru_100020AA8);
        CFDictionarySetValue(v33, kFigCaptureStreamVideoOutputID_PointCloud, v53);
        CFRelease(v53);
      }
    }

    v54 = HxISPCaptureDeviceController::SetStreamProperty(this, a2, kFigCaptureStreamProperty_VideoOutputHandlers, v33);
    if (v54)
    {
      printf("Error: HxISPCaptureDeviceController::startReceiveWithRealTimeCallbacks - error setting VideoOutputHandlers: %d\n", v54);
    }

    CFRelease(v33);
    v24 = this + 248 * a2;
  }

  *(v24 + 30) = 0;
  *(v24 + 31) = 0;
  v55 = v24;
  v56 = this + 16;
  obj = 0;
  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v58)
  {
    return 4294954514;
  }

  result = v58(FigBaseObject, kFigCaptureStreamProperty_FormatDescription, kCFAllocatorDefault, &obj);
  if (result)
  {
    return result;
  }

  CFShow(obj);
  CFRelease(obj);
  obj = 0;
  v59 = *&v56[8 * a2];
  v60 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v60)
  {
    return 4294954514;
  }

  result = v60(v59);
  if (!result)
  {
    v55[256] = 1;
  }

  return result;
}

uint64_t sub_100012134(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_1000121B0(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_10001222C(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_1000122A8(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_100012324(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_1000123A0(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_10001241C(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_100012498(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_100012514(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t sub_100012590(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    return v3(a2, &v4, *(result + 48), *(result + 40));
  }

  return result;
}

uint64_t HxISPCaptureDeviceController::SetStreamProperty(HxISPCaptureDeviceController *this, unsigned int a2, const __CFString *a3, const __CFBoolean *a4)
{
  if ((*(this + 2148) & 1) == 0)
  {
    v12 = "Error: HxISPCaptureDeviceController::startReceive - No CM plug-in";
LABEL_10:
    puts(v12);
    return 0xFFFFFFFFLL;
  }

  if (*(this + 516) <= a2)
  {
    v12 = "Error: HxISPCaptureDeviceController::SetStreamProperty - Invalid stream index";
    goto LABEL_10;
  }

  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
    return 4294954514;
  }

  result = v9(FigBaseObject, a3, a4);
  if (!result)
  {
    result = CFEqual(a3, kFigCaptureStreamProperty_MultipleOutputSupportEnabled);
    if (result)
    {
      result = CFBooleanGetValue(a4);
      v11 = this + 248 * a2;
      if (result)
      {
        result = 0;
        v11[273] = 1;
      }

      else
      {
        v11[273] = 0;
      }
    }
  }

  return result;
}

uint64_t HxISPCaptureDeviceController::SetDeviceProperty(HxISPCaptureDeviceController *this, const __CFString *a2, const void *a3)
{
  if (*(this + 2148))
  {
    FigBaseObject = FigCaptureDeviceGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {

      return v6(FigBaseObject, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    puts("Error: HxISPCaptureDeviceController::startReceive - No CM plug-in");
    return 0xFFFFFFFFLL;
  }
}

uint64_t HxISPCaptureDeviceController::CopyDeviceProperty(HxISPCaptureDeviceController *this, const __CFString *a2, void *a3)
{
  if (*(this + 2148))
  {
    FigBaseObject = FigCaptureDeviceGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {

      return v6(FigBaseObject, a2, kCFAllocatorDefault, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    puts("Error: HxISPCaptureDeviceController::startReceive - No CM plug-in");
    return 0xFFFFFFFFLL;
  }
}

uint64_t HxISPCaptureDeviceController::CopyStreamProperty(HxISPCaptureDeviceController *this, unsigned int a2, const __CFString *a3, void *a4)
{
  if ((*(this + 2148) & 1) == 0)
  {
    v9 = "Error: HxISPCaptureDeviceController::startReceive - No CM plug-in";
LABEL_9:
    puts(v9);
    return 0xFFFFFFFFLL;
  }

  if (*(this + 516) <= a2)
  {
    v9 = "Error: HxISPCaptureDeviceController::CopyStreamProperty - Invalid stream index";
    goto LABEL_9;
  }

  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(FigBaseObject, a3, kCFAllocatorDefault, a4);
}

uint64_t HxISPCaptureDeviceController::SetGroupProperty(HxISPCaptureDeviceController *this, unsigned int a2, const __CFString *a3, const void *a4)
{
  if ((*(this + 2148) & 1) == 0)
  {
    v12 = "Error: HxISPCaptureDeviceController::SetGroupProperty - No CM plug-in";
LABEL_12:
    puts(v12);
    return 0xFFFFFFFFLL;
  }

  if (*(this + 516) <= a2)
  {
    v12 = "Error: HxISPCaptureDeviceController::SetGroupProperty - Invalid stream index";
    goto LABEL_12;
  }

  if (*(this + 536))
  {
    v7 = 0;
    v8 = kFigCaptureSynchronizedStreamsGroupProperty_SupportedStreams;
    while (1)
    {
      theArray = 0;
      FigBaseObject = FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v10 || v10(FigBaseObject, v8, kCFAllocatorDefault, &theArray))
      {
        break;
      }

      v11 = theArray;
      v18.length = CFArrayGetCount(theArray);
      v18.location = 0;
      CFArrayContainsValue(v11, v18, *(this + a2 + 2));
      CFRelease(theArray);
      if (++v7 >= *(this + 536))
      {
        goto LABEL_13;
      }
    }

    v12 = "Error: HxISPCaptureDeviceController::SetGroupProperty - Unable to locate synchronized stream group for stream";
    goto LABEL_12;
  }

LABEL_13:
  v14 = FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v15)
  {
    return v15(v14, a3, a4);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t HxISPCaptureDeviceController::CopyGroupProperty(HxISPCaptureDeviceController *this, unsigned int a2, const __CFString *a3, void *a4)
{
  if ((*(this + 2148) & 1) == 0)
  {
    v12 = "Error: HxISPCaptureDeviceController::CopyGroupProperty - No CM plug-in";
LABEL_12:
    puts(v12);
    return 0xFFFFFFFFLL;
  }

  if (*(this + 516) <= a2)
  {
    v12 = "Error: HxISPCaptureDeviceController::CopyGroupProperty - Invalid stream index";
    goto LABEL_12;
  }

  if (*(this + 536))
  {
    v7 = 0;
    v8 = kFigCaptureSynchronizedStreamsGroupProperty_SupportedStreams;
    while (1)
    {
      theArray = 0;
      FigBaseObject = FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v10 || v10(FigBaseObject, v8, kCFAllocatorDefault, &theArray))
      {
        break;
      }

      v11 = theArray;
      v18.length = CFArrayGetCount(theArray);
      v18.location = 0;
      CFArrayContainsValue(v11, v18, *(this + a2 + 2));
      CFRelease(theArray);
      if (++v7 >= *(this + 536))
      {
        goto LABEL_13;
      }
    }

    v12 = "Error: HxISPCaptureDeviceController::CopyGroupProperty - Unable to locate synchronized stream group for stream";
    goto LABEL_12;
  }

LABEL_13:
  v14 = FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    return v15(v14, a3, kCFAllocatorDefault, a4);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t sub_100012E00(const char *a1, const char *a2, uint64_t a3)
{
  v5 = dlopen(a1, 4);
  if (!v5)
  {
    return 0;
  }

  v6 = dlsym(v5, a2);
  if (!v6)
  {
    return 0;
  }

  return v6(kCFAllocatorDefault, 0, a3);
}

uint64_t ecDiagnosticStatusCodeFromStatusString(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"pending"]|| [(NSString *)v1 isEqualToString:@"control"])
  {
    v2 = 4294966376;
  }

  else if ([(NSString *)v1 isEqualToString:@"denied"])
  {
    v2 = 901;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const __CFString *stringForSensorStatus(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100020B88 + (a1 - 1));
  }
}

id ecDisplayPipeStats(void)
{
  v0 = objc_alloc_init(NSMutableDictionary);
  if (EXDisplayPipeOpen())
  {
    v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DiagnosticUtils.mm"];
    v2 = [v1 lastPathComponent];
    v3 = [NSString stringWithFormat:@"Failed to open ExDisplayPipe client for status!"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v2, 100, v3);

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (EXDisplayPipeGetStats())
  {
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DiagnosticUtils.mm"];
    v5 = [v4 lastPathComponent];
    v6 = [NSString stringWithFormat:@"Failed to get ExDisplayPipe status!"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 119, v6);

    EXDisplayPipeClose();
    goto LABEL_5;
  }

  v9 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v9 forKeyedSubscript:@"link"];

  v10 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v10 forKeyedSubscript:@"brightness"];

  v11 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v11 forKeyedSubscript:@"dcpTransportHealth"];

  v12 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v12 forKeyedSubscript:@"globalHealth"];

  v13 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v13 forKeyedSubscript:@"pipe"];

  v14 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v14 forKeyedSubscript:@"scaAlgorithm"];

  v15 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v15 forKeyedSubscript:@"scaDriver"];

  v16 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v16 forKeyedSubscript:@"sclDriver"];

  v17 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v17 forKeyedSubscript:@"sclHealth"];

  v18 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v18 forKeyedSubscript:@"tconCRC"];

  v19 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v19 forKeyedSubscript:@"tconHealth"];

  v20 = [NSNumber numberWithUnsignedLongLong:0];
  [v0 setObject:v20 forKeyedSubscript:@"tconHPD"];

  EXDisplayPipeClose();
  v7 = [v0 copy];
LABEL_6:

  return v7;
}

const __CFString *ecStatusCheck(void)
{
  [@"com.apple.sensors.cam" UTF8String];
  if (!exclaves_sensor_create())
  {
    exclaves_sensor_status();
    mach_port_deallocate(mach_task_self_, 0);
  }

  return @"unknown";
}

id getCurrentVersion(void)
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  return v1;
}

void logMainResults(NSDictionary *a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DiagnosticUtils.mm"];
  v6 = [v5 lastPathComponent];
  v7 = [NSString stringWithFormat:@"Start Diag Logging Results Dictionary for %d -->", a2];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 161, v7);

  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DiagnosticUtils.mm"];
  v9 = [v8 lastPathComponent];
  v10 = [NSString stringWithFormat:@"Return code: %d", a3];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 162, v10);

  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DiagnosticUtils.mm"];
  v12 = [v11 lastPathComponent];
  v13 = [(NSDictionary *)v30 description];
  v14 = [NSString stringWithFormat:@"Result description: %@", v13];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 163, v14);

  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DiagnosticUtils.mm"];
  v16 = [v15 lastPathComponent];
  v17 = [NSString stringWithFormat:@"Key/Val pairs:"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 164, v17);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(NSDictionary *)v30 allKeys];
  v18 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v18)
  {
    v19 = *v32;
    do
    {
      v20 = 0;
      do
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v31 + 1) + 8 * v20);
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DiagnosticUtils.mm"];
        v23 = [v22 lastPathComponent];
        v24 = [(NSDictionary *)v30 objectForKey:v21];
        v25 = [NSString stringWithFormat:@"key:%@ val: %@", v21, v24];
        NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v23, 167, v25);

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v18);
  }

  v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Common/DiagnosticUtils.mm"];
  v27 = [v26 lastPathComponent];
  v28 = [NSString stringWithFormat:@"Done Diag Logging Results Dictionary <--"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v27, 169, v28);
}

__CFString *decToBinStr(unsigned int a1)
{
  v1 = a1;
  v2 = &stru_1000214C8;
  v3 = 32;
  do
  {
    v4 = [NSString stringWithFormat:@"%lu", v1 & 1];
    v5 = [v4 stringByAppendingString:v2];

    v1 >>= 1;
    v2 = v5;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t setBit(uint64_t result, int a2, unsigned int *a3)
{
  v3 = *a3 | result;
  if (!a2)
  {
    v3 = *a3 & ~result;
  }

  *a3 = v3;
  return result;
}

void updateJasperValidationStatus(int a1, JasperValidationStatus *a2)
{
  if ((a1 & 0x400) != 0)
  {
    sub_100003220(a2, 40, @"JASPER_VC_PROJECTOR_NOT_ACTIVE");
    if ((a1 & 0x1000) == 0)
    {
LABEL_3:
      if ((a1 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  sub_100003220(a2, 41, @"JASPER_VC_BRICK");
  if ((a1 & 0x8000) == 0)
  {
LABEL_4:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_100003220(a2, 42, @"JASPER_VC_PROJECTOR_FAULT");
  if ((a1 & 0x20000) == 0)
  {
LABEL_5:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_100003220(a2, 43, @"JASPER_VC_SW_SAFETY");
  if ((a1 & 0x40000) == 0)
  {
LABEL_6:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_100003220(a2, 44, @"JASPER_VC_OVERHEAT");
  if ((a1 & 0x80000) == 0)
  {
LABEL_7:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_100003220(a2, 45, @"JASPER_VC_POWERSUPPLY");
  if ((a1 & 0x100000) == 0)
  {
LABEL_8:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    sub_100003220(a2, 47, @"JASPER_VC_SENSOR_MONITOR");
    if ((a1 & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_17:
  sub_100003220(a2, 46, @"JASPER_VC_SENSOR_STATUS");
  if ((a1 & 0x200000) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((a1 & 0x400000) == 0)
  {
    return;
  }

LABEL_19:

  sub_100003220(a2, 48, @"JASPER_VC_PROJECTORON_NOT_ALLOWED");
}

void setTestValidationBit(int a1, id *a2)
{
  if (a1)
  {
    v4 = +[NSMutableDictionary dictionary];
    if (a1)
    {
      [v4 setValue:@"FAIL" forKey:@"SENSOR_FRAMERATE"];
    }

    if ((a1 & 2) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"SENSOR_EXPOSURE"];
    }

    if ((a1 & 4) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_SELECT_AB"];
    }

    if ((a1 & 8) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_SELECT_C"];
    }

    if ((a1 & 0x10) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_SELECT_AB34"];
    }

    if ((a1 & 0x20) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_IOUT0"];
    }

    if ((a1 & 0x40) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_IOUT1"];
    }

    if ((a1 & 0x80) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_IOUT2"];
    }

    if ((a1 & 0x100) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_IOUT3"];
    }

    if ((a1 & 0x200) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_IOUT4"];
    }

    if ((a1 & 0x400) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_NOT_ACTIVE"];
    }

    if ((a1 & 0x800) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"MB_NO_ENABLE"];
    }

    if ((a1 & 0x1000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"MB_BRICK"];
    }

    if ((a1 & 0x2000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"YG"];
    }

    if ((a1 & 0x4000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_CC"];
    }

    if ((a1 & 0x8000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_FAULT"];
    }

    if ((a1 & 0x10000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTOR_STROBECOUNT"];
    }

    if ((a1 & 0x20000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"SW_SAFETY"];
    }

    if ((a1 & 0x40000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"OVERHEAT"];
    }

    if ((a1 & 0x80000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"POWERSUPPLY"];
    }

    if ((a1 & 0x100000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"SENSOR_STATUS"];
    }

    if ((a1 & 0x200000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"SENSOR_MONITOR"];
    }

    if ((a1 & 0x400000) != 0)
    {
      [v4 setValue:@"FAIL" forKey:@"PROJECTORON_NOT_ALLOWED"];
    }

    [*a2 setValue:v4 forKey:@"FW VALIDATION FAIL INFO"];
  }
}

const __CFString *getJasperStatusValueString(int a1)
{
  result = @"JASPER_PASS_OK";
  if (a1 > 100)
  {
    v3 = @"JASPER_VC_REAL_POWERSUPPLY";
    if (a1 != 525312)
    {
      v3 = @"JASPER_PASS_OK";
    }

    if (a1 == 101)
    {
      return @"JASPER_GENERIC_ERROR";
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 10:
        result = @"JASPER_MODULE_IS_MISSING";
        break;
      case 11:
        result = @"JASPER_INTERFACE_ERROR";
        break;
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
        return result;
      case 20:
        result = @"JASPER_FAILED_TO_START_STREAMING";
        break;
      case 21:
        result = @"JASPER_FAILED_TO_STOP_STREAMING";
        break;
      case 22:
        result = @"JASPER_FAILED_STREAM_CONTROL";
        break;
      case 30:
        result = @"JASPER_FPS_ERROR";
        break;
      case 31:
        result = @"JASPER_POINTS_ERROR";
        break;
      case 40:
        result = @"JASPER_VC_PROJECTOR_NOT_ACTIVE";
        break;
      case 41:
        result = @"JASPER_VC_BRICK";
        break;
      case 42:
        result = @"JASPER_VC_PROJECTOR_FAULT";
        break;
      case 43:
        result = @"JASPER_VC_SW_SAFETY";
        break;
      case 44:
        result = @"JASPER_VC_OVERHEAT";
        break;
      case 45:
        result = @"JASPER_VC_POWERSUPPLY";
        break;
      case 46:
        result = @"JASPER_VC_SENSOR_STATUS";
        break;
      case 47:
        result = @"JASPER_VC_SENSOR_MONITOR";
        break;
      case 48:
        result = @"JASPER_VC_PROJECTORON_NOT_ALLOWED";
        break;
      case 49:
        result = @"JASPER_VC_ANY_VALIDATION_ERROR";
        break;
      default:
        if (a1 == -2)
        {
          result = @"JASPER_UNSEALED_STATUS";
        }

        break;
    }
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
void _PKPaletteClosestReferencePointFromPointInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v32[16] = *MEMORY[0x1E69E9840];
  MinX = CGRectGetMinX(*&a1);
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  MinY = CGRectGetMinY(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  v28 = CGRectGetMinY(v35);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v27 = CGRectGetMaxX(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  MaxY = CGRectGetMaxY(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  v25 = CGRectGetMinX(v38);
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  v24 = CGRectGetMaxY(v39);
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  v22 = CGRectGetMinY(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  v21 = CGRectGetMaxX(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  MidY = CGRectGetMidY(v43);
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  v19 = CGRectGetMidX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  v12 = CGRectGetMaxY(v45);
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v13 = CGRectGetMinX(v46);
  v47.origin.x = a1;
  v47.origin.y = a2;
  v47.size.width = a3;
  v47.size.height = a4;
  v14 = CGRectGetMidY(v47);
  v15 = 0;
  *v32 = MinX;
  *&v32[1] = MinY;
  *&v32[2] = MaxX;
  *&v32[3] = v28;
  *&v32[4] = v27;
  *&v32[5] = MaxY;
  *&v32[6] = v25;
  *&v32[7] = v24;
  *&v32[8] = MidX;
  *&v32[9] = v22;
  *&v32[10] = v21;
  *&v32[11] = MidY;
  *&v32[12] = v19;
  *&v32[13] = v12;
  v16 = 3.40282347e38;
  *&v32[14] = v13;
  *&v32[15] = v14;
  do
  {
    v17 = *&v32[v15];
    v18 = *&v32[v15 + 1];
    if ((a6 - v18) * (a6 - v18) + (a5 - v17) * (a5 - v17) < v16)
    {
      v16 = (a6 - v18) * (a6 - v18) + (a5 - v17) * (a5 - v17);
    }

    v15 += 2;
  }

  while (v15 != 16);
}

void sub_1C7E9BFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E9C8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t drawing::Point::Point(uint64_t this)
{
  *this = &unk_1F4769D80;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4769D80;
  *(this + 16) = 0;
  return this;
}

void drawing::Point::~Point(drawing::Point *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float drawing::Point::Point(drawing::Point *this, const drawing::Point *a2)
{
  *this = &unk_1F4769D80;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 3) = result;
  }

  return result;
}

uint64_t drawing::Point::operator=(uint64_t a1, const drawing::Point *a2)
{
  if (a1 != a2)
  {
    drawing::Point::Point(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float drawing::swap(drawing *this, drawing::Point *a2, drawing::Point *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

float drawing::Point::Point(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4769D80;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = &unk_1F4769D80;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t drawing::Point::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_1F4769D80;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t drawing::Point::formatText(drawing::Point *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "x", *(this + 2));
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "y", *(this + 3));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::Point::readFrom(drawing::Point *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 16) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 3) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t drawing::Point::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 12);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL drawing::Point::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t drawing::Point::hash_value(drawing::Point *this)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    v1 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

void PKAccessibilityPerformBlockOnMainThreadAfterDelay(void *a1, double a2)
{
  v3 = a1;
  v4 = +[PKDispatchAfterHandler appLifeCycleHandler];
  [v4 dispatchAfter:0 stringIdentifier:v3 withBlock:a2];
}

void PKAccessibilityPostAnnouncementNotificationWithPriority(void *a1, void *a2, uint64_t a3)
{
  v7 = a1;
  v5 = a2;
  v6 = +[PKAccessibility sharedInstance];
  if ([v6 pkaxRespondsToSelector:sel_postAnnouncement_withSender_priority_ fromExtrasProtocol:&unk_1F480F858])
  {
    [v6 postAnnouncement:v5 withSender:v7 priority:a3];
  }
}

uint64_t PKAccessibilityNeedsAccessibilityElements()
{
  v0 = +[PKAccessibility sharedInstance];
  if ([v0 pkaxRespondsToSelector:sel_needsAccessibilityElements fromExtrasProtocol:&unk_1F480F858])
  {
    v1 = [v0 needsAccessibilityElements];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id __PKAccessibilityStringForVariables(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  objc_opt_class();
  objc_opt_class();
  v11 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F476BD20];
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v12 = [v10 string];
  }

  v13 = v12;
LABEL_7:
  if ([v13 length])
  {
    [v11 appendString:v13];
  }

  v20 = &a9;
  if (a1)
  {
    v14 = @", ";
  }

  else
  {
    v14 = @" ";
  }

  while (1)
  {
    v15 = v20++;
    v16 = *v15;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
LABEL_16:
      v18 = v17;
      goto LABEL_18;
    }

    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 string];
      goto LABEL_16;
    }

    v18 = 0;
LABEL_18:
    if (![v18 length])
    {
      goto LABEL_23;
    }

    if ([v18 isEqualToString:@"__PKAccessibilityStringForVariablesSentinel"])
    {
      break;
    }

    if ([v11 length])
    {
      [v11 appendString:v14];
    }

    [v11 appendString:v18];
LABEL_23:
  }

  return v11;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7EA2630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7EA4138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7EA5F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ClipperLib::Clipper::~Clipper(va);

  _Unwind_Resume(a1);
}

void sub_1C7EA64B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48)
{
  ClipperLib::Clipper::~Clipper(&a48);
  a15 = &a45;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a15);

  _Unwind_Resume(a1);
}

void sub_1C7EA6F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18)
{
  free(a16);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1C7EA70CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  drawing::Stroke::~Stroke(va);

  _Unwind_Resume(a1);
}

void sub_1C7EA71C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  drawing::Stroke::~Stroke(va);
  _Unwind_Resume(a1);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[PKStrokeMask calculateCenterlineSlices:]::$_0 &,_PKFloatRange *,0>(__n128 *a1, double *a2, double *a3, _OWORD *a4, unint64_t *a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = *a4;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_f64[0] = *a3;
      if (*a3 < *a2)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_f64[0] = *a2;
        if (*a2 < a1->n128_f64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[PKStrokeMask calculateCenterlineSlices:]::$_0 &,_PKFloatRange *>(uint64_t a1, double *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = *(a2 - 2);
      v4 = a2 - 2;
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*v4 >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v40 = *a1;
        *a1 = *v6;
        *v6 = v40;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[PKStrokeMask calculateCenterlineSlices:]::$_0 &,_PKFloatRange *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 2, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 2;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_f64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v37 = *a1;
      *a1 = *v6;
      *v6 = v37;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (*v20 >= v18->n128_f64[0])
    {
      return 1;
    }

    v38 = *v18;
    *v18 = *v20;
    *v20 = v38;
    if (v18->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v39 = *v6;
    *v6 = *v18;
    *v18 = v39;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 2);
    v4 = a2 - 2;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_f64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    if (v30->n128_f64[0] < v11->n128_f64[0])
    {
      v34 = v31;
      while (1)
      {
        *(a1 + v34 + 48) = *(a1 + v34 + 32);
        if (v34 == -32)
        {
          break;
        }

        v35 = *(a1 + v34 + 16);
        v34 -= 16;
        if (v33.n128_f64[0] >= v35)
        {
          v36 = (a1 + v34 + 48);
          goto LABEL_41;
        }
      }

      v36 = a1;
LABEL_41:
      *v36 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_PKPoint>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t legacy_drawing::Parameters::Parameters(uint64_t this)
{
  *this = &unk_1F4769DD0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_1F4769DD0;
  *(this + 20) = 0;
  return this;
}

void legacy_drawing::Parameters::~Parameters(legacy_drawing::Parameters *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float legacy_drawing::Parameters::Parameters(legacy_drawing::Parameters *this, const legacy_drawing::Parameters *a2)
{
  *this = &unk_1F4769DD0;
  *(this + 5) = 0;
  v2 = *(a2 + 20);
  if (v2)
  {
    result = *(a2 + 2);
    v3 = 1;
    *(this + 20) = 1;
    *(this + 2) = result;
    v2 = *(a2 + 20);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    v3 |= 2u;
    *(this + 20) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 4);
    *(this + 20) = v3 | 4;
    *(this + 4) = result;
  }

  return result;
}

uint64_t legacy_drawing::Parameters::operator=(uint64_t a1, const legacy_drawing::Parameters *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::Parameters::Parameters(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float legacy_drawing::swap(legacy_drawing *this, legacy_drawing::Parameters *a2, legacy_drawing::Parameters *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float legacy_drawing::Parameters::Parameters(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4769DD0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_1F4769DD0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t legacy_drawing::Parameters::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_1F4769DD0;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 16);
    v10 = *(a1 + 20);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 20) = v3;
    *(a1 + 8) = v6;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    *(a1 + 16) = v4;
    v9 = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t legacy_drawing::Parameters::formatText(legacy_drawing::Parameters *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "baseAlpha", *(this + 2));
    v5 = *(this + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "blendAlpha", *(this + 3));
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "targetMultiple", *(this + 4));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::Parameters::readFrom(legacy_drawing::Parameters *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_38;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_38;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_31:
          *(a2 + 24) = 1;
          goto LABEL_34;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_33;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_34;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_34:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(this + 20) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
      goto LABEL_31;
    }

    *(this + 3) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_38:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t legacy_drawing::Parameters::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 20) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 12));
    if ((*(v3 + 20) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8));
  v4 = *(v3 + 20);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

BOOL legacy_drawing::Parameters::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 4) == 0;
  if ((*(a1 + 20) & 4) != 0)
  {
    return (*(a2 + 20) & 4) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t legacy_drawing::Parameters::hash_value(legacy_drawing::Parameters *this)
{
  if (*(this + 20))
  {
    v6 = *(this + 2);
    v1 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 20) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 3);
      v3 = LODWORD(v2);
      if (v2 == 0.0)
      {
        v3 = 0;
      }

      if ((*(this + 20) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      v5 = 0;
      return v3 ^ v1 ^ v5;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  return v3 ^ v1 ^ v5;
}

void sub_1C7EAB3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PKPaletteTransitionStageDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E82DA1A0[a1];
  }
}

void sub_1C7EACB04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<anonymous namespace::StrokeVertex>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    if (a2 >= v4)
    {
      return result;
    }

    v10 = v3 + 24 * a2;
  }

  else
  {
    v6 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v2) >> 3) < v5)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 3);
      v8 = 0x5555555555555556 * ((v6 - v3) >> 3);
      if (v8 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = v2 + 24 * (24 * v5 / 0x18);
  }

  result[1] = v10;
  return result;
}

void std::vector<PKMetalSDFStrokeVertex>::resize(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0x8E38E38E38E38E39 * (v4 >> 2);
  if (v5 >> 16)
  {
    if (v4 == 2359296)
    {
      return;
    }

    v11 = v2 + 2359296;
  }

  else
  {
    v6 = 0x10000 - v5;
    v7 = a1[2];
    if (0x8E38E38E38E38E39 * ((v7 - v3) >> 2) < v6)
    {
      v8 = 0x8E38E38E38E38E39 * ((v7 - v2) >> 2);
      v9 = 2 * v8;
      if (2 * v8 <= 0x10000)
      {
        v9 = 0x10000;
      }

      if (v8 >= 0x38E38E38E38E38ELL)
      {
        v10 = 0x71C71C71C71C71CLL;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x71C71C71C71C71CLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(a1[1], 2359260 - v4 - (2359260 - v4) % 0x24u + 36);
    v11 = v3 + 2359260 - v4 - (2359260 - v4) % 0x24u + 36;
  }

  a1[1] = v11;
}

void sub_1C7EACEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKMetalRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7EADB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AnimatingStroke::AnimatingStroke(uint64_t a1, PKStroke *a2, int a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0u;
  v12 = MEMORY[0x1E695EFD0];
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *(a1 + 112) = *MEMORY[0x1E695EFD0];
  *(a1 + 128) = v13;
  *(a1 + 144) = *(v12 + 32);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v14 = *MEMORY[0x1E695F050];
  v15 = *(MEMORY[0x1E695F050] + 16);
  *(a1 + 200) = v15;
  *(a1 + 184) = v14;
  *(a1 + 232) = v15;
  *(a1 + 216) = v14;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 335) = 0;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 176) = a3;
  *(a1 + 284) = 0;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  v16 = *(a1 + 288);
  *(a1 + 288) = 0;

  *(a1 + 296) = 0;
  *(a1 + 304) = 0x3FF0000000000000;
  *(a1 + 320) = a4;
  v18 = *a5;
  v17 = a5[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(a1 + 8);
  *a1 = v18;
  *(a1 + 8) = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v21 = *a6;
  v20 = a6[1];
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 40);
  *(a1 + 32) = v21;
  *(a1 + 40) = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a3)
  {
    operator new();
  }

  return a1;
}

void sub_1C7EADE98(_Unwind_Exception *a1)
{
  std::unique_ptr<PKMetalInputProvider>::reset[abi:ne200100]((v1 + 104), 0);
  std::unique_ptr<PKBSplineFilter>::reset[abi:ne200100](v2, 0);

  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::AnimatingStroke::~AnimatingStroke(_anonymous_namespace_::AnimatingStroke *this)
{
  std::unique_ptr<PKMetalInputProvider>::reset[abi:ne200100](this + 13, 0);
  std::unique_ptr<PKBSplineFilter>::reset[abi:ne200100](this + 12, 0);

  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void anonymous namespace::AnimatingStroke::fetchInput(uint64_t a1, void *a2)
{
  if (a2)
  {
    operator new();
  }

  v3 = *(a1 + 96);
  if (v3[1])
  {
    (*(*v3 + 40))(v3);
  }
}

void anonymous namespace::AnimatingStroke::unionDirtyRect(_anonymous_namespace_::AnimatingStroke *this, CGRect a2, CGAffineTransform *a3)
{
  v4 = *&a3->c;
  *&v9.a = *&a3->a;
  *&v9.c = v4;
  *&v9.tx = *&a3->tx;
  v10 = CGRectApplyAffineTransform(a2, &v9);
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  *(this + 184) = CGRectUnion(*(this + 184), v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  *(this + 216) = CGRectUnion(*(this + 216), v11);
}

void anonymous namespace::AnimatingStroke::setTemporaryStrokeBuffers(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[3];
  a1[2] = a2;
  a1[3] = a3;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[7];
  a1[6] = v8;
  a1[7] = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  a1[8] = a1[41];
  a1[41] = 0;
}

void anonymous namespace::AnimatingStroke::resetTemporaryStrokeBuffers(_anonymous_namespace_::AnimatingStroke *this)
{
  v2 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 41) = *(this + 8);
}

BOOL anonymous namespace::scissorRectFromCGRect(_anonymous_namespace_ *this, CGRect a2, CGSize a3)
{
  v10.size.height = a3.height;
  v10.size.width = a3.width;
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v9 = CGRectIntersection(a2, v10);
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  *this = 0u;
  *(this + 1) = 0u;
  result = CGRectIsNull(v9);
  if (!result)
  {
    *this = x;
    *(this + 1) = y;
    *(this + 2) = width;
    *(this + 3) = height;
  }

  return result;
}

void sub_1C7EB1C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  _Block_object_dispose(&STACK[0x240], 8);
  v44 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v44;
    operator delete(v44);
  }

  std::unique_ptr<PKBSplineFilter>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void sub_1C7EB2340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  for (i = 16; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::RendererFramebuffer::~RendererFramebuffer(_anonymous_namespace_::RendererFramebuffer *this)
{
  if (*(this + 8) == 1)
  {
    [(PKMetalFramebuffer *)*this decrementNonPurgeableCount];
  }
}

id *anonymous namespace::RendererFramebuffer::operator=(id *a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  *(a1 + 8) = 0;
  if (*(a2 + 8) == 1)
  {
    *(a1 + 8) = [(PKMetalFramebuffer *)*a1 incrementNonPurgeableCount];
  }

  return a1;
}

void anonymous namespace::RendererFramebuffer::reset(_anonymous_namespace_::RendererFramebuffer *this)
{
  if (*(this + 8) == 1)
  {
    [(PKMetalFramebuffer *)*this decrementNonPurgeableCount];
  }

  v2 = *this;
  *this = 0;

  *(this + 8) = 0;
}

void sub_1C7EB3BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, id *a14)
{

  _Unwind_Resume(a1);
}

void anonymous namespace::AnimatingStroke::setStroke(_anonymous_namespace_::AnimatingStroke *this, PKStroke *a2, uint64_t a3)
{
  v8 = a2;
  objc_storeStrong(this + 10, a2);
  v6 = vcvtd_n_u64_f64((1664525 * [*(this + 10) randomSeed] + 1013904223) / 4294967300.0, 0xCuLL);
  *(this + 264) = vdupq_n_s32(v6);
  *(this + 70) = v6;
  v7 = *(this + 12);
  if (v7)
  {
    *(v7 + 144) = a3;
  }
}

void sub_1C7EB8FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float32x2_t *anonymous namespace::Quad::Quad(float32x2_t *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  MinX = CGRectGetMinX(a2);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxY = CGRectGetMaxY(v29);
  v8.f64[0] = MinX;
  v8.f64[1] = MaxY;
  *this = vcvt_f32_f64(v8);
  v9 = x;
  v8.f64[0] = y;
  v10 = width;
  v11 = height;
  MaxX = CGRectGetMaxX(*(&v8 - 8));
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v12 = CGRectGetMaxY(v30);
  v13.f64[0] = MaxX;
  v13.f64[1] = v12;
  this[1] = vcvt_f32_f64(v13);
  v14 = x;
  v13.f64[0] = y;
  v15 = width;
  v16 = height;
  v27 = CGRectGetMinX(*(&v13 - 8));
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MinY = CGRectGetMinY(v31);
  v18.f64[0] = v27;
  v18.f64[1] = MinY;
  this[2] = vcvt_f32_f64(v18);
  v19 = x;
  v18.f64[0] = y;
  v20 = width;
  v21 = height;
  v28 = CGRectGetMaxX(*(&v18 - 8));
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v22 = CGRectGetMinY(v32);
  v23.f64[0] = v28;
  v23.f64[1] = v22;
  this[3] = vcvt_f32_f64(v23);
  return this;
}

CGFloat anonymous namespace::matrixFromAffineTransform(_anonymous_namespace_ *this, const CGAffineTransform *a2)
{
  memset(&v8, 0, sizeof(v8));
  v2 = *(this + 1);
  *&m.a = *this;
  *&m.c = v2;
  *&m.tx = *(this + 2);
  v3 = &v8;
  CATransform3DMakeAffineTransform(&v8, &m);
  v4 = 0;
  v10 = 0u;
  memset(&m, 0, sizeof(m));
  do
  {
    v6 = *&v3->m11;
    v5 = *&v3->m13;
    v3 = (v3 + 32);
    *(&m.a + v4) = vcvt_hight_f32_f64(vcvt_f32_f64(v6), v5);
    v4 += 16;
  }

  while (v4 != 64);
  return m.a;
}

uint64_t anonymous namespace::AnimatingStroke::strokeBufferBytesAtIndex(_anonymous_namespace_::AnimatingStroke *this, uint64_t a2)
{
  {
    v4 = *(this + 6);
    if (!v4)
    {
      v4 = *(this + 4);
    }

    v5 = *v4;
    v6 = 36;
  }

  else
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *this;
    }

    v5 = *v7;
    v6 = 24;
  }

  return v5 + a2 * v6;
}

uint64_t anonymous namespace::RendererFramebuffer::RendererFramebuffer(uint64_t a1, void *a2, void *a3, char a4, double a5, double a6)
{
  v11 = a3;
  *a1 = 0;
  *(a1 + 8) = 0;
  v12 = [[PKMetalFramebuffer alloc] initWithSize:a2 pixelFormat:v11 device:a4 memoryless:0 backedByIOSurface:1 sampleCount:1 purgeable:a5, a6];
  v13 = *a1;
  *a1 = v12;

  *(a1 + 8) = 0;
  return a1;
}

float anonymous namespace::addCircleToVertices(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  _S16 = a17;
  v18 = a3 + (a7 - a5) * a9;
  v19 = a3 + (-a5 - a7) * a9;
  v20 = a4 + (-a6 - a8) * a9;
  v21 = a3 + (a5 + a7) * a9;
  v22 = a4 + (a6 + a8) * a9;
  v23 = a5 - a7;
  v24 = v18;
  *&v18 = a4 + (a8 - a6) * a9;
  _S20 = a9;
  __asm { FCVT            H20, S20 }

  v30 = *a1;
  v31 = a2 + 24 * *a1;
  *v31 = v24;
  *(v31 + 4) = LODWORD(v18);
  *(v31 + 8) = -*&_S20;
  v32 = a6 - a8;
  _S4 = a10;
  __asm
  {
    FCVT            H4, S4
    FCVT            H5, S16
  }

  *(v31 + 10) = -*&_S20;
  *(v31 + 12) = LOWORD(_S20);
  *(v31 + 14) = LOWORD(_S4);
  *(v31 + 16) = _H5;
  *(v31 + 18) = 1006632960;
  v35 = v19;
  v36 = v20;
  *(v31 + 24) = v35;
  *(v31 + 28) = v36;
  *(v31 + 32) = -*&_S20;
  *(v31 + 34) = LOWORD(_S20);
  *(v31 + 36) = LOWORD(_S20);
  v37 = v32 * a9;
  v38 = a3 + v23 * a9;
  *(v31 + 38) = LOWORD(_S4);
  *(v31 + 40) = _H5;
  *(v31 + 42) = 1006632960;
  *&v23 = v21;
  v39 = v22;
  *(v31 + 48) = LODWORD(v23);
  *(v31 + 52) = v39;
  *(v31 + 56) = LOWORD(_S20);
  *(v31 + 58) = -*&_S20;
  *(v31 + 60) = LOWORD(_S20);
  *(v31 + 62) = LOWORD(_S4);
  *(v31 + 64) = _H5;
  *(v31 + 66) = 1006632960;
  result = v38;
  *a1 = v30 + 4;
  v41 = a4 + v37;
  *(v31 + 72) = result;
  *(v31 + 76) = v41;
  *(v31 + 80) = LOWORD(_S20);
  *(v31 + 82) = LOWORD(_S20);
  *(v31 + 84) = LOWORD(_S20);
  *(v31 + 86) = LOWORD(_S4);
  *(v31 + 88) = _H5;
  *(v31 + 90) = 1006632960;
  return result;
}

void sub_1C7EBBA68(_Unwind_Exception *a1)
{
  if (!v4)
  {
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t anonymous namespace::AnimatingStroke::isSDFPenStroke(_anonymous_namespace_::AnimatingStroke *this)
{
  v1 = [(_anonymous_namespace_::AnimatingStroke *)this ink];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 _isFountainPenInkV2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1C7EC017C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);

  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  result = *(a2 + 112);
  v6 = *(a2 + 128);
  v7 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v7;
  *(a1 + 112) = result;
  *(a1 + 128) = v6;
  return result;
}

__n128 __Block_byref_object_copy__109(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__int16 anonymous namespace::metalParticleStrokePointFromStrokePoint@<H0>(_anonymous_namespace_ *this@<X0>, const _PKStrokePoint *a2@<X1>, int a3@<W2>)
{
  *this = vcvt_f32_f64(a2->location);
  *(this + 10) = 0;
  azimuth = a2->azimuth;
  v7 = fmod(azimuth, 6.28318531);
  if (azimuth <= 6.28318531 && azimuth >= 0.0)
  {
    v7 = azimuth;
  }

  if (v7 < 0.0)
  {
    v7 = v7 + 6.28318531;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  v9 = 24;
  if (a3)
  {
    v9 = 80;
  }

  _D1 = *(&a2->timestamp + v9);
  __asm { FCVT            H1, D1 }

  *(this + 11) = _D1;
  _D2 = a2->edgeWidth;
  *&_D1 = a2->aspectRatio;
  __asm { FCVT            H2, D2 }

  *(this + 12) = LOWORD(_D2);
  v15 = v7;
  *(this + 3) = v15;
  *(this + 4) = _D1;
  _D0 = a2->opacity;
  __asm { FCVT            H0, D0 }

  if (!_ZF)
  {
    _H0 = COERCE_UNSIGNED_INT(1.0);
  }

  *(this + 13) = _H0;
  _D0 = a2->threshold;
  __asm { FCVT            H0, D0 }

  *(this + 14) = result;
  return result;
}

void PKBSplineFilter::copyPointsFromStroke(PKBSplineFilter *a1, void *a2, PKInk *a3, uint64_t *a4)
{
  v7 = a2;
  PKBSplineFilter::configureForInk(a1, a3);
  v8 = v7;
  v24 = &unk_1F4769330;
  v25 = v8;
  std::vector<_PKStrokePoint>::resize(a1 + 6, 0);
  PKStrokeInputProvider::copyUpdatedRangeFromIndex(&v24, 0, a1 + 6);
  v9 = *(a1 + 7) - *(a1 + 6);
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 5);
  *(a1 + 9) = v10;
  std::vector<_PKStrokePoint>::resize(a1 + 10, v10);
  memcpy(*(a1 + 10), *(a1 + 6), v9);
  if (v9 < 97)
  {
    goto LABEL_19;
  }

  v11 = v10 - 1;
  v12 = *a4;
  v13 = a4[1];
  v14 = (v13 - *a4) >> 2;
  if (v11 <= v14)
  {
    if (v11 >= v14)
    {
      goto LABEL_16;
    }

    v20 = v12 + 4 * v11;
  }

  else
  {
    v15 = v11 - v14;
    v16 = a4[2];
    if (v15 > (v16 - v13) >> 2)
    {
      if (!(v11 >> 62))
      {
        v17 = v16 - v12;
        v18 = v17 >> 1;
        if (v17 >> 1 <= v11)
        {
          v18 = v11;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (!(v19 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    bzero(a4[1], 4 * v15);
    v20 = v13 + 4 * v15;
  }

  a4[1] = v20;
LABEL_16:
  PKBSplineFilter::calculateVStartAndVEnd(a1, &v23, &v22);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      *(*a4 + 4 * i) = PKBSplineFilter::calculateStepsForSegment(a1, i, &v23, &v22);
    }
  }

LABEL_19:
}

__n128 __Block_byref_object_copy__125(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__126(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1C7EC3F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_1C7EC42A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  std::unique_ptr<PKBSplineFilter>::reset[abi:ne200100]((v14 - 112), 0);

  _Unwind_Resume(a1);
}

void sub_1C7EC5A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(v13 - 128);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(v13 - 112);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::unique_ptr<PKBSplineFilter>::reset[abi:ne200100]((v13 - 104), 0);

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<PKBSplineFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    *v2 = &unk_1F47693D8;
    v3 = *(v2 + 80);
    if (v3)
    {
      *(v2 + 88) = v3;
      operator delete(v3);
    }

    *v2 = &unk_1F4769430;
    v4 = *(v2 + 48);
    if (v4)
    {
      *(v2 + 56) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1CCA6ECB0);
  }

  return result;
}

uint64_t *std::unique_ptr<PKMetalInputProvider>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1CCA6ECB0);
  }

  return result;
}

uint64_t PKMetalInputProvider::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN20PKMetalInputProvider25copyUpdatedRangeFromIndexEmPNSt3__16vectorI14_PKStrokePointNS0_9allocatorIS2_EEEE_block_invoke;
  v5[3] = &__block_descriptor_48_e47____PKStrokePoint_d_CGPoint_dd_ddddddddd_16__0q8l;
  v5[4] = a3;
  v5[5] = a2;
  return [v3 fetchFilteredPointsFromIndex:a2 accessBlock:v5];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_pointer<std::vector<anonymous namespace::StrokeVertex> *,std::shared_ptr<std::vector<anonymous namespace::StrokeVertex>>::__shared_ptr_default_delete<std::vector<anonymous namespace::StrokeVertex>,std::vector<anonymous namespace::StrokeVertex>>,std::allocator<std::vector<anonymous namespace::StrokeVertex>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t std::__shared_ptr_pointer<std::vector<anonymous namespace::StrokeVertex> *,std::shared_ptr<std::vector<anonymous namespace::StrokeVertex>>::__shared_ptr_default_delete<std::vector<anonymous namespace::StrokeVertex>,std::vector<anonymous namespace::StrokeVertex>>,std::allocator<std::vector<anonymous namespace::StrokeVertex>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void **std::default_delete<std::vector<anonymous namespace::StrokeVertex>>::operator()[abi:ne200100](void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1CCA6ECB0);
  }

  return result;
}

void sub_1C7EC60E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<PKMetalSDFStrokeVertex> *,std::shared_ptr<std::vector<PKMetalSDFStrokeVertex>>::__shared_ptr_default_delete<std::vector<PKMetalSDFStrokeVertex>,std::vector<PKMetalSDFStrokeVertex>>,std::allocator<std::vector<PKMetalSDFStrokeVertex>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t std::__shared_ptr_pointer<std::vector<PKMetalSDFStrokeVertex> *,std::shared_ptr<std::vector<PKMetalSDFStrokeVertex>>::__shared_ptr_default_delete<std::vector<PKMetalSDFStrokeVertex>,std::vector<PKMetalSDFStrokeVertex>>,std::allocator<std::vector<PKMetalSDFStrokeVertex>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t drawing::Ink::Ink(uint64_t this)
{
  *this = &unk_1F4769FC0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 112) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 72) = 0;
  return this;
}

{
  *this = &unk_1F4769FC0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 112) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 72) = 0;
  return this;
}

void drawing::Ink::~Ink(drawing::Ink *this)
{
  *this = &unk_1F4769FC0;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](this + 88, v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](this + 56, v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  PB::Base::~Base(this);
}

{
  drawing::Ink::~Ink(this);

  JUMPOUT(0x1CCA6ECB0);
}

drawing::Ink *drawing::Ink::Ink(drawing::Ink *this, const drawing::Ink *a2)
{
  *this = &unk_1F4769FC0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  v4 = *(a2 + 15);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v6 = *(this + 16);
    *(this + 15) = v4;
    *(this + 16) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *(this + 15) = v4;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if ((*(a2 + 112) & 8) != 0)
  {
    v7 = *(a2 + 12);
    *(this + 112) |= 8u;
    *(this + 12) = v7;
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  v8 = *(a2 + 112);
  if ((v8 & 4) != 0)
  {
    v12 = *(a2 + 8);
    *(this + 112) |= 4u;
    *(this + 8) = v12;
    v8 = *(a2 + 112);
    if ((v8 & 0x10) == 0)
    {
LABEL_19:
      if ((v8 & 2) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a2 + 112) & 0x10) == 0)
  {
    goto LABEL_19;
  }

  v13 = *(a2 + 13);
  *(this + 112) |= 0x10u;
  *(this + 13) = v13;
  if ((*(a2 + 112) & 2) != 0)
  {
LABEL_20:
    v9 = *(a2 + 5);
    *(this + 112) |= 2u;
    *(this + 5) = v9;
  }

LABEL_21:
  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 112))
  {
    v10 = *(a2 + 1);
    *(this + 112) |= 1u;
    *(this + 1) = v10;
  }

  return this;
}

drawing *drawing::Ink::operator=(drawing *a1, const drawing::Ink *a2)
{
  if (a1 != a2)
  {
    drawing::Ink::Ink(v5, a2);
    drawing::swap(a1, v5, v3);
    drawing::Ink::~Ink(v5);
  }

  return a1;
}

double drawing::swap(drawing *this, drawing::Ink *a2, drawing::Ink *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  v9 = *(a2 + 8);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = v9;
  *(a2 + 7) = v7;
  v10 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  *(a2 + 8) = v8;
  v13 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v13;
  v14 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v14;
  v15 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v15;
  v16 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v16;
  v17 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v17;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

uint64_t drawing::Ink::Ink(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  v4 = (a1 + 48);
  *(a1 + 56) = 0;
  v5 = (a1 + 56);
  *(a1 + 72) = 0;
  v6 = (a1 + 72);
  *(a1 + 88) = 0;
  v7 = a1 + 88;
  *a1 = &unk_1F4769FC0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 80) = 0;
  v8 = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v9 = *(a1 + 128);
  *(a1 + 120) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  v10 = *(a2 + 16);
  *(a2 + 16) = 0;
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 56) = 0;
  v13 = *v5;
  *v5 = v12;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5, v13);
  }

  v15 = *(a2 + 88);
  v14 = *(a2 + 96);
  *(a2 + 88) = 0;
  v16 = *(a1 + 88);
  *(a1 + 88) = v15;
  *(a1 + 96) = v14;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7, v16);
  }

  v17 = *(a2 + 72);
  *(a2 + 72) = 0;
  v18 = *v6;
  *v6 = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a2 + 80);
  *(a2 + 80) = 0;
  v20 = *(a1 + 80);
  *(a1 + 80) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 40) = *(a2 + 40);
  v21 = *(a2 + 32);
  *(a2 + 32) = 0;
  v22 = *(a1 + 32);
  *(a1 + 32) = v21;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(a2 + 24);
  *(a2 + 24) = 0;
  v24 = *(a1 + 24);
  *(a1 + 24) = v23;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(a2 + 48);
  *(a2 + 48) = 0;
  v26 = *v4;
  *v4 = v25;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

drawing *drawing::Ink::operator=(drawing *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    drawing::Ink::Ink(v5, a2);
    drawing::swap(a1, v5, v3);
    drawing::Ink::~Ink(v5);
  }

  return a1;
}

uint64_t drawing::Ink::formatText(drawing::Ink *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 112))
  {
    PB::TextFormatter::format(a2, "azimuth", *(this + 1));
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "color");
  }

  v6 = *(this + 3);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "hdrAddColor");
  }

  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "hdrColor");
  }

  if ((*(this + 112) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "hdrHeadroom", *(this + 5));
  }

  v8 = *(this + 6);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "hdrMultiplyColor");
  }

  if (*(this + 7))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 112) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "requiredContentVersion");
  }

  v9 = *(this + 9);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "sixChannelAddColor");
  }

  v10 = *(this + 10);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "sixChannelMultiplyColor");
  }

  if (*(this + 11))
  {
    PB::TextFormatter::format();
  }

  v11 = *(this + 112);
  if ((v11 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "version");
    v11 = *(this + 112);
  }

  if ((v11 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "weight", *(this + 13));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::Ink::readFrom(drawing::Ink *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      do
      {
        if (!v19)
        {
          v4 = 1;
          *(a2 + 24) = 1;
          goto LABEL_85;
        }

        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
      }

      while (!v14);
LABEL_17:
      v22 = 0;
      LODWORD(v23) = 0;
LABEL_18:
      v24 = *(this + 15);
      if (!v24)
      {
        operator new();
      }

      if ((PKProtobufUnknownFields::add(v24, v23, v22, a2) & 1) == 0)
      {
        v59 = 0;
        return v59 & 1;
      }

      goto LABEL_81;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_22:
    v22 = v10 & 7;
    if (v22 == 4)
    {
      break;
    }

    v23 = v10 >> 3;
    switch((v10 >> 3))
    {
      case 1u:
        operator new();
      case 2u:
        operator new();
      case 3u:
        *(this + 112) |= 8u;
        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        v28 = *a2;
        if (v27 <= 0xFFFFFFFFFFFFFFF5 && v27 + 10 <= v26)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = (v28 + v27);
          v33 = v27 + 1;
          do
          {
            *(a2 + 1) = v33;
            v34 = *v32++;
            v31 |= (v34 & 0x7F) << v29;
            if ((v34 & 0x80) == 0)
            {
              goto LABEL_77;
            }

            v29 += 7;
            ++v33;
            v14 = v30++ > 8;
          }

          while (!v14);
LABEL_62:
          v31 = 0;
          goto LABEL_77;
        }

        v46 = 0;
        v47 = 0;
        v31 = 0;
        v48 = (v28 + v27);
        v18 = v26 >= v27;
        v49 = v26 - v27;
        if (!v18)
        {
          v49 = 0;
        }

        v50 = v27 + 1;
        while (2)
        {
          if (v49)
          {
            v51 = *v48;
            *(a2 + 1) = v50;
            v31 |= (v51 & 0x7F) << v46;
            if (v51 < 0)
            {
              v46 += 7;
              ++v48;
              --v49;
              ++v50;
              v14 = v47++ > 8;
              if (v14)
              {
                goto LABEL_62;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              v31 = 0;
            }
          }

          else
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_77:
        *(this + 12) = v31;
        goto LABEL_81;
      case 4u:
        operator new();
      case 5u:
        operator new();
      case 6u:
        operator new();
      case 7u:
        *(this + 112) |= 4u;
        v37 = *(a2 + 1);
        v36 = *(a2 + 2);
        v38 = *a2;
        if (v37 <= 0xFFFFFFFFFFFFFFF5 && v37 + 10 <= v36)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = (v38 + v37);
          v43 = v37 + 1;
          do
          {
            *(a2 + 1) = v43;
            v44 = *v42++;
            v41 |= (v44 & 0x7F) << v39;
            if ((v44 & 0x80) == 0)
            {
              goto LABEL_80;
            }

            v39 += 7;
            ++v43;
            v14 = v40++ > 8;
          }

          while (!v14);
LABEL_70:
          v41 = 0;
          goto LABEL_80;
        }

        v52 = 0;
        v53 = 0;
        v41 = 0;
        v54 = (v38 + v37);
        v18 = v36 >= v37;
        v55 = v36 - v37;
        if (!v18)
        {
          v55 = 0;
        }

        v56 = v37 + 1;
        break;
      case 8u:
        *(this + 112) |= 0x10u;
        v35 = *(a2 + 1);
        if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 13) = *(*a2 + v35);
        goto LABEL_72;
      case 9u:
        *(this + 112) |= 2u;
        v45 = *(a2 + 1);
        if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 5) = *(*a2 + v45);
        goto LABEL_72;
      case 0xAu:
        operator new();
      case 0xBu:
        operator new();
      case 0xCu:
        operator new();
      case 0xDu:
        *(this + 112) |= 1u;
        v25 = *(a2 + 1);
        if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
        {
LABEL_54:
          *(a2 + 24) = 1;
        }

        else
        {
          *(this + 1) = *(*a2 + v25);
LABEL_72:
          *(a2 + 1) += 8;
        }

        goto LABEL_81;
      default:
        goto LABEL_18;
    }

    while (1)
    {
      if (!v55)
      {
        v41 = 0;
        *(a2 + 24) = 1;
        goto LABEL_80;
      }

      v57 = *v54;
      *(a2 + 1) = v56;
      v41 |= (v57 & 0x7F) << v52;
      if ((v57 & 0x80) == 0)
      {
        break;
      }

      v52 += 7;
      ++v54;
      --v55;
      ++v56;
      v14 = v53++ > 8;
      if (v14)
      {
        goto LABEL_70;
      }
    }

    if (*(a2 + 24))
    {
      v41 = 0;
    }

LABEL_80:
    *(this + 8) = v41;
LABEL_81:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
    if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
    {
      goto LABEL_85;
    }
  }

  v4 = 0;
LABEL_85:
  v59 = v4 ^ 1;
  return v59 & 1;
}

const void ***drawing::Ink::writeTo(drawing::Ink *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(this + 7))
  {
    PB::Writer::write();
  }

  if ((*(this + 112) & 8) != 0)
  {
    PB::Writer::writeVarInt(a2);
  }

  if (*(this + 11))
  {
    PB::Writer::write();
  }

  v5 = *(this + 9);
  if (v5)
  {
    PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(this + 112);
  if ((v7 & 4) != 0)
  {
    PB::Writer::writeVarInt(a2);
    v7 = *(this + 112);
    if ((v7 & 0x10) == 0)
    {
LABEL_15:
      if ((v7 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 112) & 0x10) == 0)
  {
    goto LABEL_15;
  }

  PB::Writer::write(a2, *(this + 13));
  if ((*(this + 112) & 2) != 0)
  {
LABEL_16:
    PB::Writer::write(a2, *(this + 5));
  }

LABEL_17:
  v8 = *(this + 4);
  if (v8)
  {
    PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(this + 6);
  if (v10)
  {
    PB::Writer::writeSubmessage(a2, v10);
  }

  if (*(this + 112))
  {
    PB::Writer::write(a2, *(this + 1));
  }

  result = *(this + 15);
  if (result)
  {

    return PKProtobufUnknownFields::writeTo(result, a2);
  }

  return result;
}

BOOL drawing::Ink::operator==(uint64_t a1, uint64_t a2)
{
  result = PKProtobufUnknownFieldsCompare((a1 + 120), (a2 + 120));
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6 || !drawing::Color::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    v11 = *(v8 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v8 + 8);
    }

    if (v10 != v11)
    {
      return 0;
    }

    v13 = v9 >= 0 ? *(a1 + 56) : *v7;
    v14 = v12 >= 0 ? *(a2 + 56) : *v8;
    if (memcmp(v13, v14, v10))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v15 = *(a1 + 112);
  v16 = *(a2 + 112);
  if ((v15 & 8) != 0)
  {
    if ((*(a2 + 112) & 8) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((*(a2 + 112) & 8) != 0)
  {
    return 0;
  }

  v17 = *(a1 + 88);
  v18 = *(a2 + 88);
  if (v17)
  {
    if (!v18 || !std::equal_to<std::string>::operator()[abi:ne200100](v17, v18))
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19)
  {
    if (!v20 || !drawing::Color::operator==(v19, v20))
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(a1 + 80);
  v22 = *(a2 + 80);
  if (v21)
  {
    if (!v22 || !drawing::Color::operator==(v21, v22))
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if ((v15 & 4) != 0)
  {
    if ((v16 & 4) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v16 & 4) != 0)
  {
    return 0;
  }

  if ((v15 & 0x10) != 0)
  {
    if ((v16 & 0x10) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v16 & 0x10) != 0)
  {
    return 0;
  }

  if ((v15 & 2) != 0)
  {
    if ((v16 & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v16 & 2) != 0)
  {
    return 0;
  }

  v23 = *(a1 + 32);
  v24 = *(a2 + 32);
  if (v23)
  {
    if (!v24 || !drawing::Color::operator==(v23, v24))
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 24);
  v26 = *(a2 + 24);
  if (v25)
  {
    if (!v26 || !drawing::Color::operator==(v25, v26))
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = *(a1 + 48);
  v28 = *(a2 + 48);
  if (!v27)
  {
    if (!v28)
    {
      goto LABEL_76;
    }

    return 0;
  }

  if (!v28 || !drawing::Color::operator==(v27, v28))
  {
    return 0;
  }

LABEL_76:
  result = (v16 & 1) == 0;
  if (v15)
  {
    return (v16 & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

unint64_t drawing::Ink::hash_value(drawing::Ink *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v23 = drawing::Color::hash_value(v2);
  }

  else
  {
    v23 = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    v22 = std::__string_hash<char>::operator()[abi:ne200100](&v24, v3);
  }

  else
  {
    v22 = 0;
  }

  if ((*(this + 112) & 8) != 0)
  {
    v21 = *(this + 12);
  }

  else
  {
    v21 = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](&v25, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 9);
  if (v6)
  {
    v7 = drawing::Color::hash_value(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 10);
  if (v8)
  {
    v9 = drawing::Color::hash_value(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 112);
  if ((v10 & 4) != 0)
  {
    v11 = *(this + 8);
    if ((*(this + 112) & 0x10) != 0)
    {
LABEL_21:
      if (*(this + 13) == 0.0)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(this + 13);
      }

      if ((*(this + 112) & 2) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v11 = 0;
    if ((*(this + 112) & 0x10) != 0)
    {
      goto LABEL_21;
    }
  }

  v12 = 0;
  if ((*(this + 112) & 2) != 0)
  {
LABEL_25:
    if (*(this + 5) == 0.0)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(this + 5);
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = 0;
LABEL_31:
  v14 = *(this + 4);
  if (v14)
  {
    v15 = drawing::Color::hash_value(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 3);
  if (v16)
  {
    v17 = drawing::Color::hash_value(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(this + 6);
  if (v18)
  {
    v18 = drawing::Color::hash_value(v18);
  }

  if (v10)
  {
    v19 = *(this + 1);
    if (v19 == 0.0)
    {
      v19 = 0.0;
    }
  }

  else
  {
    v19 = 0.0;
  }

  return v22 ^ v23 ^ v21 ^ v5 ^ v7 ^ v9 ^ v11 ^ v12 ^ v13 ^ v15 ^ v17 ^ v18 ^ *&v19;
}

uint64_t drawing::Ink::makeColor(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Ink::makeSixChannelAddColor(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Ink::makeSixChannelMultiplyColor(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Ink::makeHdrColor(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Ink::makeHdrAddColor(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Ink::makeHdrMultiplyColor(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t drawingV1::Rectangle::Rectangle(uint64_t this)
{
  *this = &unk_1F476A010;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F476A010;
  *(this + 24) = 0;
  return this;
}

void drawingV1::Rectangle::~Rectangle(drawingV1::Rectangle *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float drawingV1::Rectangle::Rectangle(drawingV1::Rectangle *this, const drawingV1::Rectangle *a2)
{
  *this = &unk_1F476A010;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 3);
    v3 = 2;
    *(this + 24) = 2;
    *(this + 3) = result;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 24) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

  result = *(a2 + 5);
  v3 |= 8u;
  *(this + 24) = v3;
  *(this + 5) = result;
  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t drawingV1::Rectangle::operator=(uint64_t a1, const drawingV1::Rectangle *a2)
{
  if (a1 != a2)
  {
    drawingV1::Rectangle::Rectangle(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float drawingV1::swap(drawingV1 *this, drawingV1::Rectangle *a2, drawingV1::Rectangle *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float drawingV1::Rectangle::Rectangle(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F476A010;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F476A010;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t drawingV1::Rectangle::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F476A010;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t drawingV1::Rectangle::formatText(drawingV1::Rectangle *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "height", *(this + 2));
    v5 = *(this + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "originX", *(this + 3));
  v5 = *(this + 24);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "originY", *(this + 4));
  if ((*(this + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "width", *(this + 5));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawingV1::Rectangle::readFrom(drawingV1::Rectangle *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t drawingV1::Rectangle::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 12));
    v4 = *(v3 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20));
      if ((*(v3 + 24) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 24);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL drawingV1::Rectangle::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 8) != 0)
  {
    if ((*(a2 + 24) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t drawingV1::Rectangle::hash_value(drawingV1::Rectangle *this)
{
  if ((*(this + 24) & 2) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 24) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 3);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 24) & 8) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

void sub_1C7ECBD0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1C7ECDAA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 96));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSDisplayLayoutMonitorConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED6A51A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    FrontBoardServicesLibrary();
  }
}

void FrontBoardServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E82DA508;
    v3 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (FrontBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFBSDisplayLayoutMonitorClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  result = objc_getClass("FBSDisplayLayoutMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED6A51B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getFBDisplayManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getFBDisplayManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6A51C0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FrontBoardLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82DA520;
    v6 = 0;
    qword_1ED6A51C0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6A51C0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FBDisplayManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED6A51B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A51C0 = result;
  return result;
}

void sub_1C7ED1120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIAUtilityClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6A51F0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __InputAnalyticsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82DA7D0;
    v6 = 0;
    qword_1ED6A51F0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6A51F0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("IAUtility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED6A51E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A51F0 = result;
  return result;
}

void sub_1C7ED87C4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C7ED8B28(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1C7ED8C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_1C7EDA3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DKUNilsEquivalentEqualObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

BOOL DKUNilsEquivalentEqualHashes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v7 = [v3 hash];
      v6 = v7 == [v5 hash];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t drawing::Rectangle::Rectangle(uint64_t this)
{
  *this = &unk_1F476A460;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F476A460;
  *(this + 24) = 0;
  return this;
}

void drawing::Rectangle::~Rectangle(drawing::Rectangle *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float drawing::Rectangle::Rectangle(drawing::Rectangle *this, const drawing::Rectangle *a2)
{
  *this = &unk_1F476A460;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 3);
    v3 = 2;
    *(this + 24) = 2;
    *(this + 3) = result;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 24) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

  result = *(a2 + 5);
  v3 |= 8u;
  *(this + 24) = v3;
  *(this + 5) = result;
  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t drawing::Rectangle::operator=(uint64_t a1, const drawing::Rectangle *a2)
{
  if (a1 != a2)
  {
    drawing::Rectangle::Rectangle(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float drawing::swap(drawing *this, drawing::Rectangle *a2, drawing::Rectangle *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float drawing::Rectangle::Rectangle(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F476A460;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F476A460;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t drawing::Rectangle::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F476A460;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t drawing::Rectangle::formatText(drawing::Rectangle *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "height", *(this + 2));
    v5 = *(this + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "originX", *(this + 3));
  v5 = *(this + 24);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "originY", *(this + 4));
  if ((*(this + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "width", *(this + 5));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::Rectangle::readFrom(drawing::Rectangle *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t drawing::Rectangle::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 12));
    v4 = *(v3 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20));
      if ((*(v3 + 24) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 24);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL drawing::Rectangle::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 8) != 0)
  {
    if ((*(a2 + 24) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t drawing::Rectangle::hash_value(drawing::Rectangle *this)
{
  if ((*(this + 24) & 2) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 24) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 3);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 24) & 8) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

void sub_1C7EE155C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PKDisplayColorForTool(void *a1)
{
  v1 = a1;
  v2 = [v1 _configuration];
  v3 = [v2 supportsColor];

  if (v3)
  {
    v4 = [v1 _color];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1C7EE5D44(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t drawingV1::Stroke::Stroke(uint64_t this)
{
  *this = &unk_1F476A4D0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 92) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 40) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  return this;
}

{
  *this = &unk_1F476A4D0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 92) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 40) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  return this;
}

void drawingV1::Stroke::~Stroke(drawingV1::Stroke *this)
{
  *this = &unk_1F476A4D0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 7, 0);
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 5, 0);
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 3, 0);
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

{
  drawingV1::Stroke::~Stroke(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t drawingV1::Stroke::Stroke(uint64_t this, const drawingV1::Stroke *a2)
{
  *this = &unk_1F476A4D0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 92) = 0;
  *(this + 48) = 0;
  *(this + 80) = 0;
  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  v2 = *(a2 + 92);
  if (v2)
  {
    v3 = *(a2 + 2);
    *(this + 92) |= 1u;
    *(this + 16) = v3;
    v2 = *(a2 + 92);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 4);
    *(this + 92) |= 2u;
    *(this + 32) = v4;
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if ((*(a2 + 92) & 0x10) != 0)
  {
    v5 = *(a2 + 89);
    *(this + 92) |= 0x10u;
    *(this + 89) = v5;
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  v6 = *(a2 + 92);
  if ((v6 & 4) != 0)
  {
    v7 = *(a2 + 8);
    *(this + 92) |= 4u;
    *(this + 64) = v7;
    v6 = *(a2 + 92);
  }

  if ((v6 & 8) != 0)
  {
    v8 = *(a2 + 88);
    *(this + 92) |= 8u;
    *(this + 88) = v8;
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  return this;
}

drawingV1 *drawingV1::Stroke::operator=(drawingV1 *a1, const drawingV1::Stroke *a2)
{
  if (a1 != a2)
  {
    drawingV1::Stroke::Stroke(v5, a2);
    drawingV1::swap(a1, v5, v3);
    drawingV1::Stroke::~Stroke(v5);
  }

  return a1;
}

double drawingV1::swap(drawingV1 *this, drawingV1::Stroke *a2, drawingV1::Stroke *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v8 = *(this + 1);
  v7 = *(this + 2);
  v9 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v9;
  *(a2 + 1) = v8;
  *(a2 + 2) = v7;
  LOBYTE(v7) = *(this + 89);
  *(this + 89) = *(a2 + 89);
  *(a2 + 89) = v7;
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  LOBYTE(v10) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  v11 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(this + 4);
  v13 = *(this + 5);
  v14 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v14;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  *(a2 + 88) = v10;
  *(a2 + 4) = v12;
  *(a2 + 5) = v13;
  return result;
}

uint64_t drawingV1::Stroke::Stroke(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  *a1 = &unk_1F476A4D0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 80);
  *(a2 + 80) = 0;
  v9 = *(a1 + 80);
  *(a1 + 80) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v10);
  v11 = *(a2 + 8);
  *(a2 + 8) = 0;
  v12 = *(a1 + 8);
  *(a1 + 8) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(a1 + 89) = *(a2 + 89);
  v13 = *(a2 + 72);
  *(a2 + 72) = 0;
  v14 = *(a1 + 72);
  *(a1 + 72) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 88) = *(a2 + 88);
  v15 = *(a2 + 56);
  *(a2 + 56) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 56), v15);
  v16 = *(a2 + 40);
  *(a2 + 40) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v5, v16);
  return a1;
}

drawingV1 *drawingV1::Stroke::operator=(drawingV1 *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    drawingV1::Stroke::Stroke(v5, a2);
    drawingV1::swap(a1, v5, v3);
    drawingV1::Stroke::~Stroke(v5);
  }

  return a1;
}

uint64_t drawingV1::Stroke::formatText(drawingV1::Stroke *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "bounds");
  }

  v6 = *(this + 92);
  if ((v6 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "createdWithFinger");
    v6 = *(this + 92);
    if ((v6 & 0x10) == 0)
    {
LABEL_5:
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 92) & 0x10) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "hidden");
  if (*(this + 92))
  {
LABEL_6:
    PB::TextFormatter::format(a2, "inkIndex");
  }

LABEL_7:
  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 92) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "pointsCount");
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 6);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "strokeID");
  }

  if (*(this + 7))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 92) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  }

  v8 = *(this + 9);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "transform");
  }

  v9 = *(this + 10);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "version");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawingV1::Stroke::readFrom(drawingV1::Stroke *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 8)
    {
      if (v22 > 11)
      {
        switch(v22)
        {
          case 0xC:
            *(this + 92) |= 8u;
            v46 = *(a2 + 1);
            if (v46 >= *(a2 + 2))
            {
              v49 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v47 = v46 + 1;
              v48 = *(*a2 + v46);
              *(a2 + 1) = v47;
              v49 = v48 != 0;
            }

            *(this + 88) = v49;
            goto LABEL_92;
          case 0xD:
            operator new();
          case 0xE:
            operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 9:
            *(this + 92) |= 0x10u;
            v33 = *(a2 + 1);
            if (v33 >= *(a2 + 2))
            {
              v36 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v34 = v33 + 1;
              v35 = *(*a2 + v33);
              *(a2 + 1) = v34;
              v36 = v35 != 0;
            }

            *(this + 89) = v36;
            goto LABEL_92;
          case 0xA:
            operator new();
          case 0xB:
            *(this + 92) |= 4u;
            v32 = *(a2 + 1);
            if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(a2 + 2))
            {
              *(this + 8) = *(*a2 + v32);
              *(a2 + 1) += 8;
            }

            else
            {
              *(a2 + 24) = 1;
            }

            goto LABEL_92;
        }
      }
    }

    else if (v22 > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 92) |= 2u;
          v38 = *(a2 + 1);
          v37 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v37)
          {
            v56 = 0;
            v57 = 0;
            v42 = 0;
            v58 = (v39 + v38);
            v18 = v37 >= v38;
            v59 = v37 - v38;
            if (!v18)
            {
              v59 = 0;
            }

            v60 = v38 + 1;
            while (1)
            {
              if (!v59)
              {
                v42 = 0;
                *(a2 + 24) = 1;
                goto LABEL_91;
              }

              v61 = *v58;
              *(a2 + 1) = v60;
              v42 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              ++v58;
              --v59;
              ++v60;
              v14 = v57++ > 8;
              if (v14)
              {
LABEL_78:
                v42 = 0;
                goto LABEL_91;
              }
            }

            if (*(a2 + 24))
            {
              v42 = 0;
            }
          }

          else
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = (v39 + v38);
            v44 = v38 + 1;
            while (1)
            {
              *(a2 + 1) = v44;
              v45 = *v43++;
              v42 |= (v45 & 0x7F) << v40;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              ++v44;
              v14 = v41++ > 8;
              if (v14)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_91:
          *(this + 4) = v42;
          goto LABEL_92;
        case 5:
          operator new();
        case 6:
          operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          operator new();
        case 2:
          operator new();
        case 3:
          *(this + 92) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v50 = 0;
            v51 = 0;
            v28 = 0;
            v52 = (v25 + v24);
            v18 = v23 >= v24;
            v53 = v23 - v24;
            if (!v18)
            {
              v53 = 0;
            }

            v54 = v24 + 1;
            while (1)
            {
              if (!v53)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_88;
              }

              v55 = *v52;
              *(a2 + 1) = v54;
              v28 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              ++v52;
              --v53;
              ++v54;
              v14 = v51++ > 8;
              if (v14)
              {
LABEL_70:
                v28 = 0;
                goto LABEL_88;
              }
            }

            if (*(a2 + 24))
            {
              v28 = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_88:
          *(this + 2) = v28;
          goto LABEL_92;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v63 = 0;
      return v63 & 1;
    }

LABEL_92:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v63 = v4 ^ 1;
  return v63 & 1;
}

uint64_t drawingV1::Stroke::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 80);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 92);
  if (v6)
  {
    this = PB::Writer::writeVarInt(a2);
    v6 = *(v3 + 92);
  }

  if ((v6 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 24);
  if (v7)
  {
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 8);
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  if ((*(v3 + 92) & 0x10) != 0)
  {
    this = PB::Writer::write(a2);
  }

  v9 = *(v3 + 72);
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 92);
  if ((v10 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 64));
    v10 = *(v3 + 92);
  }

  if ((v10 & 8) != 0)
  {
    this = PB::Writer::write(a2);
  }

  v11 = *(v3 + 56);
  if (v11)
  {
    this = PB::Writer::write(a2, v11);
  }

  v12 = *(v3 + 40);
  if (v12)
  {

    return PB::Writer::write(a2, v12);
  }

  return this;
}

BOOL drawingV1::Stroke::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4)
  {
    if (!v5 || !drawingV1::StrokeID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  if (v6)
  {
    if (!v7 || !drawingV1::StrokeID::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (*(a1 + 92))
  {
    if ((*(a2 + 92) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 92))
  {
    return 0;
  }

  if ((*(a1 + 92) & 2) != 0)
  {
    if ((*(a2 + 92) & 2) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 2) != 0)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!v8 || (PB::Data::operator==() & 1) == 0 && *(a1 + 24) | *(a2 + 24))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10 || !drawingV1::Rectangle::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 92);
  v12 = *(a2 + 92);
  if ((v11 & 0x10) != 0)
  {
    if ((*(a2 + 92) & 0x10) == 0 || *(a1 + 89) != *(a2 + 89))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x10) != 0)
  {
    return 0;
  }

  v13 = *(a1 + 72);
  v14 = *(a2 + 72);
  if (v13)
  {
    if (!v14 || !drawingV1::Transform::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((v11 & 4) != 0)
  {
    if ((v12 & 4) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v12 & 4) != 0)
  {
    return 0;
  }

  if ((v11 & 8) != 0)
  {
    if ((v12 & 8) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v12 & 8) != 0)
  {
    return 0;
  }

  v15 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (!v15)
    {
      goto LABEL_58;
    }

    return 0;
  }

  if (!v15 || (PB::Data::operator==() & 1) == 0 && *(a1 + 56) | *(a2 + 56))
  {
    return 0;
  }

LABEL_58:
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }

    if (PB::Data::operator==())
    {
      return 1;
    }

    if (*(a1 + 40))
    {
      return 0;
    }
  }

  return *(a2 + 40) == 0;
}

uint64_t drawingV1::Stroke::hash_value(drawingV1::Stroke *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    v25 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 32) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 32) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 32) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 32) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v25 = v4 ^ v3 ^ v5;
LABEL_11:
  v6 = *(this + 10);
  if (!v6)
  {
    v24 = 0;
    goto LABEL_21;
  }

  if ((*(v6 + 32) & 1) == 0)
  {
    v7 = 0;
    if ((*(v6 + 32) & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    v8 = 0;
    if ((*(v6 + 32) & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v7 = *(v6 + 8);
  if ((*(v6 + 32) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v8 = *(v6 + 16);
  if ((*(v6 + 32) & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v9 = *(v6 + 24);
LABEL_20:
  v24 = v8 ^ v7 ^ v9;
LABEL_21:
  if (*(this + 92))
  {
    v10 = *(this + 2);
    if ((*(this + 92) & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = 0;
    if ((*(this + 92) & 2) != 0)
    {
LABEL_23:
      v11 = *(this + 4);
      goto LABEL_26;
    }
  }

  v11 = 0;
LABEL_26:
  if (*(this + 3))
  {
    v12 = PBHashBytes();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 1);
  if (v13)
  {
    v14 = drawingV1::Rectangle::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 92);
  if ((v15 & 0x10) != 0)
  {
    v16 = *(this + 89);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 9);
  if (v17)
  {
    v18 = drawingV1::Transform::hash_value(v17);
    if ((v15 & 4) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    if (*(this + 8) == 0.0)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(this + 8);
    }

    if ((v15 & 8) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  v18 = 0;
  if ((*(this + 92) & 4) != 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v19 = 0;
  if ((v15 & 8) != 0)
  {
LABEL_38:
    v20 = *(this + 88);
    goto LABEL_45;
  }

LABEL_44:
  v20 = 0;
LABEL_45:
  if (*(this + 7))
  {
    v21 = PBHashBytes();
  }

  else
  {
    v21 = 0;
  }

  if (*(this + 5))
  {
    v22 = PBHashBytes();
  }

  else
  {
    v22 = 0;
  }

  return v24 ^ v25 ^ v10 ^ v11 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
}

uint64_t drawingV1::Stroke::makeStrokeID(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t drawingV1::Stroke::makeVersion(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t drawingV1::Stroke::makeBounds(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t drawingV1::Stroke::makeTransform(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

float PKCompressedStrokePoint::setTimestamp(PKCompressedStrokePoint *this, double a2, double a3)
{
  result = a2 - a3;
  this->var1 = result;
  return result;
}

float PKCompressedStrokePoint::setLocation(PKCompressedStrokePoint *this, CGPoint a2)
{
  result = a2.x;
  y = a2.y;
  this->var0.var0 = result;
  this->var0.var1 = y;
  return result;
}

float PKCompressedStrokePoint::setRadius(PKCompressedStrokePoint *this, double a2)
{
  result = a2;
  this->var2 = result;
  return result;
}

uint64_t PKCompressedStrokePoint::compressAspectRatio(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 1000.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  return v3;
}

PKCompressedStrokePoint *PKCompressedStrokePoint::setAspectRatio(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 1000.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  this->var3 = v3;
  return this;
}

uint64_t PKCompressedStrokePoint::compressEdgeWidth(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 10.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  return v3;
}

PKCompressedStrokePoint *PKCompressedStrokePoint::setEdgeWidth(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 10.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  this->var4 = v3;
  return this;
}

uint64_t PKCompressedStrokePoint::compressForce(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 1000.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  return v3;
}

PKCompressedStrokePoint *PKCompressedStrokePoint::setForce(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 1000.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  this->var5 = v3;
  return this;
}

uint64_t PKCompressedStrokePoint::compressAzimuth(PKCompressedStrokePoint *this, long double a2)
{
  v3 = fmod(a2, 6.28318531);
  v4 = 0.0;
  if (a2 <= 6.28318531 && a2 >= 0.0)
  {
    v3 = a2;
  }

  if (v3 < 0.0)
  {
    v3 = v3 + 6.28318531;
  }

  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v6 = v3 * 10430.2192;
  if (v6 >= 0.0)
  {
    v4 = v6;
    if (v6 > 65535.0)
    {
      v4 = 65535.0;
    }
  }

  return v4;
}

uint64_t PKCompressedStrokePoint::setAzimuth(PKCompressedStrokePoint *this, long double a2)
{
  result = PKCompressedStrokePoint::compressAzimuth(this, a2);
  this->var6 = result;
  return result;
}

uint64_t PKCompressedStrokePoint::compressAltitude(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 41720.8768;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  return v3;
}

PKCompressedStrokePoint *PKCompressedStrokePoint::setAltitude(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 41720.8768;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  this->var7 = v3;
  return this;
}

uint64_t PKCompressedStrokePoint::compressOpacity(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 32767.5;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  return v3;
}

PKCompressedStrokePoint *PKCompressedStrokePoint::setOpacity(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 32767.5;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  this->var8 = v3;
  return this;
}

float PKCompressedStrokePoint::setRadius2(PKCompressedStrokePoint *this, double a2)
{
  result = a2;
  this->var9 = result;
  return result;
}

uint64_t PKCompressedStrokePoint::compressThreshold(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 32767.5;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  return v3;
}

PKCompressedStrokePoint *PKCompressedStrokePoint::setThreshold(PKCompressedStrokePoint *this, double a2)
{
  v2 = a2 * 32767.5;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  this->var10 = v3;
  return this;
}

double PKCompressedStrokePointWithDefaultValues@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PKConvertToCompressedStrokePoint@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, unint64_t a3@<D0>, unint64_t a4@<D1>)
{
  LODWORD(a3) = *result;
  *a2 = *(result + 4);
  *(a2 + 16) = *(result + 14);
  *(a2 + 20) = *(result + 18);
  LOBYTE(a4) = *(result + 23);
  v4 = a4 / 255.0 * 32767.5;
  if (v4 > 65535.0)
  {
    v4 = 65535.0;
  }

  *(a2 + 26) = v4;
  LOWORD(v4) = *(result + 12);
  *&v4 = *&v4 / 10.0;
  *(a2 + 8) = a3;
  *(a2 + 12) = LODWORD(v4);
  LOBYTE(a3) = *(result + 22);
  v5 = a3 / 162.338042 * 41720.8768;
  if (v5 > 65535.0)
  {
    v5 = 65535.0;
  }

  *(a2 + 24) = v5;
  *(a2 + 28) = LODWORD(v4);
  *(a2 + 32) = 0;
  *(a2 + 18) = 0;
  return result;
}

uint64_t PKCompressStrokePoint@<X0>(PKCompressedStrokePoint *a1@<X0>, double a2@<D0>, float32x4_t *a3@<X8>)
{
  v5.f64[0] = *&a1->var0 - a2;
  v5.f64[1] = *&a1->var7;
  *a3 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a1->var1), v5);
  v6 = *&a1->var10 * 1000.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v6 >= 0.0)
  {
    v8 = *&a1->var10 * 1000.0;
    if (v6 > 65535.0)
    {
      v8 = 65535.0;
    }
  }

  a3[1].i16[0] = v8;
  v9 = *&a1[1].var0.var1 * 10.0;
  if (v9 >= 0.0)
  {
    v7 = *&a1[1].var0.var1 * 10.0;
    if (v9 > 65535.0)
    {
      v7 = 65535.0;
    }
  }

  a3[1].i16[1] = v7;
  v10 = *&a1[1].var2 * 1000.0;
  v11 = 0.0;
  v12 = 0.0;
  if (v10 >= 0.0)
  {
    v12 = *&a1[1].var2 * 1000.0;
    if (v10 > 65535.0)
    {
      v12 = 65535.0;
    }
  }

  a3[1].i16[2] = v12;
  result = PKCompressedStrokePoint::compressAzimuth(a1, *&a1[1].var5);
  a3[1].i16[3] = result;
  v14 = *&a1[1].var9 * 41720.8768;
  if (v14 >= 0.0)
  {
    v11 = *&a1[1].var9 * 41720.8768;
    if (v14 > 65535.0)
    {
      v11 = 65535.0;
    }
  }

  a3[1].i16[4] = v11;
  v15 = *&a1[2].var0 * 32767.5;
  v16 = 0.0;
  v17 = 0.0;
  if (v15 >= 0.0)
  {
    v17 = *&a1[2].var0 * 32767.5;
    if (v15 > 65535.0)
    {
      v17 = 65535.0;
    }
  }

  a3[1].i16[5] = v17;
  v18 = *&a1[2].var3;
  v19 = *&a1[2].var1;
  a3[1].f32[3] = v19;
  if (v18 * 32767.5 >= 0.0)
  {
    v16 = v18 * 32767.5;
    if (v18 * 32767.5 > 65535.0)
    {
      v16 = 65535.0;
    }
  }

  a3[2].i16[0] = v16;
  return result;
}

double PKDecompressStrokePoint@<D0>(PKCompressedStrokePoint *a1@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  var2 = a1->var2;
  *a3 = a1->var1 + a2;
  *(a3 + 8) = vcvtq_f64_f32(a1->var0);
  *(a3 + 24) = var2;
  v4 = vmovl_u16(*&a1->var3);
  v5.i64[0] = v4.u32[2];
  v5.i64[1] = v4.u32[3];
  v6 = vcvtq_f64_u64(v5);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v7 = vdivq_f64(vcvtq_f64_u64(v5), xmmword_1C801E6D0);
  *(a3 + 32) = v7;
  *(a3 + 48) = vdivq_f64(v6, xmmword_1C801E6E0);
  LOWORD(v7.f64[0]) = a1->var7;
  v6.f64[0] = 41720.8768;
  LOWORD(v6.f64[0]) = a1->var8;
  v6.f64[0] = *&v6.f64[0] / 32767.5;
  *(a3 + 64) = *&v7.f64[0] / 41720.8768;
  *(a3 + 72) = v6.f64[0];
  result = a1->var9;
  LOWORD(v6.f64[0]) = a1->var10;
  *(a3 + 80) = result;
  *(a3 + 88) = *&v6.f64[0] / 32767.5;
  return result;
}

id PKDescriptionOfStrokePoint(_PKStrokePoint *a1)
{
  v2 = NSStringFromCGPoint(a1->location);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"location: %@\n\ttimestamp: %f\n\tforce: %f\n\tazimuth: %f\n\taltitude: %f\n\tradius: %f\n\topacity: %f\n\tedgeWidth: %f\n\taspectRatio: %f\n", v2, *&a1->timestamp, *&a1->force, *&a1->azimuth, *&a1->altitude, *&a1->radius, *&a1->opacity, *&a1->edgeWidth, *&a1->aspectRatio];

  return v3;
}

float PKCompressedStrokePointV1::setTimestamp(PKCompressedStrokePointV1 *this, double a2, double a3)
{
  result = a2 - a3;
  *this = result;
  return result;
}

float PKCompressedStrokePointV1::setLocation(PKCompressedStrokePointV1 *this, CGPoint a2)
{
  result = a2.x;
  y = a2.y;
  *(this + 1) = result;
  *(this + 2) = y;
  return result;
}

uint64_t PKCompressedStrokePointV1::setRadius(uint64_t this, double a2)
{
  v2 = a2 * 10.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  *(this + 12) = v3;
  return this;
}

uint64_t PKCompressedStrokePointV1::setAspectRatio(uint64_t this, double a2)
{
  v2 = a2 * 1000.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  *(this + 14) = v3;
  return this;
}

uint64_t PKCompressedStrokePointV1::setEdgeWidth(uint64_t this, double a2)
{
  v2 = a2 * 10.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  *(this + 16) = v3;
  return this;
}

uint64_t PKCompressedStrokePointV1::setForce(uint64_t this, double a2)
{
  v2 = a2 * 1000.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 65535.0)
    {
      v3 = 65535.0;
    }
  }

  *(this + 18) = v3;
  return this;
}

void PKCompressedStrokePointV1::setAzimuth(PKCompressedStrokePointV1 *this, long double a2)
{
  v4 = fmod(a2, 6.28318531);
  v5 = 0.0;
  if (a2 <= 6.28318531 && a2 >= 0.0)
  {
    v4 = a2;
  }

  if (v4 < 0.0)
  {
    v4 = v4 + 6.28318531;
  }

  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v7 = v4 * 10430.2192;
  if (v7 >= 0.0)
  {
    v5 = v7;
    if (v7 > 65535.0)
    {
      v5 = 65535.0;
    }
  }

  *(this + 10) = v5;
}

uint64_t PKCompressedStrokePointV1::setAltitude(uint64_t this, double a2)
{
  v2 = a2 * 162.338042;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 255.0)
    {
      v3 = 255.0;
    }
  }

  *(this + 22) = v3;
  return this;
}

uint64_t PKCompressedStrokePointV1::setOpacity(uint64_t this, double a2)
{
  v2 = a2 * 255.0;
  v3 = 0.0;
  if (v2 >= 0.0)
  {
    v3 = v2;
    if (v2 > 255.0)
    {
      v3 = 255.0;
    }
  }

  *(this + 23) = v3;
  return this;
}

uint64_t PKConvertToCompressedStrokePointV1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 12);
  *a2 = *(result + 8);
  *(a2 + 4) = *result;
  v3 = *(result + 16);
  *(a2 + 14) = v3;
  LOWORD(v3) = *(result + 26);
  v4 = v3 / 32767.5;
  v5 = 255.0;
  v6 = v4 * 255.0;
  if (v6 > 255.0)
  {
    v6 = 255.0;
  }

  *(a2 + 23) = v6;
  v7 = v2 * 10.0;
  v8 = 0.0;
  if (v7 >= 0.0)
  {
    v8 = v7;
    if (v7 > 65535.0)
    {
      v8 = 65535.0;
    }
  }

  *(a2 + 12) = v8;
  LOWORD(v8) = *(result + 24);
  v9 = *&v8 / 41720.8768 * 162.338042;
  if (v9 <= 255.0)
  {
    v5 = v9;
  }

  *(a2 + 22) = v5;
  return result;
}

void sub_1C7EE8EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7EE97B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7EEA10C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t HasValidInkForDetectionItem(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v24 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v4)
  {
    goto LABEL_19;
  }

  v23 = *v27;
  v18 = @"com.apple.ink.crayon";
  do
  {
    v25 = v4;
    for (i = 0; i != v25; ++i)
    {
      if (*v27 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v6 = [*(*(&v26 + 1) + 8 * i) strokeUUID];
      v7 = [v24 _visibleStrokeForIdentifier:v6];

      v8 = [v7 ink];
      v9 = [v8 identifier];
      if ([v9 isEqualToString:@"com.apple.ink.pen"])
      {
        goto LABEL_13;
      }

      v10 = [v7 ink];
      v11 = [v10 identifier];
      if ([v11 isEqualToString:@"com.apple.ink.pencil"])
      {
        goto LABEL_12;
      }

      v12 = [v7 ink];
      v13 = [v12 identifier];
      if ([v13 isEqualToString:@"com.apple.ink.monoline"])
      {
        goto LABEL_11;
      }

      v21 = [v7 ink];
      v14 = [v21 identifier];
      if ([v14 isEqualToString:@"com.apple.ink.fountainpen"])
      {

LABEL_11:
LABEL_12:

LABEL_13:
        continue;
      }

      v20 = [v7 ink];
      v15 = [v20 identifier];
      v19 = [v15 isEqualToString:v18];

      if ((v19 & 1) == 0)
      {
        v16 = 0;
        goto LABEL_20;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v4);
LABEL_19:
  v16 = 1;
LABEL_20:

  return v16;
}

void sub_1C7EEA780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7EEAAC4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C7EEAD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7EEB0F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C7EEB348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7EEB72C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *___ZL42getDDShouldUseLightLinksForResultSymbolLocv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED6A5230)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL28DataDetectorsCoreLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E82DAB60;
    v7 = 0;
    qword_1ED6A5230 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED6A5230;
    if (qword_1ED6A5230)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED6A5230;
LABEL_5:
  result = dlsym(v2, "DDShouldUseLightLinksForResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_152 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL28DataDetectorsCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A5230 = result;
  return result;
}

Class ___ZL29getDDDetectionControllerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6A5240)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL26DataDetectorsUILibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82DAB78;
    v6 = 0;
    qword_1ED6A5240 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6A5240)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("DDDetectionController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED6A5238 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL26DataDetectorsUILibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A5240 = result;
  return result;
}

uint64_t _PKHandleRemotePencilSettingDidChangeNotification(uint64_t a1, void *a2)
{
  v3 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Handle remote pencil settings did change notification", v5, 2u);
  }

  return [a2 _handleRemotePencilSettingDidChangeNotification];
}

void sub_1C7EEE4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__22(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void __PKAllowDoubleBuffering_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
  _MergedGlobals_3 = [v0 BOOLForKey:@"PKAllowDoubleBuffering"];
}

void sub_1C7EF1290(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1C7EF2954(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

BOOL distanceToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10.origin.x = a3;
  v10.origin.y = a4;
  v10.size.width = a5;
  v10.size.height = a6;
  v9.x = a1;
  v9.y = a2;
  return CGRectContainsPoint(v10, v9);
}

void sub_1C7EF4658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7EF5260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWFConfiguredSystemActionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6A5280)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __WorkflowUIServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82DADA0;
    v6 = 0;
    qword_1ED6A5280 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6A5280)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("WFConfiguredSystemAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED6A5278 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WorkflowUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A5280 = result;
  return result;
}

void sub_1C7EF59B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1C7EF5A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C7EF5AD8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7EF5D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7EF5FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getDDContextMenuActionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDContextMenuActionClass_softClass;
  v7 = getDDContextMenuActionClass_softClass;
  if (!getDDContextMenuActionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDContextMenuActionClass_block_invoke;
    v3[3] = &unk_1E82D6498;
    v3[4] = &v4;
    __getDDContextMenuActionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C7EFAFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7EFB208(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1C7EFB678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C7EFBAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkDataDetectorsAllResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsAllResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_156 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DataDetectorsUILibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __DataDetectorsUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E82DAE78;
    v5 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = DataDetectorsUILibraryCore_frameworkLibrary;
    if (DataDetectorsUILibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return DataDetectorsUILibraryCore_frameworkLibrary;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkDataDetectorsMiddleTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsMiddleText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED6A52A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getDDContextMenuActionClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary();
  result = objc_getClass("DDContextMenuAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDContextMenuActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getDDContextMenuConfigurationClass_block_invoke(v3);
  }

  return result;
}

Class __getDDContextMenuConfigurationClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary();
  result = objc_getClass("DDContextMenuConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDContextMenuConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [v3 _pkDebugStringRepresentation];
  }

  return result;
}

id PKDebugStringRepresentation(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v1 stringWithFormat:@"<%@: %p>", v4, v2];

  return v5;
}

uint64_t legacy_drawing::Rectangle::Rectangle(uint64_t this)
{
  *this = &unk_1F476A660;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F476A660;
  *(this + 24) = 0;
  return this;
}

void legacy_drawing::Rectangle::~Rectangle(legacy_drawing::Rectangle *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float legacy_drawing::Rectangle::Rectangle(legacy_drawing::Rectangle *this, const legacy_drawing::Rectangle *a2)
{
  *this = &unk_1F476A660;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 3);
    v3 = 2;
    *(this + 24) = 2;
    *(this + 3) = result;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 24) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

  result = *(a2 + 5);
  v3 |= 8u;
  *(this + 24) = v3;
  *(this + 5) = result;
  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t legacy_drawing::Rectangle::operator=(uint64_t a1, const legacy_drawing::Rectangle *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::Rectangle::Rectangle(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float legacy_drawing::swap(legacy_drawing *this, legacy_drawing::Rectangle *a2, legacy_drawing::Rectangle *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float legacy_drawing::Rectangle::Rectangle(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F476A660;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F476A660;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t legacy_drawing::Rectangle::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F476A660;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t legacy_drawing::Rectangle::formatText(legacy_drawing::Rectangle *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "height", *(this + 2));
    v5 = *(this + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "originX", *(this + 3));
  v5 = *(this + 24);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "originY", *(this + 4));
  if ((*(this + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "width", *(this + 5));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::Rectangle::readFrom(legacy_drawing::Rectangle *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t legacy_drawing::Rectangle::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 12));
    v4 = *(v3 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20));
      if ((*(v3 + 24) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 24);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL legacy_drawing::Rectangle::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 8) != 0)
  {
    if ((*(a2 + 24) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t legacy_drawing::Rectangle::hash_value(legacy_drawing::Rectangle *this)
{
  if ((*(this + 24) & 2) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 24) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 3);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 24) & 8) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

void sub_1C7EFE124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F02164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F02D1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1C7F052D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7F0B27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  _Block_object_dispose(&STACK[0x210], 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F0B498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t DKUDeviceRGBColorSpace()
{
  if (qword_1ED6A52B0 != -1)
  {
    dispatch_once(&qword_1ED6A52B0, &__block_literal_global_67);
  }

  return _MergedGlobals_157;
}

uint64_t DKULinearExtendedDynamicRangeRGBColorSpace()
{
  if (qword_1ED6A52C0 != -1)
  {
    dispatch_once(&qword_1ED6A52C0, &__block_literal_global_2_0);
  }

  return qword_1ED6A52B8;
}

uint64_t DKULinearExtendedLinearDisplayP3ColorSpace()
{
  if (qword_1ED6A52D0 != -1)
  {
    dispatch_once(&qword_1ED6A52D0, &__block_literal_global_4_0);
  }

  return qword_1ED6A52C8;
}

CGColorSpaceRef __DKULinearExtendedLinearDisplayP3ColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F0]);
  qword_1ED6A52C8 = result;
  return result;
}

uint64_t DKUExtendedDynamicRangeRGBColorSpace()
{
  if (qword_1ED6A52E0 != -1)
  {
    dispatch_once(&qword_1ED6A52E0, &__block_literal_global_6);
  }

  return qword_1ED6A52D8;
}

CGColorSpaceRef __DKUExtendedDynamicRangeRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  qword_1ED6A52D8 = result;
  return result;
}

uint64_t DKUDeviceCMYKColorSpace()
{
  if (qword_1ED6A52F0 != -1)
  {
    dispatch_once(&qword_1ED6A52F0, &__block_literal_global_8);
  }

  return qword_1ED6A52E8;
}

CGColorSpaceRef __DKUDeviceCMYKColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceCMYK();
  qword_1ED6A52E8 = result;
  return result;
}

uint64_t DKUDeviceGrayColorSpace()
{
  if (qword_1ED6A5300 != -1)
  {
    dispatch_once(&qword_1ED6A5300, &__block_literal_global_10_0);
  }

  return qword_1ED6A52F8;
}

CGColorSpaceRef __DKUDeviceGrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceGray();
  qword_1ED6A52F8 = result;
  return result;
}

uint64_t DKUDeviceLabColorSpace()
{
  if (qword_1ED6A5310 != -1)
  {
    dispatch_once(&qword_1ED6A5310, &__block_literal_global_12);
  }

  return qword_1ED6A5308;
}

CGColorSpaceRef __DKUDeviceLabColorSpace_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  *whitePoint = xmmword_1C801E848;
  v4 = 0x3FF16BD900000000;
  memset(blackPoint, 0, sizeof(blackPoint));
  v1[0] = xmmword_1C801E860;
  v1[1] = unk_1C801E870;
  result = CGColorSpaceCreateLab(whitePoint, blackPoint, v1);
  qword_1ED6A5308 = result;
  return result;
}

CGColorRef DKUCGColorCreateWithUIColor(void *a1)
{
  v1 = [a1 CGColor];

  return CGColorCreateCopy(v1);
}

CGColorRef DKUCGColorCreateDeviceGray(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  if (qword_1ED6A5300 != -1)
  {
    dispatch_once(&qword_1ED6A5300, &__block_literal_global_10_0);
  }

  return CGColorCreate(qword_1ED6A52F8, components);
}

CGPatternRef DKUCGPatternCreateWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  CGImageRetain(a1);
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (a2)
  {
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    v9 = a2[2];
  }

  else
  {
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v13 = *MEMORY[0x1E695EFD0];
    v14 = v10;
    v9 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v15 = v9;
  v16.size.height = Height;
  v16.size.width = Width;
  *&v12.a = v13;
  *&v12.c = v14;
  *&v12.tx = v9;
  v16.origin.x = v4;
  v16.origin.y = v5;
  return CGPatternCreate(a1, v16, &v12, Width, v16.size.height, kCGPatternTilingConstantSpacing, 1, &DKUCGPatternCreateWithImageAndTransform_sCallbacks);
}

void DKUDrawImageAtOriginInContext(CGImage *a1, CGContext *a2)
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = v4;
  v9 = v5;
  v10 = Width;

  CGContextDrawImage(a2, *&v8, a1);
}

CGColorRef DKUCGColorCreatePatternWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = DKUCGPatternCreateWithImageAndTransform(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6[0] = 1.0;
  v4 = CGColorCreateWithPattern(Pattern, v2, v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

CGColor *DKUCreateCGColorFromHSBInColorSpace(double a1, double a2, double a3, double a4)
{
  v4 = [objc_alloc(MEMORY[0x1E69DC888]) initWithHue:a1 saturation:a2 brightness:a3 alpha:a4];
  v5 = [v4 CGColor];
  CGColorRetain(v5);

  return v5;
}

uint64_t DKUHSBFromCGColorRef(CGColor *a1, double *a2, double *a3, double *a4, CGFloat *a5)
{
  *a5 = 0.0;
  *a4 = 0.0;
  *a3 = 0.0;
  *a2 = 0.0;
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB || CGColorGetNumberOfComponents(a1) != 4)
  {
    return 0;
  }

  *a5 = CGColorGetAlpha(a1);
  Components = CGColorGetComponents(a1);
  DKURGBToHSB(a2, a3, a4, *Components, Components[1], Components[2]);
  return 1;
}

double DKURGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

double *DKUHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

double DKUCMYKToRGB(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  *a1 = 1.0 - fmin(a7 + a4 * (1.0 - a7), 1.0);
  *a2 = 1.0 - fmin(a7 + a5 * (1.0 - a7), 1.0);
  result = 1.0 - fmin(a7 + a6 * (1.0 - a7), 1.0);
  *a3 = result;
  return result;
}

BOOL DKUColorIsBlack(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  Components = CGColorGetComponents(a1);
  v5 = 0.0;
  if (Model)
  {
    if (Model == kCGColorSpaceModelCMYK)
    {
      Components += 3;
      v5 = 1.0;
    }

    else
    {
      if (Model != kCGColorSpaceModelRGB || *Components != 0.0 || Components[1] != 0.0)
      {
        return 0;
      }

      Components += 2;
    }
  }

  return *Components == v5;
}

CGFloat DKUColorLightness(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  switch(Model)
  {
    case kCGColorSpaceModelMonochrome:
      return *CGColorGetComponents(a1);
    case kCGColorSpaceModelCMYK:
      Components = CGColorGetComponents(a1);
      v7 = Components[3];
      v8 = 1.0 - fmin(v7 + *Components * (1.0 - v7), 1.0);
      v9 = 1.0 - fmin(v7 + Components[1] * (1.0 - v7), 1.0);
      v10 = 1.0 - fmin(v7 + Components[2] * (1.0 - v7), 1.0);
      v5 = fmax(fmax(v8, v9), v10) + fmin(fmin(v8, v9), v10);
      return v5 * 0.5;
    case kCGColorSpaceModelRGB:
      v4 = CGColorGetComponents(a1);
      v5 = fmax(fmax(*v4, v4[1]), v4[2]) + fmin(fmin(*v4, v4[1]), v4[2]);
      return v5 * 0.5;
  }

  NSLog(&cfstr_WarningTesting.isa);
  return 0.0;
}

CGContext *DKUCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (qword_1ED6A52B0 != -1)
  {
    dispatch_once(&qword_1ED6A52B0, &__block_literal_global_67);
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, _MergedGlobals_157, 0x2002u);
  CGAffineTransformMakeScale(&v10, a4, a4);
  CGContextConcatCTM(v8, &v10);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(&v10, 1.0, -1.0);
    CGContextConcatCTM(v8, &v10);
  }

  return v8;
}

CGColorRef DKUCreateCheckerBoardColor(CGColor *a1, CGColor *a2, CGFloat a3, CGFloat a4)
{
  v8 = a3 + a3;
  v9 = a4 + a4;
  v10 = DKUCreateRGBABitmapContext(0, a3 + a3, a4 + a4, 1.0);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  CGContextSetFillColorWithColor(v10, a1);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v8;
  v15.size.height = v9;
  CGContextFillRect(v11, v15);
  CGContextSetFillColorWithColor(v11, a2);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a3;
  v16.size.height = a4;
  CGContextFillRect(v11, v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a3;
  v17.size.height = a4;
  CGContextFillRect(v11, v17);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  if (!Image)
  {
    return 0;
  }

  PatternWithImageAndTransform = DKUCGColorCreatePatternWithImageAndTransform(Image, 0);
  CGImageRelease(Image);
  return PatternWithImageAndTransform;
}

uint64_t DKUPatternColorFromGradient(CGGradient *a1, CGFloat a2, CGFloat a3)
{
  v6 = DKUCreateRGBABitmapContext(1, 1.0, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v13.x = 0.0;
  v13.y = 0.0;
  v14.x = 0.0;
  v14.y = a2;
  CGContextDrawLinearGradient(v6, a1, v13, v14, 0);
  Image = CGBitmapContextCreateImage(v7);
  CGContextRelease(v7);
  v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:a3];
  CGImageRelease(Image);
  if (!v9)
  {
    return 0;
  }

  v10 = MEMORY[0x1E69DC888];

  return [v10 colorWithPatternImage:v9];
}

double DKUColorGetAlpha(CGColor *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = __const_DKUColorGetAlpha_rgba;
  v3 = unk_1C801E890;
  DKUColorGetRGBAComponents(a1, &v2);
  return *(&v3 + 1);
}

float32x2_t DKUColorGetVectorFloat3(CGColor *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = __const_DKUColorGetVectorFloat3_rgba;
  v2[1] = unk_1C801E8B0;
  DKUColorGetRGBAComponents(a1, v2);
  return vcvt_f32_f64(v2[0]);
}

double DKUColorGetVectorFloat4(CGColor *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = __const_DKUColorGetVectorFloat4_rgba;
  v3 = unk_1C801E8D0;
  DKUColorGetRGBAComponents(a1, &v2);
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v2), v3).u64[0];
  return result;
}

double DKUCalculateHue(double a1, double a2, double a3)
{
  v3 = a3 + -6.0;
  if (a3 < 6.0)
  {
    v3 = a3;
  }

  if (a3 < 0.0)
  {
    v4 = a3 + 6.0;
  }

  else
  {
    v4 = v3;
  }

  if (v4 < 1.0)
  {
    v5 = a2 - a1;
    return a1 + v5 * v4;
  }

  if (v4 >= 3.0)
  {
    if (v4 < 4.0)
    {
      v5 = a2 - a1;
      v4 = 4.0 - v4;
      return a1 + v5 * v4;
    }

    return a1;
  }

  return a2;
}

uint64_t DKUConvertsRGBToHSL(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = fmax(fmax(*result, v3), v4);
  v6 = fmin(fmin(*result, v3), v4);
  v7 = v5 - v6;
  v8 = 0.0;
  v9 = 0.0;
  if (vabdd_f64(v5, v6) >= 0.00999999978)
  {
    if (v5 == v2)
    {
      v10 = (v3 - v4) / v7;
      v11 = 360.0;
    }

    else
    {
      if (v5 == v3)
      {
        v10 = (v4 - v2) / v7;
        v12 = 0x405E000000000000;
      }

      else
      {
        v10 = (v2 - v3) / v7;
        v12 = 0x406E000000000000;
      }

      v11 = *&v12;
    }

    v9 = v11 + v10 * 60.0;
  }

  v13 = v5 + v6;
  v14 = v13 * 0.5;
  if (v7 != 0.0)
  {
    if (v14 <= 0.5)
    {
      v8 = v7 / v13;
    }

    else
    {
      v8 = v7 / (2.0 - v13);
    }
  }

  v15 = v9 + -360.0;
  if (v9 < 360.0)
  {
    v15 = v9;
  }

  v16 = *(result + 24);
  *a2 = v15 / 360.0;
  *(a2 + 8) = v8;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  return result;
}

uint64_t DKUConvertHSLToSRGB(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  if (fabs(v2) < 0.00999999978)
  {
    v4 = *(result + 16);
    v5 = v4;
    goto LABEL_38;
  }

  v6 = v2 + v3 - v3 * v2;
  v5 = v3 * (v2 + 1.0);
  if (v3 > 0.5)
  {
    v5 = v6;
  }

  v7 = -(v5 - v3 * 2.0);
  v8 = *result * 6.0;
  v9 = v8 + 2.0;
  v10 = v8 + 2.0 + -6.0;
  if (v8 + 2.0 < 6.0)
  {
    v10 = v8 + 2.0;
  }

  if (v9 < 0.0)
  {
    v11 = v9 + 6.0;
  }

  else
  {
    v11 = v10;
  }

  if (v11 < 1.0)
  {
    v12 = v5 - v7;
LABEL_12:
    v3 = v7 + v12 * v11;
    goto LABEL_16;
  }

  v3 = v5;
  if (v11 >= 3.0)
  {
    v3 = v7;
    if (v11 < 4.0)
    {
      v12 = v5 - v7;
      v11 = 4.0 - v11;
      goto LABEL_12;
    }
  }

LABEL_16:
  v13 = v8 + -6.0;
  if (v8 < 6.0)
  {
    v13 = *result * 6.0;
  }

  if (v8 < 0.0)
  {
    v13 = v8 + 6.0;
  }

  if (v13 >= 1.0)
  {
    v4 = v5;
    if (v13 < 3.0)
    {
      goto LABEL_26;
    }

    v4 = v7;
    if (v13 >= 4.0)
    {
      goto LABEL_26;
    }

    v14 = v5 - v7;
    v13 = 4.0 - v13;
  }

  else
  {
    v14 = v5 - v7;
  }

  v4 = v7 + v14 * v13;
LABEL_26:
  v15 = v8 + -2.0;
  v16 = v15 + -6.0;
  if (v15 < 6.0)
  {
    v16 = v15;
  }

  if (v15 < 0.0)
  {
    v17 = v15 + 6.0;
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 1.0)
  {
    if (v17 < 3.0)
    {
      goto LABEL_38;
    }

    if (v17 >= 4.0)
    {
      v5 = v7;
      goto LABEL_38;
    }

    v18 = v5 - v7;
    v17 = 4.0 - v17;
  }

  else
  {
    v18 = v5 - v7;
  }

  v5 = v7 + v18 * v17;
LABEL_38:
  v19 = *(result + 24);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v19;
  return result;
}

double DKUColoGetLuminance(CGColor *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = __const_DKUColorIsEqualToColorIgnoringOpacityWithTolerance_secondColorRGBA;
  *v3 = unk_1C801E930;
  DKUColorGetRGBAComponents(a1, &v2);
  return *(&v2 + 1) * 0.7152 + *&v2 * 0.2126 + v3[0] * 0.0722;
}

uint64_t DKUTransformColorFromRGBA(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = __const_DKUTransformColorFromRGBA_hsla;
  *v5 = unk_1C801E8F0;
  DKUConvertsRGBToHSL(a1, &v4);
  v5[0] = 1.0 - v5[0];
  return DKUConvertHSLToSRGB(&v4, a2);
}

const void *DKUTransformCGColor(CGColor *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9[0] = __const_DKUColorIsEqualToColorIgnoringOpacityWithTolerance_secondColorRGBA;
  v9[1] = unk_1C801E930;
  ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB(a1);
  DKUColorGetRGBAComponents(ConvertedToSRGB, v9);
  v3 = DKUHeadroomFromColor(a1);
  v7 = __const_DKUColorIsEqualToColorIgnoringOpacityWithTolerance_secondColorRGBA;
  v8 = unk_1C801E930;
  v10 = __const_DKUTransformColorFromRGBA_hsla;
  v11 = unk_1C801E8F0;
  DKUConvertsRGBToHSL(v9, &v10);
  *&v11 = 1.0 - *&v11;
  DKUConvertHSLToSRGB(&v10, &v7);
  if (v3 <= 1.0)
  {
    SRGB = CGColorCreateSRGB(*&v7, *(&v7 + 1), *&v8, *(&v8 + 1));
  }

  else
  {
    if (qword_1ED6A52E0 != -1)
    {
      dispatch_once(&qword_1ED6A52E0, &__block_literal_global_6);
    }

    SRGB = CGColorCreateWithContentHeadroom();
  }

  v5 = SRGB;
  CFAutorelease(SRGB);
  CGColorRelease(ConvertedToSRGB);
  return v5;
}

uint64_t DKUTransformRGBA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = __const_DKUTransformColorFromRGBA_hsla;
  *v6 = unk_1C801E8F0;
  DKUConvertsRGBToHSL(a1, &v5);
  v6[0] = 1.0 - v6[0];
  return DKUConvertHSLToSRGB(&v5, a3);
}

BOOL DKUColorIsEqualToColorIgnoringOpacityWithTolerance(CGColor *a1, CGColor *a2, char a3, double a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = __const_DKUColorIsEqualToColorIgnoringOpacityWithTolerance_firstColorRGBA;
  *v12 = unk_1C801E910;
  DKUColorGetRGBAComponents(a1, &v11);
  v9 = __const_DKUColorIsEqualToColorIgnoringOpacityWithTolerance_secondColorRGBA;
  v10 = unk_1C801E930;
  DKUColorGetRGBAComponents(a2, &v9);
  if (vabdd_f64(*&v11, *&v9) >= a4 || vabdd_f64(*(&v11 + 1), *(&v9 + 1)) >= a4)
  {
    return 0;
  }

  v7 = vabdd_f64(v12[0], *&v10);
  result = v7 < a4;
  if (v7 < a4 && (a3 & 1) == 0)
  {
    return vabdd_f64(v12[1], *(&v10 + 1)) < a4;
  }

  return result;
}

CGColor *DKUSDRColorFromColor(CGColor *a1)
{
  v1 = a1;
  v12 = *MEMORY[0x1E69E9840];
  v2 = DKUHeadroomFromColor(a1);
  if (v2 > 1.0)
  {
    *&v9 = v2;
    if (qword_1ED6A52D0 != -1)
    {
      dispatch_once(&qword_1ED6A52D0, &__block_literal_global_4_0);
    }

    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(qword_1ED6A52C8, kCGRenderingIntentDefault, v1, 0);
    if (CopyByMatchingToColorSpace)
    {
      v4 = CopyByMatchingToColorSpace;
      DKUColorGetRGBAComponents(CopyByMatchingToColorSpace, components);
      CGColorRelease(v4);
      *components = vdivq_f64(*components, vdupq_lane_s64(v9, 0));
      v11 = v11 / *&v9;
      if (qword_1ED6A52C0 != -1)
      {
        dispatch_once(&qword_1ED6A52C0, &__block_literal_global_2_0);
      }

      v5 = CGColorCreate(qword_1ED6A52B8, components);
      if (v5)
      {
        v6 = v5;
        if (qword_1ED6A52E0 != -1)
        {
          dispatch_once(&qword_1ED6A52E0, &__block_literal_global_6);
        }

        v7 = CGColorCreateCopyByMatchingToColorSpace(qword_1ED6A52D8, kCGRenderingIntentDefault, v6, 0);
        CGColorRelease(v6);
        if (v7)
        {
          CFAutorelease(v7);
          return v7;
        }
      }
    }
  }

  return v1;
}

void sub_1C7F0DDB0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1CCA6ECB0](v3, 0x10C402FEFCB83);
  std::unique_ptr<PB::Writer>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void PKProtobufUnknownFields::~PKProtobufUnknownFields(PKProtobufUnknownFields *this)
{
  std::unique_ptr<PB::Writer>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<PB::Writer>::reset[abi:ne200100](this, 0);
}

const void ***PKProtobufUnknownFields::writeTo(const void ***result, char **a2)
{
  v4 = **result;
  v3 = (*result)[1];
  v5 = v4 - v3;
  if (v4 != v3)
  {
    v6 = result;
    v7 = a2[2];
    v8 = *a2;
    if (v7 < &(*a2)[v5])
    {
      v9 = a2[1];
      v10 = v7 - v9;
      if (v10 <= v5)
      {
        v11 = v4 - v3;
      }

      else
      {
        v11 = v10;
      }

      v12 = v11 + v10;
      v13 = malloc_type_realloc(a2[1], v11 + v10, 0x100004077774924uLL);
      if (!v13)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v15, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
      }

      v8 = &v13[v8 - v9];
      a2[1] = v13;
      a2[2] = &v13[v12];
      *a2 = v8;
      v3 = (*v6)[1];
      v5 = **v6 - v3;
    }

    result = memcpy(v8, v3, v5);
    *a2 += **v6 - (*v6)[1];
  }

  return result;
}

BOOL PKProtobufUnknownFields::_incrementRecursionDepth(PKProtobufUnknownFields *this)
{
  v1 = *(this + 1) + 1;
  *(this + 1) = v1;
  return v1 < 0x41;
}

PKProtobufUnknownFields *PKProtobufUnknownFields::_decrementRecursionDepth(PKProtobufUnknownFields *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 1) = v1 - 1;
  }

  return this;
}

uint64_t PKProtobufUnknownFields::add(PKProtobufUnknownFields *this, int a2, int a3, PB::Reader *a4)
{
  if (a2 == -1)
  {
    __assert_rtn("add", "PKProtobufUnknownFields.cpp", 76, "tag != TAG_DONT_WRITE");
  }

  v7 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = *(a4 + 1);
        if (v9 <= 0xFFFFFFFFFFFFFFF7 && v9 + 8 <= *(a4 + 2))
        {
          *(a4 + 1) = v9 + 8;
        }

        else
        {
          *(a4 + 24) = 1;
        }

        PB::Writer::writeFixed(*this);
        goto LABEL_67;
      }

      return v7 & 1;
    }

    v30 = *(a4 + 1);
    if (v30 < 0xFFFFFFFFFFFFFFF6)
    {
      v31 = *(a4 + 2);
      if (v30 + 10 <= v31)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = (*a4 + v30);
        v44 = v30 + 1;
        do
        {
          *(a4 + 1) = v44;
          v45 = *v43++;
          v42 |= (v45 & 0x7F) << v40;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          ++v44;
          v15 = v41++ > 8;
        }

        while (!v15);
LABEL_66:
        PB::Writer::writeVarInt(*this);
        goto LABEL_67;
      }
    }

    else
    {
      v31 = *(a4 + 2);
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = (*a4 + v30);
    v18 = v31 >= v30;
    v36 = v31 - v30;
    if (!v18)
    {
      v36 = 0;
    }

    v37 = v30 + 1;
    while (v36)
    {
      v38 = *v35;
      *(a4 + 1) = v37;
      v34 |= (v38 & 0x7F) << v32;
      if (v38 < 0)
      {
        v32 += 7;
        ++v35;
        --v36;
        ++v37;
        v15 = v33++ > 8;
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_66;
    }

    *(a4 + 24) = 1;
    goto LABEL_66;
  }

  switch(a3)
  {
    case 2:
      PB::Reader::read();
      PB::Writer::write();
LABEL_67:
      v7 = *(a4 + 24) ^ 1;
      return v7 & 1;
    case 3:
      v10 = *(this + 1) + 1;
      *(this + 1) = v10;
      if (v10 <= 0x40)
      {
        while ((*(a4 + 24) & 1) == 0)
        {
          v12 = *(a4 + 1);
          v11 = *(a4 + 2);
          v13 = *a4;
          v14 = 0;
          v15 = v12 > 0xFFFFFFFFFFFFFFF5 || v12 + 10 > v11;
          if (v15)
          {
            v16 = 0;
            v23 = 0;
            v17 = (v13 + v12);
            v18 = v11 >= v12;
            v19 = v11 - v12;
            if (!v18)
            {
              v19 = 0;
            }

            v20 = v12 + 1;
            while (v19)
            {
              v21 = *v17;
              *(a4 + 1) = v20;
              v23 |= (v21 & 0x7F) << v14;
              if ((v21 & 0x80) == 0)
              {
                goto LABEL_34;
              }

              v14 += 7;
              ++v17;
              --v19;
              ++v20;
              v15 = v16++ > 8;
              if (v15)
              {
LABEL_33:
                LODWORD(v27) = 0;
                v28 = 0;
                goto LABEL_41;
              }
            }

            LODWORD(v27) = 0;
            v28 = 0;
            *(a4 + 24) = 1;
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v24 = (v13 + v12);
            v25 = v12 + 1;
            while (1)
            {
              *(a4 + 1) = v25;
              v26 = *v24++;
              v23 |= (v26 & 0x7F) << v14;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              ++v25;
              v15 = v22++ > 8;
              if (v15)
              {
                goto LABEL_33;
              }
            }

LABEL_34:
            v28 = v23 & 7;
            v27 = v23 >> 3;
            if ((v23 & 7) == 4 && v27 == a2)
            {
              break;
            }
          }

LABEL_41:
          if ((PKProtobufUnknownFields::add(this, v27, v28, a4) & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v39 = *(this + 1);
        if (v39)
        {
          *(this + 1) = v39 - 1;
        }

        goto LABEL_67;
      }

LABEL_42:
      v7 = 0;
      break;
    case 5:
      v8 = *(a4 + 1);
      if (v8 <= 0xFFFFFFFFFFFFFFFBLL && v8 + 4 <= *(a4 + 2))
      {
        *(a4 + 1) = v8 + 4;
      }

      else
      {
        *(a4 + 24) = 1;
      }

      PB::Writer::writeFixed(*this);
      goto LABEL_67;
  }

  return v7 & 1;
}

void sub_1C7F0E2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PKProtobufUnknownFields::dataSize(PKProtobufUnknownFields *this)
{
  if (*this)
  {
    return **this - *(*this + 8);
  }

  else
  {
    return 0;
  }
}
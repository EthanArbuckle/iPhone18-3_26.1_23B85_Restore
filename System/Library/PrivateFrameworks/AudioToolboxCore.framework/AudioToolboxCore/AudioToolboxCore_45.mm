void sub_18F8D4FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Get4CCOrNumber(const __CFDictionary *a1, const __CFString *a2, unsigned int *a3, const __CFString **a4)
{
  *a3 = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (!result)
  {
LABEL_9:
    *a4 = a2;
    return result;
  }

  v8 = result;
  v9 = CFGetTypeID(result);
  if (v9 != CFStringGetTypeID())
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID() && CFNumberGetValue(v8, kCFNumberSInt32Type, a3))
    {
      return 1;
    }

    result = 0;
    goto LABEL_9;
  }

  if (CFStringGetLength(v8) == 4)
  {
    CFStringGetCString(v8, buffer, 5, 0x600u);
    *a3 = bswap32(*buffer);
    return 1;
  }

  return 0;
}

uint64_t GetString(const __CFDictionary *a1, const __CFString *a2, const __CFString **a3, const __CFString **a4)
{
  *a3 = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v8 = result;
    v9 = CFGetTypeID(result);
    if (v9 == CFStringGetTypeID())
    {
      *a3 = v8;
      return 1;
    }

    result = 0;
  }

  *a4 = a2;
  return result;
}

uint64_t GetNumber(const __CFDictionary *a1, const __CFString *a2, unsigned int *a3, const __CFString **a4)
{
  *a3 = 0;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v8, kCFNumberSInt32Type, a3))
      {
        return 1;
      }
    }
  }

  result = 0;
  *a4 = a2;
  return result;
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t AudioFileObject::PacketRangeUpperBound(AudioFileObject *this, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  result = 1885563711;
  *a4 = 0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = *a3;
    if ((*a3 & 0x8000000000000000) == 0)
    {
      if ((a2 ^ 0x7FFFFFFFFFFFFFFFuLL) < v7)
      {
        return 4294967246;
      }

      if (*(this + 10))
      {
        v10 = (*(*this + 248))(this);
        v11 = *a3;
        if ((*a3 + a2) > v10)
        {
          v11 = (v10 - a2) & ~((v10 - a2) >> 63);
          *a3 = v11;
        }

        v12 = *(this + 10);
        if ((0x7FFFFFFFFFFFFFFFLL / v12) < v11)
        {
          return 4294967246;
        }

        v16 = v11 * v12;
        goto LABEL_21;
      }

      result = (*(*this + 696))(this, a2 + v7 + 1, 0, 1);
      if (!result || result == -39)
      {
        v13 = *(this + 15);
        result = 1885563711;
        if (v13)
        {
          v14 = *(v13 + 24);
          v15 = *a3;
          if ((*a3 + a2) > v14)
          {
            v15 = (v14 - a2) & ~((v14 - a2) >> 63);
            *a3 = v15;
          }

          if (*(this + 139))
          {
            if (v15 >= 1)
            {
              v16 = 0;
              v17 = a2;
              while (1)
              {
                CompressedPacketTable::operator[](&v20, v13, v17);
                if ((v16 ^ 0x7FFFFFFFFFFFFFFFuLL) < v21)
                {
                  return 4294967246;
                }

                v16 += v21;
                if (++v17 >= (*a3 + a2))
                {
                  goto LABEL_21;
                }
              }
            }

            v16 = 0;
          }

          else
          {
            v16 = 0;
            if (v14 > a2 && v15 >= 1)
            {
              CompressedPacketTable::operator[](&v20, v13, a2 + v15 - 1);
              v18 = v20 + v21;
              CompressedPacketTable::operator[](v19, v13, a2);
              v16 = v18 - v19[0];
            }
          }

LABEL_21:
          result = 0;
          *a4 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t AudioFileObject::GetInfoDictionary(AudioFileObject *this, CACFDictionary *a2)
{
  v5 = 0.0;
  v3 = (*(*this + 552))(this, &v5);
  if (v3)
  {
    return 1886681407;
  }

  AudioFileObject::AddDurationToInfoDictionary(v3, a2, &v5);
  return 0;
}

uint64_t AudioFileObject::AddDurationToInfoDictionary(AudioFileObject *this, CACFDictionary *a2, double *a3)
{
  System = CFLocaleGetSystem();
  if (System)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberFormatterCreate(*MEMORY[0x1E695E480], System, kCFNumberFormatterDecimalStyle);
    if (v7)
    {
      v8 = v7;
      StringWithValue = CFNumberFormatterCreateStringWithValue(v6, v7, kCFNumberFloat64Type, a3);
      if (StringWithValue)
      {
        v10 = StringWithValue;
        if (CFStringGetLength(StringWithValue))
        {
          CACFDictionary::AddString(a2, @"approximate duration in seconds", v10);
        }

        CFRelease(v10);
      }

      CFRelease(v8);
    }
  }

  return 0;
}

uint64_t AudioFileObject::GetInfoDictionarySize(AudioFileObject *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 8;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

uint64_t AudioFileObject::GetChannelLayoutSize(AudioFileObject *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1886681407;
}

uint64_t AudioFileObject::GetRegionListSize(AudioFileObject *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1886681407;
}

uint64_t AudioFileObject::GetMarkerListSize(AudioFileObject *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1886681407;
}

uint64_t AudioFileObject::GetMagicCookieDataSize(AudioFileObject *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1886681407;
}

uint64_t AudioFileObject::GetBitRate(AudioFileObject *this, unsigned int *a2)
{
  if (!a2)
  {
    return 2003334207;
  }

  v4 = *(this + 10);
  v5 = *(this + 11);
  v6 = *(this + 3);
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v13 = v4 * 8.0 * v6 / v5;
LABEL_13:
    v11 = v13;
LABEL_14:
    result = 0;
    *a2 = v11;
    return result;
  }

  v8 = (*(*this + 248))(this);
  v9 = (*(*this + 232))(this);
  if (v5)
  {
    v10 = v8 * v5;
LABEL_9:
    v11 = 0;
    if (!v10 || v6 == 0.0)
    {
      goto LABEL_14;
    }

    v13 = v9 * 8.0 / (v10 / v6);
    goto LABEL_13;
  }

  v14 = *(this + 15);
  if (!v14)
  {
    return 1886681407;
  }

  if (*(v14 + 24) == v8)
  {
    if (v8 < 1)
    {
      v11 = 0;
      goto LABEL_14;
    }

    v15 = 0;
    v10 = 0;
    do
    {
      CompressedPacketTable::operator[](v16, v14, v15);
      v10 += v17;
      ++v15;
    }

    while (v8 != v15);
    goto LABEL_9;
  }

  return 1685348671;
}

uint64_t AudioFileObject::ByteToPacket(AudioFileObject *this, AudioBytePacketTranslation *a2)
{
  result = 1885563711;
  mByte = a2->mByte;
  if ((a2->mByte & 0x8000000000000000) == 0)
  {
    v6 = *(this + 10);
    if (v6)
    {
      result = 0;
      a2->mPacket = mByte / v6;
      *&a2->mByteOffsetInPacket = (mByte % v6);
      return result;
    }

    v7 = *(this + 15);
    if (v7)
    {
      v17[1] = 0;
      v17[2] = 0;
      v17[0] = mByte;
      v8 = *(v7 + 24);
      v18 = byte_less_than;
      v19 = v7;
      v20 = 0;
      std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,CompressedPacketTable::iterator,AudioStreamPacketDescriptionExtended,std::__identity,BOOL (*)(AudioStreamPacketDescriptionExtended const&,AudioStreamPacketDescriptionExtended const&)>(&v14, &v19, v17, v8, &v18);
      v9 = *(v7 + 24);
      if (v15 != v9)
      {
        v12 = v15 - (v15 > 0);
        a2->mPacket = v12;
        v13 = a2->mByte;
        CompressedPacketTable::operator[](v16, v14, v12);
        *&a2->mByteOffsetInPacket = (v13 - v16[0]);
        return 0;
      }

      if (v9 >= 8)
      {
        CompressedPacketTable::operator[](&v19, v7, v9 - 1);
        v10 = (v19 + HIDWORD(v20) - *(this + 9)) / v9;
        v11 = a2->mByte / v10;
        a2->mPacket = vcvtmd_s64_f64(v11);
        a2->mByteOffsetInPacket = vcvtmd_u64_f64(v10 * (v11 - floor(v11)));
        a2->mFlags = 1;
        return 0;
      }

      return 1836020325;
    }
  }

  return result;
}

uint64_t AudioFileObject::PacketToByte(AudioFileObject *this, AudioBytePacketTranslation *a2)
{
  result = 1885563711;
  mPacket = a2->mPacket;
  if ((mPacket & 0x8000000000000000) == 0)
  {
    v6 = *(this + 10);
    if (v6)
    {
      result = 0;
      v7 = mPacket * v6;
LABEL_4:
      a2->mByte = v7;
      a2->mFlags = 0;
      return result;
    }

    v8 = *(this + 15);
    if (v8)
    {
      v9 = *(v8 + 24);
      if (mPacket < v9)
      {
        CompressedPacketTable::operator[](&v10, v8, mPacket);
        result = 0;
        v7 = v10;
        goto LABEL_4;
      }

      if (v9 < 8)
      {
        return 1836020325;
      }

      else
      {
        CompressedPacketTable::operator[](&v10, v8, v9 - 1);
        result = 0;
        a2->mByte = vcvtmd_s64_f64((v10 + v11 - *(this + 9)) / v9 * a2->mPacket);
        a2->mFlags = 1;
      }
    }
  }

  return result;
}

uint64_t AudioFileObject::PacketToDependencyInfo(AudioFileObject *this, AudioPacketDependencyInfoTranslation *a2)
{
  v3 = *(this + 8);
  ioPropertyDataSize = 4;
  inSpecifier = v3;
  outPropertyData = 0;
  AudioFormatGetProperty(0x64726C6Cu, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
  mPacket = outPropertyData;
  if (a2->mPacket < outPropertyData)
  {
    mPacket = a2->mPacket;
  }

  a2->mIsIndependentlyDecodable = 1;
  a2->mNumberPrerollPackets = mPacket;
  return 0;
}

uint64_t AudioFileObject::ScanForIndependentPacket(uint64_t a1, int a2, void *a3)
{
  if (a2 != 1)
  {
    result = 0;
    v7 = *a3 - 1;
LABEL_10:
    a3[1] = v7;
    return result;
  }

  if (*(a1 + 40))
  {
    v5 = (*(*a1 + 248))(a1);
    goto LABEL_7;
  }

  (*(*a1 + 696))(a1, *a3 + 2, 0, 1);
  v8 = *(a1 + 120);
  if (v8)
  {
    v5 = *(v8 + 24);
LABEL_7:
    v7 = *a3 + 1;
    if (v7 >= v5)
    {
      result = 0;
      v7 = -1;
    }

    else
    {
      result = 0;
    }

    goto LABEL_10;
  }

  return 1885563711;
}

uint64_t AudioFileObject::FrameToPacket(AudioFileObject *this, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v6 = a2;
  v7 = *(this + 11);
  if (v7)
  {
    v8 = 0;
    *a3 = a2 / v7;
    *a4 = a2 % v7;
  }

  else
  {
    v8 = 1885563711;
    v11 = *(this + 15);
    if (v11)
    {
      v12 = 0;
      while (!v12)
      {
        v22[0] = 0;
        v22[1] = 0;
        v22[2] = v6;
        v23[0] = v11;
        v13 = *(v11 + 24);
        v23[1] = 0;
        std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,CompressedPacketTable::iterator,AudioStreamPacketDescriptionExtended,std::__identity,std::__less<void,void>>(&v18, v23, v22, v13);
        v14 = v19;
        if (v19 != *(v11 + 24))
        {
          *a3 = v19;
          if (!v14)
          {
            goto LABEL_26;
          }

          v15 = v18;
          CompressedPacketTable::operator[](v20, v18, v14);
          if (v21 > v6)
          {
            CompressedPacketTable::operator[](v20, v15, v14 - 1);
            LODWORD(v6) = v6 - v21;
LABEL_26:
            v8 = 0;
            *a4 = v6;
            return v8;
          }

          if (v13 - *a3 >= 2)
          {
            LODWORD(v6) = 0;
            ++*a3;
            goto LABEL_26;
          }
        }

        CompressedPacketTable::operator[](v23, v11, v13 - 1);
        if (v13 < 8)
        {
          v17 = 8;
        }

        else
        {
          v16 = v6 / (v23[2] / v13);
          if (v13 + 1 > v16)
          {
            v17 = v13 + 1;
          }

          else
          {
            v17 = v16;
          }
        }

        v12 = (*(*this + 696))(this, v17, 0, 1);
        if (!v12 || v12 == -39)
        {
          if (*(v11 + 24) == v13)
          {
            v12 = -39;
          }

          else
          {
            v12 = 0;
          }
        }
      }

      if (v12 == -39)
      {
        return 1885563711;
      }

      else
      {
        return v12;
      }
    }
  }

  return v8;
}

uint64_t AudioFileObject::PacketToFrame(AudioFileObject *this, uint64_t a2, uint64_t *a3)
{
  v5 = *(this + 11);
  if (v5)
  {
    result = 0;
    v7 = v5 * a2;
LABEL_3:
    *a3 = v7;
    return result;
  }

  result = (*(*this + 696))(this, a2 + 1, 0, 1);
  if (!result)
  {
    result = 1885563711;
    v9 = *(this + 15);
    if (v9)
    {
      if (*(v9 + 24) <= a2)
      {
        return 4294967257;
      }

      else if ((a2 & 0x8000000000000000) == 0)
      {
        if (a2)
        {
          CompressedPacketTable::operator[](v10, v9, a2 - 1);
          v7 = v11;
        }

        else
        {
          v7 = 0;
        }

        result = 0;
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t AudioFileObject::SetProperty(AudioFileObject *this, int a2, int a3, uint64_t *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = 1886681407;
  if (a2 > 1819243875)
  {
    if (a2 <= 1885564531)
    {
      if (a2 != 1819243876)
      {
        if (a2 == 1835493731)
        {
          v6 = *(*this + 352);
          v20 = *MEMORY[0x1E69E9840];

          return v6();
        }

        if (a2 == 1835756659)
        {
          v6 = *(*this + 376);
          v12 = *MEMORY[0x1E69E9840];

          return v6();
        }

        goto LABEL_78;
      }

      if (a3 != 8)
      {
        v5 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *v26 = 136315394;
        *&v26[4] = "AudioFileObject.cpp";
        v27 = 1024;
        v28 = 2045;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_77;
      }

      *v26 = *a4;
      *&v26[8] = 0;
      v13 = (*(*this + 520))(this, v26);
      goto LABEL_54;
    }

    if (a2 > 1935832163)
    {
      if (a2 != 1935832164)
      {
        if (a2 == 1935893603)
        {
          if (a3 != 8)
          {
            v5 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_78;
            }

            *v26 = 136315394;
            *&v26[4] = "AudioFileObject.cpp";
            v27 = 1024;
            v28 = 2032;
            v21 = MEMORY[0x1E69E9C10];
            v22 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_77;
          }

          *v26 = *a4;
          *&v26[8] = 0;
          v13 = (*(*this + 472))(this, v26);
          goto LABEL_54;
        }

        goto LABEL_78;
      }

      if (a3 != 4)
      {
        v5 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *v26 = 136315394;
        *&v26[4] = "AudioFileObject.cpp";
        v27 = 1024;
        v28 = 2070;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_77;
      }

      v16 = *a4;
      v9 = *(*this + 712);
      v17 = *MEMORY[0x1E69E9840];

      return v9();
    }

    if (a2 != 1885564532)
    {
      if (a2 == 1919380595)
      {
        v6 = *(*this + 400);
        v8 = *MEMORY[0x1E69E9840];

        return v6();
      }

      goto LABEL_78;
    }

    v14 = *a4;
    if (v14 > (*(*this + 248))(this))
    {
LABEL_51:
      v5 = 1869627199;
      goto LABEL_78;
    }

    v15 = *MEMORY[0x1E69E9840];

    return AudioFileObject::UpdateNumPackets(this, v14);
  }

  else
  {
    if (a2 > 1685289588)
    {
      if (a2 <= 1768842862)
      {
        if (a2 != 1685289589)
        {
          if (a2 == 1718383476)
          {
            v6 = *(*this + 216);
            v7 = *MEMORY[0x1E69E9840];

            return v6();
          }

          goto LABEL_78;
        }

        if (a3 == 4)
        {
          v5 = 0;
          *(this + 33) = *a4;
          goto LABEL_78;
        }

        v5 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *v26 = 136315394;
        *&v26[4] = "AudioFileObject.cpp";
        v27 = 1024;
        v28 = 2012;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%25s:%-5d  inDataSize is wrong";
LABEL_77:
        _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, v22, v26, 0x12u);
        goto LABEL_78;
      }

      if (a2 != 1768842863)
      {
        if (a2 == 1769172837)
        {
          if (a3 != 8)
          {
            v5 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_78;
            }

            *v26 = 136315394;
            *&v26[4] = "AudioFileObject.cpp";
            v27 = 1024;
            v28 = 2058;
            v21 = MEMORY[0x1E69E9C10];
            v22 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_77;
          }

          *v26 = *a4;
          *&v26[8] = 0;
          v13 = (*(*this + 496))(this, v26);
          goto LABEL_54;
        }

LABEL_78:
        v23 = *MEMORY[0x1E69E9840];
        return v5;
      }

      if (a3 != 8)
      {
        v5 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *v26 = 136315394;
        *&v26[4] = "AudioFileObject.cpp";
        v27 = 1024;
        v28 = 2019;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_77;
      }

      *v26 = *a4;
      *&v26[8] = 0;
      v13 = (*(*this + 448))(this, v26);
LABEL_54:
      v5 = v13;
      CACFDictionary::~CACFDictionary(v26);
      goto LABEL_78;
    }

    if (a2 != 1650683508)
    {
      if (a2 == 1668112752)
      {
        v6 = *(*this + 424);
        v19 = *MEMORY[0x1E69E9840];

        return v6();
      }

      if (a2 != 1684434292)
      {
        goto LABEL_78;
      }

      if (a3 != 40)
      {
        v5 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *v26 = 136315394;
        *&v26[4] = "AudioFileObject.cpp";
        v27 = 1024;
        v28 = 1964;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%25s:%-5d  Incorrect data size";
        goto LABEL_77;
      }

      v9 = *(*this + 192);
      v10 = *MEMORY[0x1E69E9840];

      return v9();
    }

    if (a3 != 8)
    {
      v5 = 561211770;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *v26 = 136315394;
      *&v26[4] = "AudioFileObject.cpp";
      v27 = 1024;
      v28 = 1972;
      v21 = MEMORY[0x1E69E9C10];
      v22 = "%25s:%-5d  Incorrect data size";
      goto LABEL_77;
    }

    v18 = *a4;
    if (v18 > (*(*this + 232))(this))
    {
      goto LABEL_51;
    }

    v24 = *(this + 33);
    *(this + 33) = 0;
    result = AudioFileObject::UpdateNumBytes(this, v18);
    *(this + 33) = v24;
    v25 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t AudioFileObject::UpdateNumPackets(AudioFileObject *this, uint64_t a2)
{
  if (a2 < 0)
  {
    return 4294967246;
  }

  if ((*(*this + 248))(this) != a2)
  {
    *(this + 136) = 1;
    if (!(*(*this + 224))(this))
    {
      *(this + 136) = 0;
    }

    (*(*this + 256))(this, a2);
    v4 = (*(*this + 248))(this);
    (*(*this + 240))(this, v4 * *(this + 12));
    if ((*(this + 100) & 2) != 0)
    {
      if (*(this + 33))
      {
        result = 0;
        *(this + 136) = 1;
        return result;
      }

      (*(*this + 224))(this);
    }
  }

  return 0;
}

uint64_t AudioFileObject::ReadPacketDataVBR_InTable(AudioFileObject *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v7 = *(this + 15);
  if (!v7)
  {
    return 1685348671;
  }

  v15 = (*(*this + 120))(this, a3, a5, a6);
  if (!v15)
  {
    CompressedPacketTable::operator[](v24, v7, a5);
    v16 = v24[0];
    v23 = *a3;
    if (a7)
    {
      v17 = (*(*this + 72))(this, a2, v24[0], &v23, a7);
      v15 = v17;
      if (v17 != -39 && v17 != 0)
      {
        *a3 = 0;
        *a6 = 0;
        return v15;
      }

      *a3 = v23;
      if (!a4)
      {
        return v15;
      }
    }

    else
    {
      v15 = 0;
      if (!a4)
      {
        return v15;
      }
    }

    if (*a6)
    {
      v20 = 0;
      p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
      do
      {
        CompressedPacketTable::operator[](v24, v7, a5 + v20);
        v22 = v24[1];
        *(p_mVariableFramesInPacket - 1) = v24[0] - v16;
        *p_mVariableFramesInPacket = v22;
        ++v20;
        p_mVariableFramesInPacket += 4;
      }

      while (v20 < *a6);
    }
  }

  return v15;
}

uint64_t AudioFileObject::HowManyPacketsCanBeReadIntoBuffer(AudioFileObject *this, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  v7 = *(this + 15);
  if (v7)
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  if (*a4 + a3 > v8)
  {
    *a4 = v8 - a3;
  }

  CompressedPacketTable::operator[](&v22, v7, a3);
  if (*a2 >= v23)
  {
    v10 = v22;
    v11 = *a4 + a3;
    CompressedPacketTable::operator[](&v22, v7, v11 - 1);
    v12 = v22 - v10 + v23;
    if (v12 <= *a2)
    {
      result = 0;
      *a2 = v12;
    }

    else
    {
      v13 = a3;
      v14 = v11;
      v15 = a3;
      do
      {
        v16 = (v14 + v15) >> 1;
        if (v16 >= v11)
        {
          break;
        }

        CompressedPacketTable::operator[](&v22, v7, (v14 + v15) >> 1);
        v17 = v22 - v10 + v23;
        v18 = *a2;
        if (v17 <= v18)
        {
          if (v17 >= v18)
          {
            v13 = (v14 + v15) >> 1;
            break;
          }

          v15 = v16 + 1;
          v13 = v16;
        }

        else
        {
          v14 = v16 - 1;
        }
      }

      while (v14 >= v15);
      v19 = *a4;
      if (v13 - a3 >= v19)
      {
        v20 = a3 + v19 - 1;
      }

      else
      {
        v20 = v13;
      }

      if (v13 - a3 >= v19)
      {
        v21 = *a4;
      }

      else
      {
        v21 = v13 - a3 + 1;
      }

      CompressedPacketTable::operator[](&v22, v7, v20);
      result = 0;
      *a2 = v23 + v22 - v10;
      *a4 = v21;
    }
  }

  else
  {
    *a2 = 0;
    *a4 = 0;
    return 4294967246;
  }

  return result;
}

unint64_t AudioFileObject::ReadPacketDataVBR(AudioFileObject *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  if (a3 || !a4 || a7)
  {
    if (!a3 || !*a3)
    {
      return 4294967246;
    }

    v16 = (*(*this + 696))(this, a5 + 1, 0, 1);
    if (!v16 || (v17 = v16, v16 == -39))
    {
      v18 = *(this + 15);
      if (v18)
      {
        v19 = *(v18 + 24);
        if (v19 <= a5)
        {
          *a3 = 0;
          *a6 = 0;
          return 4294967257;
        }

        else
        {
          if (*a6 + a5 <= v19)
          {
            return (*(*this + 128))(this, a2, a3, a4, a5, a6, a7);
          }

          v33 = *(this + 9);
          CompressedPacketTable::operator[](&v39, v18, a5);
          v20 = v39;
          v46 = *a3;
          v32 = v46;
          v45 = 0;
          (*(**(this + 13) + 24))(*(this + 13), &v45);
          v35 = v20;
          v21 = &v20[v33];
          if (v45 - v21 < v32)
          {
            v46 = v45 - v21;
          }

          v22 = (*(*this + 72))(this, a2, v35, &v46, a7);
          v23 = v22;
          if (v22 != -39 && v22)
          {
            *a3 = 0;
            *a6 = 0;
          }

          else
          {
            v40 = 0;
            v39 = &unk_1F033E8B8;
            v41 = v46;
            v42 = a7;
            v43 = v21;
            v44 = v21;
            v24 = (*(*this + 696))(this, a5 + 1 + *a6, &v39, 0);
            v17 = v24;
            if (!v24 || v24 == -39)
            {
              v34 = v23;
              LODWORD(v23) = 0;
              if (*a6)
              {
                v25 = *(v18 + 24);
                LODWORD(v26) = 0;
                if (v25 > a5)
                {
                  v23 = 0;
                  v27 = 0;
                  p_mDataByteSize = &a4->mDataByteSize;
                  while (1)
                  {
                    CompressedPacketTable::operator[](&v36, v18, a5 + v23);
                    v29 = v38;
                    v30 = v36 - v35;
                    v26 = v36 - v35 + v38;
                    if (v26 > v46)
                    {
                      break;
                    }

                    *(p_mDataByteSize - 1) = v37;
                    *p_mDataByteSize = v29;
                    *(p_mDataByteSize - 3) = v30;
                    ++v23;
                    p_mDataByteSize += 4;
                    v31 = v23 < *a6 && (v23 + a5) < v25;
                    v27 = v26;
                    if (!v31)
                    {
                      goto LABEL_37;
                    }
                  }

                  LODWORD(v26) = v27;
                }
              }

              else
              {
                LODWORD(v26) = 0;
              }

LABEL_37:
              *a3 = v26;
              *a6 = v23;
              v23 = v34;
            }

            if (v17 && v17 != -39)
            {
              return v17;
            }
          }

          return v23;
        }
      }

      else
      {
        return 1685348671;
      }
    }

    return v17;
  }

  v14 = *(*this + 88);

  return v14();
}

uint64_t AudioFileObject::Close(AudioFileObject *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 13) = 0;
  return 0;
}

uint64_t AudioFileObject::Initialize(AudioFileObject *this, CFURLRef url, const AudioStreamBasicDescription *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    if ((open(buffer, 1026, 0) & 0x80000000) == 0)
    {
      AudioFileObject::OpenFile(this);
    }

    v5 = *__error();
    if (v5 <= 0x1F)
    {
      if (((1 << v5) & 0x40022002) != 0)
      {
        v4 = 4294967242;
        goto LABEL_13;
      }

      if (((1 << v5) & 0x1800000) != 0)
      {
        v4 = 4294967254;
        goto LABEL_13;
      }

      if (v5 == 31)
      {
        v4 = 561017960;
        goto LABEL_13;
      }
    }

    v4 = 2003334207;
    goto LABEL_13;
  }

  v4 = 4294967253;
LABEL_13:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void AudioFileObject::DoOpenWithCallbacks(AudioFileObject *this, void *a2, int (*a3)(void *, uint64_t, unsigned int, void *, unsigned int *), unint64_t a4, uint64_t (*a5)(void *), unint64_t a6)
{
  if (a4 | a6)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  *(this + 100) = v6;
  operator new();
}

DataSource *AudioFileObject::SetDataSource(AudioFileObject *this, DataSource *a2)
{
  result = *(this + 13);
  if (result != a2)
  {
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 13) = a2;
  }

  return result;
}

uint64_t AudioFileObject::DoInitialize(AudioFileObject *this, const __CFURL *a2, const AudioStreamBasicDescription *a3, uint64_t a4)
{
  AudioFileObject::SetURL(this, a2);
  *(this + 100) = 3;
  *(this + 138) = (a4 & 2) == 0;
  v8 = *(*this + 32);

  return v8(this, a2, a3, a4);
}

uint64_t AudioFileObject::UpdateSizeIfNeeded(AudioFileObject *this)
{
  if (!*(this + 136))
  {
    return 0;
  }

  result = (*(*this + 224))(this);
  if (!result)
  {
    *(this + 136) = 0;
  }

  return result;
}

uint64_t AudioFileObject::DoOptimize(AudioFileObject *this)
{
  if ((*(this + 100) & 2) == 0)
  {
    return 1886547263;
  }

  if (*(this + 136))
  {
    result = (*(*this + 224))(this);
    if (result)
    {
      return result;
    }

    *(this + 136) = 0;
  }

  if (*(this + 20))
  {
    return 0;
  }

  v3 = *(*this + 64);

  return v3(this);
}

uint64_t AudioFileObject::SizeChanged(AudioFileObject *this)
{
  if ((*(this + 100) & 2) == 0)
  {
    return 0;
  }

  if (*(this + 33))
  {
    *(this + 136) = 1;
    return 0;
  }

  return (*(*this + 224))();
}

uint64_t AudioFileObject::GetPacketTable(AudioFileObject *this, int a2)
{
  result = *(this + 15);
  if (a2)
  {
    if (!result)
    {
      operator new();
    }
  }

  return result;
}

uint64_t AudioFileObject::GetPacketTableSize(AudioFileObject *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t AudioFileObject::GetPacketDescriptions(AudioFileObject *this, int a2, unsigned int *a3, AudioStreamPacketDescription *a4)
{
  if (!a4)
  {
    return 2003334207;
  }

  v6 = *(this + 15);
  if (v6)
  {
    v7 = *a3;
    v8 = *(v6 + 24);
    if (v8 < *a3 + a2)
    {
      v7 = v8 - a2;
      *a3 = v8 - a2;
    }

    if (v7)
    {
      v9 = 0;
      p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
      do
      {
        CompressedPacketTable::operator[](v14, *(this + 15), (a2 + v9));
        v12 = v14[1];
        *(p_mVariableFramesInPacket - 1) = v14[0] - *(this + 9);
        *p_mVariableFramesInPacket = v12;
        p_mVariableFramesInPacket += 4;
        ++v9;
      }

      while (v9 < *a3);
    }

    return 0;
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t AudioFileObject::MoveData(AudioFileObject *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  CADeprecated::CAAutoFree<char>::CAAutoFree(&v18, 0x100000uLL);
  if (a2 >= a3)
  {
    if (a4 >= 1)
    {
      v10 = a4;
      while (1)
      {
        v17 = 0;
        if (v10 >= 0x100000)
        {
          v11 = 0x100000;
        }

        else
        {
          v11 = v10;
        }

        v4 = (*(**(this + 13) + 48))(*(this + 13), 0, a4 - v10 + a2, v11, v18, &v17);
        if (v4)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          *buf = 136315394;
          v20 = "AudioFileObject.cpp";
          v21 = 1024;
          v22 = 2404;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  MoveData ReadBytes failed";
          goto LABEL_30;
        }

        v4 = (*(**(this + 13) + 56))(*(this + 13), 0, a4 - v10 + a3, v11, v18, &v17);
        if (v4)
        {
          break;
        }

        v12 = v10 <= v11;
        v10 -= v11;
        if (v12)
        {
          goto LABEL_21;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 136315394;
      v20 = "AudioFileObject.cpp";
      v21 = 1024;
      v22 = 2407;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  WriteBytes failed";
      goto LABEL_30;
    }

LABEL_21:
    v4 = 0;
    goto LABEL_31;
  }

  if (a4 < 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v17 = 0;
    if (a4 >= 0x100000)
    {
      v9 = 0x100000;
    }

    else
    {
      v9 = a4;
    }

    a4 -= v9;
    v4 = (*(**(this + 13) + 48))(*(this + 13), 0, a4 + a2, v9, v18, &v17);
    if (v4)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 136315394;
      v20 = "AudioFileObject.cpp";
      v21 = 1024;
      v22 = 2390;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  MoveData ReadBytes failed";
      goto LABEL_30;
    }

    v4 = (*(**(this + 13) + 56))(*(this + 13), 0, a4 + a3, v9, v18, &v17);
    if (v4)
    {
      break;
    }

    if (a4 <= 0)
    {
      goto LABEL_21;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_31;
  }

  *buf = 136315394;
  v20 = "AudioFileObject.cpp";
  v21 = 1024;
  v22 = 2393;
  v13 = MEMORY[0x1E69E9C10];
  v14 = "%25s:%-5d  WriteBytes failed";
LABEL_30:
  _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
LABEL_31:
  if (v18)
  {
    free(v18);
  }

LABEL_33:
  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

void FindIPCAURegistrationsFromAppBundles2()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v1 = [NSClassFromString(&cfstr_Lsapplicationw.isa) defaultWorkspace];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = [v1 applicationsWithAudioComponents];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 audioComponents];
        if (v9)
        {
          CFDictionaryAddValue(Mutable, [v8 applicationIdentifier], v9);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  if (kInterAppAudioScope)
  {
    v10 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "IPCAURegistrar.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1290;
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Registering AUs", buf, 0x12u);
  }

LABEL_16:
  v11 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
  v12 = *(v11 + 224);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14IPCAURegistrar25RegisterAUsFromAppBundlesEPK14__CFDictionary_block_invoke;
  v20 = &__block_descriptor_48_e5_v8__0l;
  v21 = v11;
  v22 = Mutable;
  dispatch_sync(v12, buf);
  CFRelease(Mutable);
  objc_autoreleasePoolPop(v0);
  v13 = *MEMORY[0x1E69E9840];
}

void SwitchToAUApp(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(NSClassFromString(&cfstr_Bkssystemservi.isa));
  if ([v3 pidForApplication:a1] >= 1)
  {
    [v3 openApplication:a1 options:0 clientPort:objc_msgSend(v3 withResult:{"createClientPort"), &__block_literal_global_15207}];
  }

  objc_autoreleasePoolPop(v2);
}

void __SwitchToAUApp_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_Openapplicatio.isa, a2);
  }
}

uint64_t MP4AudioFile::SetAlbumArtwork(MP4AudioFile *this, CFTypeRef cf)
{
  result = 1886681407;
  if ((*(this + 100) & 2) != 0)
  {
    v4 = *(this + 21);
    if (v4 == 1832149606 || v4 == 1832149350)
    {
      *(this + 68) = cf;
      CFRetain(cf);
      result = 0;
      *(this + 528) = 1;
    }
  }

  return result;
}

uint64_t MP4AudioFile::GetAlbumArtwork(MP4AudioFile *this, const __CFData **a2)
{
  v4 = *(this + 68);
  if (v4)
  {
    CFRetain(v4);
    v5 = *(this + 68);
  }

  else
  {
    v6 = *(this + 75);
    if (v6)
    {
      v8 = 0;
      MP4BoxParser_iTunesMeta::CopyMetaItemData(v6, 1668249202, &v8);
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 1667787583;
  }
}

uint64_t MP4AudioFile::SetSourceBitDepth(MP4AudioFile *this, int a2)
{
  result = 1886681407;
  if ((*(this + 100) & 2) != 0)
  {
    v4 = *(this + 21);
    if ((v4 == 1832149606 || v4 == 1832149350) && *(this + 8) >> 8 == 6381923)
    {
      result = 0;
      *(this + 131) = a2;
    }
  }

  return result;
}

uint64_t MP4AudioFile::GetSourceBitDepth(MP4AudioFile *this, int *a2)
{
  if ((*(this + 100) & 2) != 0)
  {
    v2 = (this + 524);
  }

  else
  {
    v2 = (*(this + 30) + 424);
  }

  *a2 = *v2;
  return 0;
}

uint64_t MP4AudioFile::PacketRangeUpperBound(MP4AudioFile *this, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = 1885563711;
  *a4 = 0;
  v9 = (*(*this + 248))(this);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v10 = v9 - a2;
    if (v9 > a2)
    {
      v11 = *a3;
      if ((*a3 & 0x8000000000000000) == 0)
      {
        if (v10 < v11)
        {
          *a3 = v10;
          LODWORD(v11) = v9 - a2;
        }

        if ((*(this + 100) & 2) != 0)
        {
          ByteCountForPackets = NUMovieBox::GetByteCountForPackets(*(this + 31), v11);
        }

        else
        {
          v12 = *(this + 30);
          if (!v12)
          {
            return 2003334207;
          }

          ByteCountForPackets = MP4BoxParser_Track::GetByteCountForPackets(v12, a2, v11);
        }

        v8 = 0;
        *a4 = ByteCountForPackets;
      }
    }
  }

  return v8;
}

BOOL MP4AudioFile::IsDataFormatSupported(MP4AudioFile *this, const AudioStreamBasicDescription *a2)
{
  result = 0;
  v4 = *(this + 21);
  if (v4 <= 1832149349)
  {
    v5 = v4 == 862416946 || v4 == 862417008;
    if (v5)
    {
      mFormatID = a2->mFormatID;
      return mFormatID == 1365470320 || mFormatID == 1935764850 || mFormatID == 1935767394 || mFormatID >> 8 == 6381923;
    }
  }

  else
  {
    switch(v4)
    {
      case 1832149350:
        return IsSupportedM4AFormat(a2->mFormatID);
      case 1832149606:
        v9 = a2->mFormatID;
        v5 = v9 == 1885430115;
        v10 = v9 >> 8;
        return v5 || v10 == 6381923;
      case 1836069990:
        return IsSupportedMP4Format(a2->mFormatID);
    }
  }

  return result;
}

BOOL IsSupportedMP4Format(int a1)
{
  result = 1;
  if (a1 <= 1885433954)
  {
    if (a1 > 1667591279)
    {
      if (a1 <= 1752594530)
      {
        if (a1 == 1667591280 || a1 == 1700998451)
        {
          return result;
        }

        v5 = 1718378851;
      }

      else if (a1 > 1836069683)
      {
        if (a1 == 1836069684)
        {
          return result;
        }

        v5 = 1885430115;
      }

      else
      {
        if (a1 == 1752594531)
        {
          return result;
        }

        v5 = 1819304813;
      }

      goto LABEL_43;
    }

    if (a1 <= 1365470319)
    {
      if ((a1 - 778924081) < 3)
      {
        return result;
      }

      goto LABEL_45;
    }

    if (a1 <= 1634492770)
    {
      if (a1 != 1365470320)
      {
        v5 = 1633889587;
        goto LABEL_43;
      }

      return 0;
    }

    if (a1 == 1634492771)
    {
      return result;
    }

    v5 = 1634497332;
LABEL_43:
    if (a1 == v5)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (a1 <= 1902928226)
  {
    if (a1 <= 1902207794)
    {
      if (a1 == 1885433955 || a1 == 1886745441)
      {
        return result;
      }

      v6 = 24931;
    }

    else
    {
      if (a1 > 1902469938)
      {
        if (a1 == 1902469939)
        {
          return result;
        }

        v5 = 1902537827;
        goto LABEL_43;
      }

      if (a1 == 1902207795)
      {
        return result;
      }

      v6 = 28771;
    }

    v5 = v6 | 0x71610000;
    goto LABEL_43;
  }

  if (a1 > 1936487266)
  {
    if (a1 > 1953986160)
    {
      if (a1 == 1953986161)
      {
        return result;
      }

      v5 = 1970495843;
    }

    else
    {
      if (a1 == 1936487267)
      {
        return result;
      }

      v5 = 1936487278;
    }

    goto LABEL_43;
  }

  if (a1 <= 1935764849)
  {
    if (a1 == 1902928227)
    {
      return result;
    }

    v5 = 1903522657;
    goto LABEL_43;
  }

  if (a1 == 1935764850 || a1 == 1935767394)
  {
    return 0;
  }

LABEL_45:
  if (a1 >> 8 != 6381923)
  {
    v13 = v1;
    v14 = v2;
    v11 = a1;
    v12 = 0x6D70346600000000;
    v10 = 0;
    outPropertyData = 0;
    ioPropertyDataSize = 12;
    if (AudioFormatGetProperty(0x636E6964u, 0xCu, &v11, &ioPropertyDataSize, &outPropertyData))
    {
      v7 = 1;
    }

    else
    {
      v7 = v10 == 0;
    }

    return !v7;
  }

  return result;
}

BOOL IsSupportedM4AFormat(int a1)
{
  result = 1;
  if (a1 <= 1700998450)
  {
    if ((a1 - 778924081) < 3 || a1 == 1633889587)
    {
      return result;
    }

    v3 = 1634492771;
LABEL_13:
    if (a1 != v3)
    {
      return a1 >> 8 == 6381923;
    }

    return result;
  }

  if (a1 > 1885430114)
  {
    if (a1 == 1885430115 || a1 == 1885430579)
    {
      return result;
    }

    v3 = 1885692723;
    goto LABEL_13;
  }

  if (a1 != 1700998451 && a1 != 1718378851)
  {
    v3 = 1819304813;
    goto LABEL_13;
  }

  return result;
}

uint64_t MP4AudioFile::GetAseSize(MP4AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  *a2 = 8;
  *a3 = 0;
  return 0;
}

uint64_t MP4AudioFile::GetLoudnessInfoSize(MP4AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  *a2 = 8;
  *a3 = 1;
  return 0;
}

uint64_t MP4AudioFile::SetLoudnessInfo(MP4AudioFile *this, CACFDictionary *a2)
{
  if ((*(this + 100) & 2) == 0)
  {
    return 1886547263;
  }

  if ((CACFDictionary::HasKey(a2, @"main loudness parameters") & 1) != 0 || (CACFDictionary::HasKey(a2, @"dialogue anchor parameters") & 1) != 0 || CACFDictionary::HasKey(a2, @"ISO loudness box"))
  {
    v5 = *(this + 72);
    if (v5)
    {
      CFRelease(v5);
      *(this + 72) = 0;
    }

    v6 = *a2;
    *(this + 72) = *a2;
    CFRetain(v6);
  }

  v7 = *(this + 21);
  if (v7 == 1832149606 || v7 == 1832149350)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = 257;
    CACFDictionary::GetCACFDictionary(a2, @"sound check info", &Mutable);
    if (Mutable)
    {
      (*(*this + 472))(this, &Mutable);
    }

    v8 = 0;
    if (CACFDictionary::GetString(a2, @"media kind", &v8))
    {
      *(this + 572) = GetStoreItemKindFromLID(a2);
    }

    CACFDictionary::~CACFDictionary(&Mutable);
  }

  if (*(this + 64) || *(this + 72))
  {
    return 0;
  }

  result = 0;
  *(this + 572) = 0;
  return result;
}

void sub_18F8D8A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t MP4AudioFile::SetAseBoxes(MP4AudioFile *this, const void **a2)
{
  if ((*(this + 100) & 2) == 0)
  {
    return 1886547263;
  }

  v5 = *(this + 73);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *a2;
  *(this + 73) = *a2;
  CFRetain(v6);
  return 0;
}

uint64_t MP4AudioFile::GetAseBoxes(MP4AudioFile *this, CACFDictionary *a2)
{
  v2 = *(*(this + 30) + 432);
  if (!v2)
  {
    return 1886681407;
  }

  CACFDictionary::operator=(a2, v2);
  return 0;
}

uint64_t MP4AudioFile::GetLoudnessInfo(MP4AudioFile *this, CACFDictionary *a2)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = 257;
  v4 = *(this + 72);
  if (v4)
  {
    CACFDictionary::SetCFMutableDictionaryFromCopy(a2, v4, 1);
  }

  else
  {
    LoudnessInfo = MP4BoxParser_Track::GetLoudnessInfo(*(this + 30), &cf);
    if (LoudnessInfo)
    {
      goto LABEL_5;
    }

    v7 = cf != 0;
    if (cf)
    {
      CACFDictionary::SetCFMutableDictionaryFromCopy(a2, cf, 1);
      CFRelease(cf);
    }

    if (!MP4AudioFile::GetSoundCheckFromMetaData(this, &Mutable))
    {
      CACFDictionary::AddDictionary(a2, @"sound check info", Mutable);
      v7 = 1;
    }

    v8 = *(this + 75);
    if (v8 && (StoreKind = MP4BoxParser_iTunesMeta::GetStoreKind(v8), (v10 = CopyMediaKindStringFromStoreItemKind(StoreKind)) != 0))
    {
      CACFDictionary::AddString(a2, @"media kind", v10);
      CFRelease(v10);
    }

    else if (!v7)
    {
      LoudnessInfo = 1886681407;
      goto LABEL_5;
    }
  }

  LoudnessInfo = 0;
LABEL_5:
  CACFDictionary::~CACFDictionary(&Mutable);
  return LoudnessInfo;
}

void sub_18F8D8C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t MP4AudioFile::GetSoundCheckFromMetaData(MP4AudioFile *this, CACFDictionary *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v4 = (*(**(this + 13) + 24))(*(this + 13), &v19);
  if (!v4)
  {
    BoxInfo = FindBoxInfo(*(this + 13), 0, v19, 1836019574, 0, *(this + 28));
    if (BoxInfo)
    {
      v6 = *(this + 13);
      v7 = *(BoxInfo + 16);
      v30 = &unk_1F0330650;
      (*(*v6 + 88))(&v31, v6, v7);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 8;
      v30 = off_1F0330620;
      v37 = 1;
      v38 = 0;
      v4 = MP4BoxParser_Movie::Init(&v30);
      if (!v4)
      {
        v8 = 0;
        while (1)
        {
          v9 = v38;
          if (!v38 || (v10 = *(v38 + 8), v10 == v38))
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            do
            {
              if (*(v10 + 16) == 1969517665)
              {
                ++v11;
              }

              v10 = *(v10 + 8);
            }

            while (v10 != v38);
          }

          if (v4 >= v11)
          {
            break;
          }

          v12 = v31;
          v13 = (v30[3])(&v30);
          v14 = FindBoxInfo(v12, v13, v34, 1969517665, v4, v9);
          if (v14)
          {
            v15 = *(this + 13);
            v16 = *(v14 + 16);
            v20 = &unk_1F0330650;
            (*(*v31 + 88))(&v21, v31, v16 + 8);
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v26 = 8;
            v27 = 0;
            v28 = 0;
            v20 = &unk_1F032D7A8;
            v29 = v15;
            if (!MP4BoxParser_iTunesNORMMeta::Init(&v20))
            {
              MP4BoxParser_iTunesNORMMeta::FillSoundCheckDictionary(&v20, a2);
              v8 = 1;
            }

            MP4BoxParser_Meta::~MP4BoxParser_Meta(&v20);
          }

          LODWORD(v4) = v4 + 1;
        }

        if (v8)
        {
          v4 = 0;
        }

        else
        {
          v4 = 1886681407;
        }
      }

      MP4BoxParser_Movie::~MP4BoxParser_Movie(&v30);
    }

    else
    {
      v4 = 1685348671;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18F8D8F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MP4BoxParser_Movie::~MP4BoxParser_Movie(va);
  _Unwind_Resume(a1);
}

uint64_t MP4AudioFile::SetSoundCheckDictionary(MP4AudioFile *this, CACFDictionary *a2)
{
  result = 1886681407;
  v4 = *(this + 21);
  v5 = v4 == 1832149606 || v4 == 1832149350;
  if (v5 && (*(this + 100) & 2) != 0)
  {
    v7 = *(this + 13);
    v8 = malloc_type_malloc(20 * v7, 0x8F2E0D29uLL);
    if (20 * v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = std::bad_alloc::bad_alloc(exception);
    }

    v10 = v8;
    bzero(v8, 20 * v7);
    result = GetSCFields(a2, v10, v7);
    if (!result)
    {
      v11 = *(this + 64);
      if (v11)
      {
        free(v11);
      }

      result = 0;
      *(this + 64) = v10;
      *(this + 528) = 1;
    }
  }

  return result;
}

uint64_t MP4AudioFile::GetSoundCheckDictionarySize(MP4AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 8;
  }

  if (a3)
  {
    v3 = *(this + 21);
    if (v3 == 1832149606 || v3 == 1832149350)
    {
      v5 = (*(this + 100) >> 1) & 1;
    }

    else
    {
      v5 = 0;
    }

    *a3 = v5;
  }

  return 0;
}

uint64_t MP4AudioFile::SetInfoDictionary(MP4AudioFile *this, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRetain(*a2);
    v4 = *a2;
  }

  else
  {
    v4 = 0;
  }

  *(this + 67) = v4;
  *(this + 528) = 1;
  return 0;
}

uint64_t MP4AudioFile::GetInfoDictionary(MP4AudioFile *this, CACFDictionary *a2)
{
  if ((*(this + 100) & 2) != 0 && (v4 = *(this + 67)) != 0)
  {
    CACFDictionary::SetCFMutableDictionaryFromCopy(a2, v4, 0);
  }

  else
  {
    v5 = *(this + 75);
    if (v5)
    {
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(v5, -1451789708, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), -1455336876, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), -1453233054, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), -1451987089, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), -1452383891, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), -1453039239, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), -1453101708, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), 1953329263, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), 1668313716, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), -1453230732, a2);
      MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), 1953655662, a2);
      v5 = MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), -1452841618, a2);
      if (v5)
      {
        v5 = MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(*(this + 75), 1735291493, a2);
      }
    }

    AudioFileObject::AddDurationToInfoDictionary(v5, a2, this + 56);
  }

  return 0;
}

uint64_t MP4AudioFile::GetInfoDictionarySize(MP4AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 8;
  }

  return 0;
}

uint64_t MP4AudioFile::SetChannelLayout(MP4AudioFile *this, UInt32 a2, AudioChannelLayout *inSpecifier)
{
  if ((*(this + 100) & 2) == 0)
  {
    return 1886547263;
  }

  v14 = v3;
  v15 = v4;
  if (!inSpecifier)
  {
    return 4294967246;
  }

  if (*(this + 8) != 1819304813)
  {
    return 1886681407;
  }

  v9 = *(this + 13);
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  result = AudioFormatGetProperty(0x6E63686Du, a2, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (result)
  {
    return result;
  }

  if (outPropertyData != v9)
  {
    return 4294967246;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 19, inSpecifier, inSpecifier + a2, a2);
  outPropertyDataSize = 0;
  if (!AudioFormatGetPropertyInfo(0x636C636Eu, *(this + 40) - *(this + 19), *(this + 19), &outPropertyDataSize))
  {
    std::vector<unsigned char>::resize((this + 176), outPropertyDataSize);
    if (AudioFormatGetProperty(0x636C636Eu, *(this + 40) - *(this + 19), *(this + 19), &outPropertyDataSize, *(this + 22)))
    {
      v10 = 0;
    }

    else
    {
      v10 = outPropertyDataSize;
    }

    std::vector<unsigned char>::resize((this + 176), v10);
  }

  return 0;
}

uint64_t MP4AudioFile::GetChannelLayout(MP4AudioFile *this, unsigned int *a2, AudioChannelLayout *__dst)
{
  PropertyInfo = 561211770;
  if (a2)
  {
    if ((*(this + 100) & 2) != 0)
    {
      v9 = *(this + 8);
      if (v9 == 1819304813)
      {
        v10 = *a2;
        v11 = *(this + 19);
        v12 = *(this + 20) - v11;
        if (v12 <= v10)
        {
          memcpy(__dst, v11, v12);
          PropertyInfo = 0;
          *a2 = *(this + 40) - *(this + 38);
        }
      }

      else
      {
        v13 = *(this + 18);
        if (v13)
        {
          if (*a2 >= GetACLSize(*(this + 8), a2, __dst))
          {
            v14 = *(this + 35);
            outPropertyDataSize = 0;
            memset(inSpecifier, 0, sizeof(inSpecifier));
            DWORD2(inSpecifier[0]) = v9;
            v24 = 0;
            v25 = v13;
            v26 = v14;
            PropertyInfo = AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, inSpecifier, &outPropertyDataSize);
            if (!PropertyInfo)
            {
              v15 = malloc_type_malloc(outPropertyDataSize, 0x87CD033DuLL);
              if (!v15 && outPropertyDataSize)
              {
                exception = __cxa_allocate_exception(8uLL);
                v21 = std::bad_alloc::bad_alloc(exception);
              }

              PropertyInfo = AudioFormatGetProperty(0x666C7374u, 0x38u, inSpecifier, &outPropertyDataSize, v15);
              if (!PropertyInfo)
              {
                v16 = *(v15 + 12 * (outPropertyDataSize / 0x30) - 2);
                __dst->mChannelBitmap = 0;
                __dst->mNumberChannelDescriptions = 0;
                __dst->mChannelLayoutTag = v16;
                *a2 = 32;
              }

              free(v15);
            }
          }
        }

        else
        {
          return 2003334207;
        }
      }
    }

    else
    {
      v7 = *(this + 30);
      InfoFromTrackSubBoxes = MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v7);
      if (InfoFromTrackSubBoxes)
      {
        return InfoFromTrackSubBoxes;
      }

      if (*a2 < *(v7 + 93))
      {
        return PropertyInfo;
      }

      v17 = *(this + 30);
      InfoFromTrackSubBoxes = MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v17);
      if (InfoFromTrackSubBoxes)
      {
        return InfoFromTrackSubBoxes;
      }

      else
      {
        v18 = *(v17 + 372);
        if (*a2 >= v18)
        {
          *a2 = v18;
          memcpy(__dst, *(v17 + 376), *(v17 + 372));
          return 0;
        }
      }
    }
  }

  return PropertyInfo;
}

uint64_t GetACLSize(int a1, unsigned int a2, void *a3)
{
  result = 0;
  if (a1 <= 1832149348)
  {
    if (a1 == 1633889587 || a1 == 1634492771)
    {
      return 32;
    }

    v5 = 1700998451;
    goto LABEL_10;
  }

  if (a1 > 1935764849)
  {
    if (a1 == 1935767394)
    {
      return 32;
    }

    v5 = 1935764850;
LABEL_10:
    if (a1 != v5)
    {
      return result;
    }

    return 32;
  }

  if (a1 != 1832149349)
  {
    v5 = 1836069985;
    goto LABEL_10;
  }

  return 32;
}

uint64_t MP4AudioFile::GetChannelLayoutSize(MP4AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  v5 = *(this + 8);
  if (a3)
  {
    *a3 = (v5 == 1819304813) & (*(this + 100) >> 1);
  }

  if (!a2)
  {
    return 0;
  }

  *a2 = 0;
  if ((*(this + 100) & 2) != 0)
  {
    if (v5 == 1819304813)
    {
      ACLSize = *(this + 40) - *(this + 38);
    }

    else
    {
      if (!*(this + 18))
      {
        return 2003334207;
      }

      ACLSize = GetACLSize(v5, a2, a3);
    }
  }

  else
  {
    v6 = *(this + 30);
    result = MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v6);
    if (result)
    {
      return result;
    }

    ACLSize = *(v6 + 93);
  }

  result = 0;
  *a2 = ACLSize;
  return result;
}

uint64_t MP4AudioFile::SetMagicCookieData(MP4AudioFile *this, UInt32 inSpecifierSize, char *inSpecifier)
{
  if ((*(this + 100) & 2) == 0)
  {
    return 1886547263;
  }

  v3 = 1667787583;
  if (!inSpecifierSize || !inSpecifier)
  {
    return v3;
  }

  v8 = *(this + 3);
  v9 = *(this + 8);
  ioPropertyDataSize = 40;
  v10 = *(this + 40);
  outPropertyData = *(this + 24);
  v19 = v10;
  v20 = *(this + 7);
  if (!AudioFormatGetProperty(0x666D7469u, inSpecifierSize, inSpecifier, &ioPropertyDataSize, &outPropertyData))
  {
    PropertyInfo = (*(*this + 192))(this, &outPropertyData);
    if (PropertyInfo)
    {
      return PropertyInfo;
    }

    v12 = *&outPropertyData;
    if (v8 != *&outPropertyData)
    {
      *(this + 114) = *&outPropertyData;
      v13 = *(this + 31);
      *(v13 + 28) = v12;
      if (*(v13 + 386) == 1)
      {
        *(**(v13 + 390) + 4) = DWORD1(v19);
      }
    }
  }

  if (v9 != 1935767394 && v9 != 1935764850)
  {
    if (v9 == 1634492771)
    {
      if (*(inSpecifier + 1) == 1634562662)
      {
        if (inSpecifierSize < 0x38)
        {
          goto LABEL_23;
        }
      }

      else if (inSpecifierSize != 24 && inSpecifierSize != 48)
      {
        goto LABEL_23;
      }
    }

    v3 = 0;
LABEL_22:
    v14 = 1;
    goto LABEL_24;
  }

  if (inSpecifierSize == 47)
  {
    v3 = 0;
    *(inSpecifier + 26) = 1919770980;
    goto LABEL_22;
  }

LABEL_23:
  v14 = 0;
LABEL_24:
  v15 = *(this + 76);
  if (v15)
  {
    MEMORY[0x193ADF220](v15, 0x1000C403E1C8BA9);
    *(this + 76) = 0;
  }

  if (v14)
  {
    v16 = *(this + 18);
    if (v16)
    {
      *(this + 18) = 0;
      MEMORY[0x193ADF1F0](v16, 0x1000C8077774924);
      *(this + 35) = 0;
    }

    if (inSpecifierSize < 0x32 || v9 != 1718378851 || *(inSpecifier + 1) == 1632396900)
    {
      if (!*(this + 18))
      {
        *(this + 35) = inSpecifierSize;
        operator new[]();
      }

      if ((*(*this + 280))(this))
      {
        operator new();
      }

      return 0;
    }

    outPropertyDataSize = 50;
    PropertyInfo = AudioFormatGetPropertyInfo(0x6D636466u, inSpecifierSize, inSpecifier, &outPropertyDataSize);
    if (!PropertyInfo)
    {
      *(this + 35) = outPropertyDataSize;
      operator new[]();
    }

    return PropertyInfo;
  }

  return v3;
}

uint64_t MP4AudioFile::GetMagicCookieData(const void **this, unsigned int *a2, void *__dst)
{
  v3 = 2003334207;
  if (__dst)
  {
    if (a2)
    {
      if ((*(this + 100) & 2) == 0 || this[18])
      {
        v4 = *(this + 35);
        v3 = 561211770;
        if (*a2 >= v4)
        {
          memcpy(__dst, this[18], v4);
          return 0;
        }
      }
    }

    else
    {
      return 561211770;
    }
  }

  return v3;
}

uint64_t MP4AudioFile::GetMagicCookieDataSize(MP4AudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = *(this + 100) & 2;
  }

  if (a2)
  {
    *a2 = *(this + 35);
  }

  return 0;
}

uint64_t MP4AudioFile::PacketToDependencyInfo(MP4AudioFile *this, AudioPacketDependencyInfoTranslation *a2)
{
  v4 = (*(*this + 280))(this);
  v5 = *(this + 100);
  if (v4)
  {
    if ((*(this + 100) & 2) != 0)
    {
      v7 = (this + 312);
    }

    else
    {
      v6 = *(this + 30);
      MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v6);
      v7 = (v6 + 240);
      if ((*(this + 100) & 2) == 0)
      {
        v11 = *(this + 30);
        MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v11);
        v8 = (v11 + 296);
        goto LABEL_9;
      }
    }

    v8 = (this + 368);
LABEL_9:

    return PacketToDependencyInfoForRestrictedRandomAccess(a2, v7, v8);
  }

  if ((*(this + 100) & 2) != 0)
  {
    v10 = (this + 256);
  }

  else
  {
    v9 = *(this + 30);
    MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v9);
    v10 = (v9 + 152);
  }

  if (*v10 == 1)
  {
    a2->mIsIndependentlyDecodable = 1;
    v13.mPacket = a2->mPacket;
    v13.mRollDistance = 0;
    PacketToRollDistanceForRollRecovery(&v13, v10);
    a2->mNumberPrerollPackets = v13.mRollDistance;
  }

  else
  {
    AudioFileObject::PacketToDependencyInfo(this, a2);
  }

  return 0;
}

uint64_t MP4AudioFile::ScanForIndependentPacket(uint64_t a1, int a2, AudioIndependentPacketTranslation *a3)
{
  if ((*(*a1 + 280))(a1))
  {
    if ((*(a1 + 100) & 2) != 0)
    {
      v7 = (a1 + 312);
    }

    else
    {
      v6 = *(a1 + 240);
      MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v6);
      v7 = (v6 + 240);
      if ((*(a1 + 100) & 2) == 0)
      {
        v10 = *(a1 + 240);
        MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v10);
        v8 = (v10 + 296);
        goto LABEL_10;
      }
    }

    v8 = (a1 + 368);
LABEL_10:

    return ScanForIndependentPacketWithRestrictedRandomAccess(a2 == 1, a3, v7, v8);
  }

  return AudioFileObject::ScanForIndependentPacket(a1, a2, a3);
}

uint64_t MP4AudioFile::PacketToRollDistance(MP4AudioFile *this, AudioPacketRollDistanceTranslation *a2)
{
  a2->mRollDistance = 0;
  v4 = (*(*this + 280))(this);
  v5 = *(this + 100);
  if (v4)
  {
    if ((*(this + 100) & 2) != 0)
    {
      v7 = (this + 312);
    }

    else
    {
      v6 = *(this + 30);
      MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v6);
      v7 = (v6 + 240);
      if ((*(this + 100) & 2) == 0)
      {
        v11 = *(this + 30);
        MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v11);
        v8 = (v11 + 296);
        goto LABEL_9;
      }
    }

    v8 = (this + 368);
LABEL_9:
    if ((*v7 & 1) != 0 || *v8 == 1)
    {

      return PacketToRollDistanceForRestrictedRandomAccess(a2, v7, v8);
    }

    return 0;
  }

  if ((*(this + 100) & 2) != 0)
  {
    v10 = (this + 256);
  }

  else
  {
    v9 = *(this + 30);
    MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v9);
    v10 = (v9 + 152);
  }

  if (*v10 != 1)
  {
    AudioFileObject::PacketToRollDistance(this, a2);
    return 0;
  }

  return PacketToRollDistanceForRollRecovery(a2, v10);
}

uint64_t MP4AudioFile::GetFormatList(MP4AudioFile *this, UInt32 *ioPropertyDataSize, AudioFormatListItem *outPropertyData)
{
  v6 = *(this + 18);
  if ((*(this + 100) & 2) != 0 && !v6)
  {
    return 2003334207;
  }

  v9 = *(this + 3);
  v8 = *(this + 4);
  v10 = *(this + 10);
  v19 = *(this + 44);
  v20 = *(this + 15);
  memset(inSpecifier, 0, sizeof(inSpecifier));
  v16 = v8;
  DWORD2(inSpecifier[0]) = v8;
  v22 = 0;
  v23 = v6;
  v24 = *(this + 35);
  if (AudioFormatGetProperty(0x666C7374u, 0x38u, inSpecifier, ioPropertyDataSize, outPropertyData))
  {
    outPropertyData->mASBD.mSampleRate = v9;
    *&outPropertyData->mASBD.mFormatID = v16;
    outPropertyData->mASBD.mBytesPerPacket = v10;
    *&outPropertyData->mASBD.mFramesPerPacket = v19;
    outPropertyData->mASBD.mReserved = v20;
    if ((*(this + 100) & 2) != 0)
    {
      v17 = 32;
      result = (*(*this + 416))(this, &v17, v18);
      if (result)
      {
        return result;
      }

      v12 = v18[0];
    }

    else
    {
      v11 = *(this + 30);
      if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v11) || (v13 = *(v11 + 47)) == 0)
      {
        v12 = -65536;
      }

      else
      {
        v12 = *v13;
      }
    }

    outPropertyData->mChannelLayoutTag = v12;
    *ioPropertyDataSize = 48;
  }

  v14 = DWORD2(inSpecifier[0]);
  if (DWORD2(inSpecifier[0]) == 1365470320 && outPropertyData->mASBD.mSampleRate == 0.0)
  {
    outPropertyData->mASBD.mSampleRate = v9;
  }

  result = 0;
  v15 = v14 == 1935767394 || v14 == 1935764850;
  if (v15 && !v10)
  {
    result = 0;
    if (outPropertyData->mASBD.mBytesPerPacket)
    {
      outPropertyData->mASBD.mBytesPerPacket = 0;
      outPropertyData->mASBD.mBytesPerFrame = 0;
    }
  }

  return result;
}

uint64_t MP4AudioFile::GetFormatListInfo(MP4AudioFile *this, UInt32 *outPropertyDataSize, unsigned int *a3)
{
  v3 = *(this + 18);
  if (!v3)
  {
    return 2003334207;
  }

  v6 = *(this + 8);
  memset(v8, 0, sizeof(v8));
  DWORD2(v8[0]) = v6;
  v9 = 0;
  v10 = v3;
  v11 = *(this + 35);
  if (AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, v8, outPropertyDataSize))
  {
    *outPropertyDataSize = 48;
    *a3 = 0;
  }

  return 0;
}

uint64_t MP4AudioFile::SetDataFormat(MP4AudioFile *this, AudioStreamBasicDescription *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  mFormatID = a2->mFormatID;
  v4 = mFormatID == 1700998451 || mFormatID == 1700997939;
  if (v4 && (mFramesPerPacket = a2->mFramesPerPacket, mFramesPerPacket != 1536))
  {
    v6 = 1718449215;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "MP4AudioFile.cpp";
      v12 = 1024;
      v13 = 1715;
      v14 = 1024;
      v15 = mFramesPerPacket;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  disallowing request to set frames per packet to %d (ie, not 1536)", &v10, 0x18u);
    }
  }

  else
  {
    v6 = AudioFileObject::SetDataFormat(this, a2);
    v7 = *(this + 76);
    if (v7)
    {
      MEMORY[0x193ADF220](v7, 0x1000C403E1C8BA9);
      *(this + 76) = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t MP4AudioFile::SetProperty(MP4AudioFile *this, int a2, unsigned int a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 > 1751216999)
  {
    if (a2 > 1920168565)
    {
      if (a2 == 1920168566)
      {
        v7 = 1869627199;
        if ((*(this + 100) & 2) == 0)
        {
          goto LABEL_56;
        }

        v18 = *(this + 15);
        if (v18)
        {
          if (*(v18 + 24))
          {
            goto LABEL_56;
          }
        }

        if (a3 < 8)
        {
          goto LABEL_54;
        }

        v7 = 0;
        *(this + 27) = *a4;
        goto LABEL_56;
      }

      if (a2 != 1969321067)
      {
        goto LABEL_49;
      }

      if ((*(this + 100) & 2) == 0)
      {
        if (a3 < 4)
        {
          goto LABEL_54;
        }

        v11 = 2003334207;
        v12 = *a4;
        v26 = 0;
        if (v12 < *(this + 125))
        {
          if (v12 == *(this + 126))
          {
            v11 = 0;
          }

          else
          {
            v25 = 0;
            v24 = 0;
            v7 = (*(**(this + 13) + 24))(*(this + 13), &v24);
            if (v7)
            {
              goto LABEL_56;
            }

            BoxInfo = FindBoxInfo(*(this + 13), 0, v24, 1836019574, 0, *(this + 28));
            if (!BoxInfo)
            {
              v7 = 1685348671;
              goto LABEL_56;
            }

            MP4BoxParser_Movie::MP4BoxParser_Movie(v27, *(this + 13), *(BoxInfo + 16));
            v7 = MP4BoxParser_Movie::Init(v27);
            if (v7)
            {
              MP4BoxParser_Movie::~MP4BoxParser_Movie(v27);
              goto LABEL_56;
            }

            AudioTrackData = MP4BoxParser_Movie::GetAudioTrackData(v27, v12, &v25, &v26);
            if (AudioTrackData)
            {
              if (v12)
              {
                *(this + 60) = -1;
                *(this + 61) = 0;
              }

              else
              {
                MP4AudioFile::FillPacketTableInfoFromiTunesUserData(this);
              }

              MP4AudioFile::UseAudioTrack(this, AudioTrackData);
            }

            v11 = 0;
            MP4BoxParser_Movie::~MP4BoxParser_Movie(v27);
          }
        }

        v7 = v11;
        goto LABEL_56;
      }
    }

    else
    {
      if (a2 != 1751217000)
      {
        if (a2 != 1886283375)
        {
          goto LABEL_49;
        }

        if ((*(this + 100) & 2) != 0)
        {
          if (a3 >= 0x10)
          {
            v7 = 0;
            *(this + 29) = *a4;
            *(this + 30) = *a4;
            *(this + 528) = 1;
            goto LABEL_56;
          }

          goto LABEL_54;
        }

        v7 = 1886547263;
LABEL_56:
        v21 = *MEMORY[0x1E69E9840];
        return v7;
      }

      if (a3)
      {
        v7 = 1886681407;
        v13 = *(this + 21);
        if (v13 != 1832149606 && v13 != 1832149350 || (*(this + 100) & 2) == 0)
        {
          goto LABEL_56;
        }

        v14 = *(this + 70);
        if (v14)
        {
          free(v14);
          *(this + 70) = 0;
        }

        *(this + 139) = a3;
        v15 = malloc_type_calloc(1uLL, a3, 0xA8D7F39FuLL);
        *(this + 70) = v15;
        memcpy(v15, a4, a3);
      }
    }

LABEL_42:
    v7 = 0;
    goto LABEL_56;
  }

  if (a2 <= 1684434291)
  {
    if (a2 != 1633776244)
    {
      if (a2 == 1668182118)
      {
        v7 = 1869627199;
        v8 = *(this + 21);
        if (v8 != 1832149606 && v8 != 1832149350 || *(this + 8) >> 8 != 6381923 || (*(this + 100) & 2) == 0)
        {
          goto LABEL_56;
        }

        if (a3 >= 4)
        {
          v7 = 2003334207;
          v9 = *(this + 31);
          if (*(*(v9 + 442) + 8) == **(v9 + 442) && !*(v9 + 434) && *a4 == 16)
          {
            v7 = 0;
            *(v9 + 426) = 1937013298;
            *(v9 + 437) = 16;
            *(this + 552) = 1;
          }

          goto LABEL_56;
        }

        goto LABEL_54;
      }

      goto LABEL_49;
    }

    (*(*this + 728))(this, *a4);
    goto LABEL_42;
  }

  if (a2 != 1684434292)
  {
    if (a2 == 1701012328)
    {
      v7 = 1886681407;
      v10 = *(this + 21);
      if (v10 != 1832149606 && v10 != 1832149350 || (*(this + 100) & 2) == 0)
      {
        goto LABEL_56;
      }

      if (a3 >= 4)
      {
        v7 = 0;
        *(this + 142) = *a4;
        goto LABEL_56;
      }

LABEL_54:
      v7 = 561211770;
      goto LABEL_56;
    }

LABEL_49:
    v19 = *MEMORY[0x1E69E9840];
    goto LABEL_50;
  }

  v16 = *a4;
  *(this + 114) = v16;
  *(*(this + 31) + 28) = v16;
  v17 = *MEMORY[0x1E69E9840];
  a2 = 1684434292;
LABEL_50:

  return AudioFileObject::SetProperty(this, a2, a3, a4);
}

void sub_18F8DA744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MP4BoxParser_Movie::~MP4BoxParser_Movie(va);
  _Unwind_Resume(a1);
}

void MP4AudioFile::FillPacketTableInfoFromiTunesUserData(MP4AudioFile *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!(*(**(this + 13) + 24))(*(this + 13), &v14))
  {
    BoxInfo = FindBoxInfo(*(this + 13), 0, v14, 1836019574, 0, *(this + 28));
    if (BoxInfo)
    {
      v3 = *(this + 13);
      v4 = *(BoxInfo + 16);
      v24 = &unk_1F0330650;
      (*(*v3 + 88))(&v25, v3, v4);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 8;
      v24 = off_1F0330620;
      v31 = 1;
      v32 = 0;
      if (!MP4BoxParser_Movie::Init(&v24))
      {
        for (i = 0; ; ++i)
        {
          v7 = v32;
          if (!v32 || (v8 = *(v32 + 8), v8 == v32))
          {
            v9 = 0;
          }

          else
          {
            v9 = 0;
            do
            {
              if (*(v8 + 16) == 1969517665)
              {
                ++v9;
              }

              v8 = *(v8 + 8);
            }

            while (v8 != v32);
          }

          if (i >= v9)
          {
            break;
          }

          v10 = v25;
          v11 = (v24[3])(&v24);
          v12 = FindBoxInfo(v10, v11, v28, 1969517665, i, v7);
          if (v12)
          {
            v13 = *(v12 + 16);
            v15.mNumberValidFrames = &unk_1F0330650;
            (*(*v25 + 88))(&v15.mPrimingFrames, v25, v13 + 8);
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 8;
            v21 = 0;
            v22 = 0;
            v15.mNumberValidFrames = &unk_1F032D778;
            memset(v23, 0, sizeof(v23));
            if (!MP4BoxParser_iTunesSMPBMeta::Init(&v15) && *&v23[1] >= 1)
            {
              *(this + 30) = *&v23[1];
            }

            MP4BoxParser_Meta::~MP4BoxParser_Meta(&v15);
          }
        }
      }

      MP4BoxParser_Movie::~MP4BoxParser_Movie(&v24);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_18F8DAA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MP4BoxParser_Movie::~MP4BoxParser_Movie(va);
  _Unwind_Resume(a1);
}

void MP4AudioFile::UseAudioTrack(MP4AudioFile *this, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  (*(**(this + 13) + 24))(*(this + 13), &v2);
  operator new();
}

void sub_18F8DBE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2)
  {
    v33 = *(v30 + 1520);
    if (v33)
    {
      free(v33);
    }

    __cxa_begin_catch(exception_object);
    (*(*v31 + 8))(v31);
    __cxa_end_catch();
    JUMPOUT(0x18F8DB8E4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FramesInALACPacket(uint64_t result, unsigned int a2, unsigned int *a3)
{
  *a3 = 0;
  if (a2 >= 7)
  {
    if ((*(result + 2) & 0x10) != 0)
    {
      v3 = (*(result + 6) >> 1) | (_byteswap_ulong(*(result + 2)) << 7);
    }

    else
    {
      v3 = 0;
    }

    *a3 = v3;
  }

  return result;
}

uint64_t MP4AudioFile::GetProperty(MP4AudioFile *this, int a2, unsigned int *a3, __CFDate **a4)
{
  v52 = *MEMORY[0x1E69E9840];
  DataForMeaningName = 561211770;
  if (!a3 || !a4)
  {
    goto LABEL_89;
  }

  if (a2 > 1701082481)
  {
    if (a2 > 1885564531)
    {
      if (a2 <= 1886283374)
      {
        if (a2 != 1885564532)
        {
          if (a2 == 1885626740)
          {
            if (*a3 >= 8)
            {
              v8 = *(this + 75);
              if (v8)
              {
                v9 = *MEMORY[0x1E69E9840];

                return MP4AudioFile::GetPurchaseDate(v8, a4);
              }

LABEL_81:
              DataForMeaningName = 1886681407;
              goto LABEL_89;
            }

            goto LABEL_89;
          }

          goto LABEL_75;
        }

        if (*a3 < 8)
        {
          goto LABEL_89;
        }

        DataForMeaningName = 0;
        v19 = *(this + 25);
LABEL_57:
        *a4 = v19;
        goto LABEL_89;
      }

      if (a2 != 1969321067)
      {
        if (a2 == 1886283375)
        {
          if (*a3 < 0x10)
          {
            goto LABEL_89;
          }

          if (*(this + 58) == -1)
          {
            if (*(this + 60) == -1)
            {
              if ((*(this + 100) & 2) == 0)
              {
                *a3 = 0;
                DataForMeaningName = 1667787583;
                goto LABEL_89;
              }

              *a4 = (*(this + 25) * *(this + 11));
              a4[1] = 0;
              goto LABEL_88;
            }

            v18 = *(this + 30);
          }

          else
          {
            v18 = *(this + 29);
          }

          *a4 = v18;
LABEL_88:
          DataForMeaningName = 0;
          *a3 = 16;
          goto LABEL_89;
        }

LABEL_75:
        v28 = *MEMORY[0x1E69E9840];

        return AudioFileObject::GetProperty(this, a2, a3, a4);
      }

      if (*a3 < 4)
      {
        goto LABEL_89;
      }

      DataForMeaningName = 0;
      v11 = *(this + 126);
LABEL_80:
      *a4 = v11;
      goto LABEL_89;
    }

    if (a2 == 1701082482)
    {
      if (*a3 >= 8)
      {
        DataForMeaningName = 0;
        *a4 = *(this + 56);
      }

      goto LABEL_89;
    }

    if (a2 != 1751217000)
    {
      if (a2 != 1869640813)
      {
        goto LABEL_75;
      }

      if ((*(this + 100) & 2) == 0)
      {
        v40 = 0;
        DataForMeaningName = (*(**(this + 13) + 24))(*(this + 13), &v40);
        if (!DataForMeaningName)
        {
          BoxInfo = FindBoxInfo(*(this + 13), 0, v40, 1835295092, 0, *(this + 28));
          if (BoxInfo)
          {
            v44 = 0;
            (*(**(this + 13) + 24))(*(this + 13), &v44);
            DataForMeaningName = 0;
            v13 = *(BoxInfo + 8) + *(BoxInfo + 16) == v44;
            *a4 = v13;
            *(this + 20) = v13;
          }

          else
          {
            DataForMeaningName = 2003334207;
            *a4 = 0;
          }
        }

        goto LABEL_89;
      }

      DataForMeaningName = 0;
      v11 = *(this + 520);
      goto LABEL_80;
    }

    v20 = *(this + 21);
    if (v20 == 1832149606 || v20 == 1832149350)
    {
      v21 = *MEMORY[0x1E69E9840];

      return MP4AudioFile::GetAudioHash(this, a3, a4);
    }

LABEL_78:
    DataForMeaningName = 1869627199;
    goto LABEL_89;
  }

  if (a2 > 1650683507)
  {
    if (a2 == 1650683508)
    {
      if (*a3 < 8)
      {
        goto LABEL_89;
      }

      DataForMeaningName = 0;
      v19 = *(this + 26);
      goto LABEL_57;
    }

    if (a2 == 1668182118)
    {
      if (*a3 < 4)
      {
        goto LABEL_89;
      }

      if ((*(this + 100) & 2) != 0)
      {
        if (*(this + 552) == 1)
        {
          DataForMeaningName = 0;
          v11 = *(*(this + 31) + 437);
          goto LABEL_80;
        }
      }

      else
      {
        MP4BoxParser_Track::GetSampleTableSubBox(&v44, *(*(this + 30) + 64), 1937013298);
        if (v49 == 1)
        {
          MP4BoxParser_SampleSize::MP4BoxParser_SampleSize(&v40, *(*(this + 30) + 8), v46);
          DataForMeaningName = MP4BoxParser_SampleSize::Init(&v40);
          if (!DataForMeaningName)
          {
            if (v42 == 1937011578)
            {
              v26 = 32;
            }

            else
            {
              v26 = v43;
            }

            *a4 = v26;
          }

          v27 = v41;
          v40 = &unk_1F0330650;
          v41 = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          goto LABEL_89;
        }
      }

      DataForMeaningName = 2003334207;
      goto LABEL_89;
    }

    if (a2 != 1701012328)
    {
      goto LABEL_75;
    }

    v14 = *(this + 21);
    if (v14 == 1832149606 || v14 == 1832149350)
    {
      v39 = 0;
      DataForMeaningName = (*(**(this + 13) + 24))(*(this + 13), &v39);
      if (!DataForMeaningName)
      {
        v15 = FindBoxInfo(*(this + 13), 0, v39, 1836019574, 0, *(this + 28));
        if (v15)
        {
          v16 = *(this + 13);
          v17 = *(v15 + 16);
          v44 = &unk_1F0330650;
          (*(*v16 + 88))(&v45, v16, v17);
          LOBYTE(v46) = 0;
          HIDWORD(v46) = 0;
          v47 = 0;
          LOBYTE(v48) = 0;
          HIDWORD(v48) = 8;
          v44 = off_1F0330620;
          v50 = 1;
          v51 = 0;
          DataForMeaningName = 0;
          if (!MP4BoxParser_Movie::Init(&v44))
          {
            for (i = 0; ; ++i)
            {
              v31 = v51;
              if (!v51 || (v32 = *(v51 + 8), v32 == v51))
              {
                v33 = 0;
              }

              else
              {
                v33 = 0;
                do
                {
                  if (*(v32 + 16) == 1969517665)
                  {
                    ++v33;
                  }

                  v32 = *(v32 + 8);
                }

                while (v32 != v51);
              }

              if (i >= v33)
              {
                break;
              }

              v34 = v45;
              v35 = (v44[3])(&v44);
              v36 = FindBoxInfo(v34, v35, v47, 1969517665, i, v31);
              if (v36)
              {
                MP4BoxParser_iTunesMeta::MP4BoxParser_iTunesMeta(&v40, v45, *(v36 + 16) + 8);
                if (!MP4BoxParser_iTunesMeta::Init(&v40))
                {
                  v38 = 0;
                  DataForMeaningName = MP4BoxParser_iTunesMeta::GetDataForMeaningName(&v40, "iTunECCH", &v38, a3, v37);
                  *a4 = bswap32(v38);
                }

                MP4BoxParser_Meta::~MP4BoxParser_Meta(&v40);
              }
            }
          }

          MP4BoxParser_Movie::~MP4BoxParser_Movie(&v44);
        }

        else
        {
          DataForMeaningName = 0;
        }
      }

      goto LABEL_89;
    }

    goto LABEL_78;
  }

  if (a2 != 1633776244)
  {
    if (a2 == 1633968493)
    {
      if (*a3 >= 8)
      {
        v24 = *(this + 75);
        if (v24)
        {
          v40 = 0;
          MP4BoxParser_iTunesMeta::CopyMetaItemData(v24, 1668172100, &v40);
          v25 = v40;
          *a4 = v40;
          if (v25)
          {
            DataForMeaningName = 0;
          }

          else
          {
            DataForMeaningName = 2003334207;
          }

          goto LABEL_89;
        }

        goto LABEL_81;
      }

LABEL_89:
      v29 = *MEMORY[0x1E69E9840];
      return DataForMeaningName;
    }

    if (a2 != 1635017588)
    {
      goto LABEL_75;
    }

    if (*a3 < 4)
    {
      goto LABEL_89;
    }

    DataForMeaningName = 0;
    v11 = *(this + 125);
    goto LABEL_80;
  }

  if (*a3 < 8)
  {
    goto LABEL_89;
  }

  v22 = *(*this + 720);
  v23 = *MEMORY[0x1E69E9840];

  return v22();
}

void sub_18F8DC8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4AudioFile::GetAudioHash(MP4AudioFile *this, unsigned int *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 0;
  DataForMeaningName = (*(**(this + 13) + 24))(*(this + 13), &v20);
  if (!DataForMeaningName)
  {
    BoxInfo = FindBoxInfo(*(this + 13), 0, v20, 1836019574, 0, *(this + 28));
    if (BoxInfo)
    {
      v8 = *(this + 13);
      v9 = *(BoxInfo + 16);
      v22 = &unk_1F0330650;
      (*(*v8 + 88))(&v23, v8, v9);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 8;
      v22 = off_1F0330620;
      v29 = 1;
      v30 = 0;
      DataForMeaningName = 0;
      if (!MP4BoxParser_Movie::Init(&v22))
      {
        for (i = 0; ; ++i)
        {
          v13 = v30;
          if (!v30 || (v14 = *(v30 + 8), v14 == v30))
          {
            v15 = 0;
          }

          else
          {
            v15 = 0;
            do
            {
              if (*(v14 + 16) == 1969517665)
              {
                ++v15;
              }

              v14 = *(v14 + 8);
            }

            while (v14 != v30);
          }

          if (i >= v15)
          {
            break;
          }

          v16 = v23;
          v17 = (v22[3])(&v22);
          v18 = FindBoxInfo(v16, v17, v26, 1969517665, i, v13);
          if (v18)
          {
            MP4BoxParser_iTunesMeta::MP4BoxParser_iTunesMeta(v21, v23, *(v18 + 16) + 8);
            if (!MP4BoxParser_iTunesMeta::Init(v21))
            {
              if (a3)
              {
                DataForMeaningName = MP4BoxParser_iTunesMeta::GetDataForMeaningName(v21, "iTunHASH", a3, a2, v19);
              }

              else
              {
                *a2 = MP4BoxParser_iTunesMeta::GetDataSizeForMeaningName(v21, "iTunHASH");
              }
            }

            MP4BoxParser_Meta::~MP4BoxParser_Meta(v21);
          }
        }
      }

      MP4BoxParser_Movie::~MP4BoxParser_Movie(&v22);
    }

    else
    {
      DataForMeaningName = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return DataForMeaningName;
}

void sub_18F8DCC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MP4BoxParser_Movie::~MP4BoxParser_Movie(va);
  _Unwind_Resume(a1);
}

uint64_t MP4AudioFile::GetPurchaseDate(MP4AudioFile *this, const __CFDate **a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (this)
  {
    theString[0] = 0;
    MP4BoxParser_iTunesMeta::CopyMetaItemData(this, 1886745188, theString);
    v3 = theString[0];
    if (theString[0])
    {
      at = 0.0;
      *theString = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      if (CFStringGetCString(v3, theString, 256, 0x8000100u))
      {
        sscanf(theString, "%d-%d-%d %d:%d:%d", &v10, &v11, &v12, &v13, &v14, &v15);
        v4 = CFCalendarCopyCurrent();
        if (!v4)
        {
LABEL_10:
          *a2 = v4;
          CFRelease(v3);
          result = 0;
          goto LABEL_11;
        }

        v5 = v4;
        v6 = CFCalendarComposeAbsoluteTime(v4, &at, "yMdHms", v10, v11, v12, v13, v14, v15);
        CFRelease(v5);
        if (v6)
        {
          v4 = CFDateCreate(*MEMORY[0x1E695E480], at);
          goto LABEL_10;
        }
      }

      v4 = 0;
      goto LABEL_10;
    }

    result = 1667787583;
  }

  else
  {
    result = 1886681407;
  }

LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MP4AudioFile::GetPropertyInfo(MP4AudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 > 1751216999)
  {
    if (a2 <= 1886283374)
    {
      if (a2 == 1751217000)
      {
        v10 = *(this + 21);
        if (v10 == 1832149606 || v10 == 1832149350)
        {
          if (a4)
          {
            *a4 = *(this + 100) & 2;
          }

          if (a3)
          {
            return MP4AudioFile::GetAudioHash(this, a3, 0);
          }

          return 0;
        }

        return 1869627199;
      }

      v8 = 1885626740;
      goto LABEL_22;
    }

    if (a2 == 1969321067)
    {
      if (a3)
      {
        *a3 = 4;
      }

      if (!a4)
      {
        return 0;
      }

      v5 = 0;
      v9 = 1;
      goto LABEL_59;
    }

    if (a2 != 1920168566)
    {
      if (a2 != 1886283375)
      {
        return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
      }

      if (!a3)
      {
LABEL_31:
        if (a4)
        {
          v5 = 0;
          v9 = (*(this + 100) >> 1) & 1;
          goto LABEL_59;
        }

        return 0;
      }

      v7 = 16;
LABEL_30:
      *a3 = v7;
      goto LABEL_31;
    }

LABEL_28:
    if (!a3)
    {
      goto LABEL_31;
    }

    v7 = 8;
    goto LABEL_30;
  }

  if (a2 <= 1635017587)
  {
    if (a2 != 1633776244)
    {
      v8 = 1633968493;
LABEL_22:
      if (a2 != v8)
      {
        return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
      }

      if (a4)
      {
        *a4 = 0;
      }

      if (a3)
      {
        v5 = 0;
        v6 = 8;
        goto LABEL_27;
      }

      return 0;
    }

    goto LABEL_28;
  }

  if (a2 == 1635017588)
  {
    if (a3)
    {
      *a3 = 4;
    }

    if (a4)
    {
      v5 = 0;
      *a4 = 0;
      return v5;
    }

    return 0;
  }

  if (a2 == 1668182118)
  {
    if (a3)
    {
      *a3 = 4;
    }

    if (!a4)
    {
      return 0;
    }

    v12 = *(this + 21);
    if ((v12 == 1832149606 || v12 == 1832149350) && *(this + 8) >> 8 == 6381923)
    {
      v9 = (*(this + 100) >> 1) & 1;
    }

    else
    {
      v9 = 0;
    }

    v5 = 0;
LABEL_59:
    *a4 = v9;
    return v5;
  }

  if (a2 != 1701012328)
  {
    return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
  }

  v4 = *(this + 21);
  if (v4 != 1832149606 && v4 != 1832149350)
  {
    return 1869627199;
  }

  if (a4)
  {
    *a4 = *(this + 100) & 2;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 4;
LABEL_27:
  *a3 = v6;
  return v5;
}

uint64_t MP4AudioFile::WritePacketsWithDependencies(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, int *a7, uint64_t a8)
{
  v8 = 2003334207;
  if (!a7)
  {
    return v8;
  }

  if (!*a7)
  {
    return 0;
  }

  if ((*(a1 + 100) & 2) == 0)
  {
    return 1886547263;
  }

  v8 = 1885563711;
  if ((*(*a1 + 248))(a1) != a6)
  {
    return v8;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v76 = *(a1 + 44);
  if (!v17)
  {
    if (!a4)
    {
      return v8;
    }

    v20 = *a7;
    if (!v20)
    {
      goto LABEL_27;
    }

    v21 = 12;
    v22 = *a7;
    do
    {
      if (!*(a4 + v21))
      {
        return 2003334207;
      }

      v21 += 16;
      --v22;
    }

    while (v22);
    v23 = 0;
    v24 = a4 + 2;
    v25 = *a4;
    while (v20 - 1 != v23)
    {
      v25 += *(v24 - 1);
      v26 = *v24;
      v24 += 2;
      ++v23;
      if (v26 != v25)
      {
        if (v23 >= v20)
        {
          break;
        }

        v27 = 0;
        v28 = a4 + 3;
        v29 = 0;
        do
        {
          v30 = *v28;
          v28 += 4;
          v27 += v30;
          --v20;
        }

        while (v20);
        goto LABEL_29;
      }
    }

LABEL_27:
    v27 = LODWORD(a4[2 * (v20 - 1)]) + HIDWORD(a4[2 * (v20 - 1) + 1]) - *a4;
LABEL_28:
    v29 = 1;
LABEL_29:
    if (v27 > a3)
    {
      return 561211770;
    }

    v73 = v27;
    v74 = v17;
    v82 = 0;
    if ((*(*a1 + 248))(a1) < 1)
    {
      v32 = 1024;
      if (v16 != 1935764850 && v16 != 1935767394)
      {
        v32 = MP4AudioFile::CalculateDataOffset(a1, *(a1 + 216), v78);
      }

      *(a1 + 72) = v32;
    }

    else
    {
      if (*(*(a1 + 248) + 426) != 1937011578 || (v31 = *(*(a1 + 248) + 434)) == 0)
      {
        v31 = *(*(a1 + 248) + 438);
        if (v31)
        {
          v31 = *(**(*(a1 + 248) + 442) + 4 * (a6 - 1));
        }
      }

      v32 = *(**(a1 + 400) + 8 * (a6 - 1)) + v31;
    }

    if (v29)
    {
      if (a4)
      {
        v33 = *a4;
      }

      else
      {
        v33 = 0;
      }

      v37 = (*(**(a1 + 104) + 56))(*(a1 + 104), 0, v32, v73, a8 + v33, &v82);
    }

    else
    {
      if (!*a7)
      {
        goto LABEL_92;
      }

      v34 = 0;
      v35 = a4 + 3;
      v36 = v32;
      do
      {
        v37 = (*(**(a1 + 104) + 56))(*(a1 + 104), 0, v36, *v35, a8 + *(v35 - 3), &v82);
        v38 = *v35;
        v35 += 4;
        v36 += v38;
        ++v34;
      }

      while (v34 < *a7);
    }

    v8 = v37;
    if (v37)
    {
      return v8;
    }

    if (*a7)
    {
      v39 = 0;
      v75 = a5;
      while (1)
      {
        v40 = *(a1 + 400);
        if (!v40)
        {
          operator new();
        }

        v42 = *(v40 + 8);
        v41 = *(v40 + 16);
        if (v42 >= v41)
        {
          v44 = *v40;
          v45 = v42 - *v40;
          v46 = v45 >> 3;
          v47 = (v45 >> 3) + 1;
          if (v47 >> 61)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v48 = v41 - v44;
          if (v48 >> 2 > v47)
          {
            v47 = v48 >> 2;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF8)
          {
            v49 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v49);
          }

          *(8 * v46) = v32;
          v43 = 8 * v46 + 8;
          memcpy(0, v44, v45);
          v50 = *v40;
          *v40 = 0;
          *(v40 + 8) = v43;
          *(v40 + 16) = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v42 = v32;
          v43 = (v42 + 1);
        }

        *(v40 + 8) = v43;
        v51 = &a4[2 * v39];
        if (a4)
        {
          v52 = v32;
          v54 = v51 + 3;
          v53 = *(v51 + 3);
          NUMovieBox::AppendPacketSize(*(a1 + 248), v53);
          if (*(v51 + 2))
          {
            v55 = *(v51 + 2);
          }

          else
          {
            v55 = v76;
          }

          NUMovieBox::AppendTimeToSample(*(a1 + 248), v55);
          v56 = *v54;
          if (v56 > (*(*a1 + 640))(a1))
          {
            (*(*a1 + 656))(a1, *v54);
          }

          v32 = v52;
        }

        else
        {
          v53 = v74;
          NUMovieBox::AppendPacketSize(*(a1 + 248), v74);
          NUMovieBox::AppendTimeToSample(*(a1 + 248), v76);
        }

        if (v75 || (v57 = *(a1 + 608)) == 0)
        {
          if (!v75)
          {
            goto LABEL_90;
          }

          v68 = (v75 + 16 * v39);
        }

        else
        {
          v58 = *v51;
          v59 = (a8 + *v51);
          v60 = *(v51 + 3);
          *v78 = v59;
          v79 = v59;
          v61 = &v59[v60];
          v80 = v61;
          v81 = 0;
          if ((v59 & 3) != 0)
          {
            v62 = 0;
            v63 = a8 + 1 + v58;
            v64 = -8;
            do
            {
              v65 = v64;
              if (v59 >= v61)
              {
                v66 = 255;
              }

              else
              {
                v66 = *v59;
              }

              v62 = v66 | (v62 << 8);
              ++v59;
              v64 = v65 + 8;
            }

            while ((v63++ & 3) != 0);
            *v78 = v59;
            LODWORD(v81) = v62 << (16 - v65);
            HIDWORD(v81) = v65 + 16;
          }

          v77[0] = 0;
          v77[1] = 0;
          PacketDependencyParser::PacketDependency(v57, v78, v77);
          v68 = v77;
        }

        v69 = MP4AudioFile::AddPacketDependency(a1, v39, v68);
        if (v69)
        {
          return v69;
        }

LABEL_90:
        v32 += v53;
        ++v39;
        v70 = *a7;
        if (v39 >= v70)
        {
          goto LABEL_93;
        }
      }
    }

LABEL_92:
    v70 = 0;
LABEL_93:
    v8 = 0;
    v71 = *(a1 + 208) + v73;
    *(a1 + 200) += v70;
    *(a1 + 208) = v71;
    return v8;
  }

  v18 = *a7;
  if (v16 != 1935767394 && v16 != 1935764850)
  {
    v27 = v18 * v17;
    goto LABEL_28;
  }

  v19 = v18 - (a3 % v17 != 0);
  if (v18 != 1 || v19)
  {
    v27 = v19 * v17;
    *a7 = v19;
    goto LABEL_28;
  }

  v8 = 0;
  *a7 = 1;
  return v8;
}

unint64_t MP4AudioFile::CalculateDataOffset(MP4AudioFile *this, double a2, BOOL *a3)
{
  v3 = *(this + 11);
  if (!v3)
  {
    return 4096;
  }

  v5 = *(this + 3);
  v6 = *(this + 8);
  v7 = ((a2 + 1.0) * v5) / v3;
  v8 = *(this + 25);
  v9 = 4;
  if (v8)
  {
    v8 = *(**(this + 50) + 8 * v8 - 8);
    v10 = v8 <= 0xFFFFFFFFLL;
    LOBYTE(v8) = v8 > 0xFFFFFFFFLL;
    if (v10)
    {
      v9 = 4;
    }

    else
    {
      v9 = 8;
    }
  }

  v11 = *(this + 10);
  *a3 = v8;
  LODWORD(v3) = (v5 / v3) >> 1;
  if (v6 == 1819304813)
  {
    v3 = v3;
  }

  else
  {
    v3 = (v3 + 1);
  }

  v12 = v9 * (v7 / v3);
  MetaDataSize = MP4AudioFile::GetMetaDataSize(this, 0, 0, 0, 0, 0, 0);
  v14 = *(this + 31);
  v15 = *(v14 + 8);
  v16 = *(v14 + 116);
  if (v6 == 1634754915 || v6 == 1902211171 || v6 == 1885433955)
  {
    v17 = 5096;
  }

  else
  {
    v17 = 1000;
  }

  v19 = (v12 + MetaDataSize + v17);
  v20 = v7 * v9 + 4103;
  if (v11)
  {
    v20 = 4103;
  }

  return (v20 + v15 + v16 + v19) & 0xFFFFFFFFFFFFF000;
}

uint64_t MP4AudioFile::AddPacketDependency(uint64_t a1, unsigned int a2, int *a3)
{
  v6 = (*(*a1 + 280))(a1);
  v7 = *a3;
  if (!v6)
  {
    result = 1684369471;
    if (!v7)
    {
      return result;
    }

    v10 = a3[1];
    if (v10 >> 15)
    {
      return result;
    }

    if (v10)
    {
      v26 = *(a1 + 200) + a2;
      v27 = xmmword_18F901C70;
      WORD4(v27) = v10;
      v11 = a1 + 256;
LABEL_13:
      SampleToRollDistanceTable::append_entry(v11, &v26);
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = a3[1];
  if (v8)
  {
    if (v8 >> 15)
    {
      return 1684369471;
    }

    v26 = *(a1 + 200) + a2;
    v27 = xmmword_18F901C70;
    WORD4(v27) = v8;
    v11 = a1 + 312;
    goto LABEL_13;
  }

  v12 = *(a1 + 200) + a2;
  v14 = *(a1 + 384);
  v13 = *(a1 + 392);
  if (v14 >= v13)
  {
    v16 = *(a1 + 376);
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v21);
    }

    v22 = (v14 - v16) >> 3;
    v23 = (8 * v18);
    v24 = (8 * v18 - 8 * v22);
    *v23 = v12;
    v15 = v23 + 1;
    memcpy(v24, v16, v17);
    v25 = *(a1 + 376);
    *(a1 + 376) = v24;
    *(a1 + 384) = v15;
    *(a1 + 392) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v14 = v12;
    v15 = v14 + 8;
  }

  result = 0;
  *(a1 + 384) = v15;
  *(a1 + 368) = 1;
  return result;
}

uint64_t MP4AudioFile::GetMetaDataSize(MP4AudioFile *this, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  if (*(this + 60) == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = 188;
  }

  if (*(this + 64))
  {
    v15 = 45 * *(this + 13) + 72;
  }

  else
  {
    v15 = 0;
  }

  v16 = MP4AudioFile::AddITunesMetaData(this, 0, 0);
  v17 = *(this + 68);
  if (v17 && ((BytePtr = CFDataGetBytePtr(v17), *BytePtr == 1196314761) || *(BytePtr + 6) == 1179207242))
  {
    Length = CFDataGetLength(*(this + 68));
    v20 = Length + 24;
    if (!Length)
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *(this + 139);
  if (v21)
  {
    v22 = v21 + 72;
  }

  else
  {
    v22 = 0;
  }

  if (*(this + 142))
  {
    v23 = 76;
  }

  else
  {
    v23 = 0;
  }

  if (a2)
  {
    *a2 = v14;
  }

  if (a3)
  {
    *a3 = v15;
  }

  if (a4)
  {
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = v20;
  }

  if (a6)
  {
    *a6 = v22;
  }

  if (a7)
  {
    *a7 = v23;
  }

  v25 = v16 + v14 + v20 + v22 + v15 + v23;
  v24 = v25 == 0;
  v26 = v25 + 62;
  if (v24)
  {
    return 0;
  }

  else
  {
    return v26;
  }
}

uint64_t MP4AudioFile::AddITunesMetaData(MP4AudioFile *this, unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3;
  v10 = 0;
  if (*(this + 572) && (!a2 || a3 >= 0x10))
  {
    if (a2)
    {
      a2[24] = *(this + 572);
      *a2 = 0x6B69747319000000;
      *(a2 + 1) = 0x6174616411000000;
      *(a2 + 2) = 352321536;
      v6 = 25;
      v10 = 25;
      v3 = a3 - 25;
      if (a3 == 25)
      {
        return 0;
      }

      v7 = a2 + 25;
    }

    else
    {
      v7 = 0;
      v6 = 25;
      v10 = 25;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2;
  }

  v8 = *(this + 67);
  if (!v8)
  {
    return v6;
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, v8, -1455336876, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1453233054, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1453039239, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1451789708, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1452841618, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1452383891, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1452051405, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), 1769173603, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1453101708, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1451987089, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), -1453230732, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), 1953329263, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (!v3)
      {
        return 0;
      }

      v7 += v10;
    }
  }

  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), 1668313716, &v10))
  {
    v6 = (v10 + v6);
    if (a2)
    {
      v3 -= v10;
      if (v3)
      {
        v7 += v10;
        goto LABEL_19;
      }

      return 0;
    }
  }

LABEL_19:
  if (!InitiiTunesMetaItemFromInfoDictionary(v7, v3, *(this + 67), 1953655662, &v10))
  {
    return (v10 + v6);
  }

  return v6;
}

uint64_t MP4AudioFile::ReadPacketData(MP4BoxParser_Track **this, unsigned int a2, unsigned int *a3, AudioStreamPacketDescription *a4, int64_t a5, unsigned int *a6, void *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v14 = (*(*this + 31))(this);
  if (v14 <= a5)
  {
LABEL_21:
    *a3 = 0;
    *a6 = 0;
    v26 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (*a6 + a5 > v14)
  {
    *a6 = v14 - a5;
  }

  v29 = 0;
  v15 = this[30];
  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v15) || *(v15 + 440) != 1)
  {
    MP4BoxParser_Track::UpdateOffsetTableToIndex(this[30], *a6 + a5);
    if (!*a6)
    {
      goto LABEL_19;
    }

    v27 = a2;
    v16 = a4;
    v17 = a7;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = a5;
    do
    {
      if (MP4Parser_PacketProvider::GetPacketInfo(this[30], v22, &v29, &v28))
      {
        break;
      }

      v20 += v29;
      if (v20 > *a3)
      {
        break;
      }

      ++v19;
      ++v21;
      ++v22;
    }

    while (v21 < *a6);
  }

  else
  {
    v27 = a2;
    v16 = a4;
    v17 = a7;
    v18 = *(this + 10);
    if (*a3 / v18 >= *a6)
    {
      v19 = *a6;
    }

    else
    {
      v19 = *a3 / v18;
    }

    v20 = v19 * v18;
  }

  if (!v19)
  {
LABEL_19:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "MP4AudioFile.cpp";
      v32 = 1024;
      v33 = 2291;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  numPacketsToRead == 0", buf, 0x12u);
    }

    goto LABEL_21;
  }

  *a3 = v20;
  *a6 = v19;
  v23 = *(*this + 11);
  v24 = *MEMORY[0x1E69E9840];

  return v23(this, v27, a3, v16, a5, a6, v17);
}

uint64_t MP4AudioFile::ReadPackets(MP4AudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v14 = (*(*this + 248))(this);
  if (v14 <= a5)
  {
    if (a3)
    {
      *a3 = 0;
    }

    result = 0;
LABEL_11:
    *a6 = 0;
    return result;
  }

  v15 = *a6;
  if (v15 + a5 > v14)
  {
    LODWORD(v15) = v14 - a5;
    *a6 = v14 - a5;
  }

  *v47 = 0;
  v45 = 0;
  if ((*(this + 100) & 2) != 0)
  {
    v19 = *(this + 50);
    if (v19)
    {
      v20 = *(*v19 + 8 * a5);
      ByteCountForPackets = NUMovieBox::GetByteCountForPackets(*(this + 31), v15);
      if ((*(**(this + 13) + 48))(*(this + 13), 0, v20, ByteCountForPackets, a7, v47))
      {
        return 1885563711;
      }
    }

    v40 = a3;
    if (a4 && *a6)
    {
      v34 = 0;
      v35 = 0;
      v36 = *(this + 31) + 426;
      v37 = *v36;
      p_mDataByteSize = &a4->mDataByteSize;
      do
      {
        if (v37 != 1937011578 || (v39 = *(v36 + 8), !v39))
        {
          if (*(v36 + 12))
          {
            v39 = *(**(v36 + 16) + 4 * a5);
          }

          else
          {
            v39 = 0;
          }
        }

        *(p_mDataByteSize - 3) = v35;
        *(p_mDataByteSize - 1) = 0;
        *p_mDataByteSize = v39;
        v35 += v39;
        ++v34;
        LODWORD(a5) = a5 + 1;
        p_mDataByteSize += 4;
      }

      while (v34 < *a6);
    }
  }

  else
  {
    v16 = *(this + 30);
    if (!MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v16) && *(v16 + 440) == 1)
    {
      return AudioFileObject::ReadPackets(this, a2, a3, v17, a5, a6, a7);
    }

    v40 = a3;
    MP4BoxParser_Track::UpdateOffsetTableToIndex(*(this + 30), *a6 + a5);
    v22 = *a6;
    if (*a6)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v41 = a6;
      while (1)
      {
        v44 = 0;
        ContiguousPacketCountAndSize = MP4Parser_PacketProvider::GetContiguousPacketCountAndSize(*(this + 30), v24 + a5, v22 - v24, &v44, &v47[1]);
        v27 = v44;
        if (ContiguousPacketCountAndSize || v44 == 0)
        {
          break;
        }

        if (MP4Parser_PacketProvider::GetPacketInfo(*(this + 30), v24 + a5, &v46, &v45))
        {
          return 1885563711;
        }

        result = (*(**(this + 13) + 48))(*(this + 13), 0, v45, v47[1], a7, &v47[1]);
        v29 = v47[1];
        v23 += v47[1];
        v47[0] = v23;
        if (a4)
        {
          v42 = v23;
          v30 = v24;
          v31 = v27;
          do
          {
            v43 = 0;
            result = MP4Parser_PacketProvider::GetPacketInfo(*(this + 30), a5 + v30, &v43, &v45);
            v32 = &a4[v30];
            v32->mStartOffset = v25;
            v33 = v43;
            v32->mVariableFramesInPacket = 0;
            v32->mDataByteSize = v33;
            v25 += v33;
            ++v30;
            --v31;
          }

          while (v31);
          a6 = v41;
          v23 = v42;
        }

        a7 += v29;
        v24 += v27;
        v22 = *a6;
        if (v24 >= *a6)
        {
          goto LABEL_38;
        }
      }

      result = 1885563711;
      goto LABEL_11;
    }
  }

  result = 0;
LABEL_38:
  if (v40)
  {
    if (!result)
    {
      *v40 = v47[0];
    }
  }

  return result;
}

uint64_t MP4AudioFile::Optimize(MP4AudioFile *this)
{
  if ((*(this + 100) & 2) == 0)
  {
    return 2003334207;
  }

  result = 0;
  *(this + 20) = 1;
  *(this + 520) = 1;
  return result;
}

uint64_t MP4AudioFile::Close(MP4AudioFile *this)
{
  v1 = this;
  outPropertyData[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 100) & 2) == 0)
  {
    v2 = 0;
    goto LABEL_36;
  }

  v4 = this + 24;
  v5 = *(this + 3);
  v6 = *(this + 11);
  v7 = *(this + 13);
  size_4 = *(this + 8);
  if (size_4 != 1819304813 && !*(this + 35))
  {
    goto LABEL_258;
  }

  v244 = 0;
  v8 = *MEMORY[0x1E695E460] + CFAbsoluteTimeGetCurrent();
  v242 = this;
  v9 = *(this + 31);
  *(v9 + 20) = v8;
  *(v9 + 24) = v8;
  *(v9 + 136) = v8;
  *(v9 + 140) = v8;
  *(v9 + 236) = v8;
  *(v9 + 240) = v8;
  v10 = *(v9 + 386);
  if (v10)
  {
    v11 = 0;
    v12 = (**(v9 + 390) + 4);
    do
    {
      v11 += (*v12 * *(v12 - 1));
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  *(v9 + 244) = v5;
  *(v9 + 248) = v11;
  v13 = *(this + 21);
  v14 = v13 == 1832149350 || v13 == 1832149606;
  if (v14)
  {
    LODWORD(v15) = v11;
  }

  else
  {
    v15 = *(this + 58);
    if (v15 == -1)
    {
      LODWORD(v15) = v11;
    }
  }

  *(v9 + 28) = *(this + 114);
  *(v9 + 32) = v15;
  *(v9 + 152) = v15;
  if (v13 != 1832149606 && v13 != 1832149350 || *(this + 528) != 1)
  {
    v19 = 0;
    size = 0;
    goto LABEL_26;
  }

  ioPropertyDataSize[0] = 0;
  LODWORD(outPropertyData[0]) = 0;
  LODWORD(inSpecifier[0]) = 0;
  v246[0] = 0;
  LODWORD(values[0]) = 0;
  v251[0] = 0;
  MetaDataSize = MP4AudioFile::GetMetaDataSize(this, ioPropertyDataSize, outPropertyData, inSpecifier, v246, values, v251);
  size = MetaDataSize;
  if (!MetaDataSize)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v17 = MetaDataSize;
  v18 = malloc_type_malloc(MetaDataSize, 0xE8EE75AAuLL);
  v19 = v18;
  if (!v18)
  {
    exception = __cxa_allocate_exception(8uLL);
    v221 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v18, v17);
  v20 = LODWORD(outPropertyData[0]) + ioPropertyDataSize[0] + LODWORD(inSpecifier[0]) + v246[0];
  *(v19 + 54) = v20 + 8;
  *(v19 + 58) = 1768715124;
  *(v19 + 4) = 0x6D64697200000000;
  *(v19 + 10) = 1634758764;
  *(v19 + 2) = v20 + 54;
  *(v19 + 3) = 1835365473;
  *v19 = v20 + 62;
  *(v19 + 1) = 1969517665;
  *v19 = vrev32q_s8(*v19);
  *(v19 + 20) = 0x726C646822000000;
  *(v19 + 2) = vrev32q_s8(*(v19 + 2));
  *(v19 + 12) = bswap32(*(v19 + 12));
  *(v19 + 54) = vrev32_s8(*(v19 + 54));
  v21 = &qword_18F901000;
  if (v251[0])
  {
    *(v19 + 62) = 1275068416;
    *(v19 + 66) = xmmword_18F901D00;
    *(v19 + 82) = *"com.apple.iTunes";
    *(v19 + 98) = 335544320;
    *(v19 + 102) = 1701667182;
    *(v19 + 110) = 0x484343456E755469;
    *(v19 + 118) = 335544320;
    *(v19 + 122) = 1635017060;
    v19[129] = 1;
    *(v19 + 130) = 0;
    *(v19 + 134) = bswap32(*(this + 142));
    v22 = 138;
  }

  else
  {
    v22 = 62;
  }

  if (LODWORD(values[0]))
  {
    v51 = &v19[v22];
    v52 = *(this + 139);
    *v51 = bswap32(v52 + 72);
    *(v51 + 4) = xmmword_18F901D00;
    *(v51 + 20) = *"com.apple.iTunes";
    *(v51 + 9) = 335544320;
    *(v51 + 5) = 1701667182;
    *(v51 + 6) = 0x485341486E755469;
    *(v51 + 14) = bswap32(v52 + 16);
    *(v51 + 60) = 1635017060;
    v51[67] = 1;
    *(v51 + 17) = 0;
    v53 = v22 + 72;
    memcpy(&v19[v53], *(v242 + 70), *(v242 + 139));
    v21 = &qword_18F901000;
    v22 = *(v242 + 139) + v53;
  }

  if (LODWORD(inSpecifier[0]))
  {
    MP4AudioFile::AddITunesMetaData(v242, &v19[v22], size - v22);
    v22 += LODWORD(inSpecifier[0]);
    v21 = &qword_18F901000;
  }

  if (ioPropertyDataSize[0])
  {
    v54 = &v19[v22];
    *v54 = -1140850688;
    *(v54 + 4) = *(v21 + 208);
    *(v54 + 20) = *"com.apple.iTunes";
    *(v54 + 9) = 335544320;
    *(v54 + 5) = 1701667182;
    *(v54 + 6) = 0x42504D536E755469;
    *(v54 + 14) = -2080374784;
    *(v54 + 60) = 1635017060;
    v54[67] = 1;
    *(v54 + 17) = 0;
    v55 = &v19[v22 + 72];
    *&v56 = 0x3030303030303030;
    *(&v56 + 1) = 0x3030303030303030;
    *(v55 + 49) = v56;
    *(v55 + 65) = v56;
    *(v55 + 81) = v56;
    *(v55 + 97) = v56;
    *(v55 + 28) = 808464432;
    *(v55 + 33) = v56;
    *(v55 + 17) = v56;
    *(v55 + 1) = v56;
    *v55 = 32;
    v55[9] = 32;
    snprintf(buf, 0x20uLL, "%X", *(v242 + 122));
    v57 = strlen(buf);
    memcpy(&v55[-v57 + 18], buf, v57);
    v55[18] = 32;
    v58 = *(v242 + 123);
    *(v55 + 19) = 0x3030303030303030;
    snprintf(buf, 0x20uLL, "%X", v58);
    v59 = strlen(buf);
    memcpy(&v55[-v59 + 27], buf, v59);
    qmemcpy(v55 + 27, " 0000000000000000", 17);
    snprintf(buf, 0x20uLL, "%qX", *(v242 + 60));
    v60 = strlen(buf);
    memcpy(&v55[-v60 + 44], buf, v60);
    v61 = 44;
    do
    {
      v55[v61] = 32;
      v61 += 9;
    }

    while (v61 != 116);
    v22 += 188;
    v21 = &qword_18F901000;
  }

  if (LODWORD(outPropertyData[0]))
  {
    v62 = &v19[v22];
    *v62 = bswap32(45 * v7 + 72);
    *(v62 + 4) = *(v21 + 208);
    *(v62 + 20) = *"com.apple.iTunes";
    *(v62 + 9) = 335544320;
    *(v62 + 5) = 1701667182;
    *(v62 + 6) = 0x4D524F4E6E755469;
    *(v62 + 14) = bswap32(45 * v7 + 16);
    *(v62 + 60) = 1635017060;
    v62[67] = 1;
    *(v62 + 17) = 0;
    v63 = v22 + 72;
    FillSCString(*(v242 + 64), *(v242 + 13), &v19[v63]);
    v22 = v63 + 45 * v7;
  }

  if (v246[0])
  {
    v64 = *(v242 + 68);
    if (v64)
    {
      Length = CFDataGetLength(v64);
      v66 = Length;
      if (Length)
      {
        v67 = Length + 24;
        if (Length + 24 <= size - v22)
        {
          v68 = *(v242 + 68);
          if (v68)
          {
            BytePtr = CFDataGetBytePtr(v68);
            if (*BytePtr == 1196314761)
            {
              v70 = 14;
            }

            else
            {
              if (*(BytePtr + 6) != 1179207242)
              {
                goto LABEL_26;
              }

              v70 = 13;
            }

            v175 = &v19[v22];
            *v175 = bswap32(v67);
            *(v175 + 1) = 1920364387;
            *(v175 + 2) = bswap32(v66 + 16);
            *(v175 + 3) = 1635017060;
            *(v175 + 8) = 0;
            v175[18] = 0;
            v175[19] = v70;
            *(v175 + 5) = 0;
            v176 = *(v242 + 68);
            v267.length = CFDataGetLength(v176);
            v267.location = 0;
            CFDataGetBytes(v176, v267, v175 + 24);
          }
        }
      }
    }
  }

LABEL_26:
  v243 = 0;
  v24 = v5 > 65535.0 && size_4 == 1819304813;
  v238 = v24;
  v2 = (*(**(v242 + 13) + 48))(*(v242 + 13), 0, 0, 4, &v243, &v244);
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MP4AudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1230;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4AudioFile::Close - Couldn't read fileType size", buf, 0x12u);
    }

    v1 = v242;
    goto LABEL_36;
  }

  v28 = v243;
  v29 = *(v242 + 25);
  if (v29)
  {
    if (*(**(v242 + 50) + 8 * v29 - 8) <= 0xFFFFFFFFLL)
    {
      v30 = 8;
    }

    else
    {
      v30 = 16;
    }

    v235 = v30;
  }

  else
  {
    v235 = 8;
  }

  SampleDescriptionSize = MP4AudioFile::GetSampleDescriptionSize(v242, v238);
  __n = SampleDescriptionSize;
  v32 = malloc_type_malloc(SampleDescriptionSize, 0xCEBDCEA1uLL);
  __dst = v32;
  v33 = v32;
  if (SampleDescriptionSize)
  {
    v34 = v32 == 0;
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    v218 = __cxa_allocate_exception(8uLL);
    v219 = std::bad_alloc::bad_alloc(v218);
  }

  bzero(v32, SampleDescriptionSize);
  v35 = *(v4 + 1);
  *ioPropertyDataSize = *v4;
  v256 = v35;
  v257 = *(v4 + 4);
  v36 = ioPropertyDataSize[2];
  if (ioPropertyDataSize[2] == 1634492771)
  {
    if (MP4AudioFile::GetSampleDescriptionSize(v242, v238) != SampleDescriptionSize)
    {
      v2 = 0xFFFFFFFFLL;
      v1 = v242;
      goto LABEL_88;
    }

    v37 = MP4AudioFile::GetSampleDescriptionSize(v242, v238);
    *&buf[4] = xmmword_18F901D10;
    *&buf[20] = 0x1000020000000000;
    v259 = 0x44AC00000000;
    v260 = 0x63616C6124000000;
    *buf = bswap32(v37);
    v261 = 0;
    v1 = v242;
    v38 = *(v242 + 18);
    v39 = *(v242 + 35);
    if (*(v38 + 1) == 1634562662)
    {
      v40 = __dst;
      if (v39 >= 0x30)
      {
        v262 = *(v38 + 24);
        v263 = *(v38 + 5);
        if (v39 == 80)
        {
          v41 = 48;
LABEL_101:
          v79 = (v38 + v41);
          v264 = *v79;
          v265 = *(v79 + 2);
          goto LABEL_102;
        }

        goto LABEL_102;
      }
    }

    else
    {
      v40 = __dst;
      if (v39 >= 0x18)
      {
        v262 = *v38;
        v263 = *(v38 + 2);
        if (v39 == 48)
        {
          v41 = 24;
          goto LABEL_101;
        }

LABEL_102:
        v42 = v6;
        v44 = buf;
        v45 = SampleDescriptionSize;
        goto LABEL_103;
      }
    }

    goto LABEL_87;
  }

  v1 = v242;
  if ((ioPropertyDataSize[2] & 0xFBFFFFFF) == 0x61632D33)
  {
    v42 = v6;
    v43 = __rev16(*ioPropertyDataSize);
    *v33 = bswap32(*(v242 + 35) + 36);
    *(v33 + 1) = bswap32(v36);
    *(v33 + 1) = 0x100000000000000;
    *(v33 + 2) = 0;
    *(v33 + 3) = 268435968;
    *(v33 + 16) = v43;
LABEL_58:
    *(v33 + 17) = 0;
    v44 = *(v242 + 18);
    v45 = *(v242 + 35);
    v40 = v33 + 36;
LABEL_103:
    memcpy(v40, v44, v45);
    goto LABEL_104;
  }

  switch(ioPropertyDataSize[2])
  {
    case 0x73617762u:
      v42 = v6;
      *v33 = 0x6277617335000000;
      *(v33 + 1) = 0x100000000000000;
      *(v33 + 2) = 0;
      *(v33 + 3) = 268435968;
      v71 = 32830;
      goto LABEL_92;
    case 0x73616D72u:
      v42 = v6;
      *v33 = 0x726D617335000000;
      *(v33 + 1) = 0x100000000000000;
      *(v33 + 2) = 0;
      *(v33 + 3) = 268435968;
      v71 = 16415;
LABEL_92:
      *(v33 + 8) = v71;
      v72 = *(v242 + 18);
      v73 = *(v72 + 22);
      v33[52] = *(v72 + 38);
      *(v33 + 36) = v73;
      goto LABEL_104;
    case 0x666C6163u:
      v46 = bswap32(*(v242 + 35) + 36);
      v47 = bswap32(WORD6(v256)) >> 16;
      v48 = bswap32(v257) >> 16;
      if (*ioPropertyDataSize <= 65535.0)
      {
        v50 = *ioPropertyDataSize;
      }

      else
      {
        HIDWORD(v49) = -1214044089 * *ioPropertyDataSize;
        LODWORD(v49) = HIDWORD(v49);
        if ((v49 >> 7) >= 0x15D87)
        {
          v50 = -1;
        }

        else
        {
          v50 = -17536;
        }
      }

      v42 = v6;
      *v33 = v46;
      *(v33 + 4) = 1130450022;
      *(v33 + 3) = 0x1000000;
      *(v33 + 2) = 0;
      *(v33 + 12) = v47;
      *(v33 + 13) = v48;
      *(v33 + 7) = 0;
      *(v33 + 16) = bswap32(v50) >> 16;
      goto LABEL_58;
  }

  v74 = *(v242 + 148);
  outPropertyDataSize = 0;
  v75 = *(v242 + 21);
  inSpecifier[0] = __PAIR64__(v75, ioPropertyDataSize[2]);
  inSpecifier[1] = *(v242 + 18);
  v253 = 0;
  LODWORD(v253) = *(v242 + 35);
  v251[0] = ioPropertyDataSize[2];
  v251[1] = ioPropertyDataSize[3];
  v251[2] = v75;
  v250 = 0;
  v249 = 0;
  v248 = 12;
  v76 = *(v242 + 131);
  if (v76 && (CFStringFromBitDepth = CreateCFStringFromBitDepth(v76)) != 0)
  {
    v77 = *(v242 + 131);
    if (v77)
    {
      if (v77 < 0)
      {
        v77 = -v77;
      }

      v78 = (snprintf(buf, 8uLL, "%d", v77) + 2);
    }

    else
    {
      v78 = 1;
    }

    if (CFStringGetCString(CFStringFromBitDepth, outPropertyData, v78, 0x8000100u) == 1)
    {
      v177 = *(v242 + 131);
      if (v177)
      {
        if (v177 < 0)
        {
          v177 = -v177;
        }

        v178 = snprintf(buf, 8uLL, "%d", v177) + 13;
      }

      else
      {
        v178 = 12;
      }

      v230 = v178;
    }

    else
    {
      v230 = 0;
    }
  }

  else
  {
    v230 = 0;
    CFStringFromBitDepth = 0;
  }

  PropertyInfo = AudioFormatGetPropertyInfo(0x65636D63u, 0x18u, inSpecifier, &outPropertyDataSize);
  v180 = v74 + 36;
  if (PropertyInfo)
  {
    if (ioPropertyDataSize[2] == 1819304813)
    {
      v182 = *(v242 + 22);
      v181 = *(v242 + 23);
      v183 = HIDWORD(v256) == 2 && v181 == v182;
      v184 = v181 - v182 + 14;
      if (v183)
      {
        v184 = 30;
      }

      v185 = v184 + v180;
      if (v238)
      {
        v186 = v185 + 16;
      }

      else
      {
        v186 = v185;
      }
    }

    else
    {
      v186 = v74 + v230 + *(v242 + 35) + 48;
    }
  }

  else
  {
    v186 = outPropertyDataSize + v180;
  }

  Property = AudioFormatGetProperty(0x636E6964u, 0xCu, v251, &v248, &v249);
  v188 = 0;
  v189 = 1630826605;
  if (Property)
  {
    v190 = __dst;
    goto LABEL_333;
  }

  v190 = __dst;
  if (v248 != 12)
  {
LABEL_333:
    v191 = 512;
    goto LABEL_334;
  }

  v189 = bswap32(v250);
  if (ioPropertyDataSize[2] != 1819304813)
  {
    v188 = 0;
    goto LABEL_333;
  }

  if (v238)
  {
    v188 = 256;
  }

  else
  {
    v188 = 0;
  }

  if (!WORD6(v256))
  {
    goto LABEL_333;
  }

  v191 = __rev16(WORD6(v256));
LABEL_334:
  v192 = bswap32(v186);
  v193 = *ioPropertyDataSize;
  do
  {
    v194 = v193;
    v193 >>= 1;
  }

  while (HIWORD(v194));
  *v190 = v192;
  *(v190 + 1) = v189;
  *(v190 + 1) = 0x100000000000000;
  *(v190 + 8) = v188;
  *(v190 + 18) = 0;
  *(v190 + 11) = 0;
  *(v190 + 12) = v191;
  *(v190 + 13) = 4096;
  *(v190 + 7) = 0;
  *(v190 + 16) = bswap32(v194) >> 16;
  v195 = v190 + 36;
  *(v190 + 17) = 0;
  if (AudioFormatGetProperty(0x65636D63u, 0x18u, inSpecifier, &outPropertyDataSize, v190 + 36))
  {
    if (ioPropertyDataSize[2] == 1819304813)
    {
      v246[0] = 14;
      v2 = AudioFormatGetProperty(0x73647063u, 0x28u, ioPropertyDataSize, v246, buf);
      v1 = v242;
      if (v2)
      {
LABEL_88:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "MP4AudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1242;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4AudioFile::Close - GetSampleDescription() failed", buf, 0x12u);
        }

        goto LABEL_36;
      }

      v196 = v246[0];
      memcpy(v195, buf, v246[0]);
      v197 = &v195[v196];
      if (v238)
      {
        v198 = bswap32(*ioPropertyDataSize);
        *v197 = 0x7461727310000000;
        *(v197 + 2) = 0;
        *(v197 + 3) = v198;
        v197 += 16;
      }

      v199 = *(v242 + 22);
      v200 = *(v242 + 23);
      if (v200 == v199)
      {
        if (*(v242 + 20) == *(v242 + 19) && HIDWORD(v256) == 2)
        {
          *v197 = sStereoISOLayout;
          v197 += 16;
        }

        else if (HIDWORD(v256) > 1)
        {
LABEL_87:
          v2 = 2003334207;
          goto LABEL_88;
        }
      }

      else
      {
        memcpy(v197, v199, v200 - v199);
        v197 += *(v242 + 23) - *(v242 + 22);
      }
    }

    else
    {
      v1 = v242;
      *(__dst + 9) = bswap32(*(v242 + 35) + 12);
      *(__dst + 5) = 1935962981;
      memcpy(__dst + 48, *(v242 + 18), *(v242 + 35));
      v197 = &__dst[*(v242 + 35) + 48];
    }
  }

  else
  {
    v197 = &v195[outPropertyDataSize];
    v1 = v242;
  }

  v201 = *(v1 + 73);
  if (v201)
  {
    Count = CFDictionaryGetCount(v201);
    std::vector<__CFString const*>::vector[abi:ne200100](v246, Count);
    std::vector<void const*>::vector[abi:ne200100](values, Count);
    v1 = v242;
    CFDictionaryGetKeysAndValues(*(v242 + 73), *v246, values[0]);
    v228 = v28;
    if (Count)
    {
      v203 = 0;
      v233 = Count;
      do
      {
        CFStringGetCString(*(*v246 + 8 * v203), buf, 256, 0x8000100u);
        v204 = *buf;
        v205 = CFGetTypeID(values[0][v203]);
        if (v205 == CFArrayGetTypeID())
        {
          v206 = CFArrayGetCount(values[0][v203]);
          v207 = v6;
          v208 = v206;
          if (v206)
          {
            v209 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(values[0][v203], v209);
              v211 = CFDataGetLength(ValueAtIndex);
              *v197 = bswap32(v211 + 8);
              *(v197 + 1) = v204;
              v212 = CFDataGetBytePtr(ValueAtIndex);
              memcpy(v197 + 8, v212, v211);
              v197 += v211 + 8;
              ++v209;
            }

            while (v208 != v209);
          }
        }

        else
        {
          v207 = v6;
          if (v205 == CFDataGetTypeID())
          {
            v213 = CFDataGetLength(values[0][v203]);
            *v197 = bswap32(v213 + 8);
            *(v197 + 1) = v204;
            v214 = CFDataGetBytePtr(values[0][v203]);
            memcpy(v197 + 8, v214, v213);
            v197 += v213 + 8;
          }
        }

        v203 = v203 + 1;
        v1 = v242;
        v6 = v207;
      }

      while (v203 != v233);
    }

    if (values[0])
    {
      values[1] = values[0];
      operator delete(values[0]);
    }

    v28 = v228;
    v215 = CFStringFromBitDepth;
    if (*v246)
    {
      v247 = *v246;
      operator delete(*v246);
    }
  }

  else
  {
    v215 = CFStringFromBitDepth;
  }

  if (*(v1 + 131) && v230)
  {
    *v197 = bswap32(v230);
    *(v197 + 4) = 1685348979;
    v216 = *(v1 + 131);
    if (v216)
    {
      if (v216 < 0)
      {
        v216 = -v216;
      }

      v217 = (snprintf(buf, 8uLL, "%d", v216) + 1);
    }

    else
    {
      v217 = 0;
    }

    memcpy(v197 + 12, outPropertyData, v217);
  }

  if (v215)
  {
    CFRelease(v215);
    v1 = v242;
  }

  v42 = v6;
LABEL_104:
  outPropertyData[0] = 0;
  inSpecifier[0] = 0;
  if (*(v1 + 72))
  {
    ioPropertyDataSize[0] = 8;
    v2 = AudioFormatGetProperty(0x6C626C64u, 8u, v1 + 576, ioPropertyDataSize, outPropertyData);
    if (!v2 && outPropertyData[0])
    {
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MP4AudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1252;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4AudioFile::Close - getting ludt box from loudness info dictionary failed", buf, 0x12u);
    }

    v83 = 0;
    v87 = 4;
    goto LABEL_255;
  }

  if (v42)
  {
    v80 = *(v1 + 25);
    v81 = *(v1 + 31);
    LODWORD(v82) = v42;
LABEL_119:
    v88 = ((v5 / v82) >> 1) + 1;
    goto LABEL_120;
  }

  v81 = *(v1 + 31);
  v84 = *(v81 + 386);
  if (v84)
  {
    v85 = 0;
    v86 = (**(v81 + 390) + 4);
    do
    {
      v85 += (*v86 * *(v86 - 1));
      v86 += 2;
      --v84;
    }

    while (v84);
  }

  else
  {
    v85 = 0;
  }

  v80 = *(v1 + 25);
  v82 = v85 / v80;
  if (v82)
  {
    goto LABEL_119;
  }

  v88 = 1;
LABEL_120:
  v234 = v42;
  v223 = (v1 + 576);
  if (v80)
  {
    v89 = *(**(v1 + 50) + 8 * v80 - 8);
    v90 = v80 / v88;
    v14 = v80 / v88 * v88 == v80;
    v91 = v14;
    if (v14)
    {
      v92 = 12;
    }

    else
    {
      v92 = 24;
    }

    if (v89 <= 0xFFFFFFFFLL)
    {
      v93 = 4;
    }

    else
    {
      v93 = 8;
    }

    if (v89 <= 0xFFFFFFFFLL)
    {
      v94 = 2;
    }

    else
    {
      v94 = 3;
    }

    v95 = v90 << v94;
  }

  else
  {
    v95 = 0;
    v91 = 1;
    v92 = 12;
    v93 = 4;
  }

  v96 = *v81;
  if (v91)
  {
    v97 = 0;
  }

  else
  {
    v97 = v93;
  }

  v98 = *(v1 + 9);
  *v246 = 0;
  values[0] = 0;
  v99 = size + __n + v96 + v95 + v92 + v97;
  if (!(*(*v1 + 280))(v1))
  {
    v109 = 0;
    v110 = *(v1 + 21);
    if (v110 == 1832149350)
    {
      v111 = 0;
      v227 = 0;
      v229 = 0;
      goto LABEL_163;
    }

    v111 = 0;
    v227 = 0;
    v229 = 0;
    if (v110 == 1832149606)
    {
      goto LABEL_163;
    }
  }

  if (*(v1 + 58) == -1)
  {
    *(v1 + 58) = v11;
    *(v1 + 59) = 0;
  }

  v100 = malloc_type_calloc(1uLL, 0x24uLL, 0x10000408AA14F5FuLL);
  *v100 = xmmword_18F901D20;
  v100[2] = 0x100000000000000;
  *(v100 + 6) = bswap32(*(v1 + 116));
  *(v100 + 7) = bswap32(*(v1 + 118));
  *(v100 + 8) = 256;
  if (!(*(*v1 + 280))(v1))
  {
    if (AudioFormatEncryptedFormatTranslator::DecryptFormatID(size_4, buf) >> 8 == 6381923)
    {
      CreateSampleToRollGroup(*(v1 + 25), v246, values);
    }

    v104 = 0;
    v112 = v99 + 36;
    goto LABEL_156;
  }

  memset(buf, 0, 24);
  std::vector<SyncSampleEntry>::__init_with_size[abi:ne200100]<SyncSampleEntry*,SyncSampleEntry*>(buf, *(v1 + 47), *(v1 + 48), (*(v1 + 48) - *(v1 + 47)) >> 3);
  v101 = *buf;
  if (*(v1 + 368))
  {
    v102 = ((*&buf[8] - *buf) >> 3);
  }

  else
  {
    v102 = 0;
  }

  v103 = malloc_type_calloc(1uLL, 4 * v102 + 16, 0x1000040451B5BE8uLL);
  v104 = v103;
  *v103 = bswap32(4 * v102 + 16);
  v105 = bswap32(v102);
  *(v103 + 4) = 1936946291;
  *(v103 + 3) = v105;
  if (v102)
  {
    v106 = v103 + 16;
    v107 = v101;
    do
    {
      v108 = *v107;
      v107 += 2;
      *v106++ = bswap32(v108 + 1);
      --v102;
    }

    while (v102);
  }

  else if (!v101)
  {
    goto LABEL_154;
  }

  operator delete(v101);
  v105 = *(v104 + 3);
LABEL_154:
  v112 = v99 + 4 * bswap32(v105) + 52;
  if (*(v1 + 312) == 1)
  {
    CreateSampleToPrerollGroup(*(v1 + 25), v1 + 312, v246, values);
  }

LABEL_156:
  v111 = *v246;
  if (*v246)
  {
    v113 = 2 * bswap32(*(*v246 + 20)) + 24;
  }

  else
  {
    v113 = 0;
  }

  v114 = v113 + v112;
  v109 = values[0];
  v227 = v104;
  v229 = v100;
  if (values[0])
  {
    v115 = 8 * bswap32(*(values[0] + 4)) + 20;
  }

  else
  {
    v115 = 0;
  }

  v99 = v114 + v115;
LABEL_163:
  v116 = bswap32(v28);
  v117 = v98 - v235;
  v226 = v109;
  if (v117 < 1)
  {
    v224 = v116;
    v222 = 0;
    v120 = v227;
    v119 = v229;
  }

  else
  {
    v118 = v116 + v99;
    v120 = v227;
    v119 = v229;
    if (v118 == v117)
    {
      v224 = v116;
      v222 = 0;
    }

    else
    {
      if (v117 - v116 - 8 >= v99)
      {
        v224 = v116;
      }

      else
      {
        if (*(v1 + 520) != 1)
        {
          MP4AudioFile::NewMP4BoxToFile(*(v1 + 13), v117 - v116, v116);
          v170 = *(v1 + 50);
          v171 = *(*v170 + 8 * (*(*v1 + 248))(v1) - 8);
          v172 = *(v1 + 31);
          v173 = (*(*v1 + 248))(v1);
          v109 = v226;
          if (*(v172 + 426) != 1937011578 || (v174 = *(v172 + 434)) == 0)
          {
            v174 = *(v172 + 438);
            if (v174)
            {
              v174 = *(**(v172 + 442) + 4 * (v173 - 1));
            }
          }

          v222 = 0;
          v224 = v171 + v174;
          goto LABEL_177;
        }

        v121 = (v118 + v235 + 4103) & 0x3FFFFF000;
        if (*(v1 + 25))
        {
          v122 = 0;
          v123 = (v121 - *(v1 + 18));
          v124 = **(v1 + 50);
          v125 = 1;
          do
          {
            *(v124 + 8 * v122) += v123;
            v122 = v125;
          }

          while (*(v1 + 25) > v125++);
        }

        v2 = AudioFileObject::MoveData(v1, v98, v121, *(v1 + 26));
        v109 = v226;
        if (v2)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "MP4AudioFile.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1364;
            v127 = MEMORY[0x1E69E9C10];
            v128 = "%25s:%-5d  MP4AudioFile::Close - Couldn't move data to optimize";
            goto LABEL_252;
          }

          goto LABEL_253;
        }

        v224 = v116;
        *(v1 + 9) = v121;
        v117 = v121 - v235;
      }

      v222 = 1;
    }
  }

LABEL_177:
  v129 = *(v1 + 25);
  v232 = v19;
  v225 = v111;
  if (!v129)
  {
    v134 = 0;
    goto LABEL_243;
  }

  LODWORD(v130) = v234;
  if (v234)
  {
    goto LABEL_191;
  }

  v131 = *(*(v1 + 31) + 386);
  if (v131)
  {
    v132 = 0;
    v133 = (**(*(v1 + 31) + 390) + 4);
    do
    {
      v132 += (*v133 * *(v133 - 1));
      v133 += 2;
      --v131;
    }

    while (v131);
  }

  else
  {
    v132 = 0;
  }

  v130 = v132 / v129;
  if ((v132 / v129))
  {
LABEL_191:
    v135 = (v5 / v130 * 0.5);
  }

  else
  {
    v135 = 0;
  }

  v136 = 0;
  v137 = 0;
  if (size_4 != 1819304813)
  {
    ++v135;
  }

  if (v135 <= 1)
  {
    v138 = 1;
  }

  else
  {
    v138 = v135;
  }

  do
  {
    if (v129 - v136 < v138)
    {
      v138 = v129 - v136;
    }

    v139 = *(v1 + 31);
    if (v138)
    {
      v140 = *(v139 + 462) + 1;
      v141 = v138;
      while (1)
      {
        v142 = *(v1 + 31);
        v143 = *(v142 + 410);
        if (!v143)
        {
          break;
        }

        v144 = *(v142 + 414);
        if (*(*v144 + 12 * (v143 - 1) + 4) != v138)
        {
          *(v142 + 398) += 12;
          *(v142 + 410) = v143 + 1;
          *buf = v140;
          *&buf[4] = v138;
          *&buf[8] = 1;
          std::vector<EC3Header>::push_back[abi:ne200100](v144, buf);
LABEL_205:
          *(v142 + 350) += 12;
          *(v142 + 290) += 12;
          *(v142 + 216) += 12;
          *(v142 + 116) += 12;
          *v142 += 12;
        }

        if (!--v141)
        {
          v139 = *(v1 + 31);
          v129 = *(v1 + 25);
          goto LABEL_208;
        }
      }

      *(v142 + 398) += 12;
      *(v142 + 410) = 1;
      *buf = 1;
      *&buf[4] = v138;
      *&buf[8] = 1;
      std::vector<EC3Header>::push_back[abi:ne200100](*(v142 + 414), buf);
      goto LABEL_205;
    }

LABEL_208:
    v145 = **(v1 + 50);
    size_4a = v137;
    if (v129)
    {
      if (*(v145 + 8 * v129 - 8) <= 0xFFFFFFFFLL)
      {
        v146 = 4;
      }

      else
      {
        v146 = 8;
      }
    }

    else
    {
      v146 = 4;
    }

    v147 = *(v145 + 8 * v136);
    *(v139 + 450) += v146;
    ++*(v139 + 462);
    v148 = *(v139 + 466);
    v150 = *(v148 + 8);
    v149 = *(v148 + 16);
    if (v150 >= v149)
    {
      v152 = *v148;
      v153 = v150 - *v148;
      v154 = v153 >> 3;
      v155 = (v153 >> 3) + 1;
      if (v155 >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v156 = v149 - v152;
      if (v156 >> 2 > v155)
      {
        v155 = v156 >> 2;
      }

      if (v156 >= 0x7FFFFFFFFFFFFFF8)
      {
        v157 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v157 = v155;
      }

      if (v157)
      {
        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v157);
      }

      *(8 * v154) = v147;
      v151 = 8 * v154 + 8;
      memcpy(0, v152, v153);
      v158 = *v148;
      *v148 = 0;
      *(v148 + 8) = v151;
      *(v148 + 16) = 0;
      if (v158)
      {
        operator delete(v158);
      }
    }

    else
    {
      *v150 = v147;
      v151 = (v150 + 1);
    }

    *(v148 + 8) = v151;
    *(v139 + 350) += v146;
    *(v139 + 290) += v146;
    *(v139 + 216) += v146;
    *(v139 + 116) += v146;
    *v139 += v146;
    v136 = v138 + size_4a;
    v1 = v242;
    v129 = *(v242 + 25);
    v137 = v138 + size_4a;
  }

  while (v129 > v136);
  v120 = v227;
  v119 = v229;
  if (v229)
  {
    v134 = __n + size + **(v242 + 31) + 36;
  }

  else
  {
    v134 = __n + size + **(v242 + 31);
  }

  if (v227)
  {
    v134 += 4 * bswap32(v227[3]) + 16;
  }

  if (v225)
  {
    v134 += 2 * bswap32(v225[5]) + 24;
  }

  if (v226)
  {
    v134 += 8 * bswap32(*(v226 + 16)) + 20;
  }

  ioPropertyDataSize[1] = 1952539757;
  if (v129 && *(**(v242 + 50) + 8 * v129 - 8) >= 0x100000000)
  {
    ioPropertyDataSize[0] = 0x1000000;
    *&ioPropertyDataSize[2] = bswap64(*(v242 + 26) + 16);
  }

  else
  {
    ioPropertyDataSize[0] = bswap32(*(v242 + 52) + 8);
  }

  v117 = *(v242 + 9) - v235;
  v2 = (*(**(v242 + 13) + 56))(*(v242 + 13), 0, v117, v235, ioPropertyDataSize, &v244);
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MP4AudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1471;
      v127 = MEMORY[0x1E69E9C10];
      v128 = "%25s:%-5d  MP4AudioFile::Close - GetDataSource()->WriteBytes - mediaBoxHeader";
      goto LABEL_252;
    }

    goto LABEL_253;
  }

  v109 = v226;
LABEL_243:
  if (*v223)
  {
    v159 = malloc_type_malloc(0, 0xB49AD55uLL);
    bzero(v159, 0);
    *v159 = bswap32(0);
    v159[1] = 1635017845;
    v159[2] = bswap32(8u);
    v159[3] = 1952740716;
    CFDataGetBytePtr(outPropertyData[0]);
    v109 = v226;
  }

  else
  {
    v159 = 0;
  }

  v160 = v224 + v134;
  if (v224 >= v117 || v117 >= v160)
  {
    v2 = NUMovieBox::SerializeToDataSource(*(v1 + 31), *(v1 + 13), v224, v238, __dst, __n, v232, size, v119, v120, v225, v109, v159, 0, *(v1 + 552));
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "MP4AudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1520;
        v127 = MEMORY[0x1E69E9C10];
        v128 = "%25s:%-5d  MP4AudioFile::Close - SerializeToDataSource() failed";
LABEL_252:
        _os_log_impl(&dword_18F5DF000, v127, OS_LOG_TYPE_ERROR, v128, buf, 0x12u);
      }

LABEL_253:
      v87 = 4;
    }

    else
    {
      if (v222)
      {
        MP4AudioFile::NewMP4BoxToFile(*(v1 + 13), v117 - v160, v160);
      }

      if (__dst)
      {
        free(__dst);
      }

      if (v232)
      {
        free(v232);
      }

      if (v119)
      {
        free(v119);
      }

      if (v120)
      {
        free(v120);
      }

      if (values[0])
      {
        free(values[0]);
      }

      if (*v246)
      {
        free(*v246);
      }

      if (v159)
      {
        free(v159);
      }

      v161 = *(v1 + 31);
      v162 = *(v161 + 442);
      if (v162)
      {
        v163 = *v162;
        if (*v162)
        {
          *(v162 + 8) = v163;
          operator delete(v163);
        }

        MEMORY[0x193ADF220](v162, 0x10C402FEFCB83);
        v161 = *(v1 + 31);
      }

      v164 = *(v161 + 466);
      if (v164)
      {
        v165 = *v164;
        if (*v164)
        {
          *(v164 + 8) = v165;
          operator delete(v165);
        }

        MEMORY[0x193ADF220](v164, 0x10C402FEFCB83);
        v161 = *(v1 + 31);
      }

      v166 = *(v161 + 414);
      if (v166)
      {
        v167 = *v166;
        if (*v166)
        {
          *(v166 + 8) = v167;
          operator delete(v167);
        }

        MEMORY[0x193ADF220](v166, 0x20C40960023A9);
        v161 = *(v1 + 31);
      }

      v168 = *(v161 + 390);
      if (v168)
      {
        v169 = *v168;
        if (*v168)
        {
          *(v168 + 8) = v169;
          operator delete(v169);
        }

        MEMORY[0x193ADF220](v168, 0x20C40960023A9);
      }

      v87 = 0;
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
    v87 = 1;
  }

  v83 = inSpecifier[0];
LABEL_255:
  inSpecifier[0] = 0;
  if (v83)
  {
    CACFData::~CACFData(v83);
    MEMORY[0x193ADF220]();
  }

  if ((v87 | 4) != 4)
  {
LABEL_258:
    v2 = 2003334207;
    goto LABEL_39;
  }

LABEL_36:
  v25 = *(v1 + 13);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  *(v1 + 13) = 0;
LABEL_39:
  v26 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t MP4AudioFile::GetSampleDescriptionSize(MP4AudioFile *this, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  if (v3 <= 1718378850)
  {
    if (v3 == 1633889587)
    {
      goto LABEL_16;
    }

    if (v3 != 1634492771)
    {
      if (v3 != 1700998451)
      {
        goto LABEL_24;
      }

LABEL_16:
      v9 = *(this + 35);
      goto LABEL_17;
    }

    v11 = *(this + 35);
    if (*(*(this + 18) + 4) == 1634562662)
    {
      if (v11 != 80)
      {
LABEL_28:
        v8 = 72;
        goto LABEL_31;
      }
    }

    else if (v11 != 48)
    {
      goto LABEL_28;
    }

    v8 = 96;
    goto LABEL_31;
  }

  if (v3 > 1935764849)
  {
    if (v3 == 1935764850 || v3 == 1935767394)
    {
      v8 = 53;
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  if (v3 == 1718378851)
  {
    goto LABEL_16;
  }

  if (v3 != 1819304813)
  {
LABEL_24:
    outPropertyDataSize[0] = 0;
    inSpecifier = __PAIR64__(*(this + 21), v3);
    v27 = *(this + 18);
    v28 = 0;
    LODWORD(v28) = *(this + 35);
    if (AudioFormatGetPropertyInfo(0x65636D63u, 0x18u, &inSpecifier, outPropertyDataSize))
    {
      v8 = *(this + 35) + 48;
      goto LABEL_31;
    }

    v9 = outPropertyDataSize[0];
LABEL_17:
    v8 = v9 + 36;
    goto LABEL_31;
  }

  v5 = *(this + 22);
  v4 = *(this + 23);
  v6 = *(this + 13) == 2 && v4 == v5;
  v7 = v4 - v5 + 50;
  if (v6)
  {
    v7 = 66;
  }

  if (a2)
  {
    v8 = v7 + 16;
  }

  else
  {
    v8 = v7;
  }

LABEL_31:
  v12 = *(this + 131);
  if (v12)
  {
    if (v12 < 0)
    {
      v12 = -v12;
    }

    v8 += snprintf(&inSpecifier, 8uLL, "%d", v12) + 13;
  }

  *(this + 148) = 0;
  v13 = *(this + 73);
  if (v13)
  {
    Count = CFDictionaryGetCount(v13);
    std::vector<__CFString const*>::vector[abi:ne200100](&inSpecifier, Count);
    std::vector<void const*>::vector[abi:ne200100](outPropertyDataSize, Count);
    CFDictionaryGetKeysAndValues(*(this + 73), inSpecifier, *outPropertyDataSize);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        v16 = CFGetTypeID(*(*outPropertyDataSize + 8 * i));
        if (v16 == CFArrayGetTypeID())
        {
          v17 = CFArrayGetCount(*(*outPropertyDataSize + 8 * i));
          v18 = v17;
          if (v17)
          {
            v19 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(*outPropertyDataSize + 8 * i), v19);
              *(this + 148) += CFDataGetLength(ValueAtIndex) + 8;
              ++v19;
            }

            while (v18 != v19);
          }
        }

        else if (v16 == CFDataGetTypeID())
        {
          *(this + 148) += CFDataGetLength(*(*outPropertyDataSize + 8 * i)) + 8;
        }
      }
    }

    if (*outPropertyDataSize)
    {
      v25 = *outPropertyDataSize;
      operator delete(*outPropertyDataSize);
    }

    if (inSpecifier)
    {
      v27 = inSpecifier;
      operator delete(inSpecifier);
    }

    v21 = *(this + 148);
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return (v21 + v8);
}

void sub_18F8E0998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SyncSampleEntry>::__init_with_size[abi:ne200100]<SyncSampleEntry*,SyncSampleEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F8E0A40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *CreateSampleToPrerollGroup(char *result, uint64_t a2, void *a3, void *a4)
{
  if (*a2 == 1)
  {
    v7 = result;
    v8 = *(a2 + 16) - *(a2 + 8);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3);
    v10 = malloc_type_calloc(1uLL, (v8 & 0x1FFFFFFFELL) + 24, 0x1000040504FFAC1uLL);
    result = malloc_type_calloc(1uLL, 16 * (v9 & 0x7FFFFFFF) + 28, 0x1000040A86A77D5uLL);
    *v10 = bswap32((v8 & 0xFFFFFFFE) + 24);
    *(v10 + 1) = 1685088115;
    *(v10 + 2) = 1;
    *(v10 + 12) = 0x20000006C6F7270;
    *(v10 + 5) = bswap32(v8 >> 1);
    if ((v8 >> 1))
    {
      v11 = *(a2 + 8);
      v12 = v10 + 24;
      v13 = (v8 >> 1);
      do
      {
        v14 = *v11++;
        *v12++ = bswap32(v14) >> 16;
        --v13;
      }

      while (v13);
    }

    *(result + 4) = 1885823603;
    *(result + 3) = 1819243120;
    if (v9)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = *(a2 + 32);
      v19 = result + 20;
      v20 = *(a2 + 8);
      do
      {
        v21 = (v18 + 24 * v15);
        v22 = *v21;
        if (*v21 > v17)
        {
          *&v19[8 * v16++] = bswap32(v22 - v17);
        }

        v23 = v21[1];
        v24 = &v19[8 * v16];
        *v24 = bswap32(v23);
        if ((v8 >> 1))
        {
          v25 = 0;
          v26 = *(v21 + 8);
          while (*(v20 + 2 * v25) != v26)
          {
            if ((v8 >> 1) == ++v25)
            {
              goto LABEL_13;
            }
          }

          v27 = v25 + 1;
        }

        else
        {
LABEL_13:
          v27 = 0;
        }

        *(v24 + 1) = bswap32(v27);
        ++v16;
        v17 = v23 + v22;
        ++v15;
      }

      while (v15 != v9);
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    if (v17 < v7)
    {
      *&result[8 * v16++ + 20] = bswap32(v7 - v17);
    }

    *(result + 4) = bswap32(v16);
    *result = bswap32(8 * v16 + 20);
    *a3 = v10;
    *a4 = result;
  }

  return result;
}

double CreateSampleToRollGroup(unsigned int a1, void *a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x1AuLL, 0x10000408DD1DBA6uLL);
  v7 = malloc_type_calloc(1uLL, 0x1CuLL, 0x100004027586B93uLL);
  *v6 = 0x647067731A000000;
  *(v6 + 2) = 1;
  *(v6 + 12) = 0x20000006C6C6F72;
  *(v6 + 5) = 0x1000000;
  *(v6 + 12) = -1;
  result = 2.90439731e233;
  *v7 = xmmword_18F901D30;
  v7[4] = 0x1000000;
  v7[5] = bswap32(a1);
  v7[6] = 0x1000000;
  *a2 = v6;
  *a3 = v7;
  return result;
}

uint64_t MP4AudioFile::NewMP4BoxToFile(MP4AudioFile *this, unsigned int a2, uint64_t a3)
{
  v5 = 0;
  v4[0] = bswap32(a2);
  v4[1] = 1701147238;
  return (*(*this + 56))(this, 0, a3, 8, v4, &v5);
}

CACFData *std::unique_ptr<CACFData>::reset[abi:ne200100](CACFData **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    CACFData::~CACFData(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t MP4AudioFile::InitializeDataSource(MP4AudioFile *this, const AudioStreamBasicDescription *a2)
{
  if (!(*(*this + 624))(this))
  {
    return 1685348671;
  }

  result = MP4AudioFile::WriteFileTypeBoxToFile(this);
  if (!result)
  {
    result = (*(*this + 184))(this, a2);
    if (!result)
    {
      MP4AudioFile::InitNewFile(this);
    }
  }

  return result;
}

uint64_t MP4AudioFile::WriteFileTypeBoxToFile(MP4AudioFile *this)
{
  v1 = 0;
  v21[2] = *MEMORY[0x1E69E9840];
  v2 = *(this + 21);
  v3 = v20;
  v4 = v19;
  v5 = v18;
  if (v2 <= 1832149349)
  {
    if (v2 == 862416946)
    {
      v6 = 1630693171;
      v7 = 896558899;
      v8 = 879781683;
      v5 = v19;
      v4 = v20;
      v3 = v21;
      v18[0] = 1630693171;
      goto LABEL_13;
    }

    if (v2 != 862417008)
    {
      goto LABEL_15;
    }

    v8 = 896558899;
    v1 = 24;
    v7 = 879781683;
    v6 = 896558899;
LABEL_14:
    *v5 = v8;
    *v4 = v7;
    *v3 = v6;
    goto LABEL_15;
  }

  v6 = 1836020585;
  v7 = 842297453;
  switch(v2)
  {
    case 1836069990:
      v1 = 24;
      v8 = 842297453;
      goto LABEL_14;
    case 1832149606:
      v5 = v19;
      v4 = v20;
      v3 = v21;
      v8 = 541209677;
      goto LABEL_11;
    case 1832149350:
      v8 = 541144141;
      v5 = v19;
      v4 = v20;
      v3 = v21;
LABEL_11:
      v18[0] = v8;
LABEL_13:
      v1 = 28;
      goto LABEL_14;
  }

LABEL_15:
  v16 = v1 << 24;
  v17 = 1887007846;
  v18[1] = 0;
  v9 = (*(**(this + 13) + 56))(*(this + 13), 0, 0);
  if (v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "MP4AudioFile.cpp";
    v14 = 1024;
    v15 = 3642;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Couldn't create a new audio file object", buf, 0x12u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void MP4AudioFile::InitNewFile(MP4AudioFile *this)
{
  v1 = *(this + 3);
  v2 = *(this + 10);
  operator new();
}

uint64_t MP4AudioFile::OpenFromDataSource(MP4AudioFile *this)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((*(this + 100) & 2) != 0)
  {
    v3 = 1886547263;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v2 = (this + 104);
    (*(**(this + 13) + 24))(*(this + 13), &v27);
    v23 = 0;
    v3 = (*(**v2 + 48))(*v2, 0, 0, 8, v24, &v23);
    if (!v3)
    {
      v3 = 1685348671;
      if (v25 == 1887007846)
      {
        if (IsValidDataForMP4FileType(*(this + 13), *(this + 21)))
        {
          v4 = FillMP4BoxTable(*(this + 13), 0, v27, *(this + 28), 0);
          v5 = v27;
          if (!v4 || FindBoxInfo(*(this + 13), 0, v27, 1718909296, 0, *(this + 28)) && FindBoxInfo(*(this + 13), 0, v27, 1836019574, 0, *(this + 28)) && (v6 = FindBoxInfo(*(this + 13), 0, v27, 1835295092, 0, *(this + 28))) != 0 && (v5 = v27, *(v6 + 16) + *(v6 + 8) <= v27))
          {
            BoxInfo = FindBoxInfo(*(this + 13), 0, v5, 1836019574, 0, *(this + 28));
            if (BoxInfo)
            {
              v8 = *(this + 13);
              v9 = *(BoxInfo + 16);
              v32 = &unk_1F0330650;
              (*(*v8 + 88))(&v33, v8, v9);
              v34 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 8;
              v32 = off_1F0330620;
              v39 = 1;
              v40 = 0;
              v10 = MP4BoxParser_Movie::Init(&v32);
              if (!v10)
              {
                v11 = MP4BoxParser_Movie::AudioTrackCount(&v32);
                *(this + 125) = v11;
                if (!v11)
                {
                  goto LABEL_24;
                }

                if (!v40 || (v12 = *(v40 + 8), v12 == v40))
                {
                  v13 = 0;
                }

                else
                {
                  v13 = 0;
                  do
                  {
                    if (*(v12 + 16) == 1953653099)
                    {
                      ++v13;
                    }

                    v12 = *(v12 + 8);
                  }

                  while (v12 != v40);
                }

                *(this + 124) = v13;
                if (v13 >= v11)
                {
                  v22 = 0;
                  AudioTrackData = MP4BoxParser_Movie::GetAudioTrackData(&v32, 0, &v26, &v22);
                  *(this + 29) = AudioTrackData;
                  if (AudioTrackData)
                  {
                    v17 = MP4BoxParser::FindBoxInfo(&v32, 1836476516, 0, v40);
                    if (v17)
                    {
                      MP4BoxParser_MovieHeader::MP4BoxParser_MovieHeader(&v28, v33, *(v17 + 16));
                      if (!MP4BoxParser_MovieHeader::Init(&v28))
                      {
                        *(this + 114) = v31;
                      }

                      v18 = v29;
                      v28 = &unk_1F0330650;
                      v29 = 0;
                      if (v18)
                      {
                        (*(*v18 + 8))(v18);
                      }
                    }

                    v19 = MP4BoxParser::FindBoxInfo(&v32, 1836475768, 0, v40);
                    if (v19)
                    {
                      MP4BoxParser_MovieExtends::MP4BoxParser_MovieExtends(&v28, v33, *(v19 + 16));
                      if (!MP4BoxParser_MovieExtends::Init(&v28))
                      {
                        *(this + 408) = 1;
                        v21 = 0;
                        if (MP4BoxParser_MovieExtends::GetOverallDurationIncludingFragments(v29, v30, &v21))
                        {
                          v20 = *(this + 114);
                          if (v20)
                          {
                            *(this + 409) = 1;
                            *(this + 52) = v21 / v20;
                          }
                        }

                        MP4BoxParser_MovieExtends::GetTrackFragmentDefaultsMap(&v28, this + 424);
                      }

                      MP4BoxParser_MovieExtends::~MP4BoxParser_MovieExtends(&v28);
                    }

                    *(this + 75) = MP4AudioFile::CreateiTunesMetaBoxParser(this);
                    MP4AudioFile::FillPacketTableInfoFromiTunesUserData(this);
                    MP4AudioFile::UseAudioTrack(this, *(this + 29));
                  }

                  v10 = 1685348671;
                }

                else
                {
LABEL_24:
                  v10 = 1685348671;
                }
              }

              MP4BoxParser_Movie::~MP4BoxParser_Movie(&v32);
              v3 = v10;
            }
          }
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_18F8E17C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MP4BoxParser_MovieExtends::~MP4BoxParser_MovieExtends(va);
  MP4BoxParser_Movie::~MP4BoxParser_Movie((v7 - 112));
  _Unwind_Resume(a1);
}

uint64_t IsValidDataForMP4FileType(DataSource *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  MP4BoxParser_FileType::MP4BoxParser_FileType(v23, a1);
  if (MP4BoxParser_FileType::Init(v23))
  {
    goto LABEL_2;
  }

  if (v24 == 1295270176)
  {
    v6 = 1;
  }

  else
  {
    v6 = v24 == 1295275552;
    if (v24 == 1903435808)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_3;
    }
  }

  v7 = v24 == 1295270432;
  if (v25)
  {
    v8 = 0;
    v9 = 0;
    v10 = v25;
    v11 = v26;
    do
    {
      if (v26)
      {
        v12 = *v11;
        v14 = *v11 == 862416950 || (*v11 & 0xFFFFFFFE) == 862416948;
        v9 |= v14;
        v8 |= v12 == 862401121;
        v16 = v12 == 1295270176 || v12 == 1295275552;
        v6 |= v16;
        v7 |= v12 == 1295270432;
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (a2 <= 1832149349)
  {
    v22 = v9 & (v8 ^ 1);
    if (a2 != 862417008)
    {
      v22 = 0;
    }

    if (a2 == 862416946)
    {
      v3 = v8;
    }

    else
    {
      v3 = v22;
    }
  }

  else
  {
    v17 = v9 | v8;
    v18 = (v17 ^ 1) & ((v24 == 1295270176) | v6);
    v19 = v17 | v6 | v7;
    if (v25)
    {
      v20 = 1;
    }

    else
    {
      v20 = v24 == 1836069938;
    }

    v21 = v20;
    if (v19)
    {
      v21 = 0;
    }

    if (a2 != 1836069990)
    {
      v21 = 0;
    }

    if (a2 == 1832149606)
    {
      v21 = (v17 ^ 1) & ((v24 == 1295270432) | v7);
    }

    if (a2 == 1832149350)
    {
      v3 = v18;
    }

    else
    {
      v3 = v21;
    }
  }

LABEL_3:
  MP4BoxParser_FileType::~MP4BoxParser_FileType(v23);
  v4 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

void sub_18F8E1A6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MP4BoxParser_FileType::~MP4BoxParser_FileType(va);
  _Unwind_Resume(a1);
}

uint64_t MP4AudioFile::CreateiTunesMetaBoxParser(MP4AudioFile *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (!(*(**(this + 13) + 24))(*(this + 13), &v13))
  {
    BoxInfo = FindBoxInfo(*(this + 13), 0, v13, 1836019574, 0, *(this + 28));
    if (BoxInfo)
    {
      v3 = *(this + 13);
      v4 = *(BoxInfo + 16);
      v14 = &unk_1F0330650;
      (*(*v3 + 88))(&v15, v3, v4);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 8;
      v14 = off_1F0330620;
      v21 = 1;
      v22 = 0;
      if (!MP4BoxParser_Movie::Init(&v14))
      {
        for (i = 0; ; ++i)
        {
          v8 = v22;
          if (!v22 || (v9 = *(v22 + 8), v9 == v22))
          {
            v10 = 0;
          }

          else
          {
            v10 = 0;
            do
            {
              if (*(v9 + 16) == 1969517665)
              {
                ++v10;
              }

              v9 = *(v9 + 8);
            }

            while (v9 != v22);
          }

          if (i >= v10)
          {
            break;
          }

          v11 = v15;
          v12 = (v14[3])(&v14);
          if (FindBoxInfo(v11, v12, v18, 1969517665, i, v8))
          {
            operator new();
          }
        }
      }

      MP4BoxParser_Movie::~MP4BoxParser_Movie(&v14);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_18F8E1D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MP4BoxParser_Movie::~MP4BoxParser_Movie(va);
  _Unwind_Resume(a1);
}

uint64_t MP4AudioFile::Create(MP4AudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(*this + 624))(this, a3))
  {
    result = AudioFileObject::Create(this, a2, a3);
    if (!result)
    {
      result = MP4AudioFile::WriteFileTypeBoxToFile(this);
      if (!result)
      {
        v7 = (*(*this + 184))(this, a3);
        if (!v7)
        {
          MP4AudioFile::InitNewFile(this);
        }

        v9 = v7;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = 136315394;
          v12 = "MP4AudioFile.cpp";
          v13 = 1024;
          v14 = 1054;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  bad data format", &v11, 0x12u);
        }

        exception = __cxa_allocate_exception(4uLL);
        *exception = v9;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }
    }
  }

  else
  {
    result = 1685348671;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void MP4AudioFile::~MP4AudioFile(MP4AudioFile *this)
{
  MP4AudioFile::~MP4AudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033E248;
  v2 = *(this + 30);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    std::__list_imp<MP4BoxInfo>::clear(*(this + 28));
    MEMORY[0x193ADF220](v3, 0x1020C4062D53EE8);
  }

  v4 = *(this + 29);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 31);
  if (v5)
  {
    MEMORY[0x193ADF220](v5, 0x1020C40AF72B1D3);
  }

  v6 = *(this + 50);
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
    }

    MEMORY[0x193ADF220](v6, 0x10C402FEFCB83);
  }

  v8 = *(this + 64);
  if (v8)
  {
    free(v8);
  }

  v9 = *(this + 67);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 68);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 70);
  if (v11)
  {
    free(v11);
  }

  v12 = *(this + 72);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 73);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 75);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 76);
  if (v15)
  {
    MEMORY[0x193ADF220](v15, 0x1000C403E1C8BA9);
  }

  v16 = *(this + 47);
  if (v16)
  {
    *(this + 48) = v16;
    operator delete(v16);
  }

  v17 = *(this + 43);
  if (v17)
  {
    *(this + 44) = v17;
    operator delete(v17);
  }

  v18 = *(this + 40);
  if (v18)
  {
    *(this + 41) = v18;
    operator delete(v18);
  }

  v19 = *(this + 36);
  if (v19)
  {
    *(this + 37) = v19;
    operator delete(v19);
  }

  v20 = *(this + 33);
  if (v20)
  {
    *(this + 34) = v20;
    operator delete(v20);
  }

  v21 = *(this + 22);
  if (v21)
  {
    *(this + 23) = v21;
    operator delete(v21);
  }

  v22 = *(this + 19);
  if (v22)
  {
    *(this + 20) = v22;
    operator delete(v22);
  }

  v23 = *(this + 18);
  *(this + 18) = 0;
  if (v23)
  {
    MEMORY[0x193ADF1F0](v23, 0x1000C8077774924);
  }

  AudioFileObject::~AudioFileObject(this);
}

void MP4AudioFile::MP4AudioFile(MP4AudioFile *this, int a2)
{
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0u;
  *(this + 20) = 1;
  *(this + 21) = a2;
  *(this + 11) = 0;
  *(this + 24) = -1;
  *(this + 50) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0x100000000;
  *(this + 34) = 65792;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *this = &unk_1F033E248;
  *(this + 200) = 0u;
  *(this + 188) = 0u;
  *(this + 172) = 0u;
  *(this + 156) = 0u;
  *(this + 140) = 0u;
  *(this + 27) = 0x4072C00000000000;
  *(this + 27) = 0u;
  *(this + 31) = 0;
  *(this + 232) = 0u;
  *(this + 256) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 368) = 0;
  *(this + 204) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 52) = 0;
  *(this + 53) = this + 432;
  *(this + 56) = 0;
  *(this + 114) = 600;
  *(this + 126) = 0;
  *(this + 64) = 0;
  *(this + 520) = 0;
  *(this + 131) = 0;
  *(this + 528) = 0;
  *(this + 552) = 0;
  *(this + 536) = 0u;
  *(this + 572) = 0;
  *(this + 556) = 0u;
  *(this + 148) = 0;
  *(this + 36) = 0u;
  *(this + 600) = 0u;
  *(this + 58) = -1;
  *(this + 59) = 0;
  *(this + 60) = -1;
  *(this + 61) = 0;
  *(this + 62) = 0;
  operator new();
}

void sub_18F8E23B4(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    v1[48] = v5;
    operator delete(v5);
  }

  SampleToRollDistanceTable::~SampleToRollDistanceTable((v1 + 39));
  SampleToRollDistanceTable::~SampleToRollDistanceTable((v1 + 32));
  v6 = v1[22];
  if (v6)
  {
    v1[23] = v6;
    operator delete(v6);
  }

  v7 = v1[19];
  if (v7)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  v8 = v1[18];
  v1[18] = 0;
  if (v8)
  {
    MEMORY[0x193ADF1F0](v8, 0x1000C8077774924);
  }

  AudioFileObject::~AudioFileObject(v1);
  _Unwind_Resume(a1);
}

void SampleToRollDistanceTable::~SampleToRollDistanceTable(SampleToRollDistanceTable *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t MP4_AudioFormat::GetHFSCodes(MP4_AudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 1836082996;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

uint64_t GetAvailableStreamDescriptionsForFileType(int a1, int a2, unsigned int *a3, void *__dst)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2 == 1819304813)
  {
    if (a1 == 1836069990)
    {
      memset(v35, 0, 352);
      v33 = 0u;
      v34 = 0u;
      __src = 0u;
      v7 = v35;
      v8 = -24;
      do
      {
        *(v7 - 5) = 0xC6C70636DLL;
        *(v7 - 4) = v8 + 40;
        *(v7 - 7) = 1;
        *v7 = 0xE6C70636DLL;
        *(v7 + 6) = v8 + 40;
        *(v7 + 3) = 1;
        v7 += 5;
        v8 += 8;
      }

      while (v8);
      v9 = 0;
      v10 = 32;
      v11 = 1;
      do
      {
        v12 = &__src + 40 * v9;
        *(v12 + 31) = 0x96C70636DLL;
        *(v12 + 68) = v10;
        v13 = v11;
        *(v12 + 65) = 1;
        *(v12 + 36) = 0xB6C70636DLL;
        *(v12 + 78) = v10;
        *(v12 + 75) = 1;
        v10 += 32;
        v9 = 2;
        v11 = 0;
      }

      while ((v13 & 1) != 0);
      v14 = 10;
    }

    else
    {
      v14 = 0;
    }

LABEL_13:
    if (*a3 / 0x28 < v14)
    {
      v14 = *a3 / 0x28;
    }

    v19 = 40 * v14;
    *a3 = v19;
    if (__dst)
    {
      memcpy(__dst, &__src, v19);
    }

    PropertyInfo = 0;
    goto LABEL_18;
  }

  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (PropertyInfo)
  {
    goto LABEL_18;
  }

  v17 = outPropertyDataSize;
  v18 = outPropertyDataSize >> 2;
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&outPropertyData, v18, 1);
  PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, outPropertyData);
  if (PropertyInfo)
  {
    if (outPropertyData)
    {
      free(outPropertyData);
    }

    goto LABEL_18;
  }

  if (v17 < 4)
  {
LABEL_45:
    v27 = 0;
    goto LABEL_46;
  }

  v22 = 0;
  v23 = a2 & 0xFFFFFF00;
  v25 = a2 == 1885430115 || v23 == 1633772288;
  v29 = v25;
  v26 = 4 * v18;
  v27 = 1;
  while (1)
  {
    if (*(outPropertyData + v22) != a2)
    {
      goto LABEL_44;
    }

    if (a1 <= 1832149349)
    {
      break;
    }

    if (a1 == 1832149350)
    {
      v28 = IsSupportedM4AFormat(a2);
LABEL_41:
      if (v28)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    }

    if (a1 != 1832149606)
    {
      if (a1 != 1836069990)
      {
        goto LABEL_44;
      }

      v28 = IsSupportedMP4Format(a2);
      goto LABEL_41;
    }

    if (v29)
    {
      goto LABEL_51;
    }

LABEL_44:
    v22 += 4;
    if (v26 == v22)
    {
      goto LABEL_45;
    }
  }

  if (a1 != 862416946 && a1 != 862417008)
  {
    goto LABEL_44;
  }

  if (a2 == 1365470320 || a2 == 1935764850 || a2 == 1935767394)
  {
    goto LABEL_46;
  }

  if (v23 != 1633772288)
  {
    goto LABEL_44;
  }

LABEL_51:
  v27 = 1;
LABEL_46:
  if (outPropertyData)
  {
    free(outPropertyData);
  }

  if (v27)
  {
    *&v34 = 0;
    __src = 0u;
    v33 = 0u;
    DWORD2(__src) = a2;
    v14 = 1;
    goto LABEL_13;
  }

  *a3 = 0;
  PropertyInfo = 1718449215;
LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return PropertyInfo;
}

void sub_18F8E2858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GetAvailableFormatIDsForFileType(int a1, unsigned int *a2, void *a3)
{
  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  v7 = outPropertyDataSize;
  v8 = outPropertyDataSize >> 2;
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&__src, v8, 1);
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&outPropertyData, v8, 1);
  PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, outPropertyData);
  if (PropertyInfo)
  {
    if (outPropertyData)
    {
      free(outPropertyData);
    }

LABEL_43:
    v19 = __src;
    if (__src)
    {
      goto LABEL_44;
    }

    return PropertyInfo;
  }

  if (v7 < 4)
  {
    v9 = 0;
    goto LABEL_34;
  }

  v10 = 0;
  v11 = 0;
  v12 = 4 * v8;
  do
  {
    if (a1 <= 1832149349)
    {
      if (a1 != 862416946 && a1 != 862417008)
      {
        goto LABEL_32;
      }

      v13 = *(outPropertyData + v10);
      v15 = v13 == 1365470320 || v13 == 1935764850 || v13 == 1935767394;
      v16 = v13 & 0xFFFFFF00;
      goto LABEL_26;
    }

    if (a1 == 1832149350)
    {
      v13 = *(outPropertyData + v10);
      if (IsSupportedM4AFormat(v13))
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (a1 == 1832149606)
    {
      v13 = *(outPropertyData + v10);
      v16 = v13 & 0xFFFFFF00;
      v15 = v13 == 1885430115;
LABEL_26:
      if (v15 || v16 == 1633772288)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (a1 == 1836069990 && IsSupportedMP4Format(*(outPropertyData + v10)))
    {
      v13 = *(outPropertyData + v10);
LABEL_31:
      *(__src + v11++) = v13;
    }

LABEL_32:
    v10 += 4;
  }

  while (v12 != v10);
  v9 = 4 * v11;
LABEL_34:
  if (outPropertyData)
  {
    free(outPropertyData);
    outPropertyData = 0;
  }

  if (v9 >= *a2)
  {
    v18 = *a2;
  }

  else
  {
    v18 = v9;
  }

  *a2 = v18;
  if (!a3)
  {
    PropertyInfo = 0;
    goto LABEL_43;
  }

  v19 = __src;
  memcpy(a3, __src, v18);
  PropertyInfo = 0;
  if (!v19)
  {
    return PropertyInfo;
  }

LABEL_44:
  free(v19);
  return PropertyInfo;
}

void sub_18F8E2AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (a10)
  {
    free(a10);
  }

  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void MP4_AudioFormat::GetFileTypeName(MP4_AudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"MPEG-4");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"MPEG-4 Audio", @"MPEG-4 Audio", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *MP4_AudioFormat::GetMIMETypes(MP4_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"audio/mp4";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_AudioFormat::GetUTIs(MP4_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"public.mpeg-4";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_AudioFormat::GetExtensions(MP4_AudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"mp4";
  values[1] = @"mpg4";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL MP4_AudioFormat::ExtensionIsThisFormat(MP4_AudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"mp4", 1uLL))
  {
    return CFStringCompare(theString1, @"mpg4", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

uint64_t MP4_M4A_AudioFormat::GetHFSCodes(MP4_M4A_AudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 1295270176;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

void MP4_M4A_AudioFormat::GetFileTypeName(MP4_M4A_AudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"Apple MPEG-4");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"Apple MPEG-4 Audio", @"Apple MPEG-4 Audio", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *MP4_M4A_AudioFormat::GetMIMETypes(MP4_M4A_AudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"audio/x-m4a";
  values[1] = @"audio/x-m4r";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_M4A_AudioFormat::GetUTIs(MP4_M4A_AudioFormat *this, const __CFArray **a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"public.mpeg-4-audio";
  v5[1] = @"com.apple.m4a-audio";
  v5[2] = @"com.apple.mpeg-4-ringtone";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 3, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_M4A_AudioFormat::GetExtensions(MP4_M4A_AudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"m4a";
  values[1] = @"m4r";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL MP4_M4A_AudioFormat::ExtensionIsThisFormat(MP4_M4A_AudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"m4a", 1uLL))
  {
    return CFStringCompare(theString1, @"m4r", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

uint64_t MP4_M4B_AudioFormat::GetHFSCodes(MP4_M4B_AudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 1295270432;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

void MP4_M4B_AudioFormat::GetFileTypeName(MP4_M4B_AudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"Apple MPEG-4");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"Apple MPEG-4 AudioBooks", @"Apple MPEG-4 AudioBooks", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *MP4_M4B_AudioFormat::GetMIMETypes(MP4_M4B_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"audio/x-m4b";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_M4B_AudioFormat::GetUTIs(MP4_M4B_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"public.mpeg-4-audiobooks";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_M4B_AudioFormat::GetExtensions(MP4_M4B_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"m4b";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MP4_3GP_AudioFormat::GetHFSCodes(MP4_3GP_AudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 862417008;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

void MP4_3GP_AudioFormat::GetFileTypeName(MP4_3GP_AudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"3GPP");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"3GP Audio", @"3GP Audio", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *MP4_3GP_AudioFormat::GetMIMETypes(MP4_3GP_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"audio/3gpp";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_3GP_AudioFormat::GetUTIs(MP4_3GP_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"public.3gpp";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_3GP_AudioFormat::GetExtensions(MP4_3GP_AudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"3gp";
  values[1] = @"3gpp";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL MP4_3GP_AudioFormat::ExtensionIsThisFormat(MP4_3GP_AudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"3gp", 1uLL))
  {
    return CFStringCompare(theString1, @"3gpp", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

uint64_t MP4_3GP2_AudioFormat::GetHFSCodes(MP4_3GP2_AudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 862416946;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

void MP4_3GP2_AudioFormat::GetFileTypeName(MP4_3GP2_AudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"3GPP-2");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"3GPP-2 Audio", @"3GPP-2 Audio", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *MP4_3GP2_AudioFormat::GetMIMETypes(MP4_3GP2_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"audio/3gpp2";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_3GP2_AudioFormat::GetUTIs(MP4_3GP2_AudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"public.3gpp2";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *MP4_3GP2_AudioFormat::GetExtensions(MP4_3GP2_AudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"3g2";
  values[1] = @"3gp2";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL MP4_3GP2_AudioFormat::ExtensionIsThisFormat(MP4_3GP2_AudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"3g2", 1uLL))
  {
    return CFStringCompare(theString1, @"3gp2", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

unint64_t AT::RingBufferErrorCategory::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 + 5) > 9)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1E72C2CB0[a1 + 5];
  }

  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, v4, result);
  }

  a2[v6] = 0;
  return result;
}

void AT::RingBufferErrorCategory::~RingBufferErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x193ADF220);
}

uint64_t *AT::RingBufferErrorCategory::instance(AT::RingBufferErrorCategory *this)
{
  {
    AT::RingBufferErrorCategory::instance(void)::global = &unk_1F033E960;
  }

  return &AT::RingBufferErrorCategory::instance(void)::global;
}

void AT::RingBuffer::RingBuffer(AT::RingBuffer *this, const AudioStreamBasicDescription *a2, int a3)
{
  v3 = *&a2->mSampleRate;
  v4 = *&a2->mBytesPerPacket;
  *(this + 4) = *&a2->mBitsPerChannel;
  *this = v3;
  *(this + 1) = v4;
  *(this + 10) = a3;
  mChannelsPerFrame = a2->mChannelsPerFrame;
  a2->mFormatFlags;
  operator new();
}

AT::RingBuffer::Impl *AT::RingBuffer::Impl::Impl(AT::RingBuffer::Impl *this, const AudioStreamBasicDescription *a2, _anonymous_namespace_::EABLImpl *a3, int a4, int a5)
{
  v5 = a3;
  v8 = *&a2->mSampleRate;
  v9 = *&a2->mBytesPerPacket;
  *(this + 4) = *&a2->mBitsPerChannel;
  *this = v8;
  *(this + 1) = v9;
  *(this + 10) = a5;
  *(this + 11) = a3;
  *(this + 12) = a4;
  *(this + 13) = a5 * a4;
  CA::AudioBuffersBase::AudioBuffersBase(this + 7, v10, 1);
  if (v5 > 1)
  {
    mChannelsPerFrame = 1;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  v12 = CA::AudioBuffersDeprecated::Prepare(*(this + 7), mChannelsPerFrame, *(this + 13));
  v13 = 0;
  *(this + 8) = v12;
  *(this + 72) = 0;
  *(this + 168) = 0;
  do
  {
    v14 = this + v13;
    *(v14 + 22) = 0;
    *(v14 + 23) = 0;
    *(v14 + 48) = 0;
    v13 += 24;
  }

  while (v13 != 768);
  *(this + 236) = 0;
  *(this + 474) = 257;
  if (!AT::gErrorCategory)
  {
    AT::RingBufferErrorCategory::instance(v12);
    AT::gErrorCategory = &AT::RingBufferErrorCategory::instance(void)::global;
  }

  for (i = 0; i != 768; i += 24)
  {
    v16 = this + i;
    *(v16 + 22) = 0;
    *(v16 + 23) = 0;
    *(v16 + 48) = 0;
  }

  atomic_store(0, this + 236);
  *(this + 948) = 1;
  return this;
}

void AT::RingBuffer::RingBuffer(AT::RingBuffer *this, unsigned int a2, int a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = a3;
  *(this + 28) = 0;
  *(this + 9) = 0;
  *(this + 10) = a4;
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  operator new();
}

void AT::RingBuffer::~RingBuffer(AT::RingBuffer *this)
{
  v1 = *(this + 6);
  *(this + 6) = 0;
  if (v1)
  {
    if (*(v1 + 168) == 1)
    {
      AT::RingBuffer::Impl::InputConverter::~InputConverter((v1 + 72));
    }

    ExtendedAudioBufferList_Destroy(*(v1 + 56));
    MEMORY[0x193ADF220](v1, 0x1070C40F214F66CLL);
  }
}

void AT::RingBuffer::Impl::InputConverter::~InputConverter(AT::RingBuffer::Impl::InputConverter *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }
}

uint64_t AT::RingBuffer::Clear(uint64_t this)
{
  v1 = *(this + 48);
  v2 = (v1 + 192);
  v3 = 768;
  do
  {
    *(v2 - 2) = 0;
    *(v2 - 1) = 0;
    *v2 = 0;
    v2 += 6;
    v3 -= 24;
  }

  while (v3);
  atomic_store(0, (v1 + 944));
  *(v1 + 948) = 1;
  return this;
}

uint64_t AT::RingBuffer::SetInputFormat(AT::RingBuffer *this, const AudioStreamBasicDescription *a2)
{
  v2 = *(this + 6);
  if (a2->mSampleRate == *v2)
  {
    if (*(v2 + 168) == 1)
    {
      AT::RingBuffer::Impl::InputConverter::~InputConverter((v2 + 72));
      *(v2 + 168) = 0;
    }

    mBytesPerFrame = a2->mBytesPerFrame;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    v6 = *&a2->mBitsPerChannel;
    v11 = *&a2->mBytesPerPacket;
    mFormatID = a2->mFormatID;
    mFormatFlags = a2->mFormatFlags;
    *(v2 + 72) = a2->mSampleRate;
    *(v2 + 80) = mFormatID;
    *(v2 + 84) = mFormatFlags;
    *(v2 + 88) = v11;
    if ((mFormatFlags & 0x20) != 0)
    {
      v9 = mChannelsPerFrame;
    }

    else
    {
      v9 = 1;
    }

    *(v2 + 96) = mBytesPerFrame;
    *(v2 + 100) = mChannelsPerFrame;
    *(v2 + 104) = v6;
    std::vector<char>::vector[abi:ne200100]((v2 + 112), (16 * v9) | 8);
  }

  return 4294967246;
}

void sub_18F8E471C(_Unwind_Exception *exception_object)
{
  v3 = v1[17];
  if (v3)
  {
    v1[18] = v3;
    operator delete(v3);
  }

  v4 = v1[14];
  if (v4)
  {
    v1[15] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AT::RingBuffer::Fetch(AT::RingBuffer *this, AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v7 = *(this + 6);
  v8 = a4 + a3;
  result = AT::RingBuffer::Impl::CheckTimeBounds(v7, a4, v8);
  if (!result)
  {
    if (v5)
    {
      v10 = *(v7 + 40);
      v11 = *(v7 + 48);
      v12 = ((((a4 % v10) >> 63) & v10) + (a4 % v10)) * v11;
      v5 = ((((v8 % v10) >> 63) & v10) + (v8 % v10)) * v11;
      if (v12 >= v5)
      {
        v17 = *(v7 + 52) - v12;
        LODWORD(mNumberBuffers) = a2->mNumberBuffers;
        if (a2->mNumberBuffers)
        {
          v18 = 0;
          v19 = *(v7 + 64);
          v20 = 16;
          do
          {
            memcpy(*(&a2->mNumberBuffers + v20), (*(v19 + v20) + v12), v17);
            ++v18;
            mNumberBuffers = a2->mNumberBuffers;
            v20 += 16;
          }

          while (v18 < mNumberBuffers);
          if (mNumberBuffers)
          {
            v21 = 0;
            v22 = *(v7 + 64);
            v23 = 16;
            do
            {
              memcpy((*(&a2->mNumberBuffers + v23) + v17), *(v22 + v23), v5);
              ++v21;
              mNumberBuffers = a2->mNumberBuffers;
              v23 += 16;
            }

            while (v21 < mNumberBuffers);
          }
        }

        LODWORD(v5) = v17 + v5;
        if (!mNumberBuffers)
        {
          return AT::RingBuffer::Impl::CheckTimeBounds(v7, a4, v8);
        }

        goto LABEL_18;
      }

      v5 -= v12;
      LODWORD(mNumberBuffers) = a2->mNumberBuffers;
      if (a2->mNumberBuffers)
      {
        v14 = 0;
        v15 = *(v7 + 64);
        v16 = 16;
        do
        {
          memcpy(*(&a2->mNumberBuffers + v16), (*(v15 + v16) + v12), v5);
          ++v14;
          mNumberBuffers = a2->mNumberBuffers;
          v16 += 16;
        }

        while (v14 < mNumberBuffers);
      }
    }

    else
    {
      LODWORD(mNumberBuffers) = a2->mNumberBuffers;
    }

    if (!mNumberBuffers)
    {
      return AT::RingBuffer::Impl::CheckTimeBounds(v7, a4, v8);
    }

LABEL_18:
    v24 = mNumberBuffers;
    v25 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
    v26 = vdupq_n_s64(v24 - 1);
    v27 = xmmword_18F9016B0;
    v28 = xmmword_18F9016C0;
    v29 = &a2[1].mBuffers[0].mData + 1;
    v30 = vdupq_n_s64(4uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v26, v28));
      if (vuzp1_s16(v31, *v26.i8).u8[0])
      {
        *(v29 - 8) = v5;
      }

      if (vuzp1_s16(v31, *&v26).i8[2])
      {
        *(v29 - 4) = v5;
      }

      if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
      {
        *v29 = v5;
        v29[4] = v5;
      }

      v27 = vaddq_s64(v27, v30);
      v28 = vaddq_s64(v28, v30);
      v29 += 16;
      v25 -= 4;
    }

    while (v25);
    return AT::RingBuffer::Impl::CheckTimeBounds(v7, a4, v8);
  }

  return result;
}

uint64_t AT::RingBuffer::Impl::CheckTimeBounds(AT::RingBuffer::Impl *this, uint64_t a2, uint64_t a3)
{
  v4 = this + 176;
  v5 = 8;
  result = 4;
  while (1)
  {
    v7 = atomic_load(this + 236);
    v8 = &v4[24 * (v7 & 0x1F)];
    v9 = *v8;
    v10 = *(v8 + 1);
    if (*(v8 + 4) == v7)
    {
      break;
    }

    if (!--v5)
    {
      return result;
    }
  }

  if (v9 <= a2)
  {
    if (v10 >= a3)
    {
      return 0;
    }

    else if (v10 > a2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v10 >= a3)
  {
    if (v9 >= a3)
    {
      return 4294967294;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    return 3;
  }
}

uint64_t AT::RingBuffer::GetTimeBounds@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 48);
  v3 = v2 + 176;
  v4 = 8;
  v5 = (v2 + 944);
  while (1)
  {
    v6 = atomic_load(v5);
    v7 = v3 + 24 * (v6 & 0x1F);
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*(v7 + 16) == v6)
    {
      break;
    }

    if (!--v4)
    {
      v10 = 0;
      v9 = AT::gErrorCategory;
      v8 = 4;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  return this;
}

uint64_t AT::RingBuffer::TouchMemory(AT::RingBuffer *this)
{
  v1 = *(this + 6);
  v2 = *(v1 + 64);
  v3 = *v2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 + 2;
    v7 = *(v1 + 52);
    do
    {
      if (v7)
      {
        for (i = 0; i < v7; i += 4096)
        {
          v5 += *(*&v6[4 * v4 + 2] + i);
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }

  else
  {
    v5 = 0;
  }

  result = (AT::RingBuffer::Impl::TouchMemory(void)::gTempValue + v5);
  AT::RingBuffer::Impl::TouchMemory(void)::gTempValue += v5;
  return result;
}

void MP4BoxParser_SampleToGroup::~MP4BoxParser_SampleToGroup(MP4BoxParser_SampleToGroup *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void MP4BoxParser_SampleToGroup::MP4BoxParser_SampleToGroup(MP4BoxParser_SampleToGroup *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = &unk_1F033E9A8;
  *(this + 60) = 0;
  *(this + 16) = 0;
  *(this + 68) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
}

uint64_t ShortTermLinearInterpolationResampler::SetRate(uint64_t this, double a2)
{
  if (a2 < 0.0 || a2 > 32.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  *(this + 40) = a2;
  *(this + 24) = vcvtd_n_s64_f64(a2, 0x20uLL);
  return this;
}

FILE *CAFormatter::InitWithMemoryStream(CAFormatter *this, FILE **a2)
{
  result = CAMemoryStream::cstr(a2);
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  *this = result;
  return result;
}

void CAFormatter::CAFormatter(CAFormatter *this, const int *a2, int a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = funopen(&v10, 0, CAMemoryStream::Write, 0, 0);
  v10 = v6;
  v7 = a3 - 1;
  if (a3 >= 1)
  {
    v8 = v6;
    while (1)
    {
      fprintf(v8, "%d", *a2);
      if (!v7)
      {
        break;
      }

      ++a2;
      fputc(32, v8);
      --v7;
    }
  }

  v9 = CAMemoryStream::cstr(&v10);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  *this = v9;
  fclose(v10);
  free(v11);
}

void sub_18F8E4E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, FILE *a11, void *a12)
{
  fclose(a11);
  free(a12);
  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, const float *a2, int a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = funopen(&v10, 0, CAMemoryStream::Write, 0, 0);
  v10 = v6;
  v7 = a3 - 1;
  if (a3 >= 1)
  {
    v8 = v6;
    while (1)
    {
      fprintf(v8, "%.3f", *a2);
      if (!v7)
      {
        break;
      }

      ++a2;
      fputc(32, v8);
      --v7;
    }
  }

  v9 = CAMemoryStream::cstr(&v10);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  *this = v9;
  fclose(v10);
  free(v11);
}

void sub_18F8E4F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, FILE *a11, void *a12)
{
  fclose(a11);
  free(a12);
  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, float *a2, int a3, int a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v8 = funopen(&v13, 0, CAMemoryStream::Write, 0, 0);
  v13 = v8;
  fputc(124, v8);
  if (a4 >= 1)
  {
    do
    {
      v9 = a3;
      if (a3 >= 1)
      {
        do
        {
          v10 = *a2++;
          fprintf(v8, " %.3f", v10);
          --v9;
        }

        while (v9);
      }

      fwrite("| ", 2uLL, 1uLL, v8);
    }

    while (a4-- > 1);
  }

  v12 = CAMemoryStream::cstr(&v13);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  *this = v12;
  fclose(v13);
  free(v14);
}

void sub_18F8E5050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, FILE *a11, void *a12)
{
  fclose(a11);
  free(a12);
  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, unsigned __int8 *a2, int a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = funopen(&v11, 0, CAMemoryStream::Write, 0, 0);
  v11 = v6;
  if (a3 >= 1)
  {
    v7 = v6;
    v8 = a3 + 1;
    do
    {
      v9 = *a2++;
      fprintf(v7, "%02x", v9);
      --v8;
    }

    while (v8 > 1);
  }

  v10 = CAMemoryStream::cstr(&v11);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  *this = v10;
  fclose(v11);
  free(v12);
}

void sub_18F8E5144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, FILE *a11, void *a12)
{
  fclose(a11);
  free(a12);
  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, const CAStreamBasicDescription *a2, double a3, int8x8_t a4)
{
  CA::StreamDescription::AsString(__p, a2, a3, a4);
  if (v7 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  CAFormatter::Init(this, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  CAFormatter::CAFormatter(this, a2, a3, a4);
}

void sub_18F8E51C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioTimeStamp *a2, char a3, int a4)
{
  if (a2)
  {
    CAFormatter::Init(this, a2, a3, a4);
  }

  else
  {
    CAFormatter::Init(this, "(null)");
  }
}

void CAFormatter::Init(CAFormatter *this, const AudioTimeStamp *a2, char a3, int a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v8 = funopen(&v13, 0, CAMemoryStream::Write, 0, 0);
  v9 = v8;
  v13 = v8;
  if ((a3 & 2) != 0)
  {
    if ((a2->mFlags & 2) != 0)
    {
      fprintf(v8, "%.6f", a2->mHostTime * 0.0000000416666667);
      if ((a3 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      fwrite("invalid ht", 0xAuLL, 1uLL, v8);
      if ((a3 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    fwrite(", ", 2uLL, 1uLL, v9);
LABEL_10:
    if (a2->mFlags)
    {
      mSampleTime = a2->mSampleTime;
      if (a4)
      {
        fprintf(v9, "0x%qx st");
      }

      else
      {
        fprintf(v9, "%lld st");
      }
    }

    else
    {
      fwrite("invalid st", 0xAuLL, 1uLL, v9);
    }

LABEL_15:
    v10 = 0;
    if ((a3 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (a3)
  {
    goto LABEL_10;
  }

  v10 = 1;
  if ((a3 & 4) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((a2->mFlags & 4) != 0)
  {
    if ((v10 & 1) == 0)
    {
      fwrite(", ", 2uLL, 1uLL, v9);
    }

    fprintf(v9, "%.6f rs", a2->mRateScalar);
  }

LABEL_20:
  v12 = CAMemoryStream::cstr(&v13);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  *this = v12;
  fclose(v13);
  free(v14);
}

void sub_18F8E53E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, FILE *a11, void *a12)
{
  fclose(a11);
  free(a12);
  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioComponentDescription *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*&a2->componentFlags)
  {
    snprintf(__str, 0x30uLL, "/0x%x/0x%x", a2->componentFlags, a2->componentFlagsMask);
  }

  else
  {
    __str[0] = 0;
  }

  Format4CC(a2->componentType, v8, 0x10uLL);
  Format4CC(a2->componentSubType, v7, 0x10uLL);
  Format4CC(a2->componentManufacturer, v6, 0x10uLL);
  snprintf(__s, 0x30uLL, "%s/%s/%s%s", v8, v7, v6, __str);
  CAFormatter::Init(this, __s);
  v4 = *MEMORY[0x1E69E9840];
}

char *Format4CC(unsigned int a1, char *__str, size_t __size)
{
  v6 = bswap32(a1);
  *__str = v6;
  v7 = MEMORY[0x1E69E9830];
  if ((v6 & 0x80) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v8 = __str[1];
  if ((v8 & 0x80000000) != 0)
  {
    if (!__maskrune(v8, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v7 + 4 * v8 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v9 = __str[2];
  if ((v9 & 0x80000000) != 0)
  {
    if (!__maskrune(v9, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v7 + 4 * v9 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v10 = __str[3];
  if ((v10 & 0x80000000) != 0)
  {
    if (__maskrune(v10, 0x40000uLL))
    {
      goto LABEL_15;
    }

LABEL_17:
    snprintf(__str, __size, "0x%08x", a1);
    return __str;
  }

  if ((*(v7 + 4 * v10 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  __str[4] = 0;
  return __str;
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioClassDescription *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  Format4CC(a2->mType, v7, 0x10uLL);
  Format4CC(a2->mSubType, v6, 0x10uLL);
  Format4CC(a2->mManufacturer, v5, 0x10uLL);
  snprintf(__str, 0x30uLL, "%s/%s/%s", v7, v6, v5);
  CAFormatter::Init(this, __str);
  v4 = *MEMORY[0x1E69E9840];
}

void CAFormatter::CAFormatter(CAFormatter *this, OpaqueAudioConverter *a2)
{
  CAFormatter::InitCAShowable(this, a2, "AudioConverterRef");
}

{
  CAFormatter::InitCAShowable(this, a2, "AudioConverterRef");
}

FILE *CAFormatter::InitCAShowable(CAFormatter *this, uint64_t a2, const char *__s)
{
  if (a2)
  {
    result = CACopyObjectDescription(a2, 0);
    *this = result;
  }

  else
  {
    v6 = strlen(__s);
    v7 = malloc_type_malloc(v6 + 20, 0x100004077774924uLL);
    *this = v7;
    return snprintf(v7, v6 + 20, "NULL %s", __s);
  }

  return result;
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioObjectPropertyAddress *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  Format4CC(a2->mSelector, v7, 0x10uLL);
  Format4CC(a2->mScope, v6, 0x10uLL);
  Format4CC(a2->mElement, v5, 0x10uLL);
  snprintf(__str, 0x30uLL, "%s/%s/%s", v7, v6, v5);
  CAFormatter::Init(this, __str);
  v4 = *MEMORY[0x1E69E9840];
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioObjectPropertyAddress *a2, unsigned int *a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v8 = funopen(&v22, 0, CAMemoryStream::Write, 0, 0);
  v9 = v8;
  v22 = v8;
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1885762591)
  {
    if (mSelector == 1718839674)
    {
      v15 = *a3;
      fprintf(v8, "(UInt32)0x%x");
      goto LABEL_20;
    }

    if (mSelector == 1768845421)
    {
      goto LABEL_18;
    }

    if (mSelector != 1853059700)
    {
      goto LABEL_22;
    }

    v11 = *a3;
    fprintf(v8, "(Float64)%g");
    goto LABEL_20;
  }

  if (mSelector > 1936092531)
  {
    if (mSelector == 1936092532)
    {
      goto LABEL_13;
    }

    if (mSelector != 1987013741)
    {
      goto LABEL_22;
    }

    v12 = *a3;
    fprintf(v8, "(Float32)%g");
LABEL_20:
    v16 = CAMemoryStream::cstr(&v22);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *this = v16;
    goto LABEL_21;
  }

  if (mSelector != 1885762592)
  {
    if (mSelector != 1919120504)
    {
LABEL_22:
      if (a4 >= 1)
      {
        v18 = a4 + 1;
        do
        {
          v19 = *a3;
          a3 = (a3 + 1);
          fprintf(v9, "%02x", v19);
          --v18;
        }

        while (v18 > 1);
      }

      goto LABEL_20;
    }

LABEL_18:
    Format4CC(*a3, __str, 0xCuLL);
    fputs(__str, v9);
    goto LABEL_20;
  }

LABEL_13:
  v13 = *(a3 + 1);
  *__str = *a3;
  v27 = v13;
  v28 = *(a3 + 4);
  CA::StreamDescription::AsString(__p, __str, *__str, *&v13);
  if (v21 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  CAFormatter::Init(this, v14);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  fclose(v22);
  free(v23);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_18F8E5AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, FILE *a16, void *a17)
{
  fclose(a16);
  free(a17);
  _Unwind_Resume(a1);
}

uint64_t CAFormatter::DumpAudioBuffer(FILE *this, __sFILE *a2, const char *a3, const AudioBuffer *a4, int a5, int a6, int a7)
{
  v10 = a4;
  fprintf(this, "%s%5dbytes %dch @ %p", a2, *(a3 + 1), *a3, *(a3 + 1));
  if (a5 >= v10)
  {
    a5 = v10;
  }

  if (a5)
  {
    if (*(a3 + 1))
    {
      fputc(58, this);
      v13 = *a3 * a5;
      if (v13 >= 1)
      {
        v14 = *(a3 + 1);
        if (a7)
        {
          v15 = " %06X";
        }

        else
        {
          v15 = " %8d";
        }

        if (a7)
        {
          v16 = " %02X";
        }

        else
        {
          v16 = " %4d";
        }

        for (i = v13 + 1; i > 1; --i)
        {
          if (a6 < 0)
          {
            if (a6 <= -4)
            {
              if (a6 == -10)
              {
LABEL_32:
                v22 = *v14;
                v14 += 4;
                goto LABEL_33;
              }

              if (a6 == -4)
              {
                v21 = *v14;
                v14 += 4;
LABEL_38:
                fprintf(this, " %08X");
              }
            }

            else
            {
              switch(a6)
              {
                case -3:
                  v25 = (v14[2] << 16) | (v14[1] << 8);
                  v26 = *v14;
LABEL_41:
                  fprintf(this, v15, v25 | v26);
                  v14 += 3;
                  break;
                case -2:
                  v23 = *v14;
                  if (a7)
                  {
LABEL_35:
                    fprintf(this, " %04X");
                    goto LABEL_36;
                  }

LABEL_19:
                  fprintf(this, " %6d");
LABEL_36:
                  v14 += 2;
                  break;
                case -1:
                  goto LABEL_24;
              }
            }
          }

          else if (a6 > 2)
          {
            switch(a6)
            {
              case 3:
                v25 = (*v14 << 16) | (v14[1] << 8);
                v26 = v14[2];
                goto LABEL_41;
              case 4:
                v24 = *v14;
                v14 += 4;
                goto LABEL_38;
              case 10:
                v20 = *v14;
                v14 += 4;
LABEL_33:
                fprintf(this, " %6.3f");
                break;
            }
          }

          else
          {
            switch(a6)
            {
              case 0:
                goto LABEL_32;
              case 1:
LABEL_24:
                v19 = *v14++;
                fprintf(this, v16, v19);
                break;
              case 2:
                v18 = bswap32(*v14) >> 16;
                if (a7)
                {
                  goto LABEL_35;
                }

                goto LABEL_19;
            }
          }
        }
      }
    }
  }

  return fputc(10, this);
}

uint64_t CAFormatter::DumpAudio(FILE *this, __sFILE *a2, const AudioBuffer *a3, int a4, int a5, const char *a6, const char *a7, const char *a8, const char *a9)
{
  v9 = a7;
  v23 = *MEMORY[0x1E69E9840];
  v15 = "AudioBufferList";
  v16 = ", ";
  if (a6)
  {
    v15 = a6;
  }

  v17 = "";
  if (a8)
  {
    v17 = a8;
  }

  else
  {
    v16 = "";
  }

  result = fprintf(this, "%s@%p (%d fr%s%s):\n", v15, a2, a3, v16, v17);
  if (LODWORD(a2->_p))
  {
    v19 = 0;
    p_r = &a2->_r;
    do
    {
      snprintf(__str, 0x20uLL, "    [%2d] ", v19);
      result = CAFormatter::DumpAudioBuffer(this, __str, p_r, a3, a4, a5, v9);
      ++v19;
      p_r += 4;
    }

    while (v19 < LODWORD(a2->_p));
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void CAFormatter::CAFormatter(CAFormatter *this, __sFILE *a2, const AudioBuffer *a3, AudioStreamBasicDescription *a4, const char *a5, const char *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  AudioFormatString(a4, __dst, 0x50uLL, &v18);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v11 = funopen(&v14, 0, CAMemoryStream::Write, 0, 0);
  CAFormatter::DumpAudio(v11, a2, a3, 8, v18, a5, a6, __dst, v11);
  v12 = CAMemoryStream::cstr(&v14);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  *this = v12;
  fclose(v14);
  free(v15);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_18F8E5FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, void *a10)
{
  fclose(a9);
  free(a10);
  _Unwind_Resume(a1);
}

_DWORD *AudioFormatString(_DWORD *result, char *__dst, size_t __size, int *a4)
{
  v4 = result[2];
  v5 = result[3];
  v6 = result[6];
  v7 = result[7];
  v8 = result[8];
  *a4 = 1;
  *__dst = 0;
  if (v4 == 1819304813)
  {
    if (v5)
    {
      if (v8 == 32)
      {
        if ((v5 & 2) != 0)
        {
          *a4 = 10;
          v12 = "BEF";
        }

        else
        {
          *a4 = -10;
          v12 = "LEF";
        }

        return strlcpy(__dst, v12, __size);
      }
    }

    else
    {
      if (!v6)
      {
LABEL_6:
        *a4 = 0;
        return result;
      }

      if ((v5 & 0x20) != 0)
      {
        v7 = 1;
      }

      else if (!v7)
      {
        goto LABEL_6;
      }

      v13 = v6 / v7;
      *a4 = v13;
      if (v13 >= 1)
      {
        v14 = result[8];
        if (((result[3] >> 7) & 0x3F) != 0)
        {
          snprintf(__dst, __size, "%d.%d-bit");
        }

        else
        {
          v16 = result[8];
          snprintf(__dst, __size, "%d-bit");
        }

        if ((v5 & 2) != 0)
        {
          v15 = " BEI";
        }

        else
        {
          *a4 = -*a4;
          v15 = " LEI";
        }

        return strlcat(__dst, v15, __size);
      }
    }
  }

  return result;
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioBufferList *a2, unsigned int a3, const AudioStreamBasicDescription *a4, const char *a5, int a6)
{
  *(&__str._ub._size + 1) = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v10 = funopen(&v31, 0, CAMemoryStream::Write, 0, 0);
  v11 = v10;
  v31 = v10;
  v12 = "AudioBufferList";
  if (a5)
  {
    v12 = a5;
  }

  fprintf(v10, "%s@%p:\n", v12, a2);
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    v26 = a3;
    while (1)
    {
      v15 = &a4[v13];
      if ((v15->mFormatFlags & 0x20) == 0)
      {
        break;
      }

      mChannelsPerFrame = v15->mChannelsPerFrame;
      if (mChannelsPerFrame)
      {
        goto LABEL_8;
      }

LABEL_15:
      v14 += mChannelsPerFrame;
      if (++v13 == v26)
      {
        goto LABEL_16;
      }
    }

    mChannelsPerFrame = 1;
LABEL_8:
    v17 = v14;
    v28 = mChannelsPerFrame;
    v29 = v14;
    v18 = mChannelsPerFrame;
    v19 = &a2->mBuffers[v14];
    do
    {
      if (v17 >= a2->mNumberBuffers)
      {
        break;
      }

      v30 = 0;
      AudioFormatString(v15, &__str._cookie + 2, 0x32uLL, &v30);
      mBytesPerFrame = v15->mBytesPerFrame;
      if (mBytesPerFrame)
      {
        v21 = v30;
      }

      else
      {
        mBytesPerFrame = v15->mBytesPerPacket;
        v21 = 4;
      }

      v22 = (v19->mDataByteSize / mBytesPerFrame);
      snprintf(&__str, 0x32uLL, "    [%2d] %-12.12s %5dfr ", v17, &__str._cookie + 2, v19->mDataByteSize / mBytesPerFrame);
      CAFormatter::DumpAudioBuffer(v11, &__str, v19++, v22, 8, v21, a6);
      ++v17;
      --v18;
    }

    while (v18);
    mChannelsPerFrame = v28;
    v14 = v29;
    goto LABEL_15;
  }

LABEL_16:
  v23 = CAMemoryStream::cstr(&v31);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  *this = v23;
  fclose(v31);
  free(v32);
  v24 = *MEMORY[0x1E69E9840];
}

void sub_18F8E6360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, FILE *a18, void *a19)
{
  fclose(a18);
  free(a19);
  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioBufferList *a2)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = funopen(&v10, 0, CAMemoryStream::Write, 0, 0);
  v5 = v4;
  v10 = v4;
  v6 = "";
  if (a2->mNumberBuffers > 1)
  {
    v6 = "s";
  }

  fprintf(v4, "%d buffer%s: ", a2->mNumberBuffers, v6);
  if (a2->mNumberBuffers)
  {
    v7 = 0;
    p_mData = &a2->mBuffers[0].mData;
    do
    {
      if (v7)
      {
        fwrite("; ", 2uLL, 1uLL, v5);
      }

      fprintf(v5, "%p-%p (%d)", *p_mData, *p_mData + *(p_mData - 1), *(p_mData - 1));
      ++v7;
      p_mData += 2;
    }

    while (v7 < a2->mNumberBuffers);
  }

  v9 = CAMemoryStream::cstr(&v10);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  *this = v9;
  fclose(v10);
  free(v11);
}

void sub_18F8E64C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, FILE *a13, void *a14)
{
  fclose(a13);
  free(a14);
  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioStreamPacketDescription *a2, int a3, int a4)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v8 = funopen(&v15, 0, CAMemoryStream::Write, 0, 0);
  v9 = v8;
  v15 = v8;
  if (a2)
  {
    v10 = "";
    if (a3 > 1)
    {
      v10 = "s";
    }

    fprintf(v8, "%d packet desc%s:\n", a3, v10);
    if (a3 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = a3;
    }

    if (a4 <= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        fprintf(v9, "  [%2d] byte offsets %d - %d (%d)", i, a2->mStartOffset, a2->mDataByteSize + a2->mStartOffset, a2->mDataByteSize);
        if (a2->mVariableFramesInPacket)
        {
          fprintf(v9, "; %d fr\n", a2->mVariableFramesInPacket);
        }

        else
        {
          fputc(10, v9);
        }

        ++a2;
      }
    }
  }

  else
  {
    fwrite("packet descs NULL\n", 0x12uLL, 1uLL, v8);
  }

  v14 = CAMemoryStream::cstr(&v15);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  *this = v14;
  fclose(v15);
  free(v16);
}

void sub_18F8E6664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, FILE *a13, void *a14)
{
  fclose(a13);
  free(a14);
  _Unwind_Resume(a1);
}

void CAAUScopeElementFormatter::CAAUScopeElementFormatter(CAAUScopeElementFormatter *this, unsigned int a2, int a3)
{
  *this = 0;
  v6 = malloc_type_malloc(0x40uLL, 0x100004077774924uLL);
  *this = v6;
  if (!(a3 | a2))
  {
    strcpy(v6, "Global scope");
  }

  if (a2 > 5)
  {
    snprintf(v6, 0x40uLL, "scope %d, element %d");
  }

  else
  {
    v7 = CAAUScopeElementFormatter::CAAUScopeElementFormatter(unsigned int,unsigned int)::scopeNames[a2];
    snprintf(v6, 0x40uLL, "%s scope, element %d");
  }
}

void sub_18F8E6738(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CAHexDumpFormatter::CAHexDumpFormatter(CAHexDumpFormatter *this, unsigned __int8 *a2, int a3)
{
  *this = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = funopen(&v13, 0, CAMemoryStream::Write, 0, 0);
  v13 = v6;
  if (a3 >= 1)
  {
    if (a3 >= 0x400)
    {
      v7 = 1024;
    }

    else
    {
      v7 = a3;
    }

    do
    {
      fprintf(v6, "%08lX:  ", a2);
      for (i = 0; i != 16; ++i)
      {
        if (v7 <= i)
        {
          fwrite("   ", 3uLL, 1uLL, v6);
        }

        else
        {
          fprintf(v6, "%02X ", a2[i]);
        }
      }

      for (j = 0; j != 16; ++j)
      {
        if (v7 <= j)
        {
          v10 = 32;
        }

        else if (a2[j] - 32 >= 0x5F)
        {
          v10 = 46;
        }

        else
        {
          v10 = a2[j];
        }

        fputc(v10, v6);
      }

      fputc(10, v6);
      a2 += 16;
      v11 = v7 <= 16;
      v7 -= 16;
    }

    while (!v11);
  }

  v12 = CAMemoryStream::cstr(&v13);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  *this = v12;
  fclose(v13);
  free(v14);
}

void sub_18F8E68DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, FILE *a11, void *a12)
{
  fclose(a11);
  free(a12);
  if (*v12)
  {
    free(*v12);
  }

  _Unwind_Resume(a1);
}

AUHostingServiceClient *std::unique_ptr<AUHostingServiceClient>::reset[abi:ne200100](AUHostingServiceClient **a1, AUHostingServiceClient *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AUHostingServiceClient::~AUHostingServiceClient(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void sub_18F8E6FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, id location)
{
  _Block_object_dispose(&a15, 8);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15569(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t DSPGraph::Graph::getProperty(DSPGraph::Graph *this, unsigned int a2, unsigned int *a3, void *a4)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(this + 70, a2);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "getProperty");
    std::string::basic_string[abi:ne200100]<0>(&v11, "getProperty : inPropertyID not found");
    DSPGraph::ThrowException(1852204065, &v13, 2321, &v12, &v11);
  }

  v5 = v4[9];
  if (v4[10] == v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "getProperty");
    std::string::basic_string[abi:ne200100]<0>(&v11, "getProperty : property is not connected to any box.");
    DSPGraph::ThrowException(1969451041, &v13, 2329, &v12, &v11);
  }

  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = *(**v5 + 304);

  return v9();
}

void sub_18F8E7358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

unint64_t DSPGraph::Graph::getPropertyInfo(DSPGraph::Graph *this, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(this + 70, a2);
  if (v2)
  {
    v3 = v2[9];
    if (v2[10] == v3)
    {
      v5 = 0;
      v6 = 1969451041;
    }

    else
    {
      v4 = (*(**v3 + 296))(*v3, v3[2], v3[3], v3[4]);
      v5 = v4 & 0xFFFFFFFF00000000;
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1852204065;
  }

  return v5 | v6;
}

uint64_t *DSPGraph::Graph::setProperty(DSPGraph::Graph *this, unsigned int a2, uint64_t a3, const void *a4)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(this + 70, a2);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "setProperty");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setProperty : inPropertyID not found");
    DSPGraph::ThrowException(1852204065, &v11, 2293, &v10, &v9);
  }

  v7 = result[9];
  v8 = result[10];
  while (v7 != v8)
  {
    result = (*(**v7 + 312))(*v7, v7[2], v7[3], v7[4], a3, a4);
    v7 += 6;
  }

  return result;
}

void sub_18F8E7530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 762);
    DSPGraph::printi(a2, v4 + 4, "initialized %d\n");
  }

  return result;
}

uint64_t *std::unique_ptr<DSPGraph::Subset>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::__destroy_at[abi:ne200100]<DSPGraph::Graph::GraphBridge,0>(uint64_t a1)
{
  v3 = (a1 + 32);
  std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;

    operator delete(v2);
  }
}

void std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void boost::circular_buffer<double,std::allocator<double>>::destroy(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = v3 - v2;
  v7 = (v3 - v5) >> 3;
  if (v4 < v6 >> 3)
  {
    v7 = 0;
  }

  *(a1 + 16) = v2 + 8 * (v4 - v7);
  if (v5)
  {
    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,DSPGraph::Graph::profiler_t>,0>(uint64_t a1)
{
  boost::circular_buffer<double,std::allocator<double>>::destroy(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_18F8E7D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t DSPGraph::intHash(DSPGraph *this)
{
  v1 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
  v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return v3 ^ (v3 >> 31);
}

void *DSPGraph::Graph::processInPlace(DSPGraph::Graph *this, uint64_t a2)
{
  if ((*(this + 762) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "processInPlace");
    std::string::basic_string[abi:ne200100]<0>(&v6, "not initialized");
    DSPGraph::ThrowException(1768843553, &v8, 555, &v7, &v6);
  }

  if (((*(this + 36) - *(this + 35)) & 0x7FFFFFFF8) != 8 || ((*(this + 39) - *(this + 38)) & 0x7FFFFFFF8) != 8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "processInPlace");
    std::string::basic_string[abi:ne200100]<0>(&v6, "graph must have one input and one output to process in-place.");
    DSPGraph::ThrowException(1768975393, &v8, 559, &v7, &v6);
  }

  *(DSPGraph::Graph::in(this, 0) + 848) = a2;
  *(DSPGraph::Graph::out(this, 0) + 848) = a2;
  if (*(this + 764) == 1)
  {
    for (i = *(this + 8); i; i = *i)
    {
      DSPGraph::SimpleABL::set(*(i[2] + 56) + 80, *(a2 + 72));
    }
  }

  DSPGraph::Graph::checkCurSliceTicks(this, a2, a2);
  DSPGraph::Graph::processAll(this);

  return DSPGraph::Graph::propagateFlagsAndTimeStamp(this, a2);
}

void sub_18F8E7FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::addRenderCallback(uint64_t a1, uint64_t a2, unsigned int a3, signed int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 680);
  std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v51, a2);
  add = atomic_fetch_add(DSPGraph::RenderObserverList<DSPGraph::Graph>::add(std::function<void ()(DSPGraph::Graph*,unsigned int)>,DSPGraph::RenderCallbackType,DSPGraph::RenderCallbackOrder)::sToken, 1u);
  std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v52, v51);
  v53[0] = add + 1;
  std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v54, v52);
  v55 = __PAIR64__(a4, a3);
  std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](v52);
  v47[0] = (v6 + ((a3 != 0) << 6));
  v47[1] = 0;
  v47[2] = (v47[0] + 4);
  v48 = 1;
  os_unfair_lock_lock(v47[0] + 1);
  v49 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(v47[0]);
  v50 = v49 == 0;
  v8 = caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::mutator::copy_previous(v47);
  v9 = v8;
  v11 = *v8;
  v10 = v8[1];
  v12 = v10 - *v8;
  if (v10 == *v8)
  {
    v14 = v8[1];
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
    v14 = *v8;
    do
    {
      v15 = v13 >> 1;
      v16 = v14 + 48 * (v13 >> 1);
      v17 = *(v16 + 44);
      v18 = v16 + 48;
      v13 += ~(v13 >> 1);
      if (v17 > a4)
      {
        v13 = v15;
      }

      else
      {
        v14 = v18;
      }
    }

    while (v13);
  }

  v19 = v8[2];
  if (v10 >= v19)
  {
    v32 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4) + 1;
    if (v32 > 0x555555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v33 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v11) >> 4);
    if (2 * v33 > v32)
    {
      v32 = 2 * v33;
    }

    if (v33 >= 0x2AAAAAAAAAAAAAALL)
    {
      v34 = 0x555555555555555;
    }

    else
    {
      v34 = v32;
    }

    v60 = v9;
    if (v34)
    {
      std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>::allocate_at_least[abi:ne200100](v34);
    }

    v35 = v14 - v11;
    v36 = 16 * ((v14 - v11) >> 4);
    v56 = 0;
    v57 = v36;
    v58 = v36;
    v59 = 0;
    if (!(0xAAAAAAAAAAAAAAABLL * ((v14 - v11) >> 4)))
    {
      if (v35 < 1)
      {
        if (v14 == v11)
        {
          v39 = 1;
        }

        else
        {
          v39 = 0x5555555555555556 * ((v14 - v11) >> 4);
        }

        v63 = v9;
        std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>::allocate_at_least[abi:ne200100](v39);
      }

      v37 = 1 - 0x5555555555555555 * (v35 >> 4);
      v38 = -3 * (v37 >> 1);
      v36 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *>(16 * ((v14 - v11) >> 4), v36, v36 - 48 * (v37 >> 1));
      v57 += 16 * v38;
      v58 = v36;
    }

    *v36 = v53[0];
    std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v36 + 8, v54);
    *(v36 + 40) = v55;
    v58 += 48;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver*>(v14, v9[1], v58);
    v58 += v9[1] - v14;
    v9[1] = v14;
    v40 = v57 + *v9 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver*>(*v9, v14, v40);
    v41 = *v9;
    *v9 = v40;
    v56 = v41;
    v57 = v41;
    v9[1] = v58;
    v58 = v41;
    v42 = v9[2];
    v9[2] = v59;
    v59 = v42;
    std::__split_buffer<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver> &>::~__split_buffer(&v56);
  }

  else if (v14 == v10)
  {
    *v10 = v53[0];
    std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v10 + 8, v54);
    *(v10 + 40) = v55;
    v9[1] = v10 + 48;
  }

  else
  {
    v20 = v10 - 48;
    v21 = v8[1];
    if (v10 >= 0x30)
    {
      v21 = v8[1];
      do
      {
        *v21 = *v20;
        std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v21 + 8, v20 + 8);
        *(v21 + 40) = *(v20 + 40);
        v20 += 48;
        v21 += 48;
      }

      while (v20 < v10);
    }

    v9[1] = v21;
    if (v10 != v14 + 48)
    {
      v22 = 0;
      do
      {
        *(v10 + v22 - 48) = *(v10 + v22 - 96);
        std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::operator=[abi:ne200100](v10 + v22 - 40, v10 + v22 - 88);
        *(v10 + v22 - 8) = *(v10 + v22 - 56);
        v22 -= 48;
      }

      while (v14 - v10 + 48 != v22);
      v21 = v9[1];
    }

    v23 = v14 <= v53;
    v24 = v21 > v53;
    v26 = v23 && v24;
    v25 = !v23 || !v24;
    v27 = 12;
    if (v25)
    {
      v27 = 0;
    }

    *v14 = v53[v27];
    v28 = (v14 + 8);
    if (v25)
    {
      v29 = v54;
    }

    else
    {
      v29 = &v57;
    }

    std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v61, v29);
    if (v28 != v61)
    {
      v30 = v62;
      v31 = *(v14 + 32);
      if (v62 == v61)
      {
        if (v31 == v28)
        {
          (*(*v62 + 24))();
          (*(*v62 + 32))(v62);
          v62 = 0;
          (*(**(v14 + 32) + 24))(*(v14 + 32), v61);
          (*(**(v14 + 32) + 32))(*(v14 + 32));
          *(v14 + 32) = 0;
          v62 = v61;
          (*(v56 + 24))(&v56, v14 + 8);
          (*(v56 + 32))(&v56);
        }

        else
        {
          (*(*v62 + 24))();
          (*(*v62 + 32))(v62);
          v62 = *(v14 + 32);
        }

        *(v14 + 32) = v28;
      }

      else if (v31 == v28)
      {
        (*(*v31 + 24))(*(v14 + 32), v61);
        (*(**(v14 + 32) + 32))(*(v14 + 32));
        *(v14 + 32) = v62;
        v62 = v61;
      }

      else
      {
        v62 = *(v14 + 32);
        *(v14 + 32) = v30;
      }
    }

    std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](v61);
    v43 = 10;
    if (v26)
    {
      v43 = 22;
    }

    *(v14 + 40) = *&v53[v43];
  }

  caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::mutator::~mutator(v47);
  v44 = v53[0];
  std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](v54);
  std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](v51);
  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

void sub_18F8E8720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::mutator::copy_previous(void *result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (*(*result + v2 + 8))
  {
    v3 = result;
    v4 = v1 + 24 * v2;
    v10 = 0uLL;
    v11 = 0;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v12 = &v10;
    v13 = 0;
    if (v6 != v5)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4);
      if (v7 < 0x555555555555556)
      {
        std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>::allocate_at_least[abi:ne200100](v7);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = *(result + 9);
    v9 = (v1 + 24 * v8 + 16);
    if (*(v1 + 8 + v8) == 1)
    {
      v12 = (v1 + 24 * v8 + 16);
      std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v12);
    }

    else
    {
      *(v1 + 8 + v8) = 1;
    }

    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = v10;
    v9[2] = v11;
    v10 = 0uLL;
    v11 = 0;
    v3[1] = v9;
    v12 = &v10;
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18F8E8998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](va);
  __clang_call_terminate(a1);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::mutator::~mutator(uint64_t a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8))
  {
    v3 = *(a1 + 36);
    caulk::concurrent::details::lf_read_sync_write_impl::end_mutate(v2);
    v4 = *a1;
    v5 = *(a1 + 32);
    *(*a1 + v5 + 8) = 0;
    v7 = (v4 + 24 * v5 + 16);
    std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  if (*(a1 + 24) == 1)
  {
    os_unfair_lock_unlock(*(a1 + 16));
  }

  return a1;
}

uint64_t std::__split_buffer<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 8;
    v6 = a3 + 8;
    do
    {
      *(v6 - 8) = *(v5 - 8);
      v7 = std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v6, v5);
      *(v7 + 32) = *(v5 + 32);
      v8 = v5 + 40;
      v5 += 48;
      v6 = v7 + 48;
    }

    while (v8 != a2);
    do
    {
      result = std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](v4 + 8);
      v4 += 48;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 8;
    do
    {
      v6 = v5 - 8;
      *a3 = *(v5 - 8);
      std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::operator=[abi:ne200100](a3 + 8, v5);
      *(a3 + 40) = *(v5 + 32);
      a3 += 48;
      v5 += 48;
    }

    while (v6 + 48 != a2);
  }

  return a3;
}

uint64_t std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t DSPGraph::Graph::removeRenderCallback(DSPGraph::Graph *this, int a2)
{
  v3 = 0;
  v29[5] = *MEMORY[0x1E69E9840];
  v4 = *(this + 85) + 64;
  v25[0] = *(this + 85);
  v25[1] = v4;
  do
  {
    v5 = v25[v3];
    v21[0] = v5;
    v21[1] = 0;
    v21[2] = v5 + 1;
    v22 = 1;
    os_unfair_lock_lock(v5 + 1);
    v23 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(v5);
    v24 = v23 == 0;
    v6 = caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::mutator::copy_previous(v21);
    v8 = *v6;
    v7 = v6[1];
    while (1)
    {
      if (v8 == v7)
      {
        v10 = v7;
        goto LABEL_7;
      }

      v28 = *v8;
      std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v29, v8 + 8);
      v29[4] = *(v8 + 40);
      v9 = v28;
      std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](v29);
      if (v9 == a2)
      {
        break;
      }

      v8 += 48;
    }

    v10 = v7;
    if (v8 != v7)
    {
      v16 = v8 + 48;
      v10 = v8;
      while (v16 != v7)
      {
        v26 = *v16;
        std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::__value_func[abi:ne200100](v27, v16 + 8);
        v27[4] = *(v16 + 40);
        v17 = v26;
        std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](v27);
        if (v17 != a2)
        {
          *v10 = *v16;
          std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::operator=[abi:ne200100](v10 + 8, v16 + 8);
          *(v10 + 40) = *(v16 + 40);
          v10 += 48;
        }

        v16 += 48;
      }
    }

LABEL_7:
    v11 = v6[1];
    if (v10 != v11)
    {
      v12 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *,DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver *>(v11, v6[1], v10);
      v13 = v6[1];
      if (v13 != v12)
      {
        do
        {
          v14 = v13 - 48;
          std::__function::__value_func<void ()(DSPGraph::Graph *,unsigned int)>::~__value_func[abi:ne200100](v13 - 40);
          v13 = v14;
        }

        while (v14 != v12);
      }

      v6[1] = v12;
    }

    result = caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::mutator::~mutator(v21);
    ++v3;
  }

  while (v3 != 2);
  do
  {
    v18 = atomic_load(this + 464);
  }

  while ((v18 & 1) != 0);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F8E8EF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::unique_ptr<DSPGraph::IsoGroup>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[2];
    __p[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__function::__value_func<void ()(double)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F8E9288(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::pair<std::string const,DSPGraph::Graph::profiler_t>::~pair(uint64_t a1)
{
  boost::circular_buffer<double,std::allocator<double>>::destroy(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

double **boost::circular_buffer<double,std::allocator<double>>::push_back_impl<double const&>(double **result, double a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[4];
  if (v4 == (v3 - *result))
  {
    if (v3 != v2)
    {
      v5 = result[3];
      *v5 = a2;
      v6 = v5 + 1;
      if (v6 != v3)
      {
        v2 = v6;
      }

      result[2] = v2;
      result[3] = v2;
    }
  }

  else
  {
    v7 = result[3];
    *v7 = a2;
    v8 = v7 + 1;
    if (v8 != v3)
    {
      v2 = v8;
    }

    result[3] = v2;
    result[4] = (v4 + 1);
  }

  return result;
}

uint64_t std::__function::__func<DSPGraph::Graph::initializeProfilers(void)::$_1,std::allocator<DSPGraph::Graph::initializeProfilers(void)::$_1>,void ()(double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033F7A8;
  a2[1] = v2;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,DSPGraph::Graph::profiler_t>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<DSPGraph::Graph::initializeProfilers(void)::$_0,std::allocator<DSPGraph::Graph::initializeProfilers(void)::$_0>,void ()(double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033F760;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DSPGraph::Graph::initializeWithFlags(unsigned int)::$_0,std::allocator<DSPGraph::Graph::initializeWithFlags(unsigned int)::$_0>,void ()(DSPGraph::Box *,unsigned int)>::operator()(uint64_t a1, uint8_t **a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(*a2 + 11);
  v4 = *(*a2 + 12) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v6 = 0;
    v7 = v4 >> 5;
    while (1)
    {
      if (v7 <= v6)
      {
        goto LABEL_24;
      }

      v8 = (*(*(v3 + 32 * v6) + 40))(v3 + 32 * v6);
      v9 = *(v2 + 11);
      if (v6 >= (*(v2 + 12) - v9) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(__C, "out");
        v26 = v2 + 32;
        if (v2[55] < 0)
        {
          v26 = *v26;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v25, v26, (*(v2 + 12) - *(v2 + 11)) >> 5, v6);
      }

      v10 = *(*(v8 + 56) + 100);
      v11 = v10 / *(*((*(*(v9 + 32 * v6) + 40))(v9 + 32 * v6) + 120) + 16);
      if ((*(a1 + 8) & 0x20) != 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = *(v2 + 11);
      if (v6 >= (*(v2 + 12) - v13) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(__C, "out");
        v28 = v2 + 32;
        if (v2[55] < 0)
        {
          v28 = *v28;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v27, v28, (*(v2 + 12) - *(v2 + 11)) >> 5, v6);
      }

      v14 = *(*((*(*(v13 + 32 * v6) + 40))(v13 + 32 * v6) + 56) + 80);
      if (*v14)
      {
        break;
      }

LABEL_13:
      ++v6;
      v3 = *(v2 + 11);
      v7 = (*(v2 + 12) - v3) >> 5;
      if (v6 >= v7)
      {
        goto LABEL_14;
      }
    }

    v15 = 0;
    v16 = 4;
    while (1)
    {
      __C[0] = 0.0;
      vDSP_sve(*&v14[v16], 1, __C, v12);
      if ((LODWORD(__C[0]) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        break;
      }

      ++v15;
      v16 += 4;
      if (v15 >= *v14)
      {
        goto LABEL_13;
      }
    }

    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    v18 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      v19 = v2 + 32;
      if (v2[55] < 0)
      {
        v19 = *v19;
      }

      v20 = (*(*v2 + 16))(v2);
      *buf = 136315906;
      v31 = v19;
      v32 = 2080;
      v33 = v20;
      v34 = 1024;
      v35 = v6;
      v36 = 1024;
      v37 = v15;
      _os_log_fault_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: Box: %s (%s), non finite detected at output port: %u, buffer: %u", buf, 0x22u);
    }

    v21 = (v2 + 32);
    if (v2[55] < 0)
    {
      v21 = *v21;
    }

    v22 = (*(*v2 + 16))(v2);
    v2 = buf;
    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: Box: %s (%s), non finite detected at output port: %u, buffer: %u", v21, v22, v6, v15);
    qword_1EAD0BBC0 = buf;
    __break(1u);
LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__C, "out");
    v24 = v2 + 32;
    if (v2[55] < 0)
    {
      v24 = *v24;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v23, v24, (*(v2 + 12) - *(v2 + 11)) >> 5, v6);
  }

LABEL_14:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_18F8E990C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DSPGraph::Graph::initializeWithFlags(unsigned int)::$_0,std::allocator<DSPGraph::Graph::initializeWithFlags(unsigned int)::$_0>,void ()(DSPGraph::Box *,unsigned int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F033F718;
  *(a2 + 8) = *(result + 8);
  return result;
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_15695()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

void DSPGraph::Graph::removeWire(int8x8_t *this, unint64_t a2)
{
  v3 = this[7];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = vcnt_s8(v3);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v3)
    {
      v8 = v6 % *&v3;
    }
  }

  else
  {
    v8 = v6 & (*&v3 - 1);
  }

  v9 = this[6];
  v10 = *(*&v9 + 8 * v8);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    if (!a2)
    {
      return;
    }

    goto LABEL_19;
  }

  v12 = *&v3 - 1;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v13 >= *&v3)
      {
        v13 %= *&v3;
      }
    }

    else
    {
      v13 &= v12;
    }

    if (v13 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (*&v11[2] != a2)
  {
    goto LABEL_17;
  }

  v15 = v11[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v15 >= *&v3)
    {
      v15 %= *&v3;
    }
  }

  else
  {
    v15 &= v12;
  }

  v16 = *(*&v9 + 8 * v15);
  do
  {
    v17 = v16;
    v16 = *v16;
  }

  while (v16 != v11);
  if (v17 == &this[8])
  {
    goto LABEL_39;
  }

  v18 = v17[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v18 >= *&v3)
    {
      v18 %= *&v3;
    }
  }

  else
  {
    v18 &= v12;
  }

  if (v18 != v15)
  {
LABEL_39:
    if (!*v11)
    {
      goto LABEL_40;
    }

    v19 = *(*v11 + 8);
    if (v7.u32[0] > 1uLL)
    {
      if (v19 >= *&v3)
      {
        v19 %= *&v3;
      }
    }

    else
    {
      v19 &= v12;
    }

    if (v19 != v15)
    {
LABEL_40:
      *(*&v9 + 8 * v15) = 0;
    }
  }

  v20 = *v11;
  if (*v11)
  {
    v21 = *(*&v20 + 8);
    if (v7.u32[0] > 1uLL)
    {
      if (v21 >= *&v3)
      {
        v21 %= *&v3;
      }
    }

    else
    {
      v21 &= v12;
    }

    if (v21 != v15)
    {
      *(*&this[6] + 8 * v21) = v17;
      v20 = *v11;
    }
  }

  *v17 = v20;
  *v11 = 0;
  --*&this[9];
  operator delete(v11);
  if (a2)
  {
LABEL_19:
    v14 = *(*a2 + 8);

    v14(a2);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::unique_ptr<DSPGraph::Box>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[2];
    __p[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  operator delete(__p);
}

BOOL DSPGraph::Graph::has(DSPGraph::Graph *this, DSPGraph::Box *a2)
{
  v2 = (this + 24);
  do
  {
    v2 = *v2;
  }

  while (v2 && v2[2] != a2);
  return v2 != 0;
}

uint64_t DSPGraph::Graph::addSubset(uint64_t a1, const void **a2)
{
  Subset = DSPGraph::Graph::getSubset(a1, a2);
  if (!Subset)
  {
    operator new();
  }

  return Subset;
}

uint64_t DSPGraph::Graph::getSubset(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 904);
  v3 = *(a1 + 912);
  if (v2 != v3)
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    while (1)
    {
      v7 = *(*v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(*v2 + 8);
      }

      if (v5 == v7)
      {
        v9 = v8 >= 0 ? *v2 : **v2;
        if (!memcmp(v6, v9, v5))
        {
          break;
        }
      }

      v2 += 8;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

void *DSPGraph::Graph::box(uint64_t a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((a1 + 784), a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

uint64_t DSPGraph::Graph::box(int8x8_t *this, unint64_t a2)
{
  v2 = this[104];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (*&v2 <= a2)
      {
        v4 = a2 % *&v2;
      }
    }

    else
    {
      v4 = (*&v2 - 1) & a2;
    }

    v5 = *(*&this[103] + 8 * v4);
    if (v5)
    {
      for (i = *v5; i; i = *i)
      {
        v7 = i[1];
        if (v7 == a2)
        {
          if (i[2] == a2)
          {
            return i[3];
          }
        }

        else
        {
          if (v3.u32[0] > 1uLL)
          {
            if (v7 >= *&v2)
            {
              v7 %= *&v2;
            }
          }

          else
          {
            v7 &= *&v2 - 1;
          }

          if (v7 != v4)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t DSPGraph::Graph::analyzer(std::mutex *this, unint64_t a2)
{
  std::mutex::lock(this + 2);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>>>::find<unsigned long long>(&this[13].__m_.__opaque[24], a2);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock(this + 2);
  return v5;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void DSPGraph::Graph::addAnalyzer(std::mutex *this, unint64_t a2)
{
  std::mutex::lock(this + 2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = *&this[1].__m_.__opaque[24];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*&this[1].__m_.__opaque[16] + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != a2)
  {
    goto LABEL_17;
  }

  v13 = *(a2 + 88);
  v14 = *&this[13].__m_.__opaque[32];
  if (!*&v14)
  {
    goto LABEL_36;
  }

  v15 = vcnt_s8(v14);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = *(a2 + 88);
    if (v13 >= *&v14)
    {
      v16 = v13 % *&v14;
    }
  }

  else
  {
    v16 = (*&v14 - 1) & v13;
  }

  v17 = *(*&this[13].__m_.__opaque[24] + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_36:
    operator new();
  }

  while (2)
  {
    v19 = v18[1];
    if (v19 != v13)
    {
      if (v15.u32[0] > 1uLL)
      {
        if (v19 >= *&v14)
        {
          v19 %= *&v14;
        }
      }

      else
      {
        v19 &= *&v14 - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v18[2] != v13)
    {
LABEL_35:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  std::mutex::unlock(this + 2);
}

void sub_18F8EA95C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::mutex::unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void DSPGraph::Graph::removeAnalyzer(std::mutex *this, DSPGraph::Analyzer *a2)
{
  std::mutex::lock(this + 2);
  v4 = &this[1].__m_.__opaque[32];
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*(*(v4 + 2) + 88) == *(a2 + 11))
    {
      v5 = *&this[1].__m_.__opaque[24];
      v6 = *(v4 + 1);
      v7 = vcnt_s8(v5);
      v7.i16[0] = vaddlv_u8(v7);
      if (v7.u32[0] > 1uLL)
      {
        if (v6 >= *&v5)
        {
          v6 %= *&v5;
        }
      }

      else
      {
        v6 &= *&v5 - 1;
      }

      v8 = *&this[1].__m_.__opaque[16];
      v9 = *(v8 + 8 * v6);
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9 != v4);
      if (v10 == &this[1].__m_.__opaque[32])
      {
        goto LABEL_21;
      }

      v11 = *(v10 + 1);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        if (!*v4)
        {
          goto LABEL_22;
        }

        v12 = *(*v4 + 8);
        if (v7.u32[0] > 1uLL)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v6)
        {
LABEL_22:
          *(v8 + 8 * v6) = 0;
        }
      }

      v13 = *v4;
      if (*v4)
      {
        v14 = *(v13 + 1);
        if (v7.u32[0] > 1uLL)
        {
          if (v14 >= *&v5)
          {
            v14 %= *&v5;
          }
        }

        else
        {
          v14 &= *&v5 - 1;
        }

        if (v14 != v6)
        {
          *(*&this[1].__m_.__opaque[16] + 8 * v14) = v10;
          v13 = *v4;
        }
      }

      *v10 = v13;
      *v4 = 0;
      --*&this[1].__m_.__opaque[40];
      operator delete(v4);
      break;
    }
  }

  v15 = &this[13].__m_.__opaque[24];
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,DSPGraph::Analyzer *>>>::find<unsigned long long>(&this[13].__m_.__opaque[24], *(a2 + 11));
  if (v16)
  {
    v17 = *&this[13].__m_.__opaque[32];
    v18 = *(v16 + 1);
    v19 = vcnt_s8(v17);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      if (v18 >= *&v17)
      {
        v18 %= *&v17;
      }
    }

    else
    {
      v18 &= *&v17 - 1;
    }

    v20 = *(*v15 + 8 * v18);
    do
    {
      v21 = v20;
      v20 = *v20;
    }

    while (v20 != v16);
    if (v21 == &this[13].__m_.__opaque[40])
    {
      goto LABEL_49;
    }

    v22 = *(v21 + 1);
    if (v19.u32[0] > 1uLL)
    {
      if (v22 >= *&v17)
      {
        v22 %= *&v17;
      }
    }

    else
    {
      v22 &= *&v17 - 1;
    }

    if (v22 != v18)
    {
LABEL_49:
      if (!*v16)
      {
        goto LABEL_50;
      }

      v23 = *(*v16 + 8);
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *&v17)
        {
          v23 %= *&v17;
        }
      }

      else
      {
        v23 &= *&v17 - 1;
      }

      if (v23 != v18)
      {
LABEL_50:
        *(*v15 + 8 * v18) = 0;
      }
    }

    v24 = *v16;
    if (*v16)
    {
      v25 = *(v24 + 8);
      if (v19.u32[0] > 1uLL)
      {
        if (v25 >= *&v17)
        {
          v25 %= *&v17;
        }
      }

      else
      {
        v25 &= *&v17 - 1;
      }

      if (v25 != v18)
      {
        *(*v15 + 8 * v25) = v21;
        v24 = *v16;
      }
    }

    *v21 = v24;
    *v16 = 0;
    --*&this[13].__m_.__opaque[48];
    operator delete(v16);
  }

  std::mutex::unlock(this + 2);
}

DSPGraph::Wire *DSPGraph::Graph::connect(int8x8_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, DSPGraph *a6)
{
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v13 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(&a1[80], a2);
    if (v13)
    {
      v12 = (v13 + 5);
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(&a1[98], a2);
  if (v14)
  {
    v15 = v14[5];
  }

  else
  {
    v15 = 0;
  }

  if (!(v15 | v12))
  {
    std::string::basic_string[abi:ne200100]<0>(&v35, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v34, "connect");
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, &v30, " index ");
    std::to_string(&v29, a4);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v29;
    }

    else
    {
      v21 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v31, v21, size);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v33, &v32, " not found");
    DSPGraph::ThrowException(1852204065, &v35, 1118, &v34, &v33);
  }

  if (a5)
  {
    v16 = 0;
  }

  else
  {
    v17 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(&a1[80], a3);
    if (v17)
    {
      v16 = v17 + 5;
    }

    else
    {
      v16 = 0;
    }
  }

  v18 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(&a1[98], a3);
  if (v18)
  {
    v19 = v18[5];
  }

  else
  {
    v19 = 0;
  }

  if (!(v19 | v16))
  {
    std::string::basic_string[abi:ne200100]<0>(&v35, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v34, "connect");
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, &v30, " index ");
    std::to_string(&v29, a5);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v29;
    }

    else
    {
      v25 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v29.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v31, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v33, &v32, " not found");
    DSPGraph::ThrowException(1852204065, &v35, 1124, &v34, &v33);
  }

  return DSPGraph::Graph::connect(a1, v15, v19, a4, a5, a6, v12, v16);
}

void sub_18F8EAEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 81) < 0)
  {
    operator delete(*(v45 - 104));
  }

  _Unwind_Resume(exception_object);
}

DSPGraph::Wire *DSPGraph::Graph::connect(int8x8_t *a1, const AudioStreamBasicDescription *a2, uint64_t a3, uint64_t a4, uint64_t a5, DSPGraph *this, DSPGraph::Wire **a7, uint64_t *a8)
{
  if (*(this + 2) == 1718773105 && *(this + 8) != 64)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "connect");
    std::string::basic_string[abi:ne200100]<0>(&v18, "frequency domain format should be 64 bits.");
    DSPGraph::ThrowException(1718449215, &v20, 1139, &v19, &v18);
  }

  if (*this != floor(*this))
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "connect");
    std::string::basic_string[abi:ne200100]<0>(&v18, "only integer sample rates are supported.");
    DSPGraph::ThrowException(1718449215, &v20, 1143, &v19, &v18);
  }

  if (!DSPGraph::MinimalSafetyCheck(this, a2))
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "connect");
    std::string::basic_string[abi:ne200100]<0>(&v18, "format failed sanity check.");
    DSPGraph::ThrowException(1718449215, &v20, 1146, &v19, &v18);
  }

  v16 = DSPGraph::Graph::connect(a1, a2, a3, a4, a5, a7, a8);
  DSPGraph::Wire::setLocalFormat(v16, this, *(this + 10));
  return v16;
}

void sub_18F8EB178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Graph::getJack(uint64_t a1, void *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((a1 + 640), a2);
  if (v2)
  {
    return v2 + 5;
  }

  else
  {
    return 0;
  }
}

void DSPGraph::Graph::connectParams(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v24, "connectParams");
    std::string::basic_string[abi:ne200100]<0>(&v23, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v21, 1284, &v24, &v23);
  }

  v21 = *a2;
  *v22 = *(a2 + 16);
  *&v22[8] = *a3;
  *&v22[24] = *(a3 + 16);
  v8 = *(a1 + 480);
  v9 = *(a1 + 488);
  if (v8 >= v9)
  {
    v11 = *(a1 + 472);
    v12 = v8 - v11;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v11) >> 3);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x492492492492492)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x249249249249249)
    {
      v16 = 0x492492492492492;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = 56 * v13;
    v18 = *v22;
    *v17 = v21;
    *(v17 + 16) = v18;
    *(v17 + 32) = *&v22[16];
    *(v17 + 48) = a4;
    v10 = 56 * v13 + 56;
    v19 = 56 * v13 - v12;
    memcpy((v17 - v12), v11, v12);
    *(a1 + 472) = v19;
    *(a1 + 480) = v10;
    *(a1 + 488) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v8 = v21;
    *(v8 + 16) = *v22;
    *(v8 + 32) = *&v22[16];
    *(v8 + 48) = a4;
    v10 = v8 + 56;
  }

  *(a1 + 480) = v10;
  v21 = *a2;
  *v22 = *(a2 + 16);
  v20 = *a3;
  *&v22[8] = *(a3 + 8);
  *&v22[16] = *(a3 + 16);
  v22[20] = a4;
  DSPGraph::Box::addParameterTap(v20, &v21);
}

void sub_18F8EB420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::connectProperties(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v27, "connectProperties");
    std::string::basic_string[abi:ne200100]<0>(&v26, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v22, 1297, &v27, &v26);
  }

  v22 = *a2;
  *v23 = *(a2 + 16);
  *&v23[8] = *a3;
  *&v23[24] = *(a3 + 16);
  v8 = *(a1 + 504);
  v9 = *(a1 + 512);
  if (v8 >= v9)
  {
    v11 = *(a1 + 496);
    v12 = v8 - v11;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v11) >> 3);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x492492492492492)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x249249249249249)
    {
      v16 = 0x492492492492492;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = 56 * v13;
    v18 = *v23;
    *v17 = v22;
    *(v17 + 16) = v18;
    *(v17 + 32) = *&v23[16];
    *(v17 + 48) = a4;
    v10 = 56 * v13 + 56;
    v19 = 56 * v13 - v12;
    memcpy((v17 - v12), v11, v12);
    *(a1 + 496) = v19;
    *(a1 + 504) = v10;
    *(a1 + 512) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v8 = v22;
    *(v8 + 16) = *v23;
    *(v8 + 32) = *&v23[16];
    *(v8 + 48) = a4;
    v10 = v8 + 56;
  }

  *(a1 + 504) = v10;
  v22 = *a2;
  *v23 = *(a2 + 16);
  v20 = *a3;
  *&v23[8] = *(a3 + 8);
  *&v23[16] = *(a3 + 16);
  v23[20] = a4;
  v24 = 0;
  v25 = 0;
  *&v23[24] = 0;
  return DSPGraph::Box::addPropertyTap(v20, &v22);
}

void sub_18F8EB690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Graph::detach(DSPGraph::Graph *this, DSPGraph::Box *a2)
{
  v4 = this + 24;
  v5 = (this + 24);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v47, "detach");
      std::string::basic_string[abi:ne200100]<0>(&v46, "box not in graph");
      DSPGraph::ThrowException(1852204065, &v48, 1308, &v47, &v46);
    }
  }

  while (v5[2] != a2);
  if (*(this + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v47, "detach");
    std::string::basic_string[abi:ne200100]<0>(&v46, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v48, 1312, &v47, &v46);
  }

  for (i = *(this + 29); i; i = *i)
  {
    *(i[2] + 232) = *(i[2] + 224);
  }

  *(this + 33) = *(this + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  while (v7 != v8)
  {
    DSPGraph::InputPort::detach(v7);
    v7 = (v7 + 32);
  }

  v9 = *(a2 + 11);
  v10 = *(a2 + 12);
  if (v9 == v10)
  {
    v14 = *(a2 + 11);
  }

  else
  {
    do
    {
      for (j = *((*(*v9 + 40))(v9) + 32); j; j = *j)
      {
        *(j[2] + 16) = 0;
      }

      v12 = *(v9[1] + 8);
      v13 = (*(*v9 + 40))(v9);
      DSPGraph::Graph::removeWire(v12, v13);
      v9 += 4;
    }

    while (v9 != v10);
    v9 = *(a2 + 11);
    v14 = *(a2 + 12);
  }

  *(a2 + 1) = 0;
  if (((v14 - v9) & 0x1FFFFFFFE0) == 0)
  {
    std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__erase_unique<RegistrarClientProcess *>(this + 41, a2);
  }

  v15 = (*(*a2 + 248))(a2);
  if (v15)
  {
    v16 = *(this + 376);
    if (v16)
    {
      v17 = v15;
      v18 = 0x9DDFEA08EB382D69 * ((8 * (v15 & 0x1FFFFFFF) + 8) ^ HIDWORD(v15));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v18 >> 47) ^ v18);
      v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
      v21 = vcnt_s8(v16);
      v21.i16[0] = vaddlv_u8(v21);
      if (v21.u32[0] > 1uLL)
      {
        v22 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
        if (v20 >= *&v16)
        {
          v22 = v20 % *&v16;
        }
      }

      else
      {
        v22 = v20 & (*&v16 - 1);
      }

      v23 = *(this + 46);
      v24 = *(v23 + 8 * v22);
      if (v24)
      {
        v25 = *v24;
        if (*v24)
        {
          v26 = *&v16 - 1;
          do
          {
            v27 = v25[1];
            if (v27 == v20)
            {
              if (v25[2] == v17)
              {
                v28 = v25[1];
                if (v21.u32[0] > 1uLL)
                {
                  if (v28 >= *&v16)
                  {
                    v28 %= *&v16;
                  }
                }

                else
                {
                  v28 &= v26;
                }

                v29 = *(v23 + 8 * v28);
                do
                {
                  v30 = v29;
                  v29 = *v29;
                }

                while (v29 != v25);
                if (v30 == (this + 384))
                {
                  goto LABEL_54;
                }

                v31 = v30[1];
                if (v21.u32[0] > 1uLL)
                {
                  if (v31 >= *&v16)
                  {
                    v31 %= *&v16;
                  }
                }

                else
                {
                  v31 &= v26;
                }

                if (v31 != v28)
                {
LABEL_54:
                  if (!*v25)
                  {
                    goto LABEL_55;
                  }

                  v32 = *(*v25 + 8);
                  if (v21.u32[0] > 1uLL)
                  {
                    if (v32 >= *&v16)
                    {
                      v32 %= *&v16;
                    }
                  }

                  else
                  {
                    v32 &= v26;
                  }

                  if (v32 != v28)
                  {
LABEL_55:
                    *(v23 + 8 * v28) = 0;
                  }
                }

                v33 = *v25;
                if (*v25)
                {
                  v34 = *(v33 + 8);
                  if (v21.u32[0] > 1uLL)
                  {
                    if (v34 >= *&v16)
                    {
                      v34 %= *&v16;
                    }
                  }

                  else
                  {
                    v34 &= v26;
                  }

                  if (v34 != v28)
                  {
                    *(*(this + 46) + 8 * v34) = v30;
                    v33 = *v25;
                  }
                }

                *v30 = v33;
                *v25 = 0;
                --*(this + 49);
                operator delete(v25);
                break;
              }
            }

            else
            {
              if (v21.u32[0] > 1uLL)
              {
                if (v27 >= *&v16)
                {
                  v27 %= *&v16;
                }
              }

              else
              {
                v27 &= v26;
              }

              if (v27 != v22)
              {
                break;
              }
            }

            v25 = *v25;
          }

          while (v25);
        }
      }
    }
  }

  v35 = *(this + 3);
  if (v35)
  {
    while (*(v35 + 2) != a2)
    {
      v35 = *v35;
      if (!v35)
      {
        return;
      }
    }

    v36 = *(this + 16);
    v37 = *(v35 + 1);
    v38 = vcnt_s8(v36);
    v38.i16[0] = vaddlv_u8(v38);
    if (v38.u32[0] > 1uLL)
    {
      if (v37 >= *&v36)
      {
        v37 %= *&v36;
      }
    }

    else
    {
      v37 &= *&v36 - 1;
    }

    v39 = *(this + 1);
    v40 = *(v39 + 8 * v37);
    do
    {
      v41 = v40;
      v40 = *v40;
    }

    while (v40 != v35);
    if (v41 == v4)
    {
      goto LABEL_85;
    }

    v42 = *(v41 + 1);
    if (v38.u32[0] > 1uLL)
    {
      if (v42 >= *&v36)
      {
        v42 %= *&v36;
      }
    }

    else
    {
      v42 &= *&v36 - 1;
    }

    if (v42 != v37)
    {
LABEL_85:
      if (!*v35)
      {
        goto LABEL_86;
      }

      v43 = *(*v35 + 8);
      if (v38.u32[0] > 1uLL)
      {
        if (v43 >= *&v36)
        {
          v43 %= *&v36;
        }
      }

      else
      {
        v43 &= *&v36 - 1;
      }

      if (v43 != v37)
      {
LABEL_86:
        *(v39 + 8 * v37) = 0;
      }
    }

    v44 = *v35;
    if (*v35)
    {
      v45 = *(v44 + 1);
      if (v38.u32[0] > 1uLL)
      {
        if (v45 >= *&v36)
        {
          v45 %= *&v36;
        }
      }

      else
      {
        v45 &= *&v36 - 1;
      }

      if (v45 != v37)
      {
        *(*(this + 1) + 8 * v45) = v41;
        v44 = *v35;
      }
    }

    *v41 = v44;
    *v35 = 0;
    --*(this + 4);

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::unique_ptr<DSPGraph::Box>,void *>>>::operator()[abi:ne200100](1, v35);
  }
}

void sub_18F8EBC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Graph::addOrderingConstraint(DSPGraph::Graph *this, DSPGraph::Box *a2, DSPGraph::Box *a3)
{
  if (*(this + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "addOrderingConstraint");
    std::string::basic_string[abi:ne200100]<0>(&v4, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v6, 1368, &v5, &v4);
  }

  *&v6 = a3;
  return std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>(a2 + 14, a3);
}

void sub_18F8EBD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::writeDotAttributes(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *(*v5 + 224);
      v7 = *(*v5 + 232);
      while (v6 != v7)
      {
        v8 = *v6++;
        result = (*(*v8 + 496))(v8, a3);
      }

      v5 += 8;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_18F8EBF7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void DSPGraph::Graph::decompile(uint64_t a1, const char *a2)
{
  if (*(a1 + 761))
  {
    DSPGraph::strprintf("; DSP graph definition\n", a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
  std::string::basic_string[abi:ne200100]<0>(v3, "decompile");
  std::string::basic_string[abi:ne200100]<0>(&v2, "configure the graph before decompiling.");
  DSPGraph::ThrowException(1667655457, __p, 1417, v3, &v2);
}

void sub_18F8EC9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Graph::decompile(DSPGraph::Graph *this, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = MEMORY[0x1E69E5530] + 64;
  v9 = MEMORY[0x1E69E5530] + 64;
  v4 = *(MEMORY[0x1E69E54D0] + 16);
  v7 = *(MEMORY[0x1E69E54D0] + 8);
  *&v8[*(v7 - 24) - 8] = v4;
  v5 = &v8[*(v7 - 24) - 8];
  std::ios_base::init(v5, v8);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v7 = v6;
  v9 = v3;
  MEMORY[0x193ADEDC0](v8);
  std::ofstream::open();
  DSPGraph::Graph::decompile(this, &v7);
}

void sub_18F8ECD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    v31 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v32 = v31;
      v33 = *__error();
      std::string::basic_string[abi:ne200100]<0>(&a24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a18, "decompile");
      (*(*v32 + 16))(v32);
      DSPGraph::strprintf("couldn't open file '%s': %s\n", v34);
    }

    v35 = *__error();
    std::string::basic_string[abi:ne200100]<0>(&a24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a18, "decompile");
    DSPGraph::strprintf("couldn't open file '%s'\n", v36);
  }

  _Unwind_Resume(exception_object);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x193ADEDD0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x193ADF120](a1 + 52);
  return a1;
}

uint64_t DSPGraph::Graph::writeDotFile(DSPGraph::Graph *this, const char *a2, const char *a3)
{
  v17[19] = *MEMORY[0x1E69E9840];
  if ((*(this + 761) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v15, "writeDotFile");
    std::string::basic_string[abi:ne200100]<0>(&__p, "configure the graph before writing a dot file.");
    DSPGraph::ThrowException(1667655457, v16, 1542, &v15, &__p);
  }

  v17[6] = 0;
  v5 = MEMORY[0x1E69E5530] + 64;
  v17[0] = MEMORY[0x1E69E5530] + 64;
  v6 = MEMORY[0x1E69E54D0];
  v7 = *(MEMORY[0x1E69E54D0] + 16);
  v16[0] = *(MEMORY[0x1E69E54D0] + 8);
  *(v16 + *(v16[0] - 3)) = v7;
  v8 = (v16 + *(v16[0] - 3));
  std::ios_base::init(v8, &v16[1]);
  v9 = (MEMORY[0x1E69E5530] + 24);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v16[0] = v9;
  v17[0] = v5;
  MEMORY[0x193ADEDC0](&v16[1]);
  std::ofstream::open();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "digraph ", 8);
  v10 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, a2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " {\n", 3);
  DSPGraph::Graph::writeDotAttributes(*(this + 32), *(this + 33), v16);
  for (i = *(this + 3); i; i = *i)
  {
    (*(*i[2] + 504))(i[2], v16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "}\n", 2);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v16 + *(v16[0] - 3)), *(&v16[4] + *(v16[0] - 3)) | 4);
  }

  v16[0] = *v6;
  *(v16 + *(v16[0] - 3)) = *(v6 + 24);
  MEMORY[0x193ADEDD0](&v16[1]);
  std::ostream::~ostream();
  result = MEMORY[0x193ADF120](v17);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F8ED49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  __cxa_end_catch();
  std::ofstream::~ofstream(&a30);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Graph::writeDotFile@<X0>(DSPGraph::Graph *this@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(this + 761) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "writeDotFile");
    std::string::basic_string[abi:ne200100]<0>(&v13, "configure the graph before writing a dot file.");
    DSPGraph::ThrowException(1667655457, &v9, 1561, &v14, &v13);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "digraph ", 8);
  v6 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, a2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " {\n", 3);
  DSPGraph::Graph::writeDotAttributes(*(this + 32), *(this + 33), &v9);
  for (i = *(this + 3); i; i = *i)
  {
    (*(*i[2] + 504))(i[2], &v9);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "}\n", 2);
  std::ostringstream::str[abi:ne200100](a3, &v9);
  *&v9 = *MEMORY[0x1E69E54E8];
  *(&v10[-2].__locale_ + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v9 + 1) = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  *(&v9 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v12);
}

void sub_18F8ED7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 - 57) < 0)
  {
    operator delete(*(v15 - 80));
  }

  if (*(v15 - 33) < 0)
  {
    operator delete(*(v15 - 56));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::makeAUStrip()
{
  return 0;
}

{
  return 0;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(_BYTE *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void DSPGraph::Graph::makeAUStrip(uint64_t a1@<X0>, const void **a2@<X1>, CFDictionaryRef *a3@<X8>)
{
  Subset = DSPGraph::Graph::getSubset(a1, a2);
  if (Subset)
  {
    v5 = Subset;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    std::vector<DSPGraph::Box *>::reserve(&v13, *(Subset + 48));
    for (i = *(v5 + 40); i; i = *i)
    {
      v16 = i[2];
      std::vector<AudioMetadataChannelFormat *>::push_back[abi:ne200100](&v13, &v16);
    }

    v7 = v13;
    v8 = v14;
    v9 = v14 - v13;
    v10 = 126 - 2 * __clz(v9);
    if (v14 == v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,false>(v13, v14, v11, 1);
    memset(__p, 0, sizeof(__p));
    std::vector<DSPGraph::Box *>::__init_with_size[abi:ne200100]<DSPGraph::Box **,DSPGraph::Box **>(__p, v7, v8, v9);
    DSPGraph::stripDictFromBoxes(a3, __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a3 = 0;
  }
}

void std::vector<DSPGraph::Box *>::__init_with_size[abi:ne200100]<DSPGraph::Box **,DSPGraph::Box **>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

void sub_18F8EDB04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::stripDictFromBoxes(CFDictionaryRef *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      if ((*(**v3 + 328))(*v3))
      {
        applesauce::CF::StringRef::from_get(&v31, @"type");
        (*(**v3 + 208))(&p_p);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(&__p, v31, &p_p);
        applesauce::CF::StringRef::from_get(&v30, @"subtype");
        (*(**v3 + 208))(value);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v36, v30, value + 1);
        applesauce::CF::StringRef::from_get(&cf, @"manufacturer");
        (*(**v3 + 208))(&v26);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v37, cf, v27);
        v32[0] = &__p;
        v32[1] = 3;
        CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v32);
        v6 = 0;
        v32[2] = CFDictionaryRef;
        do
        {
          v7 = v37[v6 + 1];
          if (v7)
          {
            CFRelease(v7);
          }

          v8 = v37[v6];
          if (v8)
          {
            CFRelease(v8);
          }

          v6 -= 2;
        }

        while (v6 != -6);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        applesauce::CF::StringRef::from_get(&v26, @"aupreset");
        (*(**v3 + 360))(v32);
        v9 = v26;
        if (v26)
        {
          CFRetain(v26);
        }

        __p = v9;
        v10 = v32[0];
        if (v32[0])
        {
          CFRetain(v32[0]);
        }

        v35 = v10;
        applesauce::CF::StringRef::from_get(&v31, @"displayname");
        v11 = (*v3 + 32);
        if (*(*v3 + 55) < 0)
        {
          v11 = *v11;
        }

        v30 = v11;
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(v36, v31, &v30);
        applesauce::CF::StringRef::from_get(&cf, @"bypass");
        v25 = (*(**v3 + 48))();
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v37, cf, &v25);
        applesauce::CF::StringRef::from_get(&v24, @"unit");
        v12 = v24;
        if (v24)
        {
          CFRetain(v24);
        }

        v38 = v12;
        CFRetain(CFDictionaryRef);
        v39 = CFDictionaryRef;
        p_p = &__p;
        v41 = 4;
        v13 = 0;
        value[0] = applesauce::CF::details::make_CFDictionaryRef(&p_p);
        do
        {
          v14 = *(&v39 + v13);
          if (v14)
          {
            CFRelease(v14);
          }

          v15 = *(&v38 + v13);
          if (v15)
          {
            CFRelease(v15);
          }

          v13 -= 16;
        }

        while (v13 != -64);
        if (v24)
        {
          CFRelease(v24);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (v32[0])
        {
          CFRelease(v32[0]);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        CFArrayAppendValue(theArray, value[0]);
        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (CFDictionaryRef)
        {
          CFRelease(CFDictionaryRef);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  applesauce::CF::StringRef::from_get(&v26, @"effects");
  v16 = theArray;
  applesauce::CF::ArrayRef::from_get(v32, theArray);
  v17 = v26;
  if (v26)
  {
    CFRetain(v26);
  }

  p_p = v17;
  v18 = v32[0];
  if (v32[0])
  {
    CFRetain(v32[0]);
  }

  v41 = v18;
  __p = &p_p;
  v35 = 1;
  v19 = applesauce::CF::details::make_CFDictionaryRef(&__p);
  value[0] = v19;
  if (v41)
  {
    CFRelease(v41);
  }

  if (p_p)
  {
    CFRelease(p_p);
  }

  if (v32[0])
  {
    CFRelease(v32[0]);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  CFRetain(v19);
  p_p = v19;
  std::vector<void const*>::vector[abi:ne200100](&__p, 1uLL);
  *__p = p_p;
  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p, v35);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  v26 = CFArray;
  if (p_p)
  {
    CFRelease(p_p);
  }

  applesauce::CF::StringRef::from_get(v32, @"strips");
  v21 = v32[0];
  if (v32[0])
  {
    CFRetain(v32[0]);
  }

  p_p = v21;
  CFRetain(CFArray);
  v41 = CFArray;
  __p = &p_p;
  v35 = 1;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(&__p);
  if (v41)
  {
    CFRelease(v41);
  }

  if (p_p)
  {
    CFRelease(p_p);
  }

  if (v32[0])
  {
    CFRelease(v32[0]);
  }

  CFRelease(CFArray);
  CFRelease(v19);
  if (v16)
  {
    CFRelease(v16);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_18F8EE218(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  applesauce::CF::TypeRefPair::~TypeRefPair((v29 - 120));
  applesauce::CF::StringRef::~StringRef(&a24);
  applesauce::CF::ArrayRef::~ArrayRef(&a15);
  JUMPOUT(0x18F8EE26CLL);
}

void sub_18F8EE278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  applesauce::CF::TypeRefPair::~TypeRefPair((v6 - 120));
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(&v7);
  JUMPOUT(0x18F8EE3A0);
}

void sub_18F8EE398(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F8EE3A0);
  }

  __clang_call_terminate(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_18F8EE45C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<DSPGraph::Box *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v146 = a2 - 1;
    v147 = a2;
    v143 = a2 - 3;
    v144 = a2 - 2;
    v7 = v6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = a2 - v7;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(v7, v7 + 1, v146);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(v7, v7 + 1, v7 + 2, v146);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(v7, v7 + 1, v7 + 2, v7 + 3, v146);
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v67 = *v146;
              v68 = *v7;
              v69 = (*v146 + 32);
              if (*(*v146 + 55) < 0)
              {
                v69 = *v69;
              }

              v70 = (v68 + 32);
              if (*(v68 + 55) < 0)
              {
                v70 = *v70;
              }

              result = strcmp(v69, v70);
              if ((result & 0x80000000) != 0)
              {
                *v7 = v67;
                *v146 = v68;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            v71 = v7 + 1;
            v73 = v7 == a2 || v71 == a2;
            if (a4)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = v7;
                do
                {
                  v76 = v71;
                  v77 = v75[1];
                  v78 = (v77 + 32);
                  v79 = (v77 + 32);
                  if (*(v77 + 55) < 0)
                  {
                    v79 = *v78;
                  }

                  v80 = *v75;
                  v81 = (*v75 + 32);
                  if (*(*v75 + 55) < 0)
                  {
                    v81 = *v81;
                  }

                  result = strcmp(v79, v81);
                  if ((result & 0x80000000) != 0)
                  {
                    v82 = v74;
                    while (1)
                    {
                      *(v7 + v82 + 8) = v80;
                      if (!v82)
                      {
                        break;
                      }

                      v83 = (v77 + 32);
                      if (*(v77 + 55) < 0)
                      {
                        v83 = *v78;
                      }

                      v80 = *(v7 + v82 - 8);
                      v84 = (v80 + 32);
                      if (*(v80 + 55) < 0)
                      {
                        v84 = *v84;
                      }

                      result = strcmp(v83, v84);
                      v82 -= 8;
                      if ((result & 0x80000000) == 0)
                      {
                        v85 = (v7 + v82 + 8);
                        goto LABEL_146;
                      }
                    }

                    v85 = v7;
LABEL_146:
                    *v85 = v77;
                    a2 = v147;
                  }

                  v71 = v76 + 1;
                  v74 += 8;
                  v75 = v76;
                }

                while (v76 + 1 != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v134 = v71;
                v135 = v8[1];
                v136 = (v135 + 32);
                v137 = (v135 + 32);
                if (*(v135 + 55) < 0)
                {
                  v137 = *v136;
                }

                v138 = *v8;
                v139 = (*v8 + 32);
                if (*(*v8 + 55) < 0)
                {
                  v139 = *v139;
                }

                result = strcmp(v137, v139);
                if ((result & 0x80000000) != 0)
                {
                  v140 = v134;
                  do
                  {
                    *v140 = v138;
                    v141 = (v135 + 32);
                    if (*(v135 + 55) < 0)
                    {
                      v141 = *v136;
                    }

                    v138 = *(v140 - 2);
                    v142 = (v138 + 32);
                    if (*(v138 + 55) < 0)
                    {
                      v142 = *v142;
                    }

                    result = strcmp(v141, v142);
                    --v140;
                  }

                  while ((result & 0x80000000) != 0);
                  *v140 = v135;
                }

                v71 = v134 + 1;
                v8 = v134;
              }

              while (v134 + 1 != v147);
            }

            return result;
          }

          v149 = v7;
          if (!a3)
          {
            if (v7 != a2)
            {
              v86 = v10 >> 1;
              v87 = v10 >> 1;
              do
              {
                v88 = v87;
                if (v86 >= v87)
                {
                  v89 = (2 * v87) | 1;
                  v90 = &v149[v89];
                  if (2 * v87 + 2 < v9)
                  {
                    v91 = (*v90 + 32);
                    if (*(*v90 + 55) < 0)
                    {
                      v91 = *v91;
                    }

                    v92 = v90[1];
                    ++v90;
                    v93 = (v92 + 32);
                    if (*(v92 + 55) < 0)
                    {
                      v93 = *v93;
                    }

                    if (strcmp(v91, v93) < 0)
                    {
                      v89 = 2 * v88 + 2;
                    }

                    else
                    {
                      v90 = &v149[v89];
                    }
                  }

                  v94 = &v149[v88];
                  v95 = *v90;
                  v96 = *v94;
                  v97 = (*v90 + 32);
                  if (*(*v90 + 55) < 0)
                  {
                    v97 = *v97;
                  }

                  v98 = (v96 + 32);
                  v99 = (v96 + 32);
                  if (*(v96 + 55) < 0)
                  {
                    v99 = *v98;
                  }

                  result = strcmp(v97, v99);
                  if ((result & 0x80000000) == 0)
                  {
                    do
                    {
                      v100 = v90;
                      *v94 = v95;
                      if (v86 < v89)
                      {
                        break;
                      }

                      v101 = (2 * v89) | 1;
                      v90 = &v149[v101];
                      if (2 * v89 + 2 >= v9)
                      {
                        v89 = (2 * v89) | 1;
                      }

                      else
                      {
                        v102 = (*v90 + 32);
                        if (*(*v90 + 55) < 0)
                        {
                          v102 = *v102;
                        }

                        v103 = v90[1];
                        ++v90;
                        v104 = (v103 + 32);
                        if (*(v103 + 55) < 0)
                        {
                          v104 = *v104;
                        }

                        if (strcmp(v102, v104) < 0)
                        {
                          v89 = 2 * v89 + 2;
                        }

                        else
                        {
                          v90 = &v149[v101];
                          v89 = (2 * v89) | 1;
                        }
                      }

                      v95 = *v90;
                      v105 = (*v90 + 32);
                      if (*(*v90 + 55) < 0)
                      {
                        v105 = *v105;
                      }

                      v106 = (v96 + 32);
                      if (*(v96 + 55) < 0)
                      {
                        v106 = *v98;
                      }

                      result = strcmp(v105, v106);
                      v94 = v100;
                    }

                    while ((result & 0x80000000) == 0);
                    *v100 = v96;
                  }
                }

                v87 = v88 - 1;
              }

              while (v88);
              v107 = v147;
              v108 = v149;
              do
              {
                v109 = 0;
                v110 = *v108;
                do
                {
                  v111 = &v108[v109];
                  v112 = v111 + 1;
                  v113 = (2 * v109) | 1;
                  v114 = 2 * v109 + 2;
                  if (v114 >= v9)
                  {
                    v109 = (2 * v109) | 1;
                  }

                  else
                  {
                    v117 = v111[2];
                    v116 = v111 + 2;
                    v115 = v117;
                    v118 = *(v116 - 1);
                    v119 = (v118 + 32);
                    if (*(v118 + 55) < 0)
                    {
                      v119 = *v119;
                    }

                    v120 = (v115 + 32);
                    if (*(v115 + 55) < 0)
                    {
                      v120 = *v120;
                    }

                    result = strcmp(v119, v120);
                    if (result >= 0)
                    {
                      v109 = v113;
                    }

                    else
                    {
                      v112 = v116;
                      v109 = v114;
                    }
                  }

                  *v108 = *v112;
                  v108 = v112;
                }

                while (v109 <= (v9 - 2) / 2);
                if (v112 == --v107)
                {
                  *v112 = v110;
                }

                else
                {
                  *v112 = *v107;
                  *v107 = v110;
                  v121 = (v112 - v149 + 8) >> 3;
                  v122 = v121 < 2;
                  v123 = v121 - 2;
                  if (!v122)
                  {
                    v124 = v123 >> 1;
                    v125 = &v149[v123 >> 1];
                    v126 = *v125;
                    v127 = (*v125 + 32);
                    if (*(*v125 + 55) < 0)
                    {
                      v127 = *v127;
                    }

                    v128 = *v112;
                    v129 = (*v112 + 32);
                    v130 = v129;
                    if (*(*v112 + 55) < 0)
                    {
                      v130 = *v129;
                    }

                    result = strcmp(v127, v130);
                    if ((result & 0x80000000) != 0)
                    {
                      do
                      {
                        v131 = v125;
                        *v112 = v126;
                        if (!v124)
                        {
                          break;
                        }

                        v124 = (v124 - 1) >> 1;
                        v125 = &v149[v124];
                        v126 = *v125;
                        v132 = (*v125 + 32);
                        if (*(*v125 + 55) < 0)
                        {
                          v132 = *v132;
                        }

                        v133 = v129;
                        if (*(v128 + 55) < 0)
                        {
                          v133 = *v129;
                        }

                        result = strcmp(v132, v133);
                        v112 = v131;
                      }

                      while ((result & 0x80000000) != 0);
                      *v131 = v128;
                    }
                  }
                }

                v122 = v9-- <= 2;
                v108 = v149;
              }

              while (!v122);
            }

            return result;
          }

          v11 = v9 >> 1;
          v12 = &v7[v9 >> 1];
          if (v9 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(&v8[v9 >> 1], v8, v146);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(v8, &v8[v9 >> 1], v146);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(v8 + 1, v12 - 1, v144);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(v8 + 2, &v8[v11 + 1], v143);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(v12 - 1, &v8[v9 >> 1], &v8[v11 + 1]);
            v13 = *v8;
            *v8 = *v12;
            *v12 = v13;
          }

          --a3;
          v14 = *v8;
          v148 = a3;
          if (a4)
          {
            LOBYTE(v15) = *(v14 + 55);
            break;
          }

          v16 = *(v8 - 1);
          v17 = (v16 + 32);
          if (*(v16 + 55) < 0)
          {
            v17 = *v17;
          }

          v18 = (v14 + 32);
          v15 = *(v14 + 55);
          v19 = (v14 + 32);
          if (v15 < 0)
          {
            v19 = *v18;
          }

          if (strcmp(v17, v19) < 0)
          {
            break;
          }

          v45 = (v14 + 32);
          if (v15 < 0)
          {
            v45 = *v18;
          }

          v46 = (*v146 + 32);
          if (*(*v146 + 55) < 0)
          {
            v46 = *v46;
          }

          result = strcmp(v45, v46);
          if ((result & 0x80000000) != 0)
          {
            v7 = v8;
            do
            {
              v47 = (v14 + 32);
              if (v15 < 0)
              {
                v47 = *v18;
              }

              v48 = v7[1];
              ++v7;
              v49 = (v48 + 32);
              if (*(v48 + 55) < 0)
              {
                v49 = *v49;
              }

              result = strcmp(v47, v49);
            }

            while ((result & 0x80000000) == 0);
          }

          else
          {
            v50 = v8 + 1;
            do
            {
              v7 = v50;
              if (v50 >= a2)
              {
                break;
              }

              v51 = (v14 + 32);
              if (v15 < 0)
              {
                v51 = *v18;
              }

              v52 = (*v50 + 32);
              if (*(*v50 + 55) < 0)
              {
                v52 = *v52;
              }

              result = strcmp(v51, v52);
              v50 = v7 + 1;
            }

            while ((result & 0x80000000) == 0);
          }

          v53 = a2;
          if (v7 < a2)
          {
            v53 = a2;
            do
            {
              v54 = (v14 + 32);
              if (v15 < 0)
              {
                v54 = *v18;
              }

              v55 = *--v53;
              v56 = (v55 + 32);
              if (*(v55 + 55) < 0)
              {
                v56 = *v56;
              }

              result = strcmp(v54, v56);
            }

            while ((result & 0x80000000) != 0);
          }

          if (v7 < v53)
          {
            v57 = *v7;
            v58 = *v53;
            do
            {
              *v7 = v58;
              *v53 = v57;
              v59 = *(v14 + 55);
              do
              {
                v60 = v7[1];
                ++v7;
                v57 = v60;
                v61 = (v14 + 32);
                if (v59 < 0)
                {
                  v61 = *v18;
                }

                v62 = (v57 + 32);
                if (*(v57 + 55) < 0)
                {
                  v62 = *v62;
                }
              }

              while ((strcmp(v61, v62) & 0x80000000) == 0);
              do
              {
                v63 = *--v53;
                v58 = v63;
                v64 = (v14 + 32);
                if (v59 < 0)
                {
                  v64 = *v18;
                }

                v65 = (v58 + 32);
                if (*(v58 + 55) < 0)
                {
                  v65 = *v65;
                }

                result = strcmp(v64, v65);
              }

              while ((result & 0x80000000) != 0);
            }

            while (v7 < v53);
          }

          v66 = v7 - 1;
          if (v7 - 1 != v8)
          {
            *v8 = *v66;
          }

          a4 = 0;
          *v66 = v14;
        }

        v20 = (v14 + 32);
        v21 = v8;
        do
        {
          v23 = v21[1];
          ++v21;
          v22 = v23;
          v24 = (v23 + 32);
          if (*(v23 + 55) < 0)
          {
            v24 = *v24;
          }

          v25 = (v14 + 32);
          if ((v15 & 0x80) != 0)
          {
            v25 = *v20;
          }
        }

        while (strcmp(v24, v25) < 0);
        v26 = v21 - 1;
        v27 = a2;
        if (v21 - 1 == v149)
        {
          v27 = a2;
          do
          {
            if (v21 >= v27)
            {
              break;
            }

            v31 = *--v27;
            v32 = (v31 + 32);
            if (*(v31 + 55) < 0)
            {
              v32 = *v32;
            }

            v33 = (v14 + 32);
            if ((v15 & 0x80) != 0)
            {
              v33 = *v20;
            }
          }

          while ((strcmp(v32, v33) & 0x80000000) == 0);
        }

        else
        {
          do
          {
            v28 = *--v27;
            v29 = (v28 + 32);
            if (*(v28 + 55) < 0)
            {
              v29 = *v29;
            }

            v30 = (v14 + 32);
            if ((v15 & 0x80) != 0)
            {
              v30 = *v20;
            }
          }

          while ((strcmp(v29, v30) & 0x80000000) == 0);
        }

        if (v21 < v27)
        {
          v34 = *v27;
          v35 = v21;
          v36 = v27;
          do
          {
            *v35 = v34;
            *v36 = v22;
            v37 = *(v14 + 55);
            do
            {
              v38 = v35[1];
              ++v35;
              v22 = v38;
              v39 = (v38 + 32);
              if (*(v38 + 55) < 0)
              {
                v39 = *v39;
              }

              v40 = (v14 + 32);
              if (v37 < 0)
              {
                v40 = *v20;
              }
            }

            while (strcmp(v39, v40) < 0);
            v26 = v35 - 1;
            do
            {
              v41 = *--v36;
              v34 = v41;
              v42 = (v41 + 32);
              if (*(v41 + 55) < 0)
              {
                v42 = *v42;
              }

              v43 = (v14 + 32);
              if (v37 < 0)
              {
                v43 = *v20;
              }
            }

            while ((strcmp(v42, v43) & 0x80000000) == 0);
          }

          while (v35 < v36);
        }

        v6 = v149;
        if (v26 != v149)
        {
          *v149 = *v26;
        }

        *v26 = v14;
        a2 = v147;
        a3 = v148;
        if (v21 >= v27)
        {
          break;
        }

LABEL_62:
        result = std::__introsort<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,false>(v149, v26, v148, a4 & 1);
        a4 = 0;
        v7 = v26 + 1;
      }

      v44 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **>(v149, v26);
      v7 = v26 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **>(v26 + 1, v147);
      if (result)
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_62;
      }
    }

    a2 = v26;
    if (!v44)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = (*a2 + 32);
  v9 = *(*a2 + 55);
  v10 = v8;
  if (v9 < 0)
  {
    v10 = *v8;
  }

  v11 = (v7 + 32);
  v12 = (v7 + 32);
  if (*(v7 + 55) < 0)
  {
    v12 = *v11;
  }

  v13 = strcmp(v10, v12);
  v14 = *a3;
  v15 = (*a3 + 32);
  v16 = *(*a3 + 55);
  if ((v13 & 0x80000000) == 0)
  {
    if (v16 < 0)
    {
      v15 = *v15;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v8 = *v8;
LABEL_12:
    result = strcmp(v15, v8);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v14;
      *a3 = v6;
      v18 = *a2;
      v19 = *a1;
      v20 = (*a2 + 32);
      if (*(*a2 + 55) < 0)
      {
        v20 = *v20;
      }

      v21 = (v19 + 32);
      if (*(v19 + 55) < 0)
      {
        v21 = *v21;
      }

      result = strcmp(v20, v21);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v18;
        *a2 = v19;
      }
    }

    return result;
  }

  if (v16 < 0)
  {
    v15 = *v15;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_28:
    v8 = *v8;
    goto LABEL_8;
  }

  if (v9 < 0)
  {
    goto LABEL_28;
  }

LABEL_8:
  result = strcmp(v15, v8);
  if ((result & 0x80000000) != 0)
  {
    *a1 = v14;
LABEL_25:
    *a3 = v7;
    return result;
  }

  *a1 = v6;
  *a2 = v7;
  v22 = *a3;
  v23 = (*a3 + 32);
  if (*(*a3 + 55) < 0)
  {
    v23 = *v23;
  }

  if (*(v7 + 55) < 0)
  {
    v11 = *v11;
  }

  result = strcmp(v23, v11);
  if ((result & 0x80000000) != 0)
  {
    *a2 = v22;
    goto LABEL_25;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = (*a4 + 32);
  if (*(*a4 + 55) < 0)
  {
    v10 = *v10;
  }

  v11 = (v9 + 32);
  if (*(v9 + 55) < 0)
  {
    v11 = *v11;
  }

  result = strcmp(v10, v11);
  if ((result & 0x80000000) != 0)
  {
    *a3 = v8;
    *a4 = v9;
    v13 = *a3;
    v14 = *a2;
    v15 = (*a3 + 32);
    if (*(*a3 + 55) < 0)
    {
      v15 = *v15;
    }

    v16 = (v14 + 32);
    if (*(v14 + 55) < 0)
    {
      v16 = *v16;
    }

    result = strcmp(v15, v16);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v13;
      *a3 = v14;
      v17 = *a2;
      v18 = *a1;
      v19 = (*a2 + 32);
      if (*(*a2 + 55) < 0)
      {
        v19 = *v19;
      }

      v20 = (v18 + 32);
      if (*(v18 + 55) < 0)
      {
        v20 = *v20;
      }

      result = strcmp(v19, v20);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v17;
        *a2 = v18;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = (*a5 + 32);
  if (*(*a5 + 55) < 0)
  {
    v12 = *v12;
  }

  v13 = (v11 + 32);
  if (*(v11 + 55) < 0)
  {
    v13 = *v13;
  }

  result = strcmp(v12, v13);
  if ((result & 0x80000000) != 0)
  {
    *a4 = v10;
    *a5 = v11;
    v15 = *a4;
    v16 = *a3;
    v17 = (*a4 + 32);
    if (*(*a4 + 55) < 0)
    {
      v17 = *v17;
    }

    v18 = (v16 + 32);
    if (*(v16 + 55) < 0)
    {
      v18 = *v18;
    }

    result = strcmp(v17, v18);
    if ((result & 0x80000000) != 0)
    {
      *a3 = v15;
      *a4 = v16;
      v19 = *a3;
      v20 = *a2;
      v21 = (*a3 + 32);
      if (*(*a3 + 55) < 0)
      {
        v21 = *v21;
      }

      v22 = (v20 + 32);
      if (*(v20 + 55) < 0)
      {
        v22 = *v22;
      }

      result = strcmp(v21, v22);
      if ((result & 0x80000000) != 0)
      {
        *a2 = v19;
        *a3 = v20;
        v23 = *a2;
        v24 = *a1;
        v25 = (*a2 + 32);
        if (*(*a2 + 55) < 0)
        {
          v25 = *v25;
        }

        v26 = (v24 + 32);
        if (*(v24 + 55) < 0)
        {
          v26 = *v26;
        }

        result = strcmp(v25, v26);
        if ((result & 0x80000000) != 0)
        {
          *a1 = v23;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v6 = *a1;
        v7 = (v5 + 32);
        if (*(v5 + 55) < 0)
        {
          v7 = *v7;
        }

        v8 = (v6 + 32);
        if (*(v6 + 55) < 0)
        {
          v8 = *v8;
        }

        if (strcmp(v7, v8) < 0)
        {
          *a1 = v5;
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_15:
  v9 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,0>(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  for (i = 24; ; i += 8)
  {
    v13 = *v10;
    v14 = (*v10 + 32);
    v15 = v14;
    if (*(*v10 + 55) < 0)
    {
      v15 = *v14;
    }

    v16 = *v9;
    v17 = (v16 + 32);
    if (*(v16 + 55) < 0)
    {
      v17 = *v17;
    }

    if (strcmp(v15, v17) < 0)
    {
      v18 = i;
      while (1)
      {
        *(a1 + v18) = v16;
        v19 = v18 - 8;
        if (v18 == 8)
        {
          break;
        }

        v20 = v14;
        if (*(v13 + 55) < 0)
        {
          v20 = *v14;
        }

        v16 = *(a1 + v18 - 16);
        v21 = (v16 + 32);
        if (*(v16 + 55) < 0)
        {
          v21 = *v21;
        }

        v22 = strcmp(v20, v21);
        v18 = v19;
        if ((v22 & 0x80000000) == 0)
        {
          v23 = (a1 + v19);
          goto LABEL_31;
        }
      }

      v23 = a1;
LABEL_31:
      *v23 = v13;
      if (++v11 == 8)
      {
        break;
      }
    }

    v9 = v10++;
    if (v10 == a2)
    {
      return 1;
    }
  }

  return v10 + 1 == a2;
}

void DSPGraph::Graph::makeAUStrip(DSPGraph::Graph *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<DSPGraph::Box *>::reserve(&v11, *(this + 4));
  for (i = *(this + 3); i; i = *i)
  {
    v14 = i[2];
    std::vector<AudioMetadataChannelFormat *>::push_back[abi:ne200100](&v11, &v14);
  }

  v5 = v11;
  v6 = v12;
  v7 = v12 - v11;
  v8 = 126 - 2 * __clz(v7);
  if (v12 == v11)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::vector<DSPGraph::Box *> DSPGraph::GetBoxesSortedByName<DSPGraph::Box *>(std::unordered_set<DSPGraph::Box *> const&)::{lambda(DSPGraph::Box *,DSPGraph::Box *)#1} &,DSPGraph::Box **,false>(v11, v12, v9, 1);
  memset(__p, 0, sizeof(__p));
  std::vector<DSPGraph::Box *>::__init_with_size[abi:ne200100]<DSPGraph::Box **,DSPGraph::Box **>(__p, v5, v6, v7);
  DSPGraph::stripDictFromBoxes(a2, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v5)
  {

    operator delete(v5);
  }
}

void sub_18F8EF570(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v25)
  {
    operator delete(v25);
  }

  if (v23)
  {
    operator delete(v23);
  }

  __cxa_begin_catch(a1);
  *v22 = 0;

  __cxa_end_catch();
}

void DSPGraph::createAbsoluteURL(DSPGraph *this, const __CFString *a2, const __CFString *a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
  v52 = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFURLGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!v52)
  {
LABEL_22:
    std::string::basic_string[abi:ne200100]<0>(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v50, "createAbsoluteURL");
    applesauce::CF::StringRef::from_get(v39, a2);
    v17 = applesauce::CF::StringRef::operator->(v39);
    std::string::basic_string[abi:ne200100]<0>(v46, "???");
    v19 = applesauce::CF::StringRef_proxy::convert_or(v47, *v17, v46);
    if (v48 >= 0)
    {
      v20 = v47;
    }

    else
    {
      v20 = *v47;
    }

    DSPGraph::strprintf("Could not create URL from file path '%s'. CFURLCreateWithFileSystemPath failed.", v18, v19, v20);
  }

  v9 = CFURLGetBaseURL(v52);
  v10 = v9;
  if (v9)
  {
    CFRetain(v9);
    *&v51 = v10;
    v11 = CFGetTypeID(v10);
    if (v11 != CFURLGetTypeID())
    {
      v33 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v33, "Could not construct");
    }

    CFRelease(v10);
    if (!a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v50, "createAbsoluteURL");
      std::string::basic_string[abi:ne200100]<0>(&v49, "Property strip resource path required if path is relative");
      DSPGraph::ThrowException(1886548769, &v51, 2012, &v50, &v49);
    }

    v12 = CFURLCreateWithFileSystemPath(v6, a3, kCFURLPOSIXPathStyle, 1u);
    v45 = v12;
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = CFGetTypeID(v12);
    if (v13 != CFURLGetTypeID())
    {
      v34 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v34, "Could not construct");
    }

    if (!v45)
    {
LABEL_26:
      std::string::basic_string[abi:ne200100]<0>(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v50, "createAbsoluteURL");
      applesauce::CF::StringRef::from_get(v39, a3);
      v21 = applesauce::CF::StringRef::operator->(v39);
      std::string::basic_string[abi:ne200100]<0>(v44, "???");
      v23 = applesauce::CF::StringRef_proxy::convert_or(v47, *v21, v44);
      if (v48 >= 0)
      {
        v24 = v47;
      }

      else
      {
        v24 = *v47;
      }

      DSPGraph::strprintf("Could not create file URL from path '%s'.", v22, v23, v24);
    }

    v14 = MEMORY[0x193ADDDC0](0, a2, 0, 0);
    cf = v14;
    if (!v14)
    {
      v35 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v35, "Could not construct");
    }

    v15 = CFURLCopyAbsoluteURL(v14);
    *this = v15;
    if (!v15)
    {
      goto LABEL_30;
    }

    v16 = CFGetTypeID(v15);
    if (v16 != CFURLGetTypeID())
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v36, "Could not construct");
    }

    if (!*this)
    {
LABEL_30:
      std::string::basic_string[abi:ne200100]<0>(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v50, "createAbsoluteURL");
      applesauce::CF::StringRef::from_get(&v42, a2);
      v25 = applesauce::CF::StringRef::operator->(&v42);
      std::string::basic_string[abi:ne200100]<0>(v41, "???");
      v26 = *v25;
      v27 = v47;
      applesauce::CF::StringRef_proxy::convert_or(v47, v26, v41);
      if (v48 < 0)
      {
        v27 = *v47;
      }

      applesauce::CF::StringRef::from_get(&v38, a3);
      v28 = applesauce::CF::StringRef::operator->(&v38);
      std::string::basic_string[abi:ne200100]<0>(v37, "???");
      v30 = applesauce::CF::StringRef_proxy::convert_or(v39, *v28, v37);
      if (v40 >= 0)
      {
        v31 = v39;
      }

      else
      {
        v31 = *v39;
      }

      DSPGraph::strprintf("Could not create absolute URL from path '%s' with base '%s'.", v29, v30, v27, v31);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v45)
    {
      CFRelease(v45);
    }
  }

  else
  {
    CFRetain(v52);
    *this = v52;
  }

  if (v52)
  {
    CFRelease(v52);
  }
}

void sub_18F8EFB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, const void *a30, const void *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, const void *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  applesauce::CF::StringRef::~StringRef(&a17);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  applesauce::CF::StringRef::~StringRef(&a30);
  if (*(v51 - 97) < 0)
  {
    operator delete(*(v51 - 120));
  }

  if (*(v51 - 73) < 0)
  {
    operator delete(*(v51 - 96));
  }

  applesauce::CF::URLRef::~URLRef(v50);
  applesauce::CF::URLRef::~URLRef(&a31);
  applesauce::CF::URLRef::~URLRef(&a38);
  applesauce::CF::URLRef::~URLRef((v51 - 72));
  _Unwind_Resume(a1);
}

void *applesauce::CF::StringRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

double applesauce::CF::StringRef_proxy::convert_or(UInt8 *a1, const __CFString *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (a2 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    applesauce::CF::details::CFString_get_value<false>(a1, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = __p.__r_.__value_.__r.__words[0];

      operator delete(v7);
    }
  }

  else
  {
    result = *&__p.__r_.__value_.__l.__data_;
    *a1 = __p;
  }

  return result;
}

const void **applesauce::CF::ObjectRef<__CFReadStream *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::optional<applesauce::CF::StringRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

const __CFNumber *applesauce::CF::convert_as<unsigned long long,0>(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_38;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v15 = Value != 0;
          if (Value)
          {
            LOBYTE(v16) = LOBYTE(valuePtr);
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v17 = SLOBYTE(valuePtr) < 0 && v15;
          v18 = v17 << 63 >> 63;
          return (v16 | (v18 << 8));
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v12 = v11 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLOWORD(valuePtr);
          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_38:
          v12 = v10 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLODWORD(valuePtr);
LABEL_39:
          v19 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
          if (v12)
          {
            v16 = 0;
          }

          else
          {
            v16 = v19;
          }

          goto LABEL_42;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_33;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_33:
          v7 = v5 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v8 = valuePtr;
LABEL_34:
          if (v7)
          {
            v16 = 0;
          }

          else
          {
            v16 = v8;
          }

LABEL_42:
          v18 = v16 >> 8;
          break;
        default:
          v18 = 0;
          LOBYTE(v16) = 0;
          break;
      }

      return (v16 | (v18 << 8));
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return CFBooleanGetValue(v1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void DSPGraph::Graph::GraphProperty::~GraphProperty(DSPGraph::Graph::GraphProperty *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 32) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      *(this + 2) = v3;
      operator delete(v3);
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[9];
    if (v3)
    {
      __p[10] = v3;
      operator delete(v3);
    }

    if (*(__p + 56) == 1)
    {
      v4 = __p[4];
      if (v4)
      {
        __p[5] = v4;
        operator delete(v4);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

double DSPGraph::Graph::getLatencyInSeconds(DSPGraph::Graph *this, unsigned int a2)
{
  if (a2 >= ((*(this + 39) - *(this + 38)) >> 3))
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v6, "getLatencyInSeconds");
    std::string::basic_string[abi:ne200100]<0>(&v5, "latency queried on non-existent output");
    DSPGraph::ThrowException(1701602593, &v7, 2350, &v6, &v5);
  }

  v2 = DSPGraph::Graph::out(this, a2);
  v3 = (*(*v2 + 72))(v2);
  return (DSPGraph::Box::upstreamLatencyInTicks(v2) + v3) / *(*(v2 + 1) + 696);
}

void sub_18F8F0474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

char *DSPGraph::Graph::getOrderingConstraints@<X0>(char *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 3);
  if (v2)
  {
    v4 = 0;
    this = 0;
    do
    {
      v5 = *(v2[2] + 128);
      if (v5)
      {
        v6 = this;
        do
        {
          v7 = v5[2];
          v8 = v2[2];
          v9 = a2[2];
          if (v6 >= v9)
          {
            v10 = *a2;
            v11 = (v6 - *a2) >> 4;
            v12 = v11 + 1;
            if ((v11 + 1) >> 60)
            {
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v13 = v9 - v10;
            if (v13 >> 3 > v12)
            {
              v12 = v13 >> 3;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF0)
            {
              v14 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              if (!(v14 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v15 = (16 * v11);
            *v15 = v7;
            v15[1] = v8;
            v6 = (16 * v11 + 16);
            v16 = v4 - v10;
            v17 = v15 - (v4 - v10);
            memcpy(v17, v10, v16);
            *a2 = v17;
            a2[2] = 0;
            if (v10)
            {
              operator delete(v10);
            }
          }

          else
          {
            *v6 = v7;
            *(v6 + 1) = v8;
            v6 += 16;
          }

          a2[1] = v6;
          v5 = *v5;
          this = v6;
          v4 = v6;
        }

        while (v5);
      }

      else
      {
        v6 = v4;
      }

      v2 = *v2;
      v4 = v6;
    }

    while (v2);
  }

  return this;
}

void sub_18F8F0698(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::Graph::profiler_t::results(DSPGraph::Graph::profiler_t *this)
{
  v1 = 0.0;
  if (!*(this + 4))
  {
    return 0.0;
  }

  v2 = *(this + 2);
  if (!v2)
  {
    return NAN;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    v5 = v3 + 1;
    v4 = *v2 + v4;
    if (v3 + 1 >= 2)
    {
      v1 = v1 * v3 / v5 + (*v2 - v4 / v5) * (*v2 - v4 / v5) / v3;
    }

    if (++v2 == *(this + 1))
    {
      v2 = *this;
    }

    if (v2 == *(this + 3))
    {
      v2 = 0;
    }

    ++v3;
  }

  while (v2);
  return v4 / v5;
}

void DSPGraph::Graph::bridge(DSPGraph::Graph *this, DSPGraph::Graph *a2, DSPGraph::Graph *a3)
{
  if ((*(this + 761) & 1) != 0 || *(a2 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v17, "bridge");
    std::string::basic_string[abi:ne200100]<0>(&v14, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v20, 2549, &v17, &v14);
  }

  memset(v22, 0, sizeof(v22));
  *v21 = 0u;
  memset(v19, 0, sizeof(v19));
  *v18 = 0u;
  v20 = a2;
  v17 = this;
  for (i = *(this + 67); i; i = *i)
  {
    v6 = i + 3;
    v7 = *(i + 6);
    if (std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(a2 + 65, v7))
    {
      *&v14 = i + 3;
      v8 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a2 + 65, v7);
      v9 = *(v8 + 32);
      if (*(i + 32) == 1)
      {
        if ((v9 & 1) == 0)
        {
          v6 = v8 + 3;
          v10 = v21;
LABEL_9:
          std::vector<unsigned int>::push_back[abi:ne200100](v10, v6);
        }
      }

      else
      {
        v10 = v18;
        if (v9)
        {
          goto LABEL_9;
        }
      }
    }
  }

  for (j = *(this + 72); j; j = *j)
  {
    v12 = *(j + 6);
    if (std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(a2 + 70, v12))
    {
      *&v14 = j + 3;
      v13 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a2 + 70, v12);
      if (*(j + 64) == 1)
      {
        if ((v13[8] & 1) == 0)
        {
          LODWORD(v14) = *(v13 + 6);
          v15 = 0;
          v16 = 0;
          *(&v14 + 1) = 0;
          std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::push_back[abi:ne200100](v22 + 1, &v14);
          goto LABEL_18;
        }
      }

      else if (*(v13 + 64))
      {
        LODWORD(v14) = *(j + 6);
        v15 = 0;
        v16 = 0;
        *(&v14 + 1) = 0;
        std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::push_back[abi:ne200100](v19 + 1, &v14);
LABEL_18:
        if (*(&v14 + 1))
        {
          operator delete(*(&v14 + 1));
        }
      }
    }
  }

  std::vector<DSPGraph::Graph::GraphBridge>::push_back[abi:ne200100](this + 124, &v20);
  std::vector<DSPGraph::Graph::GraphBridge>::push_back[abi:ne200100](a2 + 124, &v17);
  *&v14 = v19 + 8;
  std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  v17 = v22 + 1;
  std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }
}

void sub_18F8F09A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, void *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DSPGraph::Graph::GraphBridge>::push_back[abi:ne200100](uint64_t *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if ((v7 + 1) > 0x492492492492492)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    v24 = a1;
    if (v10)
    {
      if (v10 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = 0;
    v22 = 56 * v7;
    v23 = (56 * v7);
    v11 = 56 * v7;
    *(v11 + 8) = 0;
    v12 = a2[1];
    *v11 = *a2;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(56 * v7 + 8, v12, a2[2], (a2[2] - v12) >> 2);
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__init_with_size[abi:ne200100]<DSPGraph::Graph::GraphBridge::BridgedProperty*,DSPGraph::Graph::GraphBridge::BridgedProperty*>(56 * v7 + 32, a2[4], a2[5], (a2[5] - a2[4]) >> 5);
    *&v23 = v23 + 56;
    v13 = *a1;
    v14 = a1[1];
    v15 = v22 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = *a1;
      v17 = (v22 + *a1 - v14);
      do
      {
        *v17 = *v16;
        v17[1] = 0;
        v17[2] = 0;
        v17[3] = 0;
        *(v17 + 1) = *(v16 + 8);
        v17[3] = *(v16 + 24);
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        v17[4] = 0;
        v17[5] = 0;
        v17[6] = 0;
        *(v17 + 2) = *(v16 + 32);
        v17[6] = *(v16 + 48);
        *(v16 + 32) = 0;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        v16 += 56;
        v17 += 7;
      }

      while (v16 != v14);
      do
      {
        std::__destroy_at[abi:ne200100]<DSPGraph::Graph::GraphBridge,0>(v13);
        v13 += 56;
      }

      while (v13 != v14);
    }

    v18 = *a1;
    *a1 = v15;
    v19 = a1[2];
    v20 = v23;
    *(a1 + 1) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    std::__split_buffer<DSPGraph::Graph::GraphBridge>::~__split_buffer(&v21);
    v6 = v20;
  }

  else
  {
    *v5 = *a2;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v5 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 2);
    v5[4] = 0;
    v5[5] = 0;
    v5[6] = 0;
    std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__init_with_size[abi:ne200100]<DSPGraph::Graph::GraphBridge::BridgedProperty*,DSPGraph::Graph::GraphBridge::BridgedProperty*>((v5 + 4), a2[4], a2[5], (a2[5] - a2[4]) >> 5);
    v6 = v5 + 7;
    a1[1] = (v5 + 7);
  }

  a1[1] = v6;
}

void sub_18F8F0C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 16) = v7;
    operator delete(v7);
  }

  std::__split_buffer<DSPGraph::Graph::GraphBridge>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *a1) >> 5;
    v7 = v6 + 1;
    if ((v6 + 1) >> 59)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<DSPGraph::Graph::GraphBridge::BridgedProperty>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = 32 * v6;
    *v10 = *a2;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 8) = 0;
    *(v10 + 8) = *(a2 + 8);
    *(v10 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v5 = 32 * v6 + 32;
    v12 = *a1;
    v11 = a1[1];
    v13 = 32 * v6 + *a1 - v11;
    v20 = v13;
    v21 = v13;
    v18[0] = a1;
    v18[1] = &v20;
    v18[2] = &v21;
    if (v11 == v12)
    {
      v19 = 1;
    }

    else
    {
      v14 = v12;
      v15 = v13;
      do
      {
        *v15 = *v14;
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 8) = 0;
        *(v15 + 8) = *(v14 + 1);
        *(v15 + 24) = v14[3];
        v14[1] = 0;
        v14[2] = 0;
        v14[3] = 0;
        v14 += 4;
        v15 += 32;
      }

      while (v14 != v11);
      v21 = v15;
      v19 = 1;
      do
      {
        v16 = v12[1];
        if (v16)
        {
          v12[2] = v16;
          operator delete(v16);
        }

        v12 += 4;
      }

      while (v12 != v11);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DSPGraph::Graph::GraphBridge::BridgedProperty>,DSPGraph::Graph::GraphBridge::BridgedProperty*>>::~__exception_guard_exceptions[abi:ne200100](v18);
    v17 = *a1;
    *a1 = v13;
    *(a1 + 1) = v5;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v5 = v3 + 32;
  }

  a1[1] = v5;
}

void DSPGraph::Graph::GraphBridge::~GraphBridge(DSPGraph::Graph::GraphBridge *this)
{
  v3 = (this + 32);
  std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void std::allocator<DSPGraph::Graph::GraphBridge::BridgedProperty>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DSPGraph::Graph::GraphBridge::BridgedProperty>,DSPGraph::Graph::GraphBridge::BridgedProperty*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 32;
    }
  }

  return a1;
}

void std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__init_with_size[abi:ne200100]<DSPGraph::Graph::GraphBridge::BridgedProperty*,DSPGraph::Graph::GraphBridge::BridgedProperty*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::allocator<DSPGraph::Graph::GraphBridge::BridgedProperty>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__split_buffer<DSPGraph::Graph::GraphBridge>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__destroy_at[abi:ne200100]<DSPGraph::Graph::GraphBridge,0>(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t DSPGraph::Graph::unbridge(DSPGraph::Graph *this, DSPGraph::Graph *a2, DSPGraph::Graph *a3)
{
  v5 = *(this + 125);
  for (i = *(this + 124); ; i += 56)
  {
    if (i == v5)
    {
      i = *(this + 125);
      goto LABEL_6;
    }

    if (*i == a2)
    {
      break;
    }
  }

  if (i != v5)
  {
    v10 = i + 56;
    if (i + 56 != v5)
    {
      do
      {
        if (*v10 != a2)
        {
          *i = *v10;
          v11 = *(i + 8);
          if (v11)
          {
            *(i + 16) = v11;
            operator delete(v11);
            *(i + 8) = 0;
            *(i + 16) = 0;
            *(i + 24) = 0;
          }

          *(i + 8) = *(v10 + 8);
          *(i + 24) = *(v10 + 24);
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          *(v10 + 24) = 0;
          std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__vdeallocate((i + 32));
          *(i + 32) = *(v10 + 32);
          *(i + 48) = *(v10 + 48);
          *(v10 + 32) = 0;
          *(v10 + 40) = 0;
          *(v10 + 48) = 0;
          i += 56;
        }

        v10 += 56;
      }

      while (v10 != v5);
      v5 = *(this + 125);
    }
  }

LABEL_6:
  std::vector<DSPGraph::Graph::GraphBridge>::erase(this + 124, i, v5);
  v7 = *(a2 + 125);
  for (j = *(a2 + 124); ; j += 56)
  {
    if (j == v7)
    {
      j = *(a2 + 125);
      goto LABEL_11;
    }

    if (*j == this)
    {
      break;
    }
  }

  if (j != v7)
  {
    v12 = j + 56;
    if (j + 56 != v7)
    {
      do
      {
        if (*v12 != this)
        {
          *j = *v12;
          v13 = *(j + 8);
          if (v13)
          {
            *(j + 16) = v13;
            operator delete(v13);
            *(j + 8) = 0;
            *(j + 16) = 0;
            *(j + 24) = 0;
          }

          *(j + 8) = *(v12 + 8);
          *(j + 24) = *(v12 + 24);
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
          *(v12 + 24) = 0;
          std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__vdeallocate((j + 32));
          *(j + 32) = *(v12 + 32);
          *(j + 48) = *(v12 + 48);
          *(v12 + 32) = 0;
          *(v12 + 40) = 0;
          *(v12 + 48) = 0;
          j += 56;
        }

        v12 += 56;
      }

      while (v12 != v7);
      v7 = *(a2 + 125);
    }
  }

LABEL_11:

  return std::vector<DSPGraph::Graph::GraphBridge>::erase(a2 + 124, j, v7);
}

void std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<DSPGraph::Graph::GraphBridge>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v14 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a3;
      v8 = *a1 + a2;
      do
      {
        v9 = v7 + v6;
        v10 = (v7 + v6 + 8);
        v11 = (v8 + v6);
        *(v8 + v6) = *(v7 + v6);
        v13 = (v8 + v6 + 8);
        v12 = *v13;
        if (*v13)
        {
          v11[2] = v12;
          operator delete(v12);
          *v13 = 0;
          *(v8 + v6 + 16) = 0;
          *(v8 + v6 + 24) = 0;
        }

        *v13 = *v10;
        v11[3] = *(v9 + 24);
        *v10 = 0;
        *(v7 + v6 + 16) = 0;
        *(v7 + v6 + 24) = 0;
        std::vector<DSPGraph::Graph::GraphBridge::BridgedProperty>::__vdeallocate(v11 + 4);
        *(v11 + 2) = *(v9 + 32);
        v11[6] = *(v9 + 48);
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        v7 += 56;
        v8 += 56;
      }

      while (v7 + v6 != v5);
      v14 = v8 + v6;
      v5 = a1[1];
    }

    while (v5 != v14)
    {
      v5 -= 56;
      std::__destroy_at[abi:ne200100]<DSPGraph::Graph::GraphBridge,0>(v5);
    }

    a1[1] = v14;
  }

  return a2;
}

void DSPGraph::Graph::GetProfilingInfo(DSPGraph::Graph *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 127);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (!v4)
  {
    return;
  }

  v5 = DSPGraph::Graph::profiler_t::results(v4);
  v7 = v6;
  std::string::basic_string[abi:ne200100]<0>(__p, "@TOP");
  v8 = std::__string_hash<char>::operator()[abi:ne200100](__p);
  v9 = v8;
  v10 = *(a2 + 8);
  if (!*&v10)
  {
    goto LABEL_19;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a2 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v16 = *(v15 + 1);
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_19;
    }

LABEL_18:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v15 + 2, __p))
  {
    goto LABEL_18;
  }

  v15[5] = v5;
  *(v15 + 6) = v7;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(this + 134); i; i = *i)
  {
    v18 = DSPGraph::Graph::profiler_t::results((i + 5));
    v20 = v19;
    v21 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v22 = v21;
    v23 = *(a2 + 8);
    if (!*&v23)
    {
      goto LABEL_39;
    }

    v24 = vcnt_s8(v23);
    v24.i16[0] = vaddlv_u8(v24);
    v25 = v24.u32[0];
    if (v24.u32[0] > 1uLL)
    {
      v26 = v21;
      if (v21 >= *&v23)
      {
        v26 = v21 % *&v23;
      }
    }

    else
    {
      v26 = (*&v23 - 1) & v21;
    }

    v27 = *(*a2 + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_39:
      operator new();
    }

    while (1)
    {
      v29 = *(v28 + 1);
      if (v29 == v22)
      {
        break;
      }

      if (v25 > 1)
      {
        if (v29 >= *&v23)
        {
          v29 %= *&v23;
        }
      }

      else
      {
        v29 &= *&v23 - 1;
      }

      if (v29 != v26)
      {
        goto LABEL_39;
      }

LABEL_38:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_39;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v28 + 2, i + 2))
    {
      goto LABEL_38;
    }

    v28[5] = v18;
    *(v28 + 6) = v20;
  }
}

void sub_18F8F18CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Graph::setSRCAlgorithm(uint64_t this, int a2)
{
  *(this + 928) = a2;
  v2 = *(this + 384);
  if (v2)
  {
    v3 = this;
    do
    {
      this = (*(*v2[2] + 256))(v2[2]);
      if (this)
      {
        *(this + 896) = *(v3 + 928);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

uint64_t DSPGraph::Graph::setSRCQuality(uint64_t this, int a2)
{
  *(this + 932) = a2;
  v2 = *(this + 384);
  if (v2)
  {
    v3 = this;
    do
    {
      this = (*(*v2[2] + 256))(v2[2]);
      if (this)
      {
        *(this + 900) = *(v3 + 932);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

uint64_t DSPGraph::Graph::setSRCMinimumPhase(uint64_t this, char a2)
{
  *(this + 936) = a2;
  v2 = *(this + 384);
  if (v2)
  {
    v3 = this;
    do
    {
      this = (*(*v2[2] + 256))(v2[2]);
      if (this)
      {
        *(this + 904) = *(v3 + 936);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

void *std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Jack>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Jack>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Jack>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Jack>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_18F8F209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v14 + 8);

  _Unwind_Resume(a1);
}

void sub_18F8F24E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  caulk::xpc::sync_message<objc_object  {objcproto33CarbonComponentScannerXPCProtocol}* {__strong},NSData * {__strong},NSData *>::~sync_message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id *caulk::xpc::sync_message<objc_object  {objcproto33CarbonComponentScannerXPCProtocol}* {__strong},NSData * {__strong},NSData *>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataS7_EE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  std::function<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::operator()(a1 + 32, a2, &v7);
}

void std::function<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataS7_EE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  std::function<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto33CarbonComponentScannerXPCProtocol}* {__strong},NSData * {__strong},NSData *>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSData *,NSData *> &&)#1},std::allocator<std::tuple<NSData *,NSData *> &>,void ()(NSError,std::tuple<NSData *,NSData *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
  objc_storeStrong((v6 + 56), a3[1]);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto33CarbonComponentScannerXPCProtocol}* {__strong},NSData * {__strong},NSData *>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSData *,NSData *> &&)#1},std::allocator<std::tuple<NSData *,NSData *> &>,void ()(NSError,std::tuple<NSData *,NSData *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033F8D0;
  a2[1] = v2;
  return result;
}

void sub_18F8F2CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  caulk::xpc::sync_message<objc_object  {objcproto33CarbonComponentScannerXPCProtocol}* {__strong},NSData * {__strong}>::~sync_message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id *caulk::xpc::sync_message<objc_object  {objcproto33CarbonComponentScannerXPCProtocol}* {__strong},NSData * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto33CarbonComponentScannerXPCProtocol}* {__strong},NSData * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSData *> &&)#1},std::allocator<std::tuple<NSData *> &>,void ()(NSError,std::tuple<NSData *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto33CarbonComponentScannerXPCProtocol}* {__strong},NSData * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSData *> &&)#1},std::allocator<std::tuple<NSData *> &>,void ()(NSError,std::tuple<NSData *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033F810;
  a2[1] = v2;
  return result;
}

void sub_18F8F3434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_18F8F359C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CarbonComponentScannerXPCClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t IPCAUCallbackSender_LaunchRequestComplete(mach_port_t a1, int a2, int a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 90103;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 17, 0x28u, 0, 0, gMediaServerTimeout, 0);
  if (v3 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

_DWORD *_XLaunchRequestComplete(_DWORD *result, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || result[1] != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[10] || result[11] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    goto LABEL_8;
  }

  v6 = result[8];
  v5 = result[9];
  v7 = CADeprecated::TSingleton<IPCAUClient>::instance();
  if (kInterAppAudioScope)
  {
    v8 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315906;
    v15 = "IPCAUClient.h";
    v16 = 1024;
    v17 = 371;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v5 != 0;
    _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d token %d, success %d", &v14, 0x1Eu);
  }

LABEL_15:
  v9 = (v7 + 8);
  v10 = (*(*(v7 + 8) + 16))(v7 + 8);
  v11 = *(v7 + 144);
  if (v11 != v6)
  {
    if (kInterAppAudioScope)
    {
      v13 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      v15 = "IPCAUClient.h";
      v16 = 1024;
      v17 = 377;
      v18 = 1024;
      v19 = v11;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d doesn't match wait token %d", &v14, 0x18u);
    }

    goto LABEL_26;
  }

  if (v5)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  *(v7 + 148) = v12;
LABEL_26:
  if (v10)
  {
    (*(*v9 + 24))(v9);
  }

  result = CADeprecated::CAGuard::Notify(v9);
  *(a2 + 32) = 0;
LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F8F3954(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

_DWORD *_XRemoteControlEvent(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[10] || result[11] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[8];
  v4 = result[9];
  CADeprecated::TSingleton<IPCAUClient>::instance();
  os_unfair_recursive_lock_lock_with_options();
  v6 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v6)
  {
    v7 = *(v6 + 440);
    if (v7)
    {
      (*(v7 + 16))(v7, v4);
    }
  }

  result = os_unfair_recursive_lock_unlock();
  *(a2 + 32) = 0;
  return result;
}

_DWORD *_XPropertiesChanged(_DWORD *result, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (!result[9] && result[10] > 0x1Fu)
  {
    v5 = result[8];
    CADeprecated::TSingleton<IPCAUClient>::instance();
    os_unfair_recursive_lock_lock_with_options();
    v6 = BaseOpaqueObject::ResolveOpaqueRef();
    if (!v6)
    {
LABEL_12:
      result = os_unfair_recursive_lock_unlock();
      *(a2 + 32) = 0;
      goto LABEL_8;
    }

    v7 = v6;
    v36 = 1;
    v35[0] = &unk_1F0325878;
    v35[1] = 256;
    v37 = &v41;
    v38 = &v42;
    v39 = &v43;
    v40 = &v44;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v34 = 0;
    IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v32, *(v6 + 16), &v34);
    if (v34)
    {
LABEL_11:
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v32);
      MIGVariableLengthRefs::~MIGVariableLengthRefs(v35);
      goto LABEL_12;
    }

    v8 = *(*(v7 + 16) + 48);
    if (v33)
    {
      v9 = 0x7FFFFFFF;
    }

    else
    {
      v9 = 10000;
    }

    v10 = *(v7 + 80);
    v11 = v37;
    v12 = v38;
    v14 = v39;
    v13 = v40;
    memset(__n, 0, sizeof(__n));
    v46 = 0u;
    memset(&msg[1], 0, 32);
    *&msg[6] = *MEMORY[0x1E69E99E0];
    msg[8] = v10;
    reply_port = mig_get_reply_port();
    msg[3] = reply_port;
    msg[0] = 5395;
    msg[2] = v8;
    *&msg[4] = 0x1606200000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      v16 = msg[3];
    }

    else
    {
      v16 = reply_port;
    }

    v17 = mach_msg(msg, 275, 0x24u, 0x144u, v16, v9, 0);
    v18 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg[3]);
    }

    else
    {
      if (!v17)
      {
        if (msg[5] == 71)
        {
          v18 = -308;
        }

        else if (msg[5] == 90310)
        {
          if ((msg[0] & 0x80000000) != 0)
          {
            v18 = -300;
            if (msg[6] == 1 && (msg[1] - 60) <= 0x100 && !msg[2] && BYTE3(v46) == 1 && LODWORD(__n[0]) <= 0x100 && (msg[1] - 60) >= LODWORD(__n[0]))
            {
              v19 = (LODWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (msg[1] == v19 + 60)
              {
                v20 = msg + v19;
                if (DWORD1(v46) == *(v20 + 14))
                {
                  v21 = v20 - 256;
                  v22 = v11;
                  v23 = __n[0];
                  memcpy(v22, __n + 4, LODWORD(__n[0]));
                  v18 = 0;
                  *v12 = v23;
                  *v14 = *&msg[7];
                  *v13 = *(v21 + 78);
                  goto LABEL_54;
                }
              }
            }
          }

          else if (msg[1] == 36)
          {
            v18 = -300;
            if (msg[8])
            {
              if (msg[2])
              {
                v18 = -300;
              }

              else
              {
                v18 = msg[8];
              }
            }
          }

          else
          {
            v18 = -300;
          }
        }

        else
        {
          v18 = -301;
        }

        mach_msg_destroy(msg);
LABEL_49:
        if (v18 == 268435459 || v18 == -308)
        {
          if (kInterAppAudioScope)
          {
            v24 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v24 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            msg[0] = 136315906;
            *&msg[1] = "IPCAUClient.cpp";
            LOWORD(msg[3]) = 1024;
            *(&msg[3] + 2) = 433;
            HIWORD(msg[4]) = 1024;
            msg[5] = v18;
            LOWORD(msg[6]) = 1024;
            *(&msg[6] + 2) = -66749;
            _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
          }

          goto LABEL_11;
        }

LABEL_54:
        if (!v18)
        {
          if (*v39)
          {
            v25 = *v39;
          }

          else
          {
            v25 = v37;
          }

          v26 = &v40;
          if (!*v39)
          {
            v26 = &v38;
          }

          v27 = **v26;
          CADeserializer::CADeserializer(msg, v25);
          v31 = 0;
          CADeserializer::Read(msg, &v31);
          for (; v31; --v31)
          {
            v30 = 0;
            v29 = 0;
            CADeserializer::Read(msg, &v30);
            CADeserializer::Read(msg, &v29 + 4);
            CADeserializer::Read(msg, &v29);
            v28 = *(v7 + 72);
            RemoteAUPropertyListeners::Notify(*(v7 + 104), *(v7 + 112));
          }

          MEMORY[0x193ADE3E0](msg);
        }

        goto LABEL_11;
      }

      mig_dealloc_reply_port(msg[3]);
    }

    if (v18 == 268435460)
    {
      if ((msg[0] & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], msg[3]);
      }

      mach_msg_destroy(msg);
      v18 = 268435460;
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  v3 = -309;
LABEL_7:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F8F3FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  MEMORY[0x193ADE3E0](&a57);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&a12);
  MIGVariableLengthRefs::~MIGVariableLengthRefs(&a15);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

_DWORD *_XAUListChanged(_DWORD *result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (!result[6] && result[7] > 0x1Fu)
  {
    if (kInterAppAudioScope)
    {
      v5 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_15:
        v6 = CADeprecated::TSingleton<IPCAUClient>::instance();
        result = IPCAUClient::RefreshRemoteAUList(v6);
        *(a2 + 32) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "IPCAUClient.cpp";
      v9 = 1024;
      v10 = 1283;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d IPCAUCallbackReceiver_AUListChanged", &v7, 0x12u);
    }

    goto LABEL_15;
  }

  v3 = -309;
LABEL_7:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (*IPCAudioUnitCallbacks_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 90104) >= 0xFFFFFFFC)
  {
    return IPCAUCallbackReceiver_IPCAudioUnitCallbacks_subsystem[5 * (v1 - 90100) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t IPCAudioUnitCallbacks_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 90104) >= 0xFFFFFFFC && (v5 = IPCAUCallbackReceiver_IPCAudioUnitCallbacks_subsystem[5 * (v4 - 90100) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t IPCAUClient_Initialize(int a1, mach_msg_timeout_t a2, int a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, void *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11)
{
  v31 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  v28 = 0u;
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a3;
  LODWORD(v28) = a4;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1605A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v18 = *&msg[12];
  }

  else
  {
    v18 = reply_port;
  }

  v19 = mach_msg(msg, 275, 0x28u, 0xA4u, v18, a2, 0);
  v20 = v19;
  if ((v19 - 268435458) <= 0xE && ((1 << (v19 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v19)
    {
      if (*&msg[20] == 71)
      {
        v20 = 4294966988;
      }

      else if (*&msg[20] == 90302)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v20 = 4294966996;
          if (*&msg[24] == 2 && (*&msg[4] - 76) <= 0x50 && !*&msg[8] && WORD1(v28) << 16 == 1114112 && HIWORD(v28) << 16 == 1114112)
          {
            v21 = DWORD1(v30[0]);
            if (DWORD1(v30[0]) <= 2 && DWORD1(v30[0]) <= (msg[4] - 76) / 0x28u)
            {
              v22 = 40 * DWORD1(v30[0]);
              if (*&msg[4] == 40 * DWORD1(v30[0]) + 76)
              {
                v23 = HIDWORD(v29);
                *a5 = DWORD2(v29);
                *a6 = v23;
                *a7 = v30[0];
                memcpy(a8, v30 + 8, v22);
                v20 = 0;
                *a9 = v21;
                v24 = DWORD1(v28);
                *a10 = *&msg[28];
                *a11 = v24;
                goto LABEL_34;
              }
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v20 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v20 = 4294966996;
            }

            else
            {
              v20 = *&msg[32];
            }
          }
        }

        else
        {
          v20 = 4294966996;
        }
      }

      else
      {
        v20 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_34;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if (v20 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v20 = 268435460;
  }

LABEL_34:
  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t IPCAUClient_Uninitialize(int a1, mach_msg_timeout_t a2, int a3)
{
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1605B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, a2, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 90303)
      {
        v9 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t IPCAUClient_SetProperty(mach_port_t a1, mach_msg_timeout_t a2, int a3, int a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10)
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *&v25[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v22 = 1;
  v23 = a9;
  v24 = 16777472;
  *v25 = a10;
  *&v25[4] = *MEMORY[0x1E69E99E0];
  *&v25[12] = a3;
  *&v25[16] = a4;
  *&v25[20] = a5;
  LODWORD(v26) = a6;
  if (a8 <= 0x100)
  {
    __memcpy_chk();
    DWORD1(v26) = a8;
    v14 = (a8 + 3) & 0x3FC;
    *(&reply_port + v14 + 72) = a10;
    v15 = mig_get_reply_port();
    reply_port.msgh_remote_port = a1;
    reply_port.msgh_local_port = v15;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0x1605F00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v15;
    }

    v17 = mach_msg(&reply_port, 275, v14 + 76, 0x2Cu, msgh_local_port, a2, 0);
    v10 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v17)
      {
        if (reply_port.msgh_id == 71)
        {
          v18 = 4294966988;
        }

        else if (reply_port.msgh_id == 90307)
        {
          v18 = 4294966996;
          if ((reply_port.msgh_bits & 0x80000000) == 0 && reply_port.msgh_size == 36 && !reply_port.msgh_remote_port)
          {
            v18 = HIDWORD(v23);
            if (!HIDWORD(v23))
            {
              v10 = 0;
              goto LABEL_24;
            }
          }
        }

        else
        {
          v18 = 4294966995;
        }

LABEL_23:
        mach_msg_destroy(&reply_port);
        v10 = v18;
        goto LABEL_24;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }

    v18 = 268435460;
    if (v10 != 268435460)
    {
      goto LABEL_24;
    }

    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port.msgh_local_port);
    }

    goto LABEL_23;
  }

  v10 = 4294966989;
LABEL_24:
  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t IPCAUClient_ConnectInput(mach_port_t a1, mach_msg_timeout_t a2, unsigned int a3, char a4, __int128 *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a5[1];
  v22 = *a5;
  v16 = *MEMORY[0x1E69E99E0];
  v17 = a3;
  v18 = 0;
  v19 = a4;
  v20 = 0;
  v21 = 0;
  v23 = v7;
  v24 = *(a5 + 4);
  reply_port = mig_get_reply_port();
  *&v15.msgh_bits = 5395;
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = reply_port;
  *&v15.msgh_voucher_port = 0x1606500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v15, 275, 0x54u, 0x2Cu, msgh_local_port, a2, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
  }

  else
  {
    if (!v10)
    {
      if (v15.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (v15.msgh_id == 90313)
      {
        v12 = 4294966996;
        if ((v15.msgh_bits & 0x80000000) == 0 && *&v15.msgh_size == 36)
        {
          v12 = v17;
          if (!v17)
          {
            v11 = 0;
            goto LABEL_21;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v15);
      v11 = v12;
      goto LABEL_21;
    }

    mig_dealloc_reply_port(v15.msgh_local_port);
  }

  v12 = 268435460;
  if (v11 == 268435460)
  {
    if ((v15.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v15.msgh_local_port);
    }

    goto LABEL_20;
  }

LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t IPCAURegClient_SetProcessWakeState(int a1, int a2, int a3, _DWORD *a4)
{
  memset(&reply_port[16], 0, 28);
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x1E69E99E0];
  *&reply_port[28] = a2;
  *&reply_port[32] = a3;
  v6 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v6;
  v13 = 5395;
  *&reply_port[12] = 0x15F9B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    v7 = *&reply_port[8];
  }

  else
  {
    v7 = v6;
  }

  v8 = mach_msg(&v13, 275, 0x28u, 0x30u, v7, gMediaServerTimeout, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
    goto LABEL_22;
  }

  if (!v8)
  {
    if (*&reply_port[16] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&reply_port[16] == 90111)
    {
      if ((v13 & 0x80000000) == 0)
      {
        if (*reply_port == 40)
        {
          if (!*&reply_port[4])
          {
            v9 = *&reply_port[28];
            if (!*&reply_port[28])
            {
              *a4 = *&reply_port[32];
              return v9;
            }

            goto LABEL_30;
          }
        }

        else if (*reply_port == 36)
        {
          if (*&reply_port[4])
          {
            v11 = 1;
          }

          else
          {
            v11 = *&reply_port[28] == 0;
          }

          if (v11)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = *&reply_port[28];
          }

          goto LABEL_30;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_30:
    mach_msg_destroy(&v13);
    return v9;
  }

  mig_dealloc_reply_port(*&reply_port[8]);
LABEL_22:
  if (v9 == 268435460)
  {
    if ((v13 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&reply_port[8]);
    }

    mach_msg_destroy(&v13);
    return 268435460;
  }

  return v9;
}

uint64_t _XGetSessionInfo(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = *(result + 24);
  result += 24;
  if (v3 || *(result + 4) <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
LABEL_8:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 36) = 16777473;
  v5 = *(result + 36);
  *v39.val = *(result + 20);
  *&v39.val[4] = v5;
  pidp = 0;
  result = ClientHasInterAppAudioEntitlement(&v39, &pidp);
  if ((result & 1) == 0)
  {
    v35 = -66748;
LABEL_64:
    *(a2 + 32) = v35;
    goto LABEL_8;
  }

  CASerializer::CASerializer(&v46, 0);
  v6 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
  v8 = *(v6 + 296);
  v7 = *(v6 + 304);
  if (v8 != v7)
  {
    v9 = 0;
    v38 = v6;
    v10 = pidp;
    v37 = *(v6 + 304);
    v36 = pidp;
    do
    {
      if (*(v8 + 20) == v10)
      {
        v11 = *(v8 + 16);
        v12 = 0;
        if (v9)
        {
          v12 = 0;
          while (*v12 != v11)
          {
            if (++v12 == v9)
            {
              goto LABEL_19;
            }
          }
        }

        if (v12 == v9)
        {
LABEL_19:
          v13 = v9;
          v14 = v9 >> 2;
          if (((v9 >> 2) + 1) >> 62)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          if (v9 >> 2 != -1)
          {
            std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100]((v9 >> 2) + 1);
          }

          *(4 * v14) = v11;
          v9 = 4 * v14 + 4;
          memcpy(0, 0, v13);
          for (i = v38[29]; i != v38[30]; ++i)
          {
            v16 = *i;
            if ((*i)->i32[3] == v11)
            {
              LOBYTE(v40) = 1;
              HIDWORD(v40) = v11;
              v41 = 0;
              v42 = vextq_s8(v16[1], v16[1], 8uLL);
              v17 = CFUUIDCreateFromUUIDBytes(0, *v8);
              if (v17)
              {
                v18 = CFUUIDCreateString(0, v17);
                v19 = v18;
                if (v18)
                {
                  v20 = CFStringCreateWithFormat(0, 0, @"com-apple-audiounit:%@/%c", v18, 72);
                  if (v20)
                  {
                    v21 = CFURLCreateWithString(0, v20, 0);
                    CFRelease(v20);
                  }

                  else
                  {
                    v21 = 0;
                  }

                  CFRelease(v19);
                }

                else
                {
                  v21 = 0;
                }

                CFRelease(v17);
              }

              else
              {
                v21 = 0;
              }

              cf = v21;
              v48[0] = v40;
              CASerializer::Write(&v46, v48);
              CASerializer::Write(&v46, &v40 + 4);
              operator<<();
              operator<<();
              operator<<();
              CFRelease(cf);
              v22 = v38[37];
              v23 = v38[38];
              while (v22 != v23)
              {
                if (*(v22 + 16) == v11)
                {
                  v24 = v38[29];
                  v25 = v38[30];
                  if (v24 != v25)
                  {
                    v26 = *(v22 + 20);
                    while (1)
                    {
                      v27 = *v24;
                      if ((*v24)->i32[3] == v26)
                      {
                        break;
                      }

                      if (++v24 == v25)
                      {
                        goto LABEL_53;
                      }
                    }

                    LOBYTE(v40) = 0;
                    HIDWORD(v40) = v26;
                    v41 = 0;
                    v42 = vextq_s8(v27[1], v27[1], 8uLL);
                    v28 = CFUUIDCreateFromUUIDBytes(0, *v22);
                    if (v28)
                    {
                      v29 = CFUUIDCreateString(0, v28);
                      v30 = v29;
                      if (v29)
                      {
                        v31 = CFStringCreateWithFormat(0, 0, @"com-apple-audiounit:%@/%c", v29, 78);
                        if (v31)
                        {
                          v32 = CFURLCreateWithString(0, v31, 0);
                          CFRelease(v31);
                        }

                        else
                        {
                          v32 = 0;
                        }

                        CFRelease(v30);
                      }

                      else
                      {
                        v32 = 0;
                      }

                      CFRelease(v28);
                    }

                    else
                    {
                      v32 = 0;
                    }

                    cf = v32;
                    v48[0] = v40;
                    CASerializer::Write(&v46, v48);
                    CASerializer::Write(&v46, &v40 + 4);
                    operator<<();
                    operator<<();
                    operator<<();
                    CFRelease(cf);
                  }
                }

LABEL_53:
                v22 += 24;
              }

              break;
            }
          }
        }

        v7 = v37;
        v10 = v36;
      }

      v8 += 24;
    }

    while (v8 != v7);
  }

  v40 = &unk_1F0336F70;
  v41 = 0;
  v42.i8[0] = *(a2 + 28) != 0;
  v42.i64[1] = 0;
  cf = 0;
  v44 = a2 + 28;
  v45 = a2 + 52;
  *(a2 + 28) = 0;
  *(a2 + 52) = 0;
  if (v46.var0)
  {
    BytePtr = CFDataGetBytePtr(v46.var0);
    if (v46.var0)
    {
      Length = CFDataGetLength(v46.var0);
      goto LABEL_62;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_62:
  v35 = MIGVariableLengthRefs::Write(&v40, BytePtr, Length);
  if (v35)
  {
    MIGVariableLengthRefs::~MIGVariableLengthRefs(&v40);
    result = MEMORY[0x193ADE2A0](&v46);
    goto LABEL_64;
  }

  v42.i8[0] = 0;
  MIGVariableLengthRefs::~MIGVariableLengthRefs(&v40);
  result = MEMORY[0x193ADE2A0](&v46);
  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void _XURLOpen(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = -304;
  if ((*a1 & 0x80000000) == 0)
  {
    v4 = *(a1 + 4);
    if ((v4 - 293) >= 0xFFFFFEFF)
    {
      v5 = *(a1 + 32);
      v6 = v5 <= 0x100 && v4 - 36 >= v5;
      if (!v6 || v4 != ((v5 + 3) & 0x3FC) + 36)
      {
        v3 = -304;
        goto LABEL_13;
      }

      v7 = (((v4 + 3) & 0x3FC) + a1);
      if (*v7 || v7[1] < 0x20u)
      {
        v3 = -309;
        goto LABEL_13;
      }

      v10 = CFURLCreateWithBytes(0, (a1 + 36), v5, 0x8000100u, 0);
      v11 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
      v12 = CFURLCopyScheme(v10);
      if (v12)
      {
        v13 = v12;
        if (CFEqual(@"com-apple-audiounit", v12))
        {
          v14 = CFURLCopyResourceSpecifier(v10);
          if (v14)
          {
            v15 = v14;
            Length = CFStringGetLength(v14);
            v17 = Length - 2;
            if (Length > 2)
            {
              v48.location = Length - 2;
              v48.length = 2;
              CFStringGetCharacters(v15, v48, &buffer);
              if (buffer == 47)
              {
                v18 = v37;
                if (v37 == 78 || v37 == 72)
                {
                  v49.location = 0;
                  v49.length = v17;
                  v19 = CFStringCreateWithSubstring(0, v15, v49);
                  v20 = CFUUIDCreateFromString(0, v19);
                  if (v20)
                  {
                    v21 = v20;
                    if (kInterAppAudioScope)
                    {
                      v22 = *kInterAppAudioScope;
                      if (!*kInterAppAudioScope)
                      {
                        goto LABEL_40;
                      }
                    }

                    else
                    {
                      v22 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136316162;
                      v39 = "IPCAURegistrar.mm";
                      v40 = 1024;
                      v41 = 1090;
                      v42 = 2112;
                      v43 = v10;
                      v44 = 2112;
                      *v45 = v21;
                      *&v45[8] = 1024;
                      v46 = v18 == 72;
                      _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d url %@; uuid %@ host %d", buf, 0x2Cu);
                    }

LABEL_40:
                    v24 = CFUUIDGetUUIDBytes(v21);
                    v26 = v11[37];
                    v25 = v11[38];
                    if (v26 != v25)
                    {
                      while (*&v24.byte0 != *v26 || *&v24.byte8 != *(v26 + 8))
                      {
                        v26 += 24;
                        if (v26 == v25)
                        {
                          goto LABEL_46;
                        }
                      }

                      if (v18 == 72)
                      {
                        v29 = 16;
                      }

                      else
                      {
                        v29 = 20;
                      }

                      v30 = v11[29];
                      v31 = v11[30];
                      if (v30 != v31)
                      {
                        v32 = *(v26 + v29);
                        while (*(*v30 + 12) != v32)
                        {
                          v30 += 8;
                          if (v30 == v31)
                          {
                            goto LABEL_56;
                          }
                        }

                        SwitchToAUApp(*(*v30 + 16));
                        goto LABEL_66;
                      }

LABEL_56:
                      if (kInterAppAudioScope)
                      {
                        v33 = *kInterAppAudioScope;
                        if (!*kInterAppAudioScope)
                        {
LABEL_66:
                          CFRelease(v21);
                          goto LABEL_67;
                        }
                      }

                      else
                      {
                        v33 = MEMORY[0x1E69E9C10];
                      }

                      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                      {
                        v34 = *(v26 + 16);
                        v35 = *(v26 + 20);
                        *buf = 136316162;
                        v39 = "IPCAURegistrar.mm";
                        v40 = 1024;
                        v41 = 1098;
                        v42 = 2112;
                        v43 = v10;
                        v44 = 1024;
                        *v45 = v34;
                        *&v45[4] = 1024;
                        *&v45[6] = v35;
                        _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Inter-app URL '%@' appears valid for processes %d - %d, but process not found", buf, 0x28u);
                      }

                      goto LABEL_66;
                    }

LABEL_46:
                    CFRelease(v21);
                    if (kInterAppAudioScope)
                    {
                      v28 = *kInterAppAudioScope;
                      if (!*kInterAppAudioScope)
                      {
                        goto LABEL_67;
                      }
                    }

                    else
                    {
                      v28 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v39 = "IPCAURegistrar.mm";
                      v40 = 1024;
                      v41 = 1106;
                      v42 = 2112;
                      v43 = v10;
                      _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Inter-app URL '%@' does not refer to an active/valid connection", buf, 0x1Cu);
                    }

LABEL_67:
                    CFRelease(v19);
                    CFRelease(v15);
                    CFRelease(v13);
                    if (!v10)
                    {
                      goto LABEL_36;
                    }

                    goto LABEL_35;
                  }

                  CFRelease(v19);
                }
              }
            }

            CFRelease(v15);
          }
        }

        CFRelease(v13);
      }

      if (kInterAppAudioScope)
      {
        v23 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v39 = "IPCAURegistrar.mm";
        v40 = 1024;
        v41 = 1119;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Malformed inter-app URL: '%@'", buf, 0x1Cu);
      }

LABEL_34:
      if (!v10)
      {
LABEL_36:
        v3 = 0;
        goto LABEL_13;
      }

LABEL_35:
      CFRelease(v10);
      goto LABEL_36;
    }
  }

LABEL_13:
  v8 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v8;
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t _XSetExtensionProcessWakeState(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    result = 4294966992;
  }

  else if (*(a1 + 40) || *(a1 + 44) < 0x20u)
  {
    result = 4294966987;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 36);
    v8 = *(a1 + 76);
    v12 = *(a1 + 60);
    v13 = v8;
    pidp = 0;
    *atoken.val = v12;
    *&atoken.val[4] = v8;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    v9 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
    result = IPCAURegistrar::SetProcessWakeState(v9, pidp, v6, v7, &atoken);
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v4;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _XSetProcessWakeState(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 36);
  v6 = *(result + 76);
  *v8.val = *(result + 60);
  *&v8.val[4] = v6;
  pidp = 0;
  result = ClientHasInterAppAudioEntitlement(&v8, &pidp);
  if ((result & 1) == 0)
  {
    v3 = -66748;
    goto LABEL_7;
  }

  v7 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
  result = IPCAURegistrar::SetProcessWakeState(v7, pidp, v4, v5, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XCloseConnection(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
  }

  else if (*(result + 48) || *(result + 52) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(result + 84);
    *v10.val = *(result + 68);
    *&v10.val[4] = v4;
    v12 = *(result + 32);
    pidp = 0;
    result = ClientHasInterAppAudioEntitlement(&v10, &pidp);
    if (result)
    {
      result = CADeprecated::TSingleton<IPCAURegistrar>::instance();
      v6 = *(result + 296);
      v5 = *(result + 304);
      if (v6 == v5)
      {
LABEL_17:
        v3 = -3000;
      }

      else
      {
        v7 = result;
        while (*(v6 + 16) != pidp || v12 != *v6 || *(&v12 + 1) != *(v6 + 8))
        {
          v6 += 24;
          if (v6 == v5)
          {
            goto LABEL_17;
          }
        }

        v9 = v5 - (v6 + 24);
        if (v5 != v6 + 24)
        {
          result = memmove(v6, (v6 + 24), v5 - (v6 + 24));
        }

        v3 = 0;
        *(v7 + 304) = v6 + v9;
      }
    }

    else
    {
      v3 = -66748;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XGetAUServerPort(uint64_t a1, uint64_t a2)
{
  *&v47[5] = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 52)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (!*(a1 + 52) && *(a1 + 56) > 0x1Fu)
  {
    *(a2 + 32) = 0x13000000000000;
    v5 = *(a1 + 88);
    *v39.val = *(a1 + 72);
    *&v39.val[4] = v5;
    v38 = *(a1 + 32);
    pidp = 0;
    if (!ClientHasInterAppAudioEntitlement(&v39, &pidp))
    {
      v3 = -66748;
      goto LABEL_7;
    }

    v6 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
    v7 = pidp;
    if (kInterAppAudioScope)
    {
      v8 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_18:
        for (i = v6[29]; ; i += 8)
        {
          if (i == v6[30])
          {
            v3 = -50;
            goto LABEL_7;
          }

          if (*(*i + 12) == v7)
          {
            break;
          }
        }

        v10 = v6[33];
        v11 = v6[34];
        if (v10 != v11)
        {
          while (1)
          {
            v12 = *v10;
            if (*&v38.componentType == *(*v10 + 24) && v38.componentManufacturer == *(*v10 + 32))
            {
              break;
            }

            if (++v10 == v11)
            {
              goto LABEL_29;
            }
          }

          if (*(v12 + 64))
          {
            v15 = CFUUIDCreate(0);
            v16 = CFUUIDGetUUIDBytes(v15);
            v17 = *(*(v12 + 64) + 12);
            v18 = v6[38];
            v19 = v6[39];
            if (v18 >= v19)
            {
              v22 = v6[37];
              v23 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v22) >> 3);
              v24 = v23 + 1;
              if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 3);
              if (2 * v25 > v24)
              {
                v24 = 2 * v25;
              }

              if (v25 >= 0x555555555555555)
              {
                v26 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v26 = v24;
              }

              if (v26)
              {
                std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v26);
              }

              v27 = 24 * v23;
              *v27 = v16;
              *(v27 + 16) = v7;
              *(v27 + 20) = v17;
              v20 = 24 * v23 + 24;
              v28 = v6[37];
              v29 = v6[38] - v28;
              v30 = v27 - v29;
              memcpy((v27 - v29), v28, v29);
              v31 = v6[37];
              v6[37] = v30;
              v6[38] = v20;
              v6[39] = 0;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              *v18 = v16;
              v20 = v18 + 24;
              *(v18 + 16) = v7;
              *(v18 + 20) = v17;
            }

            v6[38] = v20;
            *(a2 + 52) = v16;
            if (kInterAppAudioScope)
            {
              v32 = *kInterAppAudioScope;
              if (!*kInterAppAudioScope)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v32 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v43 = "IPCAURegistrar.mm";
              v44 = 1024;
              v45 = 1025;
              v46 = 2112;
              *v47 = v15;
              _os_log_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d conn UUID %@", buf, 0x1Cu);
            }

LABEL_62:
            CFRelease(v15);
            v33 = *(v12 + 64);
            v34 = *(v33 + 176);
            if (v34)
            {
              v35 = *(v34 + 12);
            }

            else
            {
              v35 = 0;
            }

            *(a2 + 28) = v35;
            v36 = *(v33 + 12);
            *(a2 + 48) = v36;
            if (kInterAppAudioScope)
            {
              v37 = *kInterAppAudioScope;
              if (!*kInterAppAudioScope)
              {
LABEL_71:
                *(a2 + 40) = *MEMORY[0x1E69E99E0];
                *a2 |= 0x80000000;
                *(a2 + 4) = 68;
                *(a2 + 24) = 1;
                goto LABEL_8;
              }
            }

            else
            {
              v37 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              v43 = "IPCAURegistrar.mm";
              v44 = 1024;
              v45 = 1030;
              v46 = 1024;
              v47[0] = v35;
              LOWORD(v47[1]) = 1024;
              *(&v47[1] + 2) = v36;
              _os_log_impl(&dword_18F5DF000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d returning 0x%x/%d", buf, 0x1Eu);
            }

            goto LABEL_71;
          }

          if (kInterAppAudioScope)
          {
            v21 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
LABEL_53:
              v3 = -4;
              goto LABEL_7;
            }
          }

          else
          {
            v21 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v43 = "IPCAURegistrar.mm";
            v44 = 1024;
            v45 = 1013;
            _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d node app not found", buf, 0x12u);
          }

          goto LABEL_53;
        }

LABEL_29:
        if (kInterAppAudioScope)
        {
          v14 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
LABEL_38:
            v3 = -3000;
            goto LABEL_7;
          }
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v43 = "IPCAURegistrar.mm";
          v44 = 1024;
          v45 = 1034;
          _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d error: unknown desc", buf, 0x12u);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(&v41, &v38);
      *buf = 136315650;
      v43 = "IPCAURegistrar.mm";
      v44 = 1024;
      v45 = 1004;
      v46 = 2080;
      *v47 = v41;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d desc %s", buf, 0x1Cu);
      if (v41)
      {
        free(v41);
      }
    }

    goto LABEL_18;
  }

  v3 = -309;
LABEL_7:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
}

void _XCheckLaunchAUServer(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 56)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 56) || *(a1 + 60) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    goto LABEL_8;
  }

  v5 = *(a1 + 92);
  *v32.val = *(a1 + 76);
  *&v32.val[4] = v5;
  *&v31.componentType = *(a1 + 32);
  v6 = *(a1 + 52);
  v31.componentFlagsMask = *(a1 + 48);
  pidp = 0;
  if (!ClientHasInterAppAudioEntitlement(&v32, &pidp))
  {
    v3 = -66748;
    goto LABEL_7;
  }

  v7 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
  v8 = pidp;
  if (!kInterAppAudioScope)
  {
    v9 = MEMORY[0x1E69E9C10];
LABEL_15:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      MEMORY[0x193ADE470](&__p, v8);
      v10 = SHIBYTE(v45);
      v11 = __p;
      CAFormatter::CAFormatter(&v47, &v31);
      if (v10 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v11;
      }

      *buf = 136315906;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 928;
      *&buf[18] = 2080;
      *&buf[20] = p_p;
      *&buf[28] = 2080;
      *&buf[30] = v47;
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d process '%s' requesting desc %s", buf, 0x26u);
      if (v47)
      {
        free(v47);
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_23;
  }

  v9 = *kInterAppAudioScope;
  if (*kInterAppAudioScope)
  {
    goto LABEL_15;
  }

LABEL_23:
  for (i = v7[29]; ; ++i)
  {
    if (i == v7[30])
    {
      v3 = -50;
      goto LABEL_7;
    }

    v14 = *i;
    if (*(*i + 12) == v8)
    {
      break;
    }
  }

  v15 = v7[33];
  v16 = v7[34];
  if (v15 == v16)
  {
LABEL_34:
    if (kInterAppAudioScope)
    {
      v19 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_42:
        v3 = -3000;
        goto LABEL_7;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 977;
      _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d unknown desc", buf, 0x12u);
    }

    goto LABEL_42;
  }

  while (1)
  {
    v17 = *v15;
    if (*&v31.componentType == *(*v15 + 24) && v31.componentManufacturer == *(*v15 + 32))
    {
      break;
    }

    if (++v15 == v16)
    {
      goto LABEL_34;
    }
  }

  __p = 0;
  v44 = &__p;
  v45 = 0x2020000000;
  v46 = 0;
  v20 = *(v17 + 16);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = ___ZN14IPCAURegistrar19CheckLaunchAUServerEiRK25AudioComponentDescriptionjRi_block_invoke;
  v36 = &unk_1E72C1E00;
  v39 = v14;
  v40 = v17;
  v37 = &__p;
  v38 = v7;
  v41 = v6;
  v42 = v8;
  v21 = objc_autoreleasePoolPush();
  v22 = objc_alloc_init(NSClassFromString(&cfstr_Bkssystemservi.isa));
  v23 = [v22 pidForApplication:v20];
  if (v23 <= 0)
  {
    v24 = [v22 createClientPort];
    if (OpenAUApp_suspendKey || (v25 = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", 1), (OpenAUApp_suspendKey = *dlsym(v25, "BKSOpenApplicationOptionKeyActivateSuspended")) != 0))
    {
      v26 = MEMORY[0x1E695DF20];
      v27 = [MEMORY[0x1E696AD98] numberWithBool:{1, *&v31.componentType}];
      v28 = [v26 dictionaryWithObject:v27 forKey:OpenAUApp_suspendKey];
    }

    else
    {
      v28 = 0;
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __OpenAUApp_block_invoke;
    *&buf[24] = &unk_1E72C2C48;
    *&buf[32] = v34;
    [v22 openApplication:v20 options:v28 clientPort:v24 withResult:{buf, *&v31.componentType}];
  }

  else
  {
    v35(v34, 0, v23);
  }

  objc_autoreleasePoolPop(v21);
  v29 = v44;
  if (*(v44 + 6))
  {
    *(a2 + 36) = 0;
    v30 = *(v29 + 6);
  }

  else
  {
    v30 = 0;
    *(a2 + 36) = 1;
  }

  _Block_object_dispose(&__p, 8);
  *(a2 + 32) = v30;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!v30)
  {
    *(a2 + 4) = 40;
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t _XGetAUList(uint64_t result, uint64_t a2)
{
  *&v28[9] = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = *(result + 24);
  result += 24;
  if (!v3 && *(result + 4) > 0x1Fu)
  {
    *(a2 + 36) = 16777473;
    v6 = *(result + 36);
    *v21.val = *(result + 20);
    *&v21.val[4] = v6;
    pidp = 0;
    result = ClientHasInterAppAudioEntitlement(&v21, &pidp);
    if ((result & 1) == 0)
    {
      v10 = -66748;
LABEL_43:
      *(a2 + 32) = v10;
      goto LABEL_8;
    }

    CASerializer::CASerializer(&theData, 0);
    v7 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
    v8 = pidp;
    if (kInterAppAudioScope)
    {
      v9 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      MEMORY[0x193ADE470](__p, v8);
      v11 = v25 >= 0 ? __p : __p[0];
      v12 = (v7[34] - v7[33]) >> 3;
      *buf = 136315906;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 868;
      v27 = 2080;
      *v28 = v11;
      LOWORD(v28[2]) = 1024;
      *(&v28[2] + 2) = v12;
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d process '%s' fetching %d AUs", buf, 0x22u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_22:
    v13 = v7[29];
    v14 = v7[30];
    if (v13 != v14)
    {
      v15 = (a2 + 28);
      while (*(*v13 + 12) != v8)
      {
        v13 += 8;
        if (v13 == v14)
        {
          goto LABEL_26;
        }
      }

      *(*v13 + 33) = 0;
      *buf = (v7[34] - v7[33]) >> 3;
      CASerializer::Write(&theData, buf);
      for (i = v7[33]; i != v7[34]; ++i)
      {
        v18 = *i;
        CASerializer::Write(&theData, (*i + 8));
        operator<<();
        CASerializer::Write(&theData, (v18 + 24));
        CASerializer::Write(&theData, (v18 + 28));
        CASerializer::Write(&theData, (v18 + 32));
        CASerializer::Write(&theData, (v18 + 36));
        CASerializer::Write(&theData, (v18 + 40));
        operator<<();
        CASerializer::Write(&theData, (v18 + 56));
      }

      *buf = &unk_1F0336F70;
      *&buf[8] = 0;
      buf[16] = *v15 != 0;
      *&v28[1] = 0uLL;
      *&v28[5] = a2 + 28;
      *&v28[7] = a2 + 52;
      *v15 = 0;
      *(a2 + 52) = 0;
      if (theData)
      {
        BytePtr = CFDataGetBytePtr(theData);
        if (theData)
        {
          Length = CFDataGetLength(theData);
LABEL_41:
          v10 = MIGVariableLengthRefs::Write(buf, BytePtr, Length);
          if (!v10)
          {
            buf[16] = 0;
            MIGVariableLengthRefs::~MIGVariableLengthRefs(buf);
            result = MEMORY[0x193ADE2A0](&theData);
            *(a2 + 40) = *(a2 + 52);
            *(a2 + 44) = *MEMORY[0x1E69E99E0];
            *a2 |= 0x80000000;
            *(a2 + 4) = 56;
            *(a2 + 24) = 1;
            goto LABEL_9;
          }

          MIGVariableLengthRefs::~MIGVariableLengthRefs(buf);
          result = MEMORY[0x193ADE2A0](&theData);
          goto LABEL_43;
        }
      }

      else
      {
        BytePtr = 0;
      }

      Length = 0;
      goto LABEL_41;
    }

LABEL_26:
    if (kInterAppAudioScope)
    {
      v16 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_38:
        result = MEMORY[0x193ADE2A0](&theData);
        v10 = -50;
        goto LABEL_43;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 876;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d error: unknown subscriber pid", buf, 0x12u);
    }

    goto LABEL_38;
  }

  v4 = -309;
LABEL_7:
  *(a2 + 32) = v4;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F8F68F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  MIGVariableLengthRefs::~MIGVariableLengthRefs(va1);
  MEMORY[0x193ADE2A0](va);
  _Unwind_Resume(a1);
}

uint64_t _XSubscribeToAUList(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 68)
  {
    if (*(a1 + 38) << 16 == 1114112 && *(a1 + 51) == 1 && (v3 = *(a1 + 52), v3 == *(a1 + 64)))
    {
      if (*(a1 + 68) || *(a1 + 72) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v5 = *(a1 + 28);
        v6 = *(a1 + 40);
        v7 = *(a1 + 104);
        *v8.val = *(a1 + 88);
        *&v8.val[4] = v7;
        result = IPCAURegServer_SubscribeToAUList(&v8, v5, v6, v3);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XDestroySharedBuffer(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (!*(a1 + 40) && *(a1 + 44) >= 0x20u)
  {
    v6 = *(a1 + 76);
    *v20.val = *(a1 + 60);
    *&v20.val[4] = v6;
    v7 = *(a1 + 32);
    pidp = 0;
    if (!ClientHasInterAppAudioEntitlement(&v20, &pidp))
    {
      v3 = -66748;
      goto LABEL_7;
    }

    v8 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
    v9 = *(v8 + 232);
    v10 = *(v8 + 240);
    if (v9 != v10)
    {
      while (1)
      {
        v11 = *v9;
        if (*(*v9 + 12) == pidp)
        {
          break;
        }

        if (++v9 == v10)
        {
          goto LABEL_12;
        }
      }

      v13 = *(v11 + 200);
      v14 = *(v11 + 208);
      while (v13 != v14)
      {
        if (**v13 == v7)
        {
          v16 = v13 + 1;
          if (v13 + 1 != v14)
          {
            do
            {
              v13 = v16;
              v17 = *(v16 - 1);
              *(v16 - 1) = *v16;
              *v16 = 0;
              if (v17)
              {
                std::default_delete<RegistrarClientProcess::SharedMemoryBlock>::operator()[abi:ne200100](v17);
              }

              v16 = v13 + 1;
            }

            while (v13 + 1 != v14);
            v14 = *(v11 + 208);
          }

          while (v14 != v13)
          {
            v19 = *--v14;
            v18 = v19;
            *v14 = 0;
            if (v19)
            {
              std::default_delete<RegistrarClientProcess::SharedMemoryBlock>::operator()[abi:ne200100](v18);
            }
          }

          v3 = 0;
          *(v11 + 208) = v13;
          goto LABEL_7;
        }

        ++v13;
      }

      if (kInterAppAudioScope)
      {
        v12 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "IPCAURegistrar.mm";
        v24 = 1024;
        v25 = 854;
        v15 = "%25s:%-5d unknown buffer";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

LABEL_12:
    if (kInterAppAudioScope)
    {
      v12 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_39:
        v3 = -50;
        goto LABEL_7;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "IPCAURegistrar.mm";
      v24 = 1024;
      v25 = 844;
      v15 = "%25s:%-5d unknown process";
LABEL_38:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    }

    goto LABEL_39;
  }

  v3 = -309;
LABEL_7:
  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
  v5 = *MEMORY[0x1E69E9840];
}

void _XCreateSharedBuffer(uint64_t a1, _DWORD *a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 68)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) / 0x28u != *(a1 + 52))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(a1 + 68) || *(a1 + 72) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    a2[8] = v4;
    goto LABEL_11;
  }

  *(a2 + 4) = 0x13000000000000;
  v5 = *(a1 + 28);
  v6 = *(a1 + 40) / 0x28uLL;
  v7 = *(a1 + 56);
  v8 = *(a1 + 104);
  *v10.val = *(a1 + 88);
  *&v10.val[4] = v8;
  v9 = IPCAURegServer_CreateSharedBuffer(&v10, v5, v6, v7, *(a1 + 60), a2 + 7);
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  if (!v9)
  {
    *a2 |= 0x80000000;
    a2[1] = 40;
    a2[6] = 1;
    return;
  }

  a2[8] = v9;
LABEL_11:
  *(a2 + 3) = *MEMORY[0x1E69E99E0];
}

uint64_t _XUnpublishAU(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 52)
  {
    result = 4294966992;
  }

  else if (*(a1 + 52) || *(a1 + 56) < 0x20u)
  {
    result = 4294966987;
  }

  else
  {
    v4 = *(a1 + 88);
    *v7.val = *(a1 + 72);
    *&v7.val[4] = v4;
    v6 = *(a1 + 32);
    pidp = 0;
    if (ClientHasInterAppAudioEntitlement(&v7, &pidp))
    {
      v5 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
      result = IPCAURegistrar::UnpublishAU(v5, pidp, &v6);
    }

    else
    {
      result = 4294900548;
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XPublishAU(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 92)
  {
    if (*(a1 + 38) << 16 == 1114112 && *(a1 + 51) == 1 && (v3 = *(a1 + 52), v3 == *(a1 + 84)))
    {
      if (*(a1 + 92) || *(a1 + 96) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v5 = *(a1 + 28);
        v6 = *(a1 + 40);
        v7 = *(a1 + 88);
        v8 = *(a1 + 128);
        *v10.val = *(a1 + 112);
        *&v10.val[4] = v8;
        v9 = *(a1 + 64);
        result = IPCAURegServer_PublishAU(&v10, v5, &v9, v6, v3, v7);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XRegisterExtensionProcess(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 68)
  {
    if (*(a1 + 38) << 16 == 1114112 && *(a1 + 51) == 1 && (v3 = *(a1 + 52), v3 == *(a1 + 64)))
    {
      if (*(a1 + 68) || *(a1 + 72) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v5 = *(a1 + 28);
        v6 = *(a1 + 40);
        v7 = *(a1 + 104);
        v8[0] = *(a1 + 88);
        v8[1] = v7;
        result = IPCAURegServer_RegisterExtensionProcess(v8, v5, v6, v3);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XConnectToServer(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  result = getpid();
  *(a2 + 32) = 0;
  *(a2 + 36) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 4) = 40;
  return result;
}

uint64_t (*IPCAudioUnitRegistration_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 90015) >= 0xFFFFFFF1)
  {
    return IPCAURegServer_IPCAudioUnitRegistration_subsystem[5 * (v1 - 90000) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t IPCAudioUnitRegistration_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 90015) >= 0xFFFFFFF1 && (v5 = IPCAURegServer_IPCAudioUnitRegistration_subsystem[5 * (v4 - 90000) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

void swix::decode_message::throw_error(const std::string *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = a1->__r_.__value_.__r.__words[0];
    }

    v4 = 136315138;
    v5 = v2;
    _os_log_error_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "throwing swix::exception: %s", &v4, 0xCu);
  }

  exception = __cxa_allocate_exception(0x18uLL);
  swix::exception::exception(exception, a1);
}

std::runtime_error *swix::exception::exception(std::runtime_error *a1, const std::string *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F033FDF8;
  LODWORD(result[1].__vftable) = -307;
  return result;
}

void swix::exception::~exception(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x193ADF220);
}

void AudioConverterXPC_Server::~AudioConverterXPC_Server(AudioConverterXPC_Server *this)
{
  swix::ipc_interface::~ipc_interface(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AudioConverterXPC_Client::queryServer(AudioConverterXPC_Client *this)
{
  MEMORY[0x193ADE6A0](v8, 62370768);
  v2 = *(this + 1);
  if (!v2)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v6, v2, v8);
  v3 = swix::decode_message::decode<int>(object, ".error");
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v3 = swix::decode_message::decode<int>(object, "process");
    v4 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(v9);
  return v4 | v3;
}

void sub_18F8F7408(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13[4];
  }

  __cxa_end_catch();
  JUMPOUT(0x18F8F73E4);
}

unint64_t AudioConverterXPC_Client::setUpRenderer(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  MEMORY[0x193ADE6A0](v11, 62370771);
  xpc_dictionary_set_value(xdict, "ipcResources", *a2);
  xpc_dictionary_set_uint64(xdict, "clientRendererPtr", a3);
  v6 = *(a1 + 8);
  if (!v6)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v9, v6, v11);
  v7 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  return ((v7 == 0) << 32) | v7;
}

void sub_18F8F7530(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13[4];
  }

  __cxa_end_catch();
  JUMPOUT(0x18F8F7500);
}

void AudioConverterXPC_Client::instantiateSpecificAndFetchProperties(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  MEMORY[0x193ADE6A0](v29, 62370773);
  xpc_dictionary_set_data(v30, "sourceFormat", a3, 0x28uLL);
  xpc_dictionary_set_data(v30, "destinationFormat", a4, 0x28uLL);
  if (a6)
  {
    xpc_dictionary_set_data(v30, "classDescriptions", a5, 12 * a6);
  }

  v12 = *(a2 + 8);
  if (!v12)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v27, v12, v29);
  v13 = swix::decode_message::decode<int>(xdict, ".error");
  if (v13)
  {
    *a1 = v13;
    *(a1 + 56) = 0;
  }

  else
  {
    v26 = 0;
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    uint64 = xpc_dictionary_get_uint64(xdict, "remoteConverterPtr");
    *&v24[0] = uint64;
    v15 = swix::coder<std::span<unsigned int const,18446744073709551615ul>>::decode(xdict, "maxPacketSize");
    v22 = 0uLL;
    v23 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&v22, v15, v15 + 4 * v16, v16);
    v20 = v22;
    *(v24 + 8) = v22;
    *(&v24[1] + 1) = v23;
    v17 = swix::coder<std::span<unsigned int const,18446744073709551615ul>>::decode(xdict, "maxMetadataSize");
    v22 = 0uLL;
    v23 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&v22, v17, v17 + 4 * v18, v18);
    v19 = v20;
    v21 = v22;
    v25 = v22;
    v26 = v23;
    *a1 = uint64;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 8, v19, *(&v19 + 1), (*(&v19 + 1) - v19) >> 2);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 32, v21, *(&v21 + 1), (*(&v21 + 1) - v21) >> 2);
    *(a1 + 56) = 1;
    if (v21)
    {
      operator delete(v21);
    }

    if (v19)
    {
      operator delete(v19);
    }
  }

  xpc_release(xdict);
  xpc_release(v30);
}

void sub_18F8F77A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  v27 = *v24;
  if (*v24)
  {
    *(v23 + 16) = v27;
    operator delete(v27);
  }

  SampleToRollDistanceTable::~SampleToRollDistanceTable(&a15);
  xpc_release(object);
  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v29 = v28[4];
  }

  else
  {
    v29 = -302;
  }

  *v23 = v29;
  *(v23 + 56) = 0;
  __cxa_end_catch();
  JUMPOUT(0x18F8F777CLL);
}

unint64_t AudioConverterXPC_Client::startMessengerForProperties(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
{
  bytes[0] = a2;
  bytes[1] = a3;
  MEMORY[0x193ADE6A0](v13, 62370776);
  xpc_dictionary_set_data(xdict, "configParams", bytes, 0x10uLL);
  xpc_dictionary_set_value(xdict, "ipcResources", *a4);
  xpc_dictionary_set_uint64(xdict, "propertyClient", a5);
  v8 = *(a1 + 8);
  if (!v8)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v11, v8, v13);
  v9 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  return ((v9 == 0) << 32) | v9;
}

void sub_18F8F7914(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13[4];
  }

  __cxa_end_catch();
  JUMPOUT(0x18F8F78E4);
}

unint64_t AudioConverterXPC_Client::stopMessengerForProperties(AudioConverterXPC_Client *this, uint64_t a2)
{
  MEMORY[0x193ADE6A0](v9, 62370777);
  xpc_dictionary_set_uint64(xdict, "propertyClient", a2);
  v4 = *(this + 1);
  if (!v4)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v7, v4, v9);
  v5 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  return ((v5 == 0) << 32) | v5;
}

void sub_18F8F7A10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13[4];
  }

  __cxa_end_catch();
  JUMPOUT(0x18F8F79E4);
}

void AudioConverterXPC_Client::dispose(AudioConverterXPC_Client *this, uint64_t a2)
{
  MEMORY[0x193ADE6A0](v7, 62370778);
  xpc_dictionary_set_uint64(xdict, "converter", a2);
  v4 = *(this + 1);
  if (!v4)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v5, v4, v7);
  swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
}

void sub_18F8F7AF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F8F7AD0);
}

void AudioConverterXPC_Client::disconnect(AudioConverterXPC_Client *this)
{
  MEMORY[0x193ADE6A0](v5, 62370779);
  v2 = *(this + 1);
  if (!v2)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v3, v2, v5);
  swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(v6);
}

void sub_18F8F7B98(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F8F7B74);
}

void AudioConverterXPC_Client::synchronizeWorkgroups(uint64_t a1, xpc_object_t *a2)
{
  MEMORY[0x193ADE6A0](v7, 62370780);
  xpc_dictionary_set_value(xdict, "workgroups", *a2);
  v4 = *(a1 + 8);
  if (!v4)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v5, v4, v7);
  swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
}

void sub_18F8F7C54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F8F7C30);
}

uint64_t AudioConverterXPC_Client::getPropertyInfo(AudioConverterXPC_Client *this, uint64_t a2, unsigned int a3)
{
  MEMORY[0x193ADE6A0](v12, 62370781);
  xpc_dictionary_set_uint64(xdict, "converter", a2);
  xpc_dictionary_set_uint64(xdict, "propertyID", a3);
  v6 = *(this + 1);
  if (!v6)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v10, v6, v12);
  v7 = swix::decode_message::decode<int>(object, ".error");
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v7 = swix::decode_message::decode<unsigned int>(object, "dataSize");
    if (xpc_dictionary_get_BOOL(object, "outWritable"))
    {
      v8 = 0x100000000;
    }

    else
    {
      v8 = 0;
    }
  }

  xpc_release(object);
  xpc_release(xdict);
  return v8 | v7;
}

void sub_18F8F7D7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13[4];
  }

  __cxa_end_catch();
  JUMPOUT(0x18F8F7D50);
}

void AudioConverterXPC_Client::getProperty(AudioConverterXPC_Client *this, uint64_t a2, uint64_t a3, const swix::data *a4, xpc_object_t *a5, unsigned int a6, BOOL a7)
{
  v10 = a4;
  MEMORY[0x193ADE6A0](v23, 62370782);
  xpc_dictionary_set_uint64(xdict, "converter", a3);
  xpc_dictionary_set_uint64(xdict, "propertyID", v10);
  xpc_dictionary_set_value(xdict, "inData", *a5);
  xpc_dictionary_set_uint64(xdict, "dataSize", a6);
  xpc_dictionary_set_BOOL(xdict, "inputRequiredForProperty", a7);
  v14 = *(a2 + 8);
  if (!v14)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v21, v14, v23);
  v15 = swix::decode_message::decode<int>(object, ".error");
  if (v15)
  {
    *this = v15;
    *(this + 16) = 0;
  }

  else
  {
    v16 = xpc_null_create();
    swix::xpcobj_coder<swix::data>::decode(&v20, object, "outData");
    v17 = v20;
    v18 = xpc_null_create();
    v20 = v18;
    xpc_release(v16);
    xpc_release(v18);
    v19 = swix::decode_message::decode<unsigned int>(object, "dataSize");
    *this = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      *this = xpc_null_create();
    }

    *(this + 2) = v19;
    *(this + 16) = 1;
    xpc_release(v17);
  }

  xpc_release(object);
  xpc_release(xdict);
}

void sub_18F8F7F80(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(v12);
  xpc_release(object);
  v15 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v16 = v15[4];
  }

  else
  {
    v16 = -302;
  }

  *v11 = v16;
  *(v11 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x18F8F7F50);
}

unint64_t AudioConverterXPC_Client::setProperty(AudioConverterXPC_Client *this, uint64_t a2, unsigned int a3, xpc_object_t *a4, unsigned int a5)
{
  MEMORY[0x193ADE6A0](v15, 62370783);
  xpc_dictionary_set_uint64(xdict, "converter", a2);
  xpc_dictionary_set_uint64(xdict, "propertyID", a3);
  xpc_dictionary_set_value(xdict, "inData", *a4);
  xpc_dictionary_set_uint64(xdict, "dataSize", a5);
  v10 = *(this + 1);
  if (!v10)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v13, v10, v15);
  v11 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  return ((v11 == 0) << 32) | v11;
}

void sub_18F8F8110(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13[4];
  }

  __cxa_end_catch();
  JUMPOUT(0x18F8F80DCLL);
}

__n128 IAAFillCodecInfoFromInternalData(uint64_t a1, __n128 result)
{
  v2 = *a1;
  if (*a1 <= 49164)
  {
    if (v2 == 1)
    {
      *(a1 + 8) = 0;
      result.n128_u64[0] = 8000;
      *(a1 + 16) = xmmword_18F901E10;
      *(a1 + 32) = xmmword_18F901E00;
      return result;
    }

    if (v2 == 49164)
    {
      *(a1 + 40) = 16;
      *(a1 + 8) = xmmword_18F901DC0;
      result = xmmword_18F901DD0;
      goto LABEL_11;
    }
  }

  else
  {
    switch(v2)
    {
      case 49165:
        *(a1 + 40) = 16;
        *(a1 + 8) = xmmword_18F901DA0;
        result = xmmword_18F901DB0;
        goto LABEL_11;
      case 49168:
        *(a1 + 40) = 16;
        *(a1 + 8) = xmmword_18F901DE0;
        result = xmmword_18F901DF0;
        goto LABEL_11;
      case 49171:
        *(a1 + 40) = 16;
        *(a1 + 8) = xmmword_18F901D80;
        result = xmmword_18F901D90;
LABEL_11:
        *(a1 + 24) = result;
        return result;
    }
  }

  *(a1 + 8) = 0;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(a1 + 16) = result;
  *(a1 + 32) = result;
  return result;
}

uint64_t IAADecryptAudibleHeader(uint64_t result)
{
  v111[1] = *MEMORY[0x1E69E9840];
  if (!*(result + 288))
  {
    goto LABEL_122;
  }

  v1 = result;
  v2 = v102;
  if (v102 >= &v94 + 7)
  {
    v2 = &v94 + 7;
  }

  bzero((v2 + 1), &v103 + ~v2);
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v3 = *(v1 + 640);
  result = IAAFindSection(v3, 2, &v94);
  if (result)
  {
    goto LABEL_122;
  }

  v111[0] = 0;
  result = IAAReadULong(v3, v111);
  v91 = v111[0];
  if (v111[0] <= 0)
  {
    goto LABEL_67;
  }

  v4 = 0;
  v5 = 0;
  v90 = v1;
  do
  {
    result = OAAFileRead(v3, &v92, 1, &v93);
    if (v92)
    {
      break;
    }

    v6 = v93 + v5;
    v111[0] = 0;
    v7 = IAAReadULong(v3, v111);
    v8 = v111[0];
    v9 = v6 + v7;
    v111[0] = 0;
    v10 = IAAReadULong(v3, v111);
    v11 = v111[0];
    v12 = v9 + v10;
    v111[0] = 0;
    if (v8 >= 0x13)
    {
      v13 = 19;
    }

    else
    {
      v13 = v8;
    }

    result = OAAFileRead(v3, &v103, v13, v111);
    v14 = v111[0];
    *(&v103 + v111[0]) = 0;
    v93 = v14;
    v5 = v12 + v14;
    v15 = v103;
    if (v103)
    {
      v16 = 0;
      v17 = v103;
      while (v16 != 9 && v17 == aHeaderkey[v16])
      {
        v18 = v16 + 1;
        v17 = *(&v103 + ++v16);
        if (!v17)
        {
          v19 = &aHeaderkey[v18];
          goto LABEL_18;
        }
      }
    }

    else
    {
      v19 = "HeaderKey";
LABEL_18:
      if (!*v19)
      {
        v111[0] = 0;
        if (v11 >= 0x3F)
        {
          v31 = 63;
        }

        else
        {
          v31 = v11;
        }

        result = OAAFileRead(v3, &v95, v31, v111);
        v96[v111[0] - 1] = 0;
        goto LABEL_65;
      }
    }

    if (v103)
    {
      v20 = 0;
      v21 = v103;
      while (v20 != 10 && v21 == aHeaderseed[v20])
      {
        v22 = v20 + 1;
        v21 = *(&v103 + ++v20);
        if (!v21)
        {
          v23 = &aHeaderseed[v22];
          goto LABEL_26;
        }
      }
    }

    else
    {
      v23 = "HeaderSeed";
LABEL_26:
      if (!*v23)
      {
        v111[0] = 0;
        if (v11 >= 0xF)
        {
          v33 = 15;
        }

        else
        {
          v33 = v11;
        }

        v34 = v3;
        v35 = &v97;
        goto LABEL_64;
      }
    }

    if (v103)
    {
      v24 = 0;
      v25 = v103;
      while (v24 != 15 && v25 == aEncryptedblock[v24])
      {
        v26 = v24 + 1;
        v25 = *(&v103 + ++v24);
        if (!v25)
        {
          v27 = &aEncryptedblock[v26];
          goto LABEL_34;
        }
      }

LABEL_35:
      if (v103)
      {
        v28 = 0;
        while (v28 != 7 && v15 == aCputype[v28])
        {
          v29 = v28 + 1;
          v15 = *(&v103 + ++v28);
          if (!v15)
          {
            v30 = &aCputype[v29];
            goto LABEL_46;
          }
        }

LABEL_47:
        if (v5 >= v94)
        {
          break;
        }

        if (v3)
        {
          v32 = *v3;
        }

        else
        {
          v32 = -5;
        }

        result = OAAFileSetCurrentPos(v3, v32 + v11);
        goto LABEL_65;
      }

      v30 = "CPUType";
LABEL_46:
      if (*v30)
      {
        goto LABEL_47;
      }

      v111[0] = 0;
      if (v11 >= 0xF)
      {
        v33 = 15;
      }

      else
      {
        v33 = v11;
      }

      v34 = v3;
      v35 = &v101;
      goto LABEL_64;
    }

    v27 = "EncryptedBlocks";
LABEL_34:
    if (*v27)
    {
      goto LABEL_35;
    }

    v111[0] = 0;
    if (v11 >= 0xF)
    {
      v33 = 15;
    }

    else
    {
      v33 = v11;
    }

    v34 = v3;
    v35 = &v99;
LABEL_64:
    result = OAAFileRead(v34, v35, v33, v111);
    v35[v111[0]] = 0;
LABEL_65:
    ++v4;
  }

  while (v4 != v91);
  v1 = v90;
LABEL_67:
  v36 = v99;
  if (v99 - 58 >= 0xFFFFFFF6)
  {
    v37 = 0;
    v38 = v100;
    do
    {
      v37 = 10 * v37 + v36 - 48;
      v39 = *v38++;
      v36 = v39;
    }

    while ((v39 - 58) > 0xFFFFFFF5);
  }

  else
  {
    v37 = 0;
  }

  v40 = v97;
  if (v97 - 58 >= 0xFFFFFFF6)
  {
    v41 = 0;
    v42 = v98;
    do
    {
      v41 = 10 * v41 + v40 - 48;
      v43 = *v42++;
      v40 = v43;
    }

    while (v43 - 58 > 0xFFFFFFF5);
  }

  else
  {
    v41 = 0;
  }

  v44 = v95;
  if (v95 - 58 >= 0xFFFFFFF6)
  {
    v45 = 0;
    v46 = v96;
    do
    {
      v45 = 10 * v45 + v44 - 48;
      v47 = *v46++;
      v44 = v47;
    }

    while (v47 - 58 > 0xFFFFFFF5);
  }

  else
  {
    v45 = 0;
  }

  *(v1 + 568) = v45;
  v48 = &v95;
  do
  {
    v49 = *v48++;
  }

  while (v49 != 32);
  v50 = *v48;
  if (v50 - 58 >= 0xFFFFFFF6)
  {
    v51 = 0;
    v52 = 1;
    do
    {
      v51 = 10 * v51 + v50 - 48;
      v50 = v48[v52++];
    }

    while (v50 - 58 > 0xFFFFFFF5);
  }

  else
  {
    v51 = 0;
  }

  *(v1 + 576) = v51;
  do
  {
    v53 = *v48++;
  }

  while (v53 != 32);
  v54 = *v48;
  if (v54 - 58 >= 0xFFFFFFF6)
  {
    v56 = 0;
    v55 = 0;
    do
    {
      v55 = 10 * v55 + v54 - 48;
      v54 = v48[++v56];
    }

    while (v54 - 58 > 0xFFFFFFF5);
  }

  else
  {
    v55 = 0;
  }

  *(v1 + 584) = v55;
  do
  {
    v57 = *v48++;
  }

  while (v57 != 32);
  v60 = *v48;
  v58 = v48 + 1;
  v59 = v60;
  if (v60 - 58 >= 0xFFFFFFF6)
  {
    v61 = 0;
    do
    {
      v61 = 10 * v61 + v59 - 48;
      v62 = *v58++;
      v59 = v62;
    }

    while (v62 - 58 > 0xFFFFFFF5);
  }

  else
  {
    v61 = 0;
  }

  *(v1 + 592) = v61;
  v63 = *(v1 + 360);
  LOBYTE(v103) = HIBYTE(v63);
  HIBYTE(v103) = v63;
  LOBYTE(v104) = BYTE3(v45);
  BYTE1(v104) = BYTE2(v45);
  BYTE2(v104) = BYTE1(v45);
  HIBYTE(v104) = v45;
  LOBYTE(v105) = BYTE3(v51);
  BYTE1(v105) = BYTE2(v51);
  BYTE2(v105) = BYTE1(v51);
  HIBYTE(v105) = v51;
  LOBYTE(v106) = BYTE3(v55);
  BYTE1(v106) = BYTE2(v55);
  BYTE2(v106) = BYTE1(v55);
  HIBYTE(v106) = v55;
  LOBYTE(v107) = BYTE3(v61);
  BYTE1(v107) = BYTE2(v61);
  BYTE2(v107) = BYTE1(v61);
  HIBYTE(v107) = v61;
  v108 = HIBYTE(v37);
  v109 = v37;
  v64 = *(v1 + 384);
  if (v64 < 1)
  {
    LODWORD(v69) = 20;
  }

  else
  {
    v65 = 0;
    v66 = (v1 + 392);
    do
    {
      v67 = v65;
      v68 = *v66;
      v66 += 2;
      *&v110[v65] = bswap32(v68);
      v65 += 4;
    }

    while (4 * v64 != v65);
    LODWORD(v69) = v67 + 24;
  }

  v70 = *(v1 + 456);
  if (v70 >= 1)
  {
    v71 = (v1 + 464);
    v72 = *(v1 + 456);
    v69 = v69;
    do
    {
      v73 = *v71;
      v71 += 2;
      *(&v103 + v69) = bswap32(v73);
      v69 += 4;
      --v72;
    }

    while (v72);
  }

  if (v69 >= 1)
  {
    v74 = 0;
    LODWORD(v75) = 0;
    result = 1375749629;
    do
    {
      LODWORD(v76) = v41 + 1;
      v77 = 10;
      v78 = 2654435769;
      v79 = v41;
      do
      {
        v80 = ((16 * v76 + 1998671179) ^ (v78 + v76) ^ ((v76 >> 5) + 426411981)) + v79;
        v79 = v80;
        v76 = ((16 * v80 + 1375749629) ^ (v78 + v80) ^ ((v80 >> 5) + 710006387)) + v76;
        v78 += 2654435769;
        --v77;
      }

      while (v77 > 2);
      LOBYTE(v111[0]) = BYTE3(v80);
      BYTE1(v111[0]) = BYTE2(v80);
      BYTE2(v111[0]) = BYTE1(v80);
      BYTE3(v111[0]) = v80;
      BYTE4(v111[0]) = BYTE3(v76);
      BYTE5(v111[0]) = BYTE2(v76);
      BYTE6(v111[0]) = BYTE1(v76);
      HIBYTE(v111[0]) = v76;
      if (v75 < v69)
      {
        v81 = 0;
        v75 = v75;
        do
        {
          *(&v103 + v75++) ^= *(v111 + v81);
          if (v81 > 6)
          {
            break;
          }

          ++v81;
        }

        while (v75 < v69);
      }

      v41 += 2;
      v74 += 8;
    }

    while (v74 < (v69 & 0x7FFFFFF8) + 8);
  }

  *(v1 + 360) = bswap32(v103) >> 16;
  *(v1 + 568) = bswap32(v104);
  *(v1 + 576) = bswap32(v105);
  *(v1 + 584) = bswap32(v106);
  *(v1 + 592) = bswap32(v107);
  if (v64 < 1)
  {
    v86 = 20;
  }

  else
  {
    v82 = 0;
    v83 = (v1 + 392);
    v84 = 4 * v64;
    do
    {
      v85 = v82;
      *v83++ = bswap32(*&v110[v82]);
      v82 += 4;
    }

    while (v84 != v82);
    v86 = (v85 + 24) & 0xFFFFFFFCLL;
  }

  if (v70 >= 1)
  {
    v87 = (v1 + 464);
    v88 = &v103 + v86 + 3;
    do
    {
      *v87++ = bswap32(*(v88 - 3));
      v88 += 4;
      --v70;
    }

    while (v70);
  }

LABEL_122:
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AAReadEncodedAudio(uint64_t a1, _BYTE *a2, void *a3)
{
  v3 = a3;
  v94 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a1 + 600);
  if (v7 != -1)
  {
    AASetAudioBytePos(a1, ((v7 / 0x3E8 * *(a1 + 684)) >> 3) + v7 % 0x3E8 * *(a1 + 684) / 0x1F40);
    *(a1 + 600) = -1;
  }

  v8 = *(a1 + 624);
  v9 = *(a1 + 616);
  if (v8 != v9 - 1 || *(a1 + 632) != *(*(a1 + 608) + 16 * v8 + 8))
  {
    v10 = 0;
    if (v6)
    {
      v12 = v8 >= v9;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
LABEL_11:
      result = 0;
      *(a1 + 672) += v10;
      goto LABEL_113;
    }

    v90 = (a1 + 688);
    v83 = v3;
    while (1)
    {
      v13 = *(a1 + 544);
      switch(v13)
      {
        case 49168:
          v14 = 1045;
          break;
        case 49165:
          v14 = 3982;
          break;
        case 49164:
          v14 = 2000;
          break;
        default:
          result = 4294967285;
          goto LABEL_113;
      }

      v15 = *(a1 + 632);
      v16 = v15 / v14;
      v17 = *(*(a1 + 608) + 16 * v8 + 8);
      v18 = (v17 - 1) / v14;
      if (v15 / v14 <= v18)
      {
        break;
      }

      v19 = 0;
LABEL_101:
      v77 = v9 - 1;
      if (v15 == v17 && v8 < v77)
      {
        *(a1 + 624) = v8 + 1;
        *(a1 + 632) = 0;
        v78 = *(a1 + 640);
        if (v78)
        {
          v79 = *v78 + 8;
        }

        else
        {
          v79 = 3;
        }

        OAAFileSetCurrentPos(v78, v79);
        v8 = *(a1 + 624);
        v9 = *(a1 + 616);
        v77 = v9 - 1;
      }

      v10 += v19;
      if ((v8 != v77 || *(a1 + 632) != *(*(a1 + 608) + 16 * v77 + 8)) && v8 < v9)
      {
        a2 += v19;
        v6 -= v19;
        if (v6)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v84 = v10;
    v20 = 0;
    v81 = v6;
    v82 = a2;
    v21 = a2;
    v22 = v14;
    v92 = (v17 - 1) / v14;
    while (1)
    {
      if (v16 == v18)
      {
        if (*(*(a1 + 608) + 16 * *(a1 + 624) + 8) % v14)
        {
          v22 = *(*(a1 + 608) + 16 * *(a1 + 624) + 8) % v14;
        }

        else
        {
          v22 = v14;
        }
      }

      v23 = v15 % v14;
      v24 = v22 - v15 % v14 >= v6 ? v6 : v22 - v15 % v14;
      v25 = *(a1 + 696);
      v26 = *(a1 + 704);
      v27 = v25 - v26;
      v28 = v25 - v26 >= v24 ? v24 : v25 - v26;
      if (v28)
      {
        if ((v26 >> 3) >= 1)
        {
          v29 = v26 & 0x3FFFFFFF8;
          v26 &= 0xFFFFFFFC00000007;
          *(a1 + 704) = v26;
          v30 = v25 - v29;
          *(a1 + 696) = v30;
          v27 = v30 - v26;
        }

        if (v27 >= v28)
        {
          v28 = v28;
        }

        else
        {
          v28 = v27;
        }

        v31 = v26 & 7;
        v32 = 8 - v31;
        if (v28 >= v32)
        {
          v33 = 8 - v31;
        }

        else
        {
          v33 = v28;
        }

        if (v28)
        {
          v34 = &v90[v31];
          v35 = v33;
          v36 = v21;
          do
          {
            v37 = *v34++;
            *v36++ = v37;
            --v35;
          }

          while (v35);
        }

        if (v28 > v32)
        {
          v38 = v28 - v33;
          if ((v28 - v33) >= 1)
          {
            v39 = &v21[v33];
            v40 = v90;
            do
            {
              v41 = *v40++;
              *v39++ = v41;
              --v38;
            }

            while (v38);
          }
        }

        *(a1 + 704) += v28;
        v42 = &v21[v28];
        v23 += v28;
        v43 = v24 - v28;
        if (v24 == v28)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v43 = v24;
        v42 = v21;
        if (!v24)
        {
          goto LABEL_68;
        }
      }

      v44 = v22 & 7;
      v45 = v22 - v23;
      if (v22 - v23 <= v44)
      {
        break;
      }

      v91 = v20;
      v46 = v23 & 7;
      v89 = v22 & 7;
      if ((v23 & 7) != 0)
      {
        v47 = *(a1 + 640);
        v48 = v22;
        if (v47)
        {
          v49 = *v47;
        }

        else
        {
          v49 = -5;
        }

        v88 = v49;
        if (OAAFileSetCurrentPos(v47, v49 - v46))
        {
LABEL_112:
          result = 4294967293;
          v3 = v83;
          v10 = v84;
          goto LABEL_113;
        }

        if (OAAFileRead(*(a1 + 640), v93, 8, 0))
        {
          v51 = 0;
          goto LABEL_66;
        }

        IAADecrypt64Bits((a1 + 568), v93, v93);
        v52 = 8 - v46;
        if (v43 < 8 - v46)
        {
          v52 = v43;
        }

        v53 = v23 & 7;
        v54 = v52;
        v55 = v42;
        do
        {
          *v55++ = *(v93 + v53++);
          --v54;
        }

        while (v54);
        v43 -= v52;
        if (!v43 && v52 + v46 <= 7)
        {
          v51 = OAAFileSetCurrentPos(*(a1 + 640), v88 + v52) == 0;
LABEL_66:
          v20 = v91;
          v18 = v92;
LABEL_67:
          v22 = v48;
          if (!v51)
          {
            goto LABEL_112;
          }

          goto LABEL_68;
        }

        v23 += v52;
        v42 += v52;
        v22 = v48;
        v45 = v48 - v23;
        v44 = v89;
      }

      if (v43 >= v45)
      {
        v56 = v45;
      }

      else
      {
        v56 = v43;
      }

      v57 = v56 & 0xFFFFFFF8;
      v20 = v91;
      if ((v56 & 0xFFFFFFF8) != 0)
      {
        v86 = v56 & 0xFFFFFFF8;
        v87 = v22;
        if (OAAFileRead(*(a1 + 640), v42, v56 & 0xFFFFFFF8, 0))
        {
          goto LABEL_112;
        }

        v85 = v56 & 0xFFFFFFF8;
        v88 = v56;
        if (v56 >= 8uLL)
        {
          v58 = v88 >> 3;
          v59 = v42;
          do
          {
            IAADecrypt64Bits((a1 + 568), v59, v59);
            v59 += 2;
            --v58;
          }

          while (v58);
        }

        v42 += v85;
        v43 -= v85;
        v23 += v85;
        v20 = v91;
        v22 = v87;
        LODWORD(v56) = v88;
        v44 = v89;
        v57 = v86;
      }

      v18 = v92;
      if (v57 != v56)
      {
        v60 = v22;
        if (v22 - v23 <= v44)
        {
          v76 = OAAFileRead(*(a1 + 640), v42, v43, 0);
          v18 = v92;
          v22 = v60;
          if (v76)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (OAAFileRead(*(a1 + 640), v93, 8, 0))
          {
            goto LABEL_112;
          }

          IAADecrypt64Bits((a1 + 568), v93, v93);
          if (v43 >= 1)
          {
            v61 = v93;
            v62 = v43;
            do
            {
              v63 = *v61;
              v61 = (v61 + 1);
              *v42++ = v63;
              --v62;
            }

            while (v62);
          }

          v64 = 8 - v43;
          v65 = *(a1 + 696);
          if (*(a1 + 704) - v65 + 8 < (8 - v43))
          {
            v64 = *(a1 + 704) - v65 + 8;
          }

          v66 = *(a1 + 696) & 7;
          v67 = 8 - v66;
          if (v64 < 8 - v66)
          {
            v67 = v64;
          }

          v18 = v92;
          v22 = v60;
          if (v64)
          {
            v68 = &v90[v66];
            v69 = v67;
            v70 = v93 + v43;
            do
            {
              v71 = *v70++;
              *v68++ = v71;
              --v69;
            }

            while (v69);
          }

          v72 = v64 - v67;
          if ((v64 - v67) >= 1)
          {
            v73 = v93 + v43 + v67;
            v74 = v90;
            do
            {
              v75 = *v73++;
              *v74++ = v75;
              --v72;
            }

            while (v72);
          }

          *(a1 + 696) += v64;
        }
      }

LABEL_68:
      v15 = *(a1 + 632) + v24;
      *(a1 + 632) = v15;
      v20 += v24;
      if (v16 < v18)
      {
        v21 += v24;
        ++v16;
        v14 = v22;
        v6 -= v24;
        if (v6)
        {
          continue;
        }
      }

      v19 = v20;
      v8 = *(a1 + 624);
      v9 = *(a1 + 616);
      v17 = *(*(a1 + 608) + 16 * v8 + 8);
      v3 = v83;
      v10 = v84;
      v6 = v81;
      a2 = v82;
      goto LABEL_101;
    }

    v48 = v22;
    v50 = OAAFileRead(*(a1 + 640), v42, v43, 0);
    v18 = v92;
    v51 = v50 == 0;
    goto LABEL_67;
  }

  v10 = 0;
  *(a1 + 664) = 1;
  result = 4294967272;
LABEL_113:
  *v3 = v10;
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IAAReadTableOfContent(void *a1, unsigned __int16 *a2)
{
  result = IAAFindSection(a1, 6, &v18);
  if (result)
  {
    return result;
  }

  v17 = 0;
  IAAReadULong(a1, &v17);
  v5 = v17;
  *a2 = v17;
  if (v5 - 1001 < 0xFFFFFC18)
  {
    return 4294967289;
  }

  v6 = malloc_type_calloc(v5, 0x18uLL, 0x1020040BD89E8BFuLL);
  *(a2 + 1) = v6;
  if (!v6)
  {
    return 4294967286;
  }

  if (!*a2)
  {
    v9 = 0;
LABEL_17:
    v13 = malloc_type_calloc(v9, 0x10uLL, 0x1000040451B5BE8uLL);
    if (v13)
    {
      v14 = *a2;
      if (!*a2)
      {
        return 0;
      }

      v15 = v13;
      v16 = (*(a2 + 1) + 16);
      result = 0;
      do
      {
        *v16 = v15;
        v15 += 16 * *(v16 - 8);
        v16 += 3;
        --v14;
      }

      while (v14);
      return result;
    }

    return 4294967286;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v19 = 0;
    IAAReadULong(a1, &v19);
    *(*(a2 + 1) + v7) = v19;
    IAAReadULong(a1, &v19);
    IAAReadULong(a1, &v19);
    IAAReadULong(a1, (*(a2 + 1) + v7 + 8));
    IAAReadULong(a1, &v19);
    IAAReadUShort(a1, a2 + 8);
    v19 = 0;
    IAAReadULong(a1, &v19);
    v10 = *(*(a2 + 1) + v7);
    if (v10 < 0)
    {
      return 4294967291;
    }

    v11 = __CFADD__(v9, v10);
    v9 += v10;
    if (v11)
    {
      return 4294967291;
    }

    v12 = a1 ? *a1 : -5;
    if (OAAFileSetCurrentPos(a1, v12 + 8 * v19))
    {
      return 4294967291;
    }

    ++v8;
    v7 += 24;
    if (v8 >= *a2)
    {
      goto LABEL_17;
    }
  }
}

uint64_t IAAFindSection(uint64_t a1, uint64_t a2, void *a3)
{
  OAAFileSetCurrentPos(a1, 8);
  v10 = 0;
  IAAReadULong(a1, &v10);
  v6 = v10;
  IAAReadULong(a1, &v10);
  if (v6 < 1)
  {
    return 4294967272;
  }

  while (1)
  {
    v10 = 0;
    IAAReadULong(a1, &v10);
    v7 = v10;
    v10 = 0;
    IAAReadULong(a1, &v10);
    v8 = v10;
    IAAReadULong(a1, a3);
    if (v7 == a2)
    {
      break;
    }

    if (!--v6)
    {
      return 4294967272;
    }
  }

  OAAFileSetCurrentPos(a1, v8);
  return 0;
}

uint64_t IAAReadULong(uint64_t a1, void *a2)
{
  if (OAAFileRead(a1, &v4, 4, 0))
  {
    return 0;
  }

  *a2 = bswap32(v4);
  return 1;
}

uint64_t IAAReadUShort(uint64_t a1, _WORD *a2)
{
  result = OAAFileRead(a1, &v4, 2, 0);
  if (!result)
  {
    *a2 = bswap32(v4) >> 16;
  }

  return result;
}

uint64_t OAAFileRead(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 4294967293;
  if (a1 && a2)
  {
    v10 = 0;
    (*(**(a1 + 8) + 48))(*(a1 + 8), 0, *a1, a3, a2, &v10);
    v8 = v10;
    *a1 += v10;
    if (a4)
    {
      *a4 = v8;
    }

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = a3 == 0;
    }

    if (v9)
    {
      return 0;
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t OAAFileSetCurrentPos(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967291;
  }

  v6 = 0;
  if ((*(**(a1 + 8) + 16))(*(a1 + 8), &v6))
  {
    v4 = 0;
  }

  else
  {
    v4 = v6 > a2;
  }

  if (!v4)
  {
    return 4294967291;
  }

  result = 0;
  *a1 = a2;
  return result;
}

uint64_t AAValidateFile(uint64_t a1)
{
  v2 = -5;
  if (a1)
  {
    LODWORD(v6) = 0;
    if (!(*(**(a1 + 8) + 16))(*(a1 + 8), &v6))
    {
      v2 = v6;
    }
  }

  v6 = 0;
  IAAReadULong(a1, &v6);
  v3 = v6;
  v6 = 0;
  IAAReadULong(a1, &v6);
  if (v6 == 1469084982)
  {
    v4 = 0;
  }

  else
  {
    v4 = -6;
  }

  if (v2 == v3)
  {
    return v4;
  }

  else
  {
    return 4294967287;
  }
}

double AAGetMetaCodec(uint64_t a1, void *a2)
{
  v4 = IAAFindSection(a1, 6, &v9);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    IAAReadULong(a1, &v9);
    IAAReadULong(a1, &v9);
    IAAReadULong(a1, &v9);
    IAAReadULong(a1, &v9);
    IAAReadULong(a1, &v9);
    IAAReadULong(a1, &v9);
    v7 = OAAFileRead(a1, &v10, 2, 0);
    v6 = __rev16(v10);
    if (v7)
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  *&result = IAAFillCodecInfoFromInternalData(a2, v5).n128_u64[0];
  return result;
}

uint64_t IAAReadAudioOffsets(uint64_t *a1, unsigned __int16 *a2)
{
  v28 = 0;
  result = IAAFindSection(a1, 10, &v28);
  if (result)
  {
    return result;
  }

  v5 = *(a2 + 1);
  v6 = *v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      IAAReadULong(a1, (*(v5 + 2) + v7 + 8));
      IAAReadULong(a1, (*(*(a2 + 1) + 16) + v7));
      if (a1)
      {
        v9 = *a1;
      }

      else
      {
        v9 = -5;
      }

      v10 = *(*(a2 + 1) + 16);
      if (v9 != *(v10 + v7))
      {
        return 4294967289;
      }

      OAAFileSetCurrentPos(a1, *(v10 + v7 + 8) + v9);
      ++v8;
      v5 = *(a2 + 1);
      v7 += 16;
    }

    while (v8 < *v5);
    LOWORD(v6) = *v5;
  }

  v11 = *a2;
  if (v11 < 2)
  {
    return 0;
  }

  v12 = *(v5 + 1) + **(v5 + 2) + 8 * v6;
  v13 = 1;
  while (1)
  {
    v14 = &v5[12 * v13];
    v15 = *(v14 + 2);
    *v15 = v12;
    if (*v14 != 1)
    {
      break;
    }

    v16 = *(v14 + 1);
    v15[1] = v16;
    v17 = 8;
LABEL_24:
    result = 0;
    v12 += v16 + v17;
    if (++v13 >= v11)
    {
      return result;
    }
  }

  OAAFileSetCurrentPos(a1, v12 - 8);
  v5 = *(a2 + 1);
  v18 = &v5[12 * v13];
  LODWORD(v19) = *v18;
  if (v19 < 2)
  {
    v22 = 0;
    v21 = 0;
LABEL_23:
    v26 = (*(v18 + 2) + 16 * v22);
    v27 = *(v18 + 1) - v21;
    *v26 = *(v26 - 2) + *(v26 - 1) + 8;
    v26[1] = v27;
    v11 = *a2;
    v16 = *&v5[12 * v13 + 4];
    v17 = 8 * v19;
    goto LABEL_24;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  while (1)
  {
    IAAReadULong(a1, (*&v5[12 * v13 + 8] + v20 + 8));
    IAAReadULong(a1, (*(*(a2 + 1) + 24 * v13 + 16) + v20));
    v23 = a1 ? *a1 : -5;
    v24 = *(*(a2 + 1) + 24 * v13 + 16);
    if (v23 != *(v24 + v20))
    {
      return 4294967289;
    }

    v25 = *(v24 + v20 + 8);
    v21 += v25;
    OAAFileSetCurrentPos(a1, v25 + v23);
    ++v22;
    v5 = *(a2 + 1);
    v18 = &v5[12 * v13];
    v19 = *v18;
    v20 += 16;
    if (v22 >= v19 - 1)
    {
      goto LABEL_23;
    }
  }
}

unint64_t IAADecrypt64Bits(uint64_t *a1, unsigned int *a2, _BYTE *a3)
{
  v3 = bswap32(*a2);
  v4 = bswap32(a2[1]);
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a1;
  v8 = a1[1];
  v9 = 10;
  v10 = 4055616968;
  do
  {
    v11 = v4 - ((v5 + 16 * v3) ^ (v3 + v10) ^ (v6 + (v3 >> 5)));
    v4 = v11;
    result = v3 - ((v7 + 16 * v11) ^ (v10 + v11) ^ (v8 + (v11 >> 5)));
    v3 = result;
    v10 += 1640531527;
    --v9;
  }

  while (v9 > 2);
  *a3 = BYTE3(result);
  a3[1] = BYTE2(result);
  a3[2] = BYTE1(result);
  a3[3] = result;
  a3[4] = BYTE3(v11);
  a3[5] = BYTE2(v11);
  a3[6] = BYTE1(v11);
  a3[7] = v11;
  return result;
}

uint64_t AASetAudioBytePos(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 616);
  if (!v2)
  {
    return 4294967276;
  }

  v4 = *(a1 + 608);
  if (!v4)
  {
    return 4294967276;
  }

  v6 = 0;
  v7 = v2 - 1;
  v8 = 1;
  v9 = a2;
  while (1)
  {
    v10 = *(v4 + 16 * v6 + 8);
    if (v7 == v6 || v9 < v10)
    {
      break;
    }

    v6 = v8;
    v11 = v2 > v8++;
    v9 -= v10;
    if (!v11)
    {
      return 4294967275;
    }
  }

  if (v7 == v6)
  {
    v13 = *(v4 + 16 * v6 + 8);
  }

  else
  {
    v13 = v9;
  }

  if (v9 < v10)
  {
    v13 = v9;
  }

  *(a1 + 632) = v13;
  if (*(a1 + 648))
  {
    v14 = v13 / *(a1 + 682) * *(a1 + 682);
    v15 = v13 % *(a1 + 682);
    *(a1 + 632) = v14;
    v13 = v14;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 624) = v6;
  OAAFileSetCurrentPos(*(a1 + 640), v13 + *(v4 + 16 * v6));
  *(a1 + 696) = 0u;
  result = 0;
  if (*(a1 + 600) != -1)
  {
    *(a1 + 600) = 1000 * (8 * (a2 - v15) % *(a1 + 684)) / *(a1 + 684) + 1000 * (8 * (a2 - v15) / *(a1 + 684));
  }

  return result;
}

_DWORD *IAACodecCreate(int a1)
{
  if ((a1 - 49164) > 4 || ((1 << (a1 - 12)) & 0x13) == 0)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0xE14uLL, 0x1000040F3B0BCA0uLL);
  if (!result)
  {
    return result;
  }

  if (a1 == 49168)
  {
    v4 = 3;
  }

  else
  {
    v4 = 49165;
    if (a1 != 49165)
    {
      if (a1 != 49164)
      {
        return result;
      }

      v4 = 4;
    }
  }

  *result = v4;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t CAAudioChannelLayout::operator=()
{
  return MEMORY[0x1EEE61A40]();
}

{
  return MEMORY[0x1EEE61A48]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x1EEE63B50](this);
}

{
  MEMORY[0x1EEE63B58](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63EF0]();
}

{
  return MEMORY[0x1EEE63EF8]();
}

{
  return MEMORY[0x1EEE63F00]();
}

{
  return MEMORY[0x1EEE63F08]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x1EEE644C8](retstr, __val);
}

{
  return MEMORY[0x1EEE644D8](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

uint64_t operator<<()
{
  return MEMORY[0x1EEE61CA8]();
}

{
  return MEMORY[0x1EEE61CB0]();
}

{
  return MEMORY[0x1EEE61CB8]();
}

{
  return MEMORY[0x1EEE61CC0]();
}

{
  return MEMORY[0x1EEE61CC8]();
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t operator>>()
{
  return MEMORY[0x1EEE61CD8]();
}

{
  return MEMORY[0x1EEE61CE0]();
}

{
  return MEMORY[0x1EEE61CE8]();
}

{
  return MEMORY[0x1EEE61CF0]();
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}
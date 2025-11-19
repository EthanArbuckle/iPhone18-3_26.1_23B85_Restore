void TTextEncapsulationRun::DrawGlyphsAtPositions(__n128 *a1, CGContextRef c, CFIndex a3, CFIndex a4, const CGPoint *a5, uint64_t a6)
{
  if (a4 >= 1)
  {
    v27 = v9;
    v28 = v8;
    v29 = v6;
    v30 = v7;
    if (a1[24].n128_u8[5] == 1)
    {
      TextPosition = CGContextGetTextPosition(c);
      v26.width = NAN;
      v26.height = NAN;
      TRun::GetPositions(a1, &v26);
      v17 = TextPosition.x + v26.width;
      v18 = TextPosition.y + v26.height;
      CGContextSaveGState(c);
      CGAffineTransformMakeTranslation(&transform, v17, v18);
      CGContextConcatCTM(c, &transform);
      transform.a = -3.72066208e-103;
      *&transform.a = atomic_load_explicit(&a1[23].n128_i64[1], memory_order_acquire);
      if (!atomic_load_explicit(&transform, memory_order_acquire))
      {
        TTextEncapsulationRun::CopyPlatterPath(&v24, a1);

        v20 = atomic_load_explicit(&transform, memory_order_acquire);
        v21 = 0;
        atomic_compare_exchange_strong(&a1[23].n128_i64[1], &v21, v20);
        if (!v21)
        {
          v20 = 0;
        }
      }

      if (atomic_load_explicit(&transform, memory_order_acquire))
      {
        explicit = *(a1[21].n128_u64[0] + 24);
        if (!explicit)
        {
          explicit = atomic_load_explicit(&a1[4].n128_i64[1], memory_order_acquire);
        }

        TAttributes::SetFillColor(c, explicit, v19);
        CGContextAddPath(c, atomic_load_explicit(&transform, memory_order_acquire));
        CGContextFillPath(c);
      }

      CGContextRestoreGState(c);
    }

    CGContextSaveGState(c);
    CGContextSetShouldSubpixelQuantizeFonts(c, 0);
    v23 = a1[24].n128_u32[0];
    if (v23)
    {
      CGContextSetBlendMode(c, v23);
    }

    v31.location = a3;
    v31.length = a4;
    TRun::DrawGlyphsAtPositionsInternal(a1, c, v31, a5, *a6 & 1, *(a6 + 8), 1);
    CGContextRestoreGState(c);
  }
}

void TTextEncapsulationRun::CopyEncapsulationPath(__n128 *this@<X0>, uint64_t *a2@<X8>)
{
  if (this[24].n128_u8[5])
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    TTextEncapsulationRun::CopyPlatterPath(&v8, this);
    if (atomic_load_explicit(&v8, memory_order_acquire))
    {
      v7.width = NAN;
      v7.height = NAN;
      TRun::GetPositions(this, &v7);
      *&v4 = -1;
      *(&v4 + 1) = -1;
      *&v6.c = v4;
      *&v6.tx = v4;
      *&v6.a = v4;
      CGAffineTransformMakeTranslation(&v6, v7.width, v7.height);
      v5 = MEMORY[0x1865F1B30](atomic_load_explicit(&v8, memory_order_acquire), &v6);
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t TTextEncapsulationRun::GetLeftWhitespaceGlyphCountAndWidth(TTextEncapsulationRun *this)
{
  if (*(this + 389) == 1)
  {
    return TRun::GetLeftWhitespaceGlyphCountAndWidth(this);
  }

  else
  {
    return 0;
  }
}

double TTextEncapsulationRun::UpdateWidth(atomic_ullong *this, TLine *a2, uint64_t a3, double a4)
{
  atomic_load_explicit(this + 7, memory_order_acquire);
  v6 = this[40];
  if (!v6 || ((v7 = *v6, v8 = v6[1] + *v6, v7 <= a3) ? (v9 = v8 <= a3) : (v9 = 1), v9 && ((v10 = this[41], this[40] = 0, this[41] = 0, !v10) || (std::__shared_weak_count::__release_shared[abi:fn200100](v10), !this[40]))))
  {
    operator new();
  }

  valuePtr = 0;
  Dictionary = TAttributes::GetDictionary(this + 5);
  v12 = 0.0;
  DoubleValue = 0.0;
  if (Dictionary)
  {
    Value = CFDictionaryGetValue(Dictionary, @"CTBaselineOffset");
    DoubleValue = 0.0;
    if (Value)
    {
      v15 = Value;
      v16 = CFGetTypeID(Value);
      if (v16 == CFNumberGetTypeID() || v16 == CFBooleanGetTypeID())
      {
        CFNumberGetValue(v15, kCFNumberDoubleType, &valuePtr);
        DoubleValue = *&valuePtr;
      }

      else
      {
        TypeID = CFStringGetTypeID();
        DoubleValue = 0.0;
        if (v16 == TypeID)
        {
          DoubleValue = CFStringGetDoubleValue(v15);
          valuePtr = *&DoubleValue;
        }
      }
    }
  }

  v17 = this[40];
  v18 = DoubleValue + *(v17 + 16);
  v19 = this[20];
  if (v19)
  {
    v12 = *(v19 + 48);
  }

  if (v12 != v18)
  {
    *(TAttributes::EnsureRareData((this + 5)) + 48) = v18;
    *(this + 89) = 1;
    v17 = this[40];
  }

  v20 = *(v17 + 24) + *(this + 46);
  v21 = *v17;
  v22 = 0.0;
  if (*v17 == a3)
  {
    v21 = a3;
    if ((*(this + 389) & 1) == 0)
    {
      v34.height = 0.0;
      v34.width = *(v17 + 24) + *(this + 46);
      TRun::AdvanceInitialAdvance(this, v34);
      *(this + 389) = 1;
      v22 = v20 + 0.0;
      v17 = this[40];
      v21 = *v17;
    }
  }

  if (v21 + *(v17 + 8) - 1 == a3 && (*(this + 390) & 1) == 0)
  {
    v23 = this[26];
    v24 = this[27];
    v25 = *(v24 + 32);
    if (v25 || (v30 = *(v24 + 24)) == 0)
    {
      v26 = v23 - 1;
      v27 = v25 + 16 * this[25] + 16 * (v23 - 1);
      v28 = *(v27 + 8);
    }

    else
    {
      v26 = v23 - 1;
      v27 = v30 + 8 * this[25] + 8 * (v23 - 1);
      v28 = 0;
    }

    v31 = v20 + *v27;
    TStorageRange::SetAdvance((this + 24), v26, *(&v28 - 1));
    *(this + 390) = 1;
    v22 = v20 + v22;
  }

  *(this + 388) = 0;
  return v22;
}

double TTextEncapsulationRun::GetImageBounds(TTextEncapsulationRun *this, CGContext *a2, CFRange a3, double *a4, double *a5)
{
  ImageBounds = TRun::GetImageBounds(this, a2, a3, a4, a5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((*(this + 388) & 1) == 0)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 128))(&v14, this);
    if (atomic_load_explicit(&v14, memory_order_acquire))
    {
      BoundingBox = CGPathGetBoundingBox(atomic_load_explicit(&v14, memory_order_acquire));
      v15.origin.x = ImageBounds;
      v15.origin.y = v8;
      v15.size.width = v10;
      v15.size.height = v12;
      *&ImageBounds = CGRectUnion(v15, BoundingBox);
    }
  }

  return ImageBounds;
}

void TTextEncapsulationRun::~TTextEncapsulationRun(id *this)
{
  *this = &unk_1EF259078;

  v2 = this[41];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v2);
  }

  TRun::~TRun(this);
}

{
  *this = &unk_1EF259078;

  v2 = this[41];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v2);
  }

  TRun::~TRun(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TTextEncapsulationRun::FindBreak@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const TCharStream *a3@<X2>, int a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  a5[1] = 0xAAAAAAAAAAAAAAAALL;
  a5[2] = -1;
  result = TRun::FindBreak(a1, a2, a3, a4, a5, a6);
  *a5 |= 8u;
  return result;
}

void std::__shared_ptr_emplace<TTextEncapsulationRun::RunGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF259148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

uint64_t GetAppleInternalFontsPath(void)
{
  if (qword_1ED567DC0 != -1)
  {
    dispatch_once_f(&qword_1ED567DC0, 0, GetAppleInternalFontsPath(void)::$_0::__invoke);
  }

  return qword_1ED567DC8;
}

CFStringRef GetAppleInternalFontsPath(void)::$_0::__invoke()
{
  v0 = *MEMORY[0x1E695E480];
  if (qword_1ED567DB8 != -1)
  {
    dispatch_once_f(&qword_1ED567DB8, 0, GetSystemRootPath(void)::$_0::__invoke);
  }

  result = CFStringCreateWithFormat(v0, 0, @"%@%@", GetSystemRootPath(void)::_sysPath, @"AppleInternal/Fonts/");
  qword_1ED567DC8 = result;
  return result;
}

__CFString *TCharStream::DebugDescriptionForRange(TCharStream *this, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  v40[0] = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 8))(v40);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], length);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  v30 = v5;
  v27 = v5;
  v28 = v5;
  *buffer = v5;
  v26 = v5;
  explicit = atomic_load_explicit(v40, memory_order_acquire);
  v33 = explicit;
  v36 = location;
  v37 = length;
  CharactersPtr = CFStringGetCharactersPtr(explicit);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(explicit, 0x600u);
  }

  v35 = CStringPtr;
  v38 = 0;
  v39 = 0;
  if (length >= 1)
  {
    v8 = 0;
    while (1)
    {
      if (v8 < 0 || (v9 = v37, v37 <= v8))
      {
        v11 = 0;
LABEL_11:
        CFStringAppendFormat(Mutable, 0, @"\\x%02X", v11);
        goto LABEL_54;
      }

      if (CharactersPtr)
      {
        v10 = CharactersPtr[v36 + v8];
      }

      else if (v35)
      {
        v10 = *(v35 + v36 + v8);
      }

      else
      {
        if (v39 <= v8 || (v12 = v38, v38 > v8))
        {
          v13 = v8 - 4;
          if (v8 < 4)
          {
            v13 = 0;
          }

          if (v13 + 64 < v37)
          {
            v9 = v13 + 64;
          }

          v38 = v13;
          v39 = v9;
          v41.length = v9 - v13;
          v41.location = v36 + v13;
          CFStringGetCharacters(v33, v41, buffer);
          v12 = v38;
        }

        v10 = buffer[v8 - v12];
      }

      if ((v10 - 32) <= 0x5Eu)
      {
        break;
      }

      v11 = v10;
      v16 = v8 + 1;
      if (v10 >> 10 == 54 && v16 < length)
      {
        v19 = v37;
        if (v37 > v16)
        {
          if (CharactersPtr)
          {
            v20 = CharactersPtr[v36 + v16];
          }

          else if (v35)
          {
            v20 = *(v35 + v36 + v16);
          }

          else
          {
            if (v39 <= v16 || (v21 = v38, v38 > v16))
            {
              v22 = v8 - 3;
              if (v16 < 4)
              {
                v22 = 0;
              }

              if (v22 + 64 < v37)
              {
                v19 = v22 + 64;
              }

              v38 = v22;
              v39 = v19;
              v42.length = v19 - v22;
              v42.location = v36 + v22;
              CFStringGetCharacters(v33, v42, buffer);
              v21 = v38;
            }

            v20 = buffer[v16 - v21];
          }

          if (v20 >> 10 == 55)
          {
            CFStringAppendFormat(Mutable, 0, @"\\U%08X", (v11 << 10) + v20 - 56613888);
            ++v8;
          }
        }

        goto LABEL_54;
      }

      if (v10 <= 9u)
      {
        switch(v10)
        {
          case 7u:
            v18 = 6357084;
            goto LABEL_51;
          case 8u:
            v18 = 6422620;
            goto LABEL_51;
          case 9u:
            v18 = 7602268;
            goto LABEL_51;
        }
      }

      else if (v10 > 0xBu)
      {
        if (v10 == 12)
        {
          *chars = 6684764;
          goto LABEL_52;
        }

        if (v10 == 13)
        {
          *chars = 7471196;
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 == 10)
        {
          v18 = 7209052;
          goto LABEL_51;
        }

        if (v10 == 11)
        {
          v18 = 7733340;
LABEL_51:
          *chars = v18;
LABEL_52:
          v14 = Mutable;
          v15 = 2;
LABEL_53:
          CFStringAppendCharacters(v14, chars, v15);
          goto LABEL_54;
        }
      }

      if (v10 < 0x20u || v10 == 127)
      {
        goto LABEL_11;
      }

      CFStringAppendFormat(Mutable, 0, @"\\u%04X", v10);
LABEL_54:
      if (++v8 >= length)
      {
        goto LABEL_68;
      }
    }

    chars[0] = v10;
    v14 = Mutable;
    v15 = 1;
    goto LABEL_53;
  }

LABEL_68:

  return Mutable;
}

int64_t TCharStream::GetRangeOfParagraphSeparatorAtIndex(TCharStream *this, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v11, 0, sizeof(v11));
  v11.magic = 878368812;
  v11.sizeOfStruct = 144;
  if ((**this)(this, &v11, a3, a4, a5, a6, a7, a8))
  {
    v9 = utext_char32At(&v11, a2);
    if (v9 != 8233)
    {
      if (v9 == 13)
      {
        utext_next32(&v11);
      }

      else if (v9 == 10)
      {
        a2 -= utext_previous32(&v11) == 13;
      }
    }

    utext_close(&v11);
  }

  return a2;
}

UText *TCharStreamUTF16::OpenUText(TCharStreamUTF16 *this, UText *ut)
{
  status = U_ZERO_ERROR;
  result = utext_openUChars(ut, *(this + 3), *(this + 2), &status);
  if (status > U_ZERO_ERROR)
  {
    return 0;
  }

  return result;
}

CFStringRef TCharStreamUTF16::CopyChars@<X0>(TCharStreamUTF16 *this@<X0>, CFStringRef *a2@<X8>)
{
  result = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], *(this + 3), *(this + 2), *MEMORY[0x1E695E498]);
  *a2 = result;
  return result;
}

CFStringRef TCharStreamUTF16::CopyChars@<X0>(TCharStreamUTF16 *this@<X0>, CFRange a2@<0:X1, 8:X2>, CFStringRef *a3@<X8>)
{
  result = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], (*(this + 3) + 2 * a2.location), a2.length, *MEMORY[0x1E695E498]);
  *a3 = result;
  return result;
}

void *TCharStreamUTF16::CopyChars(void *this, CFRange a2, unsigned __int16 *__dst)
{
  if (a2.length)
  {
    return memmove(__dst, (this[3] + 2 * a2.location), 2 * a2.length);
  }

  return this;
}

uint64_t TCharStreamUTF16::GetClusterRangeAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 8))(&v7);
  RangeOfCharacterClusterAtIndex = TCharStream::GetRangeOfCharacterClusterAtIndex(atomic_load_explicit(&v7, memory_order_acquire), a2, a3);

  return RangeOfCharacterClusterAtIndex;
}

uint64_t TCharStream::GetCharacterAtIndex(const UniChar *this, CFStringInlineBuffer *a2, CFIndex a3)
{
  if (a2->bufferedRangeStart > a3 || a2->bufferedRangeEnd <= a3)
  {
    TCharStream::SetIndex(this, a2, a3);
  }

  directUniCharBuffer = a2->directUniCharBuffer;
  if (directUniCharBuffer)
  {
    return directUniCharBuffer[a3 - a2->bufferedRangeStart];
  }

  else
  {
    return 0;
  }
}

const UniChar *TCharStream::SetIndex(const UniChar *this, CFStringInlineBuffer *a2, CFIndex a3)
{
  v5 = this;
  a2->bufferedRangeStart = a3;
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *(this + 1);
    v8 = *(this + 2);
    a2->directUniCharBuffer = (v6 + 2 * a3);
    v9 = v8 + v7;
LABEL_5:
    a2->bufferedRangeEnd = v9;
    return this;
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  this = (*(*this + 64))(this, a3, &v13);
  a2->directUniCharBuffer = this;
  if (this)
  {
    v9 = v13 + a3;
    goto LABEL_5;
  }

  v10 = *(v5 + 1) - a3 + *(v5 + 2);
  if (v10 >= 64)
  {
    v11 = 64;
  }

  else
  {
    v11 = *(v5 + 1) - a3 + *(v5 + 2);
  }

  v13 = v11;
  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    this = (*(*v5 + 24))(v5, a3);
    v12 = a2;
  }

  a2->directUniCharBuffer = v12;
  return this;
}

CFStringRef TCharStreamCFString::CopyChars@<X0>(atomic_ullong *this@<X0>, CFStringRef *a2@<X8>)
{
  explicit = atomic_load_explicit(this + 4, memory_order_acquire);
  result = CFStringCreateCopy(*MEMORY[0x1E695E480], explicit);
  *a2 = result;
  return result;
}

CFAttributedStringRef TCharStreamCFString::CopyAttributedString@<X0>(atomic_ullong *this@<X0>, CFAttributedStringRef *a2@<X8>)
{
  result = CFAttributedStringCreate(*MEMORY[0x1E695E480], atomic_load_explicit(this + 4, memory_order_acquire), atomic_load_explicit(this + 5, memory_order_acquire));
  *a2 = result;
  return result;
}

uint64_t TCharStreamCFString::GetSegment(TCharStreamCFString *this, uint64_t a2, uint64_t *a3)
{
  result = *(this + 3);
  if (result)
  {
    *a3 = *(this + 2) - a2;
  }

  return result;
}

id TCharStreamCFAttrString::CopyAttributedString@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  result = atomic_load_explicit(this + 6, memory_order_acquire);
  *a2 = result;
  return result;
}

uint64_t vImageCompressionDecode_BGRA8888(uint64_t a1, unint64_t a2, void *a3, char a4, uint8_t *a5)
{
  result = -21773;
  if (a1)
  {
    if (a3)
    {
      result = -21773;
      if (a5)
      {
        if (*a3)
        {
          v8 = a3[1];
          v9 = a3[2];
          if (a2 < 4)
          {
            v10 = 0;
          }

          else
          {
            v10 = *a1;
          }

          v11 = v9 * v8;
          v12 = v8 - v9 * v8 + 8 * v9 * v8;
          v13 = a5 + 4096;
          v14 = &a5[v12 + 4096];
          v15 = 3 * v9 * v8;
          v16 = a3[1];
          compression_decode_buffer(a5 + 4096, v12, (a1 + 4), a2 - 4, v14 + 18 * v9, COMPRESSION_LZFSE);
          if (v15 < v10)
          {
            return -21776;
          }

          v330 = v12;
          v17 = &v13[v11];
          v321 = v16;
          v18 = &v13[v11 + v16];
          v19 = &v18[v15];
          if (v10 <= 0x1000)
          {
            memcpy(a5, &v18[v15], v10);
            bzero(&v18[v15], v15);
            v21 = a5;
            if (!v10)
            {
              v333 = v17;
              v27 = 0;
LABEL_24:
              v28 = a4;
              v29 = a3;
              v30 = v321;
              if (v27 < v15)
              {
                return -21776;
              }

              v31 = 3 * v9;
              v32 = 6 * v9;
              v33 = &v14->i16[3 * v9];
              v34 = 6 * v9;
              v35 = *a3;
              v36 = v14 + 12 * v9;
              if (v9 > 7)
              {
                if (v321)
                {
                  v37 = 0;
                  v302 = (v14 + 2 * v31 - 16);
                  v38 = (v33 - 3);
                  v39 = 8 - (v9 & 7);
                  v309 = -(4 * v39);
                  v40 = v321 + v321 * v9 + 4096;
                  v41 = v321 * ((4 * v9) | 1) + 4096;
                  v319 = &a5[v330 + 4112];
                  v42 = &a5[v330 + v32];
                  v301 = v42 + 4110;
                  v43 = xmmword_184778270;
                  v44 = xmmword_184778280;
                  v45 = xmmword_184778290;
                  v46 = xmmword_1847782A0;
                  v47 = xmmword_1847782B0;
                  v48 = xmmword_1847782C0;
                  v49 = xmmword_1847782D0;
                  v50 = xmmword_1847782E0;
                  v51 = xmmword_1847782F0;
                  v52 = xmmword_184778300;
                  v53 = xmmword_184778310;
                  v54.i64[0] = 0x1000100010001;
                  v54.i64[1] = 0x1000100010001;
                  v318 = &a5[v330 + v34 * 2];
                  v326 = v318 + 4102;
                  v300 = &a5[v330 + 4102];
                  v305 = v42 + 4090;
                  v324 = &a5[v330];
                  v299 = &a5[v330 + 4096];
                  v308 = v330 + v34 * 2 + 4096;
                  v298 = &v33[v31 - 8];
                  v55 = v330 + v32 + 4096;
                  v328 = 4096 - v39;
                  v331 = 4096;
                  v310 = -3 * v9;
                  v315 = v55 - 2 * (3 * v39);
                  v317 = v55;
                  v312 = &v14->i16[3 * v9];
                  v313 = (v33 - 3);
                  v311 = v14;
                  v314 = v42;
                  while (1)
                  {
                    if (v37)
                    {
                      v56 = v14;
                      v57 = v35;
                      v58 = v33;
                      v59 = v37;
                      v60 = v40;
                      v61 = v41;
                      memcpy(v56, v58, v32);
                      v54.i64[0] = 0x1000100010001;
                      v54.i64[1] = 0x1000100010001;
                      v53 = xmmword_184778310;
                      v52 = xmmword_184778300;
                      v51 = xmmword_1847782F0;
                      v50 = xmmword_1847782E0;
                      v49 = xmmword_1847782D0;
                      v48 = xmmword_1847782C0;
                      v47 = xmmword_1847782B0;
                      v46 = xmmword_1847782A0;
                      v45 = xmmword_184778290;
                      v44 = xmmword_184778280;
                      v43 = xmmword_184778270;
                      v41 = v61;
                      v40 = v60;
                      v37 = v59;
                      v14 = v311;
                      v33 = v312;
                      v35 = v57;
                      v38 = v313;
                      v42 = v314;
                      v34 = 6 * v9;
                      v32 = 6 * v9;
                      v30 = v321;
                      v29 = a3;
                      v28 = a4;
                    }

                    v62 = v333;
                    if (v31 >= 8)
                    {
                      v67 = v41;
                      v68 = v40;
                      v69 = v308;
                      v70 = 8;
                      do
                      {
                        v22.i64[0] = *&a5[v68];
                        v23.i64[0] = *&a5[v67];
                        v71 = vzip1q_s8(v22, v23);
                        v72 = vandq_s8(v71, v54);
                        v73 = vshrq_n_u16(v71, 1uLL);
                        v23 = vceqzq_s16(v72);
                        v22 = vbslq_s8(v23, v73, vnegq_s16(v73));
                        *&a5[v69] = v22;
                        v70 += 8;
                        v69 += 16;
                        v68 += 8;
                        v67 += 8;
                      }

                      while (v70 <= v31);
                      v66 = &a5[v69];
                      v65 = &a5[v68];
                      v64 = &a5[v67];
                      v63 = ((v31 - 8) & 0xFFFFFFFFFFFFFFF8) + 8;
                    }

                    else
                    {
                      v63 = 0;
                      v64 = v19;
                      v65 = v18;
                      v66 = v36;
                    }

                    v74 = v318;
                    if (v63 < v31)
                    {
                      v75 = v310 + v63;
                      do
                      {
                        v77 = *v65++;
                        v76 = v77;
                        v78 = *v64++;
                        v79 = (v76 | (v78 << 8)) >> 1;
                        if (v76)
                        {
                          v80 = -v79;
                        }

                        else
                        {
                          LOWORD(v80) = v79;
                        }

                        *v66 = v80;
                        v66 += 2;
                        v81 = __CFADD__(v75++, 1);
                      }

                      while (!v81);
                    }

                    v82 = *v333++;
                    if (*v62 <= 1u)
                    {
                      if (v82)
                      {
                        if (v82 == 1)
                        {
                          *v33 = v14->i16[0] + *v36;
                          v33[1] = v14->i16[1] + *(v36 + 1);
                          v33[2] = v14->i16[2] + *(v36 + 2);
                          if (v31 >= 9)
                          {
                            v303 = v41;
                            v304 = v40;
                            v306 = v35;
                            v112 = 0;
                            v113 = 0;
                            v114 = 9;
                            v115 = 3;
                            do
                            {
                              v116 = v114;
                              v117 = &v301[v112];
                              v118 = *&v301[v112 - 14];
                              v119 = &v324[v112];
                              v120 = *&v324[v112 + 4102];
                              v121 = *&v324[v112 + 4096];
                              v122 = v120 - v121;
                              if (v120 - v121 < 0)
                              {
                                v122 = v121 - v120;
                              }

                              v123 = v118 - v121;
                              if (v123 >= 0)
                              {
                                v124 = v123;
                              }

                              else
                              {
                                v124 = -v123;
                              }

                              v125 = &v326[v112];
                              v126 = *&v326[v112];
                              if (v122 <= v124)
                              {
                                v127 = v38;
                              }

                              else
                              {
                                LOWORD(v118) = *&v324[v112 + 4102];
                                v127 = v14;
                              }

                              v128 = v118 + v126;
                              *(v117 - 4) = v118 + v126;
                              v129 = &v127->i8[v112];
                              v130 = v127->i16[v112 / 2 + 4] + *(v125 + 1);
                              *(v117 - 3) = v130;
                              v131 = *(v129 + 5) + *(v125 + 2);
                              *(v117 - 2) = v131;
                              v132 = *(v119 + 2054);
                              v133 = v132 - v120;
                              if (v132 - v120 < 0)
                              {
                                v133 = v120 - v132;
                              }

                              v134 = v128 - v120;
                              if (v134 >= 0)
                              {
                                v135 = v134;
                              }

                              else
                              {
                                v135 = -v134;
                              }

                              v136 = *(v125 + 3);
                              if (v133 <= v135)
                              {
                                *(v117 - 1) = v136 + v128;
                                *&v301[v112] = *(v125 + 4) + v130;
                                v137 = v115 + 5;
                                v138 = &v36[2 * v137];
                              }

                              else
                              {
                                *(v117 - 1) = v136 + v132;
                                *&v301[v112] = *(v119 + 2055) + *(v125 + 4);
                                v137 = v113 + 8;
                                v131 = *(v125 + 5);
                                v138 = (v319 + v112);
                              }

                              v33[v137] = *v138 + v131;
                              v114 = v116 + 6;
                              v139 = v113 + 6;
                              v140 = v113 + 15;
                              v112 += 12;
                              v113 += 6;
                              v115 = v116;
                            }

                            while (v140 <= v31);
                            v84 = v139 + 3;
                            v35 = v306;
                            v41 = v303;
                            v40 = v304;
                            v42 = v314;
                            v28 = a4;
                            v74 = v318;
                          }

                          else
                          {
                            v84 = 3;
                          }

                          if (v84 < v31)
                          {
                            v141 = 2 * v84;
                            do
                            {
                              v142 = &v42[v141];
                              v143 = *&v42[v141 + 4090];
                              v144 = v14->i16[v141 / 2];
                              v145 = v14->i16[v141 / 2 - 3];
                              v146 = v144 - v145;
                              if (v144 - v145 < 0)
                              {
                                v146 = v145 - v144;
                              }

                              v147 = v143 - v145;
                              if (v147 < 0)
                              {
                                v147 = -v147;
                              }

                              v148 = &v74[v141];
                              if (v146 <= v147)
                              {
                                v149 = v38;
                              }

                              else
                              {
                                LOWORD(v143) = v14->i16[v141 / 2];
                                v149 = v14;
                              }

                              *(v142 + 2048) = v143 + *&v74[v141 + 4096];
                              v150 = &v149->i8[v141];
                              *(v142 + 2049) = *(v150 + 1) + *(v148 + 2049);
                              *(v142 + 2050) = *(v150 + 2) + *(v148 + 2050);
                              v84 += 3;
                              v141 += 6;
                            }

                            while (v84 < v31);
                          }
                        }
                      }

                      else
                      {
                        v87 = v33;
                        v88 = v35;
                        v89 = v37;
                        v90 = v40;
                        v91 = v41;
                        memcpy(v87, v36, v32);
                        v54.i64[0] = 0x1000100010001;
                        v54.i64[1] = 0x1000100010001;
                        v53 = xmmword_184778310;
                        v52 = xmmword_184778300;
                        v51 = xmmword_1847782F0;
                        v50 = xmmword_1847782E0;
                        v49 = xmmword_1847782D0;
                        v48 = xmmword_1847782C0;
                        v47 = xmmword_1847782B0;
                        v46 = xmmword_1847782A0;
                        v45 = xmmword_184778290;
                        v44 = xmmword_184778280;
                        v43 = xmmword_184778270;
                        v41 = v91;
                        v40 = v90;
                        v37 = v89;
                        v14 = v311;
                        v33 = v312;
                        v35 = v88;
                        v38 = v313;
                        v42 = v314;
                        v34 = 6 * v9;
                        v32 = 6 * v9;
                        v30 = v321;
                        v29 = a3;
                        v28 = a4;
                      }
                    }

                    else
                    {
                      switch(v82)
                      {
                        case 2:
                          *v33 = *v36;
                          if (v31 >= 0xB)
                          {
                            v92 = v33;
                            v93 = v318 + 4102;
                            for (i = 11; i <= v31; i += 3)
                            {
                              v95 = *v93;
                              v93 = (v93 + 6);
                              *(v92 + 3) = vaddq_s16(*v92, v95);
                              v92 += 3;
                            }

                            v85 = i - 8;
                          }

                          else
                          {
                            v85 = 3;
                          }

                          if (v85 < v31)
                          {
                            v96 = v310 + v85;
                            v97 = &a5[2 * v85 + v308];
                            v98 = &v305[2 * v85];
                            do
                            {
                              v99 = *v97;
                              v97 += 2;
                              *(v98 + 3) = *v98 + v99;
                              v98 += 2;
                              v81 = __CFADD__(v96++, 1);
                            }

                            while (!v81);
                          }

                          break;
                        case 4:
                          *v33 = v14->i16[0] + *v36;
                          v33[1] = v14->i16[1] + *(v36 + 1);
                          v33[2] = v14->i16[2] + *(v36 + 2);
                          if (v31 >= 0xB)
                          {
                            v100 = v300;
                            v101 = v33;
                            for (j = 11; j <= v31; j += 3)
                            {
                              v103 = vsubq_s16(*v100, vmvnq_s8(*v101));
                              *(v101 + 3) = vsraq_n_s16(*(v100 + v34 * 2), vsraq_n_u16(v103, v103, 0xFuLL), 1uLL);
                              v101 += 3;
                              v100 = (v100 + 6);
                            }

                            v86 = j - 8;
                          }

                          else
                          {
                            v86 = 3;
                          }

                          if (v86 < v31)
                          {
                            v104 = v310 + v86;
                            v105 = &v305[2 * v86];
                            v106 = (v299 + 2 * v86);
                            do
                            {
                              *(v105 + 3) = v106[v34] + (*v105 + *v106 + 1) / 2;
                              v105 += 2;
                              ++v106;
                              v81 = __CFADD__(v104++, 1);
                            }

                            while (!v81);
                          }

                          break;
                        case 3:
                          if (v31 >= 0x10)
                          {
                            v107 = 0;
                            v108 = v14;
                            do
                            {
                              v109 = vaddq_s16(v108[1], *(&v108[1] + v34 * 2));
                              v110 = (v108 + v32);
                              *v110 = vaddq_s16(*v108, *(v108 + v34 * 2));
                              v110[1] = v109;
                              v83 = v107 + 16;
                              v111 = v107 + 32;
                              v108 += 2;
                              v107 += 16;
                            }

                            while (v111 <= v31);
                          }

                          else
                          {
                            v83 = 0;
                          }

                          if ((v83 | 8uLL) <= v31)
                          {
                            *&v33[v83] = vaddq_s16(*(v14 + 2 * v83), *&v36[2 * v83]);
                            v83 |= 8uLL;
                          }

                          if (v83 != v31)
                          {
                            *v298 = vaddq_s16(*v302, *&v36[2 * v31 - 16]);
                          }

                          break;
                      }
                    }

                    v151 = (v35 - 32);
                    if (v28)
                    {
                      v152 = v315;
                      v153 = v317;
                      v154 = v328;
                      v155 = v331;
                      v156 = 8;
                      do
                      {
                        v157 = *&a5[v153];
                        v158 = *&a5[v153 + 16];
                        v159 = *&a5[v153 + 32];
                        v160 = vqtbl1q_s8(v157, v44);
                        v161 = vaddq_s16(vqtbl1q_s8(v158, v46), vqtbl1q_s8(v157, v43));
                        v162 = vaddq_s16(vqtbl1q_s8(v158, v48), vqtbl1q_s8(v157, v45));
                        v163 = vaddq_s16(vaddq_s16(vqtbl1q_s8(v158, v47), v160), vqtbl1q_s8(v159, v50));
                        v164 = vaddq_s16(v162, vqtbl1q_s8(v159, v51));
                        v165 = vsubq_s16(vaddq_s16(v161, vqtbl1q_s8(v159, v49)), vshrq_n_s16(vsraq_n_u16(v164, v164, 0xFuLL), 1uLL));
                        v166 = vaddq_s16(v165, v164);
                        v167 = vsubq_s16(v165, vshrq_n_s16(vsraq_n_u16(v163, v163, 0xFuLL), 1uLL));
                        v168 = vaddq_s16(v167, v163);
                        v169 = vmovl_u8(*&a5[v155]);
                        v160.i64[0] = 0x80008000800080;
                        v160.i64[1] = 0x80008000800080;
                        v170 = vmlaq_s16(v160, v167, v169);
                        v167.i64[0] = 0x80008000800080;
                        v167.i64[1] = 0x80008000800080;
                        v171 = vmlaq_s16(v167, v166, v169);
                        v166.i64[0] = 0x80008000800080;
                        v166.i64[1] = 0x80008000800080;
                        v172 = vmlaq_s16(v166, v168, v169);
                        *v168.i8 = vaddhn_s16(vshrq_n_u16(v172, 8uLL), v172);
                        v23 = vaddhn_high_s16(vaddhn_s16(vshrq_n_u16(v170, 8uLL), v170), vshrq_n_u16(v171, 8uLL), v171);
                        v168.i64[1] = *&a5[v155];
                        v156 += 8;
                        v153 += 48;
                        v22 = vqtbl2q_s8(*v23.i8, v53);
                        v151[2] = vqtbl2q_s8(*v23.i8, v52);
                        v151[3] = v22;
                        v151 += 2;
                        v154 += 8;
                        v155 += 8;
                        v152 += 48;
                      }

                      while (v156 <= v9);
                      if ((v9 & 7) == 0)
                      {
                        goto LABEL_120;
                      }

                      v173 = *&a5[v154];
                      v174 = &a5[v152];
                      v175 = v174[1];
                      v176 = v174[2];
                      v177 = vaddq_s16(vaddq_s16(vqtbl1q_s8(v175, v47), vqtbl1q_s8(*v174, v44)), vqtbl1q_s8(v176, v50));
                      v178 = vaddq_s16(vaddq_s16(vqtbl1q_s8(v175, v48), vqtbl1q_s8(*v174, v45)), vqtbl1q_s8(v176, v51));
                      v179 = vsubq_s16(vaddq_s16(vaddq_s16(vqtbl1q_s8(v175, v46), vqtbl1q_s8(*v174, v43)), vqtbl1q_s8(v176, v49)), vshrq_n_s16(vsraq_n_u16(v178, v178, 0xFuLL), 1uLL));
                      v180 = vaddq_s16(v179, v178);
                      v181 = vsubq_s16(v179, vshrq_n_s16(vsraq_n_u16(v177, v177, 0xFuLL), 1uLL));
                      v182 = vaddq_s16(v181, v177);
                      v183 = vmovl_u8(v173);
                      v184.i64[0] = 0x80008000800080;
                      v184.i64[1] = 0x80008000800080;
                      v185 = vmlaq_s16(v184, v181, v183);
                      v186.i64[0] = 0x80008000800080;
                      v186.i64[1] = 0x80008000800080;
                      v187 = vmlaq_s16(v186, v180, v183);
                      v188.i64[0] = 0x80008000800080;
                      v188.i64[1] = 0x80008000800080;
                      v189 = vmlaq_s16(v188, v182, v183);
                      v190 = vshrq_n_u16(vsraq_n_u16(v185, v185, 8uLL), 8uLL);
                      v191 = vshrq_n_u16(vsraq_n_u16(v187, v187, 8uLL), 8uLL);
                      v192 = vshrq_n_u16(vsraq_n_u16(v189, v189, 8uLL), 8uLL);
                    }

                    else
                    {
                      v193 = v315;
                      v194 = v317;
                      v195 = v328;
                      v196 = v331;
                      v197 = 8;
                      do
                      {
                        v198 = *&a5[v194];
                        v199 = *&a5[v194 + 16];
                        v200 = *&a5[v194 + 32];
                        v335.val[1] = vqtbl1q_s8(v198, v44);
                        v201 = vaddq_s16(vqtbl1q_s8(v199, v46), vqtbl1q_s8(v198, v43));
                        v202 = vaddq_s16(vqtbl1q_s8(v199, v48), vqtbl1q_s8(v198, v45));
                        v203 = vaddq_s16(vaddq_s16(vqtbl1q_s8(v199, v47), v335.val[1]), vqtbl1q_s8(v200, v50));
                        v204 = vaddq_s16(v202, vqtbl1q_s8(v200, v51));
                        v205 = vsubq_s16(vaddq_s16(v201, vqtbl1q_s8(v200, v49)), vshrq_n_s16(vsraq_n_u16(v204, v204, 0xFuLL), 1uLL));
                        v206 = vaddq_s16(v205, v204);
                        v207 = vsubq_s16(v205, vshrq_n_s16(vsraq_n_u16(v203, v203, 0xFuLL), 1uLL));
                        *v335.val[1].i8 = vmovn_s16(vaddq_s16(v207, v203));
                        v335.val[0] = vuzp1q_s8(v207, v206);
                        v335.val[1].i64[1] = *&a5[v196];
                        v23 = vqtbl2q_s8(v335, v52);
                        v197 += 8;
                        v194 += 48;
                        v22 = vqtbl2q_s8(v335, v53);
                        v151[2] = v23;
                        v151[3] = v22;
                        v151 += 2;
                        v195 += 8;
                        v196 += 8;
                        v193 += 48;
                      }

                      while (v197 <= v9);
                      if ((v9 & 7) == 0)
                      {
                        goto LABEL_120;
                      }

                      v208 = &a5[v193];
                      v173 = *&a5[v195];
                      v209 = v208[1];
                      v210 = v208[2];
                      v211 = vaddq_s16(vaddq_s16(vqtbl1q_s8(v209, v47), vqtbl1q_s8(*v208, v44)), vqtbl1q_s8(v210, v50));
                      v212 = vaddq_s16(vaddq_s16(vqtbl1q_s8(v209, v48), vqtbl1q_s8(*v208, v45)), vqtbl1q_s8(v210, v51));
                      v213 = vsubq_s16(vaddq_s16(vaddq_s16(vqtbl1q_s8(v209, v46), vqtbl1q_s8(*v208, v43)), vqtbl1q_s8(v210, v49)), vshrq_n_s16(vsraq_n_u16(v212, v212, 0xFuLL), 1uLL));
                      v191 = vaddq_s16(v213, v212);
                      v190 = vsubq_s16(v213, vshrq_n_s16(vsraq_n_u16(v211, v211, 0xFuLL), 1uLL));
                      v192 = vaddq_s16(v190, v211);
                    }

                    v214 = (v151 + v309);
                    *v334.val[1].i8 = vmovn_s16(v192);
                    v334.val[0] = vuzp1q_s8(v190, v191);
                    v334.val[1].u64[1] = v173;
                    v22 = vqtbl2q_s8(v334, v52);
                    v23 = vqtbl2q_s8(v334, v53);
                    v214[2] = v22;
                    v214[3] = v23;
LABEL_120:
                    result = 0;
                    v18 += v31;
                    v19 += v31;
                    v35 += v29[3];
                    ++v37;
                    v40 += v31;
                    v41 += v31;
                    v328 += v9;
                    v331 += v9;
                    if (v37 == v30)
                    {
                      return result;
                    }
                  }
                }

                return 0;
              }

              if (!v321)
              {
                return 0;
              }

              v215 = 0;
              v327 = &a5[v330 + 4112];
              v329 = &a5[v330];
              v216 = &a5[v330 + v32];
              v316 = v216 + 4110;
              v217 = &a5[v330 + v34 * 2];
              v218 = (v33 - 3);
              v332 = (v217 + 4102);
              v320 = v217;
              v325 = v216;
              while (1)
              {
                if (v215)
                {
                  v219 = v35;
                  memcpy(v14, v14 + 6 * v9, v32);
                  v29 = a3;
                  v216 = v325;
                  v35 = v219;
                  v218 = (v33 - 3);
                  v217 = v320;
                  v34 = 6 * v9;
                  v32 = 6 * v9;
                  v30 = v321;
                  v28 = a4;
                }

                if (v9)
                {
                  v220 = 0;
                  v221 = v9;
                  do
                  {
                    v222 = &v19[v220];
                    v223 = &v18[v220];
                    v224 = &v36[2 * v220];
                    v225 = v18[v220];
                    v226 = (v225 | (v19[v220] << 8)) >> 1;
                    if (v225)
                    {
                      v226 = -v226;
                    }

                    *v224 = v226;
                    v227 = v223[1];
                    v228 = (v227 | (v222[1] << 8)) >> 1;
                    if (v227)
                    {
                      v228 = -v228;
                    }

                    *(v224 + 1) = v228;
                    v229 = v223[2];
                    v230 = (v229 | (v222[2] << 8)) >> 1;
                    if (v229)
                    {
                      v230 = -v230;
                    }

                    *(v224 + 2) = v230;
                    v220 += 3;
                    --v221;
                  }

                  while (v221);
                }

                v232 = *v333;
                v231 = v232;
                ++v333;
                if (v232 <= 1)
                {
                  if (v231)
                  {
                    if (v231 == 1)
                    {
                      *v33 = v14->i16[0] + *v36;
                      v33[1] = v14->i16[1] + *(v36 + 1);
                      v33[2] = v14->i16[2] + *(v36 + 2);
                      if (v31 >= 9)
                      {
                        v307 = v35;
                        v245 = 0;
                        v246 = 0;
                        v247 = 9;
                        v248 = 3;
                        do
                        {
                          v249 = v247;
                          v250 = &v316[v245];
                          v251 = *&v316[v245 - 14];
                          v252 = &v329[v245];
                          v253 = *&v329[v245 + 4102];
                          v254 = *&v329[v245 + 4096];
                          v255 = v253 - v254;
                          if (v253 - v254 < 0)
                          {
                            v255 = v254 - v253;
                          }

                          v256 = v251 - v254;
                          if (v256 >= 0)
                          {
                            v257 = v256;
                          }

                          else
                          {
                            v257 = -v256;
                          }

                          v258 = &v332[v245 / 2];
                          v259 = v332[v245 / 2];
                          if (v255 <= v257)
                          {
                            v260 = v218;
                          }

                          else
                          {
                            LOWORD(v251) = *&v329[v245 + 4102];
                            v260 = v14;
                          }

                          v261 = v251 + v259;
                          *(v250 - 4) = v251 + v259;
                          v262 = &v260->i8[v245];
                          v263 = v260->i16[v245 / 2 + 4] + v258[1];
                          *(v250 - 3) = v263;
                          v264 = *(v262 + 5) + v258[2];
                          *(v250 - 2) = v264;
                          v265 = *(v252 + 2054);
                          v266 = v265 - v253;
                          if (v265 - v253 < 0)
                          {
                            v266 = v253 - v265;
                          }

                          v267 = v261 - v253;
                          if (v267 >= 0)
                          {
                            v268 = v267;
                          }

                          else
                          {
                            v268 = -v267;
                          }

                          v269 = v258[3];
                          if (v266 <= v268)
                          {
                            *(v250 - 1) = v269 + v261;
                            *&v316[v245] = v258[4] + v263;
                            v270 = v248 + 5;
                            v271 = &v36[2 * v270];
                          }

                          else
                          {
                            *(v250 - 1) = v269 + v265;
                            *&v316[v245] = *(v252 + 2055) + v258[4];
                            v270 = v246 + 8;
                            v264 = v258[5];
                            v271 = (v327 + v245);
                          }

                          v33[v270] = *v271 + v264;
                          v247 = v249 + 6;
                          v272 = v246 + 6;
                          v273 = v246 + 15;
                          v245 += 12;
                          v246 += 6;
                          v248 = v249;
                        }

                        while (v273 <= v31);
                        v237 = v272 + 3;
                        v35 = v307;
                        v29 = a3;
                        v216 = v325;
                        v217 = v320;
                      }

                      else
                      {
                        v237 = 3;
                      }

                      if (v237 < v31)
                      {
                        v274 = 2 * v237;
                        do
                        {
                          v275 = &v216[v274];
                          v276 = *&v216[v274 + 4090];
                          v277 = v14->i16[v274 / 2];
                          v278 = v14->i16[v274 / 2 - 3];
                          v279 = v277 - v278;
                          if (v277 - v278 < 0)
                          {
                            v279 = v278 - v277;
                          }

                          v280 = v276 - v278;
                          if (v280 < 0)
                          {
                            v280 = -v280;
                          }

                          v281 = &v217[v274];
                          if (v279 <= v280)
                          {
                            v282 = v218;
                          }

                          else
                          {
                            LOWORD(v276) = v14->i16[v274 / 2];
                            v282 = v14;
                          }

                          *(v275 + 2048) = v276 + *&v217[v274 + 4096];
                          v283 = &v282->i8[v274];
                          *(v275 + 2049) = *(v283 + 1) + *(v281 + 2049);
                          *(v275 + 2050) = *(v283 + 2) + *(v281 + 2050);
                          v237 += 3;
                          v274 += 6;
                        }

                        while (v237 < v31);
                      }
                    }
                  }

                  else
                  {
                    v244 = v35;
                    memcpy(v14 + 6 * v9, v14 + 12 * v9, v32);
                    v29 = a3;
                    v216 = v325;
                    v35 = v244;
                    v218 = (v33 - 3);
                    v217 = v320;
                    v34 = 6 * v9;
                    v32 = 6 * v9;
                    v30 = v321;
                    v28 = a4;
                  }

                  goto LABEL_185;
                }

                if (v231 == 2)
                {
                  *v33 = *v36;
                  v33[1] = *(v36 + 1);
                  v33[2] = *(v36 + 2);
                  if (v31 >= 4)
                  {
                    v238 = v332;
                    v239 = &v14->i16[3 * v9];
                    v240 = v31 - 3;
                    do
                    {
                      v241 = *v238++;
                      v239[3] = v241 + *v239;
                      ++v239;
                      --v240;
                    }

                    while (v240);
                  }

                  goto LABEL_185;
                }

                if (v231 != 3)
                {
                  break;
                }

                v242 = v14;
                v243 = 3 * v9;
                if (v9)
                {
                  do
                  {
                    v242->i16[v32 / 2] = v242->i16[v34] + v242->i16[0];
                    v242 = (v242 + 2);
                    --v243;
                  }

                  while (v243);
LABEL_185:
                  if (v28)
                  {
                    if (v9)
                    {
                      v284 = 0;
                      v285 = v35;
                      v286 = v14 + 3 * v9;
                      do
                      {
                        v287 = v13[v284];
                        v288 = *v286 - ((v286[2] + (v286[2] >> 15)) >> 1);
                        v289 = v288 + v286[2];
                        v290 = v288 - ((v286[1] + (v286[1] >> 15)) >> 1);
                        v291 = v290 + v286[1];
                        *v285 = (v290 * v287 + 128 + (((v290 * v287 + 128) & 0xFF00u) >> 8)) >> 8;
                        v285[1] = (v289 * v287 + 128 + (((v289 * v287 + 128) & 0xFF00u) >> 8)) >> 8;
                        v285[2] = (v291 * v287 + 128 + (((v291 * v287 + 128) & 0xFF00u) >> 8)) >> 8;
                        v285[3] = v287;
                        v285 += 4;
                        ++v284;
                        v286 += 3;
                      }

                      while (v9 != v284);
                    }
                  }

                  else if (v9)
                  {
                    v292 = 0;
                    v293 = v35;
                    v294 = v14 + 3 * v9;
                    do
                    {
                      v295 = v13[v292];
                      v296 = *v294 - ((v294[2] + (v294[2] >> 15)) >> 1) + v294[2];
                      v297 = *v294 - v294[2] / 2 - ((v294[1] + (v294[1] >> 15)) >> 1) + v294[1];
                      *v293 = *v294 - v294[2] / 2 + -((v294[1] + (v294[1] >> 15)) >> 1);
                      v293[1] = v296;
                      v293[2] = v297;
                      v293[3] = v295;
                      v293 += 4;
                      ++v292;
                      v294 += 3;
                    }

                    while (v9 != v292);
                  }
                }

                result = 0;
                v18 += v31;
                v19 += v31;
                v13 += v9;
                v35 += v29[3];
                if (++v215 == v30)
                {
                  return result;
                }
              }

              if (v231 == 4)
              {
                for (k = 0; k != 3; ++k)
                {
                  v33[k] = *&v36[k * 2] + v14->i16[k];
                }

                v234 = (v329 + 4102);
                v235 = v31 - 3;
                v236 = &v14->i16[3 * v9];
                if (v31 >= 4)
                {
                  do
                  {
                    v236[3] = v234[v34] + (*v236 + *v234 + 1) / 2;
                    ++v236;
                    ++v234;
                    --v235;
                  }

                  while (v235);
                }
              }

              goto LABEL_185;
            }
          }

          else
          {
            v20 = malloc_type_malloc(v10, 0x100004077774924uLL);
            if (!v20)
            {
              return -21771;
            }

            v21 = v20;
            memcpy(v20, &v18[v15], v10);
            bzero(&v18[v15], v15);
          }

          v24 = *v21;
          v333 = v17;
          if (v15 <= (v24 >> 2))
          {
LABEL_18:
            v27 = 0;
          }

          else
          {
            v25 = 0;
            v26 = &v19[v24 >> 2];
            while (1)
            {
              *v26++ = v24 & 3;
              if (v10 - 1 == v25)
              {
                break;
              }

              v24 = v21[v25 + 1];
              v26 += v24 >> 2;
              ++v25;
              if (v26 >= &v19[v15])
              {
                if (v25 < v10)
                {
                  goto LABEL_18;
                }

                break;
              }
            }

            v27 = (v26 - v19);
          }

          if (v10 > 0x1000)
          {
            free(v21);
          }

          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

CFStringRef TCharStreamCopyCallback::CopyChars@<X0>(atomic_ullong *this@<X0>, CFRange a2@<0:X1, 8:X2>, CFStringRef *a3@<X8>)
{
  length = a2.length;
  location = a2.location;
  v7 = this + 4;
  if (!atomic_load_explicit(this + 4, memory_order_acquire))
  {
    TCharStreamCopyCallback::FetchString(this);
  }

  v9.location = location - this[1];
  v9.length = length;
  result = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], atomic_load_explicit(v7, memory_order_acquire), v9);
  *a3 = result;
  return result;
}

CFStringRef TCharStreamCopyCallback::CopyChars@<X0>(atomic_ullong *this@<X0>, CFStringRef *a2@<X8>)
{
  explicit = atomic_load_explicit(this + 4, memory_order_acquire);
  result = CFStringCreateCopy(*MEMORY[0x1E695E480], explicit);
  *a2 = result;
  return result;
}

void TCharStreamCopyCallback::CopyChars(atomic_ullong *this, CFRange a2, UniChar *buffer)
{
  length = a2.length;
  location = a2.location;
  v7 = this + 4;
  if (!atomic_load_explicit(this + 4, memory_order_acquire))
  {
    TCharStreamCopyCallback::FetchString(this);
  }

  v9.location = location - this[1];
  explicit = atomic_load_explicit(v7, memory_order_acquire);
  v9.length = length;

  CFStringGetCharacters(explicit, v9, buffer);
}

uint64_t TCharStreamCopyCallback::GetClusterRangeAtIndex(atomic_ullong *this, uint64_t a2, uint64_t a3)
{
  v6 = this + 4;
  if (!atomic_load_explicit(this + 4, memory_order_acquire))
  {
    TCharStreamCopyCallback::FetchString(this);
  }

  v7 = a2 - this[1];
  explicit = atomic_load_explicit(v6, memory_order_acquire);

  return TCharStream::GetRangeOfCharacterClusterAtIndex(explicit, v7, a3);
}

atomic_ullong TCharStreamCopyCallback::GetSegment(atomic_ullong *this, uint64_t a2, uint64_t *a3)
{
  if (!atomic_load_explicit(this + 4, memory_order_acquire))
  {
    TCharStreamCopyCallback::FetchString(this);
  }

  v6 = a2 - this[1];
  v7 = this[7];
  if (v7)
  {
    *a3 = this[2] - v6;
    return v7 + 2 * v6;
  }

  else
  {
    result = this[3];
    if (result)
    {
      *a3 = this[2] - v6;
    }
  }

  return result;
}

atomic_ullong TCharStreamCopyCallback::LazyCopy(atomic_ullong *this, uint64_t a2, unint64_t a3, void *a4)
{
  if (!atomic_load_explicit(this + 4, memory_order_acquire))
  {
    TCharStreamCopyCallback::FetchString(this);
  }

  v8 = a2 - this[1];
  v9 = this[7];
  if (v9)
  {
    return v9 + 2 * v8;
  }

  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::resize(a4, a3);
  (*(*this + 24))(this, v8, a3, *a4);
  return *a4;
}

void TCharStreamCopyCallback::FetchString(TCharStreamCopyCallback *this)
{
  v3 = (*(this + 6))(*(this + 1), *(this + 2), *(this + 8));
  TCharStreamCFString::SetString(this, &v3);
  *(this + 7) = *(this + 3);
  *(this + 3) = 0;
  v2 = v3;
}

void TCharStreamCopyCallback::~TCharStreamCopyCallback(id *this)
{
  *this = &unk_1EF259208;
  v1 = this + 4;
}

{
  *this = &unk_1EF259208;
  v1 = this + 4;

  JUMPOUT(0x1865F22D0);
}

void TCharStreamUniChar::TCharStreamUniChar(TCharStreamUniChar *this, const unsigned __int16 *(*a2)(uint64_t, uint64_t *, const __CFDictionary **, void *), void (*a3)(const unsigned __int16 *, void *), void *a4)
{
  *(this + 6) = 0;
  v32 = (this + 48);
  *this = &unk_1EF259340;
  *(this + 1) = 0;
  v31 = this + 72;
  *(this + 18) = this + 72;
  v6 = (this + 144);
  *(this + 4) = a4;
  *(this + 5) = a3;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v7 = (a2)(0, &v34, &v33);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = v7;
    while (1)
    {
      v12 = *(this + 7);
      v11 = *(this + 8);
      if (v12 >= v11)
      {
        v16 = *v32;
        v17 = v12 - *v32;
        v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3) + 1;
        if (v18 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v16) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        v20 = v19 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v18;
        if (v20)
        {
          v21 = *v6;
          v22 = *v6 + 24 * v20;
          if (v22 > v6)
          {
            if (v20 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          *v6 = v22;
        }

        else
        {
          v21 = 0;
        }

        v23 = (v21 + 8 * (v17 >> 3));
        v24 = v33;
        v25 = v21 + 24 * v20;
        *v23 = v34;
        v23[1] = v8;
        v23[2] = v24;
        v15 = v23 + 3;
        v26 = v23 - v17;
        memcpy(v23 - v17, v16, v17);
        v27 = *(this + 6);
        *(this + 6) = v26;
        *(this + 7) = v15;
        v28 = *(this + 8);
        *(this + 8) = v25;
        if (v27)
        {
          if (v31 > v27 || v6 <= v27)
          {
            operator delete(v27);
          }

          else if (v28 == *v6)
          {
            *v6 = v27;
          }
        }

        v13 = v34;
      }

      else
      {
        v14 = v33;
        v13 = v34;
        *v12 = v34;
        v12[1] = v8;
        v12[2] = v14;
        v15 = v12 + 3;
      }

      *(this + 7) = v15;
      v9 += v13;
      v29 = a2(v9, &v34, &v33, *(this + 4));
      if (!v29)
      {
        break;
      }

      v8 = v29;
      if ((v10 + 2 * v9) == v29)
      {
        v30 = v10;
      }

      else
      {
        v30 = 0;
      }

      if (v10)
      {
        v10 = v30;
      }

      else
      {
        v10 = 0;
      }
    }

    *(this + 2) = v9;
    *(this + 3) = v10;
  }

  else
  {
    *(this + 2) = 0;
    *(this + 3) = 0;
  }
}

void TCharStreamUniChar::~TCharStreamUniChar(TCharStreamUniChar *this)
{
  *this = &unk_1EF259340;
  if (*(this + 5) && (v2 = *(this + 7) - *(this + 6)) != 0)
  {
    v3 = 0;
    v4 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    v6 = 8;
    while (1)
    {
      v7 = *(this + 6);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v7) >> 3) <= v3)
      {
        break;
      }

      (*(this + 5))(*(v7 + v6), *(this + 4));
      ++v3;
      v6 += 24;
      if (v5 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v8 = *(this + 6);
    if (v8)
    {
      *(this + 7) = v8;
      v9 = this + 144;
      if (this + 72 <= v8 && v9 > v8)
      {
        if (*(this + 8) == *(this + 18))
        {
          *v9 = v8;
        }
      }

      else
      {
        operator delete(v8);
      }
    }
  }
}

{
  TCharStreamUniChar::~TCharStreamUniChar(this);

  JUMPOUT(0x1865F22D0);
}

UText *TCharStreamUniChar::OpenUText(TCharStreamUniChar *this, UText *ut)
{
  status = U_ZERO_ERROR;
  result = utext_setup(ut, 0, &status);
  if (status > U_ZERO_ERROR)
  {
    return 0;
  }

  result->providerProperties = 0;
  result->context = this;
  result->pFuncs = &TCharStreamUniChar::GetUTextFuncs(void)::funcs;
  return result;
}

UText *TCharStreamUniChar::UTextClone(UText *this, UText *a2, const UText *a3, UErrorCode *status, UErrorCode *a5)
{
  if (*status > 0)
  {
    return 0;
  }

  if (a3)
  {
    result = 0;
    *status = U_UNSUPPORTED_ERROR;
  }

  else
  {
    result = utext_setup(this, 0, status);
    if (*status <= 0)
    {
      chunkNativeStart = a2->chunkNativeStart;
      result->chunkNativeStart = chunkNativeStart;
      result->chunkNativeLimit = chunkNativeStart;
      result->nativeIndexingLimit = chunkNativeStart;
      result->chunkOffset = 0;
      result->providerProperties = a2->providerProperties;
      result->context = a2->context;
      result->pFuncs = &TCharStreamUniChar::GetUTextFuncs(void)::funcs;
    }
  }

  return result;
}

uint64_t TCharStreamUniChar::UTextAccess(TCharStreamUniChar *this, UText *a2, int a3)
{
  v5 = *(this + 9);
  v6 = *(v5 + 2);
  if (v6 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(v5 + 2);
  }

  if (a2 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 2);
  if (a3)
  {
    if (v8 >= v9 || (v10 = *(this + 4), v8 < v10))
    {
      if (v9 == v6 && v8 >= v6)
      {
        result = 0;
        *(this + 10) = *(this + 11);
        return result;
      }

      goto LABEL_20;
    }

    v14 = v8 - v10;
LABEL_26:
    *(this + 10) = v14;
    return 1;
  }

  if (v8 <= v9)
  {
    v13 = *(this + 4);
    if (v8 > v13)
    {
      v14 = v8 - v13;
      goto LABEL_26;
    }
  }

  if (!v8 && !*(this + 4))
  {
    result = 0;
    *(this + 10) = 0;
    return result;
  }

LABEL_20:
  result = *(this + 10);
  if (result || (result = malloc_type_malloc(0x40uLL, 0x1000040BDFB0063uLL), (*(this + 10) = result) != 0))
  {
    *(this + 6) = result;
    if (a3)
    {
      *(this + 4) = v8;
      *(this + 2) = v8 + 32;
      if (v8 + 32 <= v6)
      {
        if (v8 + 32 < v6)
        {
          v6 = TCharStreamUniChar::PinUTextIndex(v5, v8 + 32, v6, a3);
          *(this + 2) = v6;
          v8 = *(this + 4);
        }

        else
        {
          LODWORD(v6) = v8 + 32;
        }
      }

      else
      {
        *(this + 2) = v6;
      }

      v16 = 0;
      v17 = v6 - v8;
      v18 = v6 - v8;
    }

    else
    {
      if (v8 >= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v8;
      }

      *(this + 2) = v15;
      *(this + 4) = v15 - 32;
      if (v15 - 32 < 0)
      {
        v8 = 0;
        *(this + 4) = 0;
      }

      else if (v15 == 32)
      {
        v8 = 0;
        LODWORD(v15) = 32;
      }

      else
      {
        v8 = TCharStreamUniChar::PinUTextIndex(v5, v15 - 32, v6, 0);
        *(this + 4) = v8;
        v15 = *(this + 2);
      }

      v16 = v15 - v8;
      v17 = v16;
      v18 = v16;
    }

    *(this + 10) = v16;
    *(this + 11) = v17;
    (*(*v5 + 24))(v5, v8, v18, *(this + 6));
    *(this + 7) = *(this + 11);
    return 1;
  }

  return result;
}

uint64_t TCharStreamUniChar::UTextExtract(TCharStreamUniChar *this, uint64_t a2, int64_t a3, uint64_t a4, unsigned __int16 *a5, int *a6, UErrorCode *a7)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v9 = a5;
  if ((a5 & 0x80000000) != 0 || (v12 = *(this + 9), v13 = v12[2], !a4) && a5)
  {
    v7 = 0;
    v14 = 1;
LABEL_7:
    *a6 = v14;
    return v7;
  }

  if (a2 < 0 || a3 < a2 || a3 - a2 >= 0x80000000)
  {
    v7 = 0;
    v14 = 8;
    goto LABEL_7;
  }

  v16 = TCharStreamUniChar::PinUTextIndex(*(this + 9), a2, v12[2], 1);
  v7 = TCharStreamUniChar::PinUTextIndex(v12, a3, v13, 1) - v16;
  if (a4 && v9)
  {
    if (v7 >= v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = v7;
    }

    (*(*v12 + 24))(v12, v16, v17, a4);
    v18 = v9;
    if (v7 < v9)
    {
      *(a4 + 2 * v7) = 0;
    }
  }

  else
  {
    v18 = v9;
  }

  if (v7 >= v18)
  {
    if (v7 == v18)
    {
      v14 = -124;
    }

    else
    {
      v14 = 15;
    }

    goto LABEL_7;
  }

  return v7;
}

unint64_t TCharStreamUniChar::PinUTextIndex(TCharStreamUniChar *this, unint64_t a2, unint64_t a3, int a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v4 = a2;
  if (a2 <= a3)
  {
    if (a2)
    {
      if (a2 < a3)
      {
        v8 = 0xAAAAAAAAAAAAAAAALL;
        if ((*(*(*this + 64))(this, a2, &v8) & 0xFC00) == 0xDC00 && (*(*(*this + 64))(this, v4 - 1, &v8) & 0xFC00) == 0xD800)
        {
          if (a4)
          {
            --v4;
          }

          else
          {
            ++v4;
          }
        }
      }
    }

    return v4;
  }

  return a3;
}

uint64_t TCharStreamUniChar::GetSegment(TCharStreamUniChar *this, uint64_t a2, uint64_t *a3)
{
  v3 = *(this + 6);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v3) >> 3);
  v5 = 0;
  v6 = 0;
  if (*(this + 7) == v3)
  {
    goto LABEL_7;
  }

  v7 = *(this + 6);
  do
  {
    v8 = *v7;
    v7 += 3;
    v6 += v8;
    if (v6 > a2)
    {
      goto LABEL_7;
    }

    ++v5;
  }

  while (v4 != v5);
  *a3 = v6 - a2;
  do
  {
    __break(1u);
LABEL_7:
    *a3 = v6 - a2;
  }

  while (v4 <= v5);
  return *(v3 + 24 * v5 + 8) + 2 * (*(v3 + 24 * v5) - v6) + 2 * a2;
}

CFStringRef TCharStreamUniChar::CopyChars@<X0>(TCharStreamUniChar *this@<X0>, CFRange a2@<0:X1, 8:X2>, CFStringRef *a3@<X8>)
{
  length = a2.length;
  location = a2.location;
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *MEMORY[0x1E695E480];
    a2.location = v6 + 2 * a2.location;
    v8 = *MEMORY[0x1E695E498];
  }

  else
  {
    v10 = *MEMORY[0x1E695E488];
    v11 = MEMORY[0x1865F0530](*MEMORY[0x1E695E488], 2 * a2.length, 0x1000040BDFB0063, 0);
    (*(*this + 24))(this, location, length, v11);
    v7 = *MEMORY[0x1E695E480];
    a2.location = v11;
    a2.length = length;
    v8 = v10;
  }

  result = CFStringCreateWithCharactersNoCopy(v7, a2.location, a2.length, v8);
  *a3 = result;
  return result;
}

void *TCharStreamUniChar::CopyChars(void *this, CFRange a2, unsigned __int16 *__dst)
{
  v3 = __dst;
  length = a2.length;
  v5 = this[3];
  if (v5)
  {
    if (a2.length)
    {
      a2.length *= 2;
      a2.location = v5 + 2 * a2.location;

      return memmove(__dst, a2.location, a2.length);
    }
  }

  else
  {
    v7 = this;
    v8 = this[6];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((this[7] - v8) >> 3);
    v10 = 0;
    v11 = 0;
    if (this[7] == v8)
    {
      goto LABEL_11;
    }

    v12 = this[6];
    do
    {
      v13 = *v12;
      v12 += 3;
      v11 += v13;
      if (v11 > a2.location)
      {
        goto LABEL_11;
      }

      ++v10;
    }

    while (v9 != v10);
    while (1)
    {
      do
      {
        __break(1u);
LABEL_11:
        if (v11 - a2.location >= length)
        {
          v14 = length;
        }

        else
        {
          v14 = v11 - a2.location;
        }
      }

      while (v9 <= v10);
      if (v14)
      {
        this = memmove(v3, (*(v8 + 24 * v10 + 8) + 2 * (*(v8 + 24 * v10) - v11) + 2 * a2.location), 2 * v14);
      }

      length -= v14;
      if (length < 1)
      {
        break;
      }

      v3 += v14;
      v15 = 24 * v10;
      while (1)
      {
        ++v10;
        v8 = v7[6];
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v7[7] - v8) >> 3);
        if (v11 <= v10)
        {
          break;
        }

        v16 = v8 + v15;
        v17 = *(v16 + 24);
        if (v17 >= length)
        {
          v18 = length;
        }

        else
        {
          v18 = *(v16 + 24);
        }

        if (v17)
        {
          this = memmove(v3, *(v16 + 32), 2 * v18);
        }

        v15 += 24;
        v3 += v18;
        v19 = length <= v18;
        length -= v18;
        if (v19)
        {
          return this;
        }
      }
    }
  }

  return this;
}

uint64_t TCharStreamUniChar::GetClusterRangeAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 8))(&v7);
  RangeOfCharacterClusterAtIndex = TCharStream::GetRangeOfCharacterClusterAtIndex(atomic_load_explicit(&v7, memory_order_acquire), a2, a3);

  return RangeOfCharacterClusterAtIndex;
}

void TDecorator::DrawDecoration(TDecorator *this, const TLineDrawContext *a2, __n128 *a3, CFRange a4, CGPoint a5)
{
  location = a4.location;
  v63 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 10);
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0.0;
  v57 = 0.0;
  v55 = 0.0;
  v54 = 0;
  if (GetDecorationAttributes(a3, a4.location, a4.length, &a3[2].n128_i8[8], *this, &v60, &v59, &v58, v9, a5.y, &v57, &v56, &v55, &v54))
  {
    TRun::GetPositions(a3, 0);
    v11 = *(v10 + 16 * location);
    v46[0] = 0xAAAAAAAAAAAAAAAALL;
    v47 = 0xAAAAAAAAAAAAAA00;
    width[1] = NAN;
    v46[1] = 0;
    v49[1] = -1431655766;
    v49[0] = 0;
    width[0] = 0.0;
    v50 = v11;
    v51 = v57;
    v52 = 0;
    v53 = 0;
    LODWORD(v46[0]) = *this;
    TCFRef<__CTFont const*>::Retain(&v46[1], v59);
    v49[0] = v60;
    width[0] = v56;
    width[1] = v55;
    LOBYTE(v47) = v54;
    *(&v47 + 1) = v58;
    if (*a2)
    {
LABEL_13:

      return;
    }

    v12 = *(a2 + 1);
    CGContextSaveGState(v12);
    TAttributes::SetStrokeColor(v12, atomic_load_explicit(&v46[1], memory_order_acquire), v13);
    v14 = v49[0];
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v62[3] = v15;
    v62[4] = v15;
    v62[1] = v15;
    v62[2] = v15;
    v62[0] = v15;
    TDecorator::dashes(v62, v49[0], width[0] / (v49[0] & 7));
    CGContextSetLineWidth(v12, width[0]);
    *&v16 = -1;
    *(&v16 + 1) = -1;
    *&v61.c = v16;
    *&v61.tx = v16;
    *&v61.a = v16;
    CGContextGetTextMatrix(&v61, v12);
    tx = v61.tx;
    ty = v61.ty;
    _V0.D[1] = v61.b;
    v20 = *MEMORY[0x1E695EFF8];
    *&v61.tx = v20;
    v21 = vdupq_n_s64(0x3CB0000000000000uLL);
    v22 = vandq_s8(vandq_s8(vcgeq_f64(v21, vabsq_f64(vaddq_f64(*&v61.c, xmmword_18475B150))), vcgeq_f64(v21, vabsq_f64(vaddq_f64(*&v61.a, xmmword_18475B140)))), vcgeq_f64(v21, vabsq_f64(v20)));
    v23 = vandq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0];
    _D2 = v50;
    v25 = v51;
    v26 = ceil(*(&v47 + 1));
    if ((v14 & 8) != 0)
    {
      v35 = v51 - width[1];
      _D4 = v26 + v50;
      if ((v23 & 0x8000000000000000) != 0)
      {
        v38 = v51 - width[1];
      }

      else
      {
        __asm { FMLA            D3, D2, V0.D[1] }

        _D2 = v20.f64[0] + v35 * v61.c + v61.a * v50;
        v38 = v20.f64[1] + _D3;
        v39 = v35 * v61.c + v61.a * _D4;
        __asm { FMLA            D5, D4, V0.D[1] }

        _D4 = v20.f64[0] + v39;
        v35 = v20.f64[1] + _D5;
      }

      TDecorationRun::DrawLine<TRun const*>(v46, v12, a3, &a3[20], *&v62[0], ((*(&v62[0] + 1) - *&v62[0]) >> 3), tx, ty, _D2, v38, _D4, v35);
      _D2 = v50;
      v25 = v51 + width[1];
      _D4 = v26 + v50;
      if ((v23 & 0x8000000000000000) == 0)
      {
        v41 = v25 * v61.c;
        v42 = v25 * v61.c + v61.a * v50;
        v43 = v25 * v61.d;
        v44 = v61.tx + v42;
        v33 = v61.ty + v43 + v61.b * v50;
        v45 = v43 + v61.b * _D4;
        _D4 = v61.tx + v41 + v61.a * _D4;
        v25 = v61.ty + v45;
        _D2 = v44;
        goto LABEL_12;
      }
    }

    else
    {
      _D4 = v26 + v50;
      if ((v23 & 0x8000000000000000) == 0)
      {
        __asm { FMLA            D3, D2, V0.D[1] }

        _D2 = v20.f64[0] + v51 * v61.c + v61.a * v50;
        v33 = v20.f64[1] + _D3;
        __asm { FMLA            D5, D4, V0.D[1] }

        _D4 = v20.f64[0] + v51 * v61.c + v61.a * _D4;
        v25 = v20.f64[1] + _D5;
LABEL_12:
        TDecorationRun::DrawLine<TRun const*>(v46, v12, a3, &a3[20], *&v62[0], ((*(&v62[0] + 1) - *&v62[0]) >> 3), tx, ty, _D2, v33, _D4, v25);
        std::vector<double,TInlineBufferAllocator<double,6ul>>::__destroy_vector::operator()[abi:fn200100](v62);
        CGContextRestoreGState(v12);
        goto LABEL_13;
      }
    }

    v33 = v25;
    goto LABEL_12;
  }
}

id std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::emplace_back<long &,CFRange>(uint64_t *a1, void *a2, __int128 *a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v20 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v11;
    v19 = v11;
    v12 = (v7 - *a1) >> 5;
    if ((v12 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v13 = v6 - *a1;
    v14 = v13 >> 4;
    if (v13 >> 4 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    std::__split_buffer<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul> &>::__split_buffer(&v18, v15, v12, (a1 + 3));
    v16 = v19;
    v17 = *a3;
    *v19 = *a2;
    *(v16 + 8) = v17;
    *(v16 + 24) = 0;
    *&v19 = v19 + 32;
    std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__swap_out_circular_buffer(a1, &v18);
    v10 = a1[1];
    result = std::__split_buffer<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul> &>::~__split_buffer(&v18);
  }

  else
  {
    v8 = *a3;
    *v7 = *a2;
    *(v7 + 8) = v8;
    result = 0;
    *(v7 + 24) = result;
    v10 = v7 + 32;
  }

  a1[1] = v10;
  return result;
}

unsigned int *CTLineDecorationGetType(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

int *CTLineDecorationGetSegment(int *result)
{
  if (result)
  {
    v1 = *result;
    result += 2;
    if (v1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CTLineDecorationGetSegmentColor(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return 0;
    }

    else
    {
      return *(result + 96);
    }
  }

  return result;
}

int *CTLineDecorationGetFragment(int *result)
{
  if (result)
  {
    v1 = *result;
    result += 2;
    if (v1 != 1)
    {
      return 0;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::PathObserver::Intersection *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return 1;
      case 4:
        v25 = *(a2 - 16);
        v26 = *(a1 + 32);
        v27 = v25 < v26;
        if (v25 == v26 && (v28 = *(a2 - 8), v29 = *(a1 + 40), v10 = v28 == v29, v27 = v28 < v29, v10))
        {
          v30 = *(a1 + 44);
          if (*(a2 - 4) >= v30)
          {
            return 1;
          }
        }

        else
        {
          if (!v27)
          {
            return 1;
          }

          v28 = *(a1 + 40);
          v30 = *(a1 + 44);
        }

        *(a1 + 32) = *(a2 - 16);
        *(a2 - 16) = v26;
        *(a2 - 8) = v28;
        *(a2 - 4) = v30;
        v31 = *(a1 + 32);
        v32 = *(a1 + 16);
        v33 = v31 < v32;
        if (v31 == v32 && (v34 = *(a1 + 40), v35 = *(a1 + 24), v10 = v34 == v35, v33 = v34 < v35, v10))
        {
          v36 = *(a1 + 28);
          if (*(a1 + 44) >= v36)
          {
            return 1;
          }
        }

        else
        {
          if (!v33)
          {
            return 1;
          }

          v34 = *(a1 + 24);
          v36 = *(a1 + 28);
        }

        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v32;
        *(a1 + 40) = v34;
        *(a1 + 44) = v36;
        v37 = *(a1 + 16);
        v38 = *a1;
        v39 = v37 < *a1;
        if (v37 == *a1 && (v40 = *(a1 + 24), v41 = *(a1 + 8), v10 = v40 == v41, v39 = v40 < v41, v10))
        {
          v42 = *(a1 + 12);
          if (*(a1 + 28) >= v42)
          {
            return 1;
          }
        }

        else
        {
          if (!v39)
          {
            return 1;
          }

          v40 = *(a1 + 8);
          v42 = *(a1 + 12);
        }

        *a1 = *(a1 + 16);
        *(a1 + 16) = v38;
        *(a1 + 24) = v40;
        *(a1 + 28) = v42;
        return 1;
      case 5:
        return 1;
    }

LABEL_14:
    v12 = a1 + 32;
    v13 = a1 + 48;
    if (a1 + 48 == a2)
    {
      return 1;
    }

    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *v13;
      v17 = *v13 < *v12;
      if (*v13 == *v12 && (v18 = *(v13 + 8), v19 = *(v12 + 8), v10 = v18 == v19, v17 = v18 < v19, v10))
      {
        v20 = *(v13 + 12);
        if (v20 >= *(v12 + 12))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_33;
        }

        v18 = *(v13 + 8);
        v20 = *(v13 + 12);
      }

      *v13 = *v12;
      v21 = v14;
      do
      {
        v22 = *(a1 + v21 + 16);
        v23 = v16 < v22;
        if (v16 == v22 && (v24 = *(a1 + v21 + 24), v10 = v18 == v24, v23 = v18 < v24, v10))
        {
          if (v20 >= *(a1 + v21 + 28))
          {
            v12 = a1 + v21 + 32;
            goto LABEL_32;
          }
        }

        else if (!v23)
        {
          goto LABEL_32;
        }

        v12 -= 16;
        *(a1 + v21 + 32) = *(a1 + v21 + 16);
        v21 -= 16;
      }

      while (v21 != -32);
      v12 = a1;
LABEL_32:
      *v12 = v16;
      *(v12 + 8) = v18;
      *(v12 + 12) = v20;
      if (++v15 == 8)
      {
        return v13 + 16 == a2;
      }

LABEL_33:
      v12 = v13;
      v14 += 16;
      v13 += 16;
      if (v13 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  v5 = *(a2 - 16);
  v6 = *a1;
  v7 = v5 < *a1;
  if (v5 == *a1)
  {
    v8 = *(a2 - 8);
    v9 = *(a1 + 8);
    v10 = v8 == v9;
    v7 = v8 < v9;
    if (v10)
    {
      v11 = *(a1 + 12);
      if (*(a2 - 4) >= v11)
      {
        return 1;
      }

      goto LABEL_42;
    }
  }

  if (v7)
  {
    v8 = *(a1 + 8);
    v11 = *(a1 + 12);
LABEL_42:
    *a1 = *(a2 - 16);
    *(a2 - 16) = v6;
    *(a2 - 8) = v8;
    *(a2 - 4) = v11;
  }

  return 1;
}

void *std::vector<double,TInlineBufferAllocator<double,6ul>>::vector[abi:fn200100](void *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[9] = a1 + 3;
  if (a3)
  {
    std::vector<double,TInlineBufferAllocator<double,6ul>>::__vallocate[abi:fn200100](a1, a3);
    v6 = a1[1];
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      *v6++ = v8;
      v7 -= 8;
    }

    while (v7);
    a1[1] = v6;
  }

  return a1;
}

uint64_t std::vector<double,TInlineBufferAllocator<double,6ul>>::__vallocate[abi:fn200100](void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v4 = a1 + 9;
  result = a1[9];
  v5 = result + 8 * a2;
  if (v5 > v4)
  {
    operator new();
  }

  *v4 = v5;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * a2;
  return result;
}

void *std::vector<double,TInlineBufferAllocator<double,6ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v12 = result[1];
    v13 = v12 - v9;
    if (a4 <= (v12 - v9) >> 3)
    {
      v19 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v19);
      }

      i = &v9[v19];
    }

    else
    {
      if (v12 != v9)
      {
        result = memmove(*result, __src, v12 - v9);
        v12 = v7[1];
      }

      v14 = v6 + v13;
      v15 = v12;
      if (v6 + v13 != a3)
      {
        v15 = v12;
        v16 = v12;
        do
        {
          v17 = *v14;
          v14 += 8;
          *v16 = v17;
          v16 += 8;
          v15 += 8;
        }

        while (v14 != a3);
      }

      i = v15;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      v10 = (result + 9);
      if (result + 3 <= v9 && v10 > v9)
      {
        if (v8 == *v10)
        {
          *v10 = v9;
        }
      }

      else
      {
        operator delete(v9);
      }

      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v20 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v20 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    result = std::vector<double,TInlineBufferAllocator<double,6ul>>::__vallocate[abi:fn200100](v7, v21);
    for (i = v7[1]; v6 != a3; i += 8)
    {
      v22 = *v6++;
      *i = v22;
    }
  }

  v7[1] = i;
  return result;
}

__n128 std::__function::__func<TDecorationRun::CalculateGlyphIntersections(CGAffineTransform,TRun const&,double,double,std::function<void ()(double,double)> const&)::$_0,std::allocator<TDecorationRun::CalculateGlyphIntersections(CGAffineTransform,TRun const&,double,double,std::function<void ()(double,double)> const&)::$_0>,void ()(double,double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2593A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<void TDecorationRun::DrawLine<anonymous namespace::TRunAdapter>(CGContext *,CGPoint,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,CGPoint,CGPoint,double const*,unsigned long)::{lambda(double,double)#1},std::allocator<void TDecorationRun::DrawLine<anonymous namespace::TRunAdapter>(CGContext *,CGPoint,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,CGPoint,CGPoint,double const*,unsigned long)::{lambda(double,double)#1}>,void ()(double,double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2593F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<void TDecorationRun::EnumerateLine<anonymous namespace::TRunAdapter>(TLineDrawContext const&,CGPoint,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,CGPoint,CGPoint,void({block_pointer})(CGPoint,CGPoint))::{lambda(double,double)#1},std::allocator<void TDecorationRun::EnumerateLine<anonymous namespace::TRunAdapter>(TLineDrawContext const&,CGPoint,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,CGPoint,CGPoint,void({block_pointer})(CGPoint,CGPoint))::{lambda(double,double)#1}>,void ()(double,double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF259438;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<void TDecorationRun::EnumerateLine<anonymous namespace::TRunAdapter>(TLineDrawContext const&,CGPoint,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,CGPoint,CGPoint,void({block_pointer})(CGPoint,CGPoint))::{lambda(double,double)#1},std::allocator<void TDecorationRun::EnumerateLine<anonymous namespace::TRunAdapter>(TLineDrawContext const&,CGPoint,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,CGPoint,CGPoint,void({block_pointer})(CGPoint,CGPoint))::{lambda(double,double)#1}>,void ()(double,double)>::operator()(uint64_t a1, double *a2, double *a3)
{
  v3 = *a3;
  v4 = **(a1 + 8);
  v5 = *a2 - v4;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v5 - *v6 > **v7)
  {
    (*(**(v7 + 16) + 16))(*v6 + **(v7 + 8), v6[1] + *(*(v7 + 8) + 8), v5 + **(v7 + 8), *(*(a1 + 16) + 8) + *(*(v7 + 8) + 8));
    v4 = **(a1 + 8);
    v6 = *(a1 + 32);
  }

  result = v3 + v4;
  *v6 = result;
  return result;
}

uint64_t ___ZZN14TDecorationRun22EnumerateDecorationRunIN12_GLOBAL__N_111TRunAdapterEEEvRK16TLineDrawContextT_S6_7CFRangeP18TDecoratorObserverdENKUl7CGPointSA_E_cvU13block_pointerFvSA_SA_EEv_block_invoke(uint64_t result, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = **(result + 32);
  if (*v14 == 1)
  {
    v18 = v12;
    v19 = v13;
    memset(v17, 170, 40);
    v15[5] = -1;
    v16 = unk_184778568;
    v15[0] = 0xAAAAAAAA00000001;
    *&v15[1] = a2;
    *&v15[2] = a3;
    *&v15[3] = a4;
    *&v15[4] = a5;
    return (*(*(v14 + 8) + 16))(*(v14 + 8), 1, v15, a8, a9, a10, a11, a12);
  }

  return result;
}

void TDecorationRun::DrawLine<TRun const*>(uint64_t a1, CGContextRef c, uint64_t a3, uint64_t a4, const CGFloat *a5, const double *a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = a12;
  v42[6] = *MEMORY[0x1E69E9840];
  *v42 = a7;
  *&v42[1] = a8;
  v40 = a9;
  v41 = a10;
  v38 = a5;
  v39 = c;
  v37 = a6;
  v16 = *(a1 + 32) * 0.75;
  v35 = *(a1 + 32);
  v36 = v16;
  if (*(a1 + 16) == 1)
  {
    v14 = a12 - a10 * 2.0;
    a10 = a10 - a10 * 2.0;
    v41 = a10;
  }

  v29 = &v36;
  v30 = v42;
  v31 = a1;
  v32 = &v39;
  v33 = &v38;
  v34 = &v37;
  if (*a1)
  {
    if (a11 - a9 <= v16)
    {
      return;
    }

    v17 = a7 + a9;
    v18 = a8 + a10;
    v19 = a7 + a11;
    v20 = a8 + v14;
    v21 = c;
    v22 = v17;
    v23 = v18;
    v24 = a5;
    v25 = a6;
    goto LABEL_10;
  }

  *&v26 = -1;
  *(&v26 + 1) = -1;
  *&v28.c = v26;
  *&v28.tx = v26;
  *&v28.a = v26;
  CGContextGetTextMatrix(&v28, c);
  if (a3 != a4)
  {
    v42[5] = 0;
    operator new();
  }

  if (a11 - v40 > v36)
  {
    v27 = v30[1];
    v22 = v40 + *v30;
    v23 = v41 + v27;
    v19 = a11 + *v30;
    v20 = v14 + v27;
    v21 = *v32;
    v24 = *v33;
    v25 = *v34;
LABEL_10:
    TDecorationRun::DrawLineSegment(v21, v24, *&v22, *&v19, v25);
  }
}

__n128 std::__function::__func<void TDecorationRun::DrawLine<TRun const*>(CGContext *,CGPoint,TRun const*,TRun const*,CGPoint,CGPoint,double const*,unsigned long)::{lambda(double,double)#1},std::allocator<void TDecorationRun::DrawLine<TRun const*>(CGContext *,CGPoint,TRun const*,TRun const*,CGPoint,CGPoint,double const*,unsigned long)::{lambda(double,double)#1}>,void ()(double,double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2594B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<void TDecorationRun::DrawLine<TRun const*>(CGContext *,CGPoint,TRun const*,TRun const*,CGPoint,CGPoint,double const*,unsigned long)::{lambda(double,double)#1},std::allocator<void TDecorationRun::DrawLine<TRun const*>(CGContext *,CGPoint,TRun const*,TRun const*,CGPoint,CGPoint,double const*,unsigned long)::{lambda(double,double)#1}>,void ()(double,double)>::operator()(uint64_t a1, double *a2, double *a3)
{
  v3 = *a3;
  v4 = **(a1 + 8);
  v5 = *a2 - v4;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *v7;
  if (v5 - *v7 > **v6)
  {
    v10 = v7[1];
    v11 = *(v6 + 8);
    v12 = v11[1];
    v14.x = v8 + *v11;
    v14.y = v10 + v12;
    v15.x = v5 + *v11;
    v15.y = *(*(a1 + 16) + 8) + v12;
    TDecorationRun::DrawLineSegment(**(v6 + 24), **(v6 + 32), v14, v15, **(v6 + 40));
    v4 = **(a1 + 8);
    v7 = *(a1 + 32);
  }

  result = v3 + v4;
  *v7 = result;
  return result;
}

__n128 std::__function::__func<TDecorator::NextDecorationRun(double,TLine const&,TInlineVector<DecorationOverride,30ul> *,TDecorationRun &)::$_0,std::allocator<TDecorator::NextDecorationRun(double,TLine const&,TInlineVector<DecorationOverride,30ul> *,TDecorationRun &)::$_0>,void ()(CFRange,__CFDictionary const*,BOOL *,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2594F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<TDecorator::NextDecorationRun(double,TLine const&,TInlineVector<DecorationOverride,30ul> *,TDecorationRun &)::$_1,std::allocator<TDecorator::NextDecorationRun(double,TLine const&,TInlineVector<DecorationOverride,30ul> *,TDecorationRun &)::$_1>,void ()(CFRange,__CFDictionary const*,BOOL *,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF259540;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

void LanguagesWithLangSysTag(unsigned int a1@<W0>, CFArrayRef *a2@<X8>)
{
  v4 = -8;
  v5 = 0xFFFFFFFFFFFFE730;
  while (*&kLanguageToLangSysMappings[v5 + 6356] != a1)
  {
    v4 -= 8;
    v5 += 8;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5)
  {
    v6 = *MEMORY[0x1E695E480];
    values = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v7 = *&kLanguageToLangSysMappings[v5 + 6352];
    cStr = HIBYTE(v7);
    v16 = BYTE2(v7);
    v17 = BYTE1(v7);
    v18 = 0;
    v8 = CFStringCreateWithCString(v6, &cStr, 0x600u);
    CFArrayAppendValue(atomic_load_explicit(&values, memory_order_acquire), v8);

    if (v5 != -8)
    {
      v9 = -v4;
      do
      {
        if (*&kLanguageToLangSysMappings[v9 + 4] == a1)
        {
          v10 = *&kLanguageToLangSysMappings[v9];
          cStr = HIBYTE(v10);
          v16 = BYTE2(v10);
          v17 = BYTE1(v10);
          v18 = 0;
          v11 = CFStringCreateWithCString(v6, &cStr, 0x600u);
          CFArrayAppendValue(atomic_load_explicit(&values, memory_order_acquire), v11);
        }

        v9 += 8;
      }

      while (v9 != 6352);
    }

    *a2 = atomic_exchange(&values, 0);
    v12 = values;
    goto LABEL_14;
  }

LABEL_12:
  if (a1 == 32)
  {
    cStr = __tolower(HIBYTE(a1));
    v16 = __tolower(BYTE2(a1));
    v17 = __tolower(BYTE1(a1));
    v18 = 0;
    v13 = *MEMORY[0x1E695E480];
    v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &cStr, 0x600u);
    values = v14;
    *a2 = CFArrayCreate(v13, &values, 1, MEMORY[0x1E695E9C0]);
    v12 = v14;
LABEL_14:

    return;
  }

  *a2 = 0;
}

unint64_t LangSysTagFromPreferredLanguagesForScript(int a1)
{
  v18 = a1;
  {
    LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sMap = 0u;
    unk_1EA86BAA0 = 0u;
    dword_1EA86BAB0 = 1065353216;
  }

  os_unfair_lock_lock_with_options();
  v1 = std::__hash_table<std::__hash_value_type<UScriptCode,unsigned int>,std::__unordered_map_hasher<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::hash<UScriptCode>,std::equal_to<UScriptCode>,true>,std::__unordered_map_equal<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::equal_to<UScriptCode>,std::hash<UScriptCode>,true>,std::allocator<std::__hash_value_type<UScriptCode,unsigned int>>>::find<UScriptCode>(&LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sMap, &v18);
  v2 = v1;
  v3 = v1 != 0;
  if (v1)
  {
    v4 = *(v1 + 5) & 0xFFFFFF00;
    v5 = *(v1 + 5);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  os_unfair_lock_unlock(&LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sLock);
  v6 = v4 | v5;
  LocaleChangedCount = GetLocaleChangedCount();
  v8 = LocaleChangedCount;
  if (!v2 || LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sLocaleChangedCount != LocaleChangedCount)
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    CreateNormalizedPreferredLanguages(&v17);
    explicit = atomic_load_explicit(&v17, memory_order_acquire);
    if (explicit)
    {
      Count = CFArrayGetCount(explicit);
      if (Count)
      {
        v11 = Count;
        v12 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(explicit, v12);
          v14 = ScriptAndLangSysFromCanonicalLanguageInternal(ValueAtIndex);
          if (v18 == v14)
          {
            break;
          }

          if (v11 == ++v12)
          {
            goto LABEL_14;
          }
        }

        v6 = HIDWORD(v14);
        v3 = 1;
      }
    }

LABEL_14:
    os_unfair_lock_lock_with_options();
    if (LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sLocaleChangedCount != v8)
    {
      std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::clear(&LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sMap);
    }

    if (v3)
    {
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    v16[0] = v18;
    v16[1] = v6;
    std::__hash_table<std::__hash_value_type<UScriptCode,unsigned int>,std::__unordered_map_hasher<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::hash<UScriptCode>,std::equal_to<UScriptCode>,true>,std::__unordered_map_equal<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::equal_to<UScriptCode>,std::hash<UScriptCode>,true>,std::allocator<std::__hash_value_type<UScriptCode,unsigned int>>>::__emplace_unique_key_args<UScriptCode,std::pair<UScriptCode const,unsigned int>>(&LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sMap, v16);
    LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sLocaleChangedCount = v8;
    os_unfair_lock_unlock(&LangSysTagFromPreferredLanguagesForScript(UScriptCode)::sLock);
  }

  return v6;
}

uint64_t ScriptCodeForScriptTag(unsigned int a1)
{
  v10 = a1;
  {
    ScriptCodeForScriptTag::sMap = 0u;
    unk_1EA86BDA0 = 0u;
    dword_1EA86BDB0 = 1065353216;
  }

  os_unfair_lock_lock_with_options();
  v1 = std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>(&ScriptCodeForScriptTag::sMap, &v10);
  if (v1)
  {
    v2 = *(v1 + 5);
  }

  else
  {
    v3 = v10;
    if (v10 == 1145457748)
    {
      LODWORD(v2) = -1;
    }

    else
    {
      LODWORD(v2) = 2;
      while ((v2 & 0x7FFFFFFD) == 0x14 || ScriptTagForScriptCode(v2) != v3)
      {
        LODWORD(v2) = v2 + 1;
        if (v2 == 208)
        {
          v4 = 0;
          v5 = 209;
          do
          {
            LODWORD(v2) = v5;
            v6 = ScriptTagForScriptCode(v5);
            if (v4)
            {
              break;
            }

            v5 = 210;
            v4 = 1;
          }

          while (v6 != v3);
          if (v6 != v3)
          {
            LODWORD(v2) = -1;
          }

          break;
        }
      }
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned int,UScriptCode>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,UScriptCode>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,UScriptCode>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,UScriptCode>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,UScriptCode&>(&ScriptCodeForScriptTag::sMap, &v10);
    v2 = v2;
    if ((v8 & 1) == 0)
    {
      *(v7 + 5) = v2;
    }
  }

  os_unfair_lock_unlock(&ScriptCodeForScriptTag::sLock);
  return v2;
}

uint64_t NameIDForCharacterVariant(TBaseFont *a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = (a2 - 10 * ((205 * a2) >> 11)) | ((205 * a2) >> 11 << 8);
  CommonTable = TBaseFont::GetCommonTable(a1, 1196643650, 0);
  if (CommonTable && (v11 = FeatureParamsForTag<OTL::CharacterVariantFeatureParams>(CommonTable, v9 + 1668689968)) != 0 || (v12 = TBaseFont::GetCommonTable(a1, 1196445523, 0)) != 0 && (v11 = FeatureParamsForTag<OTL::CharacterVariantFeatureParams>(v12, v9 + 1668689968)) != 0)
  {
    v13 = v11;
    v14 = v11[3];
    if ((*(a3 + 2) & 1) == 0)
    {
      *(a3 + 2) = 1;
    }

    *a3 = __rev16(v14);
    v15 = v11[2];
    if ((*(a4 + 2) & 1) == 0)
    {
      *(a4 + 2) = 1;
    }

    *a4 = __rev16(v15);
    std::vector<int,TInlineBufferAllocator<int,30ul>>::resize(a5, bswap32(v11[4]) >> 16);
    v17 = *a5;
    v16 = a5[1];
    if (*a5 != v16)
    {
      v18 = 0;
      v19 = bswap32(v13[5]) >> 16;
      v20 = (v16 - v17 - 4) >> 2;
      v21 = vdupq_n_s64(v20);
      v22 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v23 = (v17 + 8);
      do
      {
        v24 = v19 + v18;
        v25 = vdupq_n_s64(v18);
        v26 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v25, xmmword_18475A340)));
        if (vuzp1_s16(v26, 2).u8[0])
        {
          *(v23 - 2) = (v19 + v18);
        }

        if (vuzp1_s16(v26, 2).i8[2])
        {
          *(v23 - 1) = (v24 + 1);
        }

        if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v25, xmmword_18475AAF0)))).i32[1])
        {
          *v23 = (v24 + 2);
          v23[1] = (v24 + 3);
        }

        v18 += 4;
        v23 += 4;
      }

      while (v22 != v18);
    }

    v27 = bswap32(v13[1]);
    v28 = HIWORD(v27) & 0xFF00;
    v29 = BYTE2(v27);
    v30 = 0x10000;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v30 = 0;
  }

  return v28 | v29 | v30;
}

void std::vector<int,TInlineBufferAllocator<int,30ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<int,TInlineBufferAllocator<int,30ul>>::__append(a1, a2 - v2);
  }
}

char *NameIDForStylisticSet(const TBaseFont *a1, int a2)
{
  result = FeatureParamsForTag<OTL::StylisticSetFeatureParams>(a1, ((a2 - 10 * ((205 * a2) >> 11)) | ((205 * a2) >> 11 << 8)) + 1936928816);
  if (result)
  {
    return ((bswap32(*(result + 1)) >> 16) | 0x10000);
  }

  return result;
}

uint64_t GetCharacterVariantOrStylisticSet(__int16 a1)
{
  v1 = a1 + 10 * HIBYTE(a1) - 16;
  v2 = a1 + 10 * HIBYTE(a1) != 528;
  if (a1 - 48 > 9 || HIBYTE(a1) - 48 > 9)
  {
    v1 = 0;
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

void CopyStaticOTFeatureName(unsigned int *a1@<X1>, int a2@<W0>, void *a3@<X8>)
{
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  if (v6 != v7 && (v8 = v6, CFStringFind(*(v6 + 1), @"%d", 0xCuLL).location == -1))
  {
    if (a1)
    {
      *a1 = (v8 - &CopyStaticOTFeatureName(int,unsigned int *)::kMasterFeatureNameStrings) >> 4;
    }

    v14 = *(v8 + 1);

    CTCopyLocalizedString(v14, @"OpenType", a3);
  }

  else
  {
    v9 = -a2;
    v10 = v9 / 0xC8;
    if (v11 == v12)
    {
LABEL_2:
      *a3 = 0;
      return;
    }

    if (a1)
    {
      *a1 = (v11 - &CopyStaticOTFeatureName(int,unsigned int *)::kMasterFeatureNameStrings) >> 4;
    }

    if (v10 == 36)
    {
      v13 = ((v9 - 7201 + (((v9 - 7201) & 0x8000) >> 15)) >> 1);
    }

    else
    {
      v13 = ~(200 * v10) + v9;
    }

    CTCopyLocalizedString(*(v11 + 1), @"OpenType", &v15);
    CreateLocalizedStringWithFormat(atomic_load_explicit(&v15, memory_order_acquire), a3, v13);
  }
}

char *std::equal_range[abi:fn200100]<anonymous namespace::NameString const*,int,std::greater<int>>(int a1)
{
  result = &CopyStaticOTFeatureName(int,unsigned int *)::kMasterFeatureNameStrings;
  v3 = "mond";
  v4 = 91;
  while (1)
  {
    v5 = v4 >> 1;
    v6 = &result[16 * (v4 >> 1)];
    if (*v6 <= a1)
    {
      break;
    }

    result = v6 + 16;
    v5 = v4 + ~v5;
LABEL_6:
    v4 = v5;
    if (!v5)
    {
      return result;
    }
  }

  if (*v6 < a1)
  {
    v3 = &result[16 * (v4 >> 1)];
    goto LABEL_6;
  }

  if (v4 != 1)
  {
    do
    {
      v7 = v5 >> 1;
      v8 = &result[16 * (v5 >> 1)];
      v10 = *v8;
      v9 = v8 + 16;
      v5 += ~(v5 >> 1);
      if (v10 > a1)
      {
        result = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  v11 = v6 + 16;
  if (v3 != v6 + 16)
  {
    v12 = (v3 - (v6 + 16)) >> 4;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[4 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 4;
      v12 += ~(v12 >> 1);
      if (v16 < a1)
      {
        v12 = v13;
      }

      else
      {
        v11 = v15;
      }
    }

    while (v12);
  }

  return result;
}

void CopyLocalizedOTFeatureName(const __CFString *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = FourCharCodeFromString(a1);
    v4 = &off_1E6E3E338;
    v5 = 128;
    while (*(v4 - 2) != v3)
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    v6 = *v4;

    CTCopyLocalizedString(v6, @"OpenType", a2);
  }

  else
  {
LABEL_9:
    *a2 = 0;
  }
}

uint64_t DefaultSettingForAATFeatureType(int a1)
{
  v1 = &dword_184779F10;
  v2 = 1968;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    v2 -= 12;
    if (v2 == -12)
    {
      return 0;
    }
  }

  while ((*v1 & 2) == 0)
  {
    if (v2)
    {
      v4 = *(v1 + 4);
      v1 += 3;
      v2 -= 12;
      if (v4 == a1)
      {
        continue;
      }
    }

    return 0;
  }

  return *(v1 - 1);
}

uint64_t LangSysForChineseLocale(__CFString *a1)
{
  v1 = 1514686496;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  LanguageIdentifierByNormalizing(a1, 3u, &v12);
  v2 = atomic_load_explicit(&v12, memory_order_acquire);
  v3 = v2;
  if (v2 == @"zh-HK")
  {

    goto LABEL_22;
  }

  if (v2)
  {
    v4 = CFEqual(v2, @"zh-HK");

    if (v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = atomic_load_explicit(&v12, memory_order_acquire);
  v6 = v5;
  if (v5 == @"zh-MO")
  {

    goto LABEL_12;
  }

  if (v5)
  {
    v7 = CFEqual(v5, @"zh-MO");

    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_12:
    v1 = 1514689613;
    goto LABEL_22;
  }

LABEL_14:
  v8 = atomic_load_explicit(&v12, memory_order_acquire);
  v9 = v8;
  if (v8 == @"zh-Hans")
  {
  }

  else
  {
    if (!v8)
    {

LABEL_21:
      v1 = 1514689568;
      goto LABEL_22;
    }

    v10 = CFEqual(v8, @"zh-Hans");

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v1 = 1514689312;
LABEL_22:

  return v1;
}

uint64_t TagByUppercasing(unsigned int a1)
{
  if (HIBYTE(a1) - 97 >= 0x1Au)
  {
    v1 = a1 & 0xFF000000;
  }

  else
  {
    v1 = (a1 & 0xFF000000) - 0x20000000;
  }

  v2 = BYTE2(a1) << 16;
  if (BYTE2(a1) - 97 < 0x1A)
  {
    v2 -= 0x200000;
  }

  v3 = BYTE1(a1) << 8;
  if (BYTE1(a1) - 97 < 0x1A)
  {
    v3 -= 0x2000;
  }

  return v1 | v2 | v3 | 0x20;
}

void ScriptAndLangSysFromScriptCode(UScriptCode,__CFString const*)::$_1::__invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"ay", 0x19);
  CFDictionaryAddValue(Mutable, @"gd", 0x19);
  CFDictionaryAddValue(Mutable, @"gn", 0x19);
  CFDictionaryAddValue(Mutable, @"grc", 0xE);
  CFDictionaryAddValue(Mutable, @"jv", 0x19);
  CFDictionaryAddValue(Mutable, @"ku", 2);
  CFDictionaryAddValue(Mutable, @"la", 0x19);
  CFDictionaryAddValue(Mutable, @"ny", 0x19);
  CFDictionaryAddValue(Mutable, @"qu", 0x19);
  CFDictionaryAddValue(Mutable, @"sa", 0xA);
  CFDictionaryAddValue(Mutable, @"sd", 2);
  CFDictionaryAddValue(Mutable, @"se", 0x19);
  CFDictionaryAddValue(Mutable, @"su", 0x19);
  CFDictionaryAddValue(Mutable, @"tt", 8);
  CFDictionaryAddValue(Mutable, @"tt-Cyrl", 8);
  CFDictionaryAddValue(Mutable, @"mo", 0x19);
  CFDictionaryAddValue(Mutable, @"mo-Cyrl", 8);
  qword_1ED567E40 = Mutable;
}

const char *std::__equal_range[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,LanguageToLangSysMapping const*,LanguageToLangSysMapping const*,unsigned int,std::__identity>(unsigned int a1)
{
  result = kLanguageToLangSysMappings;
  v3 = &kLanguageToLangSysMappings[6352];
  v4 = 794;
  while (1)
  {
    v5 = v4 >> 1;
    v6 = &result[8 * (v4 >> 1)];
    if (*v6 >= a1)
    {
      break;
    }

    result = v6 + 8;
    v5 = v4 + ~v5;
LABEL_6:
    v4 = v5;
    if (!v5)
    {
      return result;
    }
  }

  if (*v6 > a1)
  {
    v3 = &result[8 * (v4 >> 1)];
    goto LABEL_6;
  }

  if (v4 != 1)
  {
    do
    {
      v7 = v5 >> 1;
      v8 = &result[8 * (v5 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v5 += ~(v5 >> 1);
      if (v10 < a1)
      {
        result = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  v11 = v6 + 8;
  if (v3 != v6 + 8)
  {
    v12 = (v3 - (v6 + 8)) >> 3;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 > a1)
      {
        v12 = v13;
      }

      else
      {
        v11 = v15;
      }
    }

    while (v12);
  }

  return result;
}

void std::vector<int,TInlineBufferAllocator<int,30ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v12 = (a1 + 144);
      v11 = *(a1 + 144);
      v13 = v11 + 4 * v10;
      if (v13 > a1 + 144)
      {
        if (!(v10 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *v12 = v13;
    }

    else
    {
      v11 = 0;
    }

    v14 = (v11 + 4 * (v7 >> 2));
    v15 = v11 + 4 * v10;
    bzero(v14, 4 * a2);
    memcpy(&v14[-4 * (v7 >> 2)], v6, v7);
    v16 = *a1;
    *a1 = &v14[-4 * (v7 >> 2)];
    *(a1 + 8) = &v14[4 * a2];
    v17 = *(a1 + 16);
    *(a1 + 16) = v15;
    if (v16)
    {
      if (a1 + 24 > v16 || (v18 = (a1 + 144), a1 + 144 <= v16))
      {

        operator delete(v16);
      }

      else if (v17 == *v18)
      {
        *v18 = v16;
      }
    }
  }
}

unsigned __int16 *std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,std::__equal_to &>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != v9)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v30 = a1[4];
      v31 = a1[5];
      v32 = *a1;
      v33 = a1[1];
      v34 = v30 < v32;
      if (v30 == v32)
      {
        v34 = v31 < v33;
      }

      v35 = *(a2 - 4);
      v8 = v35 == v30;
      v36 = v35 < v30;
      if (v8)
      {
        v36 = *(a2 - 3) < v31;
      }

      if (!v34)
      {
        if (v36)
        {
          v47 = *(a1 + 3);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 4) = v30;
          *(a2 - 3) = v31;
          *(a2 - 1) = v47;
          v48 = a1[4];
          v49 = *a1;
          v50 = a1[1];
          v8 = v48 == v49;
          v51 = v48 < v49;
          if (v8)
          {
            v51 = a1[5] < v50;
          }

          if (v51)
          {
            v52 = *(a1 + 1);
            *a1 = *(a1 + 1);
            a1[4] = v49;
            a1[5] = v50;
            *(a1 + 3) = v52;
          }
        }

        return 1;
      }

      v10 = *(a1 + 1);
      if (v36)
      {
        *a1 = *(a2 - 1);
      }

      else
      {
        *a1 = *(a1 + 1);
        a1[4] = v32;
        a1[5] = v33;
        *(a1 + 3) = v10;
        v57 = *(a2 - 4);
        v8 = v57 == v32;
        v58 = v57 < v32;
        if (v8)
        {
          v58 = *(a2 - 3) < v33;
        }

        if (!v58)
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
      }

      *(a2 - 4) = v32;
      *(a2 - 3) = v33;
LABEL_55:
      *(a2 - 1) = v10;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *,0>(a1, a1 + 4, a1 + 8, a1 + 12);
        v11 = *(a2 - 4);
        v12 = a1[12];
        v13 = a1[13];
        v8 = v11 == v12;
        v14 = v11 < v12;
        if (v8)
        {
          v14 = *(a2 - 3) < v13;
        }

        if (v14)
        {
          v15 = *(a1 + 7);
          *(a1 + 3) = *(a2 - 1);
          *(a2 - 4) = v12;
          *(a2 - 3) = v13;
          *(a2 - 1) = v15;
          v16 = a1[12];
          v17 = a1[8];
          v18 = a1[9];
          v8 = v16 == v17;
          v19 = v16 < v17;
          if (v8)
          {
            v19 = a1[13] < v18;
          }

          if (v19)
          {
            v20 = *(a1 + 5);
            v21 = *(a1 + 3);
            *(a1 + 2) = v21;
            a1[12] = v17;
            a1[13] = v18;
            *(a1 + 7) = v20;
            v22 = a1[4];
            v23 = a1[5];
            v24 = v23 > WORD1(v21);
            if (v22 != v21)
            {
              v24 = v22 > v21;
            }

            if (v24)
            {
              v25 = *(a1 + 3);
              *(a1 + 1) = v21;
              a1[8] = v22;
              a1[9] = v23;
              *(a1 + 5) = v25;
              v26 = *a1;
              v27 = a1[1];
              v28 = v26 > v21;
              if (v26 == v21)
              {
                v28 = v27 > WORD1(v21);
              }

              if (v28)
              {
                v29 = *(a1 + 1);
                *a1 = v21;
                a1[4] = v26;
                a1[5] = v27;
                *(a1 + 3) = v29;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_31;
    }

    std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *,0>(a1, a1 + 4, a1 + 8, a2 - 4);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 4);
    v6 = *a1;
    v7 = a1[1];
    v8 = v5 == v6;
    v9 = v5 < v6;
    if (v8)
    {
      v9 = *(a2 - 3) < v7;
    }

    if (!v9)
    {
      return 1;
    }

    v10 = *(a1 + 1);
    *a1 = *(a2 - 1);
    *(a2 - 4) = v6;
    *(a2 - 3) = v7;
    goto LABEL_55;
  }

LABEL_31:
  v37 = a1 + 8;
  v38 = a1[8];
  v39 = a1[4];
  v40 = a1[5];
  v41 = *a1;
  v42 = a1[1];
  if (v39 == v41)
  {
    v43 = v40 < v42;
  }

  else
  {
    v43 = v39 < v41;
  }

  v44 = a1[9];
  v45 = v44 < v40;
  if (v38 != v39)
  {
    v45 = v38 < v39;
  }

  if (v43)
  {
    v46 = *(a1 + 1);
    if (v45)
    {
      *a1 = *(a1 + 2);
LABEL_60:
      a1[8] = v41;
      a1[9] = v42;
      *(a1 + 5) = v46;
      goto LABEL_61;
    }

    *a1 = *(a1 + 1);
    a1[4] = v41;
    a1[5] = v42;
    *(a1 + 3) = v46;
    v8 = v38 == v41;
    v59 = v38 < v41;
    if (v8)
    {
      v59 = v44 < v42;
    }

    if (v59)
    {
      *(a1 + 1) = *(a1 + 2);
      goto LABEL_60;
    }
  }

  else if (v45)
  {
    v53 = *(a1 + 3);
    v54 = *(a1 + 2);
    *(a1 + 1) = v54;
    a1[8] = v39;
    a1[9] = v40;
    *(a1 + 5) = v53;
    v55 = v42 > WORD1(v54);
    if (v41 != v54)
    {
      v55 = v41 > v54;
    }

    if (v55)
    {
      v56 = *(a1 + 1);
      *a1 = v54;
      a1[4] = v41;
      a1[5] = v42;
      *(a1 + 3) = v56;
    }
  }

LABEL_61:
  v60 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v61 = 0;
  v62 = 0;
  while (1)
  {
    v63 = *v60;
    v64 = *v37;
    v65 = v60[1] < v37[1];
    v8 = v63 == v64;
    v66 = v63 < v64;
    if (!v8)
    {
      v65 = v66;
    }

    if (v65)
    {
      v67 = *v60;
      v68 = *v60;
      v69 = v61;
      while (1)
      {
        v70 = a1 + v69;
        *(a1 + v69 + 24) = *(a1 + v69 + 16);
        if (v69 == -16)
        {
          break;
        }

        v71 = *(v70 + 4);
        v72 = *(v70 + 5) > WORD1(v67);
        v8 = v71 == v68;
        v73 = v71 > v68;
        if (!v8)
        {
          v72 = v73;
        }

        v69 -= 8;
        if (!v72)
        {
          v74 = (a1 + v69 + 24);
          goto LABEL_73;
        }
      }

      v74 = a1;
LABEL_73:
      *v74 = v67;
      if (++v62 == 8)
      {
        return v60 + 4 == a2;
      }
    }

    v37 = v60;
    v61 += 8;
    v60 += 4;
    if (v60 == a2)
    {
      return 1;
    }
  }
}

void GetDefaultFeatureList<true>(void)::{lambda(void *)#1}::__invoke()
{
  for (i = 0; i != 495; i += 3)
  {
    *v1 = *&kMasterFeatureMap[i];
    *&v1[8] = kMasterFeatureMap[i + 2];
    if ((*&v1[4] & 0x2600000000) == 0x200000000)
    {
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<UScriptCode,unsigned int>,std::__unordered_map_hasher<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::hash<UScriptCode>,std::equal_to<UScriptCode>,true>,std::__unordered_map_equal<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::equal_to<UScriptCode>,std::hash<UScriptCode>,true>,std::allocator<std::__hash_value_type<UScriptCode,unsigned int>>>::find<UScriptCode>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<UScriptCode,unsigned int>,std::__unordered_map_hasher<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::hash<UScriptCode>,std::equal_to<UScriptCode>,true>,std::__unordered_map_equal<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::equal_to<UScriptCode>,std::hash<UScriptCode>,true>,std::allocator<std::__hash_value_type<UScriptCode,unsigned int>>>::__emplace_unique_key_args<UScriptCode,std::pair<UScriptCode const,unsigned int>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<UScriptCode,unsigned int>,std::__unordered_map_hasher<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::hash<UScriptCode>,std::equal_to<UScriptCode>,true>,std::__unordered_map_equal<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::equal_to<UScriptCode>,std::hash<UScriptCode>,true>,std::allocator<std::__hash_value_type<UScriptCode,unsigned int>>>::__emplace_unique_key_args<UScriptCode,std::pair<UScriptCode,unsigned int>>(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,UScriptCode>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,UScriptCode>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,UScriptCode>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,UScriptCode>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,UScriptCode&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

char *FeatureParamsForTag<OTL::CharacterVariantFeatureParams>(const __CFData *a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    return 0;
  }

  v5 = BytePtr;
  v6 = CFDataGetBytePtr(a1);
  v7 = v6 ? &v6[CFDataGetLength(a1)] : 0;
  if (!*(v5 + 6))
  {
    return 0;
  }

  v8 = __rev16(*(v5 + 6));
  v9 = (v5 + v8);
  v10 = v5 + v8 + 2;
  if (v10 > v7)
  {
    return 0;
  }

  v11 = *v9;
  v12 = __rev16(v11);
  v13 = v12 + 2 * v12;
  v14 = v10 + 2 * v13;
  if (v14 < v10 || v14 > v7)
  {
    v16 = (v7 - v10) / 6;
    if ((v9 + 4) > v7)
    {
      v16 = 0;
    }

    if (v16 != v12)
    {
      return 0;
    }
  }

  if (!*(v5 + 8))
  {
    return 0;
  }

  v17 = (v5 + __rev16(*(v5 + 8)));
  v18 = v17 + 1;
  if ((v17 + 1) > v7)
  {
    return 0;
  }

  v21 = bswap32(*v17) >> 16;
  v22 = &v18[v21];
  v23 = (v17 + 2) <= v7 ? (v7 - v18) >> 1 : 0;
  v24 = v22 <= v7 && v22 >= v18;
  if (!v24 && v23 != v21)
  {
    return 0;
  }

  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[2] = v26;
  v42[3] = v26;
  v42[0] = v26;
  v42[1] = v26;
  memset(v41, 0, sizeof(v41));
  v43 = v42;
  if (!v11)
  {
    goto LABEL_35;
  }

  v27 = 2 * v13;
  v28 = (v8 + v5 + 6);
  while (bswap32(*(v28 - 1)) != a2)
  {
    v28 += 3;
    v27 -= 6;
    if (!v27)
    {
      goto LABEL_35;
    }
  }

  v29 = (v9 + (bswap32(*v28) >> 16));
  v30 = v29 + 2;
  v31 = (v29 + 1) < v5 || v30 > v7;
  if (!v31 && ((v32 = bswap32(v29[1]) >> 16, v33 = &v30[v32], (v29 + 3) <= v7) ? (v34 = (v7 - v30) >> 1) : (v34 = 0), v33 <= v7 ? (v35 = v33 >= v30) : (v35 = 0), !v35 ? (v36 = v34 == v32) : (v36 = 1), v36))
  {
    v37 = *v29;
    v38 = v29 + (bswap32(v37) >> 16);
    if ((v38 + 14) > v7 || v37 == 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v38;
    }
  }

  else
  {
LABEL_35:
    v19 = 0;
  }

  v40 = v41;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v40);
  return v19;
}

__n128 std::__function::__func<NumberOfGlyphVariants(TBaseFont const&,unsigned int)::$_0,std::allocator<NumberOfGlyphVariants(TBaseFont const&,unsigned int)::$_0>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF259588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<NumberOfGlyphVariants(TBaseFont const&,unsigned int)::$_0,std::allocator<NumberOfGlyphVariants(TBaseFont const&,unsigned int)::$_0>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::operator()(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (**(a1 + 8) == *a2 && *(*a3 + 2))
  {
    v4 = 2 * __rev16(*(*a3 + 2));
    v5 = (*a3 + 4);
    do
    {
      v6 = *v5++;
      v8 = bswap32(v6) >> 16;
      STL::insert_sorted<TInlineVector<unsigned short,30ul>>(*(a1 + 16), &v8);
      v4 -= 2;
    }

    while (v4);
  }

  return 1;
}

char *STL::insert_sorted<TInlineVector<unsigned short,30ul>>(void *a1, char *a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v5 = &v3[-*a1] >> 1;
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[2 * (v5 >> 1)];
      v9 = *v7;
      v8 = (v7 + 2);
      v5 += ~(v5 >> 1);
      if (v9 < *a2)
      {
        v4 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    v3 = v4;
  }

  return std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::insert(a1, v3, a2);
}

char *std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      a1[1] = v6 + 2;
      return v4;
    }

    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 2;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
      v9 = a1[1];
    }

    if (v9 >= v4)
    {
      v24 = v9 <= a3 || v4 > a3;
      v25 = 2;
      if (v24)
      {
        v25 = 0;
      }

      *v4 = *&a3[v25];
      return v4;
    }

    __break(1u);
LABEL_27:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v10 = *a1;
  v11 = &v6[-*a1] >> 1;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v12;
  v28 = v12;
  if (v11 <= -2)
  {
    goto LABEL_27;
  }

  v13 = __src - v10;
  v14 = v7 - v10;
  if (v14 <= v11 + 1)
  {
    v15 = v11 + 1;
  }

  else
  {
    v15 = v14;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v15;
  }

  std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(&v27, v16, v13 >> 1, (a1 + 3));
  std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::emplace_back<unsigned short const&>(&v27, a3);
  v17 = *(&v27 + 1);
  memcpy(v28, v4, a1[1] - v4);
  v18 = *a1;
  v19 = *(&v27 + 1);
  *&v28 = v28 + a1[1] - v4;
  a1[1] = v4;
  v20 = v4 - v18;
  v21 = (v19 - (v4 - v18));
  memcpy(v21, v18, v20);
  v22 = *a1;
  *a1 = v21;
  v23 = a1[2];
  *(a1 + 1) = v28;
  *&v28 = v22;
  *(&v28 + 1) = v23;
  *&v27 = v22;
  *(&v27 + 1) = v22;
  std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(&v27);
  return v17;
}

uint64_t *std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::emplace_back<unsigned short const&>(uint64_t *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v10 = &v4[-*result];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 1;
      }

      v25 = 0xAAAAAAAAAAAAAAAALL;
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23 = v12;
      v24 = v12;
      std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(&v23, v11, v11 >> 2, result[4]);
      v14 = v3[1];
      v13 = v3[2];
      v15 = v24;
      v16 = v13 - v14;
      if (v13 != v14)
      {
        v17 = (v24 + v16);
        v18 = v3[1];
        do
        {
          v19 = *v18++;
          *v15++ = v19;
          v16 -= 2;
        }

        while (v16);
        v15 = v17;
      }

      v20 = *v3;
      *v3 = v23;
      *&v23 = v20;
      *(&v23 + 1) = v14;
      v21 = v3[3];
      v22 = *(&v24 + 1);
      v3[2] = v15;
      v3[3] = v22;
      *&v24 = v13;
      *(&v24 + 1) = v21;
      result = std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(&v23);
      v4 = v3[2];
    }

    else
    {
      v7 = ((v6 >> 1) + 1) / -2;
      v8 = &v5[-(((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL)];
      v9 = v4 - v5;
      if (v4 != v5)
      {
        result = memmove(&v5[-(((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL)], v5, v4 - v5);
        v5 = v3[1];
      }

      v4 = &v8[v9];
      v3[1] = &v5[2 * v7];
    }
  }

  *v4 = *a2;
  v3[2] = (v4 + 2);
  return result;
}

__n128 std::__function::__func<NumberOfGlyphVariants(TBaseFont const&,unsigned int)::$_1,std::allocator<NumberOfGlyphVariants(TBaseFont const&,unsigned int)::$_1>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2595D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<NumberOfGlyphVariants(TBaseFont const&,unsigned int)::$_1,std::allocator<NumberOfGlyphVariants(TBaseFont const&,unsigned int)::$_1>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 > v5)
  {
    return 1;
  }

  v6 = **(a1 + 8);
  v7 = **(a1 + 16);
  v8 = v6 + 6;
  if (v6 + 8 <= v7)
  {
    v9 = (v7 - (v6 + 6)) >> 1;
  }

  else
  {
    v9 = 0;
  }

  if (v7 >= v8)
  {
    v10 = *a4;
    v11 = *(a1 + 24);
    v12 = v5 + 1;
    v13 = *a2;
    while (1)
    {
      v14 = v13 - v4 + v10;
      v15 = bswap32(*(v6 + 4)) >> 16;
      v16 = v8 + 2 * v15;
      if (v16 < v8 || v16 > v7)
      {
        if (v15 <= v14 || v9 != v15)
        {
          return 0;
        }
      }

      else if (v15 <= v14)
      {
        return 0;
      }

      v19 = (v6 + (bswap32(*(v8 + 2 * (v13 - v4 + v10))) >> 16));
      v20 = v19 + 1;
      if ((v19 + 1) > v7)
      {
        return 0;
      }

      v21 = bswap32(*v19) >> 16;
      v22 = &v20[v21];
      v23 = (v19 + 2) <= v7 ? (v7 - v20) >> 1 : 0;
      v24 = v22 <= v7 && v22 >= v20;
      if (!v24 && v23 != v21)
      {
        return 0;
      }

      v26 = *v11;
      if (v26 <= v21)
      {
        LOWORD(v26) = v21;
      }

      *v11 = v26;
      if (v12 == ++v13)
      {
        return 1;
      }
    }
  }

  return 0;
}

TRunReorder *TTruncator::TruncateEndWhitespace(TTruncator *this, double a2)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  *(v3 + 72) = *(v4 + 72);
  TTruncator::TruncateEndChars(this, *(v4 + 80) + *(v4 + 72), a2, v3, &v9);

  return TTruncator::HandleLeveledRuns(this, v5, v6, v7);
}

void TTruncator::TruncateWithToken(TTruncator *this, double a2, const void **a3, CTLineTruncationType a4, const __CTLine *a5)
{
  v8 = *(this + 3);
  v7 = *(this + 4);
  v10 = *(v8 + 72);
  v9 = *(v8 + 80);
  v51 = -86;
  v11 = *(a5 + 5);
  v12 = *this + a2 - *(v11 + 104);
  *(v7 + 9) = v10;
  *(v7 + 10) = v9;
  if (a4 == kCTLineTruncationMiddle)
  {
    v19 = v12 * 0.5;
    v50 = -86;
    v20 = TTruncator::TruncateEndChars(this, v9 + v10, v12 * 0.5, v7, &v50);
    v22 = v21;
    v23 = v19 + *this;
    v49 = -86;
    started = TTruncator::TruncateStartChars(this, v10, v23, a3, &v49);
    if (v20 + v22 >= started + v25)
    {
      v26 = started + v25;
    }

    else
    {
      v26 = v20 + v22;
    }

    if (started <= v20 && v20 < started + v25)
    {
      v47 = v26 - v20;
    }

    else if (v20 <= started && started < v20 + v22)
    {
      v47 = v26 - started;
      v20 = started;
    }

    else
    {
      v20 = 0;
      v47 = 0;
    }

    v48 = v20;
    v29 = v50;
    if (v50 <= v49)
    {
      v29 = v49;
    }

    v51 = ((v29 ^ (*(v11 + 152) >> 3)) & 1) + v29;
    goto LABEL_24;
  }

  if (a4 == kCTLineTruncationEnd)
  {
    v16 = TTruncator::TruncateEndChars(this, v9 + v10, v12, v7, &v51);
    v47 = v17;
    v48 = v16;
LABEL_24:
    v15 = (*(*(this + 4) + 24) - *(*(this + 4) + 16)) >> 3;
    goto LABEL_25;
  }

  if (a4)
  {
    v47 = 0xAAAAAAAAAAAAAAAALL;
    v48 = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAABLL;
  }

  else
  {
    v13 = TTruncator::TruncateStartChars(this, v10, v12, v7, &v51);
    v47 = v14;
    v48 = v13;
    v15 = 0;
  }

LABEL_25:
  v45 = (*(v11 + 24) - *(v11 + 16)) >> 3;
  v46 = *(v11 + 80);
  v30 = v45 - 1;
  if (v45 >= 1)
  {
    v31 = v51;
    v32 = v48 - *(v11 + 72);
    do
    {
      v52 = 0xAAAAAAAAAAAAAAAALL;
      v33 = *(v11 + 16);
      if (v30 >= (*(v11 + 24) - v33) >> 3)
      {
        goto LABEL_39;
      }

      (*(*(v33 + 8 * v30) + 56))(&v52);
      v34 = *(atomic_load_explicit(&v52, memory_order_acquire) + 48);
      v35 = [*(v34 + 216) copyWithRange:{*(v34 + 200), *(v34 + 208)}];

      *(v34 + 216) = v35;
      *(v34 + 200) = 0;
      *(v34 + 8) += v32;
      [v35 puntStringIndicesInRange:0 by:{*(v34 + 208), v32}];
      if (*(v34 + 224) != v31)
      {
        *(v34 + 224) = v31;
      }

      TLine::InsertRun(*(this + 4), v15, atomic_load_explicit(&v52, memory_order_acquire));

      v36 = v30-- + 1;
    }

    while (v36 > 1);
  }

  if (v47 > 0)
  {
    v37 = *(this + 4);
    if ((*(v37 + 24) - *(v37 + 16)) >= 1 && (v48 + v46 - 1) >= 0)
    {
      RunWithCharIndex = TLine::FindRunWithCharIndex(v37, v48 + v46 - 1, 1);
      v39 = *(*(this + 4) + 16);
      if (RunWithCharIndex >= (*(*(this + 4) + 24) - v39) >> 3)
      {
LABEL_39:
        __break(1u);
        return;
      }

      v40 = *(*(v39 + 8 * RunWithCharIndex) + 48);
      if (v45 <= 0)
      {
        v41 = [*(v40 + 216) copyWithRange:{*(v40 + 200), *(v40 + 208)}];

        *(v40 + 216) = v41;
        *(v40 + 200) = 0;
      }

      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v40, v48 + v46 - 1);
      [*(v40 + 216) setAttachmentCount:objc_msgSend(*(v40 + 216) atIndex:{"attachmentCountAtIndex:", *(v40 + 200) + GlyphIndexForChar) + v47 - v46, *(v40 + 200) + GlyphIndexForChar}];
      *(v40 + 8) = v42;
      *(v40 + 16) = v43 + v47 - v46;
    }
  }
}

unint64_t TTruncator::AppendLine(unint64_t this, const TLine *a2)
{
  v2 = (*(a2 + 3) - *(a2 + 2)) >> 3;
  if (v2 >= 1)
  {
    v4 = this;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 2);
      if (v5 >= (*(a2 + 3) - v6) >> 3)
      {
        break;
      }

      this = TLine::InsertPartialRun(*(v4 + 32), (*(*(v4 + 32) + 24) - *(*(v4 + 32) + 16)) >> 3, *(v6 + 8 * v5), *(*(*(v6 + 8 * v5) + 40) + 8), *(*(*(v6 + 8 * v5) + 40) + 16));
      if (v2 == ++v5)
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

CFIndex TTruncator::TruncateStartChars(TTruncator *this, CFIndex a2, double a3, const void **a4, BOOL *a5)
{
  v5 = *(this + 3);
  v65 = *(v5 + 72);
  v66.location = a2;
  v6 = *(v5 + 80) + v65;
  *a5 = (*(v5 + 152) & 8) != 0;
  v7 = v6 - a2;
  if (v6 == a2)
  {
    return v66.location;
  }

  v64 = v6;
  v11 = v6 - 1;
  if (v7 >= 1)
  {
    v12 = 0;
    v13 = MEMORY[0x1E695F060];
    while (1)
    {
      RunWithCharIndex = TLine::FindRunWithCharIndex(*(this + 3), v11, 1);
      v15 = *(*(this + 3) + 16);
      if (RunWithCharIndex >= (*(*(this + 3) + 24) - v15) >> 3)
      {
        goto LABEL_59;
      }

      v16 = RunWithCharIndex;
      v17 = *(*(v15 + 8 * RunWithCharIndex) + 40);
      v18 = *(v17 + 8);
      if (v18 < v66.location)
      {
        goto LABEL_18;
      }

      v19 = *(v17 + 16);
      v20 = *(v17 + 192);
      v21 = *(v17 + 312);
      if (!v21)
      {
        v21 = v13;
      }

      v22 = *v21;
      Table = GetTable();
      v24 = 0.0002;
      if (Table)
      {
        v25 = *(Table + 8);
        v24 = 0.0002;
        if (v25)
        {
          v24 = *v25;
        }
      }

      if (v20 + v22 - a3 > v24)
      {
        *a5 = *(v17 + 224);
        goto LABEL_18;
      }

      v12 += v19;
      v26 = *(v17 + 312);
      if (!v26)
      {
        v26 = v13;
      }

      a3 = a3 - (*(v17 + 192) + *v26);
      v11 = v18 - 1;
      if (v12 >= v7)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = 0;
  v16 = 0;
  v17 = 0;
LABEL_18:
  v27 = v7 - v12;
  if (v7 - v12 >= 1)
  {
    v28 = *(*(this + 3) + 16);
    if (v16 >= (*(*(this + 3) + 24) - v28) >> 3)
    {
      goto LABEL_59;
    }

    v29 = *(v28 + 8 * v16);
    v17 = *(v29 + 40);
    v67.location = v66.location;
    v67.length = v7 - v12;
    v30 = TRun::CountCharsInWidth(v17, v67, a3, -1);
    if (v30 >= 1)
    {
      v31 = v30;
      TTruncator::AppendTruncatedRun(this, a4, v29, v11 - v30 + 1, v30, 0);
      v27 -= v31;
      v32 = a4[2];
      if (a4[3] - v32 >= 1)
      {
        v33 = *v32;
        v34 = *(*v32 + 40);
        TRun::GetLeadingWhitespace(v34, &v66.length);
        length = v66.length;
        if (v66.length >= 1)
        {
          v36 = v33;
          v37 = v34[1];
          v38 = v34[2];
          TLine::ClearLine(a4);
          if (v38 > length)
          {
            TTruncator::AppendTruncatedRun(this, a4, v33, v37 + length, v38 - length, 0);
          }

          v27 += length;
          TLine::SyncWithRuns(a4);
        }
      }
    }
  }

  v39 = *(v17 + 16) + *(v17 + 8);
  if (a4[3] == a4[2])
  {
    v46 = *(*(this + 3) + 80) + *(*(this + 3) + 72);
    while (v39 < v46)
    {
      v47 = TLine::FindRunWithCharIndex(*(this + 3), v39, 1);
      v48 = *(*(this + 3) + 16);
      if (v47 >= (*(*(this + 3) + 24) - v48) >> 3)
      {
        goto LABEL_59;
      }

      v49 = *(v48 + 8 * v47);
      v50 = *(v49 + 40);
      TRun::GetLeadingWhitespace(v50, &v66.length);
      if (!v66.length)
      {
        break;
      }

      v27 += v66.length;
      v51 = v50[2];
      if (v51 > v66.length)
      {
        v61 = v50[1];
        TTruncator::AppendTruncatedRun(this, a4, v49, v61 + v66.length, v51 - v66.length, 0);
        v39 = v61 + v51;
        TLine::SyncWithRuns(a4);
        break;
      }

      v39 += v51;
    }
  }

  v40 = (*(***(this + 3) + 40))(**(this + 3), v27 + v66.location - 1, 2);
  if (v40 + v41 >= v64)
  {
    v42 = v64;
  }

  else
  {
    v42 = v40 + v41;
  }

  if (v65 <= v40 && v40 < v64)
  {
    v45 = v42 - v40;
  }

  else if (v40 <= v65 && v65 < v40 + v41)
  {
    v45 = v42 - v65;
    v40 = v65;
  }

  else
  {
    v40 = 0;
    v45 = 0;
  }

  v52 = v40 + v45;
  if (v27 + v66.location >= v40 + v45)
  {
    goto LABEL_54;
  }

  if (a4[3] - a4[2] >= 1)
  {
    TLine::ClearLine(a4);
  }

  v53 = TLine::FindRunWithCharIndex(*(this + 3), v52, 1);
  v54 = *(*(this + 3) + 16);
  if (v53 >= (*(*(this + 3) + 24) - v54) >> 3)
  {
LABEL_59:
    __break(1u);
    return v66.location;
  }

  v55 = *(v54 + 8 * v53);
  v39 = *(*(v55 + 40) + 16) + *(*(v55 + 40) + 8);
  if (v39 <= v52)
  {
    v39 = v52;
  }

  else
  {
    TTruncator::AppendTruncatedRun(this, a4, v55, v52, v39 - v52, 0);
  }

LABEL_54:
  v56 = *(*(this + 3) + 80) + *(*(this + 3) + 72);
  while (v39 < v56)
  {
    v57 = TLine::FindRunWithCharIndex(*(this + 3), v39, 1);
    v58 = *(*(this + 3) + 16);
    if (v57 >= (*(*(this + 3) + 24) - v58) >> 3)
    {
      goto LABEL_59;
    }

    v59 = *(v58 + 8 * v57);
    v60 = *(v59 + 40);
    TLine::InsertPartialRun(a4, (a4[3] - a4[2]) >> 3, v59, *(v60 + 8), *(v60 + 16));
    v39 += *(v60 + 16);
  }

  return v66.location;
}

TRunReorder *TTruncator::AppendToken(TLine **this, CFRange a2, double a3)
{
  length = a2.length;
  location = a2.location;
  TTruncator::TruncateEndChars(this, a2.location, a3, this[4], &v11);
  result = TTruncator::NoRunAdded(this, 0, 0, -1, a3);
  if ((result & 1) == 0)
  {
    result = TTruncator::CreateAndAppendToken(this, location, length, 1.79769313e308, 0, 0);
    if (result)
    {

      return TTruncator::HandleLeveledRuns(this, v8, v9, v10);
    }
  }

  return result;
}

uint64_t TAATPropTable::MirrorGlyph(TAATPropTable *this, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *(this + 3);
  v5 = *(this + 4);
  v6 = (this + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v7 = v4(v6, v3);
  if ((v7 & 0x1000) != 0)
  {
    v8 = (v7 >> 8) | 0xF8;
    if (((v7 >> 8) & 8) == 0)
    {
      LOBYTE(v8) = BYTE1(v7) & 0xF;
    }

    *a2 += v8;
  }

  return (v7 >> 12) & 1;
}

CFTypeID CTGlyphInfoGetTypeID(void)
{
  if (TCFBase<TNativeGlyphInfo>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TNativeGlyphInfo>::GetTypeID(void)::once, 0, TCFBase<TNativeGlyphInfo>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TNativeGlyphInfo>::fTypeID;
}

CTGlyphInfoRef CTGlyphInfoCreateWithGlyphName(CFStringRef glyphName, CTFontRef font, CFStringRef baseString)
{
  v5[2] = font;
  v5[3] = glyphName;
  v5[1] = baseString;
  if (!glyphName)
  {
    return 0;
  }

  v3 = 0;
  if (font && baseString)
  {
    if (TFont::GetGlyphWithName(*(font + 5), glyphName))
    {
      v5[0] = 0xAAAAAAAAAAAAAAAALL;
      TCFBase_NEW<CTGlyphInfo,__CFString const*&,__CTFont const*&,__CFString const*&>(v5);
      v3 = atomic_exchange(v5, 0);

      return v3;
    }

    return 0;
  }

  return v3;
}

void *TCFBase_NEW<CTGlyphInfo,__CFString const*&,__CTFont const*&,__CFString const*&>@<X0>(void *a1@<X8>)
{
  result = TCFBase<TNativeGlyphInfo>::Allocate();
  if (result)
  {
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 6;
    operator new();
  }

  *a1 = 0;
  return result;
}

CTGlyphInfoRef CTGlyphInfoCreateWithGlyph(CGGlyph glyph, CTFontRef font, CFStringRef baseString)
{
  v3 = 0;
  v8 = glyph;
  v6 = baseString;
  v7 = font;
  if (font && baseString)
  {
    if (TBaseFont::GetGlyphCount(*(*(font + 5) + 408)) <= glyph)
    {
      return 0;
    }

    else
    {
      v5 = 0xAAAAAAAAAAAAAAAALL;
      TCFBase_NEW<CTGlyphInfo,unsigned short &,__CTFont const*&,__CFString const*&>(&v8, &v7, &v6, &v5);
      v3 = atomic_exchange(&v5, 0);
    }
  }

  return v3;
}

void *TCFBase_NEW<CTGlyphInfo,unsigned short &,__CTFont const*&,__CFString const*&>@<X0>(unsigned __int16 *a1@<X0>, const __CTFont **a2@<X1>, const __CFString **a3@<X2>, void *a4@<X8>)
{
  result = TCFBase<TNativeGlyphInfo>::Allocate();
  if (result)
  {
    v9 = *a1;
    v10 = *a2;
    v11 = *a3;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 6;
    TNativeGlyphInfo::TNativeGlyphInfo((result + 6), v9, v10, v11);
  }

  *a4 = 0;
  return result;
}

CTGlyphInfoRef CTGlyphInfoCreateWithCharacterIdentifier(CGFontIndex cid, CTCharacterCollection collection, CFStringRef baseString)
{
  v3 = 0;
  v7 = cid;
  v6 = collection;
  v5[1] = baseString;
  if (collection <= kCTCharacterCollectionAdobeKorea1 && cid != 0xFFFF && baseString)
  {
    v5[0] = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTGlyphInfo,unsigned short &,CTCharacterCollection &,__CFString const*&>(v5);
    v3 = atomic_exchange(v5, 0);
  }

  return v3;
}

void *TCFBase_NEW<CTGlyphInfo,unsigned short &,CTCharacterCollection &,__CFString const*&>@<X0>(void *a1@<X8>)
{
  result = TCFBase<TNativeGlyphInfo>::Allocate();
  if (result)
  {
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 6;
    operator new();
  }

  *a1 = 0;
  return result;
}

CFStringRef CTGlyphInfoGetGlyphName(CTGlyphInfoRef glyphInfo)
{
  if (!glyphInfo)
  {
    return 0;
  }

  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  TGlyphInfo::TGlyphInfo(v4, glyphInfo);
  v1 = **(atomic_load_explicit(v4, memory_order_acquire) + 40);
  v2 = (*(*v1 + 32))(v1);

  return v2;
}

CGFontIndex CTGlyphInfoGetCharacterIdentifier(CTGlyphInfoRef glyphInfo)
{
  if (!glyphInfo)
  {
    return -1;
  }

  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  TGlyphInfo::TGlyphInfo(v4, glyphInfo);
  v1 = **(atomic_load_explicit(v4, memory_order_acquire) + 40);
  v2 = (*(*v1 + 40))(v1);

  return v2;
}

CTCharacterCollection CTGlyphInfoGetCharacterCollection(CTGlyphInfoRef glyphInfo)
{
  if (!glyphInfo)
  {
    return 0;
  }

  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  TGlyphInfo::TGlyphInfo(v4, glyphInfo);
  v1 = **(atomic_load_explicit(v4, memory_order_acquire) + 40);
  v2 = (*(*v1 + 48))(v1);

  return v2;
}

unint64_t _CTGlyphInfoGetBaseString(id a1)
{
  if (!a1)
  {
    return 0;
  }

  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  TGlyphInfo::TGlyphInfo(v3, a1);
  explicit = atomic_load_explicit((**(atomic_load_explicit(v3, memory_order_acquire) + 40) + 8), memory_order_acquire);

  return explicit;
}

const void *_CTGlyphInfoGetFont(id a1)
{
  if (!a1)
  {
    return 0;
  }

  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  TGlyphInfo::TGlyphInfo(v5, a1);
  v1 = **(atomic_load_explicit(v5, memory_order_acquire) + 40);
  v2 = (*(*v1 + 24))(v1);
  v3 = _CTFontEnsureFontRef(v2);

  return v3;
}

CGGlyph CTGlyphInfoGetGlyph(CTGlyphInfoRef glyphInfo)
{
  if (!glyphInfo)
  {
    return 0;
  }

  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  TGlyphInfo::TGlyphInfo(v4, glyphInfo);
  v1 = **(atomic_load_explicit(v4, memory_order_acquire) + 40);
  v2 = (*(*v1 + 16))(v1);

  return v2;
}

Class TCFBase<TNativeGlyphInfo>::GetTypeID(void)::{lambda(void *)#1}::__invoke()
{
  TCFBase<TNativeGlyphInfo>::CreateTypeID();
  v0 = TCFBase<TNativeGlyphInfo>::fTypeID;

  return _CTGlyphInfoEnableBridging(v0);
}

uint64_t TCFBase<TNativeGlyphInfo>::CreateTypeID()
{
  {
    TCFBase<TNativeGlyphInfo>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED566F68 = "CTGlyphInfo";
    qword_1ED566F70 = 0;
    unk_1ED566F78 = 0;
    qword_1ED566F80 = TCFBase<TNativeGlyphInfo>::ClassDestruct;
    qword_1ED566F88 = TCFBase<TNativeGlyphInfo>::ClassEqual;
    qword_1ED566F90 = TCFBase<TNativeGlyphInfo>::ClassHash;
    unk_1ED566F98 = 0;
    qword_1ED566FA0 = TCFBase<TNativeGlyphInfo>::ClassDebug;
    unk_1ED566FA8 = 0;
    qword_1ED566FB0 = 0;
    unk_1ED566FB8 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TNativeGlyphInfo>::fTypeID = result;
  return result;
}

uint64_t TCFBase<TNativeGlyphInfo>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 40);
  result = *v3;
  *v3 = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void *TCFBase<TNativeGlyphInfo>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

uint64_t TCFBase<TNativeGlyphInfo>::ClassDebug(uint64_t a1)
{
  result = (*(***(a1 + 40) + 72))(**(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s: %p>{%@}", "CTGlyphInfo", a1, result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t TCFBase<TNativeGlyphInfo>::Allocate()
{
  if (TCFBase<TNativeGlyphInfo>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TNativeGlyphInfo>::GetTypeID(void)::once, 0, TCFBase<TNativeGlyphInfo>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

BOOL TNativeGlyphInfo::GlyphInfo::operator==(uint64_t a1, uint64_t a2)
{
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v3 = atomic_load_explicit((a2 + 8), memory_order_acquire);
  if (explicit == v3)
  {
    return 1;
  }

  if (explicit)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5 && CFEqual(explicit, v3) != 0;
}

uint64_t TNativeGlyphInfo::IdentityGlyphInfo::GetGlyphForFont(atomic_ullong *this, TFont **a2, CFTypeRef cf1)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit == cf1)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v6 = 0;
  if (!cf1)
  {
LABEL_11:
    LODWORD(v7) = 0;
    v8 = 0;
    return v7 | v6 | v8;
  }

  LODWORD(v7) = 0;
  v8 = 0;
  if (explicit)
  {
    v9 = CFEqual(cf1, explicit);
    v6 = 0;
    if (a2)
    {
      LODWORD(v7) = 0;
      v8 = 0;
      if (!v9)
      {
        return v7 | v6 | v8;
      }

LABEL_8:
      v7 = atomic_load_explicit(this + 3, memory_order_acquire);
      if (!v7)
      {
        v6 = 0;
        goto LABEL_14;
      }

      if (TFont::Compare(a2[5], *(atomic_load_explicit(this + 3, memory_order_acquire) + 40), 1))
      {
        LODWORD(v7) = this[2] & 0xFF00;
        v6 = *(this + 8);
        v8 = 0x10000;
        return v7 | v6 | v8;
      }

LABEL_12:
      v6 = 0;
      LODWORD(v7) = 0;
LABEL_14:
      v8 = 0;
      return v7 | v6 | v8;
    }

    goto LABEL_11;
  }

  return v7 | v6 | v8;
}

uint64_t TNativeGlyphInfo::IdentityGlyphInfo::operator==(atomic_ullong *a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  v5 = atomic_load_explicit(a2 + 1, memory_order_acquire);
  if (explicit == v5)
  {
LABEL_7:
    v8 = (*(*a1 + 16))(a1);
    if (v8 == (*(*a2 + 16))(a2))
    {
      v9 = (*(*a1 + 24))(a1);
      v10 = (*(*a2 + 24))(a2);
      if (v9 == v10)
      {
        return 1;
      }

      if (v9)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        return CFEqual(v9, v10) != 0;
      }
    }

    return 0;
  }

  if (explicit)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    result = CFEqual(explicit, v5);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  return 0;
}

TNativeGlyphInfo::NamedGlyphInfo *TNativeGlyphInfo::NamedGlyphInfo::NamedGlyphInfo(TNativeGlyphInfo::NamedGlyphInfo *this, __CFString *a2, TFont **a3, id a4)
{
  GlyphWithName = 0;
  if (a2 && a3)
  {
    GlyphWithName = TFont::GetGlyphWithName(a3[5], a2);
  }

  *this = &unk_1EF259678;
  v9 = a4;
  *this = &unk_1EF2596D8;
  *(this + 1) = v9;
  *(this + 8) = GlyphWithName;
  *(this + 3) = a3;
  *this = &unk_1EF259618;
  *(this + 4) = a2;
  return this;
}

uint64_t TNativeGlyphInfo::NamedGlyphInfo::operator==(atomic_ullong *a1, atomic_ullong *a2)
{
  result = TNativeGlyphInfo::IdentityGlyphInfo::operator==(a1, a2);
  if (result)
  {
    v5 = (*(*a1 + 32))(a1);
    v6 = (*(*a2 + 32))(a2);
    if (v5 == v6)
    {
      return 1;
    }

    else
    {
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      return !v7 && CFEqual(v5, v6) != 0;
    }
  }

  return result;
}

uint64_t TNativeGlyphInfo::CIDGlyphInfo::GetGlyphForFont(atomic_ullong *this, const __CTFont *a2, CFTypeRef cf1)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit == cf1)
  {
LABEL_5:
    if (*(this + 9))
    {
      v12 = 0xAAAAAAAAAAAAAAAALL;
      (*(**(*(a2 + 5) + 408) + 504))(&v12);
      if (atomic_load_explicit(&v12, memory_order_acquire))
      {
        atomic_load_explicit(&v12, memory_order_acquire);
        if (CGFontGetRegistryOrderingSupplement())
        {
          v9 = TNativeGlyphInfo::CIDGlyphInfo::GetGlyphForFont(__CTFont const*,__CFString const*)const::kOrderingTable[*(this + 9) - 1];
          if (CFEqual(0xAAAAAAAAAAAAAAAALL, @"Adobe"))
          {
            if (CFEqual(0xAAAAAAAAAAAAAAAALL, v9))
            {
              atomic_load_explicit(&v12, memory_order_acquire);
              if (CGFontGetGlyphsForCIDs())
              {
                LOBYTE(v6) = -86;
                v7 = 43520;

LABEL_16:
                v8 = 0x10000;
                return v8 | v7 | v6;
              }
            }
          }
        }
      }
    }

    else if (a2)
    {
      v10 = *(this + 8);
      if (TBaseFont::GetGlyphCount(*(*(a2 + 5) + 408)) > v10)
      {
        v6 = *(this + 8);
        v7 = v6 & 0xFF00;
        goto LABEL_16;
      }
    }

LABEL_17:
    LOBYTE(v6) = 0;
    v7 = 0;
    v8 = 0;
    return v8 | v7 | v6;
  }

  LOBYTE(v6) = 0;
  v7 = 0;
  v8 = 0;
  if (cf1 && explicit)
  {
    if (!CFEqual(cf1, explicit))
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  return v8 | v7 | v6;
}

uint64_t TNativeGlyphInfo::CIDGlyphInfo::operator==(atomic_ullong *a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  v5 = atomic_load_explicit(a2 + 1, memory_order_acquire);
  if (explicit != v5)
  {
    if (explicit)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    result = CFEqual(explicit, v5);
    if (!result)
    {
      return result;
    }
  }

  v8 = (*(*a1 + 40))(a1);
  if (v8 == (*(*a2 + 40))(a2))
  {
    v9 = (*(*a1 + 48))(a1);
    return v9 == (*(*a2 + 48))(a2);
  }

  return 0;
}

void TNativeGlyphInfo::GlyphInfo::~GlyphInfo(id *this)
{
  *this = &unk_1EF259678;
}

{
  *this = &unk_1EF259678;

  JUMPOUT(0x1865F22D0);
}

void TNativeGlyphInfo::IdentityGlyphInfo::~IdentityGlyphInfo(id *this)
{
  *this = &unk_1EF2596D8;

  *this = &unk_1EF259678;
}

{
  *this = &unk_1EF2596D8;

  *this = &unk_1EF259678;

  JUMPOUT(0x1865F22D0);
}

void TNativeGlyphInfo::NamedGlyphInfo::~NamedGlyphInfo(id *this)
{
  *this = &unk_1EF259618;

  *this = &unk_1EF2596D8;
  *this = &unk_1EF259678;
}

{
  *this = &unk_1EF259618;

  *this = &unk_1EF2596D8;
  *this = &unk_1EF259678;

  JUMPOUT(0x1865F22D0);
}

void TNativeGlyphInfo::CIDGlyphInfo::~CIDGlyphInfo(id *this)
{
  *this = &unk_1EF259678;
}

{
  *this = &unk_1EF259678;

  JUMPOUT(0x1865F22D0);
}

void TGlyphInfo::TGlyphInfo(TGlyphInfo *this, id a2)
{
  *this = a2;
  v4 = CFGetTypeID(a2);
  TypeID = CTGlyphInfoGetTypeID();
  *(this + 8) = v4 == TypeID;
  if (v4 != TypeID)
  {
    explicit = atomic_load_explicit(this, memory_order_acquire);
    v11 = [explicit _baseString];
    if ((atomic_load_explicit(&qword_1ED568080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED568080))
    {
      _MergedGlobals_28 = objc_lookUpClass("NSCIDGlyphInfo");
      __cxa_guard_release(&qword_1ED568080);
    }

    if ((atomic_load_explicit(&qword_1ED568090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED568090))
    {
      qword_1ED568088 = objc_lookUpClass("NSGlyphNameGlyphInfo");
      __cxa_guard_release(&qword_1ED568090);
    }

    if ((atomic_load_explicit(&qword_1ED5680A0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1ED5680A0))
      {
        qword_1ED568098 = objc_lookUpClass("NSIdentityGlyphInfo");
        __cxa_guard_release(&qword_1ED5680A0);
      }
    }

    if ([explicit isKindOfClass_])
    {
      LOWORD(v9) = [explicit characterIdentifier];
      LOWORD(v8) = [explicit characterCollection];
      TCFBase_NEW<CTGlyphInfo,unsigned short &,CTCharacterCollection &,__CFString const*&>(&v10);

      v7 = v10;
    }

    else if ([explicit isKindOfClass_])
    {
      v10 = [explicit glyphName];
      v9 = _CTFontEnsureFontRef([explicit _font]);
      TCFBase_NEW<CTGlyphInfo,__CFString const*&,__CTFont const*&,__CFString const*&>(&v8);

      v7 = v8;
    }

    else
    {
      if (![explicit isKindOfClass_])
      {
        return;
      }

      LOWORD(v8) = [explicit _glyph];
      v10 = _CTFontEnsureFontRef([explicit _font]);
      TCFBase_NEW<CTGlyphInfo,unsigned short &,__CTFont const*&,__CFString const*&>(&v8, &v10, &v11, &v9);

      v7 = v9;
    }
  }
}

uint64_t TGlyphInfo::GetGlyphForFont(TGlyphInfo *this, const __CTFont *a2, const __CFString *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    a2 = _CTFontEnsureFontRef(a2);
  }

  v5 = **(atomic_load_explicit(this, memory_order_acquire) + 40);
  return (*(*v5 + 56))(v5, a2, a3) & 0xFFFFFF;
}

void CreateSetWithArray(const __CFArray *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a1];
  *a2 = atomic_exchange(&v3, 0);
}

void SetValuesToDictionaryFromDictionary(__CFDictionary *context, CFDictionaryRef theDict)
{
  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, SetValuesToDictionaryFromDictionary(__CFDictionary *,__CFDictionary const*)::$_0::__invoke, context);
  }
}

void ArrayComponentsJoinedByString(const __CFArray *a1@<X0>, const __CFString *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [(__CFArray *)a1 componentsJoinedByString:a2];

  objc_autoreleasePoolPop(v6);
}

atomic_ullong *TCFUniqueRemappingArray::TCFUniqueRemappingArray(atomic_ullong *a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  *a1 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  std::__function::__value_func<objc_object * ()(objc_object *)>::__value_func[abi:fn200100]((a1 + 1), a3);
  if (a2)
  {
    v7 = objc_autoreleasePoolPush();
    Mutable = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = std::function<objc_object * ()(objc_object *)>::operator()((a1 + 1), *(*(&v15 + 1) + 8 * v12));
          if (!CFSetContainsValue(Mutable, v13))
          {
            CFArrayAppendValue(atomic_load_explicit(a1, memory_order_acquire), v13);
            CFSetAddValue(Mutable, v13);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(v7);
  }

  return a1;
}

uint64_t std::function<objc_object * ()(objc_object *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:fn200100]();
  return EnumerateCharactersInRange(v4);
}

void EnumerateCharactersInRange(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v41 = a2;
  v42 = a3;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v9;
  v37 = v9;
  v34 = v9;
  v35 = v9;
  v32 = v9;
  v33 = v9;
  *buffer = v9;
  v31 = v9;
  v40 = CStringPtr;
  v43 = 0;
  v44 = 0;
  if (a3 < 1)
  {
LABEL_50:

    return;
  }

  v10 = 0;
  while (1)
  {
    if (v10 < 0 || (v11 = v42, v42 <= v10))
    {
      v13 = 0;
LABEL_11:
      v14 = 1;
      v15 = v10;
      goto LABEL_12;
    }

    if (CharactersPtr)
    {
      v12 = CharactersPtr[v41 + v10];
    }

    else if (v40)
    {
      v12 = v40[v41 + v10];
    }

    else
    {
      if (v44 <= v10 || (v17 = v43, v43 > v10))
      {
        v18 = v10 - 4;
        if (v10 < 4)
        {
          v18 = 0;
        }

        if (v18 + 64 < v42)
        {
          v11 = v18 + 64;
        }

        v43 = v18;
        v44 = v11;
        v48.length = v11 - v18;
        v48.location = v41 + v18;
        CFStringGetCharacters(v38, v48, buffer);
        v17 = v43;
      }

      v12 = buffer[v10 - v17];
    }

    v13 = v12;
    if (v12 >> 10 != 54)
    {
      goto LABEL_11;
    }

    v19 = v10 + 1;
    if (v10 + 1 >= a3)
    {
      goto LABEL_11;
    }

    v20 = v42;
    if (v42 <= v19)
    {
      goto LABEL_11;
    }

    if (CharactersPtr)
    {
      v21 = CharactersPtr[v41 + v19];
    }

    else if (v40)
    {
      v21 = v40[v41 + v19];
    }

    else
    {
      if (v44 <= v19 || (v22 = v43, v43 > v19))
      {
        v23 = v10 - 3;
        if (v19 < 4)
        {
          v23 = 0;
        }

        if (v23 + 64 < v42)
        {
          v20 = v23 + 64;
        }

        v43 = v23;
        v44 = v20;
        v49.length = v20 - v23;
        v49.location = v41 + v23;
        CFStringGetCharacters(v38, v49, buffer);
        v22 = v43;
      }

      v21 = buffer[v19 - v22];
    }

    v24 = v21 >> 10 == 55;
    v25 = (v13 << 10) + v21 - 56613888;
    v14 = 1;
    if (v24)
    {
      v14 = 2;
    }

    if (v24)
    {
      v13 = v25;
    }

    v15 = v24 ? v10 + 1 : v10;
LABEL_12:
    v29 = 0;
    v47[0] = v10 + a2;
    v47[1] = v14;
    v46 = v13;
    v45 = &v29;
    v16 = *(a4 + 24);
    if (!v16)
    {
      break;
    }

    (*(*v16 + 48))(v16, v47, &v46, &v45);
    if ((v29 & 1) == 0)
    {
      v10 = v15 + 1;
      if (v15 + 1 < a3)
      {
        continue;
      }
    }

    goto LABEL_50;
  }

  v26 = std::__throw_bad_function_call[abi:fn200100]();
  RangeOfCharactersFromSet(v26, v27, v50, v28);
}

CFIndex RangeOfCharactersFromSet(const __CFString *a1, const __CFCharacterSet *a2, CFRange a3, CFStringCompareFlags a4)
{
  length = a3.length;
  location = a3.location;
  v10[4] = *MEMORY[0x1E69E9840];
  v8 = a2;
  result = xmmword_18477A8A0;
  if (CFStringFindCharacterFromSet(a1, a2, a3, a4, &result))
  {
    v10[0] = &unk_1EF259798;
    v10[1] = &v8;
    v10[2] = &result;
    v10[3] = v10;
    EnumerateCharactersInRange(a1, result.length + result.location, location + length - (result.length + result.location), v10);
    std::__function::__value_func<void ()(CFRange,unsigned int,BOOL *)>::~__value_func[abi:fn200100](v10);
  }

  return result.location;
}

void CreateStringByDeletingLongCharactersPassingTest(__CFString *a1@<X0>, uint64_t a2@<X1>, __CFString **a3@<X8>)
{
  if (!a1)
  {
    *a3 = 0;
    return;
  }

  Length = CFStringGetLength(a1);
  v48 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v6;
  v40 = v6;
  v37 = v6;
  v38 = v6;
  v35 = v6;
  v36 = v6;
  *buffer = v6;
  v34 = v6;
  theString = a1;
  v44 = 0;
  v45 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v42 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v46 = 0;
  v47 = 0;
  v43 = CStringPtr;
  if (Length >= 1)
  {
    v9 = 0;
    v10 = *MEMORY[0x1E695E480];
    while ((v9 & 0x8000000000000000) == 0)
    {
      v11 = v45;
      if (v45 <= v9)
      {
        break;
      }

      if (v42)
      {
        v12 = v42[v44 + v9];
      }

      else if (v43)
      {
        v12 = v43[v44 + v9];
      }

      else
      {
        if (v47 <= v9 || (v20 = v46, v46 > v9))
        {
          v21 = v9 - 4;
          if (v9 < 4)
          {
            v21 = 0;
          }

          if (v21 + 64 < v45)
          {
            v11 = v21 + 64;
          }

          v46 = v21;
          v47 = v11;
          v52.length = v11 - v21;
          v52.location = v44 + v21;
          CFStringGetCharacters(theString, v52, buffer);
          v20 = v46;
        }

        v12 = buffer[v9 - v20];
      }

      v13 = v12;
      if (v12 >> 10 != 54)
      {
        goto LABEL_11;
      }

      v22 = v9 + 1;
      if (v9 + 1 >= Length)
      {
        goto LABEL_11;
      }

      v23 = v45;
      if (v45 <= v22)
      {
        goto LABEL_11;
      }

      if (v42)
      {
        v24 = v42[v44 + v22];
      }

      else if (v43)
      {
        v24 = v43[v44 + v22];
      }

      else
      {
        if (v47 <= v22 || (v25 = v46, v46 > v22))
        {
          v26 = v9 - 3;
          if (v22 < 4)
          {
            v26 = 0;
          }

          if (v26 + 64 < v45)
          {
            v23 = v26 + 64;
          }

          v46 = v26;
          v47 = v23;
          v53.length = v23 - v26;
          v53.location = v44 + v26;
          CFStringGetCharacters(theString, v53, buffer);
          v25 = v46;
        }

        v24 = buffer[v22 - v25];
      }

      v27 = v24 >> 10 == 55;
      v28 = (v13 << 10) + v24 - 56613888;
      if (v27)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      if (v27)
      {
        v13 = v28;
      }

      if (v27)
      {
        v15 = v9 + 1;
      }

      else
      {
        v15 = v9;
      }

LABEL_12:
      v16 = *(a2 + 24);
      v50[0] = v9;
      v50[1] = v14;
      v49 = v13;
      if (!v16)
      {
        v30 = std::__throw_bad_function_call[abi:fn200100]();
        CreateLocalizedStringWithFormat(v30, v31);
        return;
      }

      if ((*(*v16 + 48))(v16, v50, &v49))
      {
        if (!atomic_load_explicit(&v48, memory_order_acquire))
        {
        }

        v51.location = v9;
        v51.length = v14;
        CFStringDelete(atomic_load_explicit(&v48, memory_order_acquire), v51);
        Length -= v14;
        explicit = atomic_load_explicit(&v48, memory_order_acquire);
        theString = explicit;
        v44 = 0;
        v45 = Length;
        v18 = CFStringGetCharactersPtr(explicit);
        v19 = 0;
        v42 = v18;
        if (!v18)
        {
          v19 = CFStringGetCStringPtr(explicit, 0x600u);
        }

        v43 = v19;
        v15 -= v14;
        v46 = 0;
        v47 = 0;
      }

      v9 = v15 + 1;
      if (v15 + 1 >= Length)
      {
        goto LABEL_55;
      }
    }

    v13 = 0;
LABEL_11:
    v14 = 1;
    v15 = v9;
    goto LABEL_12;
  }

LABEL_55:
  if (atomic_load_explicit(&v48, memory_order_acquire))
  {
    v29 = atomic_exchange(&v48, 0);
  }

  else
  {
    v29 = a1;
  }

  *a3 = v29;
}

void CreateLocalizedStringWithFormat(const __CFString *a1@<X0>, void *a2@<X8>, ...)
{
  va_start(va, a2);
  va_copy(v6, va);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [v4 initWithFormat:a1 locale:objc_msgSend(MEMORY[0x1E695DF58] arguments:"currentLocale"), v6];
  *a2 = atomic_exchange(&v5, 0);
}

void CreateNumberFromString(const __CFString *a1@<X0>, CFNumberRef *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *a2 = 0;
    return;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v4;
  v19[1] = v4;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v20 = v19;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v8 = MaximumSizeForEncoding + 1;
    v9 = v16;
    if (MaximumSizeForEncoding + 1 <= (v17 - v16))
    {
      if (MaximumSizeForEncoding + 1 < (v17 - v16))
      {
        v17 = &v16[v8];
      }
    }

    else
    {
      std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v16, MaximumSizeForEncoding + 1 - (v17 - v16));
      v9 = v16;
    }

    if (!CFStringGetCString(a1, v9, v8, 0x8000100u))
    {
      goto LABEL_14;
    }

    CStringPtr = v16;
    if (!v16)
    {
      goto LABEL_14;
    }
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v10 = strtol_l(CStringPtr, &v14, 10, 0);
  if (v14 != CStringPtr && !*v14)
  {
    valuePtr = *&v10;
    v12 = *MEMORY[0x1E695E480];
    v13 = kCFNumberLongType;
LABEL_17:
    *a2 = CFNumberCreate(v12, v13, &valuePtr);
    goto LABEL_18;
  }

  v11 = strtod_l(CStringPtr, &v14, 0);
  if (v14 != CStringPtr && !*v14)
  {
    valuePtr = v11;
    v12 = *MEMORY[0x1E695E480];
    v13 = kCFNumberDoubleType;
    goto LABEL_17;
  }

LABEL_14:
  *a2 = 0;
LABEL_18:
  valuePtr = COERCE_DOUBLE(&v16);
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
}

void CreateOrderedArray(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v7;
  v18[1] = v7;
  std::__function::__value_func<objc_object * ()(objc_object *)>::__value_func[abi:fn200100](v17, a3);
  TCFUniqueRemappingArray::TCFUniqueRemappingArray(v18, a1, v17);
  std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v17);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(a2);
        }

        TCFUniqueRemappingArray::AppendUnique(v18, *(*(&v12 + 1) + 8 * i));
      }

      v9 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  *a4 = atomic_exchange(v18, 0);
  std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v18 + 8);
}

BOOL TCFUniqueRemappingArray::AppendUnique(atomic_ullong *this, objc_object *a2)
{
  v3 = std::function<objc_object * ()(objc_object *)>::operator()((this + 1), a2);
  explicit = atomic_load_explicit(this, memory_order_acquire);
  v7.length = CFArrayGetCount(atomic_load_explicit(this, memory_order_acquire));
  v7.location = 0;
  v5 = CFArrayContainsValue(explicit, v7, v3);
  if (!v5)
  {
    CFArrayAppendValue(atomic_load_explicit(this, memory_order_acquire), v3);
  }

  return v5 == 0;
}

void CreateSortedArrayWithOrdering(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  context = objc_autoreleasePoolPush();
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = v7;
  v36[1] = v7;
  std::__function::__value_func<objc_object * ()(objc_object *)>::__value_func[abi:fn200100](v35, a3);
  TCFUniqueRemappingArray::TCFUniqueRemappingArray(v36, a1, v35);
  std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v35);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = std::function<objc_object * ()(objc_object *)>::operator()(a3, *(*(&v28 + 1) + 8 * i));
        v13 = std::function<objc_object * ()(objc_object *)>::operator()(v36 + 8, v12);
        explicit = atomic_load_explicit(v36, memory_order_acquire);
        v39.length = CFArrayGetCount(atomic_load_explicit(v36, memory_order_acquire));
        v39.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(explicit, v39, v13);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(atomic_load_explicit(v36, memory_order_acquire), FirstIndexOfValue);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v12);
        }
      }

      v9 = [a2 countByEnumeratingWithState:&v28 objects:v34 count:{16, context}];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = atomic_load_explicit(v36, memory_order_acquire);
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:{16, context}];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), *(*(&v24 + 1) + 8 * j));
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v18);
  }

  std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v36 + 8);

  objc_autoreleasePoolPop(contexta);
  *a4 = atomic_exchange(&Mutable, 0);
}

void CopyPreferredAndSystemLanguages(void *a1@<X8>)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2 = CFLocaleCopyPreferredLanguages();
  v3[0] = &unk_1EF2597E0;
  v3[3] = v3;
  CreateOrderedArray(v2, [MEMORY[0x1E695DF58] systemLanguages], v3, a1);
  std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v3);
}

void CopyValueForCurrentUser(const __CFDictionary *a1@<X0>, const __CFString **a2@<X1>, atomic_ullong *a3@<X8>)
{
  if (a1)
  {
    v6 = [(__CFDictionary *)a1 allKeys];
    v7 = [MEMORY[0x1E695DF58] preferredLanguages];
    if (([v7 containsObject:@"en"] & 1) == 0)
    {
      v7 = [v7 arrayByAddingObject:@"en"];
    }

    v8 = CFBundleCopyLocalizationsForPreferences(v6, v7);
    *a3 = 0;
    v9 = v8;
    if (v9)
    {
      v10 = v9;
      Count = CFArrayGetCount(v9);

      if (Count)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
        v13 = ValueAtIndex;
        if (a2)
        {
          *a2 = ValueAtIndex;
        }

        Value = CFDictionaryGetValue(a1, v13);
        TCFRef<__CTFont const*>::Retain(a3, Value);
      }
    }

    else
    {
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t std::__function::__value_func<objc_object * ()(objc_object *)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

__n128 std::__function::__func<RangeOfCharactersFromSet(__CFString const*,__CFCharacterSet const*,CFRange,unsigned long)::$_0,std::allocator<RangeOfCharactersFromSet(__CFString const*,__CFCharacterSet const*,CFRange,unsigned long)::$_0>,void ()(CFRange,unsigned int,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF259798;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<RangeOfCharactersFromSet(__CFString const*,__CFCharacterSet const*,CFRange,unsigned long)::$_0,std::allocator<RangeOfCharactersFromSet(__CFString const*,__CFCharacterSet const*,CFRange,unsigned long)::$_0>,void ()(CFRange,unsigned int,BOOL *)>::operator()(uint64_t a1, uint64_t a2, UTF32Char *a3, _BYTE **a4)
{
  v5 = *(a2 + 8);
  v6 = *a4;
  result = CFCharacterSetIsLongCharacterMember(**(a1 + 8), *a3);
  if (result)
  {
    *(*(a1 + 16) + 8) += v5;
  }

  else
  {
    *v6 = 1;
  }

  return result;
}

uint64_t ArabicShapingEngine::ApplyScriptShaping(ArabicShapingEngine *this, const OTL::GSUB *a2, OTL::GlyphLookups *a3, unsigned int *a4, BOOL *a5)
{
  v7 = a2;
  v33 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  JoiningScriptShapingEngine::ApplyScriptShaping(this, a2, a3, a5);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v8;
  v29 = v8;
  v28 = v8;
  v27 = v8;
  v26 = v8;
  v25 = v8;
  v24 = v8;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = &v24;
  v18 = 1919707495;
  v9 = v20;
  OTL::FeatureBuffer::FeatureBuffer(v20, &v18, 1);
  OTL::GCommon::GetLookups(v7, v20, &v21, 0);
  v19 = v20;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v19);
  v10 = v21;
  v11 = v22;
  while (v10 != v11)
  {
    v12 = *v10++;
    v9 = v9 & 0xFFFFFFFF00000000 | v12;
    OTL::GlyphLookups::SetLookupInRange<true>(a3, v9, 0, -1);
  }

  v20[0] = &v21;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v20);
  if (OTL::GCommon::HasFeature(v7, 0x72636C74u))
  {
    *a4 = xmmword_18477A8C0;
  }

  else
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30 = v13;
    v29 = v13;
    v28 = v13;
    v27 = v13;
    v26 = v13;
    v25 = v13;
    v24 = v13;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v31 = 0xAAAAAAAAAAAAAAAALL;
    v32 = &v24;
    v18 = 1667329140;
    OTL::FeatureBuffer::FeatureBuffer(v20, &v18, 1);
    OTL::GCommon::GetLookups(v7, v20, &v21, 0);
    v19 = v20;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v19);
    v14 = v21;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14++;
      v7 = v7 & 0xFFFFFFFF00000000 | v16;
      OTL::GlyphLookups::SetLookupInRange<true>(a3, v7, 0, -1);
    }

    *a4 = 1836279156;
    v20[0] = &v21;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v20);
  }

  return 1;
}

id CTCopyDescriptionDictionary(void *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CTFrameGetTypeID())
  {
    v5 = a1[5];

    return TFrame::CopyDescriptionDictionary(v5, a2);
  }

  else
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CTLineGetTypeID())
    {
      v8 = a1[5];

      return TLine::CopyDescriptionDictionary(v8, a2);
    }

    else
    {
      v9 = CFGetTypeID(a1);
      if (v9 == CTRunGetTypeID())
      {
        v10 = *(*a1[5] + 16);

        return v10();
      }

      else
      {
        return 0;
      }
    }
  }
}

void CTWriteDescriptionDictionaryToFile(void *a1, uint64_t a2, const char *a3)
{
  v4 = CTCopyDescriptionDictionary(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E695E480];
    v7 = strlen(a3);
    v8 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], a3, v7, 0);
    if (v8)
    {
      v9 = v8;
      v10 = CFWriteStreamCreateWithFile(v6, v8);
      if (v10)
      {
        v11 = v10;
        if (CFWriteStreamOpen(v10))
        {
          CFPropertyListWrite(v5, v11, kCFPropertyListXMLFormat_v1_0, 0, 0);
          CFWriteStreamClose(v11);
        }

        CFRelease(v11);
      }

      CFRelease(v9);
    }

    CFRelease(v5);
  }
}

uint64_t PointerToEpsilonDestructor(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1865F22D0);
  }

  return result;
}

uint64_t __CTStringIsSuitableForVerticalLayout_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [CTStringIsSuitableForVerticalLayout::nonCJKRegex enumerateMatchesInString:MEMORY[0x1E69E9820] options:3221225472 range:__CTStringIsSuitableForVerticalLayout_block_invoke_2 usingBlock:{&unk_1E6E3E3E0, a1[4], a7}];
  if (*a7 == 1)
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  else
  {
    v10 = a1[7];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 24);
    if (v10 && v12 == v10)
    {
      *(*(a1[5] + 8) + 24) = 0;
      *a7 = 1;
    }

    else
    {
      *(v11 + 24) = v12 + 1;
    }
  }

  return result;
}

void __CTStringIsSuitableForVerticalLayout_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [a2 range];
  [a2 range];
  v9 = v8;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v10;
  v16[3] = v10;
  v16[0] = v10;
  v16[1] = v10;
  memset(buffer, 0, sizeof(buffer));
  v17 = v16;
  v11 = *(a1 + 32);
  CharactersPtr = CFStringGetCharactersPtr(v11);
  if (CharactersPtr)
  {
    v13 = &CharactersPtr[v7];
  }

  else
  {
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::resize(buffer, v9);
    v19.location = v7;
    v19.length = v9;
    CFStringGetCharacters(v11, v19, buffer[0]);
    v13 = buffer[0];
  }

  if (!u_stringHasBinaryProperty(v13, v9, UCHAR_RGI_EMOJI))
  {
    *a4 = 1;
    **(a1 + 40) = 1;
  }

  v14 = buffer;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v14);
}

uint64_t CTStringIsSuitableForArabicJustification(const __CFString *a1)
{
  v13[154] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Length = CFStringGetLength(a1);
    if (Length >= 1)
    {
      v3 = Length;
      v11 = 0;
      keys = &v11;
      v13[0] = 0;
      v4 = _ExuberatedGroupForPreferredLanguages(0, v13);

      if (v4)
      {
        LanguageIdentifierByNormalizing(atomic_load_explicit(&v11, memory_order_acquire), 0, &v10);
        explicit = atomic_load_explicit(&v10, memory_order_acquire);
        if (explicit == @"ur")
        {
          v7 = v10;
LABEL_18:

LABEL_19:
          return 0;
        }

        if (explicit)
        {
          v6 = CFEqual(explicit, @"ur");

          if (v6)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v7 = CTFontCreateWithNameAndOptions(@".SFArabic-Regular", 0.0, 0, 0x400uLL);
      if (v7)
      {
        if (qword_1ED5680C0 != -1)
        {
          dispatch_once_f(&qword_1ED5680C0, v7, CTStringIsSuitableForArabicJustification::$_0::__invoke);
        }

        if (_MergedGlobals_30)
        {
          result.location = 0xAAAAAAAAAAAAAAAALL;
          result.length = 0xAAAAAAAAAAAAAAAALL;
          v14.location = 0;
          v14.length = v3;
          if (!CFStringFindCharacterFromSet(a1, _MergedGlobals_30, v14, 0, &result))
          {
            operator new();
          }
        }
      }

      goto LABEL_18;
    }
  }

  return 0;
}

const __CFString *CTIsExuberatedLanguage(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    result = CFStringGetLength(result);
    if (result)
    {
      return (GetExuberatedGroupForLanguage(v1, 0) != 0);
    }
  }

  return result;
}

const __CFString *CTEnumerateKnownUrduSequencesInString(const __CFString *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    return EnumerateKnownUrduSequencesInString(result, a2, a3, 1, a4);
  }

  return result;
}

CTFontRef CTFontCreateCopyForKnownUrduSequences(uint64_t a1)
{
  v2 = CTFontCopyPhysicalFont(a1);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = *(&kFontUrduDecoNastaleeq + 5 * (((*(**(v5 + 51) + 160))(*(v5 + 51)) >> 1) & 1));
    v7 = *(v5 + 6);
    if (!v7)
    {
      v7 = MEMORY[0x1E695EFD0];
    }

    v9 = v7[1];
    v8 = v7[2];
    v13[0] = *v7;
    v13[1] = v9;
    v13[2] = v8;
    v10 = vandq_s8(vceqq_f64(v13[0], xmmword_18475BD80), vandq_s8(vceqq_f64(v9, xmmword_18475A330), vceqzq_f64(v8)));
    if (vandq_s8(v10, vdupq_laneq_s64(v10, 1)).i64[0] >= 0)
    {
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }

    v5 = CTFontCreateWithNameAndOptions(v6, *(v5 + 3), v11, 0x20000400uLL);
  }

  return v5;
}

unint64_t CTCopyLanguageIdentifierNormalizedForPresetFallbacks(__CFString *a1)
{
  LanguageIdentifierByNormalizing(a1, 0, &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

unint64_t CTCopyLanguageIdentifierNormalizedForLocalizedNames(__CFString *a1)
{
  LanguageIdentifierByNormalizing(a1, 1u, &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

unint64_t CTCopyLanguageIdentifierNormalizedForFontCollection(__CFString *a1)
{
  LanguageIdentifierByNormalizing(a1, 2u, &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

unint64_t CTCopyLanguageIdentifierNormalizedForShaping(__CFString *a1)
{
  LanguageIdentifierByNormalizing(a1, 3u, &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

uint64_t _CTEnumerateScriptRanges(uint64_t result)
{
  v1[4] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1[0] = &unk_1EF2598A0;
    v1[1] = result;
    v1[3] = v1;
    TOpenTypeMorph::EnumerateScriptRanges(v1);
    return std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100](v1);
  }

  return result;
}

uint64_t CTStringIsSuitableForVerticalLayout::$_0::__invoke(CTStringIsSuitableForVerticalLayout::$_0 *this, void *a2)
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  result = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[^  [[\\p{Hani}\\p{Hira}\\p{Kana}\\p{Hang}]--\\p{vo=R}]  \\u3099\\u309A  \\p{Block=Katakana}  [[\\p{Block=Halfwidth_and_Fullwidth_Forms}\\p{Punctuation}]--\\p{vo=R}]  \\uFF0D  [\\p{gc=Zs}--\\u1680]]+" options:2 error:&v3];
  CTStringIsSuitableForVerticalLayout::nonCJKRegex = result;
  return result;
}

void CTStringIsSuitableForArabicJustification::$_0::__invoke(CTStringIsSuitableForArabicJustification::$_0 *this, void *a2)
{
  v2 = CTFontCopyCharacterSet(this);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableCharacterSet::TCFMutableCharacterSet(&v6, v2);
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  if (Predefined)
  {
    CFCharacterSetUnion(atomic_load_explicit(&v6, memory_order_acquire), Predefined);
  }

  v7.location = 48;
  v7.length = 10;
  CFCharacterSetAddCharactersInRange(atomic_load_explicit(&v6, memory_order_acquire), v7);
  CFCharacterSetInvert(atomic_load_explicit(&v6, memory_order_acquire));
  v4 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  if (v4)
  {
    CFCharacterSetUnion(atomic_load_explicit(&v6, memory_order_acquire), v4);
  }

  v5 = atomic_exchange(&v6, 0);
  _CFCharacterSetCompact();
  _MergedGlobals_30 = v5;
}

uint64_t std::__function::__func<_CTEnumerateScriptRanges::$_0,std::allocator<_CTEnumerateScriptRanges::$_0>,void ()(unsigned int,CFRange)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF2598A0;
  a2[1] = v2;
  return result;
}

uint64_t TBaseFont::CopyMetadata@<X0>(TBaseFont *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = TBaseFont::GetInitializedGraphicsFont(this);
  if (result)
  {
    result = CGFontGetParserFont();
    if (result)
    {
      if (a2)
      {
        FPFontGetDefaultInstance();
      }

      result = FPFontCopyMetadata();
    }
  }

  *a3 = result;
  return result;
}

void TBaseFont::CopyLocalizedName(TBaseFont *this@<X0>, const __CFString *a2@<X1>, CFArrayRef theArray@<X2>, const __CFString **a4@<X3>, atomic_ullong *a5@<X8>)
{
  v36[3] = *MEMORY[0x1E69E9840];
  if (!theArray || (v9 = theArray, !CFArrayGetCount(theArray)))
  {
    v9 = 0;
  }

  TBaseFont::CopyAttributeInternal(this, @"CTFontLocalizedNames", &v35);
  v10 = atomic_exchange(&v35, 0);

  Value = v10;
  v12 = Value;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, a2);
  }

  *a5 = Value;

  explicit = atomic_load_explicit(a5, memory_order_acquire);
  if (!v9 && explicit)
  {
    v14 = CFDictionaryGetValue(v10, @"language map");
    if (v14)
    {
      v15 = CFDictionaryGetValue(v14, a2);
    }

    else
    {
      v15 = 0;
    }

    v35 = 0xAAAAAAAAAAAAAAAALL;
    CopyPreferredLanguage(&v35);
    v16 = atomic_load_explicit(&v35, memory_order_acquire);
    v17 = v16;
    if (v16 == v15)
    {

      if (!a4)
      {
LABEL_21:
        v20 = v35;
        goto LABEL_42;
      }

LABEL_18:
      v19 = CFDictionaryGetValue(v10, @"actual language");
      if (v19)
      {
        v19 = CFDictionaryGetValue(v19, a2);
      }

      *a4 = v19;
      goto LABEL_21;
    }

    if (v15 && v16)
    {
      v18 = CFEqual(v15, v16);

      if (v18)
      {
        if (!a4)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  v35 = &unk_1EF258060;
  v36[2] = &v35;
  CreateCopyOfArrayByApplyingFunction(v9, &v35, &v34);
  std::__function::__value_func<TCFRef<void const*> ()(void const*)>::~__value_func[abi:fn200100](&v35);
  if (!atomic_load_explicit(&v34, memory_order_acquire))
  {
    CreateNormalizedPreferredLanguages(&v35);
  }

  v33 = 0;
  v21 = (*(*this + 584))(this);
  v22 = FontNameCodeForKey(a2);
  v23 = atomic_load_explicit(&v34, memory_order_acquire);
  v35 = &v33;
  v36[0] = 0;
  CopyLocalizedFontNameInternal(v23, v21, 0, v22, v36, 0, &v32);

  v24 = atomic_load_explicit(a5, memory_order_acquire);
  if (!v9 && v24)
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableDictionary::TCFMutableDictionary(&v35, v10);
    CFDictionarySetValue(atomic_load_explicit(&v35, memory_order_acquire), a2, atomic_load_explicit(a5, memory_order_acquire));
    if (atomic_load_explicit(&v33, memory_order_acquire))
    {
      v32 = 0xAAAAAAAAAAAAAAAALL;
      CopyPreferredLanguage(&v32);
      if (atomic_load_explicit(&v32, memory_order_acquire))
      {
        v31 = 0xAAAAAAAAAAAAAAAALL;
        v25 = v10;
        v26 = v25;
        if (v25)
        {
          v27 = CFDictionaryGetValue(v25, @"language map");
        }

        else
        {
          v27 = 0;
        }

        TCFMutableDictionary::TCFMutableDictionary(&v31, v27);

        CFDictionarySetValue(atomic_load_explicit(&v31, memory_order_acquire), a2, atomic_load_explicit(&v32, memory_order_acquire));
        CFDictionarySetValue(atomic_load_explicit(&v35, memory_order_acquire), @"language map", atomic_load_explicit(&v31, memory_order_acquire));
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v28 = v10;
      v29 = v28;
      if (v28)
      {
        v30 = CFDictionaryGetValue(v28, @"actual language");
      }

      else
      {
        v30 = 0;
      }

      TCFMutableDictionary::TCFMutableDictionary(&v32, v30);

      CFDictionarySetValue(atomic_load_explicit(&v32, memory_order_acquire), a2, atomic_load_explicit(&v33, memory_order_acquire));
      CFDictionarySetValue(atomic_load_explicit(&v35, memory_order_acquire), @"actual language", atomic_load_explicit(&v32, memory_order_acquire));
    }

    TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, atomic_load_explicit(&v35, memory_order_acquire), @"CTFontLocalizedNames");
  }

  if (a4)
  {
    *a4 = atomic_exchange(&v33, 0);
  }

  v20 = v34;
LABEL_42:
}

void TBaseFont::CopyLocalizedNameID(TBaseFont *this@<X0>, CFArrayRef theArray@<X2>, const __CFString **a3@<X3>, unsigned int a4@<W1>, atomic_ullong *a5@<X8>)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (theArray && CFArrayGetCount(theArray))
  {
    v14 = &unk_1EF258060;
    v15[2] = &v14;
    CreateCopyOfArrayByApplyingFunction(theArray, &v14, &v12);
    std::__function::__value_func<TCFRef<void const*> ()(void const*)>::~__value_func[abi:fn200100](&v14);
  }

  v10 = (*(*this + 584))(this);
  v12 = 0;
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  explicit = atomic_load_explicit(&v13, memory_order_acquire);
  v14 = &v12;
  v15[0] = 0;
  CopyLocalizedFontNameInternal(explicit, v10, 0, a4, v15, 0, a5);

  if (a3)
  {
    *a3 = atomic_exchange(&v12, 0);
  }
}

BOOL TBaseFont::HasPostScriptNameAlias(atomic_ullong *this, CFStringRef theString)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!theString || !CFStringGetLength(theString))
  {
    return 0;
  }

  explicit = atomic_load_explicit(this + 12, memory_order_acquire);
  if (explicit != theString && (!explicit || !CFEqual(explicit, theString)) && !IsPostScriptNameAlias(theString, explicit))
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptorSource::TDescriptorSource(&v23);
    TDescriptorSource::CopyFontDescriptorFromVariationPostScriptName(&v23, theString, 1, 0, &v24);
    if (!atomic_load_explicit(&v24, memory_order_acquire))
    {
      goto LABEL_19;
    }

    v23 = CTFontDescriptorCopyAttribute(atomic_load_explicit(&v24, memory_order_acquire), @"NSCTFontPostScriptNameAttribute");
    v5 = atomic_exchange(&v23, 0);

    v6 = v5;
    v7 = v6;
    if (v6 == explicit)
    {
    }

    else
    {
      if (!explicit || !v6)
      {

        goto LABEL_19;
      }

      v8 = CFEqual(v6, explicit);

      if (!v8)
      {
LABEL_19:

        v22 = 0;
        if (!atomic_load_explicit(&v22, memory_order_acquire))
        {
          v24 = 0xAAAAAAAAAAAAAAAALL;
          TBaseFont::CopyMetadata(this, 0, &v24);
          v11 = atomic_load_explicit(&v24, memory_order_acquire);
          v12 = v11;
          if (v11)
          {
            Value = CFDictionaryGetValue(v11, @"MTD_Typeface_ID_ATS_PostscriptName_Aliases");
          }

          else
          {
            Value = 0;
          }

          TCFRef<__CTFont const*>::Retain(&v22, Value);
        }

        v14 = atomic_load_explicit(&v22, memory_order_acquire);
        if (v14)
        {
          v15 = v14;
          Count = CFArrayGetCount(v14);

          if (Count >= 1)
          {
            *&v17 = 0xAAAAAAAAAAAAAAAALL;
            *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v27[14] = v17;
            v27[13] = v17;
            v27[12] = v17;
            v27[11] = v17;
            v27[10] = v17;
            v27[9] = v17;
            v27[8] = v17;
            v27[7] = v17;
            v27[6] = v17;
            v27[5] = v17;
            v27[3] = v17;
            v27[4] = v17;
            v27[1] = v17;
            v27[2] = v17;
            v27[0] = v17;
            v25 = 0;
            v26 = 0;
            v24 = 0;
            v28 = v27;
            std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&v24, Count);
            v18 = v25;
            bzero(v25, 8 * Count);
            v25 = &v18[8 * Count];
            v19 = atomic_load_explicit(&v22, memory_order_acquire);
            v30.location = 0;
            v30.length = Count;
            CFArrayGetValues(v19, v30, v24);
            v20 = CFSetCreate(*MEMORY[0x1E695E480], v24, Count, MEMORY[0x1E695E530]);
            v21 = v20;
            TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v21, @"CTFontPostScriptNameAliases");

            v9 = CFSetContainsValue(v20, theString) != 0;
            v23 = &v24;
            std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
LABEL_29:

            return v9;
          }
        }

        else
        {
        }

        TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, *MEMORY[0x1E695E738], @"CTFontPostScriptNameAliases");
        v9 = 0;
        goto LABEL_29;
      }
    }
  }

  return 1;
}

uint64_t TBaseFont::IsBaseVariation(TBaseFont *this, CFDictionaryRef theDict)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    return 1;
  }

  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    return 1;
  }

  v5 = Count;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 112))(&v32, this);
  explicit = atomic_load_explicit(&v32, memory_order_acquire);

  if (explicit)
  {
    v25 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 120))(&v25, this);
    v7 = atomic_load_explicit(&v25, memory_order_acquire);
    if (v7)
    {
      v8 = v7;
      v9 = CFArrayGetCount(v7);

      if (v9)
      {
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v35[14] = v10;
        v35[13] = v10;
        v35[12] = v10;
        v35[11] = v10;
        v35[10] = v10;
        v35[9] = v10;
        v35[8] = v10;
        v35[7] = v10;
        v35[6] = v10;
        v35[5] = v10;
        v35[4] = v10;
        v35[3] = v10;
        v35[2] = v10;
        v35[1] = v10;
        v35[0] = v10;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v36 = v35;
        std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::__vallocate[abi:fn200100](&v32, v5);
        v11 = v33;
        bzero(v33, 8 * v5);
        v33 = &v11[8 * v5];
        *&v12 = 0xAAAAAAAAAAAAAAAALL;
        *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v30[14] = v12;
        v30[13] = v12;
        v30[12] = v12;
        v30[11] = v12;
        v30[10] = v12;
        v30[9] = v12;
        v30[8] = v12;
        v30[7] = v12;
        v30[6] = v12;
        v30[5] = v12;
        v30[4] = v12;
        v30[3] = v12;
        v30[2] = v12;
        v30[1] = v12;
        v30[0] = v12;
        v28 = 0;
        v29 = 0;
        values = 0;
        v31 = v30;
        std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::__vallocate[abi:fn200100](&values, v5);
        v13 = v28;
        bzero(v28, 8 * v5);
        v28 = &v13[8 * v5];
        CFDictionaryGetKeysAndValues(theDict, v32, values);
        v14 = v32;
        v15 = values;
        while (1)
        {
          v16 = CFGetTypeID(*v15);
          if (v16 != CFNumberGetTypeID())
          {
            break;
          }

          v17 = atomic_load_explicit(&v25, memory_order_acquire);
          if (!v17)
          {
            break;
          }

          v18 = CFArrayGetCount(v17);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v20 = 0;
          --v5;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
            Value = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
            if (CFEqual(Value, *v14))
            {
              valuePtr = NAN;
              CFNumberGetValue(*v15, kCFNumberDoubleType, &valuePtr);
              if (IsValueInRangeOfAxis(valuePtr, ValueAtIndex))
              {
                break;
              }
            }

            if (v19 == ++v20)
            {
              goto LABEL_19;
            }
          }

          ++v14;
          ++v15;
          if (!v5)
          {
            v23 = 1;
            goto LABEL_20;
          }
        }

LABEL_19:
        v23 = 0;
LABEL_20:
        valuePtr = COERCE_DOUBLE(&values);
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
        values = &v32;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v23 = 0;
LABEL_23:

    return v23;
  }

  return 0;
}

void TBaseFont::CopyFeaturesInternal(TBaseFont *this@<X0>, const __CFArray **a2@<X8>)
{
  v4 = *(this + 44);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontFeaturesInternalAttribute", &v11);
  v12 = atomic_exchange(&v11, 0);

  if (!atomic_load_explicit(&v12, memory_order_acquire) && v4 != 208)
  {
    if ((*(*this + 712))(this))
    {
      CopyAttributeForSystemFont(atomic_load_explicit(this + 12, memory_order_acquire), @"NSCTFontFeaturesAttribute", &v11);

      if (atomic_load_explicit(&v12, memory_order_acquire))
      {
        Count = CFArrayGetCount(atomic_load_explicit(&v12, memory_order_acquire));
        explicit = atomic_load_explicit(&v12, memory_order_acquire);
        if (!Count)
        {
          goto LABEL_11;
        }

        v10 = explicit;
        TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v10, @"NSCTFontFeaturesInternalAttribute");
      }
    }
  }

  if (!atomic_load_explicit(&v12, memory_order_acquire) && v4 != 208)
  {
    TFontFeatures::TFontFeatures(&v11, this);

    if (atomic_load_explicit(&v12, memory_order_acquire))
    {
      v9 = atomic_load_explicit(&v12, memory_order_acquire);
      TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v9, @"NSCTFontFeaturesInternalAttribute");
    }
  }

LABEL_11:
  v7 = atomic_load_explicit(&v12, memory_order_acquire);
  v8 = v7;
  if (v7)
  {
    if (CFArrayGetCount(v7) < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = atomic_load_explicit(&v12, memory_order_acquire);
    }
  }

  *a2 = v7;
}

void TBaseFont::CopyFeaturesLocalized(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontFeaturesAttribute", &v6);
  *a2 = atomic_exchange(&v6, 0);

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 136))(&v6, this);
    if (atomic_load_explicit(&v6, memory_order_acquire))
    {
      TFontFeatures::Externalize(1, atomic_load_explicit(&v6, memory_order_acquire), this, 0, &v5);

      if (atomic_load_explicit(a2, memory_order_acquire))
      {
        v4 = atomic_load_explicit(a2, memory_order_acquire);
        TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v4, @"NSCTFontFeaturesAttribute");
      }
    }
  }
}

BOOL TBaseFont::HasFeature(TBaseFont *this, const __CFArray *a2, int a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 136))(&v7);
  v5 = TFontFeatures::FindFeatureSelector(atomic_load_explicit(&v7, memory_order_acquire), a2, a3) != 0;

  return v5;
}

void CharacterSetByAddingSynthesizedCharacters(id a1@<X0>, unint64_t *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_7;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v5;
  v14[3] = v5;
  v14[0] = v5;
  v14[1] = v5;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v15 = v14;
  AddSynthesizableCharacters(a1, &v11);
  if (v11 == v12)
  {
    MutableCopy = &v11;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&MutableCopy);
LABEL_7:
    *a2 = a1;
    return;
  }

  MutableCopy = CFCharacterSetCreateMutableCopy(*MEMORY[0x1E695E480], a1);
  v6 = v11;
  v7 = v12;
  while (v6 != v7)
  {
    v8 = *v6++;
    v17.location = v8;
    v17.length = 1;
    CFCharacterSetAddCharactersInRange(atomic_load_explicit(&MutableCopy, memory_order_acquire), v17);
  }

  v9 = atomic_exchange(&MutableCopy, 0);
  _CFCharacterSetCompact();
  *a2 = v9;

  MutableCopy = &v11;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&MutableCopy);
}

uint64_t AddSynthesizableCharacters(uint64_t a1, uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *theSet = v3;
  v33 = v3;
  result = CFCharacterSetInitInlineBuffer();
  v5 = 0;
  v6 = L" ";
  do
  {
    v7 = kSynthesizedCharacters[v5];
    LOBYTE(v8) = (theSet[1] & 4) == 0;
    if (HIDWORD(theSet[1]) > v7 || v33 <= v7)
    {
      v8 = (theSet[1] & 4) >> 2;
LABEL_7:
      if (v8)
      {
        goto LABEL_62;
      }

      goto LABEL_23;
    }

    if ((theSet[1] & 2) != 0)
    {
      result = CFCharacterSetIsLongCharacterMember(theSet[0], kSynthesizedCharacters[v5]);
      if (result)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (!*(&v33 + 1))
      {
        if ((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)))
        {
          goto LABEL_62;
        }

        goto LABEL_23;
      }

      if ((theSet[1] & 1) == 0)
      {
        if (((theSet[1] & 4) == 0) != (((*(*(&v33 + 1) + (v7 >> 3)) >> (v7 & 7)) & 1) == 0))
        {
          goto LABEL_62;
        }

        goto LABEL_23;
      }

      v10 = *(*(&v33 + 1) + (v7 >> 8));
      if (*(*(&v33 + 1) + (v7 >> 8)))
      {
        if (v10 != 255)
        {
          if (((theSet[1] & 4) == 0) != (((*(*(&v33 + 1) + 32 * v10 + (v7 >> 3) + 224) >> (v7 & 7)) & 1) == 0))
          {
            goto LABEL_62;
          }

          goto LABEL_23;
        }

        goto LABEL_7;
      }

      if ((theSet[1] & 4) != 0)
      {
        goto LABEL_62;
      }
    }

LABEL_23:
    v11 = 0;
    while (1)
    {
      v12 = v6[v11];
      if (!v6[v11])
      {
        goto LABEL_46;
      }

      LOBYTE(v13) = (theSet[1] & 4) == 0;
      if (HIDWORD(theSet[1]) > v12 || v33 <= v12)
      {
        v13 = (theSet[1] & 4) >> 2;
LABEL_30:
        if (v13)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      if ((theSet[1] & 2) != 0)
      {
        result = CFCharacterSetIsLongCharacterMember(theSet[0], v12);
        if (result)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      if (!*(&v33 + 1))
      {
        if ((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)))
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      if ((theSet[1] & 1) == 0)
      {
        if (((theSet[1] & 4) == 0) != (((*(*(&v33 + 1) + (v12 >> 3)) >> (v12 & 7)) & 1) == 0))
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v15 = *(*(&v33 + 1) + (v12 >> 8));
      if (!*(*(&v33 + 1) + (v12 >> 8)))
      {
        break;
      }

      if (v15 == 255)
      {
        goto LABEL_30;
      }

      if (((theSet[1] & 4) == 0) != (((*(*(&v33 + 1) + 32 * v15 + (v12 >> 3) + 224) >> (v12 & 7)) & 1) == 0))
      {
        goto LABEL_48;
      }

LABEL_46:
      if (++v11 == 2)
      {
        goto LABEL_62;
      }
    }

    if ((theSet[1] & 4) == 0)
    {
      goto LABEL_46;
    }

LABEL_48:
    v17 = *(a2 + 8);
    v16 = *(a2 + 16);
    if (v17 >= v16)
    {
      v19 = *a2;
      v20 = v17 - *a2;
      v21 = v20 >> 1;
      if (v20 >> 1 <= -2)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v22 = v16 - v19;
      if (v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v22;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      v34[4] = a2 + 24;
      if (v24)
      {
        v25 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,30ul>>(a2 + 24, v24);
        v24 = v26;
        v19 = *a2;
        v20 = *(a2 + 8) - *a2;
      }

      else
      {
        v25 = 0;
      }

      v27 = (v25 + 2 * v21);
      v28 = v25 + 2 * v24;
      v29 = &v27[-(v20 >> 1)];
      *v27 = v7;
      v18 = v27 + 1;
      memcpy(v29, v19, v20);
      v30 = *a2;
      *a2 = v29;
      *(a2 + 8) = v18;
      v31 = *(a2 + 16);
      *(a2 + 16) = v28;
      v34[2] = v30;
      v34[3] = v31;
      v34[0] = v30;
      v34[1] = v30;
      result = std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v34);
    }

    else
    {
      *v17 = v7;
      v18 = v17 + 1;
    }

    *(a2 + 8) = v18;
LABEL_62:
    v5 += 3;
    v6 += 3;
  }

  while (v5 != 36);
  return result;
}

void AddSynthesizedCharactersToCharacterSet(atomic_ullong *a1, const TBaseFont *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[3] = v3;
  v10[2] = v3;
  v10[1] = v3;
  v10[0] = v3;
  v9 = 0;
  v8 = 0uLL;
  v11 = v10;
  AddSynthesizableCharacters(atomic_load_explicit(a1, memory_order_acquire), &v8);
  v4 = *(&v8 + 1);
  v5 = v8;
  while (v5 != v4)
  {
    v6 = *v5++;
    v13.location = v6;
    v13.length = 1;
    CFCharacterSetAddCharactersInRange(atomic_load_explicit(a1, memory_order_acquire), v13);
  }

  v7 = &v8;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v7);
}

void TBaseFont::CopyRepertoireRange(void *a1@<X8>)
{
  v2 = 0;
  *a1 = atomic_exchange(&v2, 0);
}

uint64_t TBaseFont::GetOS2UnicodeRanges(TBaseFont *a1, _DWORD *a2, atomic_ullong *a3)
{
  if (TBaseFont::GetInitializedGraphicsFont(a1) && CGFontGetParserFont())
  {
    FPFontGetOS2UnicodeRanges();
    return 1;
  }

  else
  {
    v10 = 0;
    if (a3)
    {
      TCFRef<__CTFont const*>::Retain(&v10, atomic_load_explicit(a3, memory_order_acquire));
    }

    if (!atomic_load_explicit(&v10, memory_order_acquire))
    {
      (*(*a1 + 488))(v9, a1, 1330851634);
    }

    if (atomic_load_explicit(&v10, memory_order_acquire))
    {
      if (a3 && !atomic_load_explicit(a3, memory_order_acquire))
      {
        TCFRef<__CTFont const*>::Retain(a3, atomic_load_explicit(&v10, memory_order_acquire));
      }

      memset(v9, 170, sizeof(v9));
      OS2::OS2(v9, atomic_load_explicit(&v10, memory_order_acquire));
      v6 = v9[2] > 77;
      if (v9[2] >= 78)
      {
        v7 = v9[1];
        *a2 = bswap32(*(v9[1] + 42));
        a2[1] = bswap32(*(v7 + 46));
        a2[2] = bswap32(*(v7 + 50));
        a2[3] = bswap32(*(v7 + 54));
      }
    }

    else
    {
      v6 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
    }
  }

  return v6;
}

void OS2::OS2(OS2 *this, id a2)
{
  v3 = a2;
  OS2::OS2(this, &v3);
}

void TBaseFont::CopySupportedLanguagesFromMetadata(atomic_ullong *this, atomic_ullong *a2)
{
  if ((*(*a2 + 712))(a2))
  {
    *this = 0xAAAAAAAAAAAAAAAALL;
    CopyAttributeForSystemFont(atomic_load_explicit(a2 + 12, memory_order_acquire), @"NSCTFontLanguagesAttribute", &v6);
    *this = atomic_exchange(&v6, 0);

    if (atomic_load_explicit(this, memory_order_acquire))
    {
      return;
    }
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyMetadata(a2, 0, &v5);
  if (atomic_load_explicit(&v5, memory_order_acquire))
  {
    Value = CFDictionaryGetValue(atomic_load_explicit(&v5, memory_order_acquire), @"MTD_Typeface_Repertoire_SupportedLanguages");
  }

  else
  {
    Value = 0;
  }

  v6 = Value;

  if (atomic_load_explicit(&v6, memory_order_acquire))
  {
    *this = atomic_exchange(&v6, 0);
  }

  else
  {

    *this = 0;
  }
}

void TBaseFont::CopyLocales(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontLanguagesAttribute", &v14);
  *a2 = atomic_exchange(&v14, 0);

  if ((*(this + 46) & 0x100000) == 0)
  {
    atomic_load_explicit(this + 12, memory_order_acquire);
    atomic_fetch_or_explicit(this + 45, 0, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x100000u, memory_order_relaxed);
  }

  if ((*(this + 45) & 0x100000) != 0)
  {
    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
      v14 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  else
  {
    TBaseFont::CopySupportedLanguagesFromMetadata(&v14, this);

    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 776))(&v14, this);
      if (atomic_load_explicit(&v14, memory_order_acquire))
      {
        TBaseFont::CopyAttributeInternal(this, @"CTCheckedLanguages", &v13);
        v4 = atomic_exchange(&v13, 0);

        v5 = v4;
        v6 = *MEMORY[0x1E695E480];
        if (v5)
        {
          MutableCopy = CFSetCreateMutableCopy(v6, 0, v5);
        }

        else
        {
          MutableCopy = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
        }

        v8 = MutableCopy;

        TLocaleManager::TLocaleManager(&v12);
        explicit = atomic_load_explicit(&v14, memory_order_acquire);
        TLocaleManagerImp::CopyLanguagesFromCharacterSet(v12, explicit, 0, v8, &v13);

        os_unfair_lock_unlock(v12 + 6);
      }
    }

    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
      v14 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    }

    v11 = atomic_load_explicit(a2, memory_order_acquire);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v11, @"NSCTFontLanguagesAttribute");

    os_unfair_lock_lock_with_options();
    if (!atomic_load_explicit(this + 15, memory_order_acquire))
    {
      TBaseFont::InitAttributesDict(this);
    }

    v10 = atomic_load_explicit(this + 15, memory_order_acquire);
    if (v10)
    {
      CFDictionaryRemoveValue(v10, @"CTCheckedLanguages");
    }

    os_unfair_lock_unlock(this + 28);
    atomic_fetch_or_explicit(this + 45, 0x100000u, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x100000u, memory_order_relaxed);
  }
}

BOOL TBaseFont::SupportsLanguages(TBaseFont *this, const __CFArray *a2)
{
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontLanguagesAttribute", &v26);
  v4 = atomic_exchange(&v26, 0);

  if (!v4 || !ArrayContainsAllValues(v4, a2))
  {
    if ((*(this + 46) & 0x100000) == 0)
    {
      atomic_load_explicit(this + 12, memory_order_acquire);
      atomic_fetch_or_explicit(this + 45, 0, memory_order_relaxed);
      atomic_fetch_or_explicit(this + 46, 0x100000u, memory_order_relaxed);
    }

    if ((*(this + 45) & 0x100000) != 0)
    {
      v5 = 0;
      goto LABEL_38;
    }

    v26 = 0xAAAAAAAAAAAAAAAALL;
    TBaseFont::CopySupportedLanguagesFromMetadata(&v26, this);
    if (atomic_load_explicit(&v26, memory_order_acquire))
    {
      v5 = ArrayContainsAllValues(atomic_load_explicit(&v26, memory_order_acquire), a2);
      v6 = v26;
LABEL_37:

      goto LABEL_38;
    }

    TBaseFont::CopyAttributeInternal(this, @"CTCheckedLanguages", &v26);
    v7 = atomic_exchange(&v26, 0);

    if (a2)
    {
      Count = CFArrayGetCount(a2);
      if (Count)
      {
        v9 = Count;
        for (i = 0; v9 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v12 = v7;
          if (v12)
          {
            v13 = v12;
            v14 = CFSetContainsValue(v12, ValueAtIndex);

            if (v14)
            {
              v5 = 0;
              goto LABEL_36;
            }
          }

          else
          {
          }
        }
      }
    }

    v26 = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableSet::TCFMutableSet(&v26, v7);
    v25 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 776))(&v25, this);
    if (atomic_load_explicit(&v25, memory_order_acquire))
    {
      if (!a2 || (v15 = CFArrayGetCount(a2)) == 0)
      {
LABEL_24:
        v24 = 0xAAAAAAAAAAAAAAAALL;
        TCFMutableArray::TCFMutableArray(&v24, v4);
        TCFMutableArray::AppendArray<__CFArray const*>(&v24, a2);
        explicit = atomic_load_explicit(&v24, memory_order_acquire);
        os_unfair_lock_lock_with_options();
        v21 = atomic_load_explicit(this + 15, memory_order_acquire);
        if (explicit)
        {
          if (!v21)
          {
            TBaseFont::InitAttributesDict(this);
          }

          v22 = atomic_load_explicit(this + 15, memory_order_acquire);
          if (v22)
          {
            CFDictionarySetValue(v22, @"NSCTFontLanguagesAttribute", explicit);
          }
        }

        else if (v21)
        {
          CFDictionaryRemoveValue(v21, @"NSCTFontLanguagesAttribute");
        }

        os_unfair_lock_unlock(this + 28);
        TBaseFont::SetAttributeInternal<__CFSet const*>(this, atomic_load_explicit(&v26, memory_order_acquire));

        v5 = 1;
LABEL_35:

LABEL_36:
        v6 = v7;
        goto LABEL_37;
      }

      v16 = v15;
      v17 = 0;
      while (1)
      {
        v18 = CFArrayGetValueAtIndex(a2, v17);
        CFSetAddValue(atomic_load_explicit(&v26, memory_order_acquire), v18);
        TLocaleManager::TLocaleManager(&v24);
        v19 = atomic_load_explicit(&v25, memory_order_acquire);
        LOBYTE(v18) = TLocaleManagerImp::CharacterSetCoversLanguage(v24, v19, v18);
        os_unfair_lock_unlock(v24 + 6);
        if ((v18 & 1) == 0)
        {
          break;
        }

        if (v16 == ++v17)
        {
          goto LABEL_24;
        }
      }
    }

    else if (a2)
    {
      [atomic_load_explicit(&v26 memory:"addObjectsFromArray:" order:a2acquire)];
    }

    TBaseFont::SetAttributeInternal<__CFSet const*>(this, atomic_load_explicit(&v26, memory_order_acquire));
    v5 = 0;
    goto LABEL_35;
  }

  v5 = 1;
LABEL_38:

  return v5;
}

BOOL ArrayContainsAllValues(const __CFArray *a1, const __CFArray *a2)
{
  Count = CFArrayGetCount(a1);
  if (!a2)
  {
    return 1;
  }

  v5 = Count;
  v6 = CFArrayGetCount(a2);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = v6 - 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
    v13.location = 0;
    v13.length = v5;
    v10 = CFArrayContainsValue(a1, v13, ValueAtIndex);
    result = v10 != 0;
    if (!v10)
    {
      break;
    }
  }

  while (v8 != v7++);
  return result;
}

void TCFMutableArray::AppendArray<__CFArray const*>(atomic_ullong *a1, CFArrayRef theArray)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (theArray)
  {
    v4.length = CFArrayGetCount(theArray);
  }

  else
  {
    v4.length = 0;
  }

  v4.location = 0;

  CFArrayAppendArray(explicit, theArray, v4);
}

void TBaseFont::SetAttributeInternal<__CFSet const*>(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock_with_options();
  explicit = atomic_load_explicit((a1 + 120), memory_order_acquire);
  if (a2)
  {
    if (!explicit)
    {
      TBaseFont::InitAttributesDict(a1);
    }

    v5 = atomic_load_explicit((a1 + 120), memory_order_acquire);
    if (v5)
    {
      CFDictionarySetValue(v5, @"CTCheckedLanguages", a2);
    }
  }

  else if (explicit)
  {
    CFDictionaryRemoveValue(explicit, @"CTCheckedLanguages");
  }

  os_unfair_lock_unlock((a1 + 112));
}

void TBaseFont::CopyMacintoshEncodings(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontMacintoshEncodingsAttribute", &valuePtr);
  *a2 = atomic_exchange(&valuePtr, 0);

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 488))(&v23, this, 1668112752);
    v4 = atomic_load_explicit(&v23, memory_order_acquire);
    v5 = v4;
    if (v4)
    {
      BytePtr = CFDataGetBytePtr(v4);
    }

    else
    {
      BytePtr = 0;
    }

    v7 = atomic_load_explicit(&v23, memory_order_acquire);
    v8 = v7;
    if (v8)
    {
      v9 = v8;
      v10 = CFDataGetBytePtr(v8);

      if (v10)
      {
        v10 += CFDataGetLength(v7);
      }
    }

    else
    {

      v10 = 0;
    }

    v11 = 0;
    if (BytePtr)
    {
      v12 = BytePtr + 4;
      if (BytePtr + 4 <= v10)
      {
        LODWORD(v13) = bswap32(*(BytePtr + 1)) >> 16;
        v14 = &v12[8 * v13];
        if (BytePtr + 12 <= v10)
        {
          v15 = (v10 - v12) >> 3;
        }

        else
        {
          LOWORD(v15) = 0;
        }

        if (v14 > v10 || v14 < v12)
        {
          LOWORD(v13) = v15;
        }

        if (v13)
        {
          v17 = 0;
          v13 = v13;
          v18 = (BytePtr + 6);
          do
          {
            if (*(v18 - 1) == 256)
            {
              v19 = bswap32(*v18) >> 16;
              if (v19 >= 0x20)
              {
                v20 = 0;
              }

              else
              {
                v20 = 1 << v19;
              }

              v17 |= v20;
            }

            v18 += 4;
            --v13;
          }

          while (v13);
          v11 = v17;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    valuePtr = v11;
    v22 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);

    if (atomic_load_explicit(a2, memory_order_acquire))
    {
      v21 = atomic_load_explicit(a2, memory_order_acquire);
      TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v21, @"NSCTFontMacintoshEncodingsAttribute");
    }
  }
}

void TBaseFont::CopyDesignLanguagesFromMetadata(TBaseFont *this, TBaseFont *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyMetadata(a2, 0, &v4);
  if (atomic_load_explicit(&v4, memory_order_acquire))
  {
    Value = CFDictionaryGetValue(atomic_load_explicit(&v4, memory_order_acquire), @"MTD_Typeface_Repertoire_PrimaryScriptLanguages");
  }

  else
  {
    Value = 0;
  }

  v5 = Value;

  if (atomic_load_explicit(&v5, memory_order_acquire))
  {
    *this = atomic_exchange(&v5, 0);
  }

  else
  {

    *this = 0;
  }
}

void TBaseFont::CopyDesignLanguages(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  v9[4] = *MEMORY[0x1E69E9840];
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontDesignLanguagesAttribute", &v8);
  *a2 = atomic_exchange(&v8, 0);

  if ((*(this + 46) & 0x200000) == 0)
  {
    atomic_load_explicit(this + 12, memory_order_acquire);
    atomic_fetch_or_explicit(this + 45, 0, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x200000u, memory_order_relaxed);
  }

  if ((*(this + 45) & 0x200000) == 0)
  {
    TBaseFont::CopyDesignLanguagesFromMetadata(&v8, this);

    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
      (*(*this + 344))(&v8, this);
    }

    v8 = 0xAAAAAAAAAAAAAAAALL;
    CreateNormalizedPreferredLanguages(&v8);
    explicit = atomic_load_explicit(a2, memory_order_acquire);
    v5 = atomic_load_explicit(&v8, memory_order_acquire);
    v9[0] = &unk_1EF259CA0;
    v9[3] = v9;
    CreateSortedArrayWithOrdering(explicit, v5, v9, &v7);

    std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v9);
    v6 = atomic_load_explicit(a2, memory_order_acquire);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v6, @"NSCTFontDesignLanguagesAttribute");

    atomic_fetch_or_explicit(this + 45, 0x200000u, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x200000u, memory_order_relaxed);
  }

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    v8 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }
}

BOOL TBaseFont::HasDesignLanguages(TBaseFont *this, const __CFArray *a2)
{
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontDesignLanguagesAttribute", &v8);
  v4 = atomic_exchange(&v8, 0);

  if ((*(this + 46) & 0x200000) == 0)
  {
    atomic_load_explicit(this + 12, memory_order_acquire);
    atomic_fetch_or_explicit(this + 45, 0, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x200000u, memory_order_relaxed);
  }

  if ((*(this + 45) & 0x200000) != 0)
  {
    if (!v4)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v6 = ArrayContainsAllValues(v4, a2);
    goto LABEL_9;
  }

  v8 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyDesignLanguagesFromMetadata(&v8, this);
  if (!atomic_load_explicit(&v8, memory_order_acquire))
  {

    v6 = (*(*this + 352))(this, a2);
LABEL_9:
    v5 = v6;
    goto LABEL_11;
  }

  v5 = ArrayContainsAllValues(atomic_load_explicit(&v8, memory_order_acquire), a2);

LABEL_11:
  return v5;
}

uint64_t TBaseFont::GetUnicodeEncoding(TBaseFont *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(this + 86);
  if (v1)
  {
    return v1;
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 488))(&v31);
  v3 = atomic_load_explicit(&v31, memory_order_acquire);
  v4 = v3;
  if (v3)
  {
    BytePtr = CFDataGetBytePtr(v3);
  }

  else
  {
    BytePtr = 0;
  }

  v6 = atomic_load_explicit(&v31, memory_order_acquire);
  v7 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = CFDataGetBytePtr(v7);

    if (v9)
    {
      v9 += CFDataGetLength(v6);
    }
  }

  else
  {

    v9 = 0;
  }

  v1 = 0;
  if (!BytePtr)
  {
    goto LABEL_49;
  }

  v10 = BytePtr + 4;
  if (BytePtr + 4 > v9)
  {
    goto LABEL_49;
  }

  v34 = 0;
  v33 = 0;
  v35 = 0;
  v11 = bswap32(*(BytePtr + 1)) >> 16;
  v12 = &v10[8 * v11];
  if (BytePtr + 12 <= v9)
  {
    v13 = (v9 - v10) >> 3;
  }

  else
  {
    LOWORD(v13) = 0;
  }

  if (v12 <= v9 && v12 >= v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v23 = 0;
    v22 = 0;
    goto LABEL_44;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = (BytePtr + 6);
  do
  {
    v25 = bswap32(*(v24 - 1)) >> 16;
    v26 = bswap32(*v24) >> 16;
    if (v25 == 3)
    {
      v27 = v23 | 1;
      if (v26 == 1)
      {
        v28 = v16;
      }

      else
      {
        v28 = v21;
      }

      if (v26 == 1)
      {
        v23 |= 4uLL;
      }

      if (v26 == 10)
      {
        v23 = v27;
        v22 = v16;
      }

      else
      {
        v21 = v28;
      }
    }

    else
    {
      if (v25)
      {
        goto LABEL_41;
      }

      if (v26 > 4)
      {
        if ((v26 - 5) < 2)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      if (v26)
      {
        if (v26 != 1)
        {
          if (v26 == 2)
          {
            v23 |= 8uLL;
            v20 = v16;
            goto LABEL_41;
          }

LABEL_38:
          v23 |= 2uLL;
          v17 = v16;
          goto LABEL_41;
        }

        v23 |= 0x10uLL;
        v19 = v16;
      }

      else
      {
        v23 |= 0x20uLL;
        v18 = v16;
      }
    }

LABEL_41:
    v24 += 4;
    ++v16;
  }

  while (v15 != v16);
  v34 = __PAIR64__(v19, v20);
  v35 = v18;
  v33 = __PAIR64__(v21, v17);
LABEL_44:
  v29 = 0;
  v32 = v22;
  while (((v23 >> v29) & 1) == 0)
  {
    if (++v29 == 6)
    {
      v1 = 0;
      goto LABEL_49;
    }
  }

  v1 = (*(&v32 + v29) + 1);
  *(this + 86) = v1;
LABEL_49:

  return v1;
}
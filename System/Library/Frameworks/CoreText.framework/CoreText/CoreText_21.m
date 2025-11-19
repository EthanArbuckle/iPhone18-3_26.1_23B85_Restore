uint64_t TBaseFont::GetStringEncoding(atomic_ullong *this)
{
  v33 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontStringEncodingAttribute", v28);
  v2 = atomic_exchange(v28, 0);

  if (v2)
  {
    v3 = v2;
    CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v4 = valuePtr;
    if (valuePtr == -1)
    {
      GetStringEncodingSpecialCase(atomic_load_explicit(this + 12, memory_order_acquire), &valuePtr);
      v4 = valuePtr;
      if (valuePtr == -1)
      {
        v28[0] = 0xAAAAAAAAAAAAAAAALL;
        TBaseFont::CopyMetadata(this, 0, v28);
        v5 = atomic_load_explicit(v28, memory_order_acquire);
        if (v5)
        {
          v6 = v5;
          Value = CFDictionaryGetValue(v5, @"MTD_Typeface_Repertoire_PrimaryScript");

          if (Value)
          {
            v8 = CFGetTypeID(Value);
            if (v8 == CFStringGetTypeID())
            {
              v9 = &off_1E6E3E578;
              v10 = 496;
              while (1)
              {
                v11 = *v9;
                if (*v9 == Value || v11 && CFEqual(Value, v11))
                {
                  break;
                }

                v9 += 2;
                v10 -= 16;
                if (!v10)
                {
                  v12 = -1;
                  goto LABEL_16;
                }
              }

              v12 = *(v9 - 2);
LABEL_16:
              valuePtr = v12;
            }
          }
        }

        else
        {
        }

        v4 = valuePtr;
        if (valuePtr == -1)
        {
          v29 = 0xAAAAAAAAAAAAAAAALL;
          (*(*this + 488))(&v29, this, 1330851634);
          memset(v28, 170, sizeof(v28));
          OS2::OS2(v28, atomic_load_explicit(&v29, memory_order_acquire));
          if (v28[2] < 78)
          {
LABEL_28:
            v16 = 32;
          }

          else
          {
            for (i = 0; i != 15; ++i)
            {
              if (v28[2] >= 0x56)
              {
                if (*v28[1])
                {
                  v14 = gCodePageOrderList[i];
                  if ((bswap32(*(v28[1] + ((v14 >> 3) & 0x1C) + 78)) >> v14) & 1) != 0 && ((0xF4000000003F006BLL >> v14))
                  {
                    v16 = gCodePageToScript[v14];
                    goto LABEL_31;
                  }
                }
              }
            }

            v32 = xmmword_18477AB40;
            v31[0] = 0xAAAAAAAAAAAAAAAALL;
            v31[1] = 0xAAAAAAAAAAAAAAAALL;
            TBaseFont::GetOS2UnicodeRanges(this, v31, &v29);
            v15 = 0;
            while (((*(v31 + ((*(&v32 + v15) >> 3) & 0x1FFFFFFC)) >> *(&v32 + v15)) & 1) == 0)
            {
              v15 += 8;
              if (v15 == 16)
              {
                goto LABEL_28;
              }
            }

            v16 = *(&v32 + v15 + 4);
          }

LABEL_31:

          v28[0] = 0xAAAAAAAAAAAAAAAALL;
          (*(*this + 368))(v28, this);
          if (atomic_load_explicit(v28, memory_order_acquire))
          {
            v17 = atomic_load_explicit(v28, memory_order_acquire);
            LODWORD(v32) = -1431655766;
            CFNumberGetValue(v17, kCFNumberIntType, &v32);
            v18 = v32;
          }

          else
          {
            v18 = 0;
          }

          v19 = 0;
          v20 = 0;
          v21 = 32;
          do
          {
            if (((1 << v19) & v18) != 0)
            {
              if (v16 == v19)
              {
                goto LABEL_61;
              }

              v20 |= 1 << v19;
              if (v21 >= v19)
              {
                v22 = v19;
              }

              else
              {
                v22 = v21;
              }

              if (v21 == 32)
              {
                v22 = v19;
              }

              if (v19)
              {
                v21 = v22;
              }
            }

            ++v19;
          }

          while (v19 != 32);
          if (v21 == 32)
          {
            v21 = (32 * (v18 & 1)) ^ 0x20;
            if (v18)
            {
              v20 &= ~1u;
            }

            if (v20)
            {
              v23 = 0;
              while (((1 << v23) & v20) == 0)
              {
                if (v23 <= 0x1E)
                {
                  v20 &= ~(1 << v23++);
                  if (v20)
                  {
                    continue;
                  }
                }

                goto LABEL_55;
              }

              v21 = v23;
            }

LABEL_55:
            if (v16 != 32 && v21 == 32)
            {
              v21 = v16;
            }
          }

          v16 = v21;
          if (v21 <= 0x1F)
          {
LABEL_61:
            valuePtr = v16;
          }

          v4 = valuePtr;
          if (valuePtr == -1)
          {
            v4 = 256;
            valuePtr = 256;
          }
        }
      }
    }

    TCFNumber::TCFNumber<unsigned int>(&v27, v4);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v27, @"NSCTFontStringEncodingAttribute");
    v3 = v27;
  }

  v25 = valuePtr;
  return v25;
}

BOOL TBaseFont::GetOpticalPointSizes(TBaseFont *this, double *a2, double *a3)
{
  valuePtr = -65536;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 440))(&v9);
  if (atomic_load_explicit(&v9, memory_order_acquire))
  {
    v5 = atomic_load_explicit(&v9, memory_order_acquire);
    CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
  }

  v6 = valuePtr;
  if (valuePtr != -65536)
  {
    *a2 = valuePtr / 20.0;
    *a3 = HIWORD(v6) / 20.0;
  }

  v7 = v6 != -65536;

  return v7;
}

void TBaseFont::CopyOpticalPointSizes(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"CTFontOpticalPointSizesAttribute", valuePtr);
  *a2 = atomic_exchange(valuePtr, 0);

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    memset(valuePtr, 170, sizeof(valuePtr));
    (*(*this + 488))(&v7, this, 1330851634);
    OS2::OS2(valuePtr, &v7);

    if (valuePtr[2] >= 100 && bswap32(*valuePtr[1]) >> 16 >= 5 && ((v4 = *(valuePtr[1] + 49), *(valuePtr[1] + 48)) || v4 != 0xFFFF))
    {
      v5 = bswap32(v4 | (*(valuePtr[1] + 48) << 16));
    }

    else
    {
      v5 = 4294901760;
    }

    valuePtr[0] = v5;
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, valuePtr);

    v6 = atomic_load_explicit(a2, memory_order_acquire);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v6, @"CTFontOpticalPointSizesAttribute");
  }
}

void TBaseFont::CopyCSSWidth(atomic_ullong *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"CTFontCSSWidthAttribute", v12);
  *a2 = atomic_exchange(v12, 0);

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if ((*(*this + 712))(this))
    {
      CopyAttributeForSystemFont(atomic_load_explicit(this + 12, memory_order_acquire), @"CTFontCSSWidthAttribute", v12);

      if (atomic_load_explicit(a2, memory_order_acquire))
      {
        v14 = atomic_load_explicit(a2, memory_order_acquire);
        TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v14, @"CTFontCSSWidthAttribute");
        v4 = v14;
LABEL_20:

        return;
      }
    }

    v13 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 112))(&v13, this);
    v5 = atomic_load_explicit(&v13, memory_order_acquire);
    if (v5)
    {
      v6 = v5;
      Count = CFDictionaryGetCount(v5);

      if (Count > 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    memset(v12, 170, sizeof(v12));
    (*(*this + 488))(&valuePtr, this, 1330851634);
    OS2::OS2(v12, &valuePtr);

    if (v12[2] >= 78)
    {
      valuePtr = COERCE_ID(WidthPercentOfClass(bswap32(*(v12[1] + 3)) >> 16));
      v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    }

LABEL_12:
    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
      explicit = atomic_load_explicit(this + 30, memory_order_acquire);
      if (!explicit)
      {
        explicit = TBaseFont::CreateTraitsValues(this);
      }

      TBaseFont::CopyAttributeInternal(this, @"CTFontCSSWidthAttribute", v12);

      if (atomic_load_explicit(a2, memory_order_acquire))
      {
        goto LABEL_19;
      }

      if (explicit)
      {
        v9 = ClassOfWidth(*(explicit + 16));
        v12[0] = COERCE_ID(WidthPercentOfClass(v9));
        valuePtr = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v12);
      }
    }

    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
      LODWORD(valuePtr) = 100;
      v12[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    }

    v10 = atomic_load_explicit(a2, memory_order_acquire);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v10, @"CTFontCSSWidthAttribute");

LABEL_19:
    v4 = v13;
    goto LABEL_20;
  }
}

void TBaseFont::CopyTraits(TBaseFont *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 152))(&v8);
  if (a2)
  {
    explicit = atomic_load_explicit(&v8, memory_order_acquire);
    if (explicit)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, explicit);
      SymbolicTraitsFromTraits = GetSymbolicTraitsFromTraits(explicit);
      TCFNumber::TCFNumber<unsigned int>(&v9, SymbolicTraitsFromTraits | 0x800);
      CFDictionarySetValue(MutableCopy, @"NSCTFontSymbolicTrait", atomic_load_explicit(&v9, memory_order_acquire));

      v9 = MutableCopy;
      *a3 = atomic_exchange(&v9, 0);
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = atomic_exchange(&v8, 0);
  }
}

uint64_t TBaseFont::GetFormat(TBaseFont *this)
{
  v1 = this;
  if ((*(this + 44) & 0x80000000) != 0)
  {
    return *(this + 88);
  }

  FontFormat = GetFontFormat(atomic_load_explicit(this + 12, memory_order_acquire));
  if (FontFormat)
  {
    v3 = FontFormat;
    goto LABEL_4;
  }

  if (TBaseFont::GetInitializedGraphicsFont(v1) && CGFontGetParserFont())
  {
    IsSuitcase = FPFontIsSuitcase();
    v6 = FPFontGetFormat() - 1;
    v4 = 0x80000000;
    v3 = 3;
    v7 = 5;
    switch(v6)
    {
      case 0:
      case 4:
      case 30:
        goto LABEL_68;
      case 1:
      case 2:
      case 3:
      case 5:
      case 6:
      case 8:
      case 10:
      case 11:
      case 12:
        goto LABEL_19;
      case 7:
        goto LABEL_87;
      case 13:
      case 14:
      case 17:
      case 18:
      case 24:
      case 25:
      case 26:
      case 27:
      case 32:
        v3 = 1;
        goto LABEL_19;
      case 15:
      case 16:
      case 21:
      case 22:
      case 23:
      case 28:
        v7 = 4;
LABEL_68:
        v3 = v7;
        break;
      default:
        goto LABEL_11;
    }

    goto LABEL_87;
  }

  IsSuitcase = 0;
LABEL_11:
  v36 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 192))(&v36, v1);
  if (atomic_load_explicit(&v36, memory_order_acquire) && (v35 = 0xAAAAAAAAAAAAAAAALL, explicit = atomic_load_explicit(&v36, memory_order_acquire), [explicit getResourceValue:&v35 forKey:*MEMORY[0x1E695DAA0] error:0]))
  {
    if (qword_1EA869750 != -1)
    {
      dispatch_once(&qword_1EA869750, &__block_literal_global_6);
    }

    if ([v35 conformsToType:qword_1EA869758])
    {
      v3 = 3;
    }

    else if ([v35 conformsToType:qword_1EA869760])
    {
      v3 = 3;
      IsSuitcase = 1;
    }

    else if ([v35 conformsToType:qword_1EA869768])
    {
      v3 = 1;
    }

    else if ([v35 conformsToType:qword_1EA869770])
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0xFFFFFFFD) != 1)
  {
LABEL_4:
    v4 = 0x80000000;
    goto LABEL_87;
  }

LABEL_19:
  v4 = -2139095057;
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(v1);
  v10 = CGFontCopyTableTags(InitializedGraphicsFont);
  v11 = v10;
  if (!v10 || (Count = CFArrayGetCount(v10)) == 0)
  {
    LOBYTE(v17) = 0;
    LOBYTE(v16) = 0;
    v28 = 0;
    goto LABEL_70;
  }

  v13 = Count;
  v32 = v1;
  v34 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v33 = 0;
  v18 = 0;
  v19 = 0x7FFFFF;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v18);
    if (ValueAtIndex > 1415139376)
    {
      if (ValueAtIndex == 1819239265)
      {
        v21 = 1;
      }

      else
      {
        v21 = v16;
      }

      if (ValueAtIndex == 1735162214)
      {
        v22 = 1;
      }

      else
      {
        v22 = v17;
      }

      if (ValueAtIndex == 1735162214)
      {
        v21 = v16;
        v23 = 3;
      }

      else
      {
        v23 = v3;
      }

      if (ValueAtIndex == 1651273571)
      {
        v22 = v17;
        v21 = v16;
        v24 = 1;
      }

      else
      {
        v24 = v14;
      }

      if (ValueAtIndex == 1651273571)
      {
        v23 = v3;
      }

      if (ValueAtIndex == 1650745716)
      {
        v25 = 1;
      }

      else
      {
        v25 = v15;
      }

      if (ValueAtIndex == 1415139377)
      {
        v25 = v15;
        v26 = 4;
      }

      else
      {
        v26 = v3;
      }

      if (ValueAtIndex <= 1651273570)
      {
        v15 = v25;
      }

      else
      {
        v17 = v22;
        v16 = v21;
        v14 = v24;
      }

      if (ValueAtIndex <= 1651273570)
      {
        v3 = v26;
      }

      else
      {
        v3 = v23;
      }
    }

    else if (ValueAtIndex <= 1146308934)
    {
      if (ValueAtIndex == 1128678944)
      {
        v3 = 4;
LABEL_58:
        LOBYTE(v34) = 1;
        goto LABEL_60;
      }

      if (ValueAtIndex == 1128678962)
      {
        goto LABEL_58;
      }
    }

    else if (ValueAtIndex == 1146308935)
    {
      v33 = 1;
    }

    else if (ValueAtIndex == 1196445523 || ValueAtIndex == 1196643650)
    {
      BYTE4(v34) = 1;
    }

LABEL_60:
    v19 &= ~TableFlagForIdentifier(ValueAtIndex);
    ++v18;
  }

  while (v13 != v18);
  if (v34)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  v4 = v19 & 0x7FFFFFEF | 0x80000000;
  if ((v33 | BYTE4(v34)))
  {
    v3 = v27;
    v1 = v32;
    goto LABEL_86;
  }

  v28 = v15 & v14;
  v1 = v32;
LABEL_70:
  if (v3 == 3)
  {
    if (v17)
    {
      if (v28)
      {
        v29 = 5;
      }

      else
      {
        v29 = 0;
      }

      if (v16)
      {
        v3 = 3;
      }

      else
      {
        v3 = v29;
      }
    }

    else
    {
      if (IsSuitcase)
      {
        v30 = CGFontIsBitmapOnly() == 0;
      }

      else
      {
        v30 = (v28 & 1) == 0;
      }

      if (v30)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }
    }
  }

LABEL_86:

LABEL_87:
  v1[88] = v3;
  atomic_fetch_or_explicit(v1 + 44, v4, memory_order_relaxed);
  return v3;
}

id ___ZNK9TBaseFont9GetFormatEv_block_invoke()
{
  qword_1EA869758 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.truetype-font"];
  qword_1EA869760 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.font-suitcase"];
  qword_1EA869768 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.opentype-font"];
  result = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.postscript-font"];
  qword_1EA869770 = result;
  return result;
}

uint64_t TBaseFont::GetScope(TBaseFont *this)
{
  if ((*(this + 46) & 0x3FFF) != 0x3FFF)
  {
    TBaseFont::DetermineFontFlags(this, *(this + 46) & 0x3FFF ^ 0x3FFF);
  }

  return (*(this + 45) >> 12) & 3;
}

uint64_t TBaseFont::CopyStringForGlyph@<X0>(TBaseFont *this@<X0>, void *a2@<X8>)
{
  TBaseFont::GetInitializedGraphicsFont(this);
  result = CGFontGetMaxUnichars();
  if (result)
  {
    operator new[]();
  }

  *a2 = 0;
  return result;
}

BOOL TBaseFont::IsEnabled(TBaseFont *this)
{
  if ((*(this + 46) & 0x3FFF) != 0x3FFF)
  {
    TBaseFont::DetermineFontFlags(this, *(this + 46) & 0x3FFF ^ 0x3FFF);
  }

  return (*(this + 45) & 1) == 0;
}

BOOL TBaseFont::IsValid(TBaseFont *this)
{
  if ((*(this + 45) & 0x10000000) == 0)
  {
    return 1;
  }

  if ((*(this + 46) & 0x80000000) == 0)
  {
    atomic_load_explicit(this + 12, memory_order_acquire);
    atomic_fetch_or_explicit(this + 45, 0, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x80000000, memory_order_relaxed);
  }

  return *(this + 45) >= 0;
}

BOOL TBaseFont::IsDownloadable(TBaseFont *this)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 200))(&v6);
  explicit = atomic_load_explicit(&v6, memory_order_acquire);
  if (explicit)
  {
    v7 = 0;
    if (CFURLGetBaseURL(explicit))
    {

      explicit = atomic_load_explicit(&v7, memory_order_acquire);
    }

    explicit = CFURLCopyFileSystemPath(explicit, kCFURLPOSIXPathStyle);
  }

  v2 = explicit;
  v3 = v2;
  if (v2 == @"/private/var/MobileAsset/AssetsV2/com_apple_MobileAsset_Font")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = CFStringHasPrefix(v2, @"/private/var/MobileAsset/AssetsV2/com_apple_MobileAsset_Font") != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL TBaseFont::IsFontAsset(TBaseFont *this)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 200))(&v8);
  explicit = atomic_load_explicit(&v8, memory_order_acquire);
  if (explicit)
  {
    v9 = 0;
    if (CFURLGetBaseURL(explicit))
    {

      explicit = atomic_load_explicit(&v9, memory_order_acquire);
    }

    explicit = CFURLCopyFileSystemPath(explicit, kCFURLPOSIXPathStyle);
  }

  v2 = explicit;
  v3 = v2;
  if (v2 == @"/private/var/MobileAsset/AssetsV2/com_apple_MobileAsset_Font" || v2 && CFStringHasPrefix(v2, @"/private/var/MobileAsset/AssetsV2/com_apple_MobileAsset_Font"))
  {
    v4 = 1;
  }

  else
  {
    v5 = explicit;
    v6 = v5;
    if (v5 == @"/var/mobile/Library/UserFonts/FontAssets/")
    {
      v4 = 1;
    }

    else if (v5)
    {
      v4 = CFStringHasPrefix(v5, @"/var/mobile/Library/UserFonts/FontAssets/") != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

BOOL TBaseFont::IsUserInstalled(TBaseFont *this)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 200))(&v4);
  explicit = atomic_load_explicit(&v4, memory_order_acquire);
  if (explicit)
  {
    v5 = 0;
    if (CFURLGetBaseURL(explicit))
    {

      explicit = atomic_load_explicit(&v5, memory_order_acquire);
    }

    explicit = CFURLCopyFileSystemPath(explicit, kCFURLPOSIXPathStyle);
  }

  v2 = IsSystemFontPath(explicit);

  return !v2;
}

__CFString *TBaseFont::GetCSSFamily(atomic_ullong *this, int a2)
{
  v4 = @"sans-serif";
  if (a2 == 1)
  {
    v5 = (*(*this + 544))(this);
    if (v5)
    {
      v6 = v5;
      if (v5 == @"NSCTFontUIFontDesignSerif" || @"NSCTFontUIFontDesignSerif" && CFEqual(v5, @"NSCTFontUIFontDesignSerif"))
      {
        v7 = kCTFontCSSFamilySerifUI;
      }

      else if (v6 == @"NSCTFontUIFontDesignMonospaced" || @"NSCTFontUIFontDesignMonospaced" && CFEqual(v6, @"NSCTFontUIFontDesignMonospaced"))
      {
        v7 = kCTFontCSSFamilyMonospaceUI;
      }

      else if (v6 == @"NSCTFontUIFontDesignRounded" || @"NSCTFontUIFontDesignRounded" && CFEqual(v6, @"NSCTFontUIFontDesignRounded") || v6 == @"NSCTFontUIFontDesignCompactRounded" || @"NSCTFontUIFontDesignCompactRounded" && CFEqual(v6, @"NSCTFontUIFontDesignCompactRounded"))
      {
        v7 = kCTFontCSSFamilyRoundedUI;
      }

      else
      {
        v7 = kCTFontDescriptorDefaultKey;
      }

      return *v7;
    }

    v4 = @"default";
  }

  explicit = atomic_load_explicit(this + 30, memory_order_acquire);
  if (!explicit)
  {
    explicit = TBaseFont::CreateTraitsValues(this);
  }

  if (explicit)
  {
    if ((*explicit & 0x400) != 0)
    {
      v7 = kCTFontCSSFamilyMonospaceUI;
      v11 = kCTFontCSSFamilyMonospace;
      goto LABEL_20;
    }

    v9 = (*explicit >> 28) ^ 8;
    if (v9 > 8)
    {
      if ((v9 - 9) >= 5 && v9 != 15)
      {
        return v4;
      }

      v7 = kCTFontCSSFamilySerifUI;
      v11 = kCTFontCSSFamilySerif;
LABEL_20:
      if (a2 != 1)
      {
        v7 = v11;
      }

      return *v7;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v7 = &kCTFontCSSFamilyFantasy;
      }

      else
      {
        if (v9 != 2)
        {
          return v4;
        }

        v7 = kCTFontCSSFamilyCursive;
      }

      return *v7;
    }

    v4 = @"sans-serif";
    if (a2 == 1)
    {
      v13 = atomic_load_explicit(this + 12, memory_order_acquire);
      v14 = v13;
      if (v13 == @".SFUIRounded" || v13 && (CFStringHasPrefix(v13, @".SFUIRounded") || v14 == @".SFCompactRounded" || CFStringHasPrefix(v14, @".SFCompactRounded")))
      {
        v15 = kCTFontCSSFamilyRoundedUI;
      }

      else
      {
        v15 = kCTFontDescriptorDefaultKey;
      }

      v4 = *v15;
    }
  }

  return v4;
}

void TBaseFont::CreateSystemDefaultFallbacks(uint64_t a1@<X0>, __CFString *a2@<X1>, const __CFString *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v44[16] = *MEMORY[0x1E69E9840];
  explicit = atomic_load_explicit((a1 + 96), memory_order_acquire);
  if (explicit == @".TimesFB" || explicit && CFEqual(explicit, @".TimesFB"))
  {
    a2 = @"serif";
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::TDescriptorSource(v44);
  TDescriptorSource::CopyDefaultSubstitutionListForLanguages(a2, a3, &v37);
  v11 = atomic_load_explicit(&v37, memory_order_acquire);
  v12 = v11;
  if (!v11)
  {

    goto LABEL_32;
  }

  Count = CFArrayGetCount(v11);

  if (Count < 1 || (*a5 = 0xAAAAAAAAAAAAAAAALL, v14 = [_CTFontFallbacksArray alloc], obj = atomic_load_explicit(&v37, memory_order_acquire), !v14) || (v43.receiver = v14, v43.super_class = _CTFontFallbacksArray, (v15 = objc_msgSendSuper2(&v43, sel_init)) == 0))
  {
    v12 = 0;
    goto LABEL_32;
  }

  v16 = v15;
  v15[2] = a1;
  v17 = [obj count];
  *(v16 + 40) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v17];
  *(v16 + 48) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v17];
  *(v16 + 64) = a4;
  v18 = *(v16 + 16);
  v44[0] = 0xAAAAAAAAAAAAAAAALL;
  (*(*v18 + 200))(v44, v18);
  v34 = v16;
  if (atomic_load_explicit(v44, memory_order_acquire))
  {
    v19 = CFURLGetString(atomic_load_explicit(v44, memory_order_acquire));
    v20 = CFHash(v19);
  }

  else
  {
    v21 = atomic_load_explicit(v18 + 12, memory_order_acquire);
    v20 = CFHash(v21);
  }

  v22 = v20 + 2654435769u;
  v33 = [MEMORY[0x1E695DFB0] null];
  v36 = atomic_load_explicit((a1 + 96), memory_order_acquire);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = v23;
  v25 = *v40;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v40 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v39 + 1) + 8 * i);
      TDescriptor::CopyAttribute(*(v27 + 40), @"NSFontNameAttribute", &v38);
      v28 = atomic_exchange(&v38, 0);

      v29 = v36;
      v30 = v28;
      v31 = v30;
      if (v29 == v30)
      {
      }

      else
      {
        if (v29 && v30)
        {
          v32 = CFEqual(v29, v30);

          if (v32)
          {
            goto LABEL_27;
          }
        }

        else
        {
        }

        v22 ^= (v22 << 6) + 2654435769u + (v22 >> 2) + CFHash(v28);
        [*(v34 + 40) addObject:v27];
        [*(v34 + 48) addObject:v33];
        ++*(v34 + 32);
      }

LABEL_27:
    }

    v24 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  }

  while (v24);
LABEL_29:
  v12 = v34;
  *(v34 + 56) = v22;
  *(v34 + 24) = (*(**(v34 + 16) + 808))(*(v34 + 16));
  if (![(_CTFontFallbacksArray *)v34 objectAtIndex:0 shouldLock:1 addRanges:?])
  {
    [*(v34 + 40) removeObjectAtIndex:0];
    [*(v34 + 48) removeObjectAtIndex:0];
    --*(v34 + 32);
  }

LABEL_32:
  *a5 = v12;
}

void TBaseFont::CreateFallbacks(atomic_ullong *a1@<X0>, int a2@<W1>, char a3@<W2>, const __CFCharacterSet **a4@<X3>, const __CFArray *a5@<X4>, atomic_ullong *a6@<X8>)
{
  *a6 = 0;
  if (a3)
  {
    if (a2)
    {
      v12 = (*(*a1 + 568))(a1);
      if (v12)
      {
        v13 = v12;
        TDescriptorSource::TDescriptorSource(&v18);
        TDescriptorSource::CreatePresetFallbacks(v13, a4, a5, a3, &v19);
      }
    }

    v14 = atomic_load_explicit(a6, memory_order_acquire);
    if (v14)
    {
      v15 = v14;
      Count = CFArrayGetCount(v14);

      if (Count)
      {
        return;
      }
    }

    else
    {
    }

    CSSFamily = TBaseFont::GetCSSFamily(a1, a2);
    TBaseFont::CreateSystemDefaultFallbacks(a1, CSSFamily, a5, a2, &v19);
  }
}

unint64_t TBaseFont::GetDefaultFallbacks(atomic_ullong *a1, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v5 = 1;
  if ((a3 & 4) != 0)
  {
    v5 = 2;
  }

  if (a2 == 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6 + 16];
  if (atomic_load_explicit(v7, memory_order_acquire))
  {
    return atomic_load_explicit(v7, memory_order_acquire);
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0;
  v15 = 0;
  TBaseFont::CreateFallbacks(a1, a2, a3, &v15, 0, &v16);

  if (atomic_load_explicit(&v17, memory_order_acquire))
  {
    v8 = 0;
    v9 = atomic_exchange(&v17, 0);
    atomic_compare_exchange_strong(&a1[v6 + 19], &v8, v9);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = 0;
  v12 = atomic_exchange(&v16, 0);
  atomic_compare_exchange_strong(v7, &v11, v12);
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  explicit = atomic_load_explicit(v7, memory_order_acquire);
  return explicit;
}

unint64_t TBaseFont::GetDefaultComposite(atomic_ullong *a1, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v4 = 1;
  if ((a3 & 4) != 0)
  {
    v4 = 2;
  }

  if (a2 != 1)
  {
    v4 = 0;
  }

  v5 = &a1[v4 + 19];
  if (atomic_load_explicit(v5, memory_order_acquire))
  {
    return atomic_load_explicit(v5, memory_order_acquire);
  }

  DefaultFallbacks = TBaseFont::GetDefaultFallbacks(a1, a2, a3);
  if (DefaultFallbacks)
  {
    Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
    Count = CFArrayGetCount(DefaultFallbacks);
    if (Count)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(DefaultFallbacks, i);
        v10 = *(ValueAtIndex + 5);
        if ((*(v10 + 16) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(*(ValueAtIndex + 5), 0, 0.0);
        }

        explicit = atomic_load_explicit((v10 + 32), memory_order_acquire);
        if (explicit)
        {
          v19 = 0xAAAAAAAAAAAAAAAALL;
          (*(*explicit + 176))(&v19, explicit);
          if (!atomic_load_explicit(&v19, memory_order_acquire))
          {
            (*(*explicit + 776))(&v18, explicit);
          }

          v12 = atomic_load_explicit(&v19, memory_order_acquire);
          if (v12)
          {
            CFCharacterSetUnion(atomic_load_explicit(&Mutable, memory_order_acquire), v12);
          }
        }
      }
    }

    v13 = atomic_exchange(&Mutable, 0);
    _CFCharacterSetCompact();
    v14 = 0;
    atomic_compare_exchange_strong(v5, &v14, v13);
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    DefaultFallbacks = atomic_load_explicit(v5, memory_order_acquire);
  }

  return DefaultFallbacks;
}

double TBaseFont::TraitsDistance(atomic_ullong *this, const TTraitsValues *a2)
{
  explicit = atomic_load_explicit(this + 30, memory_order_acquire);
  if (!explicit)
  {
    explicit = TBaseFont::CreateTraitsValues(this);
    if (!explicit)
    {
      return INFINITY;
    }
  }

  v5 = vsubq_f64(*(explicit + 8), *&a2->var1);
  return vaddvq_f64(vmulq_f64(v5, v5)) + (*(explicit + 24) - a2->var3) * (*(explicit + 24) - a2->var3);
}

void TBaseFont::CreateVariantWithTraitsMatchingDescriptors(const TTraitsValues *this@<X0>, CFArrayRef theArray@<X1>, void *a3@<X8>)
{
  if (!theArray)
  {
    goto LABEL_20;
  }

  Count = CFArrayGetCount(theArray);
  if (Count <= 0)
  {
    goto LABEL_20;
  }

  v8 = Count;
  v9 = CFArrayGetCount(theArray);
  if (v8 == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    goto LABEL_19;
  }

  v11 = v9;
  v12 = CFArrayGetValueAtIndex(theArray, 0);
  v13 = v12;
  v14 = v12[5];
  if ((*(v14 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v12[5], 0, 0.0);
  }

  explicit = atomic_load_explicit(v14 + 4, memory_order_acquire);
  if (!explicit)
  {
LABEL_20:
    *a3 = 0;
    return;
  }

  v16 = TBaseFont::TraitsDistance(explicit, this);
  if (v11 == 1)
  {
LABEL_18:
    ValueAtIndex = v13;
    goto LABEL_19;
  }

  v17 = v16;
  v18 = 1;
  while (1)
  {
    v19 = CFArrayGetValueAtIndex(theArray, v18);
    v20 = v19;
    v21 = v19[5];
    if ((*(v21 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v19[5], 0, 0.0);
    }

    v22 = atomic_load_explicit(v21 + 4, memory_order_acquire);
    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = TBaseFont::TraitsDistance(v22, this);
    if (v23 != 0.0)
    {
      if (v17 > v23)
      {
        v17 = v23;
        v13 = v20;
      }

      goto LABEL_17;
    }

    if (v23 < v17)
    {
      break;
    }

LABEL_17:
    if (v11 == ++v18)
    {
      goto LABEL_18;
    }
  }

  ValueAtIndex = v20;
LABEL_19:
  v24 = ValueAtIndex;
  *a3 = atomic_exchange(&v24, 0);
}

void TBaseFont::CreateVariantMatchingFamily(atomic_ullong *this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptorSource::TDescriptorSource(&v7);
    TDescriptorSource::CopyMatchingDescriptorsForFamily(&v7, a2, &v8);
    explicit = atomic_load_explicit(this + 30, memory_order_acquire);
    if (!explicit)
    {
      explicit = TBaseFont::CreateTraitsValues(this);
    }

    if (explicit)
    {
      TBaseFont::CreateVariantWithTraitsMatchingDescriptors(explicit, atomic_load_explicit(&v8, memory_order_acquire), a3);
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 0;
  }
}

void *TCFBase_NEW<CTFontDescriptor,TBaseFont const*,__CFDictionary const*,unsigned int>(void *a1)
{
  result = TCFBase<TDescriptor>::Allocate();
  if (result)
  {
    result[2] = 0;
    result[3] = TDescriptor::Hash;
    result[4] = 0;
    result[5] = result + 6;
    operator new();
  }

  *a1 = 0;
  return result;
}

void TBaseFont::DefaultFallbackDescriptor(CFArrayRef theArray@<X1>, int a2@<W2>, unint64_t *a3@<X8>)
{
  v13 = CFArrayGetValueAtIndex(theArray, 0);
  v5 = atomic_load_explicit(&v13, memory_order_acquire);
  v6 = v5;
  v7 = v5[5];
  if ((*(v7 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v5[5], 0, 0.0);
  }

  explicit = atomic_load_explicit(v7 + 4, memory_order_acquire);

  if (explicit && (*(*explicit + 16))(explicit) == 1414743620)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    (*(*explicit + 512))(&v12, explicit);
    v9 = atomic_load_explicit(&v12, memory_order_acquire);
    v10 = v9;
    if (v9)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
    }

    else
    {
      ValueAtIndex = 0;
    }

    TCFRef<__CTFont const*>::Retain(&v13, ValueAtIndex);
  }

  TDescriptorSource::CopyPossibleSystemUIFontDescriptor(&v13, a2, a3);
}

void TBaseFont::FindFallbackDescriptorForCharacters(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, unsigned int a8@<W7>, atomic_ullong *a9@<X8>, char a10)
{
  v71 = 0;
  Count = CFArrayGetCount(a2);
  v64 = a8;
  if (a8 == 1)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0;
  }

  theArray = v15;
  if ((a6 + 1) <= 1)
  {
    if ((atomic_load_explicit(&qword_1EA869780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA869780))
    {
      qword_1EA869778 = objc_opt_class();
      __cxa_guard_release(&qword_1EA869780);
    }

    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        v16 = *a3;
        if ((v16 + 24627) >= 0x9033u)
        {
          v17 = os_unfair_lock_lock_with_options();
          v18 = *(a2 + 56);
          TDescriptorSource::EnsureFontFallbacksCache(v17);
          CharRangeMapForKey = TFontFallbacks::GetCharRangeMapForKey(TDescriptorSource::sFontFallbacksCache, v18);
          os_unfair_lock_lock_with_options();
          DescriptorIndexForChar = CharRangeToDescriptorMap::GetDescriptorIndexForChar(CharRangeMapForKey, v16);
          os_unfair_lock_unlock((a2 + 8));
          os_unfair_lock_unlock(&TDescriptorSource::sFontFallbacksLock);
          if (DescriptorIndexForChar != -1)
          {
            v21 = *(a2 + 32);
            if (DescriptorIndexForChar >= v21)
            {
              if (DescriptorIndexForChar / 0x64 < v21)
              {
                v26 = [*(a2 + 48) objectAtIndex:DescriptorIndexForChar / 0x64];
                if (v26 != [MEMORY[0x1E695DFB0] null])
                {
                  v27 = *(v26 + 40);
                  if ((*(v27 + 16) & 0x80000000) == 0)
                  {
                    TDescriptor::InitBaseFont(v27, 0, 0.0);
                  }

                  explicit = atomic_load_explicit((v27 + 32), memory_order_acquire);
                  if (explicit && (*(*explicit + 16))(explicit) == 1414743620 && ((*(*explicit + 848))(explicit) & 1) == 0)
                  {
                    v29 = DescriptorIndexForChar % 0x64;
                    v73 = 0xAAAAAAAAAAAAAAAALL;
                    (*(*explicit + 512))(&v73, explicit);
                    v30 = atomic_load_explicit(&v73, memory_order_acquire);
                    v22 = v29 >= [v30 count] ? 0 : objc_msgSend(v30, "objectAtIndex:", v29);

                    if (v22)
                    {
LABEL_13:
                      v23 = v22[5];
                      if ((*(v23 + 4) & 0x80000000) == 0)
                      {
                        TDescriptor::InitBaseFont(v22[5], 0x8000, 0.0);
                      }

                      v24 = atomic_load_explicit(v23 + 4, memory_order_acquire);
                      if (v24)
                      {
                        LOBYTE(v72) = 0;
                        v25 = (*(*v24 + 816))(v24, a3, a4, &v72);
                        if (v25 == a4 || a10 != 1 && v72 == 1)
                        {
                          *a5 = v25;
                          v73 = v22;
                          *a9 = atomic_exchange(&v73, 0);

                          goto LABEL_106;
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v22 = [*(a2 + 48) objectAtIndex:DescriptorIndexForChar];
              if (v22 != [MEMORY[0x1E695DFB0] null] && v22)
              {
                goto LABEL_13;
              }
            }
          }
        }
      }
    }
  }

  v31 = 0;
  HIDWORD(v62) = v64 & 0xFFFFFFFD;
  v63 = a9;
  while (1)
  {
    if (v31 >= Count)
    {
      v32 = a7;
      if (a6)
      {
        goto LABEL_105;
      }

      goto LABEL_51;
    }

    v32 = a7;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v31);
      v34 = ValueAtIndex;
      if (a6 == 2 && !v31)
      {
        TDescriptorSource::TDescriptorSource(&v72);
        TDescriptorSource::CopyEmojiFontDescriptor(theArray, &v72, a7, &v73);

        if (atomic_load_explicit(&v71, memory_order_acquire))
        {
          v35 = atomic_load_explicit(&v71, memory_order_acquire);
          v36 = v35;
          v37 = v35[5];
          if ((*(v37 + 4) & 0x80000000) == 0)
          {
            TDescriptor::InitBaseFont(v35[5], 0x8000, 0.0);
          }

          v38 = atomic_load_explicit(v37 + 4, memory_order_acquire);

          if (v38)
          {
            v31 = 1;
LABEL_56:
            v34 = atomic_load_explicit(&v71, memory_order_acquire);
            if (v34)
            {
              goto LABEL_57;
            }

LABEL_105:
            *a9 = 0;
            goto LABEL_106;
          }
        }

        goto LABEL_47;
      }

      v39 = ValueAtIndex[5];
      if ((*(v39 + 4) & 0x80000000) == 0)
      {
        TDescriptor::InitBaseFont(ValueAtIndex[5], 0x8000, 0.0);
      }

      v40 = atomic_load_explicit(v39 + 4, memory_order_acquire);
      if (v40)
      {
        if (a6 != 1 || !(*(*v40 + 720))(v40))
        {
          break;
        }
      }

LABEL_47:
      if (Count == ++v31)
      {
        v31 = Count;
        if (a6)
        {
          goto LABEL_105;
        }

LABEL_51:
        if (atomic_load_explicit(&v71, memory_order_acquire))
        {
          goto LABEL_105;
        }

        TDescriptorSource::TDescriptorSource(&v72);
        TDescriptorSource::CopyEmojiFontDescriptor(theArray, &v72, v32, &v73);

        if (!atomic_load_explicit(&v71, memory_order_acquire))
        {
          goto LABEL_105;
        }

        v41 = atomic_load_explicit(&v71, memory_order_acquire);
        v42 = v41;
        v43 = v41[5];
        if ((*(v43 + 4) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(v41[5], 0x8000, 0.0);
        }

        v44 = atomic_load_explicit(v43 + 4, memory_order_acquire);

        if (!v44)
        {
          goto LABEL_105;
        }

        goto LABEL_56;
      }
    }

    ++v31;
LABEL_57:
    v45 = v34[5];
    if ((*(v45 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v34[5], 0x8000, 0.0);
    }

    v46 = atomic_load_explicit(v45 + 4, memory_order_acquire);
    if ((*(*v46 + 16))(v46) == 1414743620 && ((*(*v46 + 848))(v46) & 1) == 0)
    {
      v73 = 0xAAAAAAAAAAAAAAAALL;
      (*(*v46 + 512))(&v73, v46);
      if (atomic_load_explicit(&v73, memory_order_acquire))
      {
        *a9 = 0xAAAAAAAAAAAAAAAALL;
        LOBYTE(v62) = a10;
        TBaseFont::FindFallbackDescriptorForCharacters(a1, atomic_load_explicit(&v73, memory_order_acquire), a3, a4, a5, 0xFFFFFFFFLL, a7, v64, v62);
        if (atomic_load_explicit(a9, memory_order_acquire))
        {
          v52 = 1;
LABEL_100:

          goto LABEL_103;
        }
      }

      v52 = 2;
      goto LABEL_100;
    }

    v47 = (*(*v46 + 32))(v46, a1);
    if (a6 || (v47 & 1) == 0)
    {
      LOBYTE(v72) = 0;
      v48 = (*(*v46 + 816))(v46, a3, a4, &v72);
      v49 = a4;
      v50 = v48;
      if (v48 != a4 && (a10 == 1 || v72 != 1))
      {
        goto LABEL_102;
      }

      if (HIDWORD(v62))
      {
LABEL_65:
        v51 = v49;
        a9 = v63;
        if (v50 != v49)
        {
          if (a10 == 1)
          {
            goto LABEL_102;
          }

          v51 = v50;
          if ((v72 & 1) == 0)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_66;
      }

      v53 = 0;
      v54 = a3;
      while (2)
      {
        v55 = v53 + 1;
        v56 = v54[v53];
        v57 = (v56 & 0xFC00) != 0xD800 || v55 == v49;
        if (v57 || (v58 = v54[v55], (v58 & 0xFC00) != 0xDC00))
        {
          if ((v56 - 57344) >> 11 >= 3)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v55 = v53 + 2;
          v59 = v58 + (v56 << 10);
          v56 = v59 - 56613888;
          if ((v59 - 56613888) < 0xF0000 || (v59 - 57727998) > 0xFFFFFC01)
          {
LABEL_95:
            if (v55 >= v49)
            {
              goto LABEL_65;
            }

            v53 = v55;
            if (v50 <= 0)
            {
              goto LABEL_65;
            }

            continue;
          }
        }

        break;
      }

      v60 = v56 - 57345;
      if (v56 == 1051575 || v60 <= 0x536)
      {
        if (v60 > 0x536)
        {
          goto LABEL_95;
        }

        v61 = (*(*v46 + 720))(v46);
        v49 = a4;
        v54 = a3;
        if (v61)
        {
          goto LABEL_95;
        }
      }

      --v50;
      if (a10 == 1)
      {
        goto LABEL_101;
      }

      if (v53 || (v72 & 1) == 0)
      {
        goto LABEL_95;
      }

      LOBYTE(v72) = 0;
LABEL_101:
      v51 = v49;
      a9 = v63;
      if (v50 == v49)
      {
LABEL_66:
        *a5 = v51;
        v73 = v34;
        *a9 = atomic_exchange(&v73, 0);

        v52 = 1;
        goto LABEL_103;
      }

LABEL_102:
      v52 = 0;
LABEL_103:
      if ((v52 | 2) != 2)
      {
        break;
      }
    }
  }

LABEL_106:
}

void TBaseFont::FindFallbackDescriptorForCharacterRange(TBaseFont *this@<X0>, const __CFArray *a2@<X1>, const unsigned __int16 *a3@<X2>, CFRange *a4@<X4>, uint64_t a5@<X3>, atomic_ullong *a6@<X8>)
{
  if (!a2 || (Count = CFArrayGetCount(a2)) == 0)
  {
LABEL_17:
    *a6 = 0;
    return;
  }

  v12 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v13);
    v15 = ValueAtIndex;
    v16 = ValueAtIndex[5];
    if ((*(v16 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(ValueAtIndex[5], 0x8000, 0.0);
    }

    explicit = atomic_load_explicit(v16 + 4, memory_order_acquire);
    if (!explicit)
    {
      goto LABEL_16;
    }

    if (*(*explicit + 16))(explicit) != 1414743620 || ((*(*explicit + 848))(explicit))
    {
      break;
    }

    v21 = 0xAAAAAAAAAAAAAAAALL;
    (*(*explicit + 512))(&v21, explicit);
    if (atomic_load_explicit(&v21, memory_order_acquire))
    {
      *a6 = 0xAAAAAAAAAAAAAAAALL;
      TBaseFont::FindFallbackDescriptorForCharacterRange(this, atomic_load_explicit(&v21, memory_order_acquire), a3, a5, a4);
      if (atomic_load_explicit(a6, memory_order_acquire))
      {
        goto LABEL_19;
      }
    }

LABEL_16:
    if (v12 == ++v13)
    {
      goto LABEL_17;
    }
  }

  if ((*(*explicit + 32))(explicit, this))
  {
    goto LABEL_16;
  }

  v18 = (*(*explicit + 824))(explicit, a3, a5);
  if (v19 < 1)
  {
    goto LABEL_16;
  }

  a4->location = v18;
  a4->length = v19;
  v21 = v15;
  *a6 = atomic_exchange(&v21, 0);
LABEL_19:
}

const __CFArray *TBaseFont::GetCascadeListForFallbackStage(atomic_ullong *a1, int a2, const __CFArray *DefaultFallbacks, int a4, char a5, const unsigned __int16 *a6, uint64_t a7)
{
  if (a2 == 2)
  {
    DefaultFallbacks = TBaseFont::GetDefaultFallbacks(a1, a4, a5);
  }

  else if (a2 != 1)
  {
    if (a2)
    {
      DefaultFallbacks = 0;
    }

    else
    {
      (*(*a1 + 512))(&v15, a1);
      DefaultFallbacks = atomic_load_explicit(&v15, memory_order_acquire);
    }
  }

  if (TBaseFont::ShouldSkipCascadeList(a1, a2, DefaultFallbacks, a4, a5, a6, a7))
  {
    return 0;
  }

  else
  {
    return DefaultFallbacks;
  }
}

uint64_t TBaseFont::ShouldSkipCascadeList(atomic_ullong *a1, int a2, CFArrayRef theArray, int a4, char a5, const unsigned __int16 *a6, uint64_t a7)
{
  if (!theArray)
  {
    return 1;
  }

  if (CFArrayGetCount(theArray))
  {
    if (a2 != 2)
    {
      return 0;
    }

    DefaultComposite = TBaseFont::GetDefaultComposite(a1, a4, a5);
    v16 = 0;
    do
    {
      v14 = IsCharCovered(DefaultComposite, a6, a7, &v16);
    }

    while (!v14 && v16 < a7);
    if (v14)
    {
      return 0;
    }
  }

  return 1;
}

void TBaseFont::ShapingLanguages(TBaseFont *this@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if ((a2 & 1) == 0 && (v10[0] = &unk_1EF259CE8, v10[1] = &Mutable, v10[3] = v10, v9[0] = &unk_1EF259D30, v9[1] = &Mutable, v9[3] = v9, TAATMorphTable::AddShapingLanguages(this, v10)) || (v8[0] = &unk_1EF259CE8, v8[1] = &Mutable, v8[3] = v8, v7[0] = &unk_1EF259D30, v7[1] = &Mutable, v7[3] = v7, TOpenTypeMorph::AddShapingLanguages(this), std::__function::__value_func<void ()(void)>::~__value_func[abi:fn200100](v7), std::__function::__value_func<void ()(__CFString const*)>::~__value_func[abi:fn200100](v8), (a2 & 1) == 0))
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:fn200100](v9);
    std::__function::__value_func<void ()(__CFString const*)>::~__value_func[abi:fn200100](v10);
  }

  *a3 = atomic_exchange(&Mutable, 0);
}

void TBaseFont::CopyAvailableTables(TBaseFont *this@<X0>, void *a2@<X8>)
{
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
  v14 = CGFontCopyTableTags(InitializedGraphicsFont);
  v5 = atomic_load_explicit(&v14, memory_order_acquire);
  if (!v5)
  {

    goto LABEL_13;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);

  if (!Count)
  {
LABEL_13:
    *a2 = 0;
    goto LABEL_14;
  }

  v13 = 0;
  v8 = *(this + 44);
  if (Count >= 1)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&v14, memory_order_acquire), v10 - 2);
      if ((TableFlagForIdentifier(ValueAtIndex) & v8) != 0)
      {
        if (!atomic_load_explicit(&v13, memory_order_acquire))
        {

          if (!atomic_load_explicit(&v13, memory_order_acquire))
          {
            break;
          }

          v12 = atomic_load_explicit(&v13, memory_order_acquire);
          TCFRef<__CTFont const*>::Retain(&v14, v12);
        }

        CFArrayRemoveValueAtIndex(atomic_load_explicit(&v13, memory_order_acquire), v10 - 2);
      }

      --v10;
    }

    while (v10 > 1);
  }

  *a2 = atomic_exchange(&v14, 0);

LABEL_14:
}

uint64_t TBaseFont::InvalidateTable(atomic_uint *this, int a2)
{
  result = TableFlagForIdentifier(a2);
  atomic_fetch_or_explicit(this + 44, result, memory_order_relaxed);
  return result;
}

void TBaseFont::SetConvertedTables(TBaseFont *this, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    v5 = 100663296;
    if (a3)
    {
      v6 = CFRetain(a3);
      v7 = 0;
      atomic_compare_exchange_strong(this + 7, &v7, v6);
      if (v7)
      {
        v5 = 100663296;
      }

      else
      {
        v6 = 0;
        v5 = 369098752;
      }
    }

    v8 = CFRetain(cf);
    v9 = 0;
    atomic_compare_exchange_strong(this + 8, &v9, v8);
    if (v9)
    {
    }

    else
    {

      v5 |= 0x20000000u;
    }

    atomic_fetch_or_explicit(this + 44, v5, memory_order_relaxed);
    v11 = 983040;
    atomic_fetch_or_explicit(this + 45, 0xF0000u, memory_order_relaxed);
    v10 = MEMORY[0x1E695E4D0];
    v12 = 184;
  }

  else
  {
    v10 = MEMORY[0x1E695E4C0];
    v11 = 100663296;
    v12 = 176;
  }

  atomic_fetch_or_explicit((this + v12), v11, memory_order_relaxed);
  v13 = *v10;

  TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, v13, @"CTFontMorxConversionResultAttribute");
}

uint64_t TBaseFont::IsStandaloneEmojiModifier(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a2 > 0)
  {
    return (a4 != 2) ^ (*(*a1 + 720))(a1);
  }

  if ((a3 - 127995) < 5 || a3 == 8205)
  {
    return (a4 != 2) ^ (*(*a1 + 720))(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t TBaseFont::CharacterSetCoversCharacters(TBaseFont *this, CFCharacterSetRef theSet, const unsigned __int16 *a3, uint64_t a4)
{
  v8 = 0;
  while (1)
  {
    v9 = v8 + 1;
    v10 = a3[v8];
    if ((v10 & 0xFC00) == 0xD800 && v9 != a4)
    {
      v12 = a3[v9];
      if ((v12 & 0xFC00) == 0xDC00)
      {
        v9 = v8 + 2;
        v10 = v12 + (v10 << 10) - 56613888;
LABEL_14:
        v13 = v10 - 127995 < 5;
        goto LABEL_15;
      }
    }

    if (v10 >= 0xFE0E)
    {
      break;
    }

    v13 = 0;
LABEL_15:
    v14 = 2;
    if (v10 == 8205 || v13)
    {
      goto LABEL_19;
    }

    if (CFCharacterSetIsLongCharacterMember(theSet, v10))
    {
      return 1;
    }

LABEL_20:
    v8 = v9;
    if (v9 >= a4)
    {
      return 0;
    }
  }

  if (v10 >> 4 > 0xFE0)
  {
    goto LABEL_14;
  }

  if (v10 == 65038)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

LABEL_19:
  if ((TBaseFont::IsStandaloneEmojiModifier(this, 0, v10, v14) & 1) == 0)
  {
    goto LABEL_20;
  }

  return 1;
}

BOOL IsCharCovered(const __CFCharacterSet *a1, const unsigned __int16 *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *a4 + 1;
  *a4 = v6;
  v7 = a2[v5];
  if ((v7 & 0xFC00) == 0xD800 && v6 != a3)
  {
    v9 = a2[v6];
    if ((v9 & 0xFC00) == 0xDC00)
    {
      *a4 = v5 + 2;
      v7 = v9 + (v7 << 10) - 56613888;
    }
  }

  return CFCharacterSetIsLongCharacterMember(a1, v7) != 0;
}

uint64_t TBaseFont::CharactersCovered(atomic_ullong *this, const unsigned __int16 *a2, uint64_t a3, BOOL *a4)
{
  if (a3 >= 1)
  {
    CharacterSetInternal = TBaseFont::GetCharacterSetInternal(this);
    if (atomic_load_explicit(CharacterSetInternal, memory_order_acquire))
    {
      v9 = CharacterSetInternal;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = v11++;
        v13 = a2[v12];
        if ((v13 & 0xFC00) == 0xD800 && v11 != a3)
        {
          v15 = a2[v11];
          if ((v15 & 0xFC00) == 0xDC00)
          {
            break;
          }
        }

        if (v13 >= 0xFE0E)
        {
          if (v13 >> 4 <= 0xFE0)
          {
            if (v13 == 65038)
            {
              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

LABEL_20:
            IsStandaloneEmojiModifier = TBaseFont::IsStandaloneEmojiModifier(this, v10, v13, v17);
            goto LABEL_21;
          }

          goto LABEL_16;
        }

        v16 = 0;
LABEL_17:
        v17 = 2;
        if (v13 == 8205 || v16)
        {
          goto LABEL_20;
        }

        IsStandaloneEmojiModifier = CFCharacterSetIsLongCharacterMember(atomic_load_explicit(v9, memory_order_acquire), v13);
LABEL_21:
        if (IsStandaloneEmojiModifier)
        {
          v10 = v10 - v12 + v11;
        }

        if (a4 && !v12)
        {
          *a4 = v10 > 0;
        }

        if (v11 >= a3)
        {
          return v10;
        }
      }

      v11 = v12 + 2;
      v13 = v15 + (v13 << 10) - 56613888;
LABEL_16:
      v16 = v13 - 127995 < 5;
      goto LABEL_17;
    }
  }

  return 0;
}

uint64_t TBaseFont::CharacterRangeCovered(atomic_ullong *this, const unsigned __int16 *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  CharacterSetInternal = TBaseFont::GetCharacterSetInternal(this);
  if (!atomic_load_explicit(CharacterSetInternal, memory_order_acquire))
  {
    return 0;
  }

  v6 = CharacterSetInternal;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v12 = 0;
  do
  {
    if (IsCharCovered(atomic_load_explicit(v6, memory_order_acquire), a2, a3, &v12))
    {
      if (!v9)
      {
        v8 = v7;
      }

      v10 = v9 - v7;
      v7 = v12;
      v9 = v10 + v12;
    }

    else
    {
      if (v9)
      {
        return v8;
      }

      v7 = v12;
    }
  }

  while (v7 < a3);
  return v8;
}

void TBaseFont::CopyNativeFontForDescriptor(atomic_ullong *this, atomic_uint *a2, uint64_t a3)
{
  if (!a3)
  {
    goto LABEL_9;
  }

  v5 = *(a3 + 40);
  if ((*(v5 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(a3 + 40), 0, 0.0);
  }

  explicit = atomic_load_explicit((v5 + 32), memory_order_acquire);
  if (!explicit)
  {
    goto LABEL_9;
  }

  *this = 0xAAAAAAAAAAAAAAAALL;
  TCGFontCache::CopyFont(atomic_load_explicit(explicit + 10, memory_order_acquire), 0, 0, this);
  if (!atomic_load_explicit(this, memory_order_acquire))
  {

LABEL_9:
    *this = 0;
    return;
  }

  if ((*(*explicit + 696))(explicit))
  {
    atomic_fetch_or_explicit(a2 + 45, 2u, memory_order_relaxed);
    atomic_fetch_or_explicit(a2 + 46, 2u, memory_order_relaxed);
  }
}

void *TBaseFont::CreateStrikeMetricsDictionaryRepresentation(TBaseFont *this)
{
  v7 = xmmword_18477AD30;
  v8 = unk_18477AD40;
  v9 = xmmword_18477AD50;
  v10 = unk_18477AD60;
  v5 = __const__ZL17StrikeMetricsFromPK14CGFontHMetricsj6CGRectd_result;
  v6 = unk_18477AD20;
  if (*(this + 62))
  {
    inited = (this + 248);
  }

  else
  {
    inited = TBaseFont::InitFontMetrics(this, 0.0);
  }

  StrikeMetrics::StrikeMetrics(&v5, inited);
  v2 = objc_opt_new();
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v5), @"unitsPerEm"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", *(&v5 + 1)), @"ascent"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", *&v6), @"descent"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", *(&v6 + 1)), @"leading"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", *&v7), @"capHeight"}];
  v11.origin.x = *(&v8 + 1);
  *&v11.origin.y = v9;
  *&v11.size.height = v10;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v11);
  [v2 setObject:DictionaryRepresentation forKeyedSubscript:@"bbox"];
  CFRelease(DictionaryRepresentation);
  if (BYTE8(v10) == 1)
  {
    [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"forceAscenderDelta"];
  }

  return v2;
}

CFStringRef TBaseFont::DebugDescription(TBaseFont *this)
{
  (*(*this + 200))(&v4);
  v1 = atomic_exchange(&v4, 0);

  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"BaseFont <url: %@>\n", v1);
  return v2;
}

void TBaseFont::RetainedObject(os_unfair_lock_s *a1@<X0>, unsigned int a2@<W1>, const void *a3@<X2>, void *a4@<X8>)
{
  os_unfair_lock_lock_with_options();
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 >= 5)
  {
    __break(1u);
  }

  else
  {
    Value = atomic_load_explicit(&a1[2 * a2 + 138], memory_order_acquire);
    v9 = Value;
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, a3);
    }

    *a4 = Value;

    os_unfair_lock_unlock(a1 + 111);
  }
}

void TBaseFont::SetObject(os_unfair_lock_s *a1, unsigned int a2, const void *a3, const void *a4)
{
  os_unfair_lock_lock_with_options();
  if (a2 >= 5)
  {
    __break(1u);
  }

  else
  {
    explicit = atomic_load_explicit(&a1[2 * a2 + 138], memory_order_acquire);
    v9 = &a1[2 * a2 + 138];
    if (!explicit)
    {
    }

    if (atomic_load_explicit(v9, memory_order_acquire))
    {
      CFDictionarySetValue(atomic_load_explicit(v9, memory_order_acquire), a3, a4);
    }

    os_unfair_lock_unlock(a1 + 111);
  }
}

uint64_t TBaseFont::CopyAttribute(TBaseFont *this, const __CFString *key, const __CFString **a3)
{
  FontAttributeID = GetFontAttributeID(key);
  v6 = *(*this + 48);

  return v6(this, FontAttributeID, a3);
}

CFNumberRef TBaseFont::CopyFormat@<X0>(TBaseFont *this@<X0>, CFNumberRef *a2@<X8>)
{
  valuePtr = (*(*this + 208))(this);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef TBaseFont::CopyStringEncoding@<X0>(TBaseFont *this@<X0>, CFNumberRef *a2@<X8>)
{
  valuePtr = (*(*this + 424))(this);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  *a2 = result;
  return result;
}

void TBaseFont::CopyIgnoreScriptAnalysis(TBaseFont *this@<X0>, void *a2@<X8>)
{
  v3 = (*(*this + 768))(this);
  if (v3)
  {
    v4 = MEMORY[0x1E695E4D0];
    if (v3 != 2)
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    v5 = *v4;
    *a2 = atomic_exchange(&v5, 0);
  }

  else
  {
    *a2 = 0;
  }
}

CFNumberRef TBaseFont::CopyScope@<X0>(TBaseFont *this@<X0>, CFNumberRef *a2@<X8>)
{
  valuePtr = (*(*this + 240))(this);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef TBaseFont::CopyPriority@<X0>(TBaseFont *this@<X0>, CFNumberRef *a2@<X8>)
{
  valuePtr = (*(*this + 256))(this);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef TBaseFont::CopySearchDomain@<X0>(TBaseFont *this@<X0>, CFNumberRef *a2@<X8>)
{
  valuePtr = (*(*this + 272))(this);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef TBaseFont::CopyIsEnabled@<X0>(TBaseFont *this@<X0>, CFNumberRef *a2@<X8>)
{
  valuePtr = (*(*this + 288))(this);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef TBaseFont::CopyIsDownloadable@<X0>(TBaseFont *this@<X0>, CFNumberRef *a2@<X8>)
{
  valuePtr = (*(*this + 304))(this);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef TBaseFont::CopyHasBeenDownloaded@<X0>(TBaseFont *this@<X0>, CFNumberRef *a2@<X8>)
{
  valuePtr = (*(*this + 328))(this);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  *a2 = result;
  return result;
}

CGFloat TBaseFont::GetUnderlinePosition(TBaseFont *this, const CGAffineTransform *a2)
{
  TBaseFont::GetInitializedGraphicsFont(this);
  CGFontGetUnderlinePosition();
  return a2->ty + v3 * a2->d + a2->b * 0.0;
}

CGFloat TBaseFont::GetUnderlineThickness(TBaseFont *this, const CGAffineTransform *a2)
{
  TBaseFont::GetInitializedGraphicsFont(this);
  CGFontGetUnderlineThickness();
  return a2->ty + v3 * a2->d + a2->b * 0.0;
}

CGFloat TBaseFont::GetSlantAngle(TBaseFont *this, const CGAffineTransform *a2)
{
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);

  return CGFontGetItalicAngle(InitializedGraphicsFont);
}

uint64_t TBaseFont::IsInvisible(TBaseFont *this)
{
  if ((*(this + 46) & 8) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 8u);
  }

  return (*(this + 45) >> 3) & 1;
}

unint64_t TBaseFont::GetPhysicalTraitsValues(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 30, memory_order_acquire);
  if (explicit)
  {
    return explicit;
  }

  else
  {
    return TBaseFont::CreateTraitsValues(this);
  }
}

unsigned __int16 *OTL::GCommon::GetLookupListTable(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = (a1 + __rev16(*(a1 + 8)));
  v3 = v2 + 1;
  if ((v2 + 1) > a2)
  {
    return 0;
  }

  v5 = bswap32(*v2) >> 16;
  v6 = &v3[v5];
  v8 = v6 >= v3 && v6 <= a2;
  v9 = (a2 - v3) >> 1;
  if ((v2 + 2) > a2)
  {
    v9 = 0;
  }

  if (v8 || v9 == v5)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ___Z17ConvertToMorxSyncPK9TBaseFont_block_invoke(uint64_t a1, uint64_t a2)
{
  result = ConvertArabicPresentationFormsToMorxInternal(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t std::__function::__func<TBaseFont::ShapingLanguages(BOOL)::$_0,std::allocator<TBaseFont::ShapingLanguages(BOOL)::$_0>,void ()(__CFString const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF259CE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<TBaseFont::ShapingLanguages(BOOL)::$_1,std::allocator<TBaseFont::ShapingLanguages(BOOL)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF259D30;
  a2[1] = v2;
  return result;
}

BOOL TSplicedFont::IsInvisible(atomic_ullong *this)
{
  if ((TSplicedFontDict::IsInvisibleSplice(this + 75) & 1) == 0)
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 72))(&v11, this, @"CTFontFullName");
    v3 = atomic_load_explicit(&v11, memory_order_acquire);
    if (v3)
    {
      v4 = v3;
      Length = CFStringGetLength(v3);

      if (Length && CFStringGetCharacterAtIndex(atomic_load_explicit(&v11, memory_order_acquire), 0) != 46)
      {
        v10 = 0xAAAAAAAAAAAAAAAALL;
        (*(*this + 72))(&v10, this, @"CTFontFamilyName");
        v6 = atomic_load_explicit(&v10, memory_order_acquire);
        if (v6)
        {
          v7 = v6;
          v8 = CFStringGetLength(v6);

          if (v8)
          {
            v2 = CFStringGetCharacterAtIndex(atomic_load_explicit(&v10, memory_order_acquire), 0) == 46;
LABEL_15:

            goto LABEL_11;
          }
        }

        else
        {
        }

        v2 = 1;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v2 = 1;
LABEL_11:

    return v2;
  }

  return 1;
}

void CopyComponentFontDescriptorWithBaseSystemFallback(__CFString *a1, atomic_ullong *a2, atomic_ullong *a3, uint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  a1->isa = 0xAAAAAAAAAAAAAAAALL;
  if (a3)
  {
    v9[0] = @"NSFontNameAttribute";
    v9[1] = @"NSCTFontFileURLAttribute";
    v10[0] = a2;
    v10[1] = a3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    TDescriptorSource::TDescriptorSource(&v8);
    TDescriptorSource::CopyDescriptorForRequest(&v8, v7, 0, 0, a4 | 0x12, a1);
  }

  else
  {
    TDescriptorSource::TDescriptorSource(v10);
    TDescriptorSource::CopyFontDescriptorPerPostScriptName(v10, a2, a4 | 0x12, 5, 0, a1);
  }
}

void TSplicedFont::CopyLocalizedName(atomic_ullong *this@<X0>, __CFString *a2@<X1>, const __CFArray *a3@<X2>, const __CFString **a4@<X3>, void *a5@<X8>)
{
  TBaseFont::CopyAttributeInternal(this, @"CTFontNames", &v19.info);
  v10 = atomic_exchange(&v19.info, 0);

  Value = v10;
  v12 = Value;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, a2);
  }

  v19.info = Value;

  v13 = FontNameCodeForKey(a2);
  v14 = (*(*this + 856))(this);
  v15 = v14;
  if (atomic_load_explicit(&v19.info, memory_order_acquire))
  {
    if (!v14)
    {
LABEL_6:
      *a5 = atomic_exchange(&v19.info, 0);
      goto LABEL_7;
    }

LABEL_5:
    CopyLocalizedFontNameFromResources(atomic_load_explicit(&v19.info, memory_order_acquire), a3, a4, v13, &v19);

    goto LABEL_6;
  }

  v19.isa = 0;
  if (v14 & 1 | ((this[79] & 1) == 0))
  {
    v18 = TSplicedFontDict::FindLocalizedName(this + 75, v13, &v19);
  }

  if (atomic_load_explicit(&v19.info, memory_order_acquire))
  {
    if (a4)
    {
      *a4 = v19.isa;
    }

    NamesWithUpdatedName(&v18, v10, a2, atomic_load_explicit(&v19.info, memory_order_acquire));
    TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, atomic_load_explicit(&v18, memory_order_acquire), @"CTFontNames");

    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = *(this[76] + 40);
  if ((*(v16 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v16, 0, 0.0);
  }

  explicit = atomic_load_explicit((v16 + 32), memory_order_acquire);
  (*(*explicit + 88))(explicit, a2, a3, a4);
LABEL_7:
}

uint64_t TSplicedFont::CopyFeaturesInternal(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 136);

  return v2();
}

uint64_t TSplicedFont::CharactersCovered(TSplicedFont *this, const unsigned __int16 *a2, uint64_t a3, BOOL *a4)
{
  if ((*(*this + 848))(this))
  {
    v8 = *(*(this + 76) + 40);
    if ((*(v8 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v8, 0, 0.0);
    }

    v9 = *(*atomic_load_explicit((v8 + 32), memory_order_acquire) + 816);

    return v9();
  }

  else
  {

    return TBaseFont::CharactersCovered(this, a2, a3, a4);
  }
}

id TSplicedFont::CopyLogicalCharacterSet@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  v3 = this + 24;
  if (!atomic_load_explicit(this + 24, memory_order_acquire))
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 176))(&v7);
    if (atomic_load_explicit(&v7, memory_order_acquire))
    {
      v5 = 0;
      atomic_compare_exchange_strong(this + 24, &v5, atomic_load_explicit(&v7, memory_order_acquire));
      if (!v5)
      {
        TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, atomic_exchange(&v7, 0), @"NSCTFontCharacterSetAttribute");
      }
    }
  }

  result = atomic_load_explicit(v3, memory_order_acquire);
  *a2 = result;
  return result;
}

void TSplicedFont::CopyRepertoireRange(TSplicedFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"UnicodeRange", &v19);
  *a2 = atomic_exchange(&v19, 0);

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
    if (Mutable)
    {
      v19 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 512))(&v19, this);
      v6 = atomic_load_explicit(&v19, memory_order_acquire);
      if (v6)
      {
        v7 = v6;
        Count = CFArrayGetCount(v6);

        if (Count)
        {
          v9 = Count - 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&v19, memory_order_acquire), v9);
            v11 = *(ValueAtIndex + 5);
            if ((*(v11 + 16) & 0x80000000) == 0)
            {
              TDescriptor::InitBaseFont(*(ValueAtIndex + 5), 0, 0.0);
            }

            explicit = atomic_load_explicit((v11 + 32), memory_order_acquire);
            Copy = 0xAAAAAAAAAAAAAAAALL;
            (*(*explicit + 176))(&Copy, explicit);
            if (!atomic_load_explicit(&Copy, memory_order_acquire))
            {
              (*(*explicit + 184))(&v17, explicit);
            }

            v13 = atomic_load_explicit(&Copy, memory_order_acquire);
            if (v13)
            {
              CFCharacterSetUnion(Mutable, v13);
            }

            --v9;
          }

          while (v9 != -1);
        }
      }

      else
      {
      }

      Copy = CFCharacterSetCreateCopy(v4, Mutable);

      v14 = atomic_load_explicit(a2, memory_order_acquire);
      os_unfair_lock_lock_with_options();
      v15 = atomic_load_explicit(this + 15, memory_order_acquire);
      if (v14)
      {
        if (!v15)
        {
          TBaseFont::InitAttributesDict(this);
        }

        v16 = atomic_load_explicit(this + 15, memory_order_acquire);
        if (v16)
        {
          CFDictionarySetValue(v16, @"UnicodeRange", v14);
        }
      }

      else if (v15)
      {
        CFDictionaryRemoveValue(v15, @"UnicodeRange");
      }

      os_unfair_lock_unlock(this + 28);
    }
  }
}

const __CFDictionary *TSplicedFont::GetDesignUITrait(atomic_ullong *this)
{
  result = atomic_load_explicit(this + 75, memory_order_acquire);
  if (result)
  {
    return CFDictionaryGetValue(result, @"NSCTFontUIFontDesignTrait");
  }

  return result;
}

void TSplicedFont::CopyCharacterSet(TSplicedFont *this@<X0>, void *a2@<X8>)
{
  if (*(this + 77))
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    v4 = *(*(this + 76) + 40);
    if ((*(v4 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
    }

    (*(*atomic_load_explicit((v4 + 32), memory_order_acquire) + 184))(&v7);
    if (atomic_load_explicit(&v7, memory_order_acquire))
    {
      v5 = 0;
      atomic_compare_exchange_strong(this + 24, &v5, atomic_load_explicit(&v7, memory_order_acquire));
      if (!v5)
      {
        TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, atomic_exchange(&v7, 0), @"NSCTFontCharacterSetAttribute");
      }
    }

    *a2 = atomic_load_explicit(this + 24, memory_order_acquire);
  }

  else
  {
    v6 = *(*this + 776);

    v6();
  }
}

CGFloat TSplicedFont::GetUnderlinePosition(atomic_ullong *this, const CGAffineTransform *a2)
{
  TBaseFont::GetInitializedGraphicsFont(this);
  CGFontGetUnderlinePosition();
  v5 = a2->ty + v4 * a2->d + a2->b * 0.0;

  return TSplicedFontDict::GetUnderlinePosition(this + 75, v5, a2);
}

CGFloat TSplicedFont::GetUnderlineThickness(atomic_ullong *this, const CGAffineTransform *a2)
{
  TBaseFont::GetInitializedGraphicsFont(this);
  CGFontGetUnderlineThickness();
  v5 = a2->ty + v4 * a2->d + a2->b * 0.0;

  return TSplicedFontDict::GetUnderlineThickness(this + 75, v5, a2);
}

double TSplicedFont::GetSlantAngle(atomic_ullong *this, const CGAffineTransform *a2)
{
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
  ItalicAngle = CGFontGetItalicAngle(InitializedGraphicsFont);

  return TSplicedFontDict::GetSlantAngle(this + 75, ItalicAngle, a2);
}

CGFloat TSplicedFont::GetMaxAdvance(atomic_ullong *this, const CGAffineTransform *a2, int a3)
{
  MaxAdvance = TBaseFont::GetMaxAdvance(this, a2, a3);

  return TSplicedFontDict::GetMaxAdvance(this + 75, MaxAdvance, a2);
}

uint64_t TSplicedFont::CopyPhysicalFontDescriptor(atomic_ullong *this, double a2)
{
  if ((*(*this + 16))(this) == 1414743620 && (*(*this + 848))(this))
  {
    v5 = 12.0;
    if (a2 != 0.0)
    {
      v5 = a2;
    }

    OpticalSizeComponent = TSplicedFont::GetOpticalSizeComponent(this, v5);
  }

  else
  {
    v7 = *(this[76] + 40);
    if ((*(v7 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v7, 0, 0.0);
    }

    OpticalSizeComponent = atomic_load_explicit((v7 + 32), memory_order_acquire);
  }

  v8 = *(*OpticalSizeComponent + 528);
  v4.n128_f64[0] = a2;

  return v8(v4);
}

uint64_t TSplicedFont::GetLanguageAwareOutsets(TSplicedFont *this, __n128 a2, double *a3, double *a4, double *a5, double *a6, const __CFString *a7)
{
  v7 = a2.n128_u64[0];
  v8 = *(*(this + 76) + 40);
  if ((*(v8 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v9 = *(*atomic_load_explicit((v8 + 32), memory_order_acquire) + 896);
  a2.n128_u64[0] = v7;

  return v9(a2);
}

uint64_t TSplicedFont::GetOpticalPointSizes(TSplicedFont *this, double *a2, double *a3)
{
  v3 = *(this + 77);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (*v3 == *(v3 + 8))
  {
    return 0;
  }

  *a2 = 0.0;
  *a3 = *v4;
  return 1;
}

void TComponentFont::TComponentFont(TComponentFont *this, atomic_ullong *a2, const __CFDictionary *a3, atomic_ullong *a4)
{
  TBaseFont::TBaseFont(this, a2);
  *v8 = &unk_1EF259D78;
  *(v8 + 600) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0u;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0u;
  *(v8 + 696) = 0u;
  *(v8 + 712) = 0;
  if (a4)
  {
    explicit = atomic_load_explicit(a4, memory_order_acquire);
  }

  else
  {
    explicit = (*(*a2 + 888))(a2);
  }

  *(this + 90) = explicit;
  *(this + 728) = 0u;
  *(this + 93) = a3;
  *(this + 94) = 0;
  if (!atomic_load_explicit(this + 12, memory_order_acquire))
  {
    ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"name");
    TCFRef<__CTFont const*>::Retain(this + 12, ComponentAttribute);
  }

  if (!atomic_load_explicit(this + 15, memory_order_acquire))
  {
    TBaseFont::InitAttributesDict(this);
  }

  SetValuesToDictionaryFromDictionary(atomic_load_explicit(this + 15, memory_order_acquire), a3);
  if (CFDictionaryGetValue(a3, @"hmtxOverride"))
  {
    *(this + 178) |= 0x20u;
  }

  if (CFDictionaryGetValue(a3, @"Matrix"))
  {
    *(this + 178) |= 0x40u;
  }

  if (CFDictionaryGetValue(a3, @"cmapOverride"))
  {
    *(this + 178) |= 0x100u;
  }

  if (CFDictionaryGetValue(a3, @"UnicodeCharSet") || CFDictionaryGetValue(a3, @"NSCTFontCharacterSetAttribute"))
  {
    *(this + 178) |= 0x200u;
  }

  if (CFDictionaryGetValue(a3, @"UnicodeCharSetTrim"))
  {
    *(this + 178) |= 0x400u;
  }
}

unsigned int *TComponentFont::GetPhysicalSymbolicTraits(TComponentFont *this)
{
  result = (*(*this + 808))(this);
  if (result)
  {
    return *result;
  }

  return result;
}

unint64_t TComponentFont::GetPhysicalTraitsValues(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 92, memory_order_acquire);
  if (!explicit)
  {
    v9 = 0;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    TBaseFont::CreateTraitsValuesPerFontInfo(this, &v9, &v8);
    if (!v9 && (this[89] & 4) != 0)
    {
      v7 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 112))(&v7, this);
      v6 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 120))(&v6, this);
      CreateTraitsWithVariation(atomic_load_explicit(&v8, memory_order_acquire), atomic_load_explicit(&v7, memory_order_acquire), atomic_load_explicit(&v6, memory_order_acquire), 0, 0, 0, &v5);
    }

    if (atomic_load_explicit(&v8, memory_order_acquire))
    {
      TBaseFont::CreateTraitsValuesFromTraitsDictionary(atomic_load_explicit(&v8, memory_order_acquire), v3);
    }

    explicit = 0;
  }

  return explicit;
}

double TComponentFont::GetSlantAngle(atomic_ullong *this, const CGAffineTransform *a2)
{
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
  ItalicAngle = CGFontGetItalicAngle(InitializedGraphicsFont);

  return TSplicedFontDict::GetSlantAngle(this + 90, ItalicAngle, a2);
}

void TComponentFont::CalculateFontMetrics(TComponentFont *this@<X0>, double a2@<D0>, int a3@<W1>, StrikeMetrics *a4@<X8>)
{
  *(a4 + 2) = xmmword_18477ADA0;
  *(a4 + 3) = unk_18477ADB0;
  *(a4 + 4) = xmmword_18477ADC0;
  *(a4 + 5) = unk_18477ADD0;
  *a4 = xmmword_18477AD80;
  *(a4 + 1) = unk_18477AD90;
  TBaseFont::CalculateFontMetrics(this, a3, a4);
  v8.n128_f64[0] = a2;

  TComponentFont::AdjustLineMetrics(this, a3, a4, v8);
}

__CFString *TComponentFont::GetSyntheticName(TComponentFont *this)
{
  v2 = (*(*this + 808))(this);
  v3 = v2;
  if (v2)
  {
    v4 = *v2 & 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*this + 544))(this);
  if (v3)
  {
    v7 = v3[1];
  }

  else
  {
    v7 = 0.0;
  }

  return TDescriptorSource::GetNameForSystemFontOfWeight(v5, 0, v7, v4, 0, v6);
}

void TComponentFont::CopyLocalizedName(atomic_ullong *this@<X0>, const __CFString *a2@<X1>, const __CFArray *a3@<X2>, const __CFString **a4@<X3>, __CFString *a5@<X8>)
{
  if ((*(*this + 856))(this))
  {
    v10 = FontNameCodeForKey(a2);
    if ((*(*this + 864))(this))
    {
      v11 = v10 == 4;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      SyntheticName = TComponentFont::GetSyntheticName(this);
      FontName = FullNameForSynthetic(SyntheticName);
    }

    else
    {
      FontName = TSplicedFontDict::FindFontName(this + 90, v10, 0);
    }

    CopyLocalizedFontNameFromResources(FontName, a3, a4, v10, a5);
  }

  else
  {

    TBaseFont::CopyLocalizedName(this, a2, a3, a4, a5);
  }
}

void TComponentFont::CopyLocales(TComponentFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  if ((*(this + 713) & 3) != 0)
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 184))(&v6, this);
    if (atomic_load_explicit(&v6, memory_order_acquire))
    {
      TLocaleManager::TLocaleManager(&v5);
      explicit = atomic_load_explicit(&v6, memory_order_acquire);
      TLocaleManagerImp::CopyLanguagesFromCharacterSet(v5, explicit, 0, 0, a2);
      os_unfair_lock_unlock(v5 + 6);

      return;
    }
  }

  TBaseFont::CopyLocales(this, a2);
}

BOOL TComponentFont::SupportsLanguages(TComponentFont *this, const __CFArray *a2)
{
  if ((*(this + 713) & 3) != 0)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 344))(&v13);
    if (a2 && (Count = CFArrayGetCount(a2)) != 0)
    {
      v4 = 0;
      v5 = Count - 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
        v7 = atomic_load_explicit(&v13, memory_order_acquire);
        if (!v7)
        {
          break;
        }

        v8 = v7;
        v15.length = CFArrayGetCount(v7);
        v15.location = 0;
        v9 = CFArrayContainsValue(v8, v15, ValueAtIndex);
        v10 = v9 != 0;

        if (v9)
        {
          v11 = v5 == v4;
        }

        else
        {
          v11 = 1;
        }

        ++v4;
        if (v11)
        {
          goto LABEL_17;
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

LABEL_17:

    return v10;
  }

  else
  {

    return TBaseFont::SupportsLanguages(this, a2);
  }
}

uint64_t anonymous namespace::TcmapOverrideContext::GetMappedGlyph(_anonymous_namespace_::TcmapOverrideContext *this, unsigned int a2)
{
  if (!this)
  {
    goto LABEL_9;
  }

  v2 = *this;
  if (!*this)
  {
    goto LABEL_9;
  }

  v3 = this + 8;
  v4 = this + 8 * v2 + 8;
  while (1)
  {
    v5 = v2 >> 1;
    v6 = &v3[8 * (v2 >> 1)];
    if (*v6 >= a2)
    {
      break;
    }

    v3 = v6 + 8;
    v5 = v2 + ~v5;
LABEL_8:
    v2 = v5;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (*v6 > a2)
  {
    v4 = &v3[8 * (v2 >> 1)];
    goto LABEL_8;
  }

  if (v2 != 1)
  {
    do
    {
      v9 = v5 >> 1;
      v10 = &v3[8 * (v5 >> 1)];
      v12 = *v10;
      v11 = v10 + 8;
      v5 += ~(v5 >> 1);
      if (v12 < a2)
      {
        v3 = v11;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v5);
  }

  v13 = v6 + 8;
  if (v4 != v6 + 8)
  {
    v14 = (v4 - (v6 + 8)) >> 3;
    v4 = v13;
    do
    {
      v15 = v14 >> 1;
      v16 = &v4[8 * (v14 >> 1)];
      v18 = *v16;
      v17 = v16 + 8;
      v14 += ~(v14 >> 1);
      if (v18 > a2)
      {
        v14 = v15;
      }

      else
      {
        v4 = v17;
      }
    }

    while (v14);
  }

  if (v3 != v4)
  {
    return *(v3 + 1);
  }

LABEL_9:
  LOWORD(v7) = 0;
  return v7;
}

uint64_t TComponentFont::CharactersCovered(atomic_ullong *this, const unsigned __int16 *a2, uint64_t a3, BOOL *a4)
{
  if (*(this + 713))
  {
    ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"cmapOverride");
    v19 = ComponentAttribute;
    if (ComponentAttribute)
    {
      ComponentAttribute = CFDataGetBytePtr(ComponentAttribute);
    }

    if (a3 < 1)
    {
      v10 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v9++;
        v12 = a2[v11];
        if ((v12 & 0xFC00) == 0xD800 && v9 != a3)
        {
          v14 = a2[v9];
          v15 = (v14 & 0xFC00) == 56320;
          v16 = v14 + (v12 << 10) - 56613888;
          v9 = v15 ? v11 + 2 : v11 + 1;
          if (v15)
          {
            v12 = v16;
          }
        }

        v18 = v9 - v11;
        if (!MappedGlyph)
        {
          v18 = 0;
        }

        v10 += v18;
        if (a4 && !v11)
        {
          *a4 = v10 > 0;
        }
      }

      while (v9 < a3);
    }

    return v10;
  }

  else
  {

    return TBaseFont::CharactersCovered(this, a2, a3, a4);
  }
}

uint64_t TComponentFont::CharacterRangeCovered(atomic_ullong *this, const unsigned __int16 *a2, uint64_t a3)
{
  if ((*(this + 713) & 1) == 0)
  {
    return TBaseFont::CharacterRangeCovered(this, a2, a3);
  }

  ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"cmapOverride");
  v17 = ComponentAttribute;
  if (ComponentAttribute)
  {
    BytePtr = CFDataGetBytePtr(ComponentAttribute);
  }

  else
  {
    BytePtr = 0;
  }

  if (a3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v8 = 0;
    v5 = 0;
    v9 = 0;
    do
    {
      v10 = v8 + 1;
      v11 = a2[v8];
      if ((v11 & 0xFC00) == 0xD800 && v10 != a3)
      {
        v13 = a2[v10];
        v14 = (v13 & 0xFC00) == 56320;
        v15 = v13 + (v11 << 10) - 56613888;
        v10 = v14 ? v8 + 2 : v8 + 1;
        if (v14)
        {
          v11 = v15;
        }
      }

      {
        if (!v9)
        {
          v5 = v10;
        }

        v9 = v9 - v8 + v10;
      }

      else if (v9)
      {
        break;
      }

      v8 = v10;
    }

    while (v10 < a3);
  }

  return v5;
}

uint64_t TComponentFont::GetUnscaledAdvances(TComponentFont *this, unsigned __int16 *a2, void *a3, int a4, int64_t a5)
{
  if ((*(this + 712) & 0x20) != 0 && (ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"hmtxOverride")) != 0)
  {
    if (a5 >= 1)
    {
      v11 = ComponentAttribute;
      v12 = 8 * a4;
      v13 = (a3 + 1);
      do
      {
        v14 = *a2++;
        *(v13 - 1) = CFDictionaryGetValue(v11, v14);
        if (a4 >= 2)
        {
          bzero(v13, v12 - 8);
        }

        v13 = (v13 + v12);
        --a5;
      }

      while (a5);
    }

    return 1;
  }

  else
  {

    return TBaseFont::GetUnscaledAdvances(this, a2, a3, a4, a5);
  }
}

CFStringRef TComponentFont::DebugDescription(atomic_ullong *this)
{
  (*(*this + 200))(&v6);
  v2 = atomic_exchange(&v6, 0);

  TBaseFont::CreateDescriptorAttributes(this, &v6);
  v3 = atomic_exchange(&v6, 0);

  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"ComponentFont <url: %@, attributes: %@>\n", v2, v3);
  return v4;
}

CGFloat TTenuousComponentFont::GetCapHeight(TTenuousComponentFont *this, const CGAffineTransform *a2)
{
  if ((*(this + 713) & 0x20) != 0)
  {
    CapHeight = *(this + 162);
  }

  else
  {
    InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
    CapHeight = CGFontGetCapHeight(InitializedGraphicsFont);
  }

  return a2->ty + a2->d * CapHeight + a2->b * 0.0;
}

id TTenuousComponentFont::CopyRepertoireRange@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  result = atomic_load_explicit(this + 95, memory_order_acquire);
  *a2 = result;
  return result;
}

uint64_t TTenuousComponentFont::CharactersCovered(atomic_ullong *this, const unsigned __int16 *a2, uint64_t a3, BOOL *a4)
{
  explicit = atomic_load_explicit(this + 95, memory_order_acquire);
  if (explicit && !TBaseFont::CharacterSetCoversCharacters(this, explicit, a2, a3))
  {
    return 0;
  }

  return TComponentFont::CharactersCovered(this, a2, a3, a4);
}

uint64_t TTenuousComponentFont::CharacterRangeCovered(atomic_ullong *this, const unsigned __int16 *a2, uint64_t a3)
{
  explicit = atomic_load_explicit(this + 95, memory_order_acquire);
  if (explicit)
  {
    v9 = 0;
    do
    {
      v7 = IsCharCovered(explicit, a2, a3, &v9);
    }

    while (!v7 && v9 < a3);
    if (!v7)
    {
      return 0;
    }
  }

  return TComponentFont::CharacterRangeCovered(this, a2, a3);
}

uint64_t TTenuousComponentFont::GetUnicodeEncoding(TTenuousComponentFont *this)
{
  result = (*(*this + 904))(this);
  if (result)
  {

    return TBaseFont::GetUnicodeEncoding(this);
  }

  return result;
}

BOOL TTenuousComponentFont::GetOpticalPointSizes(TTenuousComponentFont *this, double *a2, double *a3)
{
  if ((*(*this + 848))(this))
  {
    *a2 = *(this + 75);
    *a3 = *(this + 82);
    return 1;
  }

  else if ((*(this + 712) & 0x80) != 0)
  {
    return 0;
  }

  else
  {

    return TBaseFont::GetOpticalPointSizes(this, a2, a3);
  }
}

void TTenuousComponentFont::CopyCSSWeight(atomic_ullong *this@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = atomic_load_explicit(this + 96, memory_order_acquire);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, &unk_1EF27A6F8);

    if (Value)
    {
      *a2 = Value;
      return;
    }
  }

  else
  {
  }

  TBaseFont::CopyCSSWeight(this, a2);
}

void TTenuousComponentFont::CopyCSSWidth(atomic_ullong *this@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = atomic_load_explicit(this + 96, memory_order_acquire);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, &unk_1EF27A710);

    if (Value)
    {
      *a2 = Value;
      return;
    }
  }

  else
  {
  }

  TBaseFont::CopyCSSWidth(this, a2);
}

uint64_t TSplicedFont::GetSymbolicTraitsInternal(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 160);

  return v2();
}

uint64_t TSplicedFont::CopyDesignLanguages(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 376);

  return v2();
}

uint64_t TSplicedFont::InvalidateTable(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 496);

  return v2();
}

id TSplicedFont::CopyCascadeList@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  result = atomic_load_explicit(this + 78, memory_order_acquire);
  *a2 = result;
  return result;
}

uint64_t TSplicedFont::GetPhysicalSymbolicTraits(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 536);

  return v2();
}

unint64_t TSplicedFont::GetPresetFallbacksKey(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  return atomic_load_explicit((atomic_load_explicit((v1 + 32), memory_order_acquire) + 96), memory_order_acquire);
}

uint64_t TSplicedFont::GetGlyphsForCharacters(TSplicedFont *this, const unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *(*(this + 76) + 40);
  if ((*(v3 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v4 = *(*atomic_load_explicit((v3 + 32), memory_order_acquire) + 672);

  return v4();
}

const __CFDictionary *TSplicedFont::GetTextStyle(atomic_ullong *this)
{
  result = atomic_load_explicit(this + 75, memory_order_acquire);
  if (result)
  {
    return CFDictionaryGetValue(result, @"NSCTFontUIUsageAttribute");
  }

  return result;
}

uint64_t TSplicedFont::HasExuberatedLineHeight(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 792);

  return v2();
}

uint64_t TSplicedFont::GetPhysicalTraitsValues(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 808);

  return v2();
}

uint64_t *std::unique_ptr<TInlineVector<TOpticalFontInfo,2ul>>::reset[abi:fn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      v4 = (v2 + 136);
      if (v2 + 24 <= v3 && v4 > v3)
      {
        if (*(v2 + 16) == *(v2 + 136))
        {
          *v4 = v3;
        }
      }

      else
      {
        operator delete(v3);
      }
    }

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

void *__cdecl CTRunDelegateGetRefCon(void *runDelegate)
{
  if (runDelegate)
  {
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v2[1] = v1;
    v3 = v1;
    v2[0] = v1;
    TRunDelegate::TRunDelegate(v2, runDelegate);
    return *(&v3 + 1);
  }

  return runDelegate;
}

double TMetricsDelegateRun::UpdateWidth(TMetricsDelegateRun *this, TLine *a2, uint64_t a3, double a4)
{
  v149[1] = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (a2)
  {
    v8 = *(this + 39);
    v9 = MEMORY[0x1E695F060];
    if (!v8)
    {
      v8 = MEMORY[0x1E695F060];
    }

    v10 = *(this + 24) + *v8;
    Value = CFDictionaryGetValue(atomic_load_explicit(this + 5, memory_order_acquire), @"CTRunMetricsDelegate");
    v11 = a3 + 1;
    if (a3 <= 0)
    {
      v13 = 1;
      v18 = a3;
    }

    else
    {
      v12 = a3 - 1;
      v13 = 1;
      while (1)
      {
        v14 = *(a2 + 2);
        if (v12 >= (*(a2 + 3) - v14) >> 3)
        {
          goto LABEL_186;
        }

        v15 = *(*(v14 + 8 * v12) + 40);
        if (![Value isEqual:{CFDictionaryGetValue(atomic_load_explicit((v15 + 40), memory_order_acquire), @"CTRunMetricsDelegate"}])
        {
          break;
        }

        if ((*(a2 + 76) & 8) != 0)
        {
          return v4;
        }

        ++v13;
        v16 = *(v15 + 312);
        if (!v16)
        {
          v16 = v9;
        }

        v17 = *(v15 + 192) + *v16;
        v10 = v10 + v17;
        a4 = a4 - v17;
        if (--v12 == -1)
        {
          v18 = 0;
          v13 = a3 + 1;
          goto LABEL_15;
        }
      }

      v18 = v12 + 1;
    }

LABEL_15:
    v19 = *(a2 + 2);
    v20 = (*(a2 + 3) - v19) >> 3;
    if (v11 < v20)
    {
      v21 = v13 + ~a3 + v20;
      do
      {
        v22 = *(a2 + 2);
        if (v11 >= (*(a2 + 3) - v22) >> 3)
        {
          goto LABEL_186;
        }

        v23 = *(*(v22 + 8 * v11) + 40);
        if (![Value isEqual:{CFDictionaryGetValue(atomic_load_explicit((v23 + 40), memory_order_acquire), @"CTRunMetricsDelegate"}])
        {
          goto LABEL_24;
        }

        if ((*(a2 + 76) & 8) == 0)
        {
          return v4;
        }

        ++v13;
        v24 = *(v23 + 312);
        if (!v24)
        {
          v24 = v9;
        }

        v25 = *(v23 + 192) + *v24;
        v10 = v10 + v25;
        a4 = a4 - v25;
        ++v11;
      }

      while (v20 != v11);
      v13 = v21;
LABEL_24:
      v19 = *(a2 + 2);
      v20 = (*(a2 + 3) - v19) >> 3;
    }

    if (v20 <= v18)
    {
LABEL_186:
      __break(1u);
LABEL_187:
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v26 = *(*(v19 + 8 * v18) + 40);
    v28 = v26[1];
    v27 = v26[2];
    v29 = (*(*v26 + 56))(v26);
    v144 = v29;
    v30 = (*(*v26 + 64))(v26);
    if (v13 >= 2)
    {
      v31 = v13 + v18;
      v32 = v18 + 1;
      while (1)
      {
        v33 = *(a2 + 2);
        if (v32 >= (*(a2 + 3) - v33) >> 3)
        {
          goto LABEL_186;
        }

        v34 = *(*(v33 + 8 * v32) + 40);
        v35 = v34[1];
        if (v35 >= v28)
        {
          v36 = v28;
        }

        else
        {
          v36 = v34[1];
        }

        v37 = v34[2] + v35;
        if (v28 + v27 > v37)
        {
          v37 = v28 + v27;
        }

        v27 = v37 - v36;
        v38 = (*(*v34 + 56))(v34);
        if (v29 < v38)
        {
          v29 = v38;
        }

        v144 = v29;
        v39 = (*(*v34 + 64))(v34);
        if (v30 < v39)
        {
          v30 = v39;
        }

        if (v18 <= ++v32)
        {
          v28 = v36;
          if (v31 > v32)
          {
            continue;
          }
        }

        goto LABEL_42;
      }
    }

    v36 = v28;
LABEL_42:
    v143 = v30;
    v40 = [Value beginClusterModificationHandler];
    if (v40)
    {
      v41 = v40;
      v43 = *a2;
      v42 = *(a2 + 1);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v27 < 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = 0;
        v45 = v36;
        do
        {
          ClusterRange = TLine::GetClusterRange(a2, v43, v45, 2, 0, 0, 0);
          ++v44;
          v45 = ClusterRange + v47;
          v48 = v36 > ClusterRange + v47 || v27 + v36 <= v45;
        }

        while (!v48);
      }

      v139 = (*(v41 + 16))(v41, v44, v36, v27, v10, a4, v29, v30);
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:fn200100](v42);
      }
    }

    else
    {
      v139 = 0;
    }

    v49 = [Value clusterModificationHandler];
    if (v49)
    {
      v50 = v49;
      v51 = *(a2 + 1);
      v138 = *a2;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v136 = v51;
      memset(v148, 170, sizeof(v148));
      v146 = 0;
      v147 = 0;
      __p = 0;
      v149[0] = v148;
      if (v27 < 1)
      {
        v4 = 0.0;
      }

      else
      {
        v137 = v27 + v36;
        v4 = 0.0;
        v52 = v36;
        do
        {
          v142 = 0.0;
          memset(v141, 170, sizeof(v141));
          v53 = TLine::GetClusterRange(a2, v138, v52, 2, &v141[1], &v142, v141);
          v55 = v54;
          v56 = v141[0] <= 0 ? *&v141[1] + *&v141[3] - 1 : *&v141[1];
          v57 = *(a2 + 2);
          v58 = *(a2 + 3);
          if (v57 == v58)
          {
            v60 = *(a2 + 2);
          }

          else
          {
            v59 = 0;
            v60 = *(a2 + 2);
            v61 = v60;
            while (1)
            {
              v62 = *(*(*v61 + 40) + 208) + v59;
              if (v62 > v56)
              {
                break;
              }

              v61 += 8;
              v60 += 8;
              v59 = v62;
              if (v61 == v58)
              {
                v60 = *(a2 + 3);
                goto LABEL_72;
              }
            }

            v56 -= v59;
          }

LABEL_72:
          v63 = v60 - v57;
          v64 = (v60 - v57) >> 3;
          v65 = v58 - v57;
          if (v64 >= v65 >> 3)
          {
            break;
          }

          if (v65 >> 3 <= v64)
          {
            goto LABEL_186;
          }

          v66 = *(*(v57 + v63) + 48);
          v67 = (*(*v66 + 56))(v66);
          v68 = (*(*v66 + 64))(v66);
          v69 = *&v141[3];
          if (v141[0] < 0)
          {
            if (v56 - *&v141[3] + 1 >= v56)
            {
              v69 = 2 - *&v141[3];
            }

            else
            {
              v56 = v56 - *&v141[3] + 1;
            }
          }

          v70 = *(v66 + 26);
          v71 = v69 + v56;
          if (v69 + v56 >= v70)
          {
            v72 = *(v66 + 26);
          }

          else
          {
            v72 = v69 + v56;
          }

          if (v56 < 0 || v56 >= v70)
          {
            v74 = v71 > 0 && v56 < 1;
            v56 = 0;
            if (v74)
            {
              v73 = v72;
            }

            else
            {
              v73 = 0;
            }
          }

          else
          {
            v73 = v72 - v56;
          }

          if (v73 >= 1)
          {
            v75 = v56;
            v76 = *(*(v66 + 27) + 16);
            v77 = *(v66 + 25);
            if (v70 >= v56)
            {
              v78 = v56;
            }

            else
            {
              v78 = *(v66 + 26);
            }

            if (v78 < 1)
            {
              v78 = 0;
            }

            else
            {
              v79 = (v76 + 2 * v77);
              v80 = *(v66 + 33);
              v81 = v78;
              do
              {
                v83 = *v79++;
                v82 = v83;
                v84 = v80-- != 0;
                v85 = v84;
                if (v82 == -1)
                {
                  v86 = v85;
                }

                else
                {
                  v86 = 0;
                }

                v75 -= v86;
                --v81;
              }

              while (v81);
            }

            if (v70 >= v56 + v73)
            {
              v70 = v56 + v73;
            }

            v48 = v70 <= v78;
            v87 = v70 - v78;
            if (!v48)
            {
              v88 = *(v66 + 33) - v78;
              v89 = (v76 + 2 * v77 + 2 * v78);
              do
              {
                v91 = *v89++;
                v90 = v91;
                v84 = v88-- != 0;
                v92 = v84;
                if (v90 == -1)
                {
                  v93 = v92;
                }

                else
                {
                  v93 = 0;
                }

                v73 -= v93;
                --v87;
              }

              while (v87);
            }

            v94 = *(a2 + 2);
            if (*(a2 + 3) - v94 <= v63)
            {
              goto LABEL_186;
            }

            v95 = (*(v50 + 16))(v50, v139, v53, v55, *(v94 + v63), v75, v73, &v144, v142, &v143);
            if (v95 != 0.0)
            {
              v96 = v95;
              v97 = v146;
              if (v146 >= v147)
              {
                v99 = 0xAAAAAAAAAAAAAAABLL * ((v146 - __p) >> 3) + 1;
                if (v99 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_187;
                }

                if (0x5555555555555556 * ((v147 - __p) >> 3) > v99)
                {
                  v99 = 0x5555555555555556 * ((v147 - __p) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v147 - __p) >> 3) >= 0x555555555555555)
                {
                  v100 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v100 = v99;
                }

                if (v100)
                {
                  v101 = v149[0];
                  if (v149[0] + 24 * v100 > v149)
                  {
                    if (v100 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:fn200100]();
                  }

                  v149[0] += 24 * v100;
                }

                else
                {
                  v101 = 0;
                }

                v102 = v101 + 8 * ((v146 - __p) >> 3);
                v103 = v101 + 24 * v100;
                *v102 = *&v141[1];
                *(v102 + 16) = v95;
                v98 = (v102 + 24);
                v104 = (v102 - (v146 - __p));
                memcpy(v104, __p, v146 - __p);
                v105 = __p;
                v106 = v147;
                __p = v104;
                v146 = v98;
                v147 = v103;
                if (v105)
                {
                  if (v148 > v105 || v149 <= v105)
                  {
                    operator delete(v105);
                  }

                  else if (v106 == v149[0])
                  {
                    v149[0] = v105;
                  }
                }
              }

              else
              {
                *v146 = *&v141[1];
                *(v97 + 2) = v95;
                v98 = v97 + 24;
              }

              v4 = v4 + v96;
              v146 = v98;
            }

            v107 = v144;
            if (v144 != v67 && v144 > 0.0)
            {
              *(TRun::EnsureRareData(v66) + 32) = v107;
            }

            v108 = v143;
            if (v143 != v68 && v143 > 0.0)
            {
              *(TRun::EnsureRareData(v66) + 40) = v108;
            }

            v52 = v53 + v55;
          }
        }

        while (v36 <= v52 && v137 > v52);
      }

      v110 = __p;
      v109 = v146;
      if (__p != v146)
      {
        do
        {
          v111 = *v110;
          v112 = *(a2 + 76);
          if ((v112 & 8) == 0)
          {
            v111 = v111 + *(v110 + 1) - 1;
          }

          v113 = *(a2 + 2);
          v114 = *(a2 + 3);
          if (v113 == v114)
          {
            v119 = 0xAAAAAAAAAAAAAAAALL;
            v116 = *(a2 + 2);
          }

          else
          {
            v115 = 0;
            v116 = *(a2 + 2);
            v117 = v116;
            while (1)
            {
              v118 = *(*(*v117 + 40) + 208) + v115;
              if (v118 > v111)
              {
                break;
              }

              v117 += 8;
              v116 += 8;
              v115 = v118;
              if (v117 == v114)
              {
                v119 = 0xAAAAAAAAAAAAAAAALL;
                v116 = *(a2 + 3);
                goto LABEL_161;
              }
            }

            v119 = v111 - v115;
          }

LABEL_161:
          v120 = v116 - v113;
          v121 = v114 - v113;
          if (v120 >> 3 < v121 >> 3)
          {
            if (v121 >> 3 <= (v120 >> 3))
            {
              goto LABEL_186;
            }

            v122 = *(v110 + 2);
            v123 = *(*(v113 + v120) + 48);
            if ((v112 & 8) != 0)
            {
              while (1)
              {
                v127 = v119 - 1;
                if (v119 < 1)
                {
                  break;
                }

                v124 = v123[27];
                v125 = v123[25];
                v128 = *(v124[5] + 4 * v125 + 4 * v119-- - 4);
                if ((v128 & 0x20) == 0)
                {
LABEL_169:
                  v129 = v124[4];
                  if (v129 || (v132 = v124[3]) == 0)
                  {
                    v130 = v129 + 16 * v125 + 16 * v127;
                    v131 = *(v130 + 8);
                  }

                  else
                  {
                    v130 = v132 + 8 * v125 + 8 * v127;
                    v131 = 0;
                  }

                  v133 = v122 + *v130;
                  TStorageRange::SetAdvance((v123 + 24), v127, *(&v131 - 1));
                  TStorageRange::SetInterGlyphsExtraSpace(v123 + 24, v127, v122);
                  goto LABEL_175;
                }
              }
            }

            else
            {
              while (v119 + 1 >= 1)
              {
                v124 = v123[27];
                v125 = v123[25];
                v126 = *(v124[5] + 4 * v125 + 4 * v119--);
                if ((v126 & 0x20) == 0)
                {
                  v127 = v119 + 1;
                  goto LABEL_169;
                }
              }
            }

            v150.height = 0.0;
            v150.width = *(v110 + 2);
            TRun::AdvanceInitialAdvance(v123, v150);
          }

LABEL_175:
          v110 += 24;
        }

        while (v110 != v109);
        v110 = __p;
      }

      if (v110)
      {
        v146 = v110;
        if (v148 > v110 || v149 <= v110)
        {
          operator delete(v110);
        }
      }

      if (v136)
      {
        std::__shared_weak_count::__release_shared[abi:fn200100](v136);
      }
    }

    else
    {
      v4 = 0.0;
    }

    v134 = [Value endClusterModificationHandler];
    if (v134)
    {
      (*(v134 + 16))(v134, v139);
    }
  }

  return v4;
}

void TMetricsDelegateRun::~TMetricsDelegateRun(TMetricsDelegateRun *this)
{
  TRun::~TRun(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TMetricsDelegateRun::FindBreak@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const TCharStream *a3@<X2>, int a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  a5[1] = 0xAAAAAAAAAAAAAAAALL;
  a5[2] = -1;
  result = TRun::FindBreak(a1, a2, a3, a4, a5, a6);
  *a5 |= 8u;
  return result;
}

unint64_t TInstanceFont::GetPresetFallbacksKey(atomic_ullong *this)
{
  v42 = *MEMORY[0x1E69E9840];
  atomic_load_explicit(this + 79, memory_order_acquire);
  ParserFont = CGFontGetParserFont();
  if (!ParserFont || !atomic_load_explicit(this + 75, memory_order_acquire))
  {
    return atomic_load_explicit(this + 12, memory_order_acquire);
  }

  v3 = ParserFont;
  keys = &unk_1EF27A728;
  values = CFDictionaryGetValue(atomic_load_explicit(this + 75, memory_order_acquire), &unk_1EF27A728);
  v4 = *MEMORY[0x1E695E480];
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  keys = v5;
  v6 = CFArrayCreate(v4, &keys, 1, MEMORY[0x1E695E9C0]);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 120))(&v25, this);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  CreateClosestInstanceVariation(v6, atomic_load_explicit(&v25, memory_order_acquire), &v24);
  v7 = atomic_load_explicit(&v24, memory_order_acquire);
  if (!v7)
  {

LABEL_9:
    v16 = 1;
    goto LABEL_24;
  }

  v8 = v7;
  Count = CFDictionaryGetCount(v7);

  if (!Count)
  {
    goto LABEL_9;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[14] = v10;
  v40[13] = v10;
  v40[12] = v10;
  v40[11] = v10;
  v40[10] = v10;
  v40[9] = v10;
  v40[8] = v10;
  v40[7] = v10;
  v40[6] = v10;
  v40[5] = v10;
  v40[4] = v10;
  v40[3] = v10;
  v40[2] = v10;
  v40[1] = v10;
  v40[0] = v10;
  values = 0;
  v38 = 0;
  v39 = 0;
  v41 = v40;
  std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&values, Count);
  v11 = v38;
  bzero(v38, 8 * Count);
  v38 = &v11[8 * Count];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[14] = v12;
  v35[13] = v12;
  v35[12] = v12;
  v35[11] = v12;
  v35[10] = v12;
  v35[9] = v12;
  v35[8] = v12;
  v35[7] = v12;
  v35[6] = v12;
  v35[5] = v12;
  v35[4] = v12;
  v35[3] = v12;
  v35[2] = v12;
  v35[1] = v12;
  v35[0] = v12;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v36 = v35;
  std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&v32, Count);
  v13 = v33;
  bzero(v33, 8 * Count);
  v33 = &v13[8 * Count];
  explicit = atomic_load_explicit(&v24, memory_order_acquire);
  CFDictionaryGetKeysAndValues(explicit, values, v32);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[28] = v15;
  v30[29] = v15;
  v30[26] = v15;
  v30[27] = v15;
  v30[24] = v15;
  v30[25] = v15;
  v30[22] = v15;
  v30[23] = v15;
  v30[20] = v15;
  v30[21] = v15;
  v30[18] = v15;
  v30[19] = v15;
  v30[16] = v15;
  v30[17] = v15;
  v30[15] = v15;
  v30[14] = v15;
  v30[13] = v15;
  v30[12] = v15;
  v30[11] = v15;
  v30[10] = v15;
  v30[9] = v15;
  v30[8] = v15;
  v30[7] = v15;
  v30[6] = v15;
  v30[5] = v15;
  v30[4] = v15;
  v30[3] = v15;
  v30[2] = v15;
  v30[1] = v15;
  v30[0] = v15;
  keys = 0;
  v28 = 0;
  v29 = 0;
  v31 = v30;
  if (Count >> 60)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  if (Count > 0x1E)
  {
    operator new();
  }

  v31 = &v30[Count];
  keys = v30;
  v29 = v31;
  bzero(v30, 16 * Count);
  v17 = 0;
  v18 = 0;
  v28 = &v30[Count];
  do
  {
    if (v18 >= (v38 - values) >> 3 || (v19 = *(values + v18), LODWORD(valuePtr) = -1431655766, CFNumberGetValue(v19, kCFNumberIntType, &valuePtr), v18 >= (v28 - keys) >> 4) || (*(keys + v17) = valuePtr, v18 >= (v33 - v32) >> 3) || (v20 = v32[v18], valuePtr = -1, CFNumberGetValue(v20, kCFNumberDoubleType, &valuePtr), v18 >= (v28 - keys) >> 4))
    {
      __break(1u);
    }

    *(keys + v17 + 8) = valuePtr;
    ++v18;
    v17 += 16;
  }

  while (Count != v18);
  CopyWithVariation = FPFontCreateCopyWithVariation();
  if (CopyWithVariation)
  {
    v22 = FPFontCopyPostScriptName();
    FPFontRelease();
    v3 = CFAutorelease(v22);
  }

  if (keys)
  {
    v28 = keys;
    if (v30 > keys || &v31 <= keys)
    {
      operator delete(keys);
    }
  }

  keys = &v32;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&keys);
  keys = &values;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&keys);
  if (!CopyWithVariation)
  {
    goto LABEL_9;
  }

  v16 = 0;
LABEL_24:

  if (v16)
  {
    return atomic_load_explicit(this + 12, memory_order_acquire);
  }

  return v3;
}

void TInstanceFont::TInstanceFont(TInstanceFont *this, CGFont *a2, const __CFDictionary *a3)
{
  CreateCopyOfFontWithVariation(a2, a3, &v5);
  TBaseFont::TBaseFont(this, atomic_load_explicit(&v5, memory_order_acquire));

  *this = &unk_1EF25A9B0;
  *(this + 624) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0;
  *(this + 632) = 0u;
  TInstanceFont::InitWithVariation(this, atomic_load_explicit(this + 13, memory_order_acquire), a3, 0);
}

void TInstanceFont::TInstanceFont(TInstanceFont *this, atomic_ullong *a2, const __CFDictionary *a3)
{
  TBaseFont::TBaseFont(this, a2);
  *v6 = &unk_1EF25A9B0;
  *(v6 + 624) = 0;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0;
  *(v6 + 632) = 0u;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  GetBaseCGFont(a2, a3, &v12);
  v7 = CGFontCopyVariations(atomic_load_explicit(&v12, memory_order_acquire));
  explicit = atomic_load_explicit(&v12, memory_order_acquire);
  (*(*a2 + 120))(&v10, a2);
  CreateValidVariation(atomic_load_explicit(&v10, memory_order_acquire), a3, &v11);
  TInstanceFont::InitWithVariation(this, explicit, v7, atomic_load_explicit(&v11, memory_order_acquire));

  if ((*(*a2 + 16))(a2) == 1414088260)
  {
    v9 = a2[77];
    *(this + 624) = *(a2 + 624);
    *(this + 77) = v9;
  }
}

void TInstanceFont::TInstanceFont(TInstanceFont *this, const TInstanceFont *a2)
{
  TBaseFont::TBaseFont(this, a2);
  *v4 = &unk_1EF25A9B0;
  v5 = v4 + 75;
  *(this + 75) = atomic_load_explicit(a2 + 75, memory_order_acquire);
  *(this + 76) = atomic_load_explicit(a2 + 76, memory_order_acquire);
  *(this + 616) = *(a2 + 616);
  *(this + 79) = atomic_load_explicit(a2 + 79, memory_order_acquire);
  *(this + 80) = atomic_load_explicit(a2 + 80, memory_order_acquire);
  TCFRef<__CTFont const*>::Retain(this + 12, atomic_load_explicit(a2 + 12, memory_order_acquire));
  v6 = atomic_load_explicit(v5, memory_order_acquire);
  TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v6, @"NSCTFontVariationAttribute");
}

void TInstanceFont::CopyLocalizedName(TInstanceFont *this@<X0>, const __CFString *a2@<X1>, CFArrayRef theArray@<X2>, const __CFString **a4@<X3>, atomic_ullong *a5@<X8>)
{
  if (@"CTFontFullName" != a2 && (!a2 || !@"CTFontFullName" || !CFEqual(a2, @"CTFontFullName")))
  {
    goto LABEL_12;
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyLocalizedName(this, @"CTFontFamilyName", theArray, 0, &v12);
  if (!atomic_load_explicit(&v12, memory_order_acquire))
  {
LABEL_11:

LABEL_12:
    TBaseFont::CopyLocalizedName(this, a2, theArray, a4, a5);
    return;
  }

  MutableCopy = 0xAAAAAAAAAAAAAAAALL;
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(&v12, memory_order_acquire));
  if (!atomic_load_explicit(&MutableCopy, memory_order_acquire))
  {

    goto LABEL_11;
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 88))(&v10, this, @"CTFontSubFamilyName", theArray, 0);
  if (atomic_load_explicit(&v10, memory_order_acquire))
  {
    CFStringAppendFormat(atomic_load_explicit(&MutableCopy, memory_order_acquire), 0, @" %@", atomic_load_explicit(&v10, memory_order_acquire));
  }

  *a5 = atomic_exchange(&MutableCopy, 0);
}

CFStringRef TInstanceFont::DebugDescription(TInstanceFont *this)
{
  (*(*this + 200))(&v4);
  v1 = atomic_exchange(&v4, 0);

  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"InstanceFont <url: %@>", v1);
  return v2;
}

unint64_t TInstanceFont::GetGraphicsFontForNames(atomic_ullong *this)
{
  result = atomic_load_explicit(this + 80, memory_order_acquire);
  if (!result)
  {
    return atomic_load_explicit(this + 79, memory_order_acquire);
  }

  return result;
}

const __CFDictionary *IsValueInRangeOfAxis(double a1, const __CFDictionary *result)
{
  if (result)
  {
    v2 = result;
    v3 = trunc(a1 * 10000.0) / 10000.0;
    Value = CFDictionaryGetValue(result, @"NSCTVariationAxisMinimumValue");
    if (CFNumberCompare([MEMORY[0x1E696AD98] numberWithDouble:v3], Value, 0) == kCFCompareLessThan)
    {
      return 0;
    }

    else
    {
      v5 = CFDictionaryGetValue(v2, @"NSCTVariationAxisMaximumValue");
      return (CFNumberCompare([MEMORY[0x1E696AD98] numberWithDouble:v3], v5, 0) != kCFCompareGreaterThan);
    }
  }

  return result;
}

void CreateClosestInstanceVariation(const __CFArray *a1@<X1>, id a2@<X2>, void *a3@<X8>)
{
  v128 = *MEMORY[0x1E69E9840];
  v101 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    v101 = a2;
  }

  else
  {
    CopyVariationAxes(&v101);
  }

  if (!atomic_load_explicit(&v101, memory_order_acquire))
  {
    *a3 = 0;
    goto LABEL_146;
  }

  explicit = atomic_load_explicit(&v101, memory_order_acquire);
  v106 = 0;
  Count = CFArrayGetCount(explicit);
  v8 = CFArrayGetCount(a1);
  v9 = v8 > Count || v8 == 0;
  if (v9)
  {
    *a3 = 0;
    goto LABEL_145;
  }

  capacity = Count;
  v105[0] = 0;
  v105[1] = 0;
  v104 = v105;
  theArray = explicit;
  v96 = a3;
  if (a1 && (attribute = CFArrayGetCount(a1)) != 0)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      v13 = CFDictionaryGetCount(ValueAtIndex);
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v126[13] = v14;
      v126[14] = v14;
      v126[11] = v14;
      v126[12] = v14;
      v126[9] = v14;
      v126[10] = v14;
      v126[7] = v14;
      v126[8] = v14;
      v126[5] = v14;
      v126[6] = v14;
      v126[3] = v14;
      v126[4] = v14;
      v126[1] = v14;
      v126[2] = v14;
      v126[0] = v14;
      memset(v125, 0, sizeof(v125));
      v127 = v126;
      if (v13)
      {
        v15 = v13;
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](v125, v13);
        v16 = v125[1];
        bzero(v125[1], 8 * v15);
        v125[1] = &v16[8 * v15];
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v122 = v17;
        v123 = v17;
        v120 = v17;
        v121 = v17;
        v118 = v17;
        v119 = v17;
        v116 = v17;
        v117 = v17;
        v114 = v17;
        v115 = v17;
        v112 = v17;
        v113 = v17;
        v110 = v17;
        v111 = v17;
        v109 = v17;
        memset(__p, 0, sizeof(__p));
        v124 = &v109;
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](__p, v15);
        v18 = __p[1];
        bzero(__p[1], 8 * v15);
        __p[1] = &v18[8 * v15];
        v19 = v125[0];
        v20 = __p[0];
      }

      else
      {
        v20 = 0;
        v19 = 0;
        v122 = v14;
        v123 = v14;
        v120 = v14;
        v121 = v14;
        v118 = v14;
        v119 = v14;
        v116 = v14;
        v117 = v14;
        v114 = v14;
        v115 = v14;
        v112 = v14;
        v113 = v14;
        v110 = v14;
        v111 = v14;
        v109 = v14;
        memset(__p, 0, sizeof(__p));
        v124 = &v109;
      }

      CFDictionaryGetKeysAndValues(ValueAtIndex, v19, v20);
      __exp10(v11);
      if (__p[1] == __p[0])
      {
        goto LABEL_147;
      }

      v21 = *__p[0];
      if (*__p[0])
      {
        valuePtr[0] = -1;
        CFNumberGetValue(v21, kCFNumberDoubleType, valuePtr);
      }

      if (v125[1] == v125[0])
      {
LABEL_147:
        __break(1u);
      }

      v22 = *v125[0];
      LODWORD(valuePtr[0]) = -1431655766;
      CFNumberGetValue(v22, kCFNumberIntType, valuePtr);
      v23 = v105[0];
      if (!v105[0])
      {
LABEL_28:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v24 = v23;
          v25 = *(v23 + 8);
          if (v25 <= LODWORD(valuePtr[0]))
          {
            break;
          }

          v23 = *v24;
          if (!*v24)
          {
            goto LABEL_28;
          }
        }

        if (v25 >= LODWORD(valuePtr[0]))
        {
          break;
        }

        v23 = v24[1];
        if (!v23)
        {
          goto LABEL_28;
        }
      }

      ++v11;
      valuePtr[0] = __p;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](valuePtr);
      __p[0] = v125;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](__p);
      ++v10;
    }

    while (v10 != attribute);
  }

  else
  {
    v11 = 1;
  }

  v26 = explicit;
  if (!explicit || (v27 = CFArrayGetCount(explicit)) == 0)
  {
LABEL_100:
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v66 = v104;
    if (v104 != v105)
    {
      do
      {
        v125[0] = 0xAAAAAAAAAAAAAAAALL;
        TCFNumber::TCFNumber<unsigned int>(v125, *(v66 + 8));
        __p[0] = 0xAAAAAAAAAAAAAAAALL;
        TCFNumber::TCFNumber<double>(__p, *(v66 + 6));
        CFDictionaryAddValue(Mutable, atomic_load_explicit(v125, memory_order_acquire), atomic_load_explicit(__p, memory_order_acquire));

        v67 = v66[1];
        if (v67)
        {
          do
          {
            v68 = v67;
            v67 = *v67;
          }

          while (v67);
        }

        else
        {
          do
          {
            v68 = v66[2];
            v9 = *v68 == v66;
            v66 = v68;
          }

          while (!v9);
        }

        v66 = v68;
      }

      while (v68 != v105);
    }

    TCFRef<__CTFont const*>::Retain(&v106, Mutable);
    *v96 = atomic_exchange(&v106, 0);
    goto LABEL_144;
  }

  v28 = v27;
  attributea = 0;
  v29 = 0;
  v30 = 0.0;
  do
  {
    v31 = CFArrayGetValueAtIndex(v26, v29);
    Value = CFDictionaryGetValue(v31, @"NSCTVariationAxisIdentifier");
    LODWORD(v125[0]) = -1431655766;
    CFNumberGetValue(Value, kCFNumberIntType, v125);
    v33 = v125[0];
    v34 = CFDictionaryGetValue(v31, @"NSCTVariationAxisDefaultValue");
    v125[0] = -1;
    CFNumberGetValue(v34, kCFNumberDoubleType, v125);
    v35 = v125[0];
    v36 = CFDictionaryGetValue(v31, @"NSCTVariationAxisMinimumValue");
    v125[0] = -1;
    CFNumberGetValue(v36, kCFNumberDoubleType, v125);
    v37 = *v125;
    v38 = CFDictionaryGetValue(v31, @"NSCTVariationAxisMaximumValue");
    v125[0] = -1;
    CFNumberGetValue(v38, kCFNumberDoubleType, v125);
    v39 = v105[0];
    if (!v105[0])
    {
LABEL_41:
      v42 = __exp10(v11++);
LABEL_42:
      v37 = *&v35;
      goto LABEL_43;
    }

    v40 = v105[0];
    while (1)
    {
      v41 = *(v40 + 8);
      if (v33 >= v41)
      {
        break;
      }

LABEL_40:
      v40 = *v40;
      if (!v40)
      {
        goto LABEL_41;
      }
    }

    if (v41 < v33)
    {
      ++v40;
      goto LABEL_40;
    }

    while (1)
    {
      while (1)
      {
        v52 = v39;
        v53 = *(v39 + 8);
        if (v53 <= v33)
        {
          break;
        }

        v39 = *v52;
        if (!*v52)
        {
LABEL_83:
          operator new();
        }
      }

      if (v53 >= v33)
      {
        break;
      }

      v39 = *(v52 + 1);
      if (!v39)
      {
        goto LABEL_83;
      }
    }

    v42 = v52[7];
    if (v42 <= 0.0)
    {
      v42 = -v42;
      goto LABEL_42;
    }

    v58 = v52[5];
    if (*v125 >= v58)
    {
      v59 = v52[5];
    }

    else
    {
      v59 = *v125;
    }

    if (v58 >= v37)
    {
      v37 = v59;
    }

    v60 = attributea;
    if (attributea)
    {
      v61 = 1;
    }

    else
    {
      v61 = v37 == *&v35;
    }

    if (!v61)
    {
      v60 = 1;
    }

    attributea = v60;
LABEL_43:
    v43 = v105[0];
    if (!v105[0])
    {
      v44 = v105;
      if (v104 != v105)
      {
        goto LABEL_61;
      }

      v49 = 0;
      v44 = v105;
      v51 = v105;
LABEL_75:
      if (v49)
      {
        v57 = v51 + 1;
      }

      else
      {
        v57 = v44;
      }

      if (*v57)
      {
        goto LABEL_80;
      }

LABEL_79:
      operator new();
    }

    v44 = v105;
    v45 = v105[0];
    do
    {
      v46 = *(v45 + 8);
      v47 = v46 >= v33;
      v48 = v46 < v33;
      if (v47)
      {
        v44 = v45;
      }

      v45 = v45[v48];
    }

    while (v45);
    if (v44 != v105 && v33 >= *(v44 + 8))
    {
      *(v44 + 5) = v37;
      v44[6] = v35;
      *(v44 + 7) = v42;
      goto LABEL_80;
    }

    v49 = *v44;
    if (v104 == v44)
    {
      v51 = v44;
      goto LABEL_75;
    }

    v50 = *v44;
    if (v49)
    {
      do
      {
        v51 = v50;
        v50 = v50[1];
      }

      while (v50);
      goto LABEL_64;
    }

LABEL_61:
    v51 = v44;
    do
    {
      v54 = v51;
      v51 = v51[2];
    }

    while (*v51 == v54);
    v49 = 0;
LABEL_64:
    if (*(v51 + 8) < v33)
    {
      goto LABEL_75;
    }

    if (!v105[0])
    {
      goto LABEL_79;
    }

    while (1)
    {
      while (1)
      {
        v55 = v43;
        v56 = *(v43 + 8);
        if (v56 <= v33)
        {
          break;
        }

        v43 = *v55;
        if (!*v55)
        {
          goto LABEL_79;
        }
      }

      if (v56 >= v33)
      {
        break;
      }

      v43 = v55[1];
      if (!v43)
      {
        goto LABEL_79;
      }
    }

LABEL_80:
    v30 = v30 + v42 * v37 * (v42 * v37);
    ++v29;
    v26 = theArray;
  }

  while (v29 != v28);
  if (!attributea)
  {
    goto LABEL_100;
  }

  CGFontGetParserFont();
  Mutable = FPFontCopyFamilyName();
  v63 = FPFontCopyPath();
  v64 = *MEMORY[0x1E695E480];
  if (v63)
  {
    v65 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v63, kCFURLPOSIXPathStyle, 0);
  }

  else
  {
    v65 = 0;
  }

  memset(v125, 170, sizeof(v125));
  __p[0] = @"NSFontFamilyAttribute";
  __p[1] = @"NSCTFontFileURLAttribute";
  std::vector<__CFString const*>::vector[abi:fn200100](v125, __p, 2uLL);
  valuePtr[1] = v65;
  memset(__p, 170, sizeof(__p));
  valuePtr[0] = Mutable;
  std::vector<void const*>::vector[abi:fn200100](__p, valuePtr, 2uLL);
  v69 = CFDictionaryCreate(v64, v125[0], __p[0], (__PAIR128__((v125[2] - v125[0]) >> 3, v63) - 1) >> 64, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v70 = CTFontDescriptorCreateWithAttributes(v69);
  MatchingFontDescriptorsWithOptions = CTFontDescriptorCreateMatchingFontDescriptorsWithOptions(v70, 0, 1024);
  v72 = MatchingFontDescriptorsWithOptions;
  if (MatchingFontDescriptorsWithOptions)
  {
    v93 = v70;
    v94 = v69;
    v103 = 0;
    theArraya = CFArrayGetCount(MatchingFontDescriptorsWithOptions);
    if (theArraya)
    {
      v73 = 0;
      while (1)
      {
        v74 = v72;
        v75 = CFArrayGetValueAtIndex(v72, v73);
        v76 = objc_autoreleasePoolPush();
        valuePtr[0] = CTFontDescriptorCopyAttribute(v75, @"NSCTFontVariationAttribute");
        v77 = atomic_exchange(valuePtr, 0);

        v78 = v104;
        v79 = 0.0;
        if (v104 != v105)
        {
          do
          {
            v102 = 0xAAAAAAAAAAAAAAAALL;
            TCFNumber::TCFNumber<unsigned int>(&v102, *(v78 + 8));
            v80 = CFDictionaryGetValue(v77, atomic_load_explicit(&v102, memory_order_acquire));
            if (v80)
            {
              valuePtr[0] = -1;
              CFNumberGetValue(v80, kCFNumberDoubleType, valuePtr);
              v81 = *valuePtr;
            }

            else
            {
              v81 = *(v78 + 6);
            }

            v82 = *(v78 + 5);
            v83 = *(v78 + 7);

            v84 = v78[1];
            if (v84)
            {
              do
              {
                v85 = v84;
                v84 = *v84;
              }

              while (v84);
            }

            else
            {
              do
              {
                v85 = v78[2];
                v9 = *v85 == v78;
                v78 = v85;
              }

              while (!v9);
            }

            v79 = v79 + (v82 - v81) * v83 * ((v82 - v81) * v83);
            v78 = v85;
          }

          while (v85 != v105);
        }

        v86 = sqrt(v79);
        if (v86 < v30)
        {
          valuePtr[0] = v77;

          v30 = v86;
          if (v86 == 0.0)
          {
            break;
          }
        }

        objc_autoreleasePoolPop(v76);
        ++v73;
        v72 = v74;
        if (v73 == theArraya)
        {
          goto LABEL_127;
        }
      }

      objc_autoreleasePoolPop(v76);
      v72 = v74;
    }

LABEL_127:
    v87 = atomic_load_explicit(&v103, memory_order_acquire);
    if (v87)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v64, 0, v87);
      v89 = v104;
      if (v104 != v105)
      {
        do
        {
          valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
          TCFNumber::TCFNumber<unsigned int>(valuePtr, *(v89 + 8));
          v102 = 0xAAAAAAAAAAAAAAAALL;
          TCFNumber::TCFNumber<double>(&v102, *(v89 + 6));
          v90 = CFDictionaryGetValue(v87, atomic_load_explicit(valuePtr, memory_order_acquire));
          if (v90)
          {
            TCFRef<__CTFont const*>::Retain(&v102, v90);
          }

          CFDictionaryAddValue(MutableCopy, atomic_load_explicit(valuePtr, memory_order_acquire), atomic_load_explicit(&v102, memory_order_acquire));

          v91 = v89[1];
          if (v91)
          {
            do
            {
              v92 = v91;
              v91 = *v91;
            }

            while (v91);
          }

          else
          {
            do
            {
              v92 = v89[2];
              v9 = *v92 == v89;
              v89 = v92;
            }

            while (!v9);
          }

          v89 = v92;
        }

        while (v92 != v105);
      }

      TCFRef<__CTFont const*>::Retain(&v106, MutableCopy);
    }

    v70 = v93;
    v69 = v94;
  }

  *v96 = atomic_exchange(&v106, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v125[0])
  {
    v125[1] = v125[0];
    operator delete(v125[0]);
  }

LABEL_144:
  std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(v105[0]);
LABEL_145:

LABEL_146:
}

void CreateGraphicsVariationFromDict(const __CFDictionary *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1)
  {
    Count = CFDictionaryGetCount(a1);
    context[0] = a3;
    context[1] = a4;
    context[2] = 0;
    v15 = Count;
    if (Count >> 60)
    {
      v11 = -1;
    }

    else
    {
      v11 = 16 * Count;
    }

    v16 = operator new[](v11, MEMORY[0x1E69E5398]);
    CFDictionaryApplyFunction(a1, CGFontVariationFromDictCallback, context);
    v12 = v15;
    v13 = v16;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a2 = v12;
  *a5 = v13;
}

void CGFontVariationFromDictCallback(const void *a1, const __CFString *a2, void *a3)
{
  v3 = a3[2];
  if (v3 >= a3[3])
  {
    return;
  }

  a3[2] = v3 + 1;
  v5 = a3[4];
  if (!v5)
  {
    return;
  }

  v8 = (v5 + 16 * v3);
  v9 = CFGetTypeID(a1);
  if (v9 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberIntType, v8);
  }

  else if (v9 == CFStringGetTypeID())
  {
    v10 = a3[1];
    if (v10)
    {
      v11 = (*a3 + 8);
      v12 = 40 * v10;
      while (1)
      {
        v13 = *(v11 - 1);
        if (v13 == a1 || a1 && v13 && CFEqual(a1, v13))
        {
          break;
        }

        v11 += 10;
        v12 -= 40;
        if (!v12)
        {
          LODWORD(v10) = 0;
          goto LABEL_15;
        }
      }

      LODWORD(v10) = *v11;
    }

LABEL_15:
    *v8 = v10;
  }

  if (a2)
  {
    v14 = CFGetTypeID(a2);
    if (v14 == CFNumberGetTypeID() || v14 == CFBooleanGetTypeID())
    {

      CFNumberGetValue(a2, kCFNumberDoubleType, v8 + 2);
      return;
    }

    if (v14 == CFStringGetTypeID())
    {
      *(v8 + 1) = CFStringGetDoubleValue(a2);
      return;
    }
  }

  v15 = a3[1];
  if (v15)
  {
    v16 = *v8;
    v17 = 40 * v15;
    v18 = (*a3 + 32);
    do
    {
      if (*(v18 - 6) == v16)
      {
        *(v8 + 1) = *v18;
      }

      v18 += 5;
      v17 -= 40;
    }

    while (v17);
  }
}

void CreateCodableVariationFromDefaultVariation(const __CFDictionary *a1@<X0>, const __CFDictionary *a2@<X1>, unint64_t *a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      Count = CFDictionaryGetCount(a1);
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41[14] = v7;
      v41[13] = v7;
      v41[12] = v7;
      v41[11] = v7;
      v41[10] = v7;
      v41[9] = v7;
      v41[8] = v7;
      v41[7] = v7;
      v41[6] = v7;
      v41[5] = v7;
      v41[4] = v7;
      v41[3] = v7;
      v41[2] = v7;
      v41[1] = v7;
      v41[0] = v7;
      keys = 0;
      v39 = 0;
      v40 = 0;
      v42 = v41;
      if (Count)
      {
        v8 = Count;
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&keys, Count);
        v9 = v39;
        bzero(v39, 8 * v8);
        v39 = &v9[8 * v8];
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v36 = v10;
        v35 = v10;
        v34 = v10;
        v33 = v10;
        v32 = v10;
        v31 = v10;
        v30 = v10;
        v29 = v10;
        v28 = v10;
        v26 = v10;
        v27 = v10;
        v24 = v10;
        v25 = v10;
        v22 = v10;
        v23 = v10;
        v20 = 0;
        v21 = 0;
        values = 0;
        v37 = &v22;
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&values, v8);
        v11 = v20;
        bzero(v20, 8 * v8);
        v20 = &v11[8 * v8];
        CFDictionaryGetKeysAndValues(a1, keys, values);
        v12 = 0;
        while (v12 < (v39 - keys) >> 3)
        {
          if (!CFEqual(keys[v12], &unk_1EF27A758))
          {
            if (v12 >= (v39 - keys) >> 3)
            {
              break;
            }

            Value = CFDictionaryGetValue(a2, keys[v12]);
            if (v12 >= (v20 - values) >> 3)
            {
              break;
            }

            v14 = values[v12];
            if (Value != v14)
            {
              v15 = !Value || v14 == 0;
              if (v15 || !CFEqual(Value, v14))
              {
                if (v12 >= (v39 - keys) >> 3 || v12 >= (v20 - values) >> 3)
                {
                  break;
                }

                CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), keys[v12], values[v12]);
              }
            }
          }

          if (v8 == ++v12)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
      }

      v36 = v7;
      v35 = v7;
      v34 = v7;
      v33 = v7;
      v32 = v7;
      v31 = v7;
      v30 = v7;
      v29 = v7;
      v28 = v7;
      v26 = v7;
      v27 = v7;
      v24 = v7;
      v25 = v7;
      v22 = v7;
      v23 = v7;
      v20 = 0;
      v21 = 0;
      values = 0;
      v37 = &v22;
      CFDictionaryGetKeysAndValues(a1, 0, 0);
LABEL_23:
      if (CFDictionaryGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)))
      {
        v16 = atomic_exchange(&Mutable, 0);
      }

      else
      {
        v16 = 0;
      }

      *a3 = v16;
      p_values = &values;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_values);
      values = &keys;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
    }

    else
    {
      *a3 = a1;
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t TGlyphIterator::DoGlyphInsertion(_DWORD *a1, unsigned int a2, unsigned __int16 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*(*a1 + 144) && !*(*a1 + 472))
  {
    return 0;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[2] = v5;
  v23[3] = v5;
  v23[0] = v5;
  v23[1] = v5;
  v6 = a2;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v24 = v23;
  if (a2)
  {
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&v20, a2);
    v7 = v21;
    v8 = 2 * v6;
    do
    {
      v9 = *a3++;
      *v7++ = bswap32(v9) >> 16;
      v8 -= 2;
    }

    while (v8);
    v21 = v7;
    v10 = v20;
  }

  else
  {
    v7 = 0;
    v10 = 0;
  }

  v11 = a1[2];
  if ((v11 & 0x80000000) != 0 && v10 != v7)
  {
    v12 = v7 - 1;
    if (v7 - 1 > v10)
    {
      v13 = v10 + 1;
      do
      {
        v14 = *(v13 - 1);
        *(v13 - 1) = *v12;
        *v12-- = v14;
      }

      while (v13++ < v12);
    }
  }

  v16 = a1 + 12;
  v17 = TRunGlue::DoGlyphInsertion(*a1, v10, ((v7 - v10) >> 1), v11 >> 31, 0, *(a1 + 6), *(a1 + 6), 0, 0);
  if (v17)
  {
    if ((a1[2] & 0x80000000) != 0)
    {
      *(a1 + 2) += v6;
      *(a1 + 4) += v6;
    }

    else
    {
      *(a1 + 3) += v6;
      v16 = a1 + 10;
    }

    *v16 += v6;
  }

  v19 = &v20;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v19);
  return v17;
}

uint64_t TGlyphIterator::ReplaceWithGlyphs(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2)
  {
    v8 = *a1;
    v9 = *(a1 + 48);
    TRunGlue::SetGlyphID<true>(*a1, v9, bswap32(*a3) >> 16);
    if (v4 == 1)
    {
      return 1;
    }

    v10 = a3 + 1;
    v11 = *(a1 + 48);
    v12 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (TGlyphIterator::Next(a1, 1))
    {
      v13 = *(a1 + 48);
      v14 = v13 + ~v11;
      v15 = *(a1 + 8);
      v16 = v11 + ~v13;
      if (v15 >= 0)
      {
        v16 = v14;
      }

      if (v16 >= (v4 - 1))
      {
        v26 = v12;
        if (*(v8 + 18))
        {
          TRunGlue::FocusOnIndex(v8, v9);
          [*(*(v8 + 18) + 216) setProps:*(*(v8 + 51) + 4 * (v9 - *(v8 + 19))) | 8u atIndex:*(*(v8 + 18) + 200) + v9 - *(v8 + 19)];
          v15 = *(a1 + 8);
        }

        v19 = *a1;
        v20 = v11 + v15;
        v21 = (v4 - 1);
        do
        {
          v22 = *v10++;
          TRunGlue::SetGlyphID<true>(v19, v20, bswap32(v22) >> 16);
          GlyphProps = TRunGlue::GetGlyphProps(v19, v20);
          TRunGlue::SetGlyphProps(v19, v20, GlyphProps & 0xFFFFEFDF);
          v24 = *(a1 + 8);
          v20 += v24;
          --v21;
        }

        while (v21);
        *(a1 + 72) = v26;
        *(a1 + 48) = v11;
        if (v24 >= 0)
        {
          v25 = 0;
        }

        else
        {
          v25 = (v4 - 1);
        }

        std::function<void ()(CFRange,long)>::operator()(a4, v11 - v25, v4, v4);
        return 1;
      }
    }

    *(a1 + 72) = v12;
    *(a1 + 48) = v11;
    if (TGlyphIterator::DoGlyphInsertion(a1, v4 - 1, v10))
    {
      v17 = v4;
      v4 = 1;
      std::function<void ()(CFRange,long)>::operator()(a4, v11, 1, v17);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t TLCARTable::GetLigatureCaretPositions(TLCARTable *this, uint64_t a2, __int16 *a3, uint64_t a4, unsigned __int16 *a5)
{
  v7 = *this;
  if (**this != 256)
  {
    return 0;
  }

  v8 = bswap32(*(v7 + 2)) >> 16;
  if (v8 > 1)
  {
    return 0;
  }

  v31[7] = v5;
  v31[8] = v6;
  if (a5)
  {
    *a5 = v8;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v14;
  v29 = v14;
  v15 = *(this + 1);
  v26 = TAATLookupTable::BadTable;
  v27 = 0;
  *(&v29 + 1) = 0;
  v30 = 0xAAAAAAAAAAAAFFFFLL;
  TAATLookupTable::SetTable(&v26, (v7 + 6), v15);
  v31[0] = 0xAAAAAAAAAAAAAAAALL;
  v16 = v26;
  v17 = (&v26 + (v27 >> 1));
  if (v27)
  {
    v16 = *(*v17 + v26);
  }

  result = v16(v17, a2, v31);
  if (result)
  {
    v18 = *(this + 1);
    v19 = (*this + (bswap32(*result) >> 16));
    v20 = v19 + 1;
    if ((v19 + 1) > v18)
    {
      return 0;
    }

    result = bswap32(*v19) >> 16;
    v21 = &v20[result];
    v22 = v21 < v20 || v21 > v18;
    if (v22 && ((v19 + 2) <= v18 ? (v23 = (v18 - v20) >> 1) : (v23 = 0), v23 != result))
    {
      return 0;
    }

    else
    {
      if (result >= a4)
      {
        v24 = a4;
      }

      else
      {
        v24 = result;
      }

      if (v24 >= 1)
      {
        do
        {
          v25 = *v20++;
          *a3++ = bswap32(v25) >> 16;
          --v24;
        }

        while (v24);
        return bswap32(*v19) >> 16;
      }
    }
  }

  return result;
}

uint64_t TLCARTable::GetLigatureCaretCount(TLCARTable *this, uint64_t a2)
{
  v4 = *this;
  if (**this != 256 || bswap32(*(v4 + 2)) >> 16 > 1)
  {
    return 0;
  }

  v24[5] = v2;
  v24[6] = v3;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v8;
  v22 = v8;
  v9 = *(this + 1);
  v19 = TAATLookupTable::BadTable;
  v20 = 0;
  *(&v22 + 1) = 0;
  v23 = 0xAAAAAAAAAAAAFFFFLL;
  TAATLookupTable::SetTable(&v19, (v4 + 6), v9);
  v24[0] = 0xAAAAAAAAAAAAAAAALL;
  v10 = v19;
  v11 = (&v19 + (v20 >> 1));
  if (v20)
  {
    v10 = *(*v11 + v19);
  }

  result = v10(v11, a2, v24);
  if (result)
  {
    v12 = *(this + 1);
    v13 = (*this + (bswap32(*result) >> 16));
    v14 = v13 + 1;
    if ((v13 + 1) > v12)
    {
      return 0;
    }

    result = bswap32(*v13) >> 16;
    v15 = &v14[result];
    if (v15 < v14 || v15 > v12)
    {
      v17 = (v12 - v14) >> 1;
      v18 = (v13 + 2) <= v12 ? v17 : 0;
      if (v18 != result)
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFData *LayerRecordsForGlyph@<X0>(const __CFData *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (!result)
  {
    return result;
  }

  v4 = result;
  BytePtr = CFDataGetBytePtr(result);
  result = CFDataGetBytePtr(v4);
  if (!result)
  {
    return result;
  }

  v6 = result;
  result = CFDataGetLength(v4);
  v7 = result + v6;
  if (BytePtr + 14 > result + v6)
  {
    return result;
  }

  v8 = &BytePtr[bswap32(*(BytePtr + 1))];
  v9 = *(BytePtr + 1);
  v10 = __rev16(v9);
  v11 = &v8[3 * v10];
  if (v11 < v8 || v11 > v7)
  {
    if ((v8 + 3) > v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v7 - v8) / 6;
    }

    if (v13 != v10 || v9 == 0)
    {
      return result;
    }
  }

  else if (!*(BytePtr + 1))
  {
    return result;
  }

  v15 = &v8[3 * v10];
  while (1)
  {
    v16 = v10 >> 1;
    v17 = &v8[3 * (v10 >> 1)];
    v18 = bswap32(*v17) >> 16;
    if (v18 >= a2)
    {
      break;
    }

    v8 = v17 + 3;
    v16 = v10 + ~v16;
LABEL_22:
    v10 = v16;
    if (!v16)
    {
      return result;
    }
  }

  if (v18 > a2)
  {
    v15 = &v8[3 * (v10 >> 1)];
    goto LABEL_22;
  }

  if (v10 != 1)
  {
    do
    {
      v19 = v16 >> 1;
      v20 = &v8[3 * (v16 >> 1)];
      v22 = *v20;
      v21 = v20 + 3;
      v16 += ~(v16 >> 1);
      if (bswap32(v22) >> 16 < a2)
      {
        v8 = v21;
      }

      else
      {
        v16 = v19;
      }
    }

    while (v16);
  }

  v23 = v17 + 3;
  if (v15 != v17 + 3)
  {
    v24 = 0xAAAAAAAAAAAAAAABLL * (v15 - (v17 + 3));
    v15 = v23;
    do
    {
      v25 = v24 >> 1;
      v26 = &v15[3 * (v24 >> 1)];
      v28 = *v26;
      v27 = v26 + 3;
      v24 += ~(v24 >> 1);
      if (bswap32(v28) >> 16 > a2)
      {
        v24 = v25;
      }

      else
      {
        v15 = v27;
      }
    }

    while (v24);
  }

  if (v8 != v15)
  {
    if (v8[2])
    {
      std::allocator<float>::allocate_at_least[abi:fn200100](__rev16(v8[2]));
    }
  }

  return result;
}

const __CFData *EnumerateGlyphsWithLayerRecords(const __CFData *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      BytePtr = CFDataGetBytePtr(result);
      result = CFDataGetBytePtr(v3);
      if (result)
      {
        v5 = result;
        result = CFDataGetLength(v3);
        v6 = result + v5;
        if (BytePtr + 14 <= result + v5)
        {
          v7 = bswap32(*(BytePtr + 1));
          v8 = &BytePtr[v7];
          v9 = __rev16(*(BytePtr + 1));
          v10 = &BytePtr[6 * v9 + v7];
          if (v10 < &BytePtr[v7] || v10 > v6)
          {
            if ((v8 + 6) > v6)
            {
              v12 = 0;
              if (!*(BytePtr + 1))
              {
                return result;
              }
            }

            else
            {
              v12 = (v6 - v8) / 6;
              if (!*(BytePtr + 1))
              {
                return result;
              }
            }

            if (v12 != v9)
            {
              return result;
            }
          }

          else if (!*(BytePtr + 1))
          {
            return result;
          }

          v13 = &BytePtr[v7 + 4];
          do
          {
            if (*v13)
            {
              result = (*(a2 + 16))(a2, bswap32(*(v13 - 2)) >> 16, 1);
            }

            v13 += 6;
            --v9;
          }

          while (v9);
        }
      }
    }
  }

  return result;
}

void TSampleManagerImp::CopySampleLettersSpanningCharacterSet(const __CFArray *a1, atomic_ullong *a2, unsigned int a3, uint64_t a4, void *key)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  TSampleManagerImp::CopySampleLettersForLanguage(key, a2, a3, &v8);
  SampleLettersSpanningCharacterSet(a1, atomic_load_explicit(&v8, memory_order_acquire), a4);
  v7 = v8;
}

void TSampleManagerImp::CopySampleLettersForLanguage(void *key@<X2>, atomic_ullong *a2@<X0>, unsigned int a3@<W1>, void *a4@<X8>)
{
  ValueAtIndex = key;
  v36 = *MEMORY[0x1E69E9840];
  v28[1] = -1431655766;
  v29 = key;
  v28[0] = a3;
  if (!key)
  {
    v7 = atomic_load_explicit(a2, memory_order_acquire);
    v8 = v7;
    if (v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
    }

    else
    {
      ValueAtIndex = 0;
    }
  }

  if (a3 > 2 || (v9 = *off_1E6E3E840[a3]) == 0)
  {
    *a4 = 0;
    return;
  }

  if (_MergedGlobals_32 && !CFDictionaryContainsKey(v9, ValueAtIndex) && CFDictionaryContainsKey(_MergedGlobals_32, ValueAtIndex))
  {
    Value = CFDictionaryGetValue(_MergedGlobals_32, ValueAtIndex);
    v27 = CFDictionaryGetValue(v9, Value);
    TSampleManagerImp::CopySampleLettersForLanguage(CTFontSampleString,__CFString const*)const::$_0::operator()(&v31, v28, v27);
    *a4 = atomic_exchange(&v31, 0);

    return;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[14] = v10;
  v34[13] = v10;
  v34[12] = v10;
  v34[11] = v10;
  v34[10] = v10;
  v34[9] = v10;
  v34[8] = v10;
  v34[7] = v10;
  v34[6] = v10;
  v34[5] = v10;
  v34[3] = v10;
  v34[4] = v10;
  v34[1] = v10;
  v34[2] = v10;
  v34[0] = v10;
  Count = CFDictionaryGetCount(v9);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v35 = v34;
  v12 = Count + 1;
  if (Count == -1 || (v13 = Count, std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&v31, v12), v14 = v32, bzero(v32, 8 * v13 + 8), v32 = &v14[8 * v12], v32 == v31))
  {
    __break(1u);
    return;
  }

  *v31 = @"zxx";
  CFDictionaryGetKeysAndValues(v9, v31 + 1, 0);
  v15 = *MEMORY[0x1E695E480];
  v16 = MEMORY[0x1E695E9C0];
  v17 = CFArrayCreate(*MEMORY[0x1E695E480], v31, (v32 - v31) >> 3, MEMORY[0x1E695E9C0]);
  values = ValueAtIndex;
  v18 = CFArrayCreate(v15, &values, 1, v16);
  v19 = CFBundleCopyLocalizationsForPreferences(v17, v18);
  v20 = v19;
  if (!v20)
  {

LABEL_20:
    *a4 = 0;
    goto LABEL_21;
  }

  v21 = v20;
  v22 = CFArrayGetCount(v20);

  if (!v22)
  {
    goto LABEL_20;
  }

  v23 = CFArrayGetValueAtIndex(v19, 0);
  if (v23 == @"zxx")
  {
    goto LABEL_20;
  }

  v24 = v23;
  if (v23)
  {
    if (CFEqual(v23, @"zxx"))
    {
      goto LABEL_20;
    }
  }

  v25 = CFDictionaryGetValue(v9, v24);
  TSampleManagerImp::CopySampleLettersForLanguage(CTFontSampleString,__CFString const*)const::$_0::operator()(&values, v28, v25);
  *a4 = atomic_exchange(&values, 0);

LABEL_21:
  values = &v31;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
}

void SampleLettersSpanningCharacterSet(const __CFArray *a1, const __CFCharacterSet *a2, uint64_t a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  LettersSpanningCharacterSet(&v7, a2, a3);
  CountOfLetters = GetCountOfLetters(atomic_load_explicit(&v7, memory_order_acquire));
  if (CountOfLetters && CountOfLetters > GetCountOfLetters(a2) / 2)
  {
    v6 = atomic_exchange(&v7, 0);
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void TSampleManagerImp::CopyPreferredSampleLetters(const __CFArray *a1, atomic_ullong *a2, uint64_t a3, uint64_t a4, CFArrayRef theArray, uint64_t a6, const __CFArray *a7, void **a8)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    goto LABEL_12;
  }

  v24 = a8;
  v16 = CFBundleCopyLocalizationsForPreferences(theArray, a7);
  v17 = v16;
  if (!v16 || (Count = CFArrayGetCount(v16)) == 0)
  {
LABEL_11:

LABEL_12:
    *a1 = 0;
    return;
  }

  v19 = Count;
  v20 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
    *a1 = 0xAAAAAAAAAAAAAAAALL;
    TSampleManagerImp::CopySampleLettersSpanningCharacterSet(a1, a2, a4, a6, ValueAtIndex);
    if (atomic_load_explicit(a1, memory_order_acquire))
    {
      break;
    }

    SampleLettersForLanguage(&v25, a3, a4, a6, ValueAtIndex);
    v22 = atomic_exchange(&v25, 0);

    if (v22)
    {
      *a1 = 0xAAAAAAAAAAAAAAAALL;
      SampleLettersSpanningCharacterSet(a1, v22, a6);
      if (atomic_load_explicit(a1, memory_order_acquire))
      {
        if (v24)
        {
          v23 = *v24;
          if (*v24 != ValueAtIndex)
          {
            *v24 = ValueAtIndex;
          }
        }

        goto LABEL_20;
      }
    }

    if (v19 == ++v20)
    {
      goto LABEL_11;
    }
  }

  if (v24)
  {
    v22 = *v24;
    if (*v24 != ValueAtIndex)
    {
      *v24 = ValueAtIndex;
LABEL_20:
    }
  }
}

void SampleLettersForLanguage(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFStringRef theString)
{
  v38 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = v10;
  v36[1] = v10;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v37 = v36;
  if (!CFStringGetCStringPtr(theString, 0x600u))
  {
    Length = CFStringGetLength(theString);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
    v13 = MaximumSizeForEncoding + 1;
    v14 = v33;
    if (MaximumSizeForEncoding + 1 <= (v34 - v33))
    {
      if (MaximumSizeForEncoding + 1 < (v34 - v33))
      {
        v34 = &v33[v13];
      }
    }

    else
    {
      std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v33, MaximumSizeForEncoding + 1 - (v34 - v33));
      v14 = v33;
    }

    if (!CFStringGetCString(theString, v14, v13, 0x600u) || !v33)
    {
      goto LABEL_30;
    }
  }

  HIDWORD(v30.data) = 0;
  if ((a3 - 1) <= 1)
  {
    LODWORD(v30.data) = -1431655766;
    uscript_getCode();
    HIDWORD(v30.info) = -1431655766;
    SampleString = uscript_getSampleString();
    v20 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v22 = CFStringCreateWithCharacters(v20, &v30.info + 2, SampleString);
    if (v22)
    {
      v23 = v22;
      CFArrayAppendValue(Mutable, v22);
      if (a3 == 1)
      {
        if (uscript_isCased())
        {
          MutableCopy = CFStringCreateMutableCopy(v20, 0, v23);
          if (MutableCopy)
          {
            v25 = MutableCopy;
            CFStringLowercase(MutableCopy, 0);
            if (!CFEqual(v25, v23))
            {
              CFArrayAppendValue(Mutable, v25);
            }

            CFRelease(v25);
          }
        }
      }

      CFRelease(v23);
    }

    v28 = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(atomic_load_explicit(&v28, memory_order_acquire), Mutable);
    v30.isa = atomic_exchange(&v28, 0);
    *a1 = atomic_exchange(&v30, 0);

    goto LABEL_31;
  }

  v15 = ulocdata_open();
  v29 = MEMORY[0x1E69E5770];
  ExemplarSet = ulocdata_getExemplarSet();
  v28 = ExemplarSet;
  if (!a3)
  {
    v30.isa = 0xAAAAAAAAAAAAAAAALL;
    DigitsStringForLanguage(&v30, theString);
    if (atomic_load_explicit(&v30, memory_order_acquire))
    {
      explicit = atomic_load_explicit(&v30, memory_order_acquire);
      v18 = CFStringGetLength(atomic_load_explicit(&v30, memory_order_acquire));
      v30.length = &unk_1EF25AD48;
      v31 = &v28;
      p_length = &v30.length;
      EnumerateCharactersInRange(explicit, 0, v18, &v30.length);
      std::__function::__value_func<void ()(CFRange,unsigned int,BOOL *)>::~__value_func[abi:fn200100](&v30.length);
    }

    ExemplarSet = v28;
  }

  *a1 = 0xAAAAAAAAAAAAAAAALL;
  SampleLettersFromUSet(a1, a2, a3, a4, ExemplarSet, &v30.data + 1);
  v26 = atomic_load_explicit(a1, memory_order_acquire);
  if (!v26)
  {
  }

  v27 = v28;
  v28 = 0;
  if (v27)
  {
    v29();
  }

  if (v15)
  {
    ulocdata_close();
  }

  if (!v26)
  {
LABEL_30:
    *a1 = 0;
  }

LABEL_31:
  v28 = &v33;
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v28);
}

void TSampleManagerImp::Copy(atomic_ullong *a1@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X2>, uint64_t a4@<X3>, CFArrayRef a5@<X4>, void **a6@<X5>, unint64_t *a7@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = &stru_1EF25C610;
  }

  v81 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a3 + 184))(&v86, a3);
  TCFMutableCharacterSet::TCFMutableCharacterSet(&v81, atomic_load_explicit(&v86, memory_order_acquire));

  if (atomic_load_explicit(&v81, memory_order_acquire))
  {
    v14 = atomic_load_explicit(a3 + 12, memory_order_acquire);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_18;
    }

    v16 = a2;
    v72[0] = 0xAAAAAAAAAAAAAAAALL;
    v17 = qword_1ED568160;
    v18 = v14;
    v19 = v18;
    if (v17)
    {
      Value = CFDictionaryGetValue(v17, v18);

      if (Value)
      {
        if (a4 <= 2)
        {
          v21 = *off_1E6E3E840[a4];
          if (v21)
          {
            v22 = CFDictionaryGetValue(v21, Value);
            if (v22)
            {
              v23 = v22;
              v24 = CFGetTypeID(v22);
              if (v24 == CFArrayGetTypeID())
              {
                v86 = v23;
              }

              else
              {
                CreateLettersFromString(&v86, v23);
              }

              v72[0] = atomic_exchange(&v86, 0);

              goto LABEL_15;
            }
          }
        }
      }
    }

    else
    {
    }

    v72[0] = 0;
LABEL_15:
    a2 = v16;
    if (atomic_load_explicit(v72, memory_order_acquire))
    {
      *a7 = atomic_exchange(v72, 0);

      v25 = v15;
LABEL_80:

      goto LABEL_81;
    }

LABEL_18:
    v80 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a3 + 376))(&v80, a3);
    if (a5 && CFArrayGetCount(a5))
    {
      v26 = CFLocaleCopyPreferredLanguages();
      v27 = v26;
      if (v26 == a5)
      {
      }

      else
      {
        if (!v26)
        {
          v30 = 0;
LABEL_29:

          goto LABEL_30;
        }

        v28 = CFEqual(a5, v26);

        if (!v28)
        {
LABEL_30:
          v79 = 0xAAAAAAAAAAAAAAAALL;
          TCFMutableArray::TCFMutableArray(&v79, atomic_load_explicit(&v80, memory_order_acquire));
          (*(*a3 + 344))(&v78, a3);
          TCFMutableArray::AppendArray<TCFRef<__CFArray const*>>(&v79, &v78);

          v86 = 0xAAAAAAAAAAAAAAAALL;
          TBaseFont::ShapingLanguages(a3, 1, &v86);
          v31 = atomic_load_explicit(&v86, memory_order_acquire);
          if (v31)
          {
            v32 = v31;
            Count = CFArrayGetCount(v31);

            if (!Count)
            {
              goto LABEL_34;
            }

            v77 = atomic_load_explicit(&v86, memory_order_acquire);
            TCFMutableArray::AppendArray<TCFRef<__CFArray const*>>(&v79, &v77);
            v31 = v77;
          }

LABEL_34:
          v76 = 0xAAAAAAAAAAAAAAAALL;
          TCFMutableArray::TCFMutableArray(&v76, a5);
          v75 = atomic_load_explicit(&v80, memory_order_acquire);
          TCFMutableArray::AppendArray<TCFRef<__CFArray const*>>(&v76, &v75);

          v74 = atomic_load_explicit(a1, memory_order_acquire);
          TCFMutableArray::AppendArray<TCFRef<__CFArray const*>>(&v76, &v74);

          v86 = 0xAAAAAAAAAAAAAAAALL;
          TSampleManagerImp::CopyPreferredSampleLetters(v72, a1, a2, a4, atomic_load_explicit(&v79, memory_order_acquire), atomic_load_explicit(&v81, memory_order_acquire), atomic_load_explicit(&v76, memory_order_acquire), a6);
          v86 = atomic_exchange(v72, 0);

          if (atomic_load_explicit(&v86, memory_order_acquire))
          {
            v34 = atomic_exchange(&v86, 0);
LABEL_76:
            *a7 = v34;
            v56 = v86;
            goto LABEL_77;
          }

          v91 = 0xAAAAAAAAAAAAAAAALL;
          v92 = 0xAAAAAAAAAAAAAAAALL;
          if (TBaseFont::GetOS2UnicodeRanges(a3, &v91, 0) && (v92 & 0x40000) != 0)
          {
            TSampleManagerImp::CopySampleLettersForLanguage(@"braille", a1, a4, &v86);
            goto LABEL_75;
          }

          v70 = a2;
          if (a5)
          {
            v35 = CFArrayGetCount(a5);
            if (v35)
            {
              v36 = v35;
              for (i = 0; v36 != i; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a5, i);
                SampleLettersForLanguage(&v86, v70, a4, atomic_load_explicit(&v81, memory_order_acquire), ValueAtIndex);
                v39 = atomic_exchange(&v86, 0);

                if (v39)
                {
                  v86 = 0xAAAAAAAAAAAAAAAALL;
                  SampleLettersSpanningCharacterSet(&v86, v39, atomic_load_explicit(&v81, memory_order_acquire));
                  if (atomic_load_explicit(&v86, memory_order_acquire))
                  {
                    if (a6)
                    {
                      v55 = *a6;
                      if (*a6 != ValueAtIndex)
                      {
                        *a6 = ValueAtIndex;
                      }
                    }

                    *a7 = atomic_exchange(&v86, 0);

                    v56 = v39;
LABEL_77:

                    goto LABEL_78;
                  }
                }
              }
            }
          }

          *&v40 = 0xAAAAAAAAAAAAAAAALL;
          *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v72 = v40;
          v73 = v40;
          atomic_load_explicit(&v81, memory_order_acquire);
          CFCharacterSetInitInlineBuffer();
          if (a4 <= 2)
          {
            v41 = off_1E6E3E840[a4];
            v42 = *v41;
            if (*v41)
            {
              v43 = CFDictionaryGetCount(*v41);
              if (v43)
              {
                v44 = v43;
                *&v45 = 0xAAAAAAAAAAAAAAAALL;
                *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v89[14] = v45;
                v89[13] = v45;
                v89[12] = v45;
                v89[11] = v45;
                v89[10] = v45;
                v89[9] = v45;
                v89[8] = v45;
                v89[7] = v45;
                v89[6] = v45;
                v89[5] = v45;
                v89[4] = v45;
                v89[3] = v45;
                v89[2] = v45;
                v89[1] = v45;
                v89[0] = v45;
                v86 = 0;
                v87 = 0;
                v88 = 0;
                v90 = v89;
                std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&v86, v43);
                v46 = v87;
                bzero(v87, 8 * v44);
                v87 = &v46[8 * v44];
                CFDictionaryGetKeysAndValues(v42, 0, v86);
                v47 = CFDictionaryGetValue(v42, @"emoji");
                if (v47)
                {
                  v48 = v86;
                  if (v86 != v87)
                  {
                    v49 = v86;
                    while (*v49 != v47)
                    {
                      ++v49;
                      v48 += 8;
                      if (v49 == v87)
                      {
                        v48 = v87;
                        break;
                      }
                    }
                  }

                  std::__rotate[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<void const**>,std::__wrap_iter<void const**>>(v86, v48, v87);
                }

                v50 = v86;
                v51 = v87;
                if (v86 != v87)
                {
                  while (1)
                  {
                    v52 = *v50;
                    v71 = 0;
                    v53 = CFGetTypeID(v52);
                    if (v53 != CFStringGetTypeID())
                    {
                      if (v70 == 1)
                      {
                        LinesByWrapping(&v83, v52);
                      }

                      else
                      {
                        v83.isa = v52;
                      }

                      atomic_load_explicit(&v81, memory_order_acquire);
                      v83.isa = 0xAAAAAAAAAAAAAAAALL;
                      DigitsForLanguage(&v83, 0);
                    }

                    CreateLettersFromString(&v83, v52);

                    v83.isa = 0xAAAAAAAAAAAAAAAALL;
                    LettersSpanningCharacterSet(&v83, atomic_load_explicit(&v71, memory_order_acquire), atomic_load_explicit(&v81, memory_order_acquire));
                    CountOfLetters = GetCountOfLetters(atomic_load_explicit(&v83, memory_order_acquire));
                    if (CountOfLetters && CountOfLetters == GetCountOfLetters(atomic_load_explicit(&v71, memory_order_acquire)))
                    {
                      break;
                    }

                    if (++v50 == v51)
                    {
                      goto LABEL_73;
                    }
                  }

                  *a7 = atomic_exchange(&v83, 0);

                  v83.isa = &v86;
                  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v83);
LABEL_78:

                  v29 = v79;
                  goto LABEL_79;
                }

LABEL_73:
                v83.isa = &v86;
                std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v83);
              }
            }
          }

          v86 = 0xAAAAAAAAAAAAAAAALL;
          TSampleManagerImp::CopySampleLettersSpanningCharacterSet(&v86, a1, a4, atomic_load_explicit(&v81, memory_order_acquire), 0);
          if (atomic_load_explicit(&v86, memory_order_acquire))
          {
LABEL_75:
            v34 = atomic_exchange(&v86, 0);
            goto LABEL_76;
          }

          explicit = atomic_load_explicit(&v79, memory_order_acquire);
          if (explicit)
          {
            v58 = CFArrayGetCount(explicit);
            if (v58)
            {
              v59 = v58;
              for (j = 0; v59 != j; ++j)
              {
                v61 = CFArrayGetValueAtIndex(explicit, j);
                SampleLettersForLanguage(&v86, v70, a4, atomic_load_explicit(&v81, memory_order_acquire), v61);
                v62 = atomic_exchange(&v86, 0);

                if (v62)
                {
                  v86 = 0xAAAAAAAAAAAAAAAALL;
                  SampleLettersSpanningCharacterSet(&v86, v62, atomic_load_explicit(&v81, memory_order_acquire));
                  if (atomic_load_explicit(&v86, memory_order_acquire))
                  {
                    if (a6)
                    {
                      v69 = *a6;
                      if (*a6 != v61)
                      {
                        *a6 = v61;
                      }
                    }

                    *a7 = atomic_exchange(&v86, 0);

                    v56 = v62;
                    goto LABEL_77;
                  }
                }
              }
            }
          }

          v63 = uset_openEmpty();
          if (v63)
          {
            v64 = v63;
            if ((a4 - 1) <= 1)
            {
              v85[0] = &unk_1EF25B060;
              v85[1] = &v86;
              v85[3] = v85;
              v86 = 0xAAAAAA00AAAAAA00;
              TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)const::$_3::operator()(v72, v85);
              std::__function::__value_func<void ()(unsigned int,BOOL *)>::~__value_func[abi:fn200100](v85);
              if (BYTE4(v86) == 1)
              {
                ShortName = uscript_getShortName();
                if (ShortName)
                {
                  v66 = ShortName;
                  v67 = objc_autoreleasePoolPush();
                  v83.isa = 0xAAAAAAAAAAAAAAAALL;
                  v68 = atomic_load_explicit(&v81, memory_order_acquire);
                  SampleLettersForLanguage(&v82, v70, a4, v68, [MEMORY[0x1E696AEC0] stringWithUTF8String:v66]);
                  v83.isa = atomic_exchange(&v82, 0);

                  if (atomic_load_explicit(&v83, memory_order_acquire))
                  {
                    *a7 = atomic_exchange(&v83, 0);

                    objc_autoreleasePoolPop(v67);
LABEL_103:
                    uset_close();
                    goto LABEL_78;
                  }

                  objc_autoreleasePoolPop(v67);
                }
              }
            }

            v83.info = &unk_1EF25B0A8;
            v83.data = v64;
            p_info = &v83.info;
            TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)const::$_3::operator()(v72, &v83.info);
            std::__function::__value_func<void ()(unsigned int,BOOL *)>::~__value_func[abi:fn200100](&v83.info);
            LODWORD(v82) = 0;
            v86 = 0xAAAAAAAAAAAAAAAALL;
            SampleLettersFromUSet(&v83, v70, a4, atomic_load_explicit(&v81, memory_order_acquire), v64, &v82);
            v86 = atomic_exchange(&v83, 0);

            if (atomic_load_explicit(&v86, memory_order_acquire))
            {
              *a7 = atomic_exchange(&v86, 0);

              goto LABEL_103;
            }

            uset_close();
          }

          *a7 = 0;
          goto LABEL_78;
        }
      }
    }

    v86 = 0xAAAAAAAAAAAAAAAALL;
    TSampleManagerImp::CopyPreferredSampleLetters(&v86, a1, a2, a4, atomic_load_explicit(&v80, memory_order_acquire), atomic_load_explicit(&v81, memory_order_acquire), atomic_load_explicit(a1, memory_order_acquire), a6);
    if (atomic_load_explicit(&v86, memory_order_acquire))
    {
      *a7 = atomic_exchange(&v86, 0);
      v29 = v86;
LABEL_79:

      v25 = v80;
      goto LABEL_80;
    }

    v30 = v86;
    goto LABEL_29;
  }

  *a7 = 0;
LABEL_81:
}

void CreateLettersFromString(const __CFString *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZL23CreateLettersFromStringPK10__CFString_block_invoke;
  v6[3] = &unk_1E6E3E820;
  v6[4] = &v7;
  [a2 enumerateLinesUsingBlock:v6];
  v5 = v8[5];
  a1->isa = atomic_exchange(&v5, 0);

  _Block_object_dispose(&v7, 8);
  objc_autoreleasePoolPop(v4);
}

void LinesByWrapping(const __CFArray *a1, const __CFArray *a2)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count)
    {
      v3 = 0;
      v4 = MEMORY[0x1E695E9C0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v3);
        v6 = CFArrayGetCount(ValueAtIndex);
        v7 = v6 - v6 / 2;
        if (v6 >= 41)
        {
          v8 = v7 / 2;
        }

        else
        {
          v8 = v6 / 2;
        }

        if (v6 >= 41)
        {
          v9 = v6 / 2 - (v6 >> 2);
        }

        else
        {
          v9 = 0;
        }

        if (v6 >= 41)
        {
          v10 = v7 - v7 / 2;
        }

        else
        {
          v10 = v6 - v6 / 2;
        }

        if (v6 >= 41)
        {
          v11 = v6 >> 2;
        }

        else
        {
          v11 = 0;
        }

        v12 = CFArrayCreateMutable(v2, v10, v4);
        v20.location = 0;
        v20.length = v10;
        CFArrayAppendArray(v12, ValueAtIndex, v20);
        CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v12);
        if (v8)
        {
          v13 = CFArrayCreateMutable(v2, v8, v4);
          v21.location = v10;
          v21.length = v8;
          CFArrayAppendArray(v13, ValueAtIndex, v21);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v13);
        }

        if (v9)
        {
          v14 = CFArrayCreateMutable(v2, v9, v4);
          v22.location = v10 + v8;
          v22.length = v9;
          CFArrayAppendArray(v14, ValueAtIndex, v22);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v14);
        }

        if (v11)
        {
          v15 = CFArrayCreateMutable(v2, v11, v4);
          v23.location = v10 + v8 + v9;
          v23.length = v11;
          CFArrayAppendArray(v15, ValueAtIndex, v23);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v15);
        }

        ++v3;
      }

      while (Count != v3);
    }
  }

  *a1 = atomic_exchange(&Mutable, 0);
}

void LettersSpanningCharacterSet(const __CFArray *a1, const __CFArray *a2, uint64_t a3)
{
  explicit = a2;
  v32[4] = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30[0] = v4;
    v30[1] = v4;
    CFCharacterSetInitInlineBuffer();
    v29 = 0;
    Count = CFArrayGetCount(explicit);
    if (Count >= 1)
    {
      v5 = 0;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(explicit, v5);
        v8 = CFArrayGetCount(ValueAtIndex);
        if (v8 >= 1)
        {
          v9 = v8;
          for (i = 0; i < v9; ++i)
          {
            v11 = CFArrayGetValueAtIndex(ValueAtIndex, i);
            v28 = 0xAAAAAAAAAAAAAAAALL;
            v32[0] = &unk_1EF25ADD8;
            v32[1] = v30;
            v32[3] = v32;
            CreateStringByDeletingLongCharactersPassingTest(v11, v32, &v28);
            std::__function::__value_func<BOOL ()(CFRange,unsigned int)>::~__value_func[abi:fn200100](v32);
            v12 = atomic_load_explicit(&v28, memory_order_acquire);
            v13 = v12;
            if (v12)
            {
              Length = CFStringGetLength(v12);
            }

            else
            {
              Length = 0;
            }

            v15 = CFStringGetLength(v11);

            if (Length < v15)
            {
              if (!atomic_load_explicit(&v29, memory_order_acquire))
              {
                Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
                if (explicit)
                {
                  v16 = CFArrayGetCount(explicit);
                  if (v16)
                  {
                    v17 = v16;
                    for (j = 0; j != v17; ++j)
                    {
                      v19 = CFArrayGetValueAtIndex(explicit, j);
                      MutableCopy = CFArrayCreateMutableCopy(v6, 0, v19);
                      if (MutableCopy)
                      {
                        v21 = MutableCopy;
                        CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), MutableCopy);
                        CFRelease(v21);
                      }
                    }
                  }
                }

                v27 = atomic_exchange(&Mutable, 0);

                if (!atomic_load_explicit(&v29, memory_order_acquire))
                {
                  *a1 = 0;

                  goto LABEL_31;
                }
              }

              explicit = atomic_load_explicit(&v29, memory_order_acquire);
              ValueAtIndex = CFArrayGetValueAtIndex(explicit, v5);
              CFArrayRemoveValueAtIndex(ValueAtIndex, i);
              --v9;
              --i;
            }
          }
        }

        ++v5;
      }

      while (v5 != Count);
    }

    if (atomic_load_explicit(&v29, memory_order_acquire))
    {
      v22 = CFArrayGetCount(atomic_load_explicit(&v29, memory_order_acquire));
      if (v22 >= 1)
      {
        v23 = v22 + 1;
        do
        {
          v24 = CFArrayGetValueAtIndex(atomic_load_explicit(&v29, memory_order_acquire), v23 - 2);
          if (!CFArrayGetCount(v24))
          {
            CFArrayRemoveValueAtIndex(atomic_load_explicit(&v29, memory_order_acquire), v23 - 2);
          }

          --v23;
        }

        while (v23 > 1);
      }

      *a1 = atomic_exchange(&v29, 0);
    }

    else
    {
      *a1 = explicit;
    }

LABEL_31:
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t GetCountOfLetters(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    v4 += CFArrayGetCount(ValueAtIndex);
  }

  return v4;
}

uint64_t TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)const::$_3::operator()(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = 0; ; ++i)
  {
    while (1)
    {
      while (i >= 0xE000)
      {
        if (i >> 11 < 0x1F)
        {
          goto LABEL_25;
        }

        if (i < 0xF0000 || i - 1114110 >= 0xFFFFFC02)
        {
          break;
        }

        if (++i == 1114112)
        {
          return result;
        }
      }

      v5 = *(v3 + 8);
      v6 = (v5 & 4) >> 2;
      if (*(v3 + 12) > i || *(v3 + 16) <= i)
      {
LABEL_24:
        if ((v6 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      if (HIWORD(i) || (v5 & 2) != 0)
      {
        result = CFCharacterSetIsLongCharacterMember(*v3, i);
        if (!result)
        {
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      v7 = *(v3 + 24);
      if (!v7)
      {
        if ((((v5 & 1) == 0) ^ ((v5 & 4) >> 2)))
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }

      if ((v5 & 1) == 0)
      {
        break;
      }

      v9 = i >> 8;
      v10 = *(v7 + v9);
      if (*(v7 + v9))
      {
        LOBYTE(v6) = (v5 & 4) == 0;
        if (v10 == 255)
        {
          goto LABEL_24;
        }

        if (((v5 & 4) == 0) != (((*(v7 + 32 * v10 + (i >> 3) + 224) >> (i & 7)) & 1) == 0))
        {
          goto LABEL_17;
        }
      }

      else if ((v5 & 4) != 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      ++i;
    }

    if (((v5 & 4) == 0) == (((*(v7 + (i >> 3)) >> (i & 7)) & 1) == 0))
    {
      goto LABEL_25;
    }

LABEL_17:
    v17 = 0;
    v8 = *(a2 + 24);
    v19 = i;
    v18 = &v17;
    if (!v8)
    {
      break;
    }

    result = (*(*v8 + 48))(v8, &v19, &v18);
    if (v17)
    {
      return result;
    }
  }

  v11 = std::__throw_bad_function_call[abi:fn200100]();
  return SampleLettersFromUSet(v11, v12, v13, v14, v15, v16);
}

void *SampleLettersFromUSet(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v17 = a4;
  if (*a6 < 1)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = MEMORY[0x1E695E9F8];
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    v15 = CFSetCreateMutable(v6, 0, v7);
    v8 = *(v7 + 16);
    *&callBacks.version = *v7;
    *&callBacks.release = v8;
    callBacks.equal = SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_7::__invoke;
    callBacks.hash = SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_8::__invoke;
    v13 = CFSetCreateMutable(v6, 0, &callBacks);
    v12 = 0;
    *&v9 = &v12;
    *(&v9 + 1) = &v13;
    *&v10 = &v17;
    *(&v10 + 1) = &Mutable;
    v11 = &v15;
    v22[0] = &unk_1EF25AE20;
    v22[1] = &v9;
    v22[3] = v22;
    values = v9;
    v19 = v10;
    v20 = &v15;
    v21 = 0;
    operator new();
  }

  *result = 0;
  return result;
}

void TSampleManagerImp::CopySampleLettersForLanguage(CTFontSampleString,__CFString const*)const::$_0::operator()(unint64_t *a1, uint64_t a2, void *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFArrayGetTypeID())
  {
    if (!*a2)
    {
      v8.isa = 0xAAAAAAAAAAAAAAAALL;
      DigitsForLanguage(&v8, *(a2 + 8));
    }

    v8.isa = cf;
    v7 = atomic_exchange(&v8, 0);
  }

  else
  {
    CreateLettersFromString(&v8, cf);
    v7 = atomic_exchange(&v8, 0);
  }

  *a1 = v7;
}

void TSampleManager::TSampleManager(TSampleManager *this)
{
  if (qword_1ED568188 != -1)
  {
    dispatch_once_f(&qword_1ED568188, 0, GetTheSampleManager(void)::$_0::__invoke);
  }

  *this = qword_1ED568180;
}

void TSampleManager::CopySampleString(atomic_ullong **a1@<X0>, atomic_ullong *a2@<X1>, uint64_t a3@<X2>, const __CFArray *a4@<X3>, void **a5@<X4>, void *a6@<X8>)
{
  TSampleManagerImp::Copy(*a1, 1, a2, a3, a4, a5, &v8);
  v7 = atomic_exchange(&v8, 0);

  TSampleManager::CreateStringWithLetters(v7, a6);
}

void TSampleManager::CreateStringWithLetters(TSampleManager *this@<X0>, void *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (this && CFArrayGetCount(this))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(TSampleManager *)this countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(this);
          }

          [v6 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v10++), "componentsJoinedByString:", &stru_1EF25C610)}];
        }

        while (v8 != v10);
        v8 = [(TSampleManager *)this countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    v11 = [v6 componentsJoinedByString:@"\n"];
    *a2 = atomic_exchange(&v11, 0);

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    *a2 = &stru_1EF25C610;
  }
}

void DigitsStringForLanguage(const __CFString *a1, const void *a2)
{
  if (qword_1ED568158 && (Value = CFDictionaryGetValue(qword_1ED568158, a2)) != 0)
  {
    v10 = Value;
    v5 = atomic_exchange(&v10, 0);
  }

  else
  {
    v10 = _CFLocaleCopyNumberingSystemForLocaleIdentifier();
    if (atomic_load_explicit(&v10, memory_order_acquire) || (CopyPreferredNumberingSystem(&v9), atomic_exchange(&v10, atomic_exchange(&v9, 0)), v9, atomic_load_explicit(&v10, memory_order_acquire)))
    {
      v5 = atomic_exchange(&v10, 0);
    }

    else
    {
      v5 = 0;
    }
  }

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [objc_msgSend(MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:{a2), "mutableCopy"}];
    [v7 setObject:v5 forKeyedSubscript:@"numbers"];
    v8 = objc_opt_new();
    [v8 setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "localeWithLocaleIdentifier:", objc_msgSend(MEMORY[0x1E695DF58], "localeIdentifierFromComponents:", v7))}];
    v10 = [v8 stringFromNumber:&unk_1EF27A770];
    a1->isa = atomic_exchange(&v10, 0);

    objc_autoreleasePoolPop(v6);
  }

  else
  {

    a1->isa = 0;
  }
}

uint64_t std::__function::__func<SampleLettersForLanguage(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,__CFString const*)::$_0,std::allocator<SampleLettersForLanguage(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,__CFString const*)::$_0>,void ()(CFRange,unsigned int,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25AD48;
  a2[1] = v2;
  return result;
}

char *std::__rotate[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<void const**>,std::__wrap_iter<void const**>>(char *__src, char *a2, char *a3)
{
  v3 = a2 - __src;
  if (a2 != __src)
  {
    v4 = a3 - a2;
    if (a3 != a2)
    {
      v5 = __src;
      if (__src + 8 == a2)
      {
        v6 = *__src;
        __src = memmove(__src, a2, a3 - a2);
        *(v5 + v4) = v6;
      }

      else if (a2 + 8 == a3)
      {
        v7 = *(a3 - 1);
        if (a3 - 8 != __src)
        {
          __src = memmove(__src + 8, __src, a3 - 8 - __src);
        }

        *v5 = v7;
      }

      else
      {
        v8 = v3 >> 3;
        if (v3 >> 3 == v4 >> 3)
        {
          v9 = __src + 8;
          v10 = a2 + 8;
          do
          {
            v11 = *(v9 - 1);
            *(v9 - 1) = *(v10 - 1);
            *(v10 - 1) = v11;
            if (v9 == a2)
            {
              break;
            }

            v9 += 8;
            v12 = v10 == a3;
            v10 += 8;
          }

          while (!v12);
        }

        else
        {
          v13 = v4 >> 3;
          v14 = v3 >> 3;
          do
          {
            v15 = v14;
            v14 = v13;
            v13 = v15 % v13;
          }

          while (v13);
          v16 = &__src[8 * v14];
          do
          {
            v18 = *(v16 - 1);
            v16 -= 8;
            v17 = v18;
            v19 = &v16[v3];
            v20 = v16;
            do
            {
              v21 = v19;
              *v20 = *v19;
              v22 = &v19[8 * v8];
              v23 = __OFSUB__(v8, (a3 - v19) >> 3);
              v25 = v8 - ((a3 - v19) >> 3);
              v24 = (v25 < 0) ^ v23;
              v19 = &__src[8 * v25];
              if (v24)
              {
                v19 = v22;
              }

              v20 = v21;
            }

            while (v19 != v16);
            *v21 = v17;
          }

          while (v16 != __src);
        }
      }
    }
  }

  return __src;
}

uint64_t ___ZL23CreateLettersFromStringPK10__CFString_block_invoke(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [a2 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL23CreateLettersFromStringPK10__CFString_block_invoke_2;
  v7[3] = &unk_1E6E3E7F8;
  v7[4] = v4;
  [a2 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v7}];
  return [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
}

void DigitsForLanguage(const __CFString *a1, const void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4.isa = 0xAAAAAAAAAAAAAAAALL;
  v4.info = Mutable;
  DigitsStringForLanguage(&v4, a2);
  if (atomic_load_explicit(&v4, memory_order_acquire))
  {
    v4.length = atomic_load_explicit(&v4, memory_order_acquire);
    HIBYTE(v4.data) = 0;
    CFStringGetLength(v4.length);
    operator new();
  }

  v4.length = @"1234567890";
  LOBYTE(v4.isa) = 0;
  CFStringGetLength(@"1234567890");
  operator new();
}

__n128 std::__function::__func<DigitsForLanguage(__CFString const*)::$_0::operator() const(__CFString const*)::{lambda(CFRange,unsigned int,BOOL *)#1},std::allocator<DigitsForLanguage(__CFString const*)::$_0::operator() const(__CFString const*)::{lambda(CFRange,unsigned int,BOOL *)#1}>,void ()(CFRange,unsigned int,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25AD90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<DigitsForLanguage(__CFString const*)::$_0::operator() const(__CFString const*)::{lambda(CFRange,unsigned int,BOOL *)#1},std::allocator<DigitsForLanguage(__CFString const*)::$_0::operator() const(__CFString const*)::{lambda(CFRange,unsigned int,BOOL *)#1}>,void ()(CFRange,unsigned int,BOOL *)>::operator()(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], **(a1 + 8), *a2);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 24);
    **(a1 + 16) = 1;
    CFArrayAppendValue(atomic_load_explicit(v5, memory_order_acquire), v3);

    CFRelease(v4);
  }
}

uint64_t std::__function::__func<LettersSpanningCharacterSet(__CFArray const*,__CFCharacterSet const*)::$_0,std::allocator<LettersSpanningCharacterSet(__CFArray const*,__CFCharacterSet const*)::$_0>,BOOL ()(CFRange,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25ADD8;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<LettersSpanningCharacterSet(__CFArray const*,__CFCharacterSet const*)::$_0,std::allocator<LettersSpanningCharacterSet(__CFArray const*,__CFCharacterSet const*)::$_0>,BOOL ()(CFRange,unsigned int)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  LODWORD(v6) = (v5 & 4) >> 2;
  if (*(v4 + 12) <= v3 && *(v4 + 16) > v3)
  {
    if (WORD1(v3))
    {
      v7 = 0;
    }

    else
    {
      v7 = (v5 & 2) == 0;
    }

    if (!v7)
    {
      LOBYTE(v6) = CFCharacterSetIsLongCharacterMember(*v4, v3) != 0;
      return (v6 & 1) == 0;
    }

    v8 = *(v4 + 24);
    if (!v8)
    {
      LODWORD(v6) = ((v5 & 1) == 0) ^ ((v5 & 4) >> 2);
      return (v6 & 1) == 0;
    }

    if ((v5 & 1) == 0)
    {
      v6 = *(v8 + (v3 >> 3));
      v9 = (v5 & 4) == 0;
      v10 = v3 & 7;
LABEL_15:
      LOBYTE(v6) = v9 ^ (((v6 >> v10) & 1) == 0);
      return (v6 & 1) == 0;
    }

    v11 = *(v8 + (v3 >> 8));
    if (*(v8 + (v3 >> 8)))
    {
      LOBYTE(v6) = (v5 & 4) == 0;
      if (v11 != 255)
      {
        v9 = (v5 & 4) == 0;
        v6 = *(v8 + 32 * v11 + (v3 >> 3) + 224);
        v10 = v3 & 7;
        goto LABEL_15;
      }
    }
  }

  return (v6 & 1) == 0;
}

uint64_t GetFirstCharacter(const __CFString *a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = -1;
  Length = CFStringGetLength(a1);
  v5[0] = &unk_1EF25AEB0;
  v5[1] = &v4;
  v5[3] = v5;
  EnumerateCharactersInRange(a1, 0, Length, v5);
  std::__function::__value_func<void ()(CFRange,unsigned int,BOOL *)>::~__value_func[abi:fn200100](v5);
  return v4;
}

BOOL SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_7::__invoke(const __CFString *a1, const __CFString *a2)
{
  FirstCharacter = GetFirstCharacter(a1);
  NumericValue = u_getNumericValue(FirstCharacter);
  v5 = GetFirstCharacter(a2);
  return NumericValue == u_getNumericValue(v5);
}

uint64_t SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_8::__invoke(const __CFString *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E696AD98];
  FirstCharacter = GetFirstCharacter(a1);
  v5 = [objc_msgSend(v3 numberWithDouble:{u_getNumericValue(FirstCharacter)), "hash"}];
  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t std::__function::__func<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_0,std::allocator<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_0>,void ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25AE20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_0,std::allocator<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_0>,void ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, int *a3)
{
  v3 = *a2;
  for (i = *a3; i != v3; ++v3)
  {
    StringWithLongCharacter = CreateStringWithLongCharacter(v3);
    if (StringWithLongCharacter)
    {
      v7 = StringWithLongCharacter;
      SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_1::operator()(*(a1 + 8), StringWithLongCharacter);
      CFRelease(v7);
    }
  }
}

CFStringRef CreateStringWithLongCharacter(unsigned int a1)
{
  v5 = -21846;
  if (HIWORD(a1))
  {
    v2 = a1 & 0x3FF | 0xDC00;
    a1 = (a1 >> 10) - 10304;
    v5 = v2;
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  chars = a1;
  return CFStringCreateWithCharacters(*MEMORY[0x1E695E480], &chars, v1);
}

void SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_1::operator()(uint64_t a1, CFStringRef theString)
{
  if ((**a1 & 1) == 0)
  {
    if (CFStringGetLength(theString))
    {
      FirstCharacter = GetFirstCharacter(theString);
      v5 = 1 << u_charType(FirstCharacter);
      if ((v5 & 0x226) != 0)
      {
        if ((v5 & 0x200) != 0)
        {
          explicit = atomic_load_explicit(*(a1 + 8), memory_order_acquire);

          CFSetAddValue(explicit, theString);
        }

        else
        {
          if ((v5 & 6) != 0)
          {
            v6 = **(a1 + 16);
            v15 = v6;
            v7 = *MEMORY[0x1E695E480];
            MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
            if (MutableCopy)
            {
              v9 = MutableCopy;
              CFStringCapitalize(MutableCopy, 0);
              Length = CFStringGetLength(v9);
              v17.location = 0;
              v17.length = Length;
              RangeOfCharactersFromSet(v9, v6, v17, 0);
              if (v11 == Length)
              {
                CFSetAddValue(atomic_load_explicit(*(a1 + 24), memory_order_acquire), v9);
              }

              CFRelease(v9);
            }

            v12 = CFStringCreateMutableCopy(v7, 0, theString);
            if (v12)
            {
              v13 = v12;
              CFStringLowercase(v12, 0);
              if (!CFSetContainsValue(atomic_load_explicit(*(a1 + 24), memory_order_acquire), v13) && SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_1::operator() const(__CFString const*)::{lambda(__CFString const*)#1}::operator()(&v15, v13))
              {
                CFSetAddValue(atomic_load_explicit(*(a1 + 32), memory_order_acquire), v13);
              }

              CFRelease(v13);
            }
          }

          else
          {
            CFSetAddValue(atomic_load_explicit(*(a1 + 24), memory_order_acquire), theString);
          }

          if (CFSetGetCount(atomic_load_explicit(*(a1 + 24), memory_order_acquire)) == 80 && !CFSetGetCount(atomic_load_explicit(*(a1 + 32), memory_order_acquire)))
          {
            **a1 = 1;
          }
        }
      }
    }
  }
}

BOOL SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_1::operator() const(__CFString const*)::{lambda(__CFString const*)#1}::operator()(const __CFCharacterSet **a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v7.location = 0;
  v7.length = Length;
  RangeOfCharactersFromSet(theString, *a1, v7, 0);
  return v5 == Length;
}

__n128 std::__function::__func<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_1,std::allocator<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_1>,void ()(__CFString const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25AE68;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

CFComparisonResult SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_9::__invoke(const __CFString *a1, const __CFString *a2, const __CFLocale *a3)
{
  v6.length = CFStringGetLength(a1);
  v6.location = 0;

  return CFStringCompareWithOptionsAndLocale(a1, a2, v6, 0x20uLL, a3);
}

uint64_t std::__function::__func<GetFirstCharacter(__CFString const*)::$_0,std::allocator<GetFirstCharacter(__CFString const*)::$_0>,void ()(CFRange,unsigned int,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25AEB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GetFirstCharacter(__CFString const*)::$_0,std::allocator<GetFirstCharacter(__CFString const*)::$_0>,void ()(CFRange,unsigned int,BOOL *)>::operator()(uint64_t result, uint64_t a2, _DWORD *a3, _BYTE **a4)
{
  v4 = *a4;
  **(result + 8) = *a3;
  *v4 = 1;
  return result;
}

__n128 std::__function::__func<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_2::operator() const(int,std::function<BOOL ()(unsigned int)>)::{lambda(unsigned int,unsigned int)#1},std::allocator<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_2::operator() const(int,std::function<BOOL ()(unsigned int)>)::{lambda(unsigned int,unsigned int)#1}>,void ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25AEF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_2::operator() const(int,std::function<BOOL ()(unsigned int)>)::{lambda(unsigned int,unsigned int)#1},std::allocator<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_2::operator() const(int,std::function<BOOL ()(unsigned int)>)::{lambda(unsigned int,unsigned int)#1}>,void ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 == *a3 || **(a1 + 8) < 1)
  {
    return;
  }

  while (1)
  {
    v7 = *(*(a1 + 16) + 24);
    v11 = v3;
    if (!v7)
    {
      std::__throw_bad_function_call[abi:fn200100]();
      JUMPOUT(0x1846FE1ECLL);
    }

    if (!(*(*v7 + 48))(v7, &v11))
    {
      goto LABEL_10;
    }

    StringWithLongCharacter = CreateStringWithLongCharacter(v3);
    if (StringWithLongCharacter)
    {
      CFArrayAppendValue(atomic_load_explicit(*(a1 + 24), memory_order_acquire), StringWithLongCharacter);
      ++**(a1 + 32);
      v9 = *(a1 + 8);
      if ((*v9)-- == 1)
      {
        break;
      }
    }

LABEL_10:
    if (v4 == ++v3)
    {
      return;
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t std::__function::__func<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_5,std::allocator<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_5>,BOOL ()(unsigned int)>::operator()(uint64_t a1, UChar32 *a2)
{
  v2 = *a2;
  v3 = 1 << u_charType(*a2);
  v4 = v2 < 0xF0000 || v2 - 1113088 < 0x3FE;
  v5 = v2 >> 11 >= 0x1F && v4;
  if (v2 >= 0xE000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if ((v3 & 0xF000000) != 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_6,std::allocator<SampleLettersFromUSet(TSampleManager::Sample,CTFontSampleString,__CFCharacterSet const*,USet const*,UErrorCode *,__CFString const*)::$_6>,BOOL ()(unsigned int)>::operator()(uint64_t a1, UChar32 *a2)
{
  v2 = *a2;
  v3 = u_charType(*a2);
  result = 1;
  if (((1 << v3) & 0x7FE01) != 0)
  {
    if (v2 >= 0xE000)
    {
      v5 = v2 - 1114110 < 0xFFFFFC02;
      if (v2 < 0xF0000)
      {
        v5 = 0;
      }

      return v2 >> 11 < 0x1F || v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)::$_0,std::allocator<TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)::$_0>,void ()(unsigned int,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25B060;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)::$_0,std::allocator<TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)::$_0>,void ()(unsigned int,BOOL *)>::operator()(uint64_t a1, UChar32 *a2, _BYTE **a3)
{
  v4 = *a3;
  result = u_charType(*a2);
  if (((1 << result) & 0x26) != 0)
  {
    result = uscript_getScript();
    if (result >= 2)
    {
      v6 = *(a1 + 8);
      *v6 = result;
      *(v6 + 4) = 1;
      *v4 = 1;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int,BOOL *)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t std::__function::__func<TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)::$_1,std::allocator<TSampleManagerImp::Copy(TSampleManager::Sample,TBaseFont const*,CTFontSampleString,__CFArray const*,__CFString const**)::$_1>,void ()(unsigned int,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25B0A8;
  a2[1] = v2;
  return result;
}

CFIndex CopyConvertedMorxFromGSUB(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v21 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(v2);
  result = CFDataGetLength(v3);
  if (result >= 10 && bswap32(*BytePtr) >> 16 <= 1 && (result > 0xD || !*(BytePtr + 1)))
  {
    v8 = &BytePtr[result];
    memcpy(v19, &unk_18477B1C8, 0x1A0uLL);
    memset(v19, 0, 32);
    LODWORD(v19[4]) = 1065353216;
    memset(&v19[5], 0, 32);
    LODWORD(v19[9]) = 1065353216;
    v19[11] = 0;
    v19[10] = &v19[11];
    v19[15] = 0;
    v19[14] = 0;
    v19[12] = 0;
    v19[13] = &v19[14];
    memset(&v19[17], 0, 40);
    v19[16] = &v19[17];
    v19[52] = &v19[22];
    v12 = v8;
    v13 = BytePtr;
    qmemcpy(v20, "TLFDrehclryckerginahanakntalrbehbara", sizeof(v20));
    v11 = -86;
    v10 = 1;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17[28] = v9;
    v17[29] = v9;
    v17[26] = v9;
    v17[27] = v9;
    v17[24] = v9;
    v17[25] = v9;
    v17[22] = v9;
    v17[23] = v9;
    v17[20] = v9;
    v17[21] = v9;
    v17[18] = v9;
    v17[19] = v9;
    v17[16] = v9;
    v17[17] = v9;
    v17[15] = v9;
    v17[14] = v9;
    v17[13] = v9;
    v17[12] = v9;
    v17[11] = v9;
    v17[10] = v9;
    v17[9] = v9;
    v17[8] = v9;
    v17[7] = v9;
    v17[6] = v9;
    v17[5] = v9;
    v17[4] = v9;
    v17[3] = v9;
    v17[2] = v9;
    v17[1] = v9;
    v17[0] = v9;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v18 = v17;
    operator new();
  }

  *v5 = 0;
  return result;
}

uint64_t anonymous namespace::MorxTableBuilder::From(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v415 = *MEMORY[0x1E69E9840];
  v383 = v5;
  v7 = v411;
  v409 = 0;
  v408 = 0;
  v410 = 0;
  v412 = v411;
  if (!*(v4 + 8))
  {
    return 0;
  }

  v8 = (v4 + __rev16(*(v4 + 8)));
  v9 = v8 + 1;
  if (v8 + 1 > v5)
  {
    return 0;
  }

  v361 = v4;
  v362 = v8;
  v366 = v2;
  v12 = bswap32(*v8) >> 16;
  v13 = &v9[v12];
  v14 = v8 + 2 <= v5 ? (v5 - v9) >> 1 : 0;
  v363 = v9;
  v15 = v13 <= v5 && v13 >= v9;
  v360 = v12;
  v16 = v15 || v14 == v12;
  if (!v16)
  {
    return 0;
  }

  v17 = v6;
  v18 = v3;
  memset(v411, 170, sizeof(v411));
  *v382 = 0;
  v365 = v18;
  if (!v17[12])
  {
    goto LABEL_245;
  }

  v19 = 0;
  v20 = v17 + 22;
  v21 = (v17 + 52);
  v22 = 0uLL;
  do
  {
    v23 = v17[10];
    v25 = *(v23 + 40);
    v24 = (v23 + 40);
    v26 = *(v25 + 28);
    LODWORD(v397[0]) = *(v25 + 28);
    v27 = v17[1];
    if (!*&v27)
    {
      goto LABEL_243;
    }

    v28 = vcnt_s8(v27);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = v26;
      if (*&v27 <= v26)
      {
        v29 = v26 % v27.i32[0];
      }
    }

    else
    {
      v29 = (v27.i32[0] - 1) & v26;
    }

    v30 = *(*v17 + 8 * v29);
    if (!v30)
    {
      goto LABEL_243;
    }

    v31 = *v30;
    if (!v31)
    {
      goto LABEL_243;
    }

    while (1)
    {
      v32 = v31[1];
      if (v32 != v26)
      {
        if (v28.u32[0] > 1uLL)
        {
          if (v32 >= *&v27)
          {
            v32 %= *&v27;
          }
        }

        else
        {
          v32 &= *&v27 - 1;
        }

        if (v32 != v29)
        {
          goto LABEL_243;
        }

        goto LABEL_33;
      }

      if (*(v31 + 4) == v26)
      {
        break;
      }

LABEL_33:
      v31 = *v31;
      if (!v31)
      {
        goto LABEL_243;
      }
    }

    v33 = *(v23 + 32);
    *v386 = v26;
    *&v386[4] = v22;
    *&v386[20] = v22;
    *&v386[36] = v22;
    *&v386[52] = v22;
    *&v386[68] = 0;
    v374 = v20;
    v375 = v21;
    if (v26 != 32)
    {
      v373 = v33;
      if (*(v23 + 56) == 1)
      {
        std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::erase(v17 + 10, v23);
      }

      else
      {
        v38 = *v24;
        std::__tree<unsigned int>::__remove_node_pointer(v24, *v24);
        operator delete(v38);
      }

      if (SLODWORD(v397[0]) > 1769172843)
      {
        if (LODWORD(v397[0]) == 1835361385)
        {
          goto LABEL_53;
        }

        v39 = 1769172844;
      }

      else
      {
        if (LODWORD(v397[0]) == 1718185569)
        {
          goto LABEL_53;
        }

        v39 = 1768843636;
      }

      if (LODWORD(v397[0]) != v39)
      {
        v54 = ConvertOTFeatureToAATFeature(v397[0], &v386[4]);
        if (v54)
        {
          v22 = 0uLL;
          if (v54 != 2)
          {
            v19 |= *&v386[8];
            goto LABEL_121;
          }

LABEL_186:
          v53 = 1;
          goto LABEL_181;
        }

        goto LABEL_89;
      }

LABEL_53:
      v399[0] = v397;
      v40 = std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v17 + 16), v397[0]);
      LODWORD(v399[0]) = 1634885986;
      if (!std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>(v40 + 5, v399))
      {
        goto LABEL_179;
      }

      *&v386[8] = 35;
      v41 = *v382;
      if (!*v382)
      {
        v42 = operator new(0x660uLL, MEMORY[0x1E69E5398]);
        if (v42)
        {
          *v42 = 0;
          v42[1] = 0;
          v42[2] = 0;
          v42[183] = v42 + 3;
          v42[184] = 0;
          v42[186] = 0;
          v42[185] = 0;
          v42[195] = v42 + 187;
          *(v42 + 392) = 0;
          v42[197] = 0;
          *(v42 + 396) = 0;
          v42[199] = 0;
          *(v42 + 400) = 0;
          v42[201] = 0;
          *(v42 + 404) = 0;
          v42[203] = 0;
        }

        v41 = *v382;
        if (!*v382)
        {
          goto LABEL_179;
        }
      }

      if (LODWORD(v397[0]) == 1768843636)
      {
        v44 = 1568;
        v43 = v373;
      }

      else
      {
        v43 = v373;
        if (LODWORD(v397[0]) == 1835361385)
        {
          v44 = 1584;
        }

        else
        {
          v44 = 1616;
          if (LODWORD(v397[0]) == 1718185569)
          {
            v44 = 1600;
          }
        }
      }

      v55 = (v362 + (bswap32(v363[v43]) >> 16));
      if (v55 + 3 > v383)
      {
        goto LABEL_179;
      }

      v56 = &v55[(bswap32(v55[2]) >> 16) + 3] + ((v55[1] >> 11) & 2);
      if (v56 < v55 || v56 > v383)
      {
        goto LABEL_179;
      }

      v58 = v41 + v44;
      v399[0] = 0xAAAAAAAAAAAAAAAALL;
      v59 = ResolveLookupSubtable(v55, v383, v399);
      *v58 = v59;
      *(v58 + 8) = v60;
      if (v399[0] >= 2)
      {
        *v58 = 0;
LABEL_179:
        v53 = 1;
        goto LABEL_180;
      }

      if (!v59)
      {
        goto LABEL_179;
      }

      *&v386[22] = 1000;
LABEL_89:
      v53 = 2;
      goto LABEL_180;
    }

    v34 = *v24;
    v35 = (*v24)[1];
    v36 = *v24;
    if (v35)
    {
      do
      {
        v37 = v35;
        v35 = *v35;
      }

      while (v35);
    }

    else
    {
      do
      {
        v37 = v36[2];
        v16 = *v37 == v36;
        v36 = v37;
      }

      while (!v16);
    }

    if (v37 == (v23 + 48))
    {
      v373 = v33;
      std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::erase(v17 + 10, v23);
    }

    else
    {
      if (*(v37 + 28) != 32)
      {
        v53 = 1;
        goto LABEL_181;
      }

      v373 = v33;
      std::__tree<unsigned int>::__remove_node_pointer(v24, v34);
      operator delete(v34);
    }

    v399[0] = 0xAAAAAAAAAAAAAAAALL;
    LanguagesWithLangSysTag(v397[0], v399);
    explicit = atomic_load_explicit(v399, memory_order_acquire);
    if (!explicit || (ValueAtIndex = CFArrayGetValueAtIndex(explicit, 0)) == 0)
    {

      v53 = 1;
      v22 = 0uLL;
      goto LABEL_181;
    }

    v47 = ValueAtIndex;
    v358 = v7;
    v48 = v17[19];
    v49 = v17[20];
    if (v48 != v49)
    {
      while (1)
      {
        v50 = atomic_load_explicit(v48, memory_order_acquire);
        v51 = v50;
        if (v50 == v47)
        {
          break;
        }

        if (v50)
        {
          v52 = CFEqual(v50, v47);

          if (v52)
          {
            goto LABEL_91;
          }
        }

        else
        {
        }

        if (++v48 == v49)
        {
          v48 = v49;
          goto LABEL_91;
        }
      }
    }

LABEL_91:
    v7 = v358;
    if (v48 == v17[20])
    {
      v407[0] = v47;
      v62 = v17[20];
      v61 = v17[21];
      if (v62 >= v61)
      {
        v64 = v17[19];
        v65 = (v62 - v64) >> 3;
        if ((v65 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v66 = v61 - v64;
        v67 = v66 >> 2;
        if (v66 >> 2 <= (v65 + 1))
        {
          v67 = v65 + 1;
        }

        if (v66 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          v69 = *v375;
          v70 = *v375 + 8 * v68;
          if (v70 > v375)
          {
            if (!(v68 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          *v375 = v70;
        }

        else
        {
          v69 = 0;
        }

        v71 = &v69[8 * v65];
        *v71 = atomic_exchange(v407, 0);
        v63 = v71 + 8;
        v73 = v17[19];
        v72 = v17[20];
        v74 = &v69[8 * v65 + v73 - v72];
        if (v73 != v72)
        {
          v371 = v68;
          v75 = v17[19];
          v76 = v74;
          do
          {
            *v76++ = atomic_exchange(v75++, 0);
          }

          while (v75 != v72);
          do
          {
            v77 = *v73++;
          }

          while (v73 != v72);
          v73 = v17[19];
          v68 = v371;
        }

        v17[19] = v74;
        v17[20] = v63;
        v78 = v17[21];
        v17[21] = &v69[8 * v68];
        v7 = v358;
        if (v73)
        {
          if (v374 <= v73 && v375 > v73)
          {
            if (v78 == *v375)
            {
              *v375 = v73;
            }
          }

          else
          {
            operator delete(v73);
          }
        }
      }

      else
      {
        *v62 = atomic_exchange(v407, 0);
        v63 = v62 + 1;
      }

      v17[20] = v63;

      v48 = (v17[20] - 8);
    }

    strcpy(&v386[4], "'");
    *&v386[6] = ((v48 - *(v17 + 38)) >> 3) + 1;
    *&v386[8] = 1;

    v22 = 0uLL;
LABEL_121:
    v80 = v362 + (bswap32(v363[v373]) >> 16);
    *&v386[24] = v80;
    if (v80 + 4 < v361 || v80 + 6 > v383)
    {
      goto LABEL_186;
    }

    v82 = v80 + 2 * (bswap32(*(v80 + 4)) >> 16) + ((*(v80 + 2) >> 11) & 2) + 6;
    if (v80 < v361 || v82 < v80 || v82 > v383)
    {
      v53 = 1;
      goto LABEL_181;
    }

    v85 = v17[6];
    if (!*&v85)
    {
      goto LABEL_149;
    }

    v86 = vcnt_s8(v85);
    v86.i16[0] = vaddlv_u8(v86);
    if (v86.u32[0] > 1uLL)
    {
      v87 = v373;
      if (*&v85 <= v373)
      {
        v87 = v373 % v85.i32[0];
      }
    }

    else
    {
      v87 = (v85.i32[0] - 1) & v373;
    }

    v88 = *(v17[5] + 8 * v87);
    if (!v88 || (v89 = *v88) == 0)
    {
LABEL_149:
      operator new();
    }

    while (2)
    {
      v90 = v89[1];
      if (v90 != v373)
      {
        if (v86.u32[0] > 1uLL)
        {
          if (v90 >= *&v85)
          {
            v90 %= *&v85;
          }
        }

        else
        {
          v90 &= *&v85 - 1;
        }

        if (v90 != v87)
        {
          goto LABEL_149;
        }

LABEL_148:
        v89 = *v89;
        if (!v89)
        {
          goto LABEL_149;
        }

        continue;
      }

      break;
    }

    if (*(v89 + 4) != v373)
    {
      goto LABEL_148;
    }

    if ((*(v89 + 5) & 0x80000000) != 0)
    {
      *&v386[20] = 1;
    }

    *&v386[22] = ResolveLookupSubtable(*&v386[24], v383, &v386[32]);
    *&v386[40] = v91;
    if (!*&v386[22])
    {
      goto LABEL_179;
    }

    v22 = 0uLL;
    if (!*&v386[32])
    {
      v53 = 2;
      goto LABEL_181;
    }

    if (*&v386[32] != 1)
    {
      goto LABEL_186;
    }

    v92 = *&v386[24];
    memset(v398, 0, 24);
    if ((*(*&v386[24] + 2) & 0x1EFF) == 0)
    {
      goto LABEL_160;
    }

    CommonTable = TBaseFont::GetCommonTable(v365, 1195656518, 0);
    if (!CommonTable)
    {
      goto LABEL_160;
    }

    *&v400[64] = 0xAAAAAAAAAAAAAAAALL;
    *&v94 = 0xAAAAAAAAAAAAAAAALL;
    *(&v94 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v400[48] = v94;
    *&v400[32] = v94;
    *&v400[16] = v94;
    *v400 = v94;
    *v399 = v94;
    OTL::GDEF::GDEF(v399, CommonTable);
    v407[0] = &unk_1EF25B278;
    v407[1] = v398;
    v407[3] = v407;
    OTL::GDEF::IterateGlyphsIgnoredByLookupTable(v399, v92, v407, v95, v96);
    std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100](v407);
    LOBYTE(v388) = -86;
    std::__sort<std::__less<unsigned short,unsigned short> &,unsigned short *>();
    v97 = std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,std::__equal_to &>(v398[0], v398[1]);
    if (v97 > v398[1])
    {
      goto LABEL_600;
    }

    if (v97 != v398[1])
    {
      v398[1] = v97;
    }

LABEL_160:
    if (*&v386[48])
    {
      *&v386[56] = *&v386[48];
      operator delete(*&v386[48]);
    }

    *&v386[48] = *v398;
    *&v386[64] = v398[2];
    if (*&v386[22] == 3 && (LOWORD(v398[0]) = 0, *&v386[32]))
    {
      v98 = v383;
      if ((ResolveLookupSubtableWithIndex(*&v386[24], 0, v383) & 0xFFFD) == 1)
      {
        v407[0] = v99;
        v102 = v99 + 3;
        if (v99 + 3 <= v98)
        {
          v103 = bswap32(v99[2]) >> 16;
          v104 = &v102[v103];
          v105 = v99 + 4 <= v98 ? (v98 - v102) >> 1 : 0;
          v106 = v104 <= v98 && v104 >= v102;
          if (v106 || v105 == v103)
          {
            OTL::LookupWithCoverage::GetCoverage(v99, v98, v399, v100, v101);
            v407[121] = 0;
            operator new();
          }
        }
      }

      v53 = 1;
    }

    else
    {
      v53 = 0;
    }

LABEL_180:
    v22 = 0uLL;
LABEL_181:
    if (*&v386[48])
    {
      *&v386[56] = *&v386[48];
      operator delete(*&v386[48]);
      v22 = 0uLL;
    }

    if ((v53 | 2) != 2)
    {
LABEL_243:
      v10 = 0;
      goto LABEL_588;
    }

    v20 = v374;
    v21 = v375;
  }

  while (v17[12]);
  if ((v19 & 0x1000) == 0)
  {
    goto LABEL_209;
  }

  v108 = v408;
  v109 = v409;
  if (v408 != v409)
  {
    while (v108->n128_u32[0] != 1986359924)
    {
      v108 = (v108 + 72);
      if (v108 == v409)
      {
        goto LABEL_209;
      }
    }

    if (v108 != v409)
    {
      v110 = (v108 + 72);
      if (&v108[4].n128_i8[8] != v409)
      {
        do
        {
          if (v110->n128_u32[0] != 1986359924)
          {
            v111 = *v110;
            v112 = v110[2];
            v108[1] = v110[1];
            v108[2] = v112;
            *v108 = v111;
            std::vector<unsigned short>::__move_assign(&v108[3], v110 + 3);
            v108 = (v108 + 72);
          }

          v110 = (v110 + 72);
        }

        while (v110 != v109);
        v109 = v409;
      }
    }
  }

  if (v108 > v109)
  {
LABEL_600:
    __break(1u);
LABEL_601:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  if (v108 != v109)
  {
    while (v109 != v108)
    {
      v113 = v109[-2].n128_u64[1];
      if (v113)
      {
        v109[-1].n128_u64[0] = v113;
        operator delete(v113);
      }

      v109 = (v109 - 72);
    }

    v409 = v108;
  }

LABEL_209:
  v18 = v365;
  if (!*v382)
  {
    goto LABEL_245;
  }

  if (!*(*v382 + 1576) || !*(*v382 + 1592) || !*(*v382 + 1608))
  {
    goto LABEL_243;
  }

  v114 = v408;
  v115 = v409;
  if (v408 == v409)
  {
    v117 = -1;
LABEL_221:
    while (1)
    {
      v118 = (v115 + 72);
      v119 = v115;
      while (v119 != v408)
      {
        v120 = v119[-4].n128_u16[7];
        v119 = (v119 - 72);
        v118 = (v118 - 72);
        if (v120 == 1000)
        {
          goto LABEL_226;
        }
      }

      v118 = v408;
LABEL_226:
      v121 = &v118[-5].n128_i8[8];
      if (v115 == &v118[-5].n128_i8[8])
      {
        goto LABEL_600;
      }

      if (v118 == v115)
      {
        v126 = v115;
        v115 = (v118 - 72);
      }

      else
      {
        v122 = v7;
        do
        {
          v123 = (v121 + 72);
          v124 = *(v121 + 88);
          *v121 = *(v121 + 72);
          *(v121 + 1) = v124;
          *(v121 + 2) = *(v121 + 104);
          std::vector<unsigned short>::__move_assign((v121 + 48), (v121 + 120));
          v125 = (v121 + 144);
          v121 += 72;
        }

        while (v125 != v115);
        v126 = v409;
        v115 = v123;
        v7 = v122;
      }

      while (v126 != v115)
      {
        v127 = v126[-2].n128_u64[1];
        if (v127)
        {
          v126[-1].n128_u64[0] = v127;
          operator delete(v127);
        }

        v126 = (v126 - 72);
      }

      v409 = v115;
      if (!--v117)
      {
        goto LABEL_237;
      }
    }
  }

  v116 = 0;
  do
  {
    if (v114[1].n128_u16[3] == 1000)
    {
      ++v116;
    }

    v114 = (v114 + 72);
  }

  while (v114 != v409);
  v117 = v116 - 1;
  if (v116 != 1)
  {
    goto LABEL_221;
  }

LABEL_237:
  *v386 = 1919707495;
  v399[0] = v386;
  v128 = std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v17 + 16), 0x726C6967u);
  *v386 = 1919118452;
  v399[0] = v386;
  v129 = std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v17 + 16), 0x72636C74u);
  *v386 = 1667329140;
  v399[0] = v386;
  v130 = std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v17 + 16), 0x63616C74u);
  LODWORD(v399[0]) = 1634885986;
  if (std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>(v128 + 5, v399))
  {
    *v386 = 1634885986;
    if (std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>(v129 + 5, v386) || (LODWORD(v407[0]) = 1634885986, v18 = v365, std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>(v130 + 5, v407)))
    {
      if (v128[8] > 1 || v129[8] > 1 || v130[8] > 1)
      {
        goto LABEL_243;
      }

      v348 = v408;
      if (v408 != v409)
      {
        while (1)
        {
          v349 = v348->n128_u32[0];
          v350 = v348->n128_u32[0] == 1667329140 || v349 == 1919118452;
          if (v350 || v349 == 1919707495)
          {
            break;
          }

          v348 = (v348 + 72);
          if (v348 == v409)
          {
            v348 = v409;
            break;
          }
        }
      }

      v18 = v365;
    }
  }

  else
  {
    v18 = v365;
  }

LABEL_245:
  v359 = v7;
  memset(v407, 170, 0x3A8uLL);
  LODWORD(v407[0]) = 0;
  memset(&v407[1], 0, 24);
  v407[49] = &v407[4];
  memset(&v407[50], 0, 24);
  v407[83] = &v407[53];
  memset(&v407[84], 0, 24);
  v407[117] = &v407[87];
  *&v131 = 0xAAAAAAAAAAAAAAAALL;
  *(&v131 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v405[3] = v131;
  v405[2] = v131;
  v405[1] = v131;
  v405[0] = v131;
  v402 = 0;
  v403 = 0;
  v404 = 0;
  v406 = v405;
  GlyphCount = TBaseFont::GetGlyphCount(v18);
  v132 = v408;
  v370 = v409;
  if (v408 == v409)
  {
LABEL_586:
    v10 = 1;
    goto LABEL_587;
  }

  v133 = 0;
  v134 = (GlyphCount + 7) >> 3;
  if (GlyphCount > 0x10000)
  {
    v134 = 0x2000;
  }

  length = v134;
  allocator = *MEMORY[0x1E695E480];
  while (2)
  {
    v135 = v132;
    v137 = &v132->n128_i8[4];
    v136 = *(v132->n128_u64 + 4);
    v138 = v407[1];
    v139 = v407[2];
    v140 = v136;
    v141 = HIDWORD(v136);
    v376 = v132;
    if (v407[1] == v407[2])
    {
      v142 = v370;
    }

    else
    {
      v142 = v370;
      while (*v138 != v136 || v138[1] != WORD1(v136))
      {
        v138 += 6;
        if (v138 == v407[2])
        {
          goto LABEL_258;
        }
      }
    }

    if (v138 == v407[2])
    {
LABEL_258:
      v143 = (v132 + 72);
      v144 = 72;
      do
      {
        v145 = v144;
        if (v143 == v142 || (v141 & 0x40) != 0)
        {
          break;
        }

        v146 = v143[1].n128_i64[1];
        v147 = v143->n128_u16[2];
        v143 = (v143 + 72);
        v144 += 72;
      }

      while (v146 == v132[1].n128_u64[1] && v147 == v140);
      if (v133)
      {
        v133 = (2 * v133);
        if (!v133)
        {
          LODWORD(v407[0]) = 0;
          v149 = v407[50];
          v407[2] = v407[1];
          v150 = v407[51];
          if (v407[51] != v407[50])
          {
            do
            {
              v151 = v150 - 1;

              v150 = v151;
            }

            while (v151 != v149);
          }

          v407[51] = v149;
          v152 = v407[85];
          v153 = v407[84];
          if (v407[85] != v407[84])
          {
            do
            {
              v154 = v152 - 1;

              v152 = v154;
            }

            while (v154 != v153);
          }

          v407[85] = v153;
          v403 = v402;
          v135 = v376;
          LODWORD(v141) = v376->n128_u32[2];
          v133 = 1;
          v139 = v407[2];
        }
      }

      else
      {
        v133 = 1;
      }

      v135->n128_u32[3] = v133;
      v135[1].n128_u32[0] = -1;
      if (v141)
      {
        v155 = v407[1];
        if (v407[1] == v139)
        {
          v159 = -1;
        }

        else
        {
          v156 = 0;
          v157 = *v137;
          do
          {
            if (*v155 == v157)
            {
              v158 = *(v155 + 1);
              *(v155 + 2) &= ~v133;
              v156 |= v158;
            }

            v155 += 12;
          }

          while (v155 != v139);
          v159 = ~v156;
        }

        v135[1].n128_u32[0] = v159;
        v160 = v402;
        if (v402 != v403)
        {
          while (*v160 != *v137)
          {
            if (++v160 == v403)
            {
              goto LABEL_286;
            }
          }
        }

        if (v160 == v403)
        {
LABEL_286:
          STL::insert_sorted<TInlineVector<unsigned short,30ul>>(&v402, v137);
          v135 = v376;
          v139 = v407[2];
        }
      }

      v161 = ~v133;
      v132 = v135;
      do
      {
        v162 = v133;
        v163 = v135->n128_i16[2];
        v164 = v132->n128_u16[3];
        v165 = v135[1].n128_i32[0];
        if (v139 >= v407[3])
        {
          v166 = v407[1];
          v167 = v139 - v407[1];
          v168 = 0xAAAAAAAAAAAAAAABLL * ((v139 - v407[1]) >> 2);
          v169 = v168 + 1;
          if (v168 + 1 > 0x1555555555555555)
          {
            goto LABEL_601;
          }

          if (0x5555555555555556 * ((v407[3] - v407[1]) >> 2) > v169)
          {
            v169 = 0x5555555555555556 * ((v407[3] - v407[1]) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v407[3] - v407[1]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v170 = 0x1555555555555555;
          }

          else
          {
            v170 = v169;
          }

          *&v400[16] = &v407[4];
          if (v170)
          {
            v171 = std::allocator_traits<TInlineBufferAllocator<MortFeatureEntry,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<MortFeatureEntry,30ul>>(&v407[4], v170);
            v170 = v172;
            v166 = v407[1];
            v167 = v407[2] - v407[1];
          }

          else
          {
            v171 = 0;
          }

          v173 = v171 + 12 * v168;
          *v173 = v163;
          *(v173 + 2) = v164;
          v174 = (v171 + 12 * v170);
          v133 = v162;
          *(v173 + 4) = v162;
          *(v173 + 8) = v165;
          v139 = (v173 + 12);
          v175 = (v173 - v167);
          memcpy((v173 - v167), v166, v167);
          v176 = v407[1];
          v177 = v407[3];
          v407[1] = v175;
          v407[2] = v139;
          v407[3] = v174;
          *v400 = v176;
          *&v400[8] = v177;
          v399[1] = v176;
          v399[0] = v176;
          std::__split_buffer<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul> &>::~__split_buffer(v399);
          v135 = v376;
        }

        else
        {
          *v139 = v163;
          *(v139 + 1) = v164;
          v133 = v162;
          *(v139 + 1) = v162;
          *(v139 + 2) = v165;
          v139 += 12;
        }

        v407[2] = v139;
        if ((v135->n128_u8[8] & 1) == 0)
        {
          v178 = *v137;
          v179 = v132->n128_u16[3] + 1;
          if (v139 >= v407[3])
          {
            v180 = v407[1];
            v181 = v139 - v407[1];
            v182 = 0xAAAAAAAAAAAAAAABLL * ((v139 - v407[1]) >> 2);
            v183 = v182 + 1;
            if (v182 + 1 > 0x1555555555555555)
            {
              goto LABEL_601;
            }

            if (0x5555555555555556 * ((v407[3] - v407[1]) >> 2) > v183)
            {
              v183 = 0x5555555555555556 * ((v407[3] - v407[1]) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v407[3] - v407[1]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v184 = 0x1555555555555555;
            }

            else
            {
              v184 = v183;
            }

            *&v400[16] = &v407[4];
            if (v184)
            {
              v185 = std::allocator_traits<TInlineBufferAllocator<MortFeatureEntry,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<MortFeatureEntry,30ul>>(&v407[4], v184);
              v184 = v186;
              v180 = v407[1];
              v181 = v407[2] - v407[1];
            }

            else
            {
              v185 = 0;
            }

            v187 = v185 + 12 * v182;
            *v187 = v178;
            *(v187 + 2) = v179;
            v188 = (v185 + 12 * v184);
            *(v187 + 4) = 0;
            *(v187 + 8) = v161;
            v139 = (v187 + 12);
            v189 = (v187 - v181);
            memcpy((v187 - v181), v180, v181);
            v190 = v407[1];
            v191 = v407[3];
            v407[1] = v189;
            v407[2] = v139;
            v407[3] = v188;
            *v400 = v190;
            *&v400[8] = v191;
            v399[1] = v190;
            v399[0] = v190;
            std::__split_buffer<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul> &>::~__split_buffer(v399);
            v135 = v376;
          }

          else
          {
            *v139 = v178;
            *(v139 + 1) = v179;
            *(v139 + 1) = 0;
            *(v139 + 2) = v161;
            v139 += 12;
          }

          v407[2] = v139;
        }

        v132 = (v132 + 72);
        v145 -= 72;
      }

      while (v145);
      LODWORD(v141) = v135->n128_u32[2];
    }

    else
    {
      *(&v132->n128_u64[1] + 4) = *(v138 + 2);
      v132 = (v132 + 72);
    }

    if ((v141 & 2) != 0)
    {
      LODWORD(v407[0]) |= v135->n128_u32[3];
    }

    v10 = 0;
    v192 = ~(v141 << 26) & 0x80000000;
    if ((v141 & 0x30) == 0)
    {
      v192 = 0x20000000;
    }

    if (v135[1].n128_u16[2])
    {
      v192 |= 0x40000000u;
    }

    v372 = v192;
    v193 = v135[1].n128_u16[3];
    if (v193 > 3)
    {
      if (v193 != 4)
      {
        if (v193 != 6)
        {
          if (v193 != 1000)
          {
            goto LABEL_587;
          }

          v367 = v133;
          *&v386[392] = 0xAAAAAAAAAAAAAAAALL;
          *&v194 = 0xAAAAAAAAAAAAAAAALL;
          *(&v194 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v386[360] = v194;
          *&v386[376] = v194;
          *&v386[328] = v194;
          *&v386[344] = v194;
          *&v386[296] = v194;
          *&v386[312] = v194;
          *&v386[264] = v194;
          *&v386[280] = v194;
          *&v386[232] = v194;
          *&v386[248] = v194;
          *&v386[200] = v194;
          *&v386[216] = v194;
          *&v386[168] = v194;
          *&v386[184] = v194;
          *&v386[160] = 0xAAAAAAAAAAAAAAAALL;
          *&v386[104] = v194;
          *&v386[120] = 0xAAAAAAAAAAAAAAAALL;
          *&v386[72] = v194;
          *&v386[88] = v194;
          *&v386[64] = 0xAAAAAAAAAAAAAAAALL;
          *&v386[8] = 0xAAAAAAAAAAAAAAAALL;
          *&v386[24] = 0xAAAAAAAAAAAAAAAALL;
          memset(&v386[32], 0, 32);
          *&v386[16] = 0;
          *&v386[128] = &v386[64];
          *&v386[144] = 0uLL;
          *&v386[400] = &v386[160];
          *v386 = &unk_1EF25B678;
          *&v386[408] = 0;
          v195 = v135->n128_i32[3];
          v196 = *v382;
          v197 = TBaseFont::GetGlyphCount(v365);
          v199 = v399[0];
          if (v399[0])
          {
            v200 = v399[1];
            v201 = v399[0];
            if (v399[1] != v399[0])
            {
              do
              {
                v200 -= 48;
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v200);
              }

              while (v200 != v199);
              v201 = v399[0];
            }

            v399[1] = v199;
            if (&v400[8] <= v201 && &v400[1448] > v201)
            {
              if (*v400 == *&v400[1448])
              {
                *&v400[1448] = v201;
              }
            }

            else
            {
              operator delete(v201);
            }
          }

          if (v198)
          {
            CFDataGetMutableBytePtr(atomic_load_explicit(&v386[16], memory_order_acquire));
            memset(v384, 170, 24);
            std::vector<unsigned short>::vector[abi:fn200100](v384, v376[3].n128_u64);
            v385 = 0xAAAAAAAAAAAAAAAALL;
            memset(v414, 0, sizeof(v414));
            if (v384[1] != v384[0])
            {
              std::vector<unsigned short>::__vallocate[abi:fn200100](v414, (v384[1] - v384[0]) >> 1);
            }

            v397[3] = 0;
            operator new();
          }

          v232 = 1;
          v133 = v367;
          *v386 = &unk_1EF25B678;

          goto LABEL_575;
        }

        if (*v135[2].n128_u64[1] != 768)
        {
          goto LABEL_599;
        }

        memset(&v400[48], 170, 0x3098uLL);
        *&v386[400] = 0;
        memset(v386, 0, 136);
        *&v386[136] = &v386[40];
        memset(&v386[144], 0, 120);
        *&v386[264] = &v386[168];
        memset(&v386[272], 0, 120);
        *&v386[392] = &v386[296];
        *&v386[408] = 0;
        v399[0] = &v400[8];
        v399[1] = &v400[8];
        memset(&v400[8], 0, 40);
        *v400 = &v400[424];
        *&v400[144] = &v400[48];
        memset(&v400[152], 0, 24);
        v401 = &v400[424];
        *&v400[272] = &v400[176];
        std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<std::vector<unsigned short> const*>,std::__wrap_iter<std::vector<unsigned short> const*>>(&v400[152], 0, 0, 0);
        memset(&v400[280], 0, 24);
        *&v400[400] = &v400[304];
        std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<std::vector<unsigned short> const*>,std::__wrap_iter<std::vector<unsigned short> const*>>(&v400[280], *&v386[272], *&v386[280], 0xAAAAAAAAAAAAAAABLL * ((*&v386[280] - *&v386[272]) >> 3));
        *&v400[408] = *&v386[400];
        v399[1] = &v400[424];
        v398[0] = &v386[272];
        std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](v398);
        v398[0] = &v386[144];
        std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](v398);
        v398[0] = &v386[16];
        std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](v398);
        v227 = v376;
        v228 = v376[2].n128_u64[0];
        v229 = v399[0];
        if (0x4EC4EC4EC4EC4EC5 * ((*v400 - v399[0]) >> 5) < v228)
        {
          if (v228 > 0x9D89D89D89D89DLL)
          {
LABEL_616:
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          *&v386[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v230 = 0xAAAAAAAAAAAAAAAALL;
          *(&v230 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v386 = v230;
          *&v386[16] = v230;
          v229 = v399[0];
          v227 = v376;
        }

        if (v229 == v399[1])
        {
          goto LABEL_600;
        }

        {
          goto LABEL_563;
        }

        v231 = *(v229 + 100);
        if (v231 != 1)
        {
          if (!v231)
          {
            if (v376[2].n128_u64[0] > 1)
            {
              v232 = 1;
            }

            else
            {
              v232 = 20;
            }

            goto LABEL_564;
          }

LABEL_563:
          v232 = 1;
          goto LABEL_564;
        }

        v250 = v229[51];
        if (*v250 || (v256 = v250[1], v255 = v250 + 1, v257 = bswap32(v256) >> 16, v257 >= v360))
        {
          v232 = 1;
          goto LABEL_564;
        }

        v258 = (v362 + (bswap32(v363[v257]) >> 16));
        v232 = 1;
        if ((v258 + 2) >= v361 && v258 + 3 <= v383 && v258 >= v361)
        {
          v259 = &v258[(bswap32(v258[2]) >> 16) + 3] + ((v258[1] >> 11) & 2);
          if (v259 >= v258 && v259 <= v383)
          {
            v260 = ResolveLookupSubtable(v258, v383, 0);
            v262 = v261;
            v263 = v260;
            if (v260 == 1 || v229[2] == v229[3] || v229[34] == v229[35])
            {
              v264 = v376;
              v354 = v229;
              v353 = v261;
              if (v376[2].n128_u64[0] < 2)
              {
                v341 = 0;
              }

              else
              {
                v357 = v260;
                v265 = v133;
                v266 = (v261 + 3);
                v267 = v261 + 2;
                v364 = (v261 + 4);
                v268 = 1;
                do
                {
                  v269 = v383;
                  v270 = v264;
                  if (ResolveLookupSubtableWithIndex(v264[1].n128_u64[1], v268, v383) != 6)
                  {
                    goto LABEL_546;
                  }

                  *&v273 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v273 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *&v386[376] = v273;
                  *&v386[344] = v273;
                  *&v386[360] = v273;
                  *&v386[312] = v273;
                  *&v386[328] = v273;
                  *&v386[296] = v273;
                  *&v386[248] = v273;
                  *&v386[216] = v273;
                  *&v386[232] = v273;
                  *&v386[184] = v273;
                  *&v386[200] = v273;
                  *&v386[168] = v273;
                  *&v386[120] = v273;
                  *&v386[88] = v273;
                  *&v386[104] = v273;
                  *&v386[56] = v273;
                  *&v386[72] = v273;
                  *&v386[40] = v273;
                  memset(v386, 0, 40);
                  *&v386[136] = &v386[40];
                  memset(&v386[144], 0, 24);
                  memset(&v386[272], 0, 24);
                  *&v386[264] = &v386[168];
                  *&v386[392] = &v386[296];
                  *&v386[400] = 0xAAAAAAAA00000000;
                  *&v386[408] = 0;
                  {
                    goto LABEL_545;
                  }

                  v274 = 0;
                  v275 = (*&v386[408] + 2);
                  do
                  {
                    v276 = *(v275 + v274);
                    v277 = *(v255 + v274);
                  }

                  while (v276 == v277 && v274++ != 1);
                  if (v276 != v277)
                  {
                    v279 = bswap32(*v275) >> 16;
                    if (v279 >= v360)
                    {
                      goto LABEL_545;
                    }

                    v280 = (v362 + (bswap32(v363[v279]) >> 16));
                    if ((v280 + 2) < v361 || v280 + 3 > v383)
                    {
                      goto LABEL_545;
                    }

                    v282 = &v280[(bswap32(v280[2]) >> 16) + 3] + ((v280[1] >> 11) & 2);
                    v283 = v280 >= v361 && v282 >= v280;
                    v284 = !v283 || v282 > v383;
                    if (v284 || ResolveLookupSubtable(v280, v383, 0) != 1)
                    {
                      goto LABEL_545;
                    }

                    v286 = bswap32(*v285) >> 16;
                    if (v286 == 2)
                    {
                      v300 = v285 + 3;
                      if (v285 + 3 > v383)
                      {
                        goto LABEL_545;
                      }

                      v301 = bswap32(v285[2]) >> 16;
                      v302 = __CFADD__(v300, 2 * v301);
                      v303 = &v300[v301] > v383 || v302;
                      if (v285 + 4 <= v383)
                      {
                        v304 = (v383 - v300) >> 1;
                      }

                      else
                      {
                        v304 = 0;
                      }

                      if (v304 == v301)
                      {
                        v303 = 0;
                      }

                      if ((v303 & 1) != 0 || v266 > v383)
                      {
                        goto LABEL_545;
                      }

                      v305 = *v267;
                      v306 = bswap32(v305) >> 16;
                      v307 = v266 + 2 * v306;
                      v308 = (v383 - v266) >> 1;
                      if (v364 > v383)
                      {
                        v308 = 0;
                      }

                      v309 = v307 < v266 || v307 > v383;
                      v310 = !v309 || v308 == v306;
                      v311 = v310;
                      if (v285[2] != v305 || !v311)
                      {
                        goto LABEL_545;
                      }

                      if (v285[2])
                      {
                        v312 = &v285[v301 + 3];
                        v313 = v262 + 3;
                        while (1)
                        {
                          v314 = 0;
                          do
                          {
                            v315 = *(v300 + v314);
                            v316 = *(v313 + v314);
                          }

                          while (v315 == v316 && v314++ != 1);
                          if (v315 != v316)
                          {
                            break;
                          }

                          ++v300;
                          ++v313;
                          if (v300 == v312)
                          {
                            goto LABEL_482;
                          }
                        }

LABEL_545:
LABEL_546:
                        v232 = 1;
                        v133 = v265;
                        goto LABEL_564;
                      }
                    }

                    else
                    {
                      if (v286 != 1 || v285 + 3 > v383 || v266 > v383)
                      {
                        goto LABEL_545;
                      }

                      v289 = 0;
                      do
                      {
                        v290 = *(v285 + v289 + 4);
                        v291 = *(v267 + v289);
                      }

                      while (v290 == v291 && v289++ != 1);
                      if (v290 != v291)
                      {
                        goto LABEL_545;
                      }
                    }
                  }

LABEL_482:
                  v293 = v399[1];
                  if (v399[1] >= *v400)
                  {
                    v398[4] = 0xAAAAAAAAAAAAAAAALL;
                    *&v295 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v295 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    *&v398[2] = v295;
                    *v398 = v295;
                    v296 = 0x4EC4EC4EC4EC4EC5 * ((v399[1] - v399[0]) >> 5);
                    v297 = v296 + 1;
                    if ((v296 + 1) > 0x9D89D89D89D89DLL)
                    {
                      goto LABEL_616;
                    }

                    if (0x9D89D89D89D89D8ALL * ((*v400 - v399[0]) >> 5) > v297)
                    {
                      v297 = 0x9D89D89D89D89D8ALL * ((*v400 - v399[0]) >> 5);
                    }

                    if ((0x4EC4EC4EC4EC4EC5 * ((*v400 - v399[0]) >> 5)) >= 0x4EC4EC4EC4EC4ELL)
                    {
                      v298 = 0x9D89D89D89D89DLL;
                    }

                    else
                    {
                      v298 = v297;
                    }

                    v398[2] = v398[2] + 416;
                    v294 = v399[1];
                  }

                  else
                  {
                    v294 = v293 + 416;
                  }

                  v399[1] = v294;
                  v398[0] = &v386[272];
                  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](v398);
                  v398[0] = &v386[144];
                  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](v398);
                  v398[0] = &v386[16];
                  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](v398);
                  ++v268;
                  v264 = v376;
                  v299 = v376[2].n128_u64[0];
                }

                while (v268 < v299);
                v341 = v299 > 1;
                v133 = v265;
                v263 = v357;
              }

              if (v263 == 4)
              {
                if (v341)
                {
                  goto LABEL_563;
                }

                memset(&v386[24], 170, 0x5A0uLL);
                memset(v386, 0, 24);
                v387 = &v386[24];
                if ((LigInputsForLigatureSubst(GlyphCount, v353, v383, v326, v327) & 1) == 0)
                {
                  goto LABEL_563;
                }

                memset(&v398[3], 170, 0x2D0uLL);
                memset(v398, 0, 24);
                v398[93] = &v398[3];
                v328 = v354[35];
                v329 = v354[34];
                if (v329 == v328)
                {
                  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>>(v398, v354[3], v354[3], v354[2], v354[2], 0xAAAAAAAAAAAAAAABLL * ((v354[3] - v354[2]) >> 3));
                }

                else
                {
                  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>>(v398, v328, v328, v329, v329, 0xAAAAAAAAAAAAAAABLL * (v328 - v329));
                  v330 = *&v386[8];
                  if (*v386 != *&v386[8])
                  {
                    v331 = *v386;
                    do
                    {
                      v332 = *v331;
                      v333 = v331[1];
                      v334 = (v333 - 2);
                      if (*v331 != v333 && v334 > v332)
                      {
                        v336 = v332 + 2;
                        do
                        {
                          v337 = *(v336 - 2);
                          *(v336 - 2) = *v334;
                          *v334-- = v337;
                          v15 = v336 >= v334;
                          v336 += 2;
                        }

                        while (!v15);
                      }

                      v331 += 6;
                    }

                    while (v331 != v330);
                  }
                }

                memset(&v397[1], 170, 0x2A8uLL);
                memset(&v397[4], 0, 32);
                v397[2] = 0;
                v397[16] = &v397[8];
                memset(&v397[17], 0, 24);
                v397[43] = &v397[20];
                memset(&v397[44], 0, 24);
                v397[0] = &unk_1EF25B478;
                v397[62] = &v397[47];
                memset(&v397[63], 0, 24);
                v397[74] = &v397[66];
                memset(&v397[75], 0, 24);
                v397[86] = &v397[78];
                if (v342)
                {
                  std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::emplace_back<TCFRef<__CFData const*>>(&v407[50], &v388);

                  v388 = atomic_load_explicit(&v397[2], memory_order_acquire);
                  std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::emplace_back<TCFRef<__CFData const*>>(&v407[84], &v388);

                  if (*v382)
                  {
                    AddPrevLigaturesFromLigInputs(*v382, *v386, *&v386[8]);
                  }

                  v232 = 46;
                }

                else
                {
                  v232 = 1;
                }

                v397[0] = v398;
                std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v397);
                if (!v342)
                {
                  goto LABEL_564;
                }
              }

              else
              {
                if (v263 != 1)
                {
                  goto LABEL_563;
                }

                v318 = v399[0];
                if (v399[0] != v399[1])
                {
                  memset(v398, 170, sizeof(v398));
                  v320 = *(v399[0] + 2);
                  v319 = *(v399[0] + 3);
                  memset(v398, 0, 24);
                  v398[93] = &v398[3];
                  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__init_with_size[abi:fn200100]<std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>>(v398, v319, v319, v320, v320, 0xAAAAAAAAAAAAAAABLL * (v319 - v320));
                  memset(&v397[3], 170, 0x2D0uLL);
                  memset(v397, 0, 24);
                  v397[93] = &v397[3];
                  if (v398[0] == v398[1])
                  {
                    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>>(v398, *(v318 + 35), *(v318 + 35), *(v318 + 34), *(v318 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(v318 + 35) - *(v318 + 34)) >> 3));
                  }

                  else
                  {
                    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<std::vector<unsigned short> const*>,std::__wrap_iter<std::vector<unsigned short> const*>>(v397, *(v318 + 34), *(v318 + 35), 0xAAAAAAAAAAAAAAABLL * ((*(v318 + 35) - *(v318 + 34)) >> 3));
                  }

                  Mutable = CFDataCreateMutable(allocator, 0);
                  CFDataSetLength(Mutable, length);
                  CFDataGetMutableBytePtr(Mutable);
                  v322 = v354[18];
                  if (v322 != v354[19])
                  {
                    *&v323 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v323 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v396 = v323;
                    *&v395[48] = v323;
                    *&v395[32] = v323;
                    *&v395[16] = v323;
                    *v395 = v323;
                    *v394 = v323;
                    std::vector<unsigned short>::vector[abi:fn200100](v394, v322);
                    v324 = *v376;
                    v325 = v376[1];
                    *&v395[40] = v376[2];
                    *&v395[24] = v325;
                    *&v395[8] = v324;
                    std::vector<unsigned short>::vector[abi:fn200100](&v395[56], v376[3].n128_u64);
                    v385 = 0xAAAAAAAAAAAAAAAALL;
                    memset(v377, 0, sizeof(v377));
                    if (v394[1] != v394[0])
                    {
                      std::vector<unsigned short>::__vallocate[abi:fn200100](v377, (v394[1] - v394[0]) >> 1);
                    }

                    v378 = *&v395[8];
                    v379 = *&v395[24];
                    v380 = *&v395[40];
                    memset(v381, 0, sizeof(v381));
                    if (v396 != *&v395[56])
                    {
                      std::vector<unsigned short>::__vallocate[abi:fn200100](v381, (v396 - *&v395[56]) >> 1);
                    }

                    v393 = 0;
                    operator new();
                  }

                  goto LABEL_600;
                }
              }

              v232 = 28;
            }
          }
        }

LABEL_564:
        v338 = v399[0];
        if (v399[0])
        {
          v339 = v399[1];
          v252 = v399[0];
          if (v399[1] != v399[0])
          {
            do
            {
              v339 -= 52;
            }

            while (v339 != v338);
            v252 = v399[0];
          }

          v399[1] = v338;
          v253 = &v400[8] > v252;
          v254 = &v401;
LABEL_569:
          if (v253 || v254 <= v252)
          {
            operator delete(v252);
          }
        }

LABEL_574:
        if (v232 == 28)
        {
LABEL_576:
          if (v132 == v370)
          {
            goto LABEL_586;
          }

          continue;
        }

LABEL_575:
        if (v232 != 20)
        {
LABEL_599:
          v10 = 0;
          goto LABEL_587;
        }

        goto LABEL_576;
      }

      v203 = v135;
      memset(&v400[8], 170, 0x5A0uLL);
      v399[0] = 0;
      v399[1] = 0;
      *v400 = 0;
      *&v400[1448] = &v400[8];
      v206 = LigInputsForLigatureSubst(GlyphCount, v203[2].n128_u64[1], v383, v204, v205);
      v207 = v399[0];
      if (v206)
      {
        *&v208 = 0xAAAAAAAAAAAAAAAALL;
        *(&v208 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v397[29] = v208;
        *&v397[31] = v208;
        *&v397[25] = v208;
        *&v397[27] = v208;
        *&v397[21] = v208;
        *&v397[23] = v208;
        *&v397[17] = v208;
        *&v397[19] = v208;
        *&v397[13] = v208;
        *&v397[15] = v208;
        *&v397[9] = v208;
        *&v397[11] = v208;
        *&v397[5] = v208;
        *&v397[7] = v208;
        *&v397[3] = v208;
        memset(v397, 0, 24);
        v397[33] = &v397[3];
        v209 = v399[1];
        v368 = v133;
        while (1)
        {
          if (v207 != v209)
          {
            v210 = 0;
            v211 = v207;
            while (v211 == v207)
            {
LABEL_349:
              v211 += 6;
              v210 += 48;
              if (v211 == v209)
              {
                *v386 = v209;
                v133 = v368;
                goto LABEL_378;
              }
            }

            v212 = *v211;
            v213 = v211[1] - *v211;
            v214 = v207 + 1;
            v215 = v210;
            while (1)
            {
              v216 = *(v214 - 1);
              if (v213 < *v214 - v216 && !memcmp(v212, v216, v213))
              {
                break;
              }

              v214 += 6;
              v215 -= 48;
              if (!v215)
              {
                goto LABEL_349;
              }
            }

            v207 = v211;
            v133 = v368;
          }

          *v386 = v207;
          if (v207 == v209)
          {
            break;
          }
        }

LABEL_378:
        v233 = v133;
        v234 = v397[0];
        v235 = v397[1];
        if (v397[0] == v397[1])
        {
LABEL_407:
          v133 = v233;
          if (*v382)
          {
            AddPrevLigaturesFromLigInputs(*v382, v399[0], v399[1]);
          }

          v232 = 28;
        }

        else
        {
          while (1)
          {
            memset(&v398[1], 170, 0x2A8uLL);
            memset(&v398[4], 0, 32);
            memset(&v398[17], 0, 24);
            v398[16] = &v398[8];
            v398[43] = &v398[20];
            v398[2] = 0;
            v398[0] = &unk_1EF25B478;
            memset(&v398[44], 0, 24);
            memset(&v398[63], 0, 24);
            v398[62] = &v398[47];
            v398[74] = &v398[66];
            memset(&v398[75], 0, 24);
            v398[86] = &v398[78];
            memset(&v386[24], 170, 0x2D0uLL);
            memset(v386, 0, 24);
            *&v386[744] = &v386[24];
            v237 = v236;
            if (v236)
            {
              v238 = v407[51];
              if (v407[51] >= v407[52])
              {
                v240 = (v407[51] - v407[50]) >> 3;
                if ((v240 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:fn200100]();
                }

                v241 = (v407[52] - v407[50]) >> 2;
                if (v241 <= v240 + 1)
                {
                  v241 = v240 + 1;
                }

                if ((v407[52] - v407[50]) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v242 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v242 = v241;
                }

                v392 = &v407[53];
                if (v242)
                {
                  v243 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>(&v407[53], v242);
                }

                else
                {
                  v243 = 0;
                }

                v388 = v243;
                v389 = &v243[8 * v240];
                v390 = v389;
                v391 = &v243[8 * v242];
                *v389 = atomic_exchange(&v413, 0);
                v390 += 8;
                std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__swap_out_circular_buffer(&v407[50], &v388);
                v239 = v407[51];
                std::__split_buffer<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul> &>::~__split_buffer(&v388);
              }

              else
              {
                *v238 = atomic_exchange(&v413, 0);
                v239 = v238 + 1;
              }

              v407[51] = v239;

              v413 = atomic_load_explicit(&v398[2], memory_order_acquire);
              v244 = v407[85];
              if (v407[85] >= v407[86])
              {
                v246 = (v407[85] - v407[84]) >> 3;
                if ((v246 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:fn200100]();
                }

                v247 = (v407[86] - v407[84]) >> 2;
                if (v247 <= v246 + 1)
                {
                  v247 = v246 + 1;
                }

                if ((v407[86] - v407[84]) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v248 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v248 = v247;
                }

                v392 = &v407[87];
                if (v248)
                {
                  v249 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>(&v407[87], v248);
                }

                else
                {
                  v249 = 0;
                }

                v388 = v249;
                v389 = &v249[8 * v246];
                v390 = v389;
                v391 = &v249[8 * v248];
                *v389 = atomic_exchange(&v413, 0);
                v390 += 8;
                std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__swap_out_circular_buffer(&v407[84], &v388);
                v245 = v407[85];
                std::__split_buffer<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul> &>::~__split_buffer(&v388);
              }

              else
              {
                *v244 = atomic_exchange(&v413, 0);
                v245 = v244 + 1;
              }

              v407[85] = v245;
            }

            v388 = v386;
            std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v388);
            v398[0] = &unk_1EF25B478;
            *v386 = &v398[75];
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v386);
            *v386 = &v398[63];
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v386);
            *v386 = &v398[44];
            std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v386);
            v398[0] = &unk_1EF25B4A0;
            std::vector<STXEntryOne,TInlineBufferAllocator<STXEntryOne,30ul>>::__destroy_vector::operator()[abi:fn200100](&v398[17]);
            *v386 = &v398[5];
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v386);

            if ((v237 & 1) == 0)
            {
              break;
            }

            v234 += 8;
            if (v234 == v235)
            {
              goto LABEL_407;
            }
          }

          v232 = 1;
          v133 = v233;
        }

        if (v397[0])
        {
          v397[1] = v397[0];
          if (&v397[3] > v397[0] || &v397[33] <= v397[0])
          {
            operator delete(v397[0]);
          }
        }

        v207 = v399[0];
        if (!v399[0])
        {
          goto LABEL_574;
        }
      }

      else
      {
        v232 = 1;
        if (!v399[0])
        {
          goto LABEL_574;
        }
      }

      v251 = v399[1];
      v252 = v207;
      if (v399[1] != v207)
      {
        do
        {
          v251 -= 6;
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v251);
        }

        while (v251 != v207);
        v252 = v399[0];
      }

      v399[1] = v207;
      v253 = &v400[8] > v252;
      v254 = &v400[1448];
      goto LABEL_569;
    }

    break;
  }

  switch(v193)
  {
    case 1u:
      goto LABEL_339;
    case 2u:
      memset(&v400[8], 170, 0x690uLL);
      v399[0] = 0;
      v399[1] = 0;
      *v400 = 0;
      *&v400[1688] = &v400[8];
      v219 = v376[2].n128_u64[1];
      LOBYTE(v413) = v376[1].n128_u16[2] != 0;
      v397[0] = v383;
      if (*v219 == 256)
      {
        v388 = v219;
        v220 = v219 + 3;
        if (v219 + 3 <= v383)
        {
          v221 = bswap32(v219[2]) >> 16;
          v222 = &v220[v221];
          v223 = v219 + 4 <= v383 ? (v383 - v220) >> 1 : 0;
          v224 = v222 <= v383 && v222 >= v220;
          if (v224 || v223 == v221)
          {
            OTL::LookupWithCoverage::GetCoverage(v219, v383, v386, v217, v218);
            operator new();
          }
        }
      }

      v232 = 1;
      goto LABEL_575;
    case 3u:
LABEL_339:
      *v386 = 0xAAAAAAAAAAAAAAAALL;
      *&v386[8] = 0;
      *&v386[16] = 0;
  }

LABEL_587:
  v399[0] = &v402;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v399);
  v399[0] = &v407[84];
  std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__destroy_vector::operator()[abi:fn200100](v399);
  v399[0] = &v407[50];
  std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__destroy_vector::operator()[abi:fn200100](v399);
  v399[0] = &v407[1];
  std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](v399);
  v7 = v359;
LABEL_588:
  v343 = v408;
  if (v408)
  {
    v344 = v409;
    v345 = v408;
    if (v409 != v408)
    {
      do
      {
        v346 = v344[-2].n128_u64[1];
        if (v346)
        {
          v344[-1].n128_u64[0] = v346;
          operator delete(v346);
        }

        v344 = (v344 - 72);
      }

      while (v344 != v343);
      v345 = v408;
    }

    v409 = v343;
    if (v7 > v345 || &v412 <= v345)
    {
      operator delete(v345);
    }
  }

  return v10;
}
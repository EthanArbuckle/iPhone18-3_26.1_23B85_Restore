CFArrayRef _CTFontGetPaletteColors(const void *a1)
{
  v1 = _CTFontEnsureFontRef(a1);
  if (v1)
  {
    v2 = *(v1 + 5);

    return TFont::GetPaletteColors(v2);
  }

  else
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v4, 0, 0, v5);
  }
}

void TEmojiImageRun::~TEmojiImageRun(TEmojiImageRun *this)
{
  TRun::~TRun(this);

  JUMPOUT(0x1865F22D0);
}

void std::vector<CGSize,TInlineBufferAllocator<CGSize,30ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11 = a1 + 24;
    if (v10)
    {
      v12 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CGSize,30ul>>(a1 + 24, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = (v12 + 16 * v8);
    v14 = v12 + 16 * v10;
    bzero(v13, 16 * a2);
    v15 = &v13[16 * a2];
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    if (v18)
    {
      if (v11 > v18 || (v20 = (a1 + 504), a1 + 504 <= v18))
      {

        operator delete(v18);
      }

      else if (v19 == *v20)
      {
        *v20 = v18;
      }
    }
  }
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CGSize,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 480);
  result = *(a1 + 480);
  v4 = result + 16 * a2;
  if (v4 > v2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

void CopyEmojiImage(void *a1, const void *a2, _WORD *a3, double a4, double a5, const __CFData *a6, CGSize *a7, uint64_t a8)
{
  v36 = 0;
  if (a2 != 1885627936)
  {
    v13 = a2;
    if (a2 == 1701669475)
    {
      if ((atomic_load_explicit(&qword_1ED567900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567900))
      {
        qword_1ED5678F8 = compression_decode_scratch_buffer_size(COMPRESSION_LZFSE) + 186336;
        __cxa_guard_release(&qword_1ED567900);
      }

      if (qword_1ED567908 != -1)
      {
        dispatch_once(&qword_1ED567908, &__block_literal_global);
      }

      v14 = 0;
      v15 = atomic_exchange(&qword_1ED5678E8, 0);
      LODWORD(v33) = 0;
      if (a6 >= 0xC)
      {
        v14 = 0;
        if (*a3 == 829058405 && a3[2] == 256)
        {
          v16 = a3[5];
          LOWORD(v33) = a3[4];
          WORD1(v33) = v16;
          v14 = 4 * v16 * v33;
        }
      }

      if (v15 && compression_decode_scratch_buffer_size(COMPRESSION_LZFSE) + (v33 >> 16) + (7 * (v33 >> 16) + 18) * v33 + 4096 > qword_1ED5678F8)
      {
        atomic_store(v15, &qword_1ED5678E8);
        v15 = 0;
      }

      v17 = malloc_type_malloc(v14, 0x100004077774924uLL);
      v18 = emoji_compression_decode(a3, a6, v17, v14, 1, v15, &v33);
      if (v15)
      {
        atomic_store(v15, &qword_1ED5678E8);
      }

      v19 = v33;
      if (!v33 || (v20 = WORD1(v33), !WORD1(v33)))
      {
        *a8 = *MEMORY[0x1E695F060];
        *a1 = 0;
        goto LABEL_26;
      }

      v21 = CGDataProviderCreateWithData(0, v17, v18, CopyEmojiImage(unsigned int,void const*,unsigned long,double,double,__CFData const*,CGSize *)::$_0::__invoke);

      explicit = atomic_load_explicit(&v36, memory_order_acquire);
      Width = CGImageGetWidth(explicit);
      Height = CGImageGetHeight(explicit);
      *a8 = Width / a4;
      *(a8 + 8) = Height / a4;
      v25 = v21;
    }

    else
    {
      v26 = CFRetain(a7);
      v27 = CGDataProviderCreateWithData(v26, a3, a6, CopyEmojiImage(unsigned int,void const*,unsigned long,double,double,__CFData const*,CGSize *)::$_1::__invoke);
      CGImageSource::CGImageSource(&v33, v13);
      if (v27)
      {
      }

      if (atomic_load_explicit(&v33, memory_order_acquire))
      {
        v28 = atomic_load_explicit(&v33, memory_order_acquire);
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v28, 0, options);
      }

      else
      {
        ImageAtIndex = 0;
      }

      v35 = ImageAtIndex;

      v30 = atomic_load_explicit(&v36, memory_order_acquire);
      v31 = CGImageGetWidth(v30);
      v32 = CGImageGetHeight(v30);
      *a8 = v31 / a4;
      *(a8 + 8) = v32 / a4;
      v25 = v27;
    }
  }

  *a1 = atomic_exchange(&v36, 0);
LABEL_26:
}

void CreateHorizontallyFlippedCopyOfImage(CGImage *a1, CGImage *a2)
{
  Width = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  BitsPerComponent = CGImageGetBitsPerComponent(a2);
  BytesPerRow = CGImageGetBytesPerRow(a2);
  ColorSpace = CGImageGetColorSpace(a2);
  v9 = CGBitmapContextCreate(0, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, 2u);
  CGContextClear();
  v10.a = -1.0;
  v10.b = 0.0;
  v10.c = 0.0;
  v10.d = 1.0;
  v10.tx = Width;
  v10.ty = 0.0;
  CGContextConcatCTM(v9, &v10);
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = Width;
  v11.size.height = Height;
  CGContextDrawImage(v9, v11, a2);
  *a1 = CGBitmapContextCreateImage(v9);
}

uint64_t GetGlyphAfterHiding(TFont const*,unsigned short)::$_0::__invoke(TFont *a1)
{
  _MergedGlobals_11 = TFont::GetGlyphWithName(a1, @"u1F1F9_u1F1FC");
  result = TFont::GetGlyphWithName(a1, @"hiddenglyph");
  word_1ED5678CA = result;
  return result;
}

CGColorSpaceRef ___ZL14CopyEmojiImagejPKvmddPK8__CFDataP6CGSize_block_invoke()
{
  atomic_store(malloc_type_malloc(qword_1ED5678F8, 0x6DB844A0uLL), &qword_1ED5678E8);
  result = CGColorSpaceCreateDeviceRGB();
  qword_1ED5678F0 = result;
  return result;
}

void CGImageSource::CGImageSource(CGImageSource *this, int a2)
{
  *this = 0;
  if (a2 == 1785751328)
  {
    if (qword_1ED567920 == -1)
    {
      v4 = &qword_1ED567928;
      goto LABEL_10;
    }

    v5 = &qword_1ED567920;
    v6 = GetImageSourceOptionsForGraphicType::$_1::__invoke;
    goto LABEL_15;
  }

  if (a2 == 1953064550)
  {
    if (qword_1ED567930 == -1)
    {
      v4 = &qword_1ED567938;
      goto LABEL_10;
    }

    v5 = &qword_1ED567930;
    v6 = GetImageSourceOptionsForGraphicType::$_2::__invoke;
LABEL_15:
    dispatch_once_f(v5, 0, v6);
    v4 = v5 + 1;
    goto LABEL_10;
  }

  v3 = 0;
  if (a2 == 1886283552)
  {
    if (qword_1ED567910 == -1)
    {
      v4 = &qword_1ED567918;
LABEL_10:
      v3 = *v4;
      goto LABEL_11;
    }

    v5 = &qword_1ED567910;
    v6 = GetImageSourceOptionsForGraphicType::$_0::__invoke;
    goto LABEL_15;
  }

LABEL_11:
  *(this + 1) = v3;
}

unint64_t GetImageSourceOptionsForGraphicType(unsigned int)::$_0::__invoke()
{
  result = CreateImageSourceOptionsForUTType(*MEMORY[0x1E6982F28]);
  qword_1ED567918 = result;
  return result;
}

unint64_t CreateImageSourceOptionsForUTType(UTType *a1)
{
  values[3] = *MEMORY[0x1E69E9840];
  memset(__p, 170, sizeof(__p));
  v2 = *MEMORY[0x1E696E0A8];
  values[0] = *MEMORY[0x1E696E118];
  values[1] = v2;
  values[2] = *MEMORY[0x1E696E0E8];
  std::vector<__CFString const*>::vector[abi:fn200100](__p, values, 3uLL);
  memset(values, 170, 24);
  v3 = [(UTType *)a1 identifier];
  v4 = *MEMORY[0x1E695E4D0];
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v4;
  std::vector<void const*>::vector[abi:fn200100](values, v8, 3uLL);
  v8[0] = CFDictionaryCreate(*MEMORY[0x1E695E480], __p[0], values[0], (__p[1] - __p[0]) >> 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = atomic_exchange(v8, 0);

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v5;
}

void *std::vector<__CFString const*>::vector[abi:fn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<__CFString const*>::__vallocate[abi:fn200100](result, a3);
  }

  return result;
}

void std::vector<__CFString const*>::__vallocate[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<__CFString const*>::allocate_at_least[abi:fn200100](a1, a2);
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

void std::allocator<__CFString const*>::allocate_at_least[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

void *std::vector<void const*>::vector[abi:fn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<void const*>::__vallocate[abi:fn200100](result, a3);
  }

  return result;
}

void std::vector<void const*>::__vallocate[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<void const*>::allocate_at_least[abi:fn200100](a1, a2);
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

void std::allocator<void const*>::allocate_at_least[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

unint64_t GetImageSourceOptionsForGraphicType(unsigned int)::$_1::__invoke()
{
  result = CreateImageSourceOptionsForUTType(*MEMORY[0x1E6982E58]);
  qword_1ED567928 = result;
  return result;
}

unint64_t GetImageSourceOptionsForGraphicType(unsigned int)::$_2::__invoke()
{
  result = CreateImageSourceOptionsForUTType(*MEMORY[0x1E6983008]);
  qword_1ED567938 = result;
  return result;
}

void ___ZL22GetMLUpscaledImageDataP7CGImagemmdU13block_pointerFvS0_dE_block_invoke(void *a1, void *a2)
{
  if (a2 && [a2 image])
  {
    v4 = [a2 image];
    Mutable = CFDataCreateMutable(0, 0);
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    v6 = CGImageDestinationCreateWithData(explicit, [*MEMORY[0x1E6982F28] identifier], 1uLL, 0);
    CGImageDestinationAddImage(v6, v4, 0);
    CGImageDestinationFinalize(v6);
    v7 = atomic_exchange(&Mutable, 0);

    Mutable = 0;
    if (qword_1ED567910 != -1)
    {
      dispatch_once_f(&qword_1ED567910, 0, GetImageSourceOptionsForGraphicType::$_0::__invoke);
    }

    options = qword_1ED567918;
    if (v7)
    {
    }

    if (atomic_load_explicit(&Mutable, memory_order_acquire))
    {
      v8 = atomic_load_explicit(&Mutable, memory_order_acquire);
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, options);
    }

    else
    {
      ImageAtIndex = 0;
    }

    v17 = ImageAtIndex;

    v10 = a1[7];
    v11 = atomic_load_explicit((*(a1[5] + 8) + 48), memory_order_acquire);
    Width = CGImageGetWidth(v10);
    CGImageGetHeight(v10);
    v13 = CGImageGetWidth(v11);
    CGImageGetHeight(v11);
    *(*(a1[6] + 8) + 24) = v13 / Width;
    v14 = a1[4];
    if (v14)
    {
      (*(v14 + 16))(v14, atomic_load_explicit((*(a1[5] + 8) + 48), memory_order_acquire), *(*(a1[6] + 8) + 24));
    }
  }
}

uint64_t ___ZL22GetMLUpscaledImageDataP7CGImagemmdU13block_pointerFvS0_dE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) error];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  if (v6)
  {
    v7 = *(a1 + 40);
  }

  else
  {
    [objc_msgSend(*(a1 + 32) "results")];
    v7 = *(a1 + 48);
  }

  v8 = *(v7 + 16);

  return v8();
}

void ___ZL22GetMLUpscaledImageDataP7CGImagemmdU13block_pointerFvS0_dE_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) error];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  if (v6)
  {
    v7 = *(a1 + 48);
  }

  else
  {
    v6 = [objc_msgSend(*(a1 + 32) "results")];
    v7 = *(a1 + 56);
  }

  (*(v7 + 16))(v7, v6);
  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

Class ___ZL18getMADServiceClassv_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore(a1);
  result = objc_getClass("MADService");
  *(*(*(a1 + 32) + 8) + 40) = result;
  qword_1ED567940 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void MediaAnalysisServicesLibraryCore(char **a1)
{
  if (!MediaAnalysisServicesLibraryCore(char **)::frameworkLibrary)
  {
    MediaAnalysisServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }
}

uint64_t ___ZL32MediaAnalysisServicesLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL27getMADMLScalingRequestClassv_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore(a1);
  result = objc_getClass("MADMLScalingRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  qword_1ED567948 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t ___ZZN12_GLOBAL__N_112TCGImageDataC1EPK5TFonttRK12TsbixContextd7CGPointENKUlP7CGImagedE_cvU13block_pointerFvS9_dEEv_block_invoke(uint64_t result, uint64_t a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  explicit = atomic_load_explicit((result + 32), memory_order_acquire);
  if (explicit)
  {
    v3 = result;
    v4[0] = @"image";
    v4[1] = @"scaleFactor";
    v5[0] = a2;
    v5[1] = [MEMORY[0x1E696AD98] numberWithDouble:?];
    return [explicit setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v5, v4, 2), *(v3 + 40)}];
  }

  return result;
}

id __copy_helper_block_8_32c87_ZTSKZN12_GLOBAL__N_112TCGImageDataC1EPK5TFonttRK12TsbixContextd7CGPointEUlP7CGImagedE_(uint64_t a1, uint64_t a2)
{
  result = atomic_load_explicit((a2 + 32), memory_order_acquire);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void DrawGlyphsAtPositions(TFont const*,unsigned short const*,CGPoint const*,unsigned long,CGContext *,anonymous namespace::DrawGlyphsConfiguration const&)::$_0::operator()(uint64_t a1, float64x2_t *a2)
{
  v96[1] = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v95[14] = v3;
  v95[13] = v3;
  v95[12] = v3;
  v95[11] = v3;
  v95[10] = v3;
  v95[9] = v3;
  v95[8] = v3;
  v95[7] = v3;
  v95[6] = v3;
  v95[5] = v3;
  v95[4] = v3;
  v95[3] = v3;
  v95[2] = v3;
  v95[1] = v3;
  v95[0] = v3;
  v4 = *(a1 + 24);
  __p = 0;
  v93 = 0;
  v94 = 0;
  v96[0] = v95;
  if (v4)
  {
    if (v4 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v6 = 8 * v4;
    if (v4 > 0x1E)
    {
      operator new();
    }

    v96[0] = v95 + v6;
    v7 = v4;
    v8 = v95 + 8 * v4;
    __p = v95;
    v94 = v8;
    bzero(v95, v6);
    v93 = v8;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v89 = v9;
    v90 = v9;
    v87 = v9;
    v88 = v9;
    v85 = v9;
    v86 = v9;
    v83 = v9;
    v84 = v9;
    v81 = v9;
    v82 = v9;
    v79 = v9;
    v80 = v9;
    v77 = v9;
    v78 = v9;
    v76 = v9;
    v75 = v9;
    v74 = v9;
    v73 = v9;
    v72 = v9;
    v71 = v9;
    v70 = v9;
    v69 = v9;
    v68 = v9;
    v67 = v9;
    v66 = v9;
    v65 = v9;
    v63 = v9;
    v64 = v9;
    v61 = v9;
    v62 = v9;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v91 = &v61;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](&v58, v7);
    v10 = v59;
    bzero(v59, 16 * v7);
    v59 = &v10[16 * v7];
    if (*(a1 + 24))
    {
      v11 = 0;
      do
      {
        v12 = *(*(a1 + 32) + 2 * v11);
        if (OTSVGTableGetDocumentIndexForGlyph() != -1 && OTSVGDocumentCreate())
        {
          v13 = OTSVGGlyphRecordingCreate();
          if (v13)
          {
            if (v11 >= (v93 - __p) >> 3)
            {
              goto LABEL_68;
            }

            *(__p + v11) = v13;
            if (v11 >= (v59 - v58) >> 4)
            {
              goto LABEL_68;
            }

            *&v58[16 * v11] = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_n_f64(a2[1], *(*(a1 + 48) + 16 * v11 + 8)), *a2, *(*(a1 + 48) + 16 * v11)));
          }

          OTSVGDocumentRelease();
        }

        if (v11 >= (v93 - __p) >> 3)
        {
          goto LABEL_68;
        }

        if (!*(__p + v11))
        {
          v14 = *(a1 + 8);
          v16 = *(v14 + 8);
          v15 = *(v14 + 16);
          if (v16 >= v15)
          {
            v57 = 0xAAAAAAAAAAAAAAAALL;
            *&v18 = 0xAAAAAAAAAAAAAAAALL;
            *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v55 = v18;
            v56 = v18;
            v19 = (v16 - *v14) >> 1;
            if (v19 <= -2)
            {
              goto LABEL_69;
            }

            v20 = v15 - *v14;
            if (v20 <= v19 + 1)
            {
              v21 = v19 + 1;
            }

            else
            {
              v21 = v20;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v22 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v21;
            }

            std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(&v55, v22, v19, v14 + 24);
            v23 = v56;
            *v56 = v12;
            *&v56 = v23 + 2;
            v24 = *(v14 + 8) - *v14;
            v25 = *(&v55 + 1) - v24;
            memcpy((*(&v55 + 1) - v24), *v14, v24);
            v26 = *v14;
            *v14 = v25;
            v17 = v56;
            *&v55 = v26;
            *(&v55 + 1) = v26;
            *(v14 + 8) = v56;
            *&v56 = v26;
            v27 = *(v14 + 16);
            *(v14 + 16) = *(&v56 + 1);
            *(&v56 + 1) = v27;
            std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(&v55);
          }

          else
          {
            *v16 = v12;
            v17 = v16 + 1;
          }

          *(v14 + 8) = v17;
          v28 = *(a1 + 16);
          v29 = *(a1 + 48);
          v31 = *(v28 + 8);
          v30 = *(v28 + 16);
          if (v31 >= v30)
          {
            v33 = (v31 - *v28) >> 4;
            v34 = v33 + 1;
            if ((v33 + 1) >> 60)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v35 = v30 - *v28;
            if (v35 >> 3 > v34)
            {
              v34 = v35 >> 3;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF0)
            {
              v36 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              v37 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CGSize,30ul>>(v28 + 24, v36);
            }

            else
            {
              v37 = 0;
            }

            v38 = (v37 + 16 * v33);
            v39 = v37 + 16 * v36;
            *v38 = *(v29 + 16 * v11);
            v32 = v38 + 1;
            v40 = *(v28 + 8) - *v28;
            v41 = v38 - v40;
            memcpy(v38 - v40, *v28, v40);
            v42 = *v28;
            *v28 = v41;
            *(v28 + 8) = v32;
            v43 = *(v28 + 16);
            *(v28 + 16) = v39;
            if (v42)
            {
              if (v28 + 24 > v42 || (v44 = (v28 + 504), v28 + 504 <= v42))
              {
                operator delete(v42);
              }

              else if (v43 == *v44)
              {
                *v44 = v42;
              }
            }
          }

          else
          {
            *v31 = *(v29 + 16 * v11);
            v32 = v31 + 1;
          }

          *(v28 + 8) = v32;
        }

        ++v11;
      }

      while (v11 < *(a1 + 24));
    }
  }

  else
  {
    v75 = v3;
    v74 = v3;
    v73 = v3;
    v72 = v3;
    v71 = v3;
    v70 = v3;
    v69 = v3;
    v68 = v3;
    v67 = v3;
    v66 = v3;
    v65 = v3;
    v89 = v3;
    v90 = v3;
    v87 = v3;
    v88 = v3;
    v85 = v3;
    v86 = v3;
    v83 = v3;
    v84 = v3;
    v81 = v3;
    v82 = v3;
    v79 = v3;
    v80 = v3;
    v77 = v3;
    v78 = v3;
    v76 = v3;
    v63 = v3;
    v64 = v3;
    v61 = v3;
    v62 = v3;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v91 = &v61;
  }

  if ((*(a1 + 56) & 0x80000000) != 0)
  {
    if (__p != v93)
    {
      v45 = v93 - 8;
      if (v93 - 8 > __p)
      {
        v46 = __p + 8;
        do
        {
          v47 = *(v46 - 1);
          *(v46 - 1) = *v45;
          *v45 = v47;
          v45 -= 8;
          v48 = v46 >= v45;
          v46 += 8;
        }

        while (!v48);
      }
    }

    v49 = v58;
    v50 = v59 - 16;
    if (v58 != v59 && v50 > v58)
    {
      do
      {
        v52 = *v49;
        v53 = *(v49 + 1);
        *v49 = *v50;
        v49 += 16;
        *v50 = v52;
        *(v50 + 1) = v53;
        v50 -= 16;
      }

      while (v49 < v50);
    }
  }

  OTSVGGlyphRecordingPlaybackRecordingsAtPositions();
  if (*(a1 + 24))
  {
    v54 = 0;
    while (v54 < (v93 - __p) >> 3)
    {
      OTSVGGlyphRecordingRelease();
      if (++v54 >= *(a1 + 24))
      {
        goto LABEL_63;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

LABEL_63:
  *&v55 = &v58;
  std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v55);
  if (__p)
  {
    v93 = __p;
    if (v95 > __p || v96 <= __p)
    {
      operator delete(__p);
    }
  }
}

void DrawGlyphsAtPositions(TFont const*,unsigned short const*,CGPoint const*,unsigned long,CGContext *,anonymous namespace::DrawGlyphsConfiguration const&)::$_1::operator()(uint64_t **a1, uint64_t a2, float64x2_t *a3)
{
  v3 = *(a1 + 6);
  if (v3 >= 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[2] - 1;
  }

  if (v3 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = a1[2];
  }

  for (; v4 != v5; v4 += *(a1 + 6))
  {
    v8 = &a1[4][2 * v4];
    v10 = *v8;
    v9 = v8[1];
    v11 = *(a1[5] + v4);
    v17[0] = -1;
    v17[1] = -1;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = -1;
    *(&v12 + 1) = -1;
    v19 = v12;
    v20 = v12;
    v21 = -1;
    if (atomic_load_explicit(&v18, memory_order_acquire))
    {
      if ((a1[10] & 1) == 0)
      {
        v13 = **a1;
        if (v4 >= ((*a1)[1] - v13) >> 5)
        {
          __break(1u);
          return;
        }

        v14 = (v13 + 32 * v4);
        v15 = vaddq_f64(a3[2], vmlaq_n_f64(vmulq_n_f64(a3[1], v9 + *(a1 + 16) + v14[1] * *(a1 + 14) + *(a1 + 12) * *v14), *a3, v10 + *(a1 + 15) + v14[1] * *(a1 + 13) + *(a1 + 11) * *v14));
        y = v15.y;
      }

      if ((a1[18] & 1) == 0)
      {
        v22.x = v10;
        v22.y = v9;
        DrawInvisibleGlyph(a1[17], v11, v22, (a1 + 19), (a1 + 25));
      }
    }

    else if ((a1[18] & 1) == 0)
    {
      CGContextSetCTM();
      v23.x = v10 + *(a1 + 8);
      v23.y = v9 + *(a1 + 9);
      DrawVisibleGlyph(a1[17], v11, v23, (a1 + 19), (a1 + 25));
      CGContextSetCTM();
    }
  }
}

id __copy_helper_block_8_64c27_ZTS6TCFRefIPK10__CFStringE88c31_ZTS6TCFRefIPK14__CFDictionaryE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = atomic_load_explicit((a2 + 64), memory_order_acquire);
  result = atomic_load_explicit((a2 + 88), memory_order_acquire);
  *(a1 + 88) = result;
  return result;
}

void __destroy_helper_block_8_64c27_ZTS6TCFRefIPK10__CFStringE88c31_ZTS6TCFRefIPK14__CFDictionaryE(uint64_t a1)
{
  v2 = *(a1 + 64);
}

__CFString *TCFBase<TFont>::ClassDebug(uint64_t a1)
{
  result = TFont::DebugDescription(*(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s: %p>{%@}", "CTFont", a1, result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

BOOL std::__function::__func<CTFontTransformGlyphsWithLanguage::$_0,std::allocator<CTFontTransformGlyphsWithLanguage::$_0>,BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(v4 + 16))(*(a1 + 8), *a2, a2[1], *a3, *a4);
  }

  return v4 != 0;
}

__n128 std::__function::__func<CTFontShapeGlyphs::$_0,std::allocator<CTFontShapeGlyphs::$_0>,BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257960;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<CTFontShapeGlyphs::$_0,std::allocator<CTFontShapeGlyphs::$_0>,BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator()(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  (*(*(a1 + 8) + 16))();
  **(a1 + 16) = *v4;
  return 1;
}

__n128 std::__function::__func<CTFontCopyTallestTextStyleLanguageForString::$_0,std::allocator<CTFontCopyTallestTextStyleLanguageForString::$_0>,void ()(CFRange,unsigned int,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2579A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<CTFontCopyTallestTextStyleLanguageForString::$_0,std::allocator<CTFontCopyTallestTextStyleLanguageForString::$_0>,void ()(CFRange,unsigned int,BOOL *)>::operator()(uint64_t result, uint64_t a2, UTF32Char *a3)
{
  v3 = result;
  v4 = *a3;
  v5 = *(result + 8);
  v6 = *(v5 + 8);
  v7 = (v6 & 4) >> 2;
  if (*(v5 + 12) > v4 || *(v5 + 16) <= v4)
  {
    goto LABEL_17;
  }

  if (WORD1(v4))
  {
    v8 = 0;
  }

  else
  {
    v8 = (v6 & 2) == 0;
  }

  if (!v8)
  {
    result = CFCharacterSetIsLongCharacterMember(*v5, *a3);
    if (!result)
    {
      return result;
    }

    goto LABEL_18;
  }

  v9 = *(v5 + 24);
  if (!v9)
  {
    if (((((v6 & 1) == 0) ^ ((v6 & 4) >> 2)) & 1) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

  if ((v6 & 1) == 0)
  {
    if (((v6 & 4) == 0) == (((*(v9 + (v4 >> 3)) >> (v4 & 7)) & 1) == 0))
    {
      return result;
    }

    goto LABEL_18;
  }

  v10 = *(v9 + (v4 >> 8));
  if (!*(v9 + (v4 >> 8)))
  {
    if ((v6 & 4) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

  LOBYTE(v7) = (v6 & 4) == 0;
  if (v10 == 255)
  {
LABEL_17:
    if ((v7 & 1) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (((v6 & 4) == 0) == (((*(v9 + 32 * v10 + (v4 >> 3) + 224) >> (v4 & 7)) & 1) == 0))
  {
    return result;
  }

LABEL_18:
  result = uscript_getScript();
  if (result)
  {
    v11 = *(v3 + 16);
    v12 = v11[1];
    if (v12)
    {
      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = result;
        if (v12 <= result)
        {
          v14 = result % v12;
        }
      }

      else
      {
        v14 = (v12 - 1) & result;
      }

      v15 = *(*v11 + 8 * v14);
      if (v15)
      {
        for (i = *v15; i; i = *i)
        {
          v17 = i[1];
          if (v17 == result)
          {
            if (*(i + 4) == result)
            {
              return result;
            }
          }

          else
          {
            if (v13.u32[0] > 1uLL)
            {
              if (v17 >= v12)
              {
                v17 %= v12;
              }
            }

            else
            {
              v17 &= v12 - 1;
            }

            if (v17 != v14)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return result;
}

uint64_t std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](uint64_t a1)
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

void std::__function::__func<$_1,std::allocator<$_1>,objc_object * ()(objc_object *)>::~__func()
{
  JUMPOUT(0x1865F22D0);
}

{
  JUMPOUT(0x1865F22D0);
}

void std::__function::__func<$_1,std::allocator<$_1>,objc_object * ()(objc_object *)>::__clone()
{
  operator new();
}

{
  operator new();
}

void std::__function::__func<$_1,std::allocator<$_1>,objc_object * ()(objc_object *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1EF2579F0;
}

{
  *a2 = &unk_1EF259CA0;
}

uint64_t std::__function::__func<$_1,std::allocator<$_1>,objc_object * ()(objc_object *)>::operator()(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t TFont::GetSystemUIFontOptions(TFont *this)
{
  if (qword_1ED567970 != -1)
  {
    dispatch_once_f(&qword_1ED567970, 0, TFont::GetSystemUIFontOptions(void)::$_0::__invoke);
  }

  return qword_1ED567968;
}

void TFont::TFont(TFont *this, const __CTFontDescriptor *a2, double a3, const CGAffineTransform *a4, int a5, const __CTFontDescriptor *a6)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 1) = 0;
  v11 = (this + 16);
  TFont::InitDescriptor(this + 2, a2);
  *(this + 3) = TFont::InitSize(a6, a3, v12);
  *(this + 4) = 0;
  *(this + 10) = 0x80000000;
  TFont::InitMatrix((this + 48), a4, a6);
  *(this + 24) = 0;
  *(this + 14) = 0;
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 16);
  *(this + 6) = *MEMORY[0x1E695EFF8];
  *(this + 7) = v13;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 8) = v14;
  *(this + 144) = 0;
  *(this + 25) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = this + 192;
  *(this + 52) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 62) = 1065353216;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 1065353216;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 400) = 0;
  *(this + 51) = TFont::InitBaseFont(v11);
  *(this + 52) = 0;
  *(this + 106) = 0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  *(this + 114) = 0;
  *(this + 124) = 1065353216;
  *(this + 63) = 0;
  *(this + 128) = 0;
  *(this + 65) = 0;
  *(this + 528) = 0;
  *(this + 68) = 0;
  *(this + 69) = 0;
  *(this + 67) = 0;
  if ((a5 & 8) == 0)
  {
    explicit = atomic_load_explicit(v11, memory_order_acquire);
    if (a6 && (v16 = (*(a6 + 5) + 8), atomic_load_explicit(v16, memory_order_acquire), (v17 = atomic_load_explicit(v16, memory_order_acquire)) != 0))
    {
      Value = CFDictionaryGetValue(v17, @"CTFontOriginalFeatureSettingsAttribute");
    }

    else
    {
      Value = 0;
    }

    TFont::SetExtras(this, explicit, Value);
  }

  TFont::SetFlags(this, a5, a6);
  TFont::SetOpticalSize(this, a6);
  TFont::AddFontSpecificFeatureSettings(this);
}

void TFont::TFont(TFont *this, CGFont *a2, double a3, const CGAffineTransform *a4, const __CTFontDescriptor *a5)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v10 = (this + 16);
  *(this + 1) = 0;
  v16 = 0;
  if (a5)
  {
  }

  TDescriptorSource::TDescriptorSource(&v14);
  TDescriptorSource::CopyDescriptor(&v14, a2, atomic_load_explicit(&v16, memory_order_acquire), &v15);

  if (!atomic_load_explicit(v10, memory_order_acquire))
  {
    TDescriptorSource::TDescriptorSource(&v14);
    TDescriptorSource::CreateDefaultDescriptor(0, &v15);
  }

  *(this + 3) = TFont::InitSize(a5, a3, v11);
  *(this + 4) = 0;
  *(this + 10) = 0x80000000;
  TFont::InitMatrix((this + 48), a4, a5);
  *(this + 14) = 0;
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 16);
  *(this + 6) = *MEMORY[0x1E695EFF8];
  *(this + 7) = v12;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 8) = v13;
  *(this + 144) = 0;
  *(this + 25) = 0;
  *(this + 24) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = this + 192;
  *(this + 52) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 62) = 1065353216;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 1065353216;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 400) = 0;
  *(this + 51) = TFont::InitBaseFont(v10);
  *(this + 52) = 0;
  *(this + 106) = 0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  *(this + 114) = 0;
  *(this + 124) = 1065353216;
  *(this + 63) = 0;
  *(this + 128) = 0;
  *(this + 65) = 0;
  *(this + 528) = 0;
  *(this + 67) = 0;
  *(this + 69) = 0;
  *(this + 68) = 0;
  TFont::SetExtras(this, a5, 0);
  TFont::SetFlags(this, 0, a5);
  TFont::SetOpticalSize(this, a5);
  TFont::AddFontSpecificFeatureSettings(this);
}

void TFont::DefaultDescriptor(void *a1, TFont *this, int *a3)
{
  *a3 = TFont::IsSystemUIFontAndForShaping(this, &v7);
  if (*(this + 51))
  {
    *a1 = 0;
  }

  else
  {
    TDescriptorSource::TDescriptorSource(&v6);
    TDescriptorSource::CreateDefaultDescriptor(*a3, a1);
  }
}

void TFont::UserFallbacksForLanguage(atomic_ullong *a1, uint64_t a2, __CFString *a3, int *a4)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  Value = atomic_load_explicit((a2 + 168), memory_order_acquire);
  v9 = Value;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"NSCTFontCascadeListAttribute");
  }

  *a1 = Value;

  v22 = 0xAAAAAAAAAAAAAAAALL;
  if (a3)
  {
    LanguageIdentifierByNormalizing(a3, 0, &v22);
  }

  else
  {
    v11 = atomic_load_explicit((a2 + 168), memory_order_acquire);
    v12 = v11;
    if (v11)
    {
      v11 = CFDictionaryGetValue(v11, @"CTFontDescriptorLanguageAttribute");
    }

    LanguageIdentifierByNormalizing(v11, 0, &v22);
  }

  if (!atomic_load_explicit(a1, memory_order_acquire) && TDescriptorSource::CanLanguageAffectCascadeList(atomic_load_explicit(&v22, memory_order_acquire), v10))
  {
    values = atomic_load_explicit(&v22, memory_order_acquire);
    v13 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    TFont::CreateDefaultCascadeList(a2, v13, &values);
  }

  EmojiPolicyFromLocale = GetEmojiPolicyFromLocale(a3);
  v15 = EmojiPolicyFromLocale;
  if (a4)
  {
    *a4 = EmojiPolicyFromLocale;
    v15 = -1431655766;
  }

  if (EmojiPolicyFromLocale)
  {
    if (atomic_load_explicit(a1, memory_order_acquire))
    {
      explicit = 0;
    }

    else
    {
      TFont::CreateDefaultCascadeList(a2, 0, &values);

      explicit = atomic_load_explicit(a1, memory_order_acquire);
    }

    values = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableArray::TCFMutableArray(&values, atomic_load_explicit(a1, memory_order_acquire));
    IsSystemUIFontAndForShaping = TFont::IsSystemUIFontAndForShaping(a2, &v21);
    v21 = 0xAAAAAAAAAAAAAAAALL;
    v18 = v15;
    if (a4)
    {
      v18 = *a4;
    }

    if (v18 == 2)
    {
      TDescriptorSource::TDescriptorSource(&v20);
      TDescriptorSource::CopyEmojiFontDescriptor(explicit, &v20, IsSystemUIFontAndForShaping, &v21);
    }

    else
    {
      TDescriptorSource::TDescriptorSource(&v20);
      TDescriptorSource::CopySystemFontDescriptorByName(&v20, @"Menlo-Regular", IsSystemUIFontAndForShaping, 0, &v21);
    }

    v19 = atomic_load_explicit(&v21, memory_order_acquire);
    CFArrayInsertValueAtIndex(atomic_load_explicit(&values, memory_order_acquire), 0, v19);
  }

  if (((*(**(a2 + 408) + 160))(*(a2 + 408)) & 0x2000) != 0)
  {
    if (a4)
    {
      v15 = *a4;
    }

    if (v15 != 1)
    {
      values = 0xAAAAAAAAAAAAAAAALL;
      TCFMutableArray::TCFMutableArray(&values, atomic_load_explicit(a1, memory_order_acquire));
      CFArrayInsertValueAtIndex(atomic_load_explicit(&values, memory_order_acquire), 0, atomic_load_explicit((a2 + 16), memory_order_acquire));
    }
  }
}

void TFont::CreateDefaultCascadeList(TFont *this@<X0>, const __CFArray *a2@<X1>, atomic_ullong *a3@<X8>)
{
  v4 = *(this + 51);
  if (v4)
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    CreateCanonicalLanguages(a2, &v7);
    IsSystemUIFontAndForShaping = TFont::IsSystemUIFontAndForShaping(this, &v8);
    TBaseFont::CreateFallbacks(v4, IsSystemUIFontAndForShaping, (*(this + 3) >> 6) & 7, 0, atomic_load_explicit(&v7, memory_order_acquire), a3);
  }

  else
  {
    *a3 = 0;
  }
}

BOOL TFont::DerivedOpticalFont(atomic_ullong *a1, atomic_ullong *a2, unsigned int *a3, double a4)
{
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (!explicit)
  {
    return explicit != 0;
  }

  v9 = atomic_load_explicit(a2, memory_order_acquire);
  v10 = v9;
  v11 = v9[5];
  if ((*(v11 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v9[5], 0x8000, 0.0);
  }

  v12 = atomic_load_explicit(v11 + 4, memory_order_acquire);

  v33 = 0xAAAAAAAAAAAAAAAALL;
  DerivedOpticalFontDescriptor(&v33, atomic_load_explicit(a2, memory_order_acquire), a4, v12);
  if (atomic_load_explicit(&v33, memory_order_acquire))
  {
  }

  v13 = atomic_load_explicit(a2, memory_order_acquire);
  v14 = (v13[5] + 8);
  atomic_load_explicit(v14, memory_order_acquire);
  v15 = atomic_load_explicit(v14, memory_order_acquire);
  v16 = MEMORY[0x1E695E480];
  if (v15)
  {
    Value = CFDictionaryGetValue(v15, @"NSCTFontFeatureSettingsAttribute");

    if (Value)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v18 = atomic_load_explicit(a1 + 21, memory_order_acquire);
  if (!v18)
  {
    v21 = 0;
    goto LABEL_14;
  }

  v19 = v18;
  v20 = CFDictionaryGetValue(v18, @"CTFontOriginalFeatureSettingsAttribute");

  if (v20)
  {
    values = v20;
    keys = @"NSCTFontFeatureSettingsAttribute";
    v21 = CFDictionaryCreate(*v16, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    values = atomic_load_explicit(a2, memory_order_acquire);
    v32 = v21;
    TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFDictionary const*&>(&values, &v32, &keys);

LABEL_14:
  }

LABEL_15:
  if (TFont::ShouldPropagateFeatureSetting(a1, (a1 + 22)))
  {
    *a3 = *a3 & 0xFFFFFFF3 | 4;
    v22 = atomic_load_explicit(a2, memory_order_acquire);
    LODWORD(values) = 35;
    v23 = *v16;
    keys = CFNumberCreate(*v16, kCFNumberIntType, &values);
    v24 = atomic_exchange(&keys, 0);

    LODWORD(values) = 14;
    keys = CFNumberCreate(v23, kCFNumberIntType, &values);
    v25 = atomic_exchange(&keys, 0);

    v26 = TCFBase<TDescriptor>::Allocate();
    v27 = v26;
    if (v26)
    {
      v26[2] = 0;
      v26[3] = TDescriptor::Hash;
      v26[4] = 0;
      v26[5] = v26 + 6;
      TDescriptor::TDescriptor((v26 + 6), *(v22 + 40), v24, v25);
    }

    keys = v27;
  }

  EmojiMLUpscalingTimeout = TFont::GetEmojiMLUpscalingTimeout(a1);
  if (v29)
  {
    *a3 &= ~8u;
    TCFNumber::TCFNumber<double>(&v32, *&EmojiMLUpscalingTimeout);
    values = atomic_load_explicit(&v32, memory_order_acquire);
    keys = @"CTFontEmojiMLUpscalingTimeoutAttribute";
    v30 = CFDictionaryCreate(*v16, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

    values = atomic_load_explicit(a2, memory_order_acquire);
    v32 = v30;
    TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFDictionary const*&>(&values, &v32, &keys);
  }

  return explicit != 0;
}

void DerivedOpticalFontDescriptor(const __CTFontDescriptor *a1, TDescriptor **a2, double a3, atomic_ullong *a4)
{
  if (!a4 || !(*(*a4 + 848))(a4))
  {
    goto LABEL_19;
  }

  if ((*(*a4 + 16))(a4) == 1414743620)
  {
    OpticalSizeComponent = TSplicedFont::GetOpticalSizeComponent(a4, a3);
    if (OpticalSizeComponent)
    {
      LODWORD(v13) = 1024;
      TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,$_26>(a1, &OpticalSizeComponent, &v13);
      return;
    }
  }

  v8 = (*(*a4 + 16))(a4);
  v9 = v8 == 1414809156 || v8 == 1413695044;
  if (!v9 || ((v12 = NAN, v13 = NAN, (*(*a4 + 432))(a4, &v13, &v12)) ? (v10 = v13 > a3) : (v10 = 1), v10 || (v12 != 0.0 ? (v11 = v12 < a3) : (v11 = 0), v11)))
  {
    TDescriptor::CreateMatchingDescriptor(a2[5], 0, a3, 1024, a1);
  }

  else
  {
LABEL_19:
    *a1 = 0;
  }
}

uint64_t TFont::GetEmojiMLUpscalingTimeout(atomic_ullong *this)
{
  v1 = atomic_load_explicit(this + 21, memory_order_acquire);
  if (v1)
  {
    v2 = v1;
    Value = CFDictionaryGetValue(v1, @"CTFontEmojiMLUpscalingTimeoutAttribute");

    if (Value)
    {
      valuePtr = -1;
      CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
      return valuePtr;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t TFont::TFont(uint64_t a1, TFont *a2, unsigned __int16 *a3, uint64_t a4, __CFString *a5, unint64_t a6, char a7, uint64_t *a8)
{
  v13 = a2;
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  v15 = (a1 + 12);
  *(a1 + 8) = 0;
  v59 = -1431655766;
  *(a1 + 16) = 0xAAAAAAAAAAAAAAAALL;
  v16 = (a1 + 16);
  TFont::DefaultDescriptor((a1 + 16), a2, &v59);
  if (atomic_load_explicit(v16, memory_order_acquire))
  {
    *v15 |= 8u;
    goto LABEL_63;
  }

  v51 = v15;
  v52 = a8;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  TFont::UserFallbacksForLanguage(&v58, v13, a5, 0);
  if (a6 == -1)
  {
    v18 = (*(v13 + 12) >> 6) & 7;
  }

  else
  {
    v18 = a6;
  }

  explicit = atomic_load_explicit(&v58, memory_order_acquire);
  if (!a3)
  {
    v57 = 0;
    goto LABEL_55;
  }

  v19 = 0;
  v20 = v13;
  v21 = v59;
  v49 = v16;
  v50 = v20;
  v22 = *(v20 + 408);
  v53 = v22;
  while (1)
  {
    if (!v18 && v19)
    {
      v57 = 0;
      v13 = v50;
      v16 = v49;
LABEL_55:
      v40 = v51;
      goto LABEL_60;
    }

    CascadeListForFallbackStage = TBaseFont::GetCascadeListForFallbackStage(v22, v19, explicit, v21, v18, a3, a4);
    if (!CascadeListForFallbackStage)
    {
      goto LABEL_49;
    }

    v57 = 0;
    if (!a4)
    {
      TBaseFont::DefaultFallbackDescriptor(CascadeListForFallbackStage, v21, &v61);

      goto LABEL_47;
    }

    v54 = CascadeListForFallbackStage;
    v24 = 0;
    v25 = a7;
    while (v24 < a4)
    {
      v26 = v24 + 1;
      v27 = a3[v24];
      v28 = (v27 & 0xFC00) != 0xD800 || v26 == a4;
      if (v28 || (v29 = a3[v26], (v29 & 0xFC00) != 0xDC00))
      {
        if (v27 < 0xFE0E)
        {
          v30 = 0;
          goto LABEL_24;
        }

        if (v27 >> 4 <= 0xFE0)
        {
          if (v27 == 65038)
          {
            v31 = 1;
          }

          else
          {
            v31 = 2;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v26 = v24 + 2;
        v27 = (v27 << 10) - 56613888 + v29;
      }

      v30 = v27 - 127995 < 5;
LABEL_24:
      v24 = v26;
      v31 = 2;
      if (v27 == 8205 || v30)
      {
        goto LABEL_44;
      }
    }

    if (v19 != 2)
    {
      goto LABEL_43;
    }

    v32 = *a3;
    if (a4 != 1 && (v32 & 0xFC00) == 0xD800)
    {
      v33 = a3[1];
      v28 = (v33 & 0xFC00) == 56320;
      v34 = (v32 << 10) - 56613888 + v33;
      if (v28)
      {
        v32 = v34;
      }
    }

    if (u_hasBinaryProperty(v32, UCHAR_EMOJI_PRESENTATION))
    {
      v31 = 2;
      v25 = a7;
      goto LABEL_44;
    }

    v25 = a7;
    if (v32 == 9792 || v32 == 9877 || v32 == 9794)
    {
      v31 = 1;
    }

    else
    {
LABEL_43:
      v31 = 0;
    }

LABEL_44:
    TBaseFont::FindFallbackDescriptorForCharacters(v22, v54, a3, a4, v52, v31, v21, v19, &v61, v25);

    if (v19 == 1)
    {
      TDescriptorSource::CopyPossibleSystemUIFontDescriptor(&v57, v21, &v61);
    }

LABEL_47:
    if (atomic_load_explicit(&v57, memory_order_acquire))
    {
      break;
    }

    v22 = v53;
LABEL_49:
    if (++v19 == 3)
    {
      v61 = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::TDescriptorSource(v60);
      TDescriptorSource::CopySystemWideFallbackDescriptorForCharacters(v35, v22, a3, a4, v21, v18, &v61);
      v36 = atomic_load_explicit(&v61, memory_order_acquire);
      if (v36)
      {
        v37 = atomic_load_explicit(&v61, memory_order_acquire);
        v38 = v37;
        v39 = v37[5];
        v13 = v50;
        v16 = v49;
        v40 = v51;
        if ((*(v39 + 4) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(v37[5], 0, 0.0);
        }

        v41 = atomic_load_explicit(v39 + 4, memory_order_acquire);
        *v52 = (*(*v41 + 816))(v41, a3, a4, 0);

        *v51 |= 8u;
        v36 = atomic_exchange(&v61, 0);
      }

      else
      {
        v40 = v51;
        *v52 = 0;
        v13 = v50;
        v16 = v49;
      }

      v57 = v36;

      goto LABEL_60;
    }
  }

  v13 = v50;
  v16 = v49;
  v40 = v51;
  if ((v19 & 1) == 0)
  {
    *v51 |= 8u;
  }

LABEL_60:

  if (!TFont::DerivedOpticalFont(v13, v16, v40, *(v13 + 24)))
  {
    *v52 = 0;
    TDescriptorSource::TDescriptorSource(v60);
    TDescriptorSource::CopyLastResort(&v61);

    *v40 |= 8u;
  }

LABEL_63:
  *(a1 + 24) = TFont::InitSize(0, *(v13 + 24), v17);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x80000000;
  TFont::InitMatrix((a1 + 48), *(v13 + 48), 0);
  *(a1 + 192) = 0;
  *(a1 + 56) = 0;
  v42 = *MEMORY[0x1E695F058];
  v43 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 96) = *MEMORY[0x1E695EFF8];
  *(a1 + 112) = v42;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 128) = v43;
  *(a1 + 144) = 0;
  *(a1 + 200) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = TFont::InitBaseFont(v16);
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  *(a1 + 496) = 1065353216;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0;
  v44 = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v45 = atomic_load_explicit((v13 + 168), memory_order_acquire);
  v46 = v45;
  if (v45)
  {
    Value = CFDictionaryGetValue(v45, @"CTFontOriginalFeatureSettingsAttribute");
  }

  else
  {
    Value = 0;
  }

  TFont::SetExtras(a1, v44, Value);
  *(a1 + 12) = *(v13 + 12) | 0xC0;
  TFont::SetOpticalSize(a1, 0);
  TFont::AddFontSpecificFeatureSettings(a1);
  return a1;
}

void TFont::TFont(TFont *this, const TFont *a2, const unsigned __int16 *a3, uint64_t a4, CFRange *a5)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  v10 = (this + 12);
  *(this + 2) = 0;
  *(this + 2) = 0xAAAAAAAAAAAAAAAALL;
  v11 = (this + 16);
  v31 = -1431655766;
  TFont::DefaultDescriptor(this + 2, a2, &v31);
  if (atomic_load_explicit(v11, memory_order_acquire))
  {
    *v10 |= 8u;
    goto LABEL_26;
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  TFont::UserFallbacksForLanguage(&v30, a2, 0, 0);
  explicit = atomic_load_explicit(&v30, memory_order_acquire);
  if (!a3)
  {
    v29 = 0;
    goto LABEL_23;
  }

  v28 = a5;
  v27 = v10;
  v14 = 0;
  v15 = v31;
  v16 = (*(a2 + 3) >> 6) & 7;
  v17 = *(a2 + 51);
  while (1)
  {
    if (!v16 && v14)
    {
      v29 = 0;
      v10 = v27;
      goto LABEL_23;
    }

    CascadeListForFallbackStage = TBaseFont::GetCascadeListForFallbackStage(v17, v14, explicit, v15, v16, a3, a4);
    if (!CascadeListForFallbackStage)
    {
      goto LABEL_13;
    }

    v29 = 0xAAAAAAAAAAAAAAAALL;
    if (a4)
    {
      TBaseFont::FindFallbackDescriptorForCharacterRange(v17, CascadeListForFallbackStage, a3, v28, a4, &v29);
    }

    else
    {
      TBaseFont::DefaultFallbackDescriptor(CascadeListForFallbackStage, 0, &v29);
    }

    if (atomic_load_explicit(&v29, memory_order_acquire))
    {
      break;
    }

LABEL_13:
    if (++v14 == 3)
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::TDescriptorSource(&v32);
      TDescriptorSource::CopySystemWideFallbackDescriptorForCharacters(&v32, v17, a3, a4, v15, v16, &v33);
      v19 = atomic_load_explicit(&v33, memory_order_acquire);
      if (v19)
      {
        v20 = atomic_load_explicit(&v33, memory_order_acquire);
        v21 = v20;
        v22 = v20[5];
        v10 = v27;
        if ((*(v22 + 4) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(v20[5], 0, 0.0);
        }

        v23 = atomic_load_explicit(v22 + 4, memory_order_acquire);
        v28->location = (*(*v23 + 824))(v23, a3, a4);
        v28->length = v24;

        *v27 |= 8u;
        v19 = atomic_exchange(&v33, 0);
      }

      else
      {
        v10 = v27;
      }

      v29 = v19;

      goto LABEL_23;
    }
  }

  v10 = v27;
  if ((v14 & 1) == 0)
  {
    *v27 |= 8u;
  }

LABEL_23:

  if (!TFont::DerivedOpticalFont(a2, v11, v10, *(a2 + 3)))
  {
    TDescriptorSource::TDescriptorSource(&v32);
    TDescriptorSource::CopyLastResort(&v33);

    *v10 |= 8u;
  }

LABEL_26:
  *(this + 3) = TFont::InitSize(0, *(a2 + 3), v12);
  *(this + 4) = 0;
  *(this + 10) = 0x80000000;
  TFont::InitMatrix((this + 48), *(a2 + 6), 0);
  *(this + 14) = 0;
  v25 = *MEMORY[0x1E695F058];
  v26 = *(MEMORY[0x1E695F058] + 16);
  *(this + 6) = *MEMORY[0x1E695EFF8];
  *(this + 7) = v25;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 8) = v26;
  *(this + 144) = 0;
  *(this + 25) = 0;
  *(this + 24) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = this + 192;
  *(this + 52) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 62) = 1065353216;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 1065353216;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 400) = 0;
  *(this + 51) = TFont::InitBaseFont(v11);
  *(this + 52) = 0;
  *(this + 106) = 0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  *(this + 114) = 0;
  *(this + 124) = 1065353216;
  *(this + 63) = 0;
  *(this + 128) = 0;
  *(this + 65) = 0;
  *(this + 528) = 0;
  *(this + 67) = 0;
  *(this + 69) = 0;
  *(this + 68) = 0;
  TFont::SetExtras(this, atomic_load_explicit(this + 2, memory_order_acquire), 0);
  *(this + 3) = *(a2 + 3) | 0xC0;
  TFont::SetOpticalSize(this, 0);
  TFont::AddFontSpecificFeatureSettings(this);
}

void TFont::CoverageForFeatureSetting(TBaseFont **this@<X0>, CTFeatureSetting *a2@<X1>, void *a3@<X8>)
{
  v13[17] = *MEMORY[0x1E69E9840];
  v13[0] = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], 0);
  GlyphCount = TBaseFont::GetGlyphCount(this[51]);
  CFBitVectorSetCount(atomic_load_explicit(v13, memory_order_acquire), GlyphCount);
  v7 = this[51];
  if (v7)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v7 + 136))(&v11, v7);
    v12 = atomic_exchange(&v11, 0);

    v11 = 0xAAAAAAAAAAAAAAAALL;
    TFontFeatures::SettingsByNormalizing(&v12, v7, a2, 0, &v11);
    explicit = atomic_load_explicit(&v11, memory_order_acquire);
    if (explicit && CFArrayGetCount(explicit))
    {
      CFArrayGetValueAtIndex(explicit, 0);
      v9 = atomic_load_explicit(v13, memory_order_acquire);
      v10 = atomic_load_explicit(v13, memory_order_acquire);
      v9;
      v13[16] = 0;
      operator new();
    }
  }

  *a3 = atomic_exchange(v13, 0);
}

void TFont::ShapingLanguages(TFont *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 51);
  if (v3)
  {
    v4 = 0xAAAAAAAAAAAAAAAALL;
    TBaseFont::ShapingLanguages(v3, 0, &v4);
    if (atomic_load_explicit(&v4, memory_order_acquire))
    {
      CreateSetWithArray(atomic_load_explicit(&v4, memory_order_acquire), a2);

      return;
    }
  }

  *a2 = 0;
}

BOOL TFont::UseTypoMetrics(TFont *this)
{
  v1 = *(this + 51);
  memset(v5, 170, sizeof(v5));
  (*(*v1 + 488))(&v4);
  OS2::OS2(v5, &v4);

  v2 = v5[2] >= 78 && *(v5[1] + 31) < 0;
  return v2;
}

uint64_t TFont::GetTypoMetrics(TBaseFont **this, double *a2, double *a3, double *a4)
{
  result = TBaseFont::GetInitializedGraphicsFont(this[51]);
  if (result)
  {
    result = CGFontGetParserFont();
    if (result)
    {
      result = FPFontGetTypoMetrics();
      if (result)
      {
        if (*(this + 14))
        {
          v9 = (this + 7);
        }

        else
        {
          TFont::InitStrikeMetrics(this);
        }

        v10 = v9[6];
        if (a2)
        {
          *a2 = v10 * *a2;
        }

        if (a3)
        {
          *a3 = v10 * *a3;
        }

        if (a4)
        {
          *a4 = v10 * *a4;
        }

        return 1;
      }
    }
  }

  return result;
}

double TFont::GetHorizontalAscentDescent(TBaseFont **this)
{
  if (*(this + 12))
  {
    v3[5] = unk_18475C428;
    v3[0] = __const__ZNK5TFont26GetHorizontalAscentDescentEv_metrics;
    memset(&v3[1], 255, 64);
    TFont::GetStrikeMetrics(this, 0, v3);
    return *(v3 + 1);
  }

  else
  {
    if (*(this + 14))
    {
      v1 = (this + 7);
    }

    else
    {
      TFont::InitStrikeMetrics(this);
    }

    return v1[1];
  }
}

void TFont::GetControlPoints(TBaseFont **this@<X0>, unsigned int a2@<W2>, void *a3@<X8>)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (!TBaseFont::GetInitializedGraphicsFont(this[51]) || !CGFontGetParserFont())
  {
    v14 = 0;
    v8 = 0;
    v9 = 0;
LABEL_13:
    *a3 = v9;
    a3[1] = v8;
    a3[2] = v14;
    return;
  }

  v16 = 0;
  if ((FPFontGetControlPoints() & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v6 = v16;
  if (a2 && v16 > a2)
  {
    v16 = a2;
    v6 = a2;
  }

  std::vector<CGSize>::resize(&__p, v6);
  if (FPFontGetControlPoints())
  {
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *&v15.c = v7;
    *&v15.tx = v7;
    *&v15.a = v7;
    TFont::GetScaledMatrix(this, &v15);
    v9 = __p;
    v8 = v18;
    if (__p != v18)
    {
      v10 = *&v15.a;
      v11 = *&v15.c;
      v12 = __p;
      v13 = *&v15.tx;
      do
      {
        *v12 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v11, v12[1]), v10, *v12));
        v12 += 2;
      }

      while (v12 != v8);
    }

    v14 = v19;
    goto LABEL_13;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void TFont::GetControlPointPositions(TBaseFont **this, unsigned __int16 a2, const __int16 *a3, double *a4, unint64_t a5)
{
  v5 = a3;
  if (a5 >= 2)
  {
    v6 = a3 + 1;
    v7 = a3[1];
    v8 = *a3;
    v5 = v7 >= v8 ? a3 + 1 : a3;
    if (a5 != 2)
    {
      v9 = a3 + 2;
      if (v7 >= v8)
      {
        v6 = a3;
      }

      if (v7 <= v8)
      {
        LOWORD(v10) = *a3;
      }

      else
      {
        LOWORD(v10) = a3[1];
      }

      if (v7 <= v8)
      {
        LOWORD(v8) = a3[1];
      }

      v11 = 2 * a5 - 6;
      while (v11)
      {
        v12 = v9[1];
        v13 = *v9;
        if (v12 >= v13)
        {
          if (v13 < v8)
          {
            LOWORD(v8) = *v9;
            v6 = v9;
          }

          v15 = v12 < v10;
          if (v12 > v10)
          {
            LOWORD(v10) = v9[1];
          }

          if (!v15)
          {
            v5 = v9 + 1;
          }
        }

        else
        {
          v8 = *v6;
          if (v12 < v8)
          {
            LOWORD(v8) = v9[1];
            v6 = v9 + 1;
          }

          v10 = *v5;
          v14 = v13 < v10;
          if (v13 > v10)
          {
            LOWORD(v10) = *v9;
          }

          if (!v14)
          {
            v5 = v9;
          }
        }

        v9 += 2;
        v11 -= 4;
        if (v11 == -2)
        {
          goto LABEL_34;
        }
      }

      v16 = *v9;
      if (v16 >= *v6 && v16 >= *v5)
      {
        v5 = v9;
      }
    }
  }

LABEL_34:
  v17 = *v5;
  memset(v19, 170, sizeof(v19));
  TFont::GetControlPoints(this, v17 + 1, v19);
  if (v19[1] != v19[0])
  {
    memset(v18, 0, sizeof(v18));
    std::vector<CGSize>::__vallocate[abi:fn200100](v18, (v19[1] - v19[0]) >> 4);
  }

  if (v19[0])
  {
    operator delete(v19[0]);
  }
}

unint64_t TFont::GetLigatureCaretPositionsForGlyph(TFont *this, uint64_t a2, double *a3, unint64_t a4)
{
  v6 = a3;
  v68 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = a4 < 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v59 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(this + 51) + 488))(&v59);
  v11 = atomic_load_explicit(&v59, memory_order_acquire);
  v12 = v11;
  if (v11)
  {
    BytePtr = CFDataGetBytePtr(v11);
  }

  else
  {
    BytePtr = 0;
  }

  v57 = 0xAAAAAAAAAAAAAAAALL;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  v14 = atomic_load_explicit(&v59, memory_order_acquire);
  v15 = v14;
  if (!v15)
  {

    goto LABEL_14;
  }

  v16 = v15;
  v17 = CFDataGetBytePtr(v15);

  if (!v17)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v18 = &v17[CFDataGetLength(v14)];
LABEL_15:
  v57 = BytePtr;
  v58 = v18;
  if (BytePtr && (BytePtr + 6) > v18)
  {
    v57 = 0;
  }

  else
  {

    if (BytePtr)
    {
      if (v10)
      {
        LigatureCaretCount = TLCARTable::GetLigatureCaretCount(&v57, a2);
      }

      else
      {
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v66[56] = v20;
        *&v66[40] = v20;
        *&v66[24] = v20;
        *&v66[8] = v20;
        __p = 0uLL;
        *v66 = 0;
        v67 = &v66[8];
        if (a4 > 0x1E)
        {
          operator new();
        }

        v67 = &v66[2 * a4 + 8];
        *&__p = &v66[8];
        *v66 = v67;
        bzero(&v66[8], 2 * a4);
        *(&__p + 1) = &v66[2 * a4 + 8];
        v54[0] = 0;
        LigatureCaretPositions = TLCARTable::GetLigatureCaretPositions(&v57, a2, &v66[8], a4, v54);
        LigatureCaretCount = LigatureCaretPositions;
        if (LigatureCaretPositions >= 1)
        {
          if (v54[0] == 1)
          {
            if (LigatureCaretPositions >= a4)
            {
              v29 = a4;
            }

            else
            {
              v29 = LigatureCaretPositions;
            }

            TFont::GetControlPointPositions(this, a2, __p, v6, v29);
          }

          else if (v54[0])
          {
            LigatureCaretCount = 0;
          }

          else
          {
            v22 = __p;
            if (LigatureCaretPositions >= a4)
            {
              v23 = a4;
            }

            else
            {
              v23 = LigatureCaretPositions;
            }

            v24 = __p + 2 * v23;
            TFont::GetScaledMatrix(this, &v64);
            a = v64.a;
            tx = v64.tx;
            v27 = v64.c * 0.0;
            do
            {
              v28 = *v22++;
              *v6++ = tx + v27 + a * v28;
            }

            while (v22 != v24);
          }
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          if (&v66[8] > __p || &v66[68] <= __p)
          {
            operator delete(__p);
          }
        }
      }

      goto LABEL_52;
    }
  }

  CommonTable = TBaseFont::GetCommonTable(*(this + 51), 1195656518, 0);
  if (!CommonTable)
  {
    goto LABEL_51;
  }

  *&v66[64] = 0xAAAAAAAAAAAAAAAALL;
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v66[32] = v32;
  *&v66[48] = v32;
  *v66 = v32;
  *&v66[16] = v32;
  __p = v32;
  OTL::GDEF::GDEF(&__p, CommonTable);
  if (!__p)
  {
    goto LABEL_51;
  }

  if (!*(__p + 8))
  {
    goto LABEL_51;
  }

  v35 = *(&__p + 1);
  v36 = (__p + __rev16(*(__p + 8)));
  if ((v36 + 2) > *(&__p + 1))
  {
    goto LABEL_51;
  }

  OTL::Coverage::Coverage(&v64, (v36 + (bswap32(*v36) >> 16)), *(&__p + 1), 0, v33, v34);
  c = v64.c;
  v38 = (&v64.a + (*&v64.d >> 1));
  if (LOBYTE(v64.d))
  {
    c = *(*v38 + LODWORD(v64.c));
  }

  v39 = (*&c)(v38, a2);
  if (!v39 || v39 > bswap32(v36[1]) >> 16 || (v41 = (v36 + (bswap32(v36[v39 + 1]) >> 16)), v42 = v41 + 1, (v41 + 1) > v35))
  {
LABEL_51:
    LigatureCaretCount = 0;
    goto LABEL_52;
  }

  LigatureCaretCount = __rev16(*v41);
  if (*v41)
  {
    v43 = v10;
  }

  else
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    v56 = 0xAAAAAAAAAAAAAAAALL;
    VariationValues = TFont::GetVariationValues(this, &v56);
    if (LigatureCaretCount >= a4)
    {
      v44 = a4;
    }

    else
    {
      v44 = LigatureCaretCount;
    }

    v45 = v56;
    if (v44 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v44;
    }

    while (1)
    {
      v47 = *v42++;
      v48 = (v41 + (bswap32(v47) >> 16));
      *&v64.a = this;
      v49 = v48 + 1;
      LOWORD(v64.b) = a2;
      *&v64.c = v6;
      if ((v48 + 1) > v35)
      {
LABEL_76:
        v52 = 0;
        v51 = &v63;
        goto LABEL_77;
      }

      v50 = bswap32(*v48) >> 16;
      if (v50 == 3)
      {
        break;
      }

      if (v50 != 2)
      {
        if (v50 != 1 || (v48 + 2) > v35)
        {
          goto LABEL_76;
        }

        v4 = (bswap32(*v49) >> 16);
        goto LABEL_75;
      }

      if ((v48 + 2) > v35)
      {
        goto LABEL_76;
      }

      *&v4 = bswap32(*v49) >> 16;
      v51 = &v61;
      v52 = 2;
LABEL_77:
      *v54 = v4;
      v55 = v52;
      v63 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:fn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<TFont::GetLigatureCaretPositionsForGlyph(unsigned short,double *,long)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,double,unsigned short> &&>;
      v62 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:fn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<TFont::GetLigatureCaretPositionsForGlyph(unsigned short,double *,long)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,double,unsigned short> &&>;
      v60 = &v64;
      v61 = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:fn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<TFont::GetLigatureCaretPositionsForGlyph(unsigned short,double *,long)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,double,unsigned short> &&>;
      (*v51)(&v60, v54);
      ++v6;
      if (!--v46)
      {
        goto LABEL_52;
      }
    }

    if ((v48 + 3) > v35)
    {
      goto LABEL_76;
    }

    v4 = (bswap32(*v49) >> 16);
    if (v45)
    {
      v4 = OTL::GDEF::DeltaValue(&__p, v48, v35, bswap32(v48[2]) >> 16, v45, VariationValues) + v4;
    }

LABEL_75:
    v51 = &v62;
    v52 = 1;
    goto LABEL_77;
  }

LABEL_52:

  return LigatureCaretCount;
}

void TFont::FindColorBitmapForGlyph(TFont *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = *(a3 + 8);
  if (!v6)
  {
    goto LABEL_47;
  }

  LOWORD(v8) = a2;
  v10 = *(v6 + 6) << 16;
  EffectiveSize = TFont::GetEffectiveSize(a1);
  if (!v10)
  {
    goto LABEL_47;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = round(EffectiveSize * a5);
  v17 = bswap32(v10);
  v18 = (v6 + 8);
  v20 = *(a3 + 8);
  v19 = *(a3 + 16);
  v21 = 0.0;
  do
  {
    v22 = *v18++;
    v23 = bswap32(v22);
    v24 = (v6 + v23);
    v25 = v20 > v6 + v23 || v6 + v23 + 8 > v19;
    v26 = v24 + 2;
    v27 = &v24[2 * v8 + 2];
    v28 = v27 + 4;
    v29 = v27 + 8;
    if (v25 || v20 > v28 || v29 > v19)
    {
      goto LABEL_15;
    }

    v32 = &v26[2 * v8];
    v33 = *v32;
    v34 = v32[1];
    if (v34 == v33)
    {
      goto LABEL_15;
    }

    v35 = bswap32(v33);
    v14 = bswap32(v34) - v35;
    v15 = v24 + v35;
    v36 = (v15 + 8);
    v37 = v20 > (v15 + 4) || (v15 + 5) > v19;
    if (v37 || v36 > v19)
    {
      goto LABEL_15;
    }

    v39 = bswap32(*(v15 + 1));
    if (v39 != 1685418085)
    {
      if (v39 != 1718380912)
      {
        goto LABEL_39;
      }

      v12 = 1;
    }

    v8 = bswap32(*v36) >> 16;
    v40 = &v26[2 * v8];
    v41 = (v40 + 2);
    v42 = (v40 + 4);
    if (v20 > v41 || v42 > v19)
    {
      v15 = 0;
    }

    else
    {
      v44 = &v26[2 * v8];
      v45 = *v44;
      LODWORD(v44) = v44[1];
      v35 = bswap32(v45);
      v46 = bswap32(v44) - v35;
      v47 = v44 == v45;
      v15 = v44 == v45 ? 0 : v24 + v35;
      if (!v47)
      {
        v14 = v46;
      }
    }

LABEL_39:
    v13 = v35 + v23;
    v21 = (bswap32(*v24) >> 16) * (bswap32(v24[1]) >> 16) / 72.0;
    if (v21 >= v16)
    {
      break;
    }

LABEL_15:
    --v17;
  }

  while (v17);
  if (!v15 || v20 > v15 || (v15 + 5) > v19 || !v14 || v20 > &v15[v14 - 1] || &v15[v14] > v19)
  {
LABEL_47:
    v49 = 0;
    *a4 = 0;
    goto LABEL_48;
  }

  v48 = *(v6 + 3);
  *a4 = v15;
  *(a4 + 8) = v14;
  *(a4 + 16) = v13;
  *(a4 + 24) = v21 / v16;
  *(a4 + 32) = v21;
  *(a4 + 40) = v48;
  *(a4 + 41) = v12;
  *(a4 + 42) = 0;
  *(a4 + 46) = 0;
  v49 = 1;
LABEL_48:
  *(a4 + 48) = v49;
}

uint64_t TFont::HasColorBitmapForGlyph(TBaseFont **this, unsigned int a2, const __CFData *a3)
{
  v4 = a2;
  if (TBaseFont::GetGlyphCount(this[51]) <= a2)
  {
    v6 = 0;
  }

  else
  {
    TBaseFont::GetGlyphCount(this[51]);
    TsbixContext::TsbixContext(v8, a3);
    TFont::FindColorBitmapForGlyph(this, v4, v8, v9, 1.0);
    v6 = v9[48];
  }

  return v6 & 1;
}

void OTL::GCommon::GetLookups(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[6] = v4;
  v7[5] = v4;
  v7[4] = v4;
  v7[3] = v4;
  v7[2] = v4;
  v7[1] = v4;
  v7[0] = v4;
  memset(v6, 0, sizeof(v6));
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = v7;
  if (OTL::GCommon::GetLookups(a1, a2, v6, 0))
  {
    std::__optional_destruct_base<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,false>::__optional_destruct_base[abi:fn200100]<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>>(a3, v6);
  }

  else
  {
    *a3 = 0;
    a3[152] = 0;
  }

  v5 = v6;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v5);
}

uint64_t OTL::GPOS::GetSinglePosAdjustments(OTL::GPOS *a1, unsigned __int16 **a2, uint64_t a3, double *a4, double *a5)
{
  v10 = *(*(a1 + 2) + 408);
  os_unfair_lock_lock_with_options();
  v12 = *a2;
  v11 = a2[1];
  while (1)
  {
    if (v12 == v11)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v13 = TBaseFont::NthLookup<OTL::GPOS>(v10, a1, *v12);
    if (v13)
    {
      if (OTL::GPOS::GetSinglePosAdjustmentsForLookup(a1, v13, a3, a4, a5))
      {
        break;
      }
    }

    v12 += 2;
  }

  v14 = 1;
LABEL_8:
  os_unfair_lock_unlock(v10 + 89);
  return v14;
}

uint64_t GetUnscaledAdvances(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = a5;
  v27 = *MEMORY[0x1E69E9840];
  if (a6 == 2 || !a6 && (*(a1 + 12) & 1) != 0)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24[6] = v12;
    v24[5] = v12;
    v24[4] = v12;
    v24[3] = v12;
    v24[2] = v12;
    v24[1] = v12;
    v24[0] = v12;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    v26 = v24;
    if (a5)
    {
      if (a5 >> 62)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      if (a5 > 0x1E)
      {
        operator new();
      }

      v26 = v24 + 4 * a5;
      v13 = v26;
      v21 = v24;
      v23 = v13;
      bzero(v24, 4 * a5);
      v22 = v13;
    }

    v20 = 0xAAAAAAAAAAAAAAAALL;
    (*(**(a1 + 408) + 504))(&v20);
    atomic_load_explicit(&v20, memory_order_acquire);
    GlyphVerticalAdvances = CGFontGetGlyphVerticalAdvances();
    v15 = GlyphVerticalAdvances;
    if (v6 && GlyphVerticalAdvances)
    {
      v16 = v21;
      v17 = (v22 - v21) >> 2;
      v18 = 8 * a4;
      v19 = (a3 + 8);
      do
      {
        if (!v17)
        {
          __break(1u);
        }

        *(v19 - 1) = *v16;
        if (a4 >= 2)
        {
          bzero(v19, v18 - 8);
        }

        ++v16;
        --v17;
        v19 = (v19 + v18);
        --v6;
      }

      while (v6);
    }

    v20 = &v21;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v20);
    return v15;
  }

  else
  {
    v10 = *(**(a1 + 408) + 520);

    return v10();
  }
}

double ApplyFixedAdvances(const __CFDictionary *a1, int a2, uint64_t a3, double *a4, int a5)
{
  valuePtr = NAN;
  Value = CFDictionaryGetValue(a1, @"NSCTFontFixedAdvanceAttribute");
  CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
  if (a2)
  {
    valuePtr = round(valuePtr);
  }

  if (a3 < 1)
  {
    return 0.0;
  }

  v10 = valuePtr;
  result = 0.0;
  do
  {
    if (*a4 != 0.0)
    {
      *a4 = v10;
      result = v10 + result;
    }

    a4 += a5;
    --a3;
  }

  while (a3);
  return result;
}

uint64_t TFont::GetUnscaledVerticalTranslationsForGlyphs(TFont *this, const unsigned __int16 *a2, CGSize *a3, uint64_t a4)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(this + 51) + 504))(&v10);
  atomic_load_explicit(&v10, memory_order_acquire);
  GlyphVerticalOffsets = CGFontGetGlyphVerticalOffsets();
  if (GlyphVerticalOffsets)
  {
    ScaleFactor = TFont::GetScaleFactor(this);
    vDSP_vsmulD(&a3->width, 1, &ScaleFactor, &a3->width, 1, 2 * a4);
  }

  return GlyphVerticalOffsets;
}

void TFont::GetBoundingBoxesForGlyphs(TFont *this, CGAffineTransform *a2, char a3, const unsigned __int16 *a4, CGRect *a5, uint64_t a6, unsigned __int32 a7)
{
  v75 = *MEMORY[0x1E69E9840];
  v54 = a5;
  v55 = a4;
  if (a2)
  {
    v13 = vandq_s8(vandq_s8(vceqq_f64(*&a2->a, xmmword_18475BD80), vceqq_f64(*&a2->c, xmmword_18475A330)), vceqzq_f64(*&a2->tx));
    if (vandq_s8(v13, vdupq_laneq_s64(v13, 1)).i64[0] >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (a7 == 2)
  {
    v15 = 1;
  }

  else if (a7)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(this + 12) & 1;
  }

  if (TBaseFont::GetInitializedGraphicsFont(*(this + 51)))
  {
    ParserFont = CGFontGetParserFont();
    if (ParserFont)
    {
      v16 = *(MEMORY[0x1E695F058] + 16);
      v56 = *MEMORY[0x1E695F058];
      v57 = v16;
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v73 = v17;
      v72 = v17;
      v71 = v17;
      v70 = v17;
      v69 = v17;
      v68 = v17;
      v67 = v17;
      v66 = v17;
      v65 = v17;
      v64 = v17;
      v63 = v17;
      v62 = v17;
      v61 = v17;
      *&v60[40] = v17;
      *&v60[24] = v17;
      memset(v60, 0, 24);
      v74 = &v60[24];
      TFont::GetBoundingBoxesForSVGGlyphs(this, v14, a4, a5, a6, a7, v60, &v56);
      *&v18 = -1;
      *(&v18 + 1) = -1;
      *&v52.c = v18;
      *&v52.tx = v18;
      *&v52.a = v18;
      if (a3)
      {
        TFont::GetScaledMatrix(this, &v52);
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      else
      {
        TFont::GetEffectiveMatrix(this, &t2);
        EffectiveSize = TFont::GetEffectiveSize(this);
        t1 = t2;
        CGAffineTransformScale(&v52, &t1, EffectiveSize, EffectiveSize);
        if (!v14)
        {
LABEL_18:
          if (v15)
          {
            t1 = *kRotateLeftTransform;
            t2 = v52;
            CGAffineTransformConcat(&v51, &t1, &t2);
            v52 = v51;
          }

          TFont::GetColorBitmapFontTranslate(this);
          t1.a = v21;
          t1.b = v22;
          if ((a3 & 1) == 0)
          {
            v23 = MEMORY[0x1E699F778];
            if (v15)
            {
              v23 = MEMORY[0x1E699F780];
            }

            t2.a = v23;
            operator new();
          }

          v24 = MEMORY[0x1E699F788];
          if (v15)
          {
            v24 = MEMORY[0x1E699F790];
          }

          t2.a = v24;
          operator new();
        }
      }

      t1 = v52;
      v20 = *&v14->c;
      *&t2.a = *&v14->a;
      *&t2.c = v20;
      *&t2.tx = *MEMORY[0x1E695EFF8];
      CGAffineTransformConcat(&v51, &t1, &t2);
      v52 = v51;
      goto LABEL_18;
    }
  }

  else
  {
    ParserFont = 0;
  }

  if (v15)
  {
    BoundingBoxesForGlyphs = TFont::GetBoundingBoxesForGlyphs(this, a4, a5, a6, a7);
    *&v56 = BoundingBoxesForGlyphs;
    *(&v56 + 1) = v26;
    *&v57 = v27;
    *(&v57 + 1) = v28;
    if (v14)
    {
      v29 = *&v14->c;
      *v60 = *&v14->a;
      *&v60[16] = v29;
      *&v60[32] = *&v14->tx;
      v76 = CGRectApplyAffineTransform(*&BoundingBoxesForGlyphs, v60);
      *&v56 = v76.origin.x;
      *(&v56 + 1) = *&v76.origin.y;
      *&v57 = v76.size.width;
      *(&v57 + 1) = *&v76.size.height;
      if (a6)
      {
        p_size = &a5->size;
        do
        {
          v77 = *&p_size[-1].width;
          v31 = *&v14->c;
          *v60 = *&v14->a;
          *&v60[16] = v31;
          *&v60[32] = *&v14->tx;
          *&p_size[-1].width = CGRectApplyAffineTransform(v77, v60);
          p_size += 2;
          --a6;
        }

        while (a6);
      }
    }
  }

  else
  {
    *&v32 = -1;
    *(&v32 + 1) = -1;
    *&t2.c = v32;
    *&t2.tx = v32;
    *&t2.a = v32;
    TFont::GetEffectiveMatrix(this, &t1);
    v33 = TFont::GetEffectiveSize(this);
    *v60 = t1;
    CGAffineTransformScale(&t2, v60, v33, v33);
    if (v14)
    {
      *v60 = t2;
      v34 = *&v14->c;
      *&t1.a = *&v14->a;
      *&t1.c = v34;
      *&t1.tx = *MEMORY[0x1E695EFF8];
      CGAffineTransformConcat(&v52, v60, &t1);
      t2 = v52;
    }

    *v60 = 0xAAAAAAAAAAAAAAAALL;
    (*(**(this + 51) + 504))(v60);
    atomic_load_explicit(v60, memory_order_acquire);
    v35 = v54;
    if (CGFontGetGlyphBBoxesForStyle())
    {
      v36 = *(MEMORY[0x1E695F058] + 16);
      v56 = *MEMORY[0x1E695F058];
      v57 = v36;
      TFont::GetColorBitmapFontTranslate(this);
      v49 = v38;
      v50 = v37;
      if (a6 >= 1)
      {
        v39 = *(&v56 + 1);
        v40 = *&v56;
        v41 = &v35->size;
        v43 = *(&v57 + 1);
        v42 = *&v57;
        do
        {
          v78 = CGRectOffset(*&v41[-1].width, v50, v49);
          x = v78.origin.x;
          y = v78.origin.y;
          width = v78.size.width;
          height = v78.size.height;
          *&v41[-1].width = v78;
          v78.origin.x = v40;
          v78.origin.y = v39;
          v78.size.width = v42;
          v78.size.height = v43;
          if (CGRectIsEmpty(v78))
          {
            v40 = x;
            v39 = y;
            v42 = width;
            v43 = height;
          }

          else
          {
            v79.origin.x = x;
            v79.origin.y = y;
            v79.size.width = width;
            v79.size.height = height;
            if (!CGRectIsEmpty(v79))
            {
              v80.origin.x = v40;
              v80.origin.y = v39;
              v80.size.width = v42;
              v80.size.height = v43;
              v82.origin.x = x;
              v82.origin.y = y;
              v82.size.width = width;
              v82.size.height = height;
              v81 = CGRectUnion(v80, v82);
              v40 = v81.origin.x;
              v39 = v81.origin.y;
              v42 = v81.size.width;
              v43 = v81.size.height;
            }
          }

          *&v56 = v40;
          *(&v56 + 1) = v39;
          v41 += 2;
          *&v57 = v42;
          *(&v57 + 1) = v43;
          --a6;
        }

        while (a6);
      }
    }

    else
    {
      v48 = *(MEMORY[0x1E695F050] + 16);
      v56 = *MEMORY[0x1E695F050];
      v57 = v48;
    }
  }
}

unint64_t TFont::GetPaletteColors(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 63, memory_order_acquire);
  if (explicit)
  {
    return explicit;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  memset(v22, 170, sizeof(v22));
  (*(*this[51] + 488))(valuePtr);
  ColorPaletteTable::ColorPaletteTable(v22, valuePtr);

  if (v22[2])
  {
    TFont::CopyAttribute(this, @"CTFontPaletteAttribute", 49, valuePtr);
    v3 = atomic_exchange(valuePtr, 0);

    TFont::CopyAttribute(this, @"CTFontPaletteColorsAttribute", 50, valuePtr);
    v4 = atomic_exchange(valuePtr, 0);

    v19 = v3;
    if (v3)
    {
      valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
      CFNumberGetValue(v3, kCFNumberLongType, valuePtr);
      if (valuePtr[0] == -2)
      {
        v5 = 2;
        v6 = 2;
      }

      else
      {
        if (valuePtr[0] != -1)
        {
          PaletteWithFlags = valuePtr[0] & ~(valuePtr[0] >> 63);
          goto LABEL_11;
        }

        v5 = 1;
        v6 = 1;
      }

      PaletteWithFlags = ColorPaletteTable::IndexOfFirstPaletteWithFlags(v22, v5, v6);
    }

    else
    {
      PaletteWithFlags = 0;
    }

LABEL_11:
    memset(valuePtr, 170, sizeof(valuePtr));
    ColorPaletteTable::Palette::Palette(valuePtr, atomic_load_explicit(v22, memory_order_acquire), PaletteWithFlags);
    v9 = valuePtr[2];
    if (valuePtr[2])
    {
      for (i = 0; v9 != i; ++i)
      {
        if (!v4)
        {
          goto LABEL_21;
        }

        v25 = 0xAAAAAAAAAAAAAAAALL;
        TCFNumber::TCFNumber<int>(&v25, i);
        Value = CFDictionaryGetValue(v4, atomic_load_explicit(&v25, memory_order_acquire));
        if (!Value)
        {
          goto LABEL_20;
        }

        v12 = Value;
        v13 = CFGetTypeID(Value);
        if (v13 == CGColorGetTypeID())
        {
          v24 = v12;
          v20 = atomic_exchange(&v24, 0);
        }

        else
        {
          v20 = CopyCGColor(v12);
          if (!atomic_load_explicit(&v20, memory_order_acquire))
          {

LABEL_20:
LABEL_21:
            ColorPaletteTable::Palette::ColorForPaletteEntry(valuePtr, i, &v20, v8);
            goto LABEL_22;
          }
        }

LABEL_22:
        CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), atomic_load_explicit(&v20, memory_order_acquire));
      }
    }
  }

  v14 = 0;
  v15 = atomic_exchange(&Mutable, 0);
  v16 = this + 63;
  atomic_compare_exchange_strong(v16, &v14, v15);
  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  explicit = atomic_load_explicit(v16, memory_order_acquire);
  return explicit;
}

void std::vector<long,TInlineBufferAllocator<long,30ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long,TInlineBufferAllocator<long,30ul>>::__append(a1, a2 - v2);
  }
}

uint64_t TFont::GetVerticalTranslationsForGlyphs(TFont *this, const unsigned __int16 *a2, float64x2_t *a3, uint64_t a4)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(this + 51) + 504))(&v12);
  atomic_load_explicit(&v12, memory_order_acquire);
  GlyphVerticalOffsets = CGFontGetGlyphVerticalOffsets();
  if (GlyphVerticalOffsets)
  {
    TFont::GetScaledMatrix(this, &v11);
    if (a4)
    {
      v8 = *&v11.a;
      v9 = *&v11.c;
      do
      {
        *a3 = vmlaq_n_f64(vmulq_n_f64(v9, a3->f64[1]), v8, a3->f64[0]);
        ++a3;
        --a4;
      }

      while (a4);
    }
  }

  return GlyphVerticalOffsets;
}

void TFont::CopyNameForGlyph(TFont *this@<X0>, CGGlyph a2@<W1>, CFStringRef *a3@<X8>)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(this + 51) + 504))(&v5);
  *a3 = CGFontCopyGlyphNameForGlyph(atomic_load_explicit(&v5, memory_order_acquire), a2);
}

uint64_t TFont::GetGlyphWithName(TFont *this, const __CFString *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(this + 51) + 504))(&v5);
  GlyphWithGlyphName = CGFontGetGlyphWithGlyphName(atomic_load_explicit(&v5, memory_order_acquire), a2);

  return GlyphWithGlyphName;
}

CGFloat TFont::GetStrikethroughPositionAndThickness(TFont *this)
{
  v2 = *(this + 51);
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *&v12.c = v3;
  *&v12.tx = v3;
  *&v12.a = v3;
  TFont::GetScaledMatrix(this, &v12);
  v4 = (*(*v2 + 616))(v2, &v12) * 0.5;
  v11 = v4;
  TFont::GetUnderlinePositionAndThickness(this);
  v10 = v5;
  if (v4 <= 0.0)
  {
    if (!TBaseFont::GetInitializedGraphicsFont(v2) || !CGFontGetParserFont() || (FPFontGetStrikeout() & 1) == 0)
    {
      memset(v9, 170, sizeof(v9));
      (*(*v2 + 488))(&v8, v2, 1330851634);
      OS2::OS2(v9, &v8);

      if (v9[2] < 78)
      {

        return v11;
      }

      v6 = bswap32(*(v9[1] + 14));
      v10 = (bswap32(*(v9[1] + 13)) >> 16);
      v11 = (v6 >> 16);
    }

    return v12.ty + v12.d * v11 + v12.b * 0.0 + fabs(v12.ty + v10 * v12.d + v12.b * 0.0) * -0.5;
  }

  return v4;
}

unint64_t TFont::GetSecondaryScaleData(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 46, memory_order_acquire);
  if (explicit == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = explicit;
  }

  if (!explicit)
  {
    v4 = this[51];
    if (v4 && TFont::IsSystemUIFontAndForShaping(this, &v11))
    {
      v10 = 0xAAAAAAAAAAAAAAAALL;
      TBaseFont::CopyMetadata(v4, 1, &v10);
      v5 = atomic_load_explicit(&v10, memory_order_acquire);
      if (v5)
      {
        v6 = v5;
        Value = CFDictionaryGetValue(v5, @"textscale.secondary");

        if (Value)
        {
          v8 = CFDictionaryGetValue(Value, @"v2");
          if (v8)
          {
            v2 = v8;
            atomic_store(v8, this + 46);

            return v2;
          }
        }
      }

      else
      {
      }
    }

    v2 = 0;
    atomic_store(0xFFFFFFFFFFFFFFFFLL, this + 46);
  }

  return v2;
}

uint64_t TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,unsigned int &>@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t *a3@<X8>)
{
  result = TCFBase<TDescriptor>::Allocate();
  if (result)
  {
    v7 = *a1;
    v8 = *a2;
    *(result + 16) = 0;
    *(result + 24) = TDescriptor::Hash;
    *(result + 32) = 0;
    *(result + 40) = result + 48;
    *(result + 48) = &unk_1EF257E00;
    *(result + 56) = 0;
    *(result + 64) = v8 | 0x80000000;
    *(result + 72) = 0;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }

    *(result + 80) = v7;
    *(result + 88) = 0;
  }

  *a3 = result;
  return result;
}

void TFont::SetOpticalSize(__CTFontDescriptor const*)::$_0::operator()(CFStringRef *a1, uint64_t a2)
{
  v3 = atomic_load_explicit((a2 + 96), memory_order_acquire);
  v4 = v3;
  if (v3 && (Length = CFStringGetLength(v3), v6 = CFStringFind(v4, @"-", 4uLL), v6.length))
  {
    v8.location = v6.location + v6.length;
    v8.length = Length - (v6.location + v6.length);
    *a1 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v4, v8);
  }

  else
  {

    *a1 = 0;
  }
}

void TsbixContext::TsbixContext(TsbixContext *this, id a2)
{
  *this = a2;
  v3 = atomic_load_explicit(this, memory_order_acquire);
  v4 = v3;
  if (v3)
  {
    BytePtr = CFDataGetBytePtr(v3);
  }

  else
  {
    BytePtr = 0;
  }

  *(this + 1) = BytePtr;
  v6 = atomic_load_explicit(this, memory_order_acquire);
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

  *(this + 2) = v9;
  v10 = *(this + 1);
  if (!v10 || !*v10 || (v11 = *(v10 + 4)) == 0 || ((v12 = v10 + 4 * bswap32(v11), v10 <= v12 + 4) ? (v13 = v12 + 8 > v9) : (v13 = 1), v13))
  {
    *(this + 1) = 0;
  }
}

void TFont::CopyVariantsOfGlyph(TFont *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28[4] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28[0] = &unk_1EF257DB8;
  v28[1] = &Mutable;
  v28[3] = v28;
  TOpenTypeMorph::AddVariantsOfGlyph(this, a2);
  std::__function::__value_func<void ()(unsigned short,__CFDictionary const*)>::~__value_func[abi:fn200100](v28);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(this + 51) + 488))(&v25);
  if (atomic_load_explicit(&v25, memory_order_acquire))
  {
    v17 = a3;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v7;
    v24 = v7;
    v21 = v7;
    v22 = v7;
    *v19 = v7;
    v20 = v7;
    explicit = atomic_load_explicit(&v25, memory_order_acquire);
    GlyphCount = TBaseFont::GetGlyphCount(*(this + 51));
    ZapfTable::ZapfTable(v19, explicit, GlyphCount);
    v18 = 0xAAAAAAAAAAAAAAAALL;
    ZapfTable::VariantsForGlyph(v19, a2, &v18);
    v10 = atomic_load_explicit(&v18, memory_order_acquire);
    if (v10)
    {
      Count = CFArrayGetCount(v10);
      if (Count)
      {
        v12 = Count;
        v13 = 0;
        v14 = MEMORY[0x1E695E9C0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
          valuePtr = -21846;
          CFNumberGetValue(ValueAtIndex, kCFNumberShortType, &valuePtr);
          if (valuePtr != a2 && !CFDictionaryContainsKey(atomic_load_explicit(&Mutable, memory_order_acquire), ValueAtIndex))
          {
            v16 = CFArrayCreate(v6, 0, 0, v14);
            CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), ValueAtIndex, v16);
          }

          ++v13;
        }

        while (v12 != v13);
      }
    }

    a3 = v17;
  }

  *a3 = atomic_exchange(&Mutable, 0);
}

__CFString *TFont::DebugDescription(TFont *this)
{
  v6 = &stru_1EF25C610;
  v2 = *(this + 51);
  if (v2)
  {
    v5 = atomic_load_explicit((v2 + 96), memory_order_acquire);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"name = %@, size = %f, matrix = %p, descriptor = %@", atomic_load_explicit(&v6, memory_order_acquire), *(this + 3), *(this + 6), atomic_load_explicit(this + 2, memory_order_acquire));

  return Mutable;
}

void TFont::GetWindowsDescent(TFont *this)
{
  v4 = *(this + 20);
  if (*&v4 == 0.0)
  {
    if (TFont::GetWinMetrics(this, 0, &v4))
    {
      v2 = v4;
    }

    else
    {
      if (*(this + 14))
      {
        v3 = (this + 56);
      }

      else
      {
        TFont::InitStrikeMetrics(this);
      }

      v4 = *(v3 + 2);
      v2 = v4;
    }

    atomic_store(v2, this + 20);
  }
}

unint64_t TFontCascade::InitLastResort(TFontCascade *this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::TDescriptorSource(&v4);
  TDescriptorSource::CopyLastResort(&v5);
  TFontCascade::CreateFallbackFromDescriptor(this, atomic_load_explicit(&v5, memory_order_acquire), 8, &v4);
  this = (this + 32);

  explicit = atomic_load_explicit(this, memory_order_acquire);
  return explicit;
}

void TFontCascade::CreateFallbackFromDescriptor(TFontCascade *this@<X0>, const __CTFontDescriptor *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v8 = a2;
  explicit = atomic_load_explicit((*(atomic_load_explicit(this, memory_order_acquire) + 40) + 168), memory_order_acquire);
  if (explicit)
  {
    a3 = 0;
  }

  v7 = *(this + 44) | a3;
  if (explicit)
  {
    explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  }

  v6 = explicit;
  TCFBase_NEW<CTFont,__CTFontDescriptor const*&,double const&,CGAffineTransform * const&,unsigned int &,__CTFontDescriptor const*>(&v8, this + 21, this + 23, &v7, &v6, a4);
}

unint64_t TFontCascade::InitEmojiFont(TFontCascade *this)
{
  v2 = 88;
  if (*(this + 10) > 0)
  {
    v2 = 72;
  }

  explicit = atomic_load_explicit((this + v2), memory_order_acquire);
  v12 = 0;
  if (*(this + 10) >= 1 && *(this + 12) >= 1)
  {

    v4 = atomic_load_explicit(&v12, memory_order_acquire);
    v5 = atomic_load_explicit(this + 11, memory_order_acquire);
    v13.length = *(this + 12);
    v13.location = 0;
    CFArrayAppendArray(v4, v5, v13);
    explicit = atomic_load_explicit(&v12, memory_order_acquire);
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::TDescriptorSource(&v10);
  if (*(this + 12) <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = explicit;
  }

  TDescriptorSource::CopyEmojiFontDescriptor(&v10, v6, atomic_load_explicit(this + 1, memory_order_acquire), &v11);
  TFontCascade::CreateFallbackFromDescriptor(this, atomic_load_explicit(&v11, memory_order_acquire), 8, &v10);
  v7 = (this + 40);

  v8 = atomic_load_explicit(v7, memory_order_acquire);
  return v8;
}

void TFontCascade::GetFallbackFont(atomic_ullong *this, const TBaseFont *a2, const __CTFontDescriptor *key, unint64_t explicit, double a5, int a6)
{
  keya = key;
  v12 = NSMapGet(*(a2 + 24), key);
  if (v12)
  {
    *this = v12;
    return;
  }

  v24 = 0;
  if (*(a2 + 45))
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    DerivedOpticalFontDescriptor(&v23, explicit, *(a2 + 21), key);
    if (atomic_load_explicit(&v23, memory_order_acquire))
    {

      explicit = atomic_load_explicit(&v24, memory_order_acquire);
      a6 |= 8u;
    }

    else
    {
      v14 = *(*(explicit + 40) + 16);
      if ((TDescriptor::GetSystemUIFontOptions(v13) & v14) == 0)
      {
        LODWORD(v20) = 1024;
        TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,$_26>(&CopyWithVariation, &keya, &v20);

        explicit = atomic_load_explicit(&v24, memory_order_acquire);
      }
    }
  }

  *this = 0xAAAAAAAAAAAAAAAALL;
  TFontCascade::CreateFallbackFromDescriptor(a2, explicit, a6, this);
  if (atomic_load_explicit(this, memory_order_acquire))
  {
    if (!*(a2 + 45))
    {
      goto LABEL_24;
    }

    if (vabdd_f64(CTFontGetWeight(atomic_load_explicit(this, memory_order_acquire)), a5) < 0.001)
    {
      goto LABEL_24;
    }

    v15 = *(*(atomic_load_explicit(this, memory_order_acquire) + 40) + 408);
    if (!v15)
    {
      goto LABEL_24;
    }

    if (((*(*v15 + 104))(v15) & 1) == 0)
    {
      if ((*(v15 + 46) & 0x100) == 0)
      {
        TBaseFont::DetermineFontFlags(v15, 0x100u);
      }

      if ((*(v15 + 45) & 0x100) == 0)
      {
        goto LABEL_24;
      }

      (*(*v15 + 112))(&v21, v15);
      if (!atomic_load_explicit(&v21, memory_order_acquire))
      {
        v18 = v21;
LABEL_20:

LABEL_24:
        NSMapInsert(*(a2 + 24), keya, atomic_load_explicit(this, memory_order_acquire));
        goto LABEL_25;
      }

      Count = CFDictionaryGetCount(atomic_load_explicit(&v21, memory_order_acquire));

      if (!Count)
      {
        goto LABEL_24;
      }
    }

    v16 = CTFontCopyPhysicalFont(atomic_load_explicit(this, memory_order_acquire));
    if (v16)
    {
    }

    v23 = 0xAAAAAAAAAAAAAAAALL;
    v23 = CTFontCopyFontDescriptor(atomic_load_explicit(this, memory_order_acquire));
    v17 = ClassOfWeight(a5);
    CopyWithVariation = 0xAAAAAAAAAAAAAAAALL;
    CopyWithVariation = CTFontDescriptorCreateCopyWithVariation(atomic_load_explicit(&v23, memory_order_acquire), &unk_1EF278058, v17);
    if (atomic_load_explicit(&CopyWithVariation, memory_order_acquire))
    {
      if (!operator==(&CopyWithVariation, &v23))
      {
        v20 = CTFontCreateWithFontDescriptorAndOptions(atomic_load_explicit(&CopyWithVariation, memory_order_acquire), 0.0, 0, 0x400uLL);
      }
    }

    v18 = v23;
    goto LABEL_20;
  }

LABEL_25:
}

uint64_t TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,$_26>(uint64_t *a1, uint64_t *a2, int *a3)
{
  result = TCFBase<TDescriptor>::Allocate();
  if (result)
  {
    v7 = *a2;
    v8 = *a3;
    *(result + 16) = 0;
    *(result + 24) = TDescriptor::Hash;
    *(result + 32) = 0;
    *(result + 40) = result + 48;
    *(result + 48) = &unk_1EF257E00;
    *(result + 56) = 0;
    *(result + 64) = v8 | 0x80000000;
    *(result + 72) = 0;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }

    *(result + 80) = v7;
    *(result + 88) = 0;
  }

  *a1 = result;
  return result;
}

BOOL ShouldUseLastResort(UTF32Char a1)
{
  os_unfair_lock_lock_with_options();
  Mutable = sLastResortSet;
  if (TGenerationSeed::sGeneration != sLastResortSetGeneration)
  {
    if (sLastResortSet)
    {
      CFRelease(sLastResortSet);
    }

    Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
    sLastResortSet = Mutable;
    sLastResortSetGeneration = TGenerationSeed::sGeneration;
  }

  v3 = CFCharacterSetIsLongCharacterMember(Mutable, a1) != 0;
  os_unfair_lock_unlock(&sLastResortSetLock);
  return v3;
}

void AddToUseLastResort(unsigned int a1)
{
  os_unfair_lock_lock_with_options();
  v3.location = a1;
  v3.length = 1;
  CFCharacterSetAddCharactersInRange(sLastResortSet, v3);

  os_unfair_lock_unlock(&sLastResortSetLock);
}

void TFontCascade::CreateFallback(CFStringRef theString@<X2>, uint64_t a2@<X0>, const __CTFont *a3@<X1>, int a4@<W3>, TFontCascade *a5@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 24);
  v83 = a5;
  if (v8 <= 0)
  {
    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
LABEL_159:
      *a5 = 0;
      return;
    }

    v9 = *(atomic_load_explicit(a2, memory_order_acquire) + 40);
    TFont::CopyDescriptor(v9, 1, v95);

    *(a2 + 168) = *(v9 + 24);
    TFont::GetEffectiveMatrix(v9, v95);
    v10 = a2 + 120;
    v11 = *v96;
    *(a2 + 120) = *v95;
    *(a2 + 136) = v11;
    *(a2 + 152) = *&v96[16];
    v12 = vandq_s8(vandq_s8(vceqq_f64(*(a2 + 120), xmmword_18475BD80), vceqq_f64(*(a2 + 136), xmmword_18475A330)), vceqzq_f64(*(a2 + 152)));
    if (vandq_s8(v12, vdupq_laneq_s64(v12, 1)).i64[0] < 0)
    {
      v10 = 0;
    }

    *(a2 + 184) = v10;
    *(a2 + 176) = *(v9 + 12);
    *(a2 + 180) = TFont::IsSystemUIFontAndForShaping(v9, v95);
    v13 = *(v9 + 12);
    (*(**(v9 + 408) + 512))(v95);

    v14 = atomic_load_explicit((a2 + 72), memory_order_acquire);
    v15 = v14;
    if (v14)
    {
      Count = CFArrayGetCount(v14);
    }

    else
    {
      Count = 0;
    }

    *(a2 + 80) = Count;

    if ((v13 & 0x1C0) != 0)
    {
      TFont::UserFallbacksForLanguage(v95, v9, atomic_load_explicit((a2 + 16), memory_order_acquire), (a2 + 48));

      DefaultFallbacks = TFont::GetDefaultFallbacks(v9);
      TCFRef<__CTFont const*>::Retain((a2 + 104), DefaultFallbacks);
    }

    v18 = atomic_load_explicit((a2 + 88), memory_order_acquire);
    v19 = v18;
    if (v18)
    {
      v18 = CFArrayGetCount(v18);
    }

    *(a2 + 96) = v18;
    v20 = v18 + Count;

    v21 = atomic_load_explicit((a2 + 104), memory_order_acquire);
    v22 = v21;
    if (v21)
    {
      v21 = CFArrayGetCount(v21);
    }

    *(a2 + 112) = v21;
    v23 = v21 + v20;

    *(a2 + 24) = v23;
    *(a2 + 192) = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:*(a2 + 24)];
    v8 = *(a2 + 24);
  }

  v86 = v8;
  v24 = a4;
  if (!a4)
  {
    Table = GetTable();
    if (!Table || (v24 = Table[28]) == 0)
    {
      v24 = *(a2 + 48);
    }
  }

  v82 = v24;
  Length = CFStringGetLength(theString);
  v27 = Length;
  if (Length < 1)
  {
LABEL_145:
    v76 = *(a3 + 5);
    if (v76 && v27 >= 1 && *(v76 + 408))
    {
      *&v77 = 0xAAAAAAAAAAAAAAAALL;
      *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v98 = v77;
      v97 = v77;
      *&v96[24] = v77;
      *&v96[8] = v77;
      v95[1] = 0;
      *v96 = 0;
      v95[0] = 0;
      v99 = &v96[8];
      CharactersPtr = CFStringGetCharactersPtr(theString);
      if (!CharactersPtr)
      {
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::resize(v95, v27);
        v101.location = 0;
        v101.length = v27;
        CFStringGetCharacters(theString, v101, v95[0]);
        CharactersPtr = v95[0];
      }

      valuePtr = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::TDescriptorSource(&v93);
      TDescriptorSource::CopySystemWideFallbackDescriptorForCharacters(&v93, *(v76 + 408), CharactersPtr, v27, *(a2 + 180), (*(v76 + 12) >> 6) & 7, &valuePtr);
      if (atomic_load_explicit(&valuePtr, memory_order_acquire))
      {
        *v83 = 0xAAAAAAAAAAAAAAAALL;
        TFontCascade::CreateFallbackFromDescriptor(a2, atomic_load_explicit(&valuePtr, memory_order_acquire), 8, v83);
        if (atomic_load_explicit(v83, memory_order_acquire))
        {
          TCFRef<__CTFont const*>::Retain((a2 + 64), atomic_load_explicit(v83, memory_order_acquire));

          valuePtr = v95;
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
          return;
        }
      }

      valuePtr = v95;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
    }

    a5 = v83;
    goto LABEL_159;
  }

  v28 = 0;
  v80 = Length;
  v81 = theString;
  v85 = a4;
  while (1)
  {
    LODWORD(v93) = 0;
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v28);
    LOWORD(v93) = CharacterAtIndex;
    if ((CharacterAtIndex & 0xFC00) == 0xD800 && v28 + 1 < v27)
    {
      v30 = CFStringGetCharacterAtIndex(theString, v28 + 1);
      WORD1(v93) = v30;
      v31 = v30 & 0xFC00;
      v32 = v30 + (v93 << 10) - 56613888;
      if ((v93 & 0xFC00) != 0xD800)
      {
        v32 = v93;
      }

      v33 = v31 == 56320;
      if (v31 == 56320)
      {
        ++v28;
      }

      v84 = v28;
      v34 = 1;
      if (v33)
      {
        v34 = 2;
      }

      v91 = v34;
      CharacterAtIndex = v33 ? v32 : v93;
    }

    else
    {
      v84 = v28;
      v91 = 1;
    }

    v35 = v86;
    if (!ShouldUseLastResort(CharacterAtIndex))
    {
      break;
    }

LABEL_35:
    v28 = v84 + 1;
    v27 = v80;
    theString = v81;
    if (v84 + 1 >= v80)
    {
      goto LABEL_145;
    }
  }

  v89 = v82;
  if (!a4)
  {
    v89 = v82;
    if (!*(a2 + 96))
    {
      if (u_hasBinaryProperty(CharacterAtIndex, UCHAR_EMOJI_PRESENTATION))
      {
        v36 = 2;
      }

      else
      {
        v36 = v82;
      }

      v89 = v36;
    }
  }

  v37 = 0;
  explicit = 0;
  v88 = CharacterAtIndex - 57345;
  v40 = CharacterAtIndex == 1051575 || CharacterAtIndex - 57345 < 0x537;
  v90 = v40;
  v44 = (CharacterAtIndex < 0xF0000 || CharacterAtIndex - 1113088 < 0x3FE) && CharacterAtIndex >> 11 > 0x1E || CharacterAtIndex < 0xE000;
  v92 = v44;
  while (2)
  {
    v45 = v89;
LABEL_63:
    while (2)
    {
      while (2)
      {
        if (v37 >= v35)
        {
          v46 = 0;
LABEL_98:
          v54 = 0;
          v60 = 1;
          if (a4 || explicit)
          {
            inited = 0;
          }

          else
          {
            if (atomic_load_explicit((a2 + 40), memory_order_acquire))
            {
              explicit = atomic_load_explicit((a2 + 40), memory_order_acquire);
            }

            else
            {
              explicit = TFontCascade::InitEmojiFont(a2);
            }

            v54 = 0;
            if (explicit == a3)
            {
              inited = 0;
            }

            else
            {
              inited = explicit;
            }

            v60 = 1;
          }

          goto LABEL_112;
        }

        v46 = 0;
        while (1)
        {
          v47 = v37;
          if (!v37 && v45 == 2 && !explicit)
          {
            if (atomic_load_explicit((a2 + 40), memory_order_acquire))
            {
              inited = atomic_load_explicit((a2 + 40), memory_order_acquire);
              if (inited)
              {
                goto LABEL_108;
              }
            }

            else
            {
              inited = TFontCascade::InitEmojiFont(a2);
              if (inited)
              {
LABEL_108:
                v54 = 0;
                v37 = 0;
                explicit = inited;
                goto LABEL_111;
              }
            }

            explicit = -1;
          }

          ++v37;
          v49 = *(a2 + 80);
          v50 = *(a2 + 96);
          if (*(a2 + 112) + v50 + v49 <= v47)
          {
            goto LABEL_95;
          }

          if (v50 + v49 <= v47)
          {
            v46 |= 8u;
            v51 = atomic_load_explicit((a2 + 104), memory_order_acquire);
            v52 = v47 - v50 - v49;
          }

          else if (v49 <= v47)
          {
            v51 = atomic_load_explicit((a2 + 88), memory_order_acquire);
            v52 = v47 - v49;
          }

          else
          {
            v46 |= 8u;
            v51 = atomic_load_explicit((a2 + 72), memory_order_acquire);
            v52 = v47;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v51, v52);
          v54 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            goto LABEL_95;
          }

          v55 = v92;
          if ((v46 & 8) == 0)
          {
            v55 = 1;
          }

          if ((v55 & 1) == 0)
          {
            if (!v90)
            {
              goto LABEL_95;
            }

            if (v88 <= 0x536)
            {
              v58 = *(ValueAtIndex + 5);
              if ((*(v58 + 16) & 0x80000000) == 0)
              {
                TDescriptor::InitBaseFont(*(ValueAtIndex + 5), 0x8000, 0.0);
              }

              v59 = atomic_load_explicit((v58 + 32), memory_order_acquire);
              if (v59)
              {
                if (!(*(*v59 + 720))(v59))
                {
                  goto LABEL_95;
                }
              }
            }
          }

          if (v45 != 1)
          {
            goto LABEL_109;
          }

          v56 = *(v54 + 40);
          if ((*(v56 + 16) & 0x80000000) == 0)
          {
            TDescriptor::InitBaseFont(*(v54 + 40), 0x8000, 0.0);
          }

          v57 = atomic_load_explicit((v56 + 32), memory_order_acquire);
          if (!v57)
          {
            break;
          }

          if (!(*(*v57 + 720))(v57))
          {
LABEL_109:
            inited = 0;
            goto LABEL_111;
          }

LABEL_95:
          if (v35 == v37)
          {
            v37 = v35;
            goto LABEL_98;
          }
        }

        inited = 0;
        v37 = v47 + 1;
LABEL_111:
        v60 = v54 == 0;
        if (!v54)
        {
LABEL_112:
          if (!inited)
          {
            if (v37 == v35)
            {
              inited = atomic_load_explicit((a2 + 64), memory_order_acquire);
            }

            else
            {
              inited = 0;
            }

            ++v37;
          }
        }

        if (inited)
        {
          v60 = 0;
        }

        if (v60)
        {
          goto LABEL_35;
        }

        if (!inited)
        {
          v62 = *(v54 + 40);
          if ((*(v62 + 16) & 0x80000000) == 0)
          {
            TDescriptor::InitBaseFont(*(v54 + 40), 0x8000, 0.0);
          }

          v61 = atomic_load_explicit((v62 + 32), memory_order_acquire);
          v45 = v89;
          if (v61)
          {
            goto LABEL_126;
          }

          continue;
        }

        break;
      }

      v61 = *(inited[5] + 408);
      if (!v61)
      {
        continue;
      }

      break;
    }

LABEL_126:
    if ((*(*v61 + 16))(v61) == 1414743620)
    {
      v95[0] = 0xAAAAAAAAAAAAAAAALL;
      (*(*v61 + 512))(v95, v61);
      v63 = atomic_load_explicit(v95, memory_order_acquire);
      if (!v63 || (v64 = CFArrayGetCount(v63)) == 0)
      {
LABEL_137:

        a4 = v85;
        v35 = v86;
        continue;
      }

      v65 = v64;
      v66 = 0;
      while (1)
      {
        v67 = CFArrayGetValueAtIndex(v63, v66);
        v68 = v67;
        v69 = *(v67 + 5);
        if ((*(v69 + 16) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(*(v67 + 5), 0, 0.0);
        }

        v70 = atomic_load_explicit((v69 + 32), memory_order_acquire);
        if (v70)
        {
          if ((*(*v70 + 816))(v70, &v93, v91, 0) >= 1)
          {
            break;
          }
        }

        if (v65 == ++v66)
        {
          goto LABEL_137;
        }
      }

      Weight = CTFontGetWeight(a3);
      valuePtr = CTFontCopyAttribute(a3, @"CTFontLegibilityWeightAttribute");
      v72 = atomic_exchange(&valuePtr, 0);

      if (v72)
      {
        v73 = v72;
        LODWORD(valuePtr) = -1431655766;
        CFNumberGetValue(v73, kCFNumberIntType, &valuePtr);
        v74 = valuePtr;

        if (v74 == 1)
        {
          Weight = CTFontGetAccessibilityBoldWeightOfWeight(Weight);
        }
      }

      if ((*(*v61 + 848))(v61))
      {
        v75 = v61;
      }

      else
      {
        v75 = v70;
      }

      TFontCascade::GetFallbackFont(v83, a2, v75, v68, Weight, v46);
    }

    else
    {
      if ((*(*v61 + 816))(v61, &v93, v91, 0) < 1)
      {
        goto LABEL_63;
      }

      if (inited)
      {
        *v83 = inited;
      }

      else
      {
        v79 = CTFontGetWeight(a3);
        TFontCascade::GetFallbackFont(v83, a2, v61, v54, v79, v46);
      }
    }

    break;
  }
}

void TCFBase_NEW<CTFont,__CTFontDescriptor const*&,double const&,CGAffineTransform * const&,unsigned int &,__CTFontDescriptor const*>(const __CTFontDescriptor **a1@<X0>, double *a2@<X1>, const CGAffineTransform **a3@<X2>, int *a4@<X3>, const __CTFontDescriptor **a5@<X4>, void *a6@<X8>)
{
  v12 = TCFBase<TFont>::Allocate();
  v13 = v12;
  if (v12)
  {
    v14 = *a1;
    v15 = *a2;
    v16 = *a3;
    v17 = *a4;
    v18 = *a5;
    v12[2] = 0;
    v12[3] = TFont::Hash;
    v12[4] = 0;
    v12[5] = v12 + 6;
    TFont::TFont((v12 + 6), v14, v15, v16, v17, v18);
  }

  *a6 = v13;
}

uint64_t GetGlyphsForLongCharacters(const TFont *a1, const unsigned int *a2, unsigned __int16 *a3, int64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[3] = v8;
  v33[2] = v8;
  v33[1] = v8;
  v33[0] = v8;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v34 = v33;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve(&v30, a4);
  if (a4 < 1)
  {
LABEL_12:
    v19 = (*(**(a1 + 51) + 672))(*(a1 + 51), v30, a3, a4);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      while (1)
      {
        v11 = a2[v10];
        if (!HIWORD(v11))
        {
          break;
        }

        LOWORD(v25) = (v11 >> 10) - 10304;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v30, &v25);
        LOWORD(v25) = v11 & 0x3FF | 0xDC00;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v30, &v25);
        v9 = 1;
        if (a4 - 1 == v10++)
        {
          goto LABEL_10;
        }
      }

      LOWORD(v25) = a2[v10];
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v30, &v25);
      ++v10;
    }

    while (a4 != v10);
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v13 = v30;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28[2] = v14;
    v28[3] = v14;
    v28[0] = v14;
    v28[1] = v14;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v29 = v28;
    v15 = v31 - v30;
    v16 = (v31 - v30) >> 1;
    if (v31 == v30)
    {
      v18 = 0;
    }

    else
    {
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&v25, (v31 - v30) >> 1);
      v17 = v26;
      bzero(v26, ((v15 - 2) & 0xFFFFFFFFFFFFFFFELL) + 2);
      v26 = &v17[v15];
      v13 = v30;
      v18 = v25;
    }

    (*(**(a1 + 51) + 672))(*(a1 + 51), v13, v18, v16);
    if (v16 < 1)
    {
      v19 = 0;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v21 = v25;
      v22 = (v26 - v25) >> 1;
      do
      {
        if (v22 <= v20)
        {
          __break(1u);
        }

        if (*(v21 + v20))
        {
          ++v19;
        }

        *a3++ = *(v21 + v20);
        if (*(a2 + 1))
        {
          ++v20;
        }

        ++v20;
        ++a2;
      }

      while (v20 < v16);
    }

    v24 = &v25;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v24);
  }

  v25 = &v30;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v25);
  return v19;
}

uint64_t std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](uint64_t result, __int16 *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v7 = *result;
    v8 = v5 - *result;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    v14 = result + 24;
    v23[4] = v3 + 24;
    if (v13)
    {
      v15 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,30ul>>(v14, v13);
      v13 = v16;
      v7 = *v3;
      v8 = *(v3 + 8) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = (v15 + 2 * v9);
    v18 = v15 + 2 * v13;
    v19 = *a2;
    v20 = &v17[-(v8 >> 1)];
    *v17 = v19;
    v6 = v17 + 1;
    memcpy(v20, v7, v8);
    v21 = *v3;
    *v3 = v20;
    *(v3 + 8) = v6;
    v22 = *(v3 + 16);
    *(v3 + 16) = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v23);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return result;
}

CTFontRef VerticalCopyOf@<X0>(CTFontRef font@<X0>, CTFontRef *a2@<X8>)
{
  if (qword_1ED5679A0 != -1)
  {
    dispatch_once_f(&qword_1ED5679A0, 0, VerticalCopyOf(__CTFont const*)::$_0::__invoke);
  }

  result = CTFontCreateCopyWithAttributes(font, 0.0, 0, qword_1ED567998);
  *a2 = result;
  return result;
}

uint64_t std::unordered_map<unsigned short,OTL::FeatureTable const*>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short const,OTL::FeatureTable const*> const&>(a1, i + 8);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short const,OTL::FeatureTable const*> const&>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

CGFloat std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:fn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<TFont::GetLigatureCaretPositionsForGlyph(unsigned short,double *,long)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,double,unsigned short> &&>(TFont ***a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  TFont::GetScaledMatrix(**a1, &v5);
  result = v5.tx + v5.c * 0.0 + v5.a * v3;
  *v2[2] = result;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:fn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<TFont::GetLigatureCaretPositionsForGlyph(unsigned short,double *,long)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,double,unsigned short> &&>(TBaseFont ****a1, __int16 *a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    v4 = *a2;
    TFont::GetControlPointPositions(v3, *(v2 + 4), &v4, v2[2], 1uLL);
  }
}

uint64_t std::__optional_destruct_base<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,false>::__optional_destruct_base[abi:fn200100]<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>>(uint64_t a1, int **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 144) = a1 + 24;
  if (v4 != v3)
  {
    std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vallocate[abi:fn200100](a1, v4 - v3);
    v5 = *(a1 + 8);
    do
    {
      v6 = *v3++;
      *v5++ = v6;
    }

    while (v3 != v4);
    *(a1 + 8) = v5;
  }

  *(a1 + 152) = 1;
  return a1;
}

void std::vector<long,TInlineBufferAllocator<long,30ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    *v17 = v6;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v16, v10, v7 >> 3, a1 + 24);
    v11 = v17[0];
    bzero(v17[0], 8 * a2);
    v17[0] = &v11[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = *(&v16 + 1) - v12;
    memcpy((*(&v16 + 1) - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = *v17;
    v17[0] = v14;
    v17[1] = v15;
    *&v16 = v14;
    *(&v16 + 1) = v14;
    std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v16);
  }
}

void anonymous namespace::TSingleAttrDescriptor::~TSingleAttrDescriptor(id *this)
{
  *this = &unk_1EF257A38;
  v2 = this + 2;
}

{
  *this = &unk_1EF257A38;
  v2 = this + 2;

  JUMPOUT(0x1865F22D0);
}

void VerticalCopyOf(__CTFont const*)::$_0::__invoke()
{
  LODWORD(valuePtr) = 2;
  v0 = *MEMORY[0x1E695E480];
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v3 = v1;
  valuePtr = @"NSCTFontOrientationAttribute";
  v2 = CFDictionaryCreate(v0, &valuePtr, &v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED567998 = CTFontDescriptorCreateWithAttributes(v2);
}

__n128 std::__function::__func<TFont::InitShapingGlyphs(void)::$_0,std::allocator<TFont::InitShapingGlyphs(void)::$_0>,void ()(__CFDictionary *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257A58;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TFont::InitShapingGlyphs(void)::$_4,std::allocator<TFont::InitShapingGlyphs(void)::$_4>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF257B78;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<TFont::InitShapingGlyphs(void)::$_5,std::allocator<TFont::InitShapingGlyphs(void)::$_5>,void ()(__CFDictionary *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257BC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0>,void ()(unsigned short,unsigned short)>::~__func(uint64_t a1)
{
  *a1 = &unk_1EF257C08;

  return a1;
}

void std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0>,void ()(unsigned short,unsigned short)>::~__func(uint64_t a1)
{
  *a1 = &unk_1EF257C08;

  JUMPOUT(0x1865F22D0);
}

id std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0>,void ()(unsigned short,unsigned short)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1EF257C08;
  a2[1] = v3;
  result = atomic_load_explicit((a1 + 16), memory_order_acquire);
  a2[2] = result;
  return result;
}

void std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0>,void ()(unsigned short,unsigned short)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_0>,void ()(unsigned short,unsigned short)>::operator()(uint64_t a1, CFRange a2)
{
  a2.location = *a2.location;
  v2 = *a2.length;
  if (LODWORD(a2.location) <= v2 && *(a1 + 8) > v2)
  {
    a2.length = v2 - a2.location + 1;
    CFBitVectorSetBits(atomic_load_explicit((a1 + 16), memory_order_acquire), a2, 1u);
  }
}

uint64_t std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_1,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1EF257C50;

  return a1;
}

void std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_1,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1EF257C50;

  JUMPOUT(0x1865F22D0);
}

id std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_1,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_1>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1EF257C50;
  result = atomic_load_explicit((a1 + 8), memory_order_acquire);
  a2[1] = result;
  return result;
}

void std::__function::__func<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_1,std::allocator<TFont::CoverageForFeatureSetting(CTFeatureSetting *)::$_1>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

__n128 std::__function::__func<TFont::GetBoundingBoxesForGlyphs(unsigned short const*,CGRect *,long,CTFontOrientation)::$_0,std::allocator<TFont::GetBoundingBoxesForGlyphs(unsigned short const*,CGRect *,long,CTFontOrientation)::$_0>,void ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257C98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float64x2_t std::__function::__func<TFont::GetBoundingBoxesForGlyphs(unsigned short const*,CGRect *,long,CTFontOrientation)::$_0,std::allocator<TFont::GetBoundingBoxesForGlyphs(unsigned short const*,CGRect *,long,CTFontOrientation)::$_0>,void ()(long)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = (**(a1 + 8) + 32 * *a2);
  result = vmulq_n_f64(v3[1], *v2);
  *v3 = vmulq_n_f64(*v3, *v2);
  v3[1] = result;
  return result;
}

__n128 std::__function::__func<TFont::GetBoundingBoxesForGlyphs(unsigned short const*,CGRect *,long,CTFontOrientation)::$_1,std::allocator<TFont::GetBoundingBoxesForGlyphs(unsigned short const*,CGRect *,long,CTFontOrientation)::$_1>,void ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257CE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<TFont::GetBoundingBoxesForGlyphs(CGAffineTransform const*,unsigned int,unsigned short const*,CGRect *,long,CTFontOrientation)::$_0,std::allocator<TFont::GetBoundingBoxesForGlyphs(CGAffineTransform const*,unsigned int,unsigned short const*,CGRect *,long,CTFontOrientation)::$_0>,void ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257D28;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<TFont::GetBoundingBoxesForGlyphs(CGAffineTransform const*,unsigned int,unsigned short const*,CGRect *,long,CTFontOrientation)::$_0,std::allocator<TFont::GetBoundingBoxesForGlyphs(CGAffineTransform const*,unsigned int,unsigned short const*,CGRect *,long,CTFontOrientation)::$_0>,void ()(long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v19.origin.x = (**(a1 + 16))(**(a1 + 24), *(**(a1 + 32) + 2 * *a2));
  v4 = (**(a1 + 8) + 32 * v3);
  *v4 = v19;
  v5 = *(a1 + 40);
  v6 = *v5;
  v7 = v5[2];
  *&v18.c = v5[1];
  *&v18.tx = v7;
  *&v18.a = v6;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  *v4 = v20;
  v21 = CGRectOffset(v20, **(a1 + 48), *(*(a1 + 48) + 8));
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  *(**(a1 + 8) + 32 * v3) = v21;
  v12 = *(a1 + 56);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v21.origin.x = *v12;
  v21.origin.y = v14;
  v21.size.width = v15;
  v21.size.height = v16;
  if (CGRectIsEmpty(v21))
  {
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
  }

  else
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    if (!CGRectIsEmpty(v22))
    {
      v23.origin.x = v13;
      v23.origin.y = v14;
      v23.size.width = v15;
      v23.size.height = v16;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v24 = CGRectUnion(v23, v25);
      v13 = v24.origin.x;
      v14 = v24.origin.y;
      v15 = v24.size.width;
      v16 = v24.size.height;
    }
  }

  v17 = *(a1 + 56);
  *v17 = v13;
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = v16;
}

__n128 std::__function::__func<TFont::GetBoundingBoxesForGlyphs(CGAffineTransform const*,unsigned int,unsigned short const*,CGRect *,long,CTFontOrientation)::$_1,std::allocator<TFont::GetBoundingBoxesForGlyphs(CGAffineTransform const*,unsigned int,unsigned short const*,CGRect *,long,CTFontOrientation)::$_1>,void ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257D70;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<TFont::GetBoundingBoxesForGlyphs(CGAffineTransform const*,unsigned int,unsigned short const*,CGRect *,long,CTFontOrientation)::$_1,std::allocator<TFont::GetBoundingBoxesForGlyphs(CGAffineTransform const*,unsigned int,unsigned short const*,CGRect *,long,CTFontOrientation)::$_1>,void ()(long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v14.origin.x = (**(a1 + 16))(**(a1 + 24), *(a1 + 32), *(**(a1 + 40) + 2 * *a2));
  *(**(a1 + 8) + 32 * v3) = v14;
  v15 = CGRectOffset(v14, **(a1 + 48), *(*(a1 + 48) + 8));
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  *(**(a1 + 8) + 32 * v3) = v15;
  v8 = *(a1 + 56);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v15.origin.x = *v8;
  v15.origin.y = v10;
  v15.size.width = v11;
  v15.size.height = v12;
  if (CGRectIsEmpty(v15))
  {
    v9 = x;
    v10 = y;
    v11 = width;
    v12 = height;
  }

  else
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (!CGRectIsEmpty(v16))
    {
      v17.origin.x = v9;
      v17.origin.y = v10;
      v17.size.width = v11;
      v17.size.height = v12;
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v18 = CGRectUnion(v17, v19);
      v9 = v18.origin.x;
      v10 = v18.origin.y;
      v11 = v18.size.width;
      v12 = v18.size.height;
    }
  }

  v13 = *(a1 + 56);
  *v13 = v9;
  v13[1] = v10;
  v13[2] = v11;
  v13[3] = v12;
}

uint64_t std::__function::__func<TFont::CopyVariantsOfGlyph(unsigned short)::$_0,std::allocator<TFont::CopyVariantsOfGlyph(unsigned short)::$_0>,void ()(unsigned short,__CFDictionary const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF257DB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<TFont::CopyVariantsOfGlyph(unsigned short)::$_0,std::allocator<TFont::CopyVariantsOfGlyph(unsigned short)::$_0>,void ()(unsigned short,__CFDictionary const*)>::operator()(uint64_t a1, unsigned __int16 *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  TCFNumber::TCFNumber<int>(&v12, v4);
  v6 = *(a1 + 8);
  v7 = atomic_load_explicit(&v12, memory_order_acquire);
  Value = CFDictionaryGetValue(atomic_load_explicit(v6, memory_order_acquire), v7);

  if (Value)
  {
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_8;
    }

    Value = Mutable;
    v10 = *(a1 + 8);
    v11 = atomic_load_explicit(&v12, memory_order_acquire);
    CFDictionarySetValue(atomic_load_explicit(v10, memory_order_acquire), v11, Value);

    CFRelease(Value);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v13.length = CFArrayGetCount(Value);
  v13.location = 0;
  if (!CFArrayContainsValue(Value, v13, v5))
  {
    CFArrayAppendValue(Value, v5);
  }

LABEL_8:
}

uint64_t std::__function::__value_func<void ()(unsigned short,__CFDictionary const*)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t HangulShapingEngine::CanShape(HangulShapingEngine *this)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v1 = *(*(*(this + 1) + 496) + 408);
  if (!v1)
  {
    return 0;
  }

  if (!(*(*v1 + 712))(*(*(*(this + 1) + 496) + 408)))
  {
    v4[0] = 0xAAAAAAAAAAAAAAAALL;
    v4[1] = 0xAAAAAAAAAAAAAAAALL;
    return TBaseFont::GetOS2UnicodeRanges(v1, v4, 0) && (v4[0] & 0x10000000) != 0;
  }

  v2 = *(*v1 + 352);

  return v2(v1, &unk_1EF27B718);
}

uint64_t HangulShapingEngine::SetFeatures(HangulShapingEngine *this, OTL::GSUB *a2, OTL::GlyphLookups *a3)
{
  v141[35] = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  if (*(v5 + 40) == -1)
  {
    TRunGlue::ComputeEndIndex(*(this + 1));
  }

  if (*(v5 + 48) < 1)
  {
    return 0;
  }

  v107 = a3;
  v105 = this;
  v6 = 0;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v124 = v7;
  v122 = v7;
  v123 = v7;
  v120 = v7;
  v121 = v7;
  v118[2] = v7;
  v119 = v7;
  v118[0] = v7;
  v118[1] = v7;
  do
  {
    v8 = &v118[v6];
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[5] = &v118[v6 + 1] + 8;
    v6 += 3;
  }

  while (v6 != 9);
  for (i = 0; i != 3; ++i)
  {
    *&v137 = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v135 = v10;
    v136 = v10;
    v133 = v10;
    v134 = v10;
    v131 = v10;
    v132 = v10;
    v130 = v10;
    v129 = 0uLL;
    v128 = 0;
    *(&v137 + 1) = &v130;
    v114 = *&HangulShapingEngine::SetFeatures(OTL::GSUB &,OTL::GlyphLookups &)::tagArray[4 * i];
    OTL::FeatureBuffer::FeatureBuffer(v141, &v114, 1);
    OTL::GCommon::GetLookups(a2, v141, &v128, 0);
    *&v125 = v141;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v125);
    v11 = v128;
    v12 = v129;
    if (v128 != v129)
    {
      v13 = &v118[3 * i];
      v14 = *(v13 + 1);
      do
      {
        v15 = *v11;
        v16 = v11[1];
        v17 = *(v13 + 2);
        if (v14 >= v17)
        {
          v141[4] = 0xAAAAAAAAAAAAAAAALL;
          *&v18 = 0xAAAAAAAAAAAAAAAALL;
          *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v141 = v18;
          *&v141[2] = v18;
          v19 = (v14 - *v13) >> 2;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v21 = v17 - *v13;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          std::__split_buffer<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,4ul> &>::__split_buffer(v141, v22, v19, v13 + 24);
          *v141[2] = v15 | (v16 << 16);
          v141[2] += 4;
          v23 = *(v13 + 1) - *v13;
          v24 = v141[1] - v23;
          memcpy((v141[1] - v23), *v13, v23);
          v25 = *v13;
          *v13 = v24;
          v26 = *(v13 + 2);
          v112 = v141[2];
          *(v13 + 8) = *&v141[2];
          v141[2] = v25;
          v141[3] = v26;
          v141[0] = v25;
          v141[1] = v25;
          std::__split_buffer<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,4ul> &>::~__split_buffer(v141);
          v14 = v112;
        }

        else
        {
          *v14++ = v15 | (v16 << 16);
        }

        *(v13 + 1) = v14;
        v11 += 2;
      }

      while (v11 != v12);
    }

    v141[0] = &v128;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v141);
  }

  v27 = *(v105 + 1);
  v28 = TRunGlue::length(v27);
  v128 = *v105;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v140 = 0;
  v139 = 0u;
  *&v139 = *(v128 + 2);
  v117 = -1;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v141[31] = v29;
  *&v141[29] = v29;
  *&v141[27] = v29;
  *&v141[25] = v29;
  *&v141[23] = v29;
  *&v141[21] = v29;
  *&v141[19] = v29;
  *&v141[17] = v29;
  *&v141[15] = v29;
  *&v141[13] = v29;
  *&v141[11] = v29;
  *&v141[9] = v29;
  *&v141[7] = v29;
  *&v141[5] = v29;
  *&v141[3] = v29;
  memset(v141, 0, 24);
  v141[33] = &v141[3];
  if (!v28)
  {
    v96 = 0;
    goto LABEL_133;
  }

  v30 = v28;
  v31 = 0;
  v103 = 0;
  v104 = 0;
  v32 = 0;
  v33 = 0;
  v34 = -1;
  v35 = -1;
  v36 = -1;
  v106 = v27;
  do
  {
    StringIndex = TRunGlue::GetStringIndex(v27, v33);
    v113 = v33 + 1;
    ca = TCharStreamIterator::GetChar(&v128, StringIndex);
    if (ca >> 1 == 6167)
    {
      Advance = TRunGlue::GetAdvance(v27, v33);
      v39 = Advance;
      if (v31)
      {
        if (Advance != 0.0)
        {
          v40 = v33++;
          TRunGlue::Rotate(*(v105 + 1), v32, v40, v113, 0);
          if (v141[0] != v141[1])
          {
            v141[1] -= 8;
          }

          ++v34;
          ++v35;
          if (v36 == -1)
          {
            v36 = -1;
          }

          else
          {
            ++v36;
          }

          v103 = 1;
          goto LABEL_57;
        }
      }

      else
      {
        v52 = v117;
        if (v117 == 0xFFFF)
        {
          LOWORD(v125) = 9676;
          v53 = *(*(*(v105 + 1) + 496) + 408);
          (*(*v53 + 672))(v53, &v125, &v117, 1);
          v52 = v117;
        }

        if (v52)
        {
          v54 = *(v105 + 1);
          LOWORD(v125) = v52;
          if (TRunGlue::DoGlyphInsertion(v54, &v125, 1u, (v39 == 0.0) ^ (v54[6] < 0), 0, v33, v33, 1, 0))
          {
            v104 = 1;
            v142.location = v33;
            v142.length = 1;
            OTL::GlyphLookups::Substituted(v107, v142, 2);
            v33 += 2;
            ++v30;
            v27 = v106;
LABEL_57:
            *&v125 = v33 - 1;
            std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](v141, &v125);
            v31 = 0;
            v59 = v33;
            goto LABEL_64;
          }

          v104 = 1;
        }

        v27 = v106;
      }

      ++v33;
      goto LABEL_57;
    }

    v108 = v30;
    if (v34 != -1)
    {
      v42 = *(&v118[0] + 1);
      for (j = *&v118[0]; j != v42; ++j)
      {
        v43 = *j;
        v31 = v31 & 0xFFFFFFFF00000000 | v43;
        OTL::GlyphLookups::SetLookupInRange<false>(v107, v31, v34, 1);
      }

      v45 = *(&v119 + 1);
      for (k = v119; k != v45; ++k)
      {
        v46 = *k;
        v34 = v34 & 0xFFFFFFFF00000000 | v46;
        OTL::GlyphLookups::SetLookupInRange<false>(v107, v34, v35, 1);
      }

      if (v36 != -1)
      {
        v48 = *(&v122 + 1);
        for (m = v122; m != v48; ++m)
        {
          v49 = *m;
          v34 = v34 & 0xFFFFFFFF00000000 | v49;
          OTL::GlyphLookups::SetLookupInRange<false>(v107, v34, v36, 1);
        }
      }
    }

    v50 = ca;
    IntPropertyValue = u_getIntPropertyValue(ca, UCHAR_HANGUL_SYLLABLE_TYPE);
    v31 = IntPropertyValue;
    if ((IntPropertyValue - 2) < 2)
    {
      v27 = v106;
      goto LABEL_63;
    }

    v27 = v106;
    if (IntPropertyValue == 1)
    {
      if (v113 == v30)
      {
        v31 = 1;
        goto LABEL_63;
      }

      v55 = TRunGlue::GetStringIndex(v106, v113);
      Char = TCharStreamIterator::GetChar(&v128, v55);
      v102 = 0;
      v57 = v33 + 2;
      v58 = 1;
      v31 = 1;
    }

    else
    {
      if ((ca + 10332) < 0xD45Cu)
      {
        v31 = 0;
        goto LABEL_63;
      }

      if (((-16384 * (ca + 21504)) | ((28087 * (ca + 21504)) >> 2)) >= 0x925u)
      {
        v31 = 5;
LABEL_62:
        v32 = v33;
LABEL_63:
        *&v125 = v33;
        std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](v141, &v125);
        v36 = -1;
        v35 = -1;
        v34 = -1;
        v33 = v32;
        v59 = v113;
        goto LABEL_64;
      }

      v58 = 0;
      v50 = ((28533 * (ca + 21504)) >> 24) | 0x1100;
      Char = (ca + 21504) % 0x24Cu / 0x1C + 4449;
      v102 = 1;
      v31 = 4;
      v57 = v33 + 1;
    }

    if (u_getIntPropertyValue(Char, UCHAR_HANGUL_SYLLABLE_TYPE) != 2)
    {
      goto LABEL_62;
    }

    v101 = v58;
    if (v57 == v30)
    {
      v60 = 0;
      v61 = v30;
    }

    else
    {
      v62 = TRunGlue::GetStringIndex(v106, v57);
      v63 = TCharStreamIterator::GetChar(&v128, v62);
      v64 = u_getIntPropertyValue(v63, UCHAR_HANGUL_SYLLABLE_TYPE);
      if (v64 == 3)
      {
        v65 = v57 + 1;
      }

      else
      {
        v65 = v57;
      }

      if (v64 == 3)
      {
        v60 = v63;
      }

      else
      {
        v60 = 0;
      }

      v61 = v65;
    }

    if (v50 - 4352 > 0x12)
    {
      goto LABEL_83;
    }

    if ((Char - 4449) > 0x14u)
    {
      goto LABEL_83;
    }

    v66 = v60 - 4519;
    if (v60)
    {
      if ((v60 - 4519) > 0x1Bu)
      {
        goto LABEL_83;
      }
    }

    if (!v60)
    {
      v66 = 0;
    }

    LOWORD(v114) = 28 * Char + 588 * v50 + v66 - 18076;
    v116 = -21846;
    if (!(*(**(*(*(v105 + 1) + 496) + 408) + 672))())
    {
      v27 = v106;
LABEL_83:
      v69 = v102;
      if (!v60)
      {
        v69 = 0;
      }

      if (v69 == 1)
      {
        if ((ca + 10332) >= 0xD45Cu)
        {
          LOWORD(v50) = ((ca + 21504) / 0x24Cu) | 0x1100;
          Char = (ca + 21504) % 0x24Cu / 0x1C + 4449;
        }

        LOWORD(v125) = v50;
        WORD1(v125) = Char;
        WORD2(v125) = v60;
        v114 = -1431655766;
        v115 = -21846;
        if ((*(**(*(*(v105 + 1) + 496) + 408) + 672))() == 3)
        {
          TRunGlue::SetGlyphID<true>(*(v105 + 1), v33, v114);
          if (TRunGlue::DoGlyphInsertion(*(v105 + 1), &v114 + 1, 1u, 0, 0, v33, v33, 0, 0))
          {
            v143.location = v33;
            v143.length = 1;
            OTL::GlyphLookups::Substituted(v107, v143, 2);
            ++v61;
            v108 = v30 + 1;
          }

          TRunGlue::SetGlyphID<true>(*(v105 + 1), v33 + 2, v115);
          v104 = 1;
        }

        v30 = v108;
      }

      else if (!v60)
      {
        v36 = -1;
        goto LABEL_95;
      }

      v36 = v33 + 2;
LABEL_95:
      *&v125 = v61 - 1;
      std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](v141, &v125);
      v59 = v61;
      v35 = v33 + 1;
      v34 = v33;
      goto LABEL_64;
    }

    TRunGlue::SetGlyphID<true>(*(v105 + 1), v33, v116);
    v67 = v141[1];
    if (v141[1] >= v141[2])
    {
      v127 = 0xAAAAAAAAAAAAAAAALL;
      *&v70 = 0xAAAAAAAAAAAAAAAALL;
      *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v125 = v70;
      v126 = v70;
      v71 = (v141[1] - v141[0]) >> 3;
      v72 = v71 + 1;
      if ((v71 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v73 = v141[2] - v141[0];
      if ((v141[2] - v141[0]) >> 2 > v72)
      {
        v72 = v73 >> 2;
      }

      if (v73 >= 0x7FFFFFFFFFFFFFF8)
      {
        v74 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v125, v74, v71, &v141[3]);
      v75 = v126;
      *v126 = v33;
      *&v126 = v75 + 8;
      v76 = (*(&v125 + 1) - (v141[1] - v141[0]));
      memcpy(v76, v141[0], v141[1] - v141[0]);
      v77 = v141[0];
      v141[0] = v76;
      v78 = v141[2];
      cb = v126;
      *&v141[1] = v126;
      *&v126 = v77;
      *(&v126 + 1) = v78;
      *&v125 = v77;
      *(&v125 + 1) = v77;
      std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v125);
      v68 = cb;
      v30 = v108;
    }

    else
    {
      *v141[1] = v33;
      v68 = v67 + 8;
    }

    v141[1] = v68;
    v79 = v33;
    if (v101)
    {
      TRunGlue::Delete(*(v105 + 1), v113, 0);
      v79 = v33 + 1;
    }

    v80 = v61;
    if (v60)
    {
      TRunGlue::Delete(*(v105 + 1), v79 + 1, 0);
    }

    v104 = 1;
    v36 = -1;
    v35 = -1;
    v34 = -1;
    v59 = v80;
    v27 = v106;
LABEL_64:
    v32 = v33;
    v33 = v59;
  }

  while (v59 != v30);
  if (v34 != -1)
  {
    v82 = *(&v118[0] + 1);
    for (n = *&v118[0]; n != v82; ++n)
    {
      v83 = *n;
      v30 = v30 & 0xFFFFFFFF00000000 | v83;
      OTL::GlyphLookups::SetLookupInRange<false>(v107, v30, v34, 1);
    }

    v85 = *(&v119 + 1);
    for (ii = v119; ii != v85; ++ii)
    {
      v86 = *ii;
      v30 = v30 & 0xFFFFFFFF00000000 | v86;
      OTL::GlyphLookups::SetLookupInRange<false>(v107, v30, v35, 1);
    }

    if (v36 != -1)
    {
      v88 = *(&v122 + 1);
      for (jj = v122; jj != v88; ++jj)
      {
        v89 = *jj;
        v30 = v30 & 0xFFFFFFFF00000000 | v89;
        OTL::GlyphLookups::SetLookupInRange<false>(v107, v30, v36, 1);
      }
    }
  }

  if ((v103 & 1) != 0 && (v90 = *(v105 + 1), *(v90 + 18)))
  {
    v91 = v141[0];
    v92 = v141[1];
    if (v141[0] == v141[1])
    {
      v93 = 0;
      v95 = *(v105 + 1);
    }

    else
    {
      v93 = 0;
      do
      {
        v94 = *v91;
        if (v93 != *v91)
        {
          do
          {
            TRunGlue::OrGlyphProps(v90, v93++, 8u);
          }

          while (v94 != v93);
          v93 = v94;
        }

        ++v93;
        ++v91;
      }

      while (v91 != v92);
      v95 = *(v105 + 1);
    }

    v97 = TRunGlue::length(v95);
    v96 = v104;
    if (v93 != v97)
    {
      v98 = v97;
      do
      {
        TRunGlue::OrGlyphProps(v90, v93++, 8u);
      }

      while (v98 != v93);
    }
  }

  else
  {
    v96 = v104;
  }

LABEL_133:
  *&v125 = v141;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v125);
  for (kk = 6; kk != -3; kk -= 3)
  {
    v141[0] = &v118[kk];
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](v141);
  }

  return v96;
}

void *std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v21 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v7;
    v20 = v7;
    v8 = (v4 - *result) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v19, v11, v8, (result + 3));
    v13 = *(&v19 + 1);
    v12 = v20;
    *v20 = *a2;
    *&v20 = v12 + 8;
    v14 = v3[1] - *v3;
    v15 = v13 - v14;
    memcpy((v13 - v14), *v3, v14);
    v16 = *v3;
    *v3 = v15;
    v17 = v3[2];
    v18 = v20;
    *(v3 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    *&v19 = v16;
    *(&v19 + 1) = v16;
    result = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v19);
    v6 = v18;
  }

  else
  {
    *v4 = *a2;
    v6 = v4 + 1;
  }

  v3[1] = v6;
  return result;
}

void HangulShapingEngine::AddShapingGlyphs(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v3;
  v7[1] = v3;
  v7[2] = v3;
  v7[3] = v3;
  v8 = v7 + 4;
  v6[1] = v7 + 4;
  v6[2] = v7 + 4;
  LODWORD(v7[0]) = 0;
  v6[0] = v7;
  (*(**(a1 + 408) + 680))();
  for (i = v7; i != (v7 + 4); ++i)
  {
    if (*i)
    {
      std::function<void ()(unsigned short,unsigned short)>::operator()(a2, *i, *i);
    }
  }

  v5 = v6;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v5);
}

void *std::__split_buffer<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,4ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v7 = *(a4 + 16);
    v6 = (a4 + 16);
    v5 = v7;
    v8 = v7 + 4 * a2;
    if (v8 > v6)
    {
      if (!(a2 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *v6 = v8;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5 + 4 * a3;
  *a1 = v5;
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v5 + 4 * a2;
  return a1;
}

uint64_t std::__split_buffer<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,4ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 16);
    if (v5 <= v4 && v6 > v4)
    {
      if (*(a1 + 24) == *v6)
      {
        *v6 = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  return a1;
}

void TRunGlue::OrGlyphProps(TRunGlue *this, int64_t a2, unsigned int a3)
{
  if (*(this + 18))
  {
    TRunGlue::FocusOnIndex(this, a2);
    v6 = *(this + 18);
    v7 = a2 - *(this + 19);
    v8 = *(v6 + 216);
    v9 = *(*(this + 51) + 4 * v7) | a3;
    v10 = *(v6 + 200) + v7;

    [v8 setProps:v9 atIndex:v10];
    return;
  }

  v11 = *(this + 19) + a2;
  v12 = *(this + 51);
  if (v12)
  {
LABEL_8:
    *(v12 + 4 * v11) |= a3;
    return;
  }

  if ((a3 & 0xFFFFFFDF) != 0)
  {
    TRunGlue::InitPropertiesFromDeletedGlyphs(this);
    v12 = *(this + 51);
    goto LABEL_8;
  }

  v13 = a3 != 0;
  v14 = *(this + 19) + a2;

  TRunGlue::SetDeletedGlyphsBit(this, v14, v13);
}

uint64_t TDescriptor::CreateBaseFont(uint64_t this, CGFont *a2)
{
  if (this)
  {
    operator new();
  }

  return this;
}

void TDescriptor::TDescriptor(TDescriptor *this, const TDescriptor *a2, const __CFNumber *a3, double a4, int a5)
{
  *this = &unk_1EF257E00;
  *(this + 1) = 0;
  *(this + 4) = *(a2 + 4) & 0x7FFFFFFF | a5;
  *(this + 3) = 0;
  explicit = atomic_load_explicit(a2 + 4, memory_order_acquire);
  if (explicit)
  {
    if ((*(explicit + 180) & 0x10000000) != 0)
    {
      explicit = 0;
    }

    else
    {
      atomic_fetch_or_explicit(this + 4, 0x80000000, memory_order_relaxed);
      atomic_fetch_add_explicit((explicit + 8), 1u, memory_order_relaxed);
    }
  }

  *(this + 4) = explicit;
  *(this + 5) = atomic_load_explicit(a2 + 5, memory_order_acquire);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptor::CopyAttributes(a2, &v12);
  v11 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&v11, atomic_load_explicit(&v12, memory_order_acquire));
  v10 = 0xAAAAAAAAAAAAAAAALL;
  CopyVariationWithValue(0, a3, a4, &v10);
  if (atomic_load_explicit(&v10, memory_order_acquire))
  {
    CFDictionarySetValue(atomic_load_explicit(&v11, memory_order_acquire), @"NSCTFontVariationAttribute", atomic_load_explicit(&v10, memory_order_acquire));
    if ((*(a2 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(a2, 0, 0.0);
    }

    TDescriptor::MergeVariationWithBase(this, atomic_load_explicit(a2 + 4, memory_order_acquire), atomic_load_explicit(&v10, memory_order_acquire), &v11);
  }
}

void TDescriptor::TDescriptor(TDescriptor *this, atomic_ullong *a2, int a3)
{
  *this = &unk_1EF257E00;
  TDescriptor::CopyAttributes(a2, this + 1);
  *(this + 4) = *(a2 + 4) | a3;
  *(this + 3) = 0;
  explicit = atomic_load_explicit(a2 + 4, memory_order_acquire);
  if (explicit)
  {
    atomic_fetch_add_explicit((explicit + 8), 1u, memory_order_relaxed);
  }

  *(this + 4) = explicit;
  *(this + 5) = atomic_load_explicit(a2 + 5, memory_order_acquire);
}

uint64_t TDescriptor::CopyAttribute@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  if ((this[2] & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(this, 0, 0.0);
  }

  result = atomic_load_explicit(this + 4, memory_order_acquire);
  if (result)
  {
    v7 = *(*result + 48);

    return v7();
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void TDescriptor::CopyAttributeForNonNormalized(atomic_ullong *this@<X0>, const __CFString **a2@<X2>, uint64_t a3@<X1>, atomic_ullong *a4@<X8>)
{
  if (a3 == 23)
  {
    Value = atomic_load_explicit(this + 1, memory_order_acquire);
    v7 = Value;
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"NSCTFontDesignLanguagesAttribute");
    }

    *a4 = Value;

    return;
  }

  if (a3 == 36)
  {
    *a4 = *MEMORY[0x1E695E4C0];
    return;
  }

  v9 = atomic_load_explicit(this + 1, memory_order_acquire);
  if (!v9)
  {

    goto LABEL_16;
  }

  v10 = v9;
  v11 = CFDictionaryGetValue(v9, @"NSCTFontLocalizedNamesForNonNormalizedAttribute");

  if (!v11)
  {
LABEL_16:
    *a4 = 0;
    return;
  }

  *a4 = 0;
  switch(a3)
  {
    case 4:
      v12 = &kCTFontStyleNameAttribute;
      break;
    case 3:
      v12 = &kCTFontFamilyNameAttribute;
      break;
    case 2:
      v12 = &kCTFontDisplayNameAttribute;
      break;
    default:
      return;
  }

  v13 = CFDictionaryGetValue(v11, *v12);
  CopyValueForCurrentUser(v13, a2, &v14);
}

void TDescriptor::CopyLocalizedAttribute(atomic_ullong *this@<X0>, const __CFString *key@<X1>, const __CFString **a3@<X2>, atomic_ullong *a4@<X8>)
{
  if ((this[2] & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(this, 0, 0.0);
  }

  explicit = atomic_load_explicit(this + 4, memory_order_acquire);
  if (explicit)
  {
    FontAttributeID = GetFontAttributeID(key);
    v10 = *(*explicit + 48);

    v10(explicit, FontAttributeID, a3);
  }

  else
  {
    v11 = GetFontAttributeID(key);

    TDescriptor::CopyAttributeForNonNormalized(this, a3, v11, a4);
  }
}

void TDescriptor::CreateMatchingDescriptors(TDescriptor *this@<X0>, const __CFSet *a2@<X1>, uint64_t a3@<X2>, atomic_ullong *a4@<X8>)
{
  *a4 = 0;
  v8 = AsMatchingOptions(*(this + 4));
  v40 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::TDescriptorSource(&v40);
  Attributes = TDescriptor::GetAttributes(this, 1);
  if (!Attributes || !CFDictionaryGetCount(Attributes))
  {
    v13 = v8 | a3;
    if ((a3 & 0x20000) != 0)
    {
      TDescriptorSource::CopyAllDescriptorsInternal(&v40, 0, v13, &keys);
    }

    else
    {
      TDescriptorSource::CopyAllDescriptorsSorted(&v40, v13, &keys);
    }

    v12 = atomic_exchange(&keys, 0);
    goto LABEL_12;
  }

  if ((*(this + 4) & 0x40000000) == 0)
  {
    if ((a3 & 0x20000) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = CompareDescriptorsByTraitsAndPrecedence;
    }

    TDescriptorSource::CopyDescriptorsForRequest(atomic_load_explicit(this + 1, memory_order_acquire), &v40, a2, v11, v8 | a3, 0, &keys);
    v12 = atomic_exchange(&keys, 0);
LABEL_12:

    v14 = keys;
    goto LABEL_13;
  }

  PostScriptNameAndAttribute = TDescriptorSource::GetPostScriptNameAndAttribute(atomic_load_explicit(this + 1, memory_order_acquire), v10);
  if (!PostScriptNameAndAttribute)
  {
    goto LABEL_14;
  }

  values = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v40, PostScriptNameAndAttribute, v8 | a3, 1, 0, &values);
  if (atomic_load_explicit(&values, memory_order_acquire))
  {
    keys = atomic_load_explicit(&values, memory_order_acquire);
    Mutable = CFArrayCreate(*MEMORY[0x1E695E480], &keys, 1, MEMORY[0x1E695E9C0]);
  }

  v14 = values;
LABEL_13:

LABEL_14:
  v15 = *(this + 4) & 0x7FFFFFFF;
  v16 = atomic_load_explicit(this + 1, memory_order_acquire);
  v17 = v16;
  if (v16 && (Value = CFDictionaryGetValue(v16, @"NSCTFontCharacterSetAttribute")) != 0)
  {
    v19 = Value;
    v20 = CFGetTypeID(Value);
    if (v20 == CFCharacterSetGetTypeID())
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v21 || v15)
  {
    v22 = atomic_load_explicit(a4, memory_order_acquire);
    if (v22)
    {
      v23 = v22;
      Count = CFArrayGetCount(v22);

      if (Count < 1)
      {
        return;
      }

      allocator = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      explicit = atomic_load_explicit(a4, memory_order_acquire);
      if (explicit)
      {
        v26 = CFArrayGetCount(explicit);
        if (v26)
        {
          v27 = v26;
          v28 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(explicit, v28);
            v38 = 0;
            if (v21)
            {
              values = v21;
              keys = @"NSCTFontCharacterSetAttribute";
              v30 = CFDictionaryCreate(allocator, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v31 = TCFBase<TDescriptor>::Allocate();
              if (v31)
              {
                CTFontDescriptor::CTFontDescriptor(v31, ValueAtIndex, v30, v15);
              }

              keys = v31;

              v32 = v30;
            }

            else
            {
              v33 = TCFBase<TDescriptor>::Allocate();
              v34 = v33;
              if (v33)
              {
                v33[2] = 0;
                v33[3] = TDescriptor::Hash;
                v33[4] = 0;
                v33[5] = v33 + 6;
                TDescriptor::TDescriptor((v33 + 6), ValueAtIndex[5], v15);
              }

              keys = v34;

              v32 = keys;
            }

            if (!atomic_load_explicit(&v38, memory_order_acquire))
            {
              break;
            }

            v35 = atomic_load_explicit(&v38, memory_order_acquire);
            CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v35);

            if (v27 == ++v28)
            {
              goto LABEL_42;
            }
          }
        }
      }

LABEL_42:

      v22 = Mutable;
    }
  }
}

CFStringRef TDescriptor::DebugDescription(atomic_ullong *this)
{
  v1 = *MEMORY[0x1E695E480];
  Attributes = TDescriptor::GetAttributes(this, 1);
  return CFStringCreateWithFormat(v1, 0, @"attributes = %@>", Attributes);
}

void CTFontDescriptor::CTFontDescriptor(CTFontDescriptor *this, const CTFontDescriptor *a2, const __CFDictionary *a3, int a4)
{
  *(this + 2) = 0;
  *(this + 3) = TDescriptor::Hash;
  *(this + 4) = 0;
  *(this + 5) = this + 48;
  if (a3)
  {
    operator new();
  }

  v6 = *(a2 + 5);
  if ((*(v6 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(a2 + 5), 0, 0.0);
  }

  explicit = atomic_load_explicit((v6 + 32), memory_order_acquire);
  *(this + 6) = &unk_1EF257E00;
  *(this + 7) = 0;
  *(this + 16) = a4 | 0x80000000;
  *(this + 9) = 0;
  if (explicit)
  {
    atomic_fetch_add_explicit((explicit + 8), 1u, memory_order_relaxed);
  }

  *(this + 10) = explicit;
  *(this + 11) = 0;
}

CFTypeID CTFontCollectionGetTypeID(void)
{
  if (_MergedGlobals_14 != -1)
  {
    dispatch_once_f(&_MergedGlobals_14, 0, TCFBase<TCollection>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return qword_1ED5679D0;
}

CTFontCollectionRef CTFontCollectionCreateFromAvailableFonts(CFDictionaryRef options)
{
  v8 = options;
  v1 = *MEMORY[0x1E695E480];
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = CTFontDescriptorCreateWithAttributes(v2);
  values = v3;
  v4 = CFArrayCreate(v1, &values, 1, MEMORY[0x1E695E9C0]);
  values = 0xAAAAAAAAAAAAAAAALL;
  v7 = v4;
  TCFBase_NEW<CTCollection,__CFArray const*,__CFDictionary const*&>(&values, &v7, &v8);
  v5 = atomic_exchange(&values, 0);

  return v5;
}

void *TCFBase_NEW<CTCollection,__CFArray const*,__CFDictionary const*&>(void *a1, void **a2, const __CFDictionary **a3)
{
  result = TCFBase<TCollection>::Allocate();
  v7 = result;
  if (result)
  {
    v8 = *a2;
    v9 = *a3;
    v7[2] = CTCollection::Destruct;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = v7 + 6;
    *(v7 + 12) = MakeFlags(v9);
    result = v8;
    v7[7] = result;
    v7[13] = 0;
    *(v7 + 4) = 0u;
    *(v7 + 5) = 0u;
    *(v7 + 24) = 0;
  }

  *a1 = v7;
  return result;
}

CTFontCollectionRef CTFontCollectionCreateWithFontDescriptors(CFArrayRef queryDescriptors, CFDictionaryRef options)
{
  v4 = TCFBase<TCollection>::Allocate();
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = CTCollection::Destruct;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = v4 + 48;
    *(v4 + 48) = MakeFlags(options);
    *(v5 + 56) = queryDescriptors;
    *(v5 + 104) = 0;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0;
  }

  v8 = v5;
  v6 = atomic_exchange(&v8, 0);

  return v6;
}

CTFontCollectionRef CTFontCollectionCreateCopyWithFontDescriptors(CTFontCollectionRef original, CFArrayRef queryDescriptors, CFDictionaryRef options)
{
  if (!original)
  {
    return 0;
  }

  v6 = TCFBase<TCollection>::Allocate();
  v7 = v6;
  if (v6)
  {
    v6[2] = CTCollection::Destruct;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = v6 + 6;
    TCollection::TCollection((v6 + 6), original, queryDescriptors, options);
  }

  v10 = v7;
  v8 = atomic_exchange(&v10, 0);

  return v8;
}

unint64_t CTFontCollectionCreateForLocale(uint64_t a1, const __CFDictionary *a2)
{
  v11 = a2;
  if (!a1)
  {
    return 0;
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  v2 = MEMORY[0x1865F0C70]();
  LanguageIdentifierByNormalizing(v2, 2u, &v10);
  values = atomic_load_explicit(&v10, memory_order_acquire);
  keys = @"NSCTFontDesignLanguagesAttribute";
  v3 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CTFontDescriptorCreateWithAttributes(v4);
  v6 = v5;
  if (v5)
  {
    keys = v5;
    v7 = CFArrayCreate(v3, &keys, 1, MEMORY[0x1E695E9C0]);
    values = v7;
    keys = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTCollection,__CFArray const*,__CFDictionary const*&>(&keys, &values, &v11);
    v8 = atomic_exchange(&keys, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

CFArrayRef CTFontCollectionCreateMatchingFontDescriptors(CFArrayRef collection)
{
  if (collection)
  {
    return TCollection::CopyMatchingFontDescriptorsUnlocked(*(collection + 5), **(collection + 5), atomic_load_explicit((*(collection + 5) + 8), memory_order_acquire));
  }

  return collection;
}

CFArrayRef CTFontCollectionCreateMatchingFontDescriptorsWithOptions(CFArrayRef collection, CFDictionaryRef options)
{
  if (collection)
  {
    return TCollection::CopyMatchingFontDescriptors(*(collection + 5), options);
  }

  return collection;
}

CFArrayRef CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback(CFArrayRef collection, CTFontCollectionSortDescriptorsCallback sortCallback, void *refCon)
{
  if (collection)
  {
    return TCollection::CopyMatchingFontDescriptors(*(collection + 5), sortCallback, refCon);
  }

  return collection;
}

CFArrayRef CTFontCollectionCopyFontAttribute(CFArrayRef collection, CFStringRef attributeName, CTFontCollectionCopyOptions options)
{
  if (collection)
  {
    return TCollection::CopyFontAttribute(*(collection + 5), attributeName);
  }

  return collection;
}

CFArrayRef CTFontCollectionCopyFontAttributes(CFArrayRef collection, CFSetRef attributeNames, CTFontCollectionCopyOptions options)
{
  if (collection)
  {
    return TCollection::CopyFontAttributes(*(collection + 5), attributeNames);
  }

  return collection;
}

Class TCFBase<TCollection>::GetTypeID(void)::{lambda(void *)#1}::__invoke()
{
  if ((atomic_load_explicit(&qword_1ED5679D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5679D8))
  {
    qword_1ED5679E0 = 0;
    unk_1ED5679E8 = "CTFontCollection";
    qword_1ED5679F0 = 0;
    unk_1ED5679F8 = 0;
    qword_1ED567A00 = TCFBase<TCollection>::ClassDestruct;
    qword_1ED567A08 = TCFBase<TCollection>::ClassEqual;
    qword_1ED567A10 = TCFBase<TCollection>::ClassHash;
    unk_1ED567A18 = 0;
    qword_1ED567A20 = TCFBase<TCollection>::ClassDebug;
    unk_1ED567A28 = 0;
    qword_1ED567A30 = 0;
    unk_1ED567A38 = 0;
    __cxa_guard_release(&qword_1ED5679D8);
  }

  v0 = _CFRuntimeRegisterClass();
  qword_1ED5679D0 = v0;

  return _CTFontCollectionEnableBridging(v0);
}

void TCFBase<TCollection>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 40);

  v4 = *(v3 + 8);
}

void *TCFBase<TCollection>::ClassHash(void *result)
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

uint64_t TCFBase<TCollection>::Allocate()
{
  if (_MergedGlobals_14 != -1)
  {
    dispatch_once_f(&_MergedGlobals_14, 0, TCFBase<TCollection>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

uint64_t MakeFlags(CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = 120;
  v4 = &off_1E6E37B58;
  do
  {
    v5 = *(v4 - 4);
    Value = CFDictionaryGetValue(theDict, *v4);
    valuePtr = -1431655766;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v2 = v7 | v2;
    v4 += 3;
    v3 -= 24;
  }

  while (v3);
  return v2;
}

void TCollection::InitWithCopy(TCollection *this, const __CTFontCollection *a2, const __CFArray *a3, const __CFDictionary *a4)
{
  v6 = *(a2 + 5);
  *this |= *v6;
  *(this + 4) = *(v6 + 32);
  TCFRef<__CTFont const*>::Retain(this + 5, atomic_load_explicit((v6 + 40), memory_order_acquire));
  TCFRef<__CTFont const*>::Retain(this + 3, atomic_load_explicit((v6 + 24), memory_order_acquire));
  v8 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableArray::TCFMutableArray(&v8, atomic_load_explicit((v6 + 8), memory_order_acquire));
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v9.length = Count;
      v9.location = 0;
      CFArrayAppendArray(atomic_load_explicit(&v8, memory_order_acquire), a3, v9);
    }
  }

  TCFRef<__CTFont const*>::Retain(this + 1, atomic_load_explicit(&v8, memory_order_acquire));
  TCFRef<__CTFont const*>::Retain(this + 2, atomic_load_explicit((v6 + 16), memory_order_acquire));
}

void TCollection::TCollection(TCollection *this, const __CTFontCollection *a2, const __CFArray *a3, CFDictionaryRef theDict)
{
  *this = MakeFlags(theDict);
  *(this + 7) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  if (a2)
  {
    TCollection::InitWithCopy(this, a2, a3, v7);
    *this &= ~0x80000000;
  }
}

uint64_t TCollection::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (((*a2 ^ *a1) & 0x7FFFFFFF) != 0)
  {
    return 0;
  }

  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v6 = atomic_load_explicit((a2 + 8), memory_order_acquire);
  if (explicit != v6)
  {
    if (explicit)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }

    result = CFEqual(explicit, v6);
    if (!result)
    {
      return result;
    }
  }

  v8 = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v9 = atomic_load_explicit((a2 + 16), memory_order_acquire);
  if (v8 == v9 || (result = 0, v8) && v9 && (result = CFEqual(v8, v9), result))
  {
    v10 = atomic_load_explicit((a1 + 24), memory_order_acquire);
    v11 = atomic_load_explicit((a2 + 24), memory_order_acquire);
    if (v10 == v11 || (result = 0, v10) && v11 && (result = CFEqual(v10, v11), result))
    {
      if (*(a1 + 32) == *(a2 + 32))
      {
        v12 = atomic_load_explicit((a1 + 40), memory_order_acquire);
        v13 = atomic_load_explicit((a2 + 40), memory_order_acquire);
        if (v12 == v13)
        {
          return 1;
        }

        result = 0;
        if (v12)
        {
          if (v13)
          {
            return CFEqual(v12, v13) != 0;
          }
        }

        return result;
      }

      return 0;
    }
  }

  return result;
}

unint64_t TCollection::CopyMatchesForDescriptors(TCollection *this, const __CFArray *a2)
{
  v3 = 288;
  v4 = 120;
  v5 = &qword_1E6E37B50;
  do
  {
    if ((*(v5 - 1) & a2) != 0)
    {
      v3 |= *v5;
    }

    v5 += 3;
    v4 -= 24;
  }

  while (v4);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (this)
  {
    Count = CFArrayGetCount(this);
    if (Count)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(this, i);
        v13 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptor::CreateMatchingDescriptors(ValueAtIndex[5], 0, v3 | 1, &v13);
        if (atomic_load_explicit(&v13, memory_order_acquire))
        {
          v12 = atomic_load_explicit(&v13, memory_order_acquire);
          TCFMutableArray::AppendArray<TCFRef<__CFArray const*>>(&Mutable, &v12);
        }
      }
    }
  }

  if (CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)) <= 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = atomic_exchange(&Mutable, 0);
  }

  return v10;
}

unint64_t TCollection::CopyMatchingFontDescriptorsUnlocked(atomic_ullong *this, int64_t a2, const __CFArray *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  v86[33] = *MEMORY[0x1E69E9840];
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  v64 = 0xAAAAAAAAAAAAAAAALL;
  if (explicit == a3 && *(this + 16) == a2 && *(this + 12) == TGenerationSeed::sGeneration)
  {
    v7 = atomic_load_explicit(this + 7, memory_order_acquire);
  }

  else
  {
    v7 = 0;
  }

  v64 = v7;
  if (!atomic_load_explicit(&v64, memory_order_acquire))
  {
    if (!v3)
    {
      goto LABEL_85;
    }

    v58 = explicit;
    if (CFArrayGetCount(v3) != 1)
    {
      goto LABEL_12;
    }

    v9 = *(CFArrayGetValueAtIndex(v3, 0) + 5);
    *&v85 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptor::CopyAttributes(v9, &v85);
    v10 = atomic_load_explicit(&v85, memory_order_acquire);
    if (v10)
    {
      v11 = v10;
      Count = CFDictionaryGetCount(v10);

      if (Count)
      {
LABEL_12:
        v13 = TCollection::CopyMatchesForDescriptors(v3, v4);
        if (!v13)
        {
          goto LABEL_85;
        }

        v14 = atomic_exchange(&v64, v13);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v15 = &qword_1E6E37B50;
    v16 = 288;
    v17 = 120;
    do
    {
      if ((*(v15 - 1) & v4) != 0)
      {
        v16 |= *v15;
      }

      v15 += 3;
      v17 -= 24;
    }

    while (v17);
    TDescriptorSource::TDescriptorSource(&values);
    TDescriptorSource::CopyAllDescriptorsInternal(&values, 0, v16 | 1, &v85);

    v14 = v85;
LABEL_20:

    if (atomic_load_explicit(v5 + 2, memory_order_acquire))
    {
      v18 = TCollection::CopyMatchesForDescriptors(atomic_load_explicit(v5 + 2, memory_order_acquire), v4);
      if (v18)
      {
        v56 = v4;
        v57 = v5;
        v63 = 0xAAAAAAAAAAAAAAAALL;
        v19 = &v63;
        TCFMutableArray::TCFMutableArray(&v63, atomic_load_explicit(&v64, memory_order_acquire));
        v60 = CFArrayGetCount(v18);
        if (v60)
        {
          v20 = 0;
          v5 = &v69;
          v59 = v18;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
            v22 = CTFontDescriptorCopyAttributes(ValueAtIndex);
            v23 = v22;
            v24 = v23;
            v4 = v23 ? CFDictionaryGetCount(v23) : 0;

            *&v25 = 0xAAAAAAAAAAAAAAAALL;
            *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&v86[27] = v25;
            *&v86[29] = v25;
            *&v86[23] = v25;
            *&v86[25] = v25;
            *&v86[19] = v25;
            *&v86[21] = v25;
            *&v86[15] = v25;
            *&v86[17] = v25;
            *&v86[11] = v25;
            *&v86[13] = v25;
            *&v86[7] = v25;
            *&v86[9] = v25;
            *&v86[3] = v25;
            *&v86[5] = v25;
            *&v86[1] = v25;
            v85 = 0uLL;
            v86[0] = 0;
            v86[31] = &v86[1];
            v62 = v20;
            if (v4)
            {
              break;
            }

            v82 = v25;
            v83 = v25;
            v80 = v25;
            v81 = v25;
            v78 = v25;
            v79 = v25;
            v76 = v25;
            v77 = v25;
            v74 = v25;
            v75 = v25;
            v72 = v25;
            v73 = v25;
            v70 = v25;
            v71 = v25;
            v69 = v25;
            values = 0;
            v67 = 0;
            v68 = 0;
            v84 = &v69;
            if (v22)
            {
              goto LABEL_29;
            }

LABEL_30:
            v61 = v22;
            v29 = CFArrayGetCount(atomic_load_explicit(&v63, memory_order_acquire));
            if (v29 >= 1)
            {
              while (1)
              {
                v30 = (v29 - 1);
                v31 = CFArrayGetValueAtIndex(atomic_load_explicit(&v63, memory_order_acquire), v29 - 1);
                v32 = CTFontDescriptorCopyAttributes(v31);
                if (v4 >= 1)
                {
                  break;
                }

                BytePtr = 0;
LABEL_42:
                if (BytePtr == v4)
                {
LABEL_43:
                  CFArrayRemoveValueAtIndex(atomic_load_explicit(&v63, memory_order_acquire), v29 - 1);
                }

                if (v29-- <= 1)
                {
                  goto LABEL_46;
                }
              }

              BytePtr = 0;
              while (1)
              {
                v34 = v32;
                if (BytePtr >= (*(&v85 + 1) - v85) >> 3)
                {
                  break;
                }

                v24 = v34;
                if (!v34)
                {

                  goto LABEL_42;
                }

                Value = CFDictionaryGetValue(v34, *(v85 + 8 * BytePtr));

                if (!Value)
                {
                  goto LABEL_42;
                }

                if (BytePtr >= (v67 - values) >> 3)
                {
                  break;
                }

                if (!CFEqual(Value, values[BytePtr]))
                {
                  goto LABEL_42;
                }

                if (v4 == ++BytePtr)
                {
                  goto LABEL_43;
                }
              }

              __break(1u);
LABEL_58:
              v38 = v4;
              v39 = v5;
              goto LABEL_59;
            }

LABEL_46:
            p_values = &values;
            std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_values);
            values = &v85;
            std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);

            v20 = v62 + 1;
            v18 = v59;
            if (v62 + 1 == v60)
            {
              goto LABEL_50;
            }
          }

          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&v85, v4);
          v26 = *(&v85 + 1);
          v24 = (8 * v4);
          bzero(*(&v85 + 1), 8 * v4);
          *(&v85 + 1) = v26 + 8 * v4;
          *&v27 = 0xAAAAAAAAAAAAAAAALL;
          *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v82 = v27;
          v83 = v27;
          v80 = v27;
          v81 = v27;
          v78 = v27;
          v79 = v27;
          v76 = v27;
          v77 = v27;
          v74 = v27;
          v75 = v27;
          v72 = v27;
          v73 = v27;
          v70 = v27;
          v71 = v27;
          v69 = v27;
          values = 0;
          v67 = 0;
          v68 = 0;
          v84 = &v69;
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&values, v4);
          v28 = v67;
          bzero(v67, 8 * v4);
          v67 = &v28[8 * v4];
          if (!v22)
          {
            goto LABEL_30;
          }

LABEL_29:
          CFDictionaryGetKeysAndValues(v22, v85, values);
          goto LABEL_30;
        }

LABEL_50:
        TCFRef<__CTFont const*>::Retain(&v64, atomic_load_explicit(&v63, memory_order_acquire));

        v5 = v57;
        LODWORD(v4) = v56;
      }
    }

    if (!v5[4])
    {
LABEL_69:
      v46 = atomic_load_explicit(&v64, memory_order_acquire);
      v47 = v46;
      if (v46)
      {
        v48 = CFArrayGetCount(v46) > 0;
      }

      else
      {
        v48 = 0;
      }

      if ((v4 & 1) != 0 && v48)
      {
        v49 = atomic_load_explicit(&v64, memory_order_acquire);
        Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
        v51 = Mutable;
        if (v49)
        {
          [(__CFSet *)Mutable addObjectsFromArray:v49];
        }

        *&v52 = 0xAAAAAAAAAAAAAAAALL;
        *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v85 = v52;
        *v86 = v52;
        TFontDescriptorDuplicateFilter::TFontDescriptorDuplicateFilter(&v85, v51, &TFontDescriptorDuplicateFilter::kCTFontDescriptorDuplicateFilterSetCallBacks);
        TFontDescriptorDuplicateFilter::PerformFilter(&v85);
        if (CFSetGetCount(atomic_load_explicit(v86, memory_order_acquire)) >= 1)
        {
          CreateSortedArrayWithSet(atomic_load_explicit(v86, memory_order_acquire), 0, 0, &values);
          v53 = atomic_exchange(&values, 0);
        }

        TFontDescriptorDuplicateFilter::~TFontDescriptorDuplicateFilter(&v85);
      }

      if (v58 == v3)
      {
        v54 = atomic_load_explicit(&v64, memory_order_acquire);
        if (atomic_load_explicit(v5 + 7, memory_order_acquire) != v54 || *(v5 + 16) != v4)
        {
          TCFRef<__CTFont const*>::Retain(v5 + 7, v54);
          *(v5 + 16) = v4;
        }

        *(v5 + 12) = TGenerationSeed::sGeneration;
      }

      goto LABEL_7;
    }

    values = 0xAAAAAAAAAAAAAAAALL;
    v24 = atomic_load_explicit(&v64, memory_order_acquire);
    v19 = v5[4];
    BytePtr = atomic_load_explicit(v5 + 5, memory_order_acquire);
    if (v24)
    {
      v30 = v3;
      v37 = CFArrayGetCount(v24);
      v32 = CFSetCreateMutable(*MEMORY[0x1E695E480], v37, MEMORY[0x1E695E9F8]);
      if (!BytePtr)
      {
        goto LABEL_58;
      }

      v38 = v4;
      v39 = v5;
      BytePtr = CFDataGetBytePtr(BytePtr);
LABEL_59:
      v41 = CFArrayGetCount(v24);
      if (v41)
      {
        v42 = v41;
        for (i = 0; i != v42; ++i)
        {
          v44 = CFArrayGetValueAtIndex(v24, i);
          if ((v19)(v44, BytePtr))
          {
            CFSetAddValue(v32, v44);
          }
        }
      }

      CreateSortedArrayWithSet(v32, 0, 0, &v85);
      v40 = atomic_exchange(&v85, 0);

      v5 = v39;
      LODWORD(v4) = v38;
      v3 = v30;
    }

    else
    {
      v40 = 0;
    }

    values = v40;
    if (atomic_load_explicit(&values, memory_order_acquire))
    {
      v45 = atomic_load_explicit(&v64, memory_order_acquire);
      if (v45 != atomic_load_explicit(&values, memory_order_acquire))
      {
      }

      goto LABEL_69;
    }

LABEL_85:
    v8 = 0;
    goto LABEL_86;
  }

LABEL_7:
  v8 = atomic_exchange(&v64, 0);
LABEL_86:

  return v8;
}

void TCFMutableArray::AppendArray<TCFRef<__CFArray const*>>(atomic_ullong *a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v3 = atomic_load_explicit(a2, memory_order_acquire);
  v4 = atomic_load_explicit(a2, memory_order_acquire);
  v5 = v4;
  if (v4)
  {
    v6.length = CFArrayGetCount(v4);
  }

  else
  {
    v6.length = 0;
  }

  v6.location = 0;
  CFArrayAppendArray(explicit, v3, v6);
}

unint64_t TCollection::CopyMatchingFontDescriptors(atomic_ullong *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Flags = MakeFlags(theDict);
  }

  else
  {
    Flags = *this;
  }

  explicit = atomic_load_explicit(this + 1, memory_order_acquire);

  return TCollection::CopyMatchingFontDescriptorsUnlocked(this, Flags, explicit);
}

void TFontDescriptorDuplicateFilter::PerformFilter(atomic_ullong *a1)
{
  v2 = atomic_load_explicit(a1 + 3, memory_order_acquire);
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);

    if (Count >= 1)
    {
      explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
      v6.location = 0;
      v6.length = Count;

      CFArrayApplyFunction(explicit, v6, TFontDescriptorFilter::FilterFunctionToAdd, a1);
    }
  }

  else
  {
  }
}

const __CFArray *TCollection::CopyMatchingFontDescriptors(atomic_ullong *this, CFComparisonResult (__cdecl *a2)(const void *, const void *, void *), void *a3)
{
  v5 = TCollection::CopyMatchingFontDescriptorsUnlocked(this, *this, atomic_load_explicit(this + 1, memory_order_acquire));
  v6 = v5;
  if (a2 && v5)
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v5);
    CFRelease(v6);
    explicit = atomic_load_explicit(&MutableCopy, memory_order_acquire);
    v10.length = CFArrayGetCount(atomic_load_explicit(&MutableCopy, memory_order_acquire));
    v10.location = 0;
    CFArraySortValues(explicit, v10, a2, a3);
    v6 = atomic_exchange(&MutableCopy, 0);
  }

  return v6;
}

unint64_t TCollection::CopyFontAttribute(atomic_ullong *this, __CFString *a2)
{
  v3 = TCollection::CopyMatchingFontDescriptorsUnlocked(this, *this, atomic_load_explicit(this + 1, memory_order_acquire));
  v4 = CTFontDescriptorsCopyAttribute(v3, a2);

  return v4;
}

unint64_t TCollection::CopyFontAttributes(atomic_ullong *this, const __CFSet *a2)
{
  v3 = TCollection::CopyMatchingFontDescriptorsUnlocked(this, *this, atomic_load_explicit(this + 1, memory_order_acquire));
  v4 = CTFontDescriptorsCopyAttributesInternal(v3, a2);

  return v4;
}

void TFontDescriptorFilter::FilterFunctionToAdd(TFontDescriptorFilter *this, atomic_ullong *a2, void *a3)
{
  if ((*(*a2 + 56))(a2, this, a3))
  {
    explicit = atomic_load_explicit(a2 + 2, memory_order_acquire);

    CFSetAddValue(explicit, this);
  }
}

void CopyFontNameInternal(CGFontRef font@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, atomic_ullong *a4@<X8>)
{
  if (!(font | a2) || a3 == -1)
  {
    *a4 = 0;
    return;
  }

  if ((a3 & 0x80000000) == 0)
  {
    *a4 = 0;
    if (a3 == 6)
    {
      v7 = atomic_exchange(a4, CGFontCopyPostScriptName(font));

      return;
    }

    if (a2 || CGFontNameTableCreate())
    {
      if (a3 == 1 || a3 == 2)
      {
      }

      if (!atomic_load_explicit(a4, memory_order_acquire))
      {
      }
    }

    if (atomic_load_explicit(a4, memory_order_acquire) || a3 > 0x13 || ((0xB7FFFu >> a3) & 1) == 0 || !**(&unk_1E6E37D20 + a3) || (atomic_exchange(a4, CGFontCopyName()), explicit = atomic_load_explicit(a4, memory_order_acquire), a3 != 2) || explicit)
    {
LABEL_47:
      CGFontNameTableRelease();
      return;
    }

    v20 = 0;
    v9 = CGFontCopyFullName(font);
    v10 = CGFontCopyFamilyName();
    v11 = v10;
    if (v9 && v10)
    {
      v12 = v9;
      v13 = v11;
      v14 = v13;
      if (v12 == v13)
      {

        v16 = v12;
LABEL_42:

        goto LABEL_44;
      }

      if (!v12 || !v13)
      {

LABEL_34:
        if (!CFStringHasPrefix(v9, v11))
        {
          TCFRef<__CTFont const*>::Retain(&v20, v9);
          goto LABEL_44;
        }

        v17 = *MEMORY[0x1E695E480];
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
        v23.length = CFStringGetLength(v11);
        v23.location = 0;
        CFStringDelete(atomic_load_explicit(&MutableCopy, memory_order_acquire), v23);
        v18 = CFCharacterSetCreateWithCharactersInString(v17, @" -");
        if (v18 && CFStringGetLength(atomic_load_explicit(&MutableCopy, memory_order_acquire)) >= 1)
        {
          do
          {
            CharacterAtIndex = CFStringGetCharacterAtIndex(atomic_load_explicit(&MutableCopy, memory_order_acquire), 0);
            if (!CFCharacterSetIsLongCharacterMember(v18, CharacterAtIndex))
            {
              break;
            }

            v24.location = 0;
            v24.length = 1;
            CFStringDelete(atomic_load_explicit(&MutableCopy, memory_order_acquire), v24);
          }

          while (CFStringGetLength(atomic_load_explicit(&MutableCopy, memory_order_acquire)) > 0);
        }

        if (CFStringGetLength(atomic_load_explicit(&MutableCopy, memory_order_acquire)) >= 1)
        {
        }

        v16 = MutableCopy;
        goto LABEL_42;
      }

      v15 = CFEqual(v12, v13);

      if (!v15)
      {
        goto LABEL_34;
      }
    }

LABEL_44:
    if (!atomic_load_explicit(&v20, memory_order_acquire))
    {
      TCFRef<__CTFont const*>::Retain(&v20, @"Regular");
    }

    goto LABEL_47;
  }

  CopyStaticOTFeatureName(0, a3, a4);
}

void CopyLocalizedFontNameFromResources(__CFString *a1@<X0>, id a2@<X2>, const __CFString **a3@<X3>, int a4@<W1>, __CFString *a5@<X8>)
{
  if (a4 == 4)
  {
LABEL_4:
    v9 = @"FontNames";
    goto LABEL_6;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
LABEL_10:
      v11 = a1;
      a5->isa = atomic_exchange(&v11, 0);
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v9 = @"StyleNames";
LABEL_6:
  v11 = a2;
  if (!atomic_load_explicit(&v11, memory_order_acquire))
  {
    CreateNormalizedPreferredLanguages(&v10);
  }

  a5->isa = 0xAAAAAAAAAAAAAAAALL;
  CopyDefaultLocalizedName(a5, a1, v9, a2, a3);
  if (!atomic_load_explicit(a5, memory_order_acquire))
  {

    goto LABEL_10;
  }

LABEL_11:
}

void CopyDefaultLocalizedName(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString **a4, unint64_t a5)
{
  if (!a2 || (explicit = a2, (v9 = _CTGetFrameworkBundleForLocalization()) == 0))
  {
    a1->isa = 0;
    return;
  }

  v10 = v9;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  v48.length = CFStringGetLength(explicit);
  v48.location = 0;
  v12 = RangeOfCharactersFromSet(explicit, Predefined, v48, 0);
  v45 = 0;
  v46 = 0;
  if (v12 != -1)
  {
    v14 = v12;
    v15 = v13;
    v16 = *MEMORY[0x1E695E480];
    v49.location = v12;
    v49.length = v13;
    MutableCopy = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], explicit, v49);

    if (atomic_load_explicit(&v46, memory_order_acquire))
    {
      MutableCopy = CFStringCreateMutableCopy(v16, 0, explicit);

      v47.location = v14;
      v47.length = v15;
      CFStringReplace(atomic_load_explicit(&v45, memory_order_acquire), v47, @"%d");
      explicit = atomic_load_explicit(&v45, memory_order_acquire);
    }
  }

  MutableCopy = 0xAAAAAAAAAAAAAAAALL;
  CopyLowercasedString(explicit, &MutableCopy);
  v43 = 0;
  if (!(a4 | a5))
  {
    v42 = CFBundleCopyLocalizedString(v10, atomic_load_explicit(&MutableCopy, memory_order_acquire), 0, a3);

    v18 = atomic_load_explicit(&v43, memory_order_acquire);
    v30 = atomic_load_explicit(&MutableCopy, memory_order_acquire);
    v31 = v30;
    if (v18 == v30)
    {
    }

    else
    {
      if (!v18 || !v30)
      {

        goto LABEL_50;
      }

      v32 = CFEqual(v18, v30);

      if (!v32)
      {
        goto LABEL_51;
      }
    }

    v42 = CFBundleCopyLocalizedString(v10, explicit, @"LocalizedFontNameNotFound", a3);

    v33 = atomic_load_explicit(&v43, memory_order_acquire);
    if (v33 == @"LocalizedFontNameNotFound")
    {
    }

    else
    {
      v34 = v33;
      if (!v33)
      {
        v18 = 0;
        goto LABEL_50;
      }

      v35 = CFEqual(v33, @"LocalizedFontNameNotFound");

      if (!v35)
      {
        goto LABEL_51;
      }
    }

    v18 = atomic_exchange(&v43, 0);
    goto LABEL_50;
  }

  if (qword_1ED567A58 != -1)
  {
    dispatch_once_f(&qword_1ED567A58, v10, CopyDefaultLocalizedName(__CFString const*,__CFString const*,__CFArray const*,__CFString const**)::$_0::__invoke);
  }

  if (!qword_1ED567A50)
  {
    v36 = 0;
    goto LABEL_55;
  }

  v17 = CFBundleCopyLocalizationsForPreferences(qword_1ED567A50, a4);
  v18 = v17;
  if (!v17)
  {
    goto LABEL_50;
  }

  Count = CFArrayGetCount(v17);
  if (!Count)
  {
    goto LABEL_50;
  }

  v20 = Count;
  v39 = a5;
  v40 = a1;
  v21 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v18, v21);
    atomic_load_explicit(&MutableCopy, memory_order_acquire);
    v42 = CFBundleCopyLocalizedStringForLocalization();

    v23 = atomic_load_explicit(&v43, memory_order_acquire);
    v24 = atomic_load_explicit(&MutableCopy, memory_order_acquire);
    v25 = v24;
    if (v23 == v24)
    {

LABEL_22:
      v42 = CFBundleCopyLocalizedStringForLocalization();

      v28 = atomic_load_explicit(&v43, memory_order_acquire);
      if (v28 == @"LocalizedFontNameNotFound")
      {

LABEL_27:
        v23 = atomic_exchange(&v43, 0);
LABEL_28:

        goto LABEL_29;
      }

      v23 = v28;
      if (!v28)
      {
        goto LABEL_28;
      }

      v29 = CFEqual(v28, @"LocalizedFontNameNotFound");

      if (v29)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (v23)
    {
      v26 = v24 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {

      goto LABEL_28;
    }

    v27 = CFEqual(v23, v24);

    if (v27)
    {
      goto LABEL_22;
    }

LABEL_29:
    if (atomic_load_explicit(&v43, memory_order_acquire))
    {
      break;
    }

    if (v20 == ++v21)
    {
      goto LABEL_48;
    }
  }

  if (v39)
  {
    LanguageIdentifierByNormalizing(ValueAtIndex, 1u, &v42);
    *v39 = atomic_exchange(&v42, 0);
  }

LABEL_48:
  a1 = v40;
LABEL_50:

LABEL_51:
  v36 = atomic_load_explicit(&v43, memory_order_acquire);
  if (v36)
  {
    if (atomic_load_explicit(&v45, memory_order_acquire))
    {
      v37 = atomic_load_explicit(&v43, memory_order_acquire);
      IntValue = CFStringGetIntValue(atomic_load_explicit(&v46, memory_order_acquire));
      CreateLocalizedStringWithFormat(v37, &v42, IntValue);
    }

    v36 = atomic_exchange(&v43, 0);
  }

LABEL_55:
  a1->isa = v36;
}

void FontNameCodeForKey(__CFString const*)::$_0::__invoke()
{
  v0 = CFDictionaryCreate(*MEMORY[0x1E695E480], FontNameCodeForKey(__CFString const*)::keys, &FontNameCodeForKey(__CFString const*)::values, 20, MEMORY[0x1E695E9D8], 0);
  _MergedGlobals_15 = atomic_exchange(&v0, 0);
}

CFArrayRef CopyDefaultLocalizedName(__CFString const*,__CFString const*,__CFArray const*,__CFString const**)::$_0::__invoke(__CFBundle *a1)
{
  result = CFBundleCopyBundleLocalizations(a1);
  qword_1ED567A50 = result;
  return result;
}

void TFontFeatures::TFontFeatures(TFontFeatures *this, const TBaseFont *a2)
{
  *this = 0;
  memset(v99, 170, sizeof(v99));
  TFontFeatureTable::TFontFeatureTable(v99, a2);
  v4 = v99[2];
  if (v99[2])
  {
    v5 = *v99[2];
    if ((*v99[2] & 0xFEFFFFFF) == 0x100)
    {
      *__p = 0u;
      v97 = 0u;
      v98 = 0xAAAAAAAA3F800000;
      v79 = v5;
      v81 = v99[2];
      v78 = this;
      if (v5 == 16777472)
      {
        goto LABEL_59;
      }

      *v92 = 0uLL;
      v93 = 0uLL;
      v94 = 1065353216;
      v95 = -1431655766;
      v83 = a2;
      CommonTable = TBaseFont::GetCommonTable(a2, 1836020344, 0);
      if (CommonTable)
      {
        v7 = CommonTable;
        BytePtr = CFDataGetBytePtr(CommonTable);
        v8 = CFDataGetBytePtr(v7);
        v9 = v8 ? &v8[CFDataGetLength(v7)] : 0;
        if (BytePtr && (BytePtr + 8) <= v9)
        {
          operator new();
        }
      }

      v103[0] = 0xAAAAAAAAAAAAAAAALL;
      (*(*v83 + 488))(v103);
      v10 = atomic_load_explicit(v103, memory_order_acquire);
      v11 = v10;
      if (v10)
      {
        v12 = CFDataGetBytePtr(v10);
      }

      else
      {
        v12 = 0;
      }

      v13 = atomic_load_explicit(v103, memory_order_acquire);
      v14 = v13;
      v15 = v14;
      if (v14)
      {
        v16 = CFDataGetBytePtr(v14);

        if (v16)
        {
          v15 = &v16[CFDataGetLength(v13)];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
      }

      if (v12 && v12 + 6 <= v15)
      {
        v17 = (v12 + 12);
        LODWORD(v18) = bswap32(*(v12 + 2)) >> 16;
        v19 = &v12[12 * v18 + 12];
        if (v19 >= (v12 + 12) && v19 <= v15)
        {
          v20 = 12 * v18;
          goto LABEL_28;
        }

        if (v12 + 24 <= v15)
        {
          v18 = (v15 - v17) / 0xCuLL;
          v20 = 12 * v18;
LABEL_28:
          if (v18)
          {
            v21 = &v12[v20 + 12];
            do
            {
              if ((v17[4] & 0x80) != 0)
              {
                v22 = (bswap32(*v17) >> 16);
                if (v92[1])
                {
                  v23 = vcnt_s8(v92[1]);
                  v23.i16[0] = vaddlv_u8(v23);
                  if (v23.u32[0] > 1uLL)
                  {
                    v24 = v22;
                    if (v92[1] <= v22)
                    {
                      v24 = v22 % LOWORD(v92[1]);
                    }
                  }

                  else
                  {
                    v24 = (LODWORD(v92[1]) - 1) & v22;
                  }

                  v25 = *(v92[0] + v24);
                  if (v25)
                  {
                    for (i = *v25; i; i = *i)
                    {
                      v27 = i[1];
                      if (v27 == v22)
                      {
                        if (*(i + 8) == v22)
                        {
                          goto LABEL_49;
                        }
                      }

                      else
                      {
                        if (v23.u32[0] > 1uLL)
                        {
                          if (v27 >= v92[1])
                          {
                            v27 %= v92[1];
                          }
                        }

                        else
                        {
                          v27 &= v92[1] - 1;
                        }

                        if (v27 != v24)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                operator new();
              }

LABEL_49:
              v17 += 6;
            }

            while (v17 != v21);
          }
        }
      }

      std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::clear(__p);
      v28 = v92[0];
      v92[0] = 0;
      v29 = __p[0];
      __p[0] = v28;
      if (v29)
      {
        operator delete(v29);
      }

      v30 = v92[1];
      v92[1] = 0;
      v97 = v93;
      LODWORD(v98) = v94;
      __p[1] = v30;
      v4 = v81;
      if (*(&v93 + 1))
      {
        v31 = *(v93 + 8);
        if ((v30 & (v30 - 1)) != 0)
        {
          if (v31 >= v30)
          {
            v31 %= v30;
          }
        }

        else
        {
          v31 &= v30 - 1;
        }

        *(__p[0] + v31) = &v97;
        v93 = 0uLL;
      }

      std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v92);
LABEL_59:
      v32 = bswap32(*(v4 + 4)) >> 16;
      allocator = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v32, MEMORY[0x1E695E9C0]);
      if (!atomic_load_explicit(&Mutable, memory_order_acquire))
      {
LABEL_138:

        std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(__p);
        goto LABEL_139;
      }

      v33 = atomic_load_explicit(&v99[1], memory_order_acquire);
      v34 = v33;
      if (v34)
      {
        v35 = v34;
        v36 = CFDataGetBytePtr(v34);

        if (v36)
        {
          v37 = &v36[CFDataGetLength(v33)];
          goto LABEL_65;
        }
      }

      else
      {
      }

      v37 = 0;
LABEL_65:

      v38 = (v4 + 12);
      v39 = 3 * v32;
      v40 = v4 + 12 + 12 * v32;
      if (v40 < v4 + 12 || v40 > v37)
      {
        if (v4 + 24 > v37)
        {
LABEL_137:

          goto LABEL_138;
        }

        v32 = (v37 - v38) / 0xC;
        v39 = 3 * v32;
      }

      v42 = 4 * v39;
      if (v32)
      {
        v82 = v4 + v42;
        value = *MEMORY[0x1E695E4D0];
        v80 = v37;
        do
        {
          v43 = *v38;
          v44 = v38[1];
          v45 = *(v38 + 1);
          v46 = v38[4];
          v84 = v38;
          v47 = v38[5];
          v90 = 0xAAAAAAAAAAAAAAAALL;
          TCFNumber::TCFNumber<short>(&v90, bswap32(v47) >> 16);
          v48 = bswap32(v46);
          v49 = v79 != 16777472;
          if ((v48 & 0x40000000) == 0)
          {
            v49 = 1;
          }

          v86 = v48 >> 16;
          if (v48 >> 16 >= 0)
          {
            v49 = 1;
          }

          v50 = BYTE2(v48);
          if (v49)
          {
            v51 = 0;
          }

          else
          {
            v51 = v50;
          }

          v52 = bswap32(v45);
          v53 = (v4 + v52);
          if (v52 < 0 || ((v54 = bswap32(v44) >> 16, v55 = &v53[2 * v54], v55 >= v53) ? (v56 = v55 > v37) : (v56 = 1), v56))
          {
            v57 = (v53 + 2) > v37 || v52 <= -1;
            v54 = (v37 - v53) >> 2;
            if (v57)
            {
              LOWORD(v54) = 0;
            }
          }

          if (v54 > ((v86 & 0x8000) >> 15))
          {
            v58 = __rev16(v43);
            v59 = v54;
            v102 = CFArrayCreateMutable(allocator, v54, MEMORY[0x1E695E9C0]);
            if (atomic_load_explicit(&v102, memory_order_acquire))
            {
              if (v86 >= 0)
              {
                v60 = -2;
              }

              else
              {
                v60 = -1;
              }

              v88 = v60;
              v62 = v79 == 16777472 && v43 != 0;
              do
              {
                v63 = bswap32(*v53);
                if (*(&v97 + 1))
                {
                  LOWORD(v92[0]) = v58;
                  v64 = std::__hash_table<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>>>::find<unsigned short>(__p, v92);
                  v65 = v64 && *(v64 + 9) == HIWORD(v63);
                }

                else
                {
                  if (v86 < 0)
                  {
                    v66 = v51 == 0;
                  }

                  else
                  {
                    v66 = (v63 & 0x10000) == 0;
                  }

                  v65 = v66;
                }

                v67 = *&v88 & HIWORD(v63);
                v101 = 0xAAAAAAAAAAAAAAAALL;
                TCFNumber::TCFNumber<short>(&v101, bswap32(v53[1]) >> 16);
                v100 = 0xAAAAAAAAAAAAAAAALL;
                explicit = atomic_load_explicit(&v101, memory_order_acquire);
                v100 = 0;
                v92[0] = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                TCFNumber::TCFNumber<int>(v103, v67);
                CFDictionarySetValue(atomic_load_explicit(v92, memory_order_acquire), @"CTFeatureSelectorIdentifier", atomic_load_explicit(v103, memory_order_acquire));

                if (explicit)
                {
                  CFDictionarySetValue(atomic_load_explicit(v92, memory_order_acquire), @"CTFeatureSelectorNameID", explicit);
                }

                if (v65)
                {
                  CFDictionarySetValue(atomic_load_explicit(v92, memory_order_acquire), @"CTFeatureSelectorDefault", value);
                }

                if (v62)
                {
                  v92[0] = 0xAAAAAAAAAAAAAAAALL;
                  CopyOTFeatureSettingForTypeAndSelector(v58, v67, v92);
                  if (atomic_load_explicit(v92, memory_order_acquire))
                  {
                    v69 = atomic_load_explicit(v92, memory_order_acquire);
                    v70 = v69 ? [*(v69 + 8) objectForKey:@"CTFeatureOpenTypeTag"] : 0;
                    v71 = atomic_load_explicit(v92, memory_order_acquire);
                    if (v71)
                    {
                      v72 = [*(v71 + 8) objectForKey:@"CTFeatureOpenTypeValue"];
                      if (v70)
                      {
                        v73 = v72;
                        if (v72)
                        {
                          CFDictionaryAddValue(atomic_load_explicit(&v100, memory_order_acquire), @"CTFeatureOpenTypeTag", v70);
                          CFDictionaryAddValue(atomic_load_explicit(&v100, memory_order_acquire), @"CTFeatureOpenTypeValue", v73);
                        }
                      }
                    }
                  }
                }

                v74 = atomic_load_explicit(&v100, memory_order_acquire);
                CFArrayAppendValue(atomic_load_explicit(&v102, memory_order_acquire), v74);

                v53 += 2;
                --v51;
                --v59;
              }

              while (v59);
            }

            v75 = atomic_exchange(&v102, 0);

            v102 = 0xAAAAAAAAAAAAAAAALL;
            v76 = atomic_load_explicit(&v90, memory_order_acquire);
            v102 = 0;
            v92[0] = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            TCFNumber::TCFNumber<int>(v103, v58);
            CFDictionarySetValue(atomic_load_explicit(v92, memory_order_acquire), @"CTFeatureTypeIdentifier", atomic_load_explicit(v103, memory_order_acquire));

            CFDictionarySetValue(atomic_load_explicit(v92, memory_order_acquire), @"CTFeatureTypeSelectors", v75);
            if (v76)
            {
              CFDictionarySetValue(atomic_load_explicit(v92, memory_order_acquire), @"CTFeatureTypeNameID", v76);
            }

            v37 = v80;
            v4 = v81;
            if (v86 < 0)
            {
              CFDictionarySetValue(atomic_load_explicit(v92, memory_order_acquire), @"CTFeatureTypeExclusive", value);
            }

            v77 = atomic_load_explicit(&v102, memory_order_acquire);
            CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v77);
          }

          v38 = v84 + 6;
        }

        while (v84 != v82);
      }

      goto LABEL_137;
    }
  }

  else if ((*(*a2 + 480))(a2, 1717920116))
  {
  }

LABEL_139:
}

void TFontFeatures::Externalize(int a1@<W0>, const __CFArray *a2@<X1>, const TBaseFont *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v40[4] = *MEMORY[0x1E69E9840];
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v37 = 0xAAAAAAAAAAAAAAAALL;
        TCFMutableDictionary::TCFMutableDictionary(&v37, ValueAtIndex);
        Value = CFDictionaryGetValue(ValueAtIndex, @"CTFeatureTypeSelectors");
        if (Value)
        {
          v11 = Value;
          v12 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v13 = CFArrayGetCount(v11);
          if (v13)
          {
            v14 = v13;
            for (j = 0; j != v14; ++j)
            {
              v16 = CFArrayGetValueAtIndex(v11, j);
              v36 = 0xAAAAAAAAAAAAAAAALL;
              TCFMutableDictionary::TCFMutableDictionary(&v36, v16);
              CFArrayAppendValue(v12, atomic_load_explicit(&v36, memory_order_acquire));
            }
          }

          CFDictionaryReplaceValue(atomic_load_explicit(&v37, memory_order_acquire), @"CTFeatureTypeSelectors", v12);
        }

        CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), atomic_load_explicit(&v37, memory_order_acquire));
      }
    }
  }

  explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
  if (a1)
  {
    AppendCustomOTFeatures(explicit, a3, 1);
    v37 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a3 + 504))(&v37, a3);
    atomic_load_explicit(&v37, memory_order_acquire);
    v18 = CGFontNameTableCreate();
    v19 = atomic_load_explicit(&Mutable, memory_order_acquire);
    v20 = v19;
    if (v19)
    {
      v21 = CFArrayGetCount(v19);
      if (v21)
      {
        v22 = v21;
        for (k = 0; k != v22; ++k)
        {
          v24 = CFArrayGetValueAtIndex(v20, k);
          v39[0] = &unk_1EF257E70;
          v39[1] = v18;
          v39[2] = a4;
          v39[3] = v39;
          std::__function::__value_func<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::~__value_func[abi:fn200100](v39);
        }
      }
    }

    CGFontNameTableRelease();
    *a5 = atomic_exchange(&Mutable, 0);
  }

  else
  {
    AppendCustomOTFeatures(explicit, a3, 0);
    v25 = atomic_load_explicit(&Mutable, memory_order_acquire);
    v26 = v25;
    if (v25)
    {
      v27 = CFArrayGetCount(v25);
      if (v27)
      {
        v28 = v27;
        for (m = 0; m != v28; ++m)
        {
          v30 = CFArrayGetValueAtIndex(v26, m);
          v40[0] = &unk_1EF257E28;
          v40[3] = v40;
          std::__function::__value_func<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::~__value_func[abi:fn200100](v40);
        }
      }
    }

    *a5 = atomic_exchange(&Mutable, 0);
  }
}

void AppendCustomOTFeatures(__CFArray *a1, const TBaseFont *a2, int a3)
{
  v4 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (((*(*a2 + 480))(a2, 1836020344) & 1) == 0 && (((*(*v4 + 480))(v4, 1196643650) & 1) != 0 || (*(*v4 + 480))(v4, 1196445523)))
  {
    CustomOTFeatures(v4, 1, &v60);
    v6 = v60;
    v53 = v61;
    if (v60 != v61)
    {
      theArray = a1;
      v7 = *MEMORY[0x1E695E480];
      value = *MEMORY[0x1E695E4D0];
      v50 = v4;
      v47 = a3;
      allocator = *MEMORY[0x1E695E480];
      while (1)
      {
        v8 = *v6;
        *cStr = bswap32(*v6);
        cStr[4] = 0;
        v9 = CFStringCreateWithCString(v7, cStr, 0);
        v10 = NumberOfGlyphVariants(v4, v8);
        if (v10)
        {
          break;
        }

LABEL_65:

        if (++v6 == v53)
        {
          v6 = v60;
          goto LABEL_67;
        }
      }

      v11 = v10;
      Mutable = CFArrayCreateMutable(v7, v10 + 1, MEMORY[0x1E695E9C0]);
      v13 = v11;
      v14 = Mutable;
      v15 = 1;
      CFArrayAppendValue(v14, atomic_load_explicit(&v59, memory_order_acquire));

      v52 = v13;
      do
      {
        CFArrayAppendValue(v14, atomic_load_explicit(&v58, memory_order_acquire));

        ++v15;
        --v13;
      }

      while (v13);
      if (a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
        *cStr = 0xAAAAAAAAAAAAAAAALL;
        CTCopyLocalizedString(@"Off", @"OpenType", cStr);
        CFDictionarySetValue(ValueAtIndex, @"CTFeatureSelectorName", atomic_load_explicit(cStr, memory_order_acquire));
        if (v52 == 1)
        {
          v17 = CFArrayGetValueAtIndex(v14, 1);
          v62 = 0xAAAAAAAAAAAAAAAALL;
          CTCopyLocalizedString(@"On", @"OpenType", &v62);
          CFDictionarySetValue(v17, @"CTFeatureSelectorName", atomic_load_explicit(&v62, memory_order_acquire));
        }

        else
        {
          v18 = v52;
          v19 = 1;
          do
          {
            v20 = CFArrayGetValueAtIndex(v14, v19);
            v62 = 0xAAAAAAAAAAAAAAAALL;
            CreateLocalizedStringWithFormat(@"%d", &v62, v19);
            CFDictionarySetValue(v20, @"CTFeatureSelectorName", atomic_load_explicit(&v62, memory_order_acquire));

            ++v19;
            --v18;
          }

          while (v18);
        }

        a3 = v47;
      }

      v57 = 0;
      v7 = allocator;
      *cStr = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
      {
        dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
      }

      if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 0x10) == 0)
      {
        TCFNumber::TCFNumber<int>(&v62, 0);
        CFDictionarySetValue(atomic_load_explicit(cStr, memory_order_acquire), @"CTFeatureTypeIdentifier", atomic_load_explicit(&v62, memory_order_acquire));
      }

      CFDictionarySetValue(atomic_load_explicit(cStr, memory_order_acquire), @"CTFeatureOpenTypeTag", v9);
      CFDictionarySetValue(atomic_load_explicit(cStr, memory_order_acquire), @"CTFeatureTypeSelectors", v14);
      CFDictionarySetValue(atomic_load_explicit(cStr, memory_order_acquire), @"CTFeatureTypeExclusive", value);

      if ((v8 & 0xFFFF0000) == 0x73730000)
      {
        CharacterVariantOrStylisticSet = GetCharacterVariantOrStylisticSet(v8);
        if ((CharacterVariantOrStylisticSet & 0x100) != 0 && a3)
        {
          v36 = CharacterVariantOrStylisticSet;
          *cStr = 0xAAAAAAAAAAAAAAAALL;
          CTCopyLocalizedString(@"Stylistic Set %d", @"OpenType", &v62);
          CreateLocalizedStringWithFormat(atomic_load_explicit(&v62, memory_order_acquire), cStr, v36);

          CFDictionarySetValue(atomic_load_explicit(&v57, memory_order_acquire), @"CTFeatureTypeName", atomic_load_explicit(cStr, memory_order_acquire));
          v37 = NameIDForStylisticSet(v50, v36);
          if ((v37 & 0x10000) != 0)
          {
            v62 = 0xAAAAAAAAAAAAAAAALL;
            TCFNumber::TCFNumber<int>(&v62, v37);
            CFDictionarySetValue(atomic_load_explicit(&v57, memory_order_acquire), @"CTFeatureTypeNameID", atomic_load_explicit(&v62, memory_order_acquire));
          }

          goto LABEL_47;
        }
      }

      else if ((v8 & 0xFFFF0000) == 0x63760000)
      {
        v21 = GetCharacterVariantOrStylisticSet(v8);
        if ((v21 & 0x100) != 0)
        {
          if (a3)
          {
            v22 = v21;
            v56 = 0xAAAAAAAAAAAAAAAALL;
            CTCopyLocalizedString(@"Character Variant %d", @"OpenType", cStr);
            CreateLocalizedStringWithFormat(atomic_load_explicit(cStr, memory_order_acquire), &v56, v22);

            CFDictionarySetValue(atomic_load_explicit(&v57, memory_order_acquire), @"CTFeatureTypeName", atomic_load_explicit(&v56, memory_order_acquire));
            v54 = -1442797056;
            v55 = -1442797056;
            v67 = 0xAAAAAAAAAAAAAAAALL;
            *&v23 = 0xAAAAAAAAAAAAAAAALL;
            *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v66[5] = v23;
            v66[6] = v23;
            v66[3] = v23;
            v66[4] = v23;
            v66[1] = v23;
            v66[2] = v23;
            v66[0] = v23;
            *cStr = 0;
            v64 = 0;
            v65 = 0;
            v68 = v66;
            v24 = NameIDForCharacterVariant(v50, v22, &v55, &v54, cStr);
            if ((v24 & 0x10000) != 0)
            {
              v25 = v24;
              if (BYTE2(v55) == 1)
              {
                explicit = atomic_load_explicit(&v57, memory_order_acquire);
                if ((v55 & 0x10000) == 0)
                {
                  goto LABEL_70;
                }

                TCFNumber::TCFNumber<int>(&v62, v55);
                CFDictionarySetValue(explicit, @"CTFontFeatureSampleTextNameID", atomic_load_explicit(&v62, memory_order_acquire));
              }

              if (BYTE2(v54) == 1)
              {
                v27 = atomic_load_explicit(&v57, memory_order_acquire);
                if ((v54 & 0x10000) == 0)
                {
                  goto LABEL_70;
                }

                TCFNumber::TCFNumber<int>(&v62, v54);
                CFDictionarySetValue(v27, @"CTFontFeatureTooltipTextNameID", atomic_load_explicit(&v62, memory_order_acquire));
              }

              v62 = 0xAAAAAAAAAAAAAAAALL;
              TCFNumber::TCFNumber<int>(&v62, v25);
              CFDictionarySetValue(atomic_load_explicit(&v57, memory_order_acquire), @"CTFeatureTypeNameID", atomic_load_explicit(&v62, memory_order_acquire));
            }

            v28 = (v64 - *cStr) >> 2;
            if (v28)
            {
              v29 = 0;
              if (v52 < v28)
              {
                LODWORD(v28) = v52;
              }

              if (v28 <= 1)
              {
                v30 = 1;
              }

              else
              {
                v30 = v28;
              }

              while (1)
              {
                v31 = v29 + 1;
                v32 = CFArrayGetValueAtIndex(v14, v29 + 1);
                v62 = 0xAAAAAAAAAAAAAAAALL;
                if (v29 >= (v64 - *cStr) >> 2)
                {
                  break;
                }

                v33 = v32;
                TCFNumber::TCFNumber<int>(&v62, *(*cStr + 4 * v29));
                CFDictionarySetValue(v33, @"CTFeatureSelectorNameID", atomic_load_explicit(&v62, memory_order_acquire));

                ++v29;
                if (v30 == v31)
                {
                  goto LABEL_39;
                }
              }

LABEL_70:
              __break(1u);
            }

LABEL_39:
            v62 = cStr;
            std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v62);

            a3 = v47;
            v34 = theArray;
            v7 = allocator;
            goto LABEL_62;
          }
        }
      }

      *cStr = 0xAAAAAAAAAAAAAAAALL;
      CopyLocalizedOTFeatureName(v9, cStr);
      if (atomic_load_explicit(cStr, memory_order_acquire) && a3)
      {
        CFDictionarySetValue(atomic_load_explicit(&v57, memory_order_acquire), @"CTFeatureTypeName", atomic_load_explicit(cStr, memory_order_acquire));
LABEL_47:

        v34 = theArray;
LABEL_62:
        if (v34)
        {
          CFArrayAppendValue(v34, atomic_load_explicit(&v57, memory_order_acquire));
        }

        v4 = v50;
        goto LABEL_65;
      }

      v62 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 1;
      CopyFeatureSettingForTag(v9, 0, 0, 0, 1, &v62);
      v34 = theArray;
      if (atomic_load_explicit(&v62, memory_order_acquire))
      {
        v39 = atomic_load_explicit(&v62, memory_order_acquire);
        if (v39)
        {
          v40 = [*(v39 + 8) objectForKey:@"CTFeatureTypeIdentifier"];
          if (v40)
          {
            v41 = v40;
            v42 = [*(v39 + 8) objectForKey:@"CTFeatureSelectorIdentifier"];
            if (v42)
            {
              FeatureSelector = TFontFeatures::FindFeatureSelector(theArray, [v41 unsignedShortValue], objc_msgSend(v42, "unsignedShortValue"));
              v7 = allocator;
              if (FeatureSelector && (v44 = FeatureSelector, CFDictionaryAddValue(FeatureSelector, @"CTFeatureOpenTypeTag", v9), CFDictionaryAddValue(v44, @"CTFeatureOpenTypeValue", &unk_1EF278088), a3) && (v45 = CFDictionaryGetValue(v44, @"CTFeatureSelectorNameID")) != 0)
              {
                CFDictionarySetValue(atomic_load_explicit(&v57, memory_order_acquire), @"CTFeatureTypeNameID", v45);
                v38 = 0;
              }

              else
              {
                v38 = 1;
              }

              goto LABEL_59;
            }

            v38 = 1;
          }
        }

        v7 = allocator;
      }

LABEL_59:

      if (v38 && a3)
      {
        v46 = CFStringCreateWithFormat(v7, 0, @"'%@'", v9);
        CFDictionarySetValue(atomic_load_explicit(&v57, memory_order_acquire), @"CTFeatureTypeName", v46);
      }

      goto LABEL_62;
    }

LABEL_67:
    if (v6)
    {
      v61 = v6;
      operator delete(v6);
    }
  }
}

const __CFArray *anonymous namespace::TFeatureType::Externalize(const __CFDictionary *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  std::function<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::operator()(*(a2 + 24), a1, @"CTFeatureTypeNameID", @"CTFeatureTypeName", @"FeatureTypeNames");
  std::function<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::operator()(*(a2 + 24), a1, @"CTFontFeatureSampleTextNameID", @"CTFeatureSampleText", 0);
  std::function<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::operator()(*(a2 + 24), a1, @"CTFontFeatureTooltipTextNameID", @"CTFeatureTooltipText", 0);
  result = CFDictionaryGetValue(a1, @"CTFeatureTypeSelectors");
  if (result)
  {
    v5 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      v6 = result;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        v9 = *(a2 + 24);
        if (v9)
        {
          if (v9 == a2)
          {
            v11 = v10;
            (*(*v9 + 24))(v9, v10);
            v9 = v11;
          }

          else
          {
            v9 = (*(*v9 + 16))(v9);
            v11 = v9;
          }
        }

        else
        {
          v11 = 0;
        }

        std::function<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::operator()(v9, ValueAtIndex, @"CTFeatureSelectorNameID", @"CTFeatureSelectorName", @"FeatureSelectorNames");
        result = std::__function::__value_func<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::~__value_func[abi:fn200100](v10);
      }
    }
  }

  return result;
}

void *TFontFeatures::FindFeatureType(TFontFeatures *this, const __CFArray *a2, const __CFNumber *a3)
{
  v12 = -21846;
  Setting = GetSettingValue<__CFNumber const*,unsigned short>(a2, &v12);
  v5 = 0;
  if (this && Setting)
  {
    Count = CFArrayGetCount(this);
    if (Count)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        Value = CFArrayGetValueAtIndex(this, v8);
        v5 = Value;
        v11 = -21846;
        if (Value)
        {
          Value = CFDictionaryGetValue(Value, @"CTFeatureTypeIdentifier");
        }

        if (GetSettingValue<__CFNumber const*,unsigned short>(Value, &v11) && v12 == v11)
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void *TFontFeatures::FindFeatureSelector(TFontFeatures *a1, atomic_ullong *a2, const __CFNumber *a3)
{
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(explicit, @"CTFeatureTypeIdentifier");
  }

  else
  {
    Value = 0;
  }

  v8 = atomic_load_explicit(a2, memory_order_acquire);
  if (v8)
  {
    v9 = CFDictionaryGetValue(v8, @"CTFeatureSelectorIdentifier");
  }

  else
  {
    v9 = 0;
  }

  v12 = TFontFeatures::FindFeatureType(a1, Value, a3);

  return Selector;
}

void *TFontFeatures::FindFeatureSelector(TFontFeatures *this, const __CFArray *a2, int a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  TCFNumber::TCFNumber<int>(&v8, a2);
  v9 = TFontFeatures::FindFeatureType(this, atomic_load_explicit(&v8, memory_order_acquire), v5);

  TCFNumber::TCFNumber<int>(&v8, a3);

  return Selector;
}

void TFontFeatures::HandleAlias(TFeatureSetting const&,BOOL,TCFMutableArray &,TCFMutableArray &)const::$_1::operator()(atomic_ullong *a1, atomic_ullong *a2)
{
  v3 = [[CTFeatureSetting alloc] initWithDictionary:atomic_load_explicit(a2, memory_order_acquire)];
  CFArrayAppendValue(atomic_load_explicit(a1, memory_order_acquire), v3);
}

void TFeatureSetting::TFeatureSetting(TFeatureSetting *this, CFTypeRef cf, const __CFNumber *a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  *this = 0;
  v6 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  if (!a3)
  {
    if (v6 == TypeID)
    {
      return;
    }

    a3 = *MEMORY[0x1E695E4D0];
  }

  v8 = @"CTFeatureOpenTypeTag";
  if (v6 == TypeID)
  {
    v8 = @"CTFeatureTypeIdentifier";
  }

  v9 = @"CTFeatureOpenTypeValue";
  if (v6 == TypeID)
  {
    v9 = @"CTFeatureSelectorIdentifier";
  }

  keys[0] = v8;
  keys[1] = v9;
  values[0] = cf;
  values[1] = a3;
  v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  TCFRef<__CTFont const*>::Retain(this, v10);
}

const void *TFontFeatureSettingList::GetAATSettingOfType(TFontFeatureSettingList *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 16;
  do
  {
    v4 = *(v2 + 16);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[8 * v6];
  }

  while (v2);
  if (v3 == this + 16)
  {
    return 0;
  }

  if (*(v3 + 16) > a2)
  {
    return 0;
  }

  v7 = *(v3 + 6);
  if (v7 == -1)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(atomic_load_explicit(this, memory_order_acquire), v7);
  }
}

void TFontFeatureSettingList::IndexesOfAATSetting(TFontFeatureSettingList *this@<X0>, unsigned __int16 a2@<W1>, int a3@<W2>, const void **a4@<X8>)
{
  v22 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v6 = std::__tree<std::__value_type<unsigned short,AATFeaturePair>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,AATFeaturePair>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,AATFeaturePair>>>::__equal_range_multi<unsigned short>(this + 8, &v22);
  if (v6 != v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = 0;
    do
    {
      if (*(v8 + 20) == a3)
      {
        v11 = a4[2];
        if (v10 >= v11)
        {
          v12 = *a4;
          v13 = v10 - *a4;
          v14 = v13 >> 3;
          v15 = (v13 >> 3) + 1;
          if (v15 >> 61)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v16 = v11 - v12;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::allocator<long>::allocate_at_least[abi:fn200100](a4, v17);
          }

          *(8 * v14) = v8[6];
          v10 = (8 * v14 + 8);
          memcpy(0, v12, v13);
          v18 = *a4;
          *a4 = 0;
          a4[1] = v10;
          a4[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8[6];
          v10 += 8;
        }

        a4[1] = v10;
      }

      v19 = v8[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v8[2];
          v21 = *v20 == v8;
          v8 = v20;
        }

        while (!v21);
      }

      v8 = v20;
    }

    while (v20 != v9);
  }
}

atomic_ullong *anonymous namespace::TFeatureSelector::TFeatureSelector(atomic_ullong *this, const __CFString *a2, unsigned int a3, int a4)
{
  *this = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"CTFeatureOpenTypeTag", a2);
  TCFNumber::TCFNumber<unsigned int>(&v10, a3);
  CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"CTFeatureOpenTypeValue", atomic_load_explicit(&v10, memory_order_acquire));

  if (a4)
  {
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    CFDictionarySetValue(explicit, @"CTFeatureSelectorDefault", *MEMORY[0x1E695E4D0]);
  }

  return this;
}

uint64_t std::function<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v8 = a4;
  v9 = a3;
  v7 = a5;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9, &v8, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__value_func<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::~__value_func[abi:fn200100](v6);
}

uint64_t std::__function::__value_func<void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::~__value_func[abi:fn200100](uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

__n128 std::__function::__func<TFontFeatures::Externalize(ExternalizeFeature,__CFArray const*,TBaseFont const&,__CFArray const*)::$_1,std::allocator<TFontFeatures::Externalize(ExternalizeFeature,__CFArray const*,TBaseFont const&,__CFArray const*)::$_1>,void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257E70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<TFontFeatures::Externalize(ExternalizeFeature,__CFArray const*,TBaseFont const&,__CFArray const*)::$_1,std::allocator<TFontFeatures::Externalize(ExternalizeFeature,__CFArray const*,TBaseFont const&,__CFArray const*)::$_1>,void ()(__CFDictionary *,__CFString const*,__CFString const*,__CFString const*)>::operator()(uint64_t a1, CFDictionaryRef *a2, const void **a3, const void **a4, const __CFString **a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  Value = CFDictionaryGetValue(*a2, *a3);
  if (Value)
  {
    valuePtr = -1431655766;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v12 = 0xAAAAAAAAAAAAAAAALL;
    CopyLocalizedFontNameInternal(v9, 0, v10, valuePtr, 0, v8, &v12);
    if (atomic_load_explicit(&v12, memory_order_acquire))
    {
      CFDictionarySetValue(v5, v7, atomic_load_explicit(&v12, memory_order_acquire));
    }

    CFDictionaryRemoveValue(v5, v6);
  }
}

__CFData *LKTAddRange(__CFData *result, unsigned int a2, unsigned int a3, __int16 a4)
{
  if (result)
  {
    v7 = result;
    if (*(CFDataGetMutableBytePtr(result) + 2) <= a2 || *(CFDataGetMutableBytePtr(v7) + 2) <= a3)
    {
      return 0;
    }

    else
    {
      if (a2 <= a3)
      {
        v8 = a2;
        do
        {
          *&CFDataGetMutableBytePtr(v7)[2 * v8 + 18] = a4;
          *(*CFDataGetMutableBytePtr(v7) + v8++) = 1;
        }

        while (a3 + 1 != v8);
      }

      if (*(CFDataGetMutableBytePtr(v7) + 7) > a2)
      {
        *(CFDataGetMutableBytePtr(v7) + 7) = a2;
      }

      if (*(CFDataGetMutableBytePtr(v7) + 8) < a3)
      {
        *(CFDataGetMutableBytePtr(v7) + 8) = a3;
      }

      return 1;
    }
  }

  return result;
}

void LKTCreateLookupTable(__CFData *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v438 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_373;
  }

  v3 = a1;
  if (*(CFDataGetMutableBytePtr(a1) + 7) != -1 || *(CFDataGetMutableBytePtr(v3) + 8))
  {
    if (CFDataGetMutableBytePtr(v3))
    {
      memset(v432, 170, sizeof(v432));
      FindTightRanges(v432, v3, 1);
      v4 = 6 * ((v432[1] - v432[0]) >> 2) + 18;
      if (v432[0])
      {
        operator delete(v432[0]);
      }
    }

    else
    {
      v4 = 0;
    }

    if (CFDataGetMutableBytePtr(v3))
    {
      memset(v432, 170, sizeof(v432));
      FindTightRanges(v432, v3, 0);
      v5 = 6 * ((v432[1] - v432[0]) >> 2) + 18;
      if (v432[1] != v432[0])
      {
        v6 = v432[0];
        do
        {
          v7 = v6[1];
          v8 = *v6;
          v6 += 2;
          v5 += (2 * (v7 - v8) + 2);
        }

        while (v6 != v432[1]);
      }

      if (v432[0])
      {
        operator delete(v432[0]);
      }

      if (v5 < v4)
      {
        v9 = 4;
      }

      else
      {
        v5 = v4;
        v9 = 2;
      }
    }

    else
    {
      v5 = 0;
      if (v4)
      {
        v9 = 4;
      }

      else
      {
        v9 = 2;
      }
    }

    if (CFDataGetMutableBytePtr(v3))
    {
      v10 = *(CFDataGetMutableBytePtr(v3) + 8);
      v11 = ((2 * (v10 - *(CFDataGetMutableBytePtr(v3) + 7)) + 2) & 0x1FFFFFFFELL) + 6;
    }

    else
    {
      v11 = 0;
    }

    if (v11 >= v5)
    {
      v12 = v9;
    }

    else
    {
      v12 = 8;
    }

    *a2 = 0;
    theData = v3;
    if (v12 == 8)
    {
      if (CFDataGetMutableBytePtr(v3))
      {
        v30 = *(CFDataGetMutableBytePtr(v3) + 8);
        v31 = v30 - *(CFDataGetMutableBytePtr(v3) + 7);
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v435 = v32;
        v436 = v32;
        v433 = v32;
        v434 = v32;
        memset(v432, 0, sizeof(v432));
        v437 = &v433;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve(v432, (v31 + 4) & 0x7FFFFFFF);
        v33 = v432[1];
        if (v432[1] >= v432[2])
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v46 = 0xAAAAAAAAAAAAAAAALL;
          *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v46;
          *&v427[16] = v46;
          v47 = (v432[1] - v432[0]) >> 1;
          if (v47 <= -2)
          {
            goto LABEL_382;
          }

          if ((v432[2] - v432[0]) <= (v47 + 1))
          {
            v48 = v47 + 1;
          }

          else
          {
            v48 = v432[2] - v432[0];
          }

          if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v49 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v48;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v49, v47, &v433);
          v50 = *&v427[16];
          **&v427[16] = 2048;
          *&v427[16] = v50 + 2;
          v51 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v51, v432[0], v432[1] - v432[0]);
          v52 = v432[0];
          v53 = v432[2];
          v432[0] = v51;
          v392 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v52;
          *&v427[24] = v53;
          *v427 = v52;
          *&v427[8] = v52;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v34 = v392;
        }

        else
        {
          *v432[1] = 2048;
          v34 = v33 + 2;
        }

        v432[1] = v34;
        v54 = bswap32(*(CFDataGetMutableBytePtr(v3) + 7)) >> 16;
        v55 = v432[1];
        v56 = v432[2];
        if (v432[1] >= v432[2])
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v78 = 0xAAAAAAAAAAAAAAAALL;
          *(&v78 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v78;
          *&v427[16] = v78;
          v79 = (v432[1] - v432[0]) >> 1;
          if (v79 <= -2)
          {
            goto LABEL_382;
          }

          if ((v432[2] - v432[0]) <= (v79 + 1))
          {
            v80 = v79 + 1;
          }

          else
          {
            v80 = v432[2] - v432[0];
          }

          if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v81 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v80;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v81, v79, &v433);
          v82 = *&v427[16];
          **&v427[16] = v54;
          *&v427[16] = v82 + 2;
          v83 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v83, v432[0], v432[1] - v432[0]);
          v84 = v432[0];
          v85 = v432[2];
          v432[0] = v83;
          v395 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v84;
          *&v427[24] = v85;
          *v427 = v84;
          *&v427[8] = v84;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v56 = v432[2];
          v57 = v395;
        }

        else
        {
          *v432[1] = v54;
          v57 = v55 + 2;
        }

        v86 = v31 + 1;
        v432[1] = v57;
        v87 = bswap32(v86) >> 16;
        if (v57 >= v56)
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v112 = 0xAAAAAAAAAAAAAAAALL;
          *(&v112 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v112;
          *&v427[16] = v112;
          v113 = (v57 - v432[0]) >> 1;
          if (v113 <= -2)
          {
            goto LABEL_382;
          }

          v114 = v56 - v432[0];
          if (v114 <= v113 + 1)
          {
            v115 = v113 + 1;
          }

          else
          {
            v115 = v114;
          }

          if (v114 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v116 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v116 = v115;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v116, v113, &v433);
          v117 = *&v427[16];
          **&v427[16] = v87;
          *&v427[16] = v117 + 2;
          v118 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v118, v432[0], v432[1] - v432[0]);
          v119 = v432[0];
          v120 = v432[2];
          v432[0] = v118;
          v398 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v119;
          *&v427[24] = v120;
          *v427 = v119;
          *&v427[8] = v119;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v88 = v398;
        }

        else
        {
          *v57 = v87;
          v88 = v57 + 1;
        }

        v432[1] = v88;
        if (v86)
        {
          for (i = 0; i != v86; ++i)
          {
            MutableBytePtr = CFDataGetMutableBytePtr(v3);
            v123 = bswap32(*&MutableBytePtr[2 * i + 18 + 2 * *(CFDataGetMutableBytePtr(v3) + 7)]) >> 16;
            v124 = v432[1];
            if (v432[1] >= v432[2])
            {
              *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
              *&v125 = 0xAAAAAAAAAAAAAAAALL;
              *(&v125 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v427 = v125;
              *&v427[16] = v125;
              v126 = (v432[1] - v432[0]) >> 1;
              if (v126 <= -2)
              {
                goto LABEL_382;
              }

              if ((v432[2] - v432[0]) <= (v126 + 1))
              {
                v127 = v126 + 1;
              }

              else
              {
                v127 = v432[2] - v432[0];
              }

              if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
              {
                v128 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v128 = v127;
              }

              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v128, v126, &v433);
              v129 = *&v427[16];
              **&v427[16] = v123;
              *&v427[16] = v129 + 2;
              v130 = (*&v427[8] - (v432[1] - v432[0]));
              memcpy(v130, v432[0], v432[1] - v432[0]);
              v131 = v432[0];
              v132 = v432[2];
              v432[0] = v130;
              v399 = *&v427[16];
              *&v432[1] = *&v427[16];
              *&v427[16] = v131;
              *&v427[24] = v132;
              *v427 = v131;
              *&v427[8] = v131;
              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
              v88 = v399;
            }

            else
            {
              *v432[1] = v123;
              v88 = v124 + 2;
            }

            v432[1] = v88;
          }
        }

        *v425 = CFDataCreate(*MEMORY[0x1E695E480], v432[0], v88 - v432[0]);
        *v427 = v432;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v427);
      }

      else
      {
        *v425 = 0;
      }

      v133 = *v425;
    }

    else
    {
      if (v12 != 4)
      {
        if (!CFDataGetMutableBytePtr(v3))
        {
          v424[0] = 0;
LABEL_342:

          v133 = v424[0];
          goto LABEL_343;
        }

        memset(v425, 170, 24);
        FindTightRanges(v425, v3, 1);
        v13 = *&v425[8];
        v14 = *v425;
        v15 = *&v425[8] - *v425;
        v16 = (*&v425[8] - *v425) >> 2;
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v435 = v17;
        v436 = v17;
        v433 = v17;
        v434 = v17;
        memset(v432, 0, sizeof(v432));
        v437 = &v433;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve(v432, (6 * v16 + 18) >> 1);
        v18 = v432[1];
        v19 = v432[2];
        if (v432[1] >= v432[2])
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v58 = 0xAAAAAAAAAAAAAAAALL;
          *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v58;
          *&v427[16] = v58;
          v59 = (v432[1] - v432[0]) >> 1;
          if (v59 <= -2)
          {
            goto LABEL_382;
          }

          if ((v432[2] - v432[0]) <= (v59 + 1))
          {
            v60 = v59 + 1;
          }

          else
          {
            v60 = v432[2] - v432[0];
          }

          if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v61 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v60;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v61, v59, &v433);
          v62 = *&v427[16];
          **&v427[16] = 512;
          *&v427[16] = v62 + 2;
          v63 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v63, v432[0], v432[1] - v432[0]);
          v64 = v432[0];
          v65 = v432[2];
          v432[0] = v63;
          v393 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v64;
          *&v427[24] = v65;
          *v427 = v64;
          *&v427[8] = v64;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v19 = v432[2];
          v20 = v393;
        }

        else
        {
          *v432[1] = 512;
          v20 = v18 + 2;
        }

        v432[1] = v20;
        if (v20 >= v19)
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v89 = 0xAAAAAAAAAAAAAAAALL;
          *(&v89 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v89;
          *&v427[16] = v89;
          v90 = (v20 - v432[0]) >> 1;
          if (v90 <= -2)
          {
            goto LABEL_382;
          }

          v91 = v19 - v432[0];
          if (v91 <= v90 + 1)
          {
            v92 = v90 + 1;
          }

          else
          {
            v92 = v91;
          }

          if (v91 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v93 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v93 = v92;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v93, v90, &v433);
          v94 = *&v427[16];
          **&v427[16] = 1536;
          *&v427[16] = v94 + 2;
          v95 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v95, v432[0], v432[1] - v432[0]);
          v96 = v432[0];
          v97 = v432[2];
          v432[0] = v95;
          v396 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v96;
          *&v427[24] = v97;
          *v427 = v96;
          *&v427[8] = v96;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v19 = v432[2];
          v66 = v396;
        }

        else
        {
          *v20 = 1536;
          v66 = v20 + 2;
        }

        v432[1] = v66;
        v98 = bswap32(v16) >> 16;
        if (v66 >= v19)
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v134 = 0xAAAAAAAAAAAAAAAALL;
          *(&v134 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v134;
          *&v427[16] = v134;
          v135 = (v66 - v432[0]) >> 1;
          if (v135 <= -2)
          {
            goto LABEL_382;
          }

          v136 = v19 - v432[0];
          if (v136 <= v135 + 1)
          {
            v137 = v135 + 1;
          }

          else
          {
            v137 = v136;
          }

          if (v136 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v138 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v138 = v137;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v138, v135, &v433);
          v139 = *&v427[16];
          **&v427[16] = v98;
          *&v427[16] = v139 + 2;
          v140 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v140, v432[0], v432[1] - v432[0]);
          v141 = v432[0];
          v142 = v432[2];
          v432[0] = v140;
          v400 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v141;
          *&v427[24] = v142;
          *v427 = v141;
          *&v427[8] = v141;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v19 = v432[2];
          v99 = v400;
        }

        else
        {
          *v66 = v98;
          v99 = v66 + 2;
        }

        v143 = __clz((v15 >> 2));
        v432[1] = v99;
        v144 = bswap32(6 << ~v143) >> 16;
        if (v99 >= v19)
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v157 = 0xAAAAAAAAAAAAAAAALL;
          *(&v157 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v157;
          *&v427[16] = v157;
          v158 = (v99 - v432[0]) >> 1;
          if (v158 <= -2)
          {
            goto LABEL_382;
          }

          v159 = v19 - v432[0];
          if (v159 <= v158 + 1)
          {
            v160 = v158 + 1;
          }

          else
          {
            v160 = v159;
          }

          if (v159 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v161 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v161 = v160;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v161, v158, &v433);
          v162 = *&v427[16];
          **&v427[16] = v144;
          *&v427[16] = v162 + 2;
          v163 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v163, v432[0], v432[1] - v432[0]);
          v164 = v432[0];
          v165 = v432[2];
          v432[0] = v163;
          v402 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v164;
          *&v427[24] = v165;
          *v427 = v164;
          *&v427[8] = v164;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v19 = v432[2];
          v145 = v402;
        }

        else
        {
          *v99 = v144;
          v145 = v99 + 2;
        }

        v432[1] = v145;
        v166 = bswap32(31 - v143) >> 16;
        if (v145 >= v19)
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v179 = 0xAAAAAAAAAAAAAAAALL;
          *(&v179 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v179;
          *&v427[16] = v179;
          v180 = (v145 - v432[0]) >> 1;
          if (v180 <= -2)
          {
            goto LABEL_382;
          }

          v181 = v19 - v432[0];
          if (v181 <= v180 + 1)
          {
            v182 = v180 + 1;
          }

          else
          {
            v182 = v181;
          }

          if (v181 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v183 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v183 = v182;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v183, v180, &v433);
          v184 = *&v427[16];
          **&v427[16] = v166;
          *&v427[16] = v184 + 2;
          v185 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v185, v432[0], v432[1] - v432[0]);
          v186 = v432[0];
          v187 = v432[2];
          v432[0] = v185;
          v404 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v186;
          *&v427[24] = v187;
          *v427 = v186;
          *&v427[8] = v186;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v19 = v432[2];
          v167 = v404;
        }

        else
        {
          *v145 = v166;
          v167 = v145 + 2;
        }

        v432[1] = v167;
        v188 = bswap32(6 * ((-1 << ~v143) + v16)) >> 16;
        if (v167 >= v19)
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v252 = 0xAAAAAAAAAAAAAAAALL;
          *(&v252 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v252;
          *&v427[16] = v252;
          v253 = (v167 - v432[0]) >> 1;
          if (v253 <= -2)
          {
            goto LABEL_382;
          }

          v254 = v19 - v432[0];
          if (v254 <= v253 + 1)
          {
            v255 = v253 + 1;
          }

          else
          {
            v255 = v254;
          }

          if (v254 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v256 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v256 = v255;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v256, v253, &v433);
          v257 = *&v427[16];
          **&v427[16] = v188;
          *&v427[16] = v257 + 2;
          v258 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v258, v432[0], v432[1] - v432[0]);
          v259 = v432[0];
          v260 = v432[2];
          v432[0] = v258;
          v410 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v259;
          *&v427[24] = v260;
          *v427 = v259;
          *&v427[8] = v259;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v189 = v410;
        }

        else
        {
          *v167 = v188;
          v189 = v167 + 2;
        }

        v388 = a2;
        v432[1] = v189;
        if (v14 == v13)
        {
          v261 = v14;
        }

        else
        {
          v261 = v14;
          do
          {
            v262 = bswap32(v14[1]) >> 16;
            v263 = v432[2];
            if (v189 >= v432[2])
            {
              *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
              *&v265 = 0xAAAAAAAAAAAAAAAALL;
              *(&v265 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v427 = v265;
              *&v427[16] = v265;
              v266 = (v189 - v432[0]) >> 1;
              if (v266 <= -2)
              {
                goto LABEL_382;
              }

              if ((v432[2] - v432[0]) <= (v266 + 1))
              {
                v267 = v266 + 1;
              }

              else
              {
                v267 = v432[2] - v432[0];
              }

              if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
              {
                v268 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v268 = v267;
              }

              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v268, v266, &v433);
              v269 = *&v427[16];
              **&v427[16] = v262;
              *&v427[16] = v269 + 2;
              v270 = (*&v427[8] - (v432[1] - v432[0]));
              memcpy(v270, v432[0], v432[1] - v432[0]);
              v271 = v432[0];
              v272 = v432[2];
              v432[0] = v270;
              v411 = *&v427[16];
              *&v432[1] = *&v427[16];
              *&v427[16] = v271;
              *&v427[24] = v272;
              *v427 = v271;
              *&v427[8] = v271;
              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
              v263 = v432[2];
              v264 = v411;
            }

            else
            {
              *v189 = v262;
              v264 = v189 + 1;
            }

            v432[1] = v264;
            v273 = bswap32(*v14) >> 16;
            if (v264 >= v263)
            {
              *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
              *&v275 = 0xAAAAAAAAAAAAAAAALL;
              *(&v275 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v427 = v275;
              *&v427[16] = v275;
              v276 = (v264 - v432[0]) >> 1;
              if (v276 <= -2)
              {
                goto LABEL_382;
              }

              v277 = v263 - v432[0];
              if (v277 <= v276 + 1)
              {
                v278 = v276 + 1;
              }

              else
              {
                v278 = v277;
              }

              if (v277 >= 0x7FFFFFFFFFFFFFFELL)
              {
                v279 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v279 = v278;
              }

              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v279, v276, &v433);
              v280 = *&v427[16];
              **&v427[16] = v273;
              *&v427[16] = v280 + 2;
              v281 = (*&v427[8] - (v432[1] - v432[0]));
              memcpy(v281, v432[0], v432[1] - v432[0]);
              v282 = v432[0];
              v283 = v432[2];
              v432[0] = v281;
              v412 = *&v427[16];
              *&v432[1] = *&v427[16];
              *&v427[16] = v282;
              *&v427[24] = v283;
              *v427 = v282;
              *&v427[8] = v282;
              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
              v274 = v412;
            }

            else
            {
              *v264 = v273;
              v274 = v264 + 1;
            }

            v432[1] = v274;
            v284 = bswap32(*&CFDataGetMutableBytePtr(theData)[2 * *v14 + 18]) >> 16;
            v285 = v432[1];
            if (v432[1] >= v432[2])
            {
              *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
              *&v286 = 0xAAAAAAAAAAAAAAAALL;
              *(&v286 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v427 = v286;
              *&v427[16] = v286;
              v287 = (v432[1] - v432[0]) >> 1;
              if (v287 <= -2)
              {
                goto LABEL_382;
              }

              if ((v432[2] - v432[0]) <= (v287 + 1))
              {
                v288 = v287 + 1;
              }

              else
              {
                v288 = v432[2] - v432[0];
              }

              if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
              {
                v289 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v289 = v288;
              }

              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v289, v287, &v433);
              v290 = *&v427[16];
              **&v427[16] = v284;
              *&v427[16] = v290 + 2;
              v291 = (*&v427[8] - (v432[1] - v432[0]));
              memcpy(v291, v432[0], v432[1] - v432[0]);
              v292 = v432[0];
              v293 = v432[2];
              v432[0] = v291;
              v413 = *&v427[16];
              *&v432[1] = *&v427[16];
              *&v427[16] = v292;
              *&v427[24] = v293;
              *v427 = v292;
              *&v427[8] = v292;
              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
              v189 = v413;
            }

            else
            {
              *v432[1] = v284;
              v189 = v285 + 2;
            }

            v432[1] = v189;
            v14 += 2;
          }

          while (v14 != v13);
        }

        v323 = v432[2];
        if (v189 >= v432[2])
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v327 = 0xAAAAAAAAAAAAAAAALL;
          *(&v327 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v327;
          *&v427[16] = v327;
          v328 = (v189 - v432[0]) >> 1;
          v325 = theData;
          if (v328 <= -2)
          {
            goto LABEL_382;
          }

          v326 = v261;
          if ((v432[2] - v432[0]) <= (v328 + 1))
          {
            v329 = v328 + 1;
          }

          else
          {
            v329 = v432[2] - v432[0];
          }

          if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v330 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v330 = v329;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v330, v328, &v433);
          v331 = *&v427[16];
          **&v427[16] = -1;
          *&v427[16] = v331 + 2;
          v332 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v332, v432[0], v432[1] - v432[0]);
          v333 = v432[0];
          v334 = v432[2];
          v432[0] = v332;
          v417 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v333;
          *&v427[24] = v334;
          *v427 = v333;
          *&v427[8] = v333;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v323 = v432[2];
          v324 = v417;
        }

        else
        {
          *v189 = -1;
          v324 = v189 + 1;
          v325 = theData;
          v326 = v261;
        }

        a2 = v388;
        v432[1] = v324;
        if (v324 >= v323)
        {
          *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v336 = 0xAAAAAAAAAAAAAAAALL;
          *(&v336 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v427 = v336;
          *&v427[16] = v336;
          v337 = (v324 - v432[0]) >> 1;
          if (v337 <= -2)
          {
            goto LABEL_382;
          }

          v338 = v323 - v432[0];
          if (v338 <= v337 + 1)
          {
            v339 = v337 + 1;
          }

          else
          {
            v339 = v338;
          }

          if (v338 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v340 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v340 = v339;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v340, v337, &v433);
          v341 = *&v427[16];
          **&v427[16] = -1;
          *&v427[16] = v341 + 2;
          v342 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v342, v432[0], v432[1] - v432[0]);
          v343 = v432[0];
          v344 = v432[2];
          v432[0] = v342;
          v418 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v343;
          *&v427[24] = v344;
          *v427 = v343;
          *&v427[8] = v343;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v335 = v418;
        }

        else
        {
          *v324 = -1;
          v335 = v324 + 1;
        }

        v432[1] = v335;
        v345 = bswap32(*(CFDataGetMutableBytePtr(v325) + 6)) >> 16;
        v346 = v432[1];
        if (v432[1] < v432[2])
        {
          *v432[1] = v345;
          v347 = v346 + 2;
LABEL_340:
          v432[1] = v347;
          v424[0] = CFDataCreate(*MEMORY[0x1E695E480], v432[0], v347 - v432[0]);
          *v427 = v432;
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v427);
          if (v326)
          {
            operator delete(v326);
          }

          goto LABEL_342;
        }

        *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v348 = 0xAAAAAAAAAAAAAAAALL;
        *(&v348 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v427 = v348;
        *&v427[16] = v348;
        v349 = (v432[1] - v432[0]) >> 1;
        if (v349 > -2)
        {
          if ((v432[2] - v432[0]) <= (v349 + 1))
          {
            v350 = v349 + 1;
          }

          else
          {
            v350 = v432[2] - v432[0];
          }

          if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v351 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v351 = v350;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v351, v349, &v433);
          v352 = *&v427[16];
          **&v427[16] = v345;
          *&v427[16] = v352 + 2;
          v353 = (*&v427[8] - (v432[1] - v432[0]));
          memcpy(v353, v432[0], v432[1] - v432[0]);
          v354 = v432[0];
          v355 = v432[2];
          v432[0] = v353;
          v419 = *&v427[16];
          *&v432[1] = *&v427[16];
          *&v427[16] = v354;
          *&v427[24] = v355;
          *v427 = v354;
          *&v427[8] = v354;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
          v347 = v419;
          goto LABEL_340;
        }

LABEL_382:
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      if (CFDataGetMutableBytePtr(v3))
      {
        v387 = a2;
        memset(v424, 170, sizeof(v424));
        FindTightRanges(v424, v3, 0);
        v21 = v424[0];
        v389 = v424[1];
        v22 = v424[1] - v424[0];
        v23 = (v424[1] - v424[0]) >> 2;
        v24 = 6 * v23 + 18;
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v435 = v25;
        v436 = v25;
        v433 = v25;
        v434 = v25;
        memset(v432, 0, sizeof(v432));
        v437 = &v433;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve(v432, v24 >> 1);
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v430 = v26;
        v429 = v26;
        v428 = v26;
        *&v427[24] = v26;
        memset(v427, 0, 24);
        v431 = &v427[24];
        v27 = v432[1];
        v28 = v432[2];
        if (v432[1] >= v432[2])
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v26;
          *&v425[16] = v26;
          v38 = (v432[1] - v432[0]) >> 1;
          if (v38 <= -2)
          {
            goto LABEL_382;
          }

          if ((v432[2] - v432[0]) <= (v38 + 1))
          {
            v39 = v38 + 1;
          }

          else
          {
            v39 = v432[2] - v432[0];
          }

          if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v40 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v39;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v40, v38, &v433);
          v41 = *&v425[16];
          **&v425[16] = 1024;
          *&v425[16] = v41 + 2;
          v42 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v42, v432[0], v432[1] - v432[0]);
          v43 = v432[0];
          v44 = v432[2];
          v432[0] = v42;
          v391 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v43;
          *&v425[24] = v44;
          *v425 = v43;
          *&v425[8] = v43;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v28 = v432[2];
          v29 = v391;
        }

        else
        {
          *v432[1] = 1024;
          v29 = v27 + 2;
        }

        v432[1] = v29;
        if (v29 >= v28)
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *&v67 = 0xAAAAAAAAAAAAAAAALL;
          *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v67;
          *&v425[16] = v67;
          v68 = (v29 - v432[0]) >> 1;
          if (v68 <= -2)
          {
            goto LABEL_382;
          }

          v69 = v28 - v432[0];
          if (v69 <= v68 + 1)
          {
            v70 = v68 + 1;
          }

          else
          {
            v70 = v69;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v71 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v70;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v71, v68, &v433);
          v72 = *&v425[16];
          **&v425[16] = 1536;
          *&v425[16] = v72 + 2;
          v73 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v73, v432[0], v432[1] - v432[0]);
          v74 = v432[0];
          v75 = v432[2];
          v432[0] = v73;
          v394 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v74;
          *&v425[24] = v75;
          *v425 = v74;
          *&v425[8] = v74;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v28 = v432[2];
          v45 = v394;
        }

        else
        {
          *v29 = 1536;
          v45 = v29 + 2;
        }

        v432[1] = v45;
        v76 = bswap32(v23) >> 16;
        if (v45 >= v28)
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *&v100 = 0xAAAAAAAAAAAAAAAALL;
          *(&v100 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v100;
          *&v425[16] = v100;
          v101 = (v45 - v432[0]) >> 1;
          if (v101 <= -2)
          {
            goto LABEL_382;
          }

          v102 = v28 - v432[0];
          if (v102 <= v101 + 1)
          {
            v103 = v101 + 1;
          }

          else
          {
            v103 = v102;
          }

          if (v102 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v104 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v104 = v103;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v104, v101, &v433);
          v105 = *&v425[16];
          **&v425[16] = v76;
          *&v425[16] = v105 + 2;
          v106 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v106, v432[0], v432[1] - v432[0]);
          v107 = v432[0];
          v108 = v432[2];
          v432[0] = v106;
          v397 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v107;
          *&v425[24] = v108;
          *v425 = v107;
          *&v425[8] = v107;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v28 = v432[2];
          v77 = v397;
        }

        else
        {
          *v45 = v76;
          v77 = v45 + 2;
        }

        v109 = __clz((v22 >> 2));
        v432[1] = v77;
        v110 = bswap32(6 << ~v109) >> 16;
        if (v77 >= v28)
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *&v146 = 0xAAAAAAAAAAAAAAAALL;
          *(&v146 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v146;
          *&v425[16] = v146;
          v147 = (v77 - v432[0]) >> 1;
          if (v147 <= -2)
          {
            goto LABEL_382;
          }

          v148 = v28 - v432[0];
          if (v148 <= v147 + 1)
          {
            v149 = v147 + 1;
          }

          else
          {
            v149 = v148;
          }

          if (v148 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v150 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v150 = v149;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v150, v147, &v433);
          v151 = *&v425[16];
          **&v425[16] = v110;
          *&v425[16] = v151 + 2;
          v152 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v152, v432[0], v432[1] - v432[0]);
          v153 = v432[0];
          v154 = v432[2];
          v432[0] = v152;
          v401 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v153;
          *&v425[24] = v154;
          *v425 = v153;
          *&v425[8] = v153;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v28 = v432[2];
          v111 = v401;
        }

        else
        {
          *v77 = v110;
          v111 = v77 + 2;
        }

        v432[1] = v111;
        v155 = bswap32(31 - v109) >> 16;
        if (v111 >= v28)
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *&v168 = 0xAAAAAAAAAAAAAAAALL;
          *(&v168 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v168;
          *&v425[16] = v168;
          v169 = (v111 - v432[0]) >> 1;
          if (v169 <= -2)
          {
            goto LABEL_382;
          }

          v170 = v28 - v432[0];
          if (v170 <= v169 + 1)
          {
            v171 = v169 + 1;
          }

          else
          {
            v171 = v170;
          }

          if (v170 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v172 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v172 = v171;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v172, v169, &v433);
          v173 = *&v425[16];
          **&v425[16] = v155;
          *&v425[16] = v173 + 2;
          v174 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v174, v432[0], v432[1] - v432[0]);
          v175 = v432[0];
          v176 = v432[2];
          v432[0] = v174;
          v403 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v175;
          *&v425[24] = v176;
          *v425 = v175;
          *&v425[8] = v175;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v28 = v432[2];
          v156 = v403;
        }

        else
        {
          *v111 = v155;
          v156 = v111 + 2;
        }

        v432[1] = v156;
        v177 = bswap32(6 * ((-1 << ~v109) + v23)) >> 16;
        if (v156 >= v28)
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *&v190 = 0xAAAAAAAAAAAAAAAALL;
          *(&v190 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v190;
          *&v425[16] = v190;
          v191 = (v156 - v432[0]) >> 1;
          if (v191 <= -2)
          {
            goto LABEL_382;
          }

          v192 = v28 - v432[0];
          if (v192 <= v191 + 1)
          {
            v193 = v191 + 1;
          }

          else
          {
            v193 = v192;
          }

          if (v192 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v194 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v194 = v193;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v194, v191, &v433);
          v195 = *&v425[16];
          **&v425[16] = v177;
          *&v425[16] = v195 + 2;
          v196 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v196, v432[0], v432[1] - v432[0]);
          v197 = v432[0];
          v198 = v432[2];
          v432[0] = v196;
          v405 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v197;
          *&v425[24] = v198;
          *v425 = v197;
          *&v425[8] = v197;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v178 = v405;
        }

        else
        {
          *v156 = v177;
          v178 = v156 + 2;
        }

        v432[1] = v178;
        if (v21 != v389)
        {
          v386 = v21;
          v199 = v21;
          do
          {
            v200 = v199[1];
            v201 = *v199;
            v202 = __rev16(v200);
            v204 = v432[1];
            v203 = v432[2];
            if (v432[1] >= v432[2])
            {
              v426 = 0xAAAAAAAAAAAAAAAALL;
              *&v206 = 0xAAAAAAAAAAAAAAAALL;
              *(&v206 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v425 = v206;
              *&v425[16] = v206;
              v207 = (v432[1] - v432[0]) >> 1;
              if (v207 <= -2)
              {
                goto LABEL_382;
              }

              if ((v432[2] - v432[0]) <= (v207 + 1))
              {
                v208 = v207 + 1;
              }

              else
              {
                v208 = v432[2] - v432[0];
              }

              if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
              {
                v209 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v209 = v208;
              }

              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v209, v207, &v433);
              v210 = *&v425[16];
              **&v425[16] = v202;
              *&v425[16] = v210 + 2;
              v211 = (*&v425[8] - (v432[1] - v432[0]));
              memcpy(v211, v432[0], v432[1] - v432[0]);
              v212 = v432[0];
              v213 = v432[2];
              v432[0] = v211;
              v406 = *&v425[16];
              *&v432[1] = *&v425[16];
              *&v425[16] = v212;
              *&v425[24] = v213;
              *v425 = v212;
              *&v425[8] = v212;
              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
              v203 = v432[2];
              v205 = v406;
            }

            else
            {
              *v432[1] = v202;
              v205 = v204 + 2;
            }

            v432[1] = v205;
            v214 = bswap32(*v199) >> 16;
            if (v205 >= v203)
            {
              v426 = 0xAAAAAAAAAAAAAAAALL;
              *&v216 = 0xAAAAAAAAAAAAAAAALL;
              *(&v216 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v425 = v216;
              *&v425[16] = v216;
              v217 = (v205 - v432[0]) >> 1;
              if (v217 <= -2)
              {
                goto LABEL_382;
              }

              v218 = v203 - v432[0];
              if (v218 <= v217 + 1)
              {
                v219 = v217 + 1;
              }

              else
              {
                v219 = v218;
              }

              if (v218 >= 0x7FFFFFFFFFFFFFFELL)
              {
                v220 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v220 = v219;
              }

              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v220, v217, &v433);
              v221 = *&v425[16];
              **&v425[16] = v214;
              *&v425[16] = v221 + 2;
              v222 = (*&v425[8] - (v432[1] - v432[0]));
              memcpy(v222, v432[0], v432[1] - v432[0]);
              v223 = v432[0];
              v224 = v432[2];
              v432[0] = v222;
              v407 = *&v425[16];
              *&v432[1] = *&v425[16];
              *&v425[16] = v223;
              *&v425[24] = v224;
              *v425 = v223;
              *&v425[8] = v223;
              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
              v203 = v432[2];
              v215 = v407;
            }

            else
            {
              *v205 = v214;
              v215 = v205 + 2;
            }

            v432[1] = v215;
            v225 = bswap32(v24) >> 16;
            if (v215 >= v203)
            {
              v426 = 0xAAAAAAAAAAAAAAAALL;
              *&v227 = 0xAAAAAAAAAAAAAAAALL;
              *(&v227 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v425 = v227;
              *&v425[16] = v227;
              v228 = (v215 - v432[0]) >> 1;
              if (v228 <= -2)
              {
                goto LABEL_382;
              }

              v229 = v203 - v432[0];
              if (v229 <= v228 + 1)
              {
                v230 = v228 + 1;
              }

              else
              {
                v230 = v229;
              }

              if (v229 >= 0x7FFFFFFFFFFFFFFELL)
              {
                v231 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v231 = v230;
              }

              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v231, v228, &v433);
              v232 = *&v425[16];
              **&v425[16] = v225;
              *&v425[16] = v232 + 2;
              v233 = (*&v425[8] - (v432[1] - v432[0]));
              memcpy(v233, v432[0], v432[1] - v432[0]);
              v234 = v432[0];
              v235 = v432[2];
              v432[0] = v233;
              v408 = *&v425[16];
              *&v432[1] = *&v425[16];
              *&v425[16] = v234;
              *&v425[24] = v235;
              *v425 = v234;
              *&v425[8] = v234;
              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
              v226 = v408;
            }

            else
            {
              *v215 = v225;
              v226 = v215 + 2;
            }

            v236 = v200 - v201 + 1;
            v432[1] = v226;
            v237 = CFDataGetMutableBytePtr(theData);
            if (v236)
            {
              v238 = &v237[2 * *v199 + 18];
              v239 = *&v427[8];
              v240 = 2 * v236;
              do
              {
                v241 = bswap32(*v238) >> 16;
                if (v239 >= *&v427[16])
                {
                  v426 = 0xAAAAAAAAAAAAAAAALL;
                  *&v242 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v242 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *v425 = v242;
                  *&v425[16] = v242;
                  v243 = (v239 - *v427) >> 1;
                  if (v243 <= -2)
                  {
                    goto LABEL_382;
                  }

                  if (*&v427[16] - *v427 <= (v243 + 1))
                  {
                    v244 = v243 + 1;
                  }

                  else
                  {
                    v244 = *&v427[16] - *v427;
                  }

                  if (*&v427[16] - *v427 >= 0x7FFFFFFFFFFFFFFEuLL)
                  {
                    v245 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v245 = v244;
                  }

                  std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v245, v243, &v427[24]);
                  v246 = *&v425[16];
                  **&v425[16] = v241;
                  *&v425[16] = v246 + 2;
                  v247 = (*&v425[8] - (*&v427[8] - *v427));
                  memcpy(v247, *v427, *&v427[8] - *v427);
                  v248 = *v427;
                  v249 = *&v427[16];
                  *v427 = v247;
                  v409 = *&v425[16];
                  *&v427[8] = *&v425[16];
                  *&v425[16] = v248;
                  *&v425[24] = v249;
                  *v425 = v248;
                  *&v425[8] = v248;
                  std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
                  v239 = v409;
                }

                else
                {
                  *v239++ = v241;
                }

                *&v427[8] = v239;
                v238 += 2;
                v240 -= 2;
              }

              while (v240);
            }

            v24 += 2 * v236;
            v199 += 2;
          }

          while (v199 != v389);
          v178 = v432[1];
          v3 = theData;
          v21 = v386;
        }

        v250 = v432[2];
        if (v178 >= v432[2])
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *&v294 = 0xAAAAAAAAAAAAAAAALL;
          *(&v294 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v294;
          *&v425[16] = v294;
          v295 = (v178 - v432[0]) >> 1;
          a2 = v387;
          if (v295 <= -2)
          {
            goto LABEL_382;
          }

          if ((v432[2] - v432[0]) <= (v295 + 1))
          {
            v296 = v295 + 1;
          }

          else
          {
            v296 = v432[2] - v432[0];
          }

          if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v297 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v297 = v296;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v297, v295, &v433);
          v298 = *&v425[16];
          **&v425[16] = -1;
          *&v425[16] = v298 + 2;
          v299 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v299, v432[0], v432[1] - v432[0]);
          v300 = v432[0];
          v301 = v432[2];
          v432[0] = v299;
          v414 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v300;
          *&v425[24] = v301;
          *v425 = v300;
          *&v425[8] = v300;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v250 = v432[2];
          v251 = v414;
        }

        else
        {
          *v178 = -1;
          v251 = v178 + 1;
          a2 = v387;
        }

        v432[1] = v251;
        if (v251 >= v250)
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *&v303 = 0xAAAAAAAAAAAAAAAALL;
          *(&v303 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v303;
          *&v425[16] = v303;
          v304 = (v251 - v432[0]) >> 1;
          if (v304 <= -2)
          {
            goto LABEL_382;
          }

          v305 = v250 - v432[0];
          if (v305 <= v304 + 1)
          {
            v306 = v304 + 1;
          }

          else
          {
            v306 = v305;
          }

          if (v305 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v307 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v307 = v306;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v307, v304, &v433);
          v308 = *&v425[16];
          **&v425[16] = -1;
          *&v425[16] = v308 + 2;
          v309 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v309, v432[0], v432[1] - v432[0]);
          v310 = v432[0];
          v311 = v432[2];
          v432[0] = v309;
          v415 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v310;
          *&v425[24] = v311;
          *v425 = v310;
          *&v425[8] = v310;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v302 = v415;
        }

        else
        {
          *v251 = -1;
          v302 = v251 + 1;
        }

        v432[1] = v302;
        v312 = bswap32(*(CFDataGetMutableBytePtr(v3) + 6)) >> 16;
        v313 = v432[1];
        if (v432[1] >= v432[2])
        {
          v426 = 0xAAAAAAAAAAAAAAAALL;
          *&v315 = 0xAAAAAAAAAAAAAAAALL;
          *(&v315 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v425 = v315;
          *&v425[16] = v315;
          v316 = (v432[1] - v432[0]) >> 1;
          if (v316 <= -2)
          {
            goto LABEL_382;
          }

          if ((v432[2] - v432[0]) <= (v316 + 1))
          {
            v317 = v316 + 1;
          }

          else
          {
            v317 = v432[2] - v432[0];
          }

          if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v318 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v318 = v317;
          }

          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v425, v318, v316, &v433);
          v319 = *&v425[16];
          **&v425[16] = v312;
          *&v425[16] = v319 + 2;
          v320 = (*&v425[8] - (v432[1] - v432[0]));
          memcpy(v320, v432[0], v432[1] - v432[0]);
          v321 = v432[0];
          v322 = v432[2];
          v432[0] = v320;
          v416 = *&v425[16];
          *&v432[1] = *&v425[16];
          *&v425[16] = v321;
          *&v425[24] = v322;
          *v425 = v321;
          *&v425[8] = v321;
          std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v425);
          v314 = v416;
        }

        else
        {
          *v432[1] = v312;
          v314 = v313 + 2;
        }

        v432[1] = v314;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__insert_with_size[abi:fn200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(v432, v314, *v427, *&v427[8], (*&v427[8] - *v427) >> 1);
        v423 = CFDataCreate(*MEMORY[0x1E695E480], v432[0], v432[1] - v432[0]);
        *v425 = v427;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v425);
        *v427 = v432;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v427);
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        v423 = 0;
      }

      v133 = v423;
    }

LABEL_343:

    return;
  }

  if (CFDataGetMutableBytePtr(v3) && *CFDataGetMutableBytePtr(v3))
  {
    *&v35 = 0xAAAAAAAAAAAAAAAALL;
    *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v435 = v35;
    v436 = v35;
    v433 = v35;
    v434 = v35;
    memset(v432, 0, sizeof(v432));
    v437 = &v433;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve(v432, 3uLL);
    v36 = v432[1];
    if (v432[1] >= v432[2])
    {
      *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v356 = 0xAAAAAAAAAAAAAAAALL;
      *(&v356 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v427 = v356;
      *&v427[16] = v356;
      v357 = (v432[1] - v432[0]) >> 1;
      if (v357 <= -2)
      {
        goto LABEL_382;
      }

      if ((v432[2] - v432[0]) <= (v357 + 1))
      {
        v358 = v357 + 1;
      }

      else
      {
        v358 = v432[2] - v432[0];
      }

      if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
      {
        v359 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v359 = v358;
      }

      std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v359, v357, &v433);
      v360 = *&v427[16];
      **&v427[16] = 2048;
      *&v427[16] = v360 + 2;
      v361 = (*&v427[8] - (v432[1] - v432[0]));
      memcpy(v361, v432[0], v432[1] - v432[0]);
      v362 = v432[0];
      v363 = v432[2];
      v432[0] = v361;
      v420 = *&v427[16];
      *&v432[1] = *&v427[16];
      *&v427[16] = v362;
      *&v427[24] = v363;
      *v427 = v362;
      *&v427[8] = v362;
      std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
      v37 = v420;
    }

    else
    {
      *v432[1] = 2048;
      v37 = v36 + 2;
    }

    v432[1] = v37;
    v364 = bswap32(*(CFDataGetMutableBytePtr(v3) + 7)) >> 16;
    v366 = v432[1];
    v365 = v432[2];
    if (v432[1] >= v432[2])
    {
      *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v368 = 0xAAAAAAAAAAAAAAAALL;
      *(&v368 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v427 = v368;
      *&v427[16] = v368;
      v369 = (v432[1] - v432[0]) >> 1;
      if (v369 <= -2)
      {
        goto LABEL_382;
      }

      if ((v432[2] - v432[0]) <= (v369 + 1))
      {
        v370 = v369 + 1;
      }

      else
      {
        v370 = v432[2] - v432[0];
      }

      if ((v432[2] - v432[0]) >= 0x7FFFFFFFFFFFFFFELL)
      {
        v371 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v371 = v370;
      }

      std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v371, v369, &v433);
      v372 = *&v427[16];
      **&v427[16] = v364;
      *&v427[16] = v372 + 2;
      v373 = (*&v427[8] - (v432[1] - v432[0]));
      memcpy(v373, v432[0], v432[1] - v432[0]);
      v374 = v432[0];
      v375 = v432[2];
      v432[0] = v373;
      v421 = *&v427[16];
      *&v432[1] = *&v427[16];
      *&v427[16] = v374;
      *&v427[24] = v375;
      *v427 = v374;
      *&v427[8] = v374;
      std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
      v365 = v432[2];
      v367 = v421;
    }

    else
    {
      *v432[1] = v364;
      v367 = v366 + 2;
    }

    v432[1] = v367;
    if (v367 >= v365)
    {
      *&v427[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v377 = 0xAAAAAAAAAAAAAAAALL;
      *(&v377 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v427 = v377;
      *&v427[16] = v377;
      v378 = (v367 - v432[0]) >> 1;
      if (v378 <= -2)
      {
        goto LABEL_382;
      }

      v379 = v365 - v432[0];
      if (v379 <= v378 + 1)
      {
        v380 = v378 + 1;
      }

      else
      {
        v380 = v379;
      }

      if (v379 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v381 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v381 = v380;
      }

      std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v427, v381, v378, &v433);
      v382 = *&v427[16];
      **&v427[16] = 0;
      *&v427[16] = v382 + 2;
      v383 = (*&v427[8] - (v432[1] - v432[0]));
      memcpy(v383, v432[0], v432[1] - v432[0]);
      v384 = v432[0];
      v385 = v432[2];
      v432[0] = v383;
      v422 = *&v427[16];
      *&v432[1] = *&v427[16];
      *&v427[16] = v384;
      *&v427[24] = v385;
      *v427 = v384;
      *&v427[8] = v384;
      std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v427);
      v376 = v422;
    }

    else
    {
      *v367 = 0;
      v376 = v367 + 1;
    }

    v432[1] = v376;
    *a2 = CFDataCreate(*MEMORY[0x1E695E480], v432[0], v376 - v432[0]);
    *v427 = v432;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v427);
  }

  else
  {
LABEL_373:
    *a2 = 0;
  }
}
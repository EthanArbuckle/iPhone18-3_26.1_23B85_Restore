uint64_t TFont::operator==(TFont *this, TFont *a2)
{
  if (this == a2)
  {
    return 1;
  }

  if (*(this + 3) != *(a2 + 3) || *(this + 3) != *(a2 + 3) || TFont::CompareExtras(this, a2) != 2)
  {
    return 0;
  }

  explicit = atomic_load_explicit(this + 2, memory_order_acquire);
  v5 = atomic_load_explicit(a2 + 2, memory_order_acquire);
  if (explicit == v5 || (result = 0, explicit) && v5 && (result = CFEqual(explicit, v5), result))
  {
    v7 = *(this + 6);
    v8 = *(a2 + 6);
    if (v7 == v8)
    {
      return 1;
    }

    else
    {
      if (v7)
      {
        v9 = *(this + 6);
      }

      else
      {
        v9 = MEMORY[0x1E695EFD0];
      }

      if (v8)
      {
        v10 = *(a2 + 6);
      }

      else
      {
        v10 = MEMORY[0x1E695EFD0];
      }

      return memcmp(v9, v10, 0x30uLL) == 0;
    }
  }

  return result;
}

uint64_t CTFontGetUIFontDesign(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 408)) != 0)
  {
    return (*(*v1 + 544))();
  }

  else
  {
    return 0;
  }
}

const __CFDictionary *TComponentFont::GetDesignUITrait(atomic_ullong *this)
{
  result = atomic_load_explicit(this + 90, memory_order_acquire);
  if (result)
  {
    return CFDictionaryGetValue(result, @"NSCTFontUIFontDesignTrait");
  }

  return result;
}

CTFontDescriptorRef CTFontCopyFontDescriptor(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  TFont::CopyDescriptor(*(font + 5), 0, &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void TFont::CopyDescriptor(TFont *this@<X0>, int a2@<W1>, atomic_ullong *a3@<X8>)
{
  v149 = *MEMORY[0x1E69E9840];
  if (a2 && (TFont::IsSystemUIFontAndForShaping(this, &keys) & 1) != 0)
  {
    v6 = 552;
  }

  else
  {
    v6 = 544;
  }

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  *a3 = atomic_load_explicit((this + v6), memory_order_acquire);
  if (atomic_load_explicit(a3, memory_order_acquire))
  {
    return;
  }

  v7 = CTFontDescriptorCopyAttributes(atomic_load_explicit(this + 2, memory_order_acquire));
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v147[14] = v8;
  v147[13] = v8;
  v147[12] = v8;
  v147[11] = v8;
  v147[10] = v8;
  v147[9] = v8;
  v147[8] = v8;
  v147[7] = v8;
  v147[6] = v8;
  v147[5] = v8;
  v147[4] = v8;
  v147[3] = v8;
  v147[2] = v8;
  v147[1] = v8;
  v147[0] = v8;
  keys = 0;
  __dst = 0;
  v146 = 0;
  v148 = v147;
  v142[14] = v8;
  v142[13] = v8;
  v142[12] = v8;
  v142[11] = v8;
  v142[10] = v8;
  v142[9] = v8;
  v142[8] = v8;
  v142[7] = v8;
  v142[6] = v8;
  v142[5] = v8;
  v142[4] = v8;
  v142[3] = v8;
  v142[2] = v8;
  v142[1] = v8;
  v142[0] = v8;
  p_keys = 0;
  v140 = 0;
  v141 = 0;
  v143 = v142;
  v9 = v7;
  if (!v9)
  {

LABEL_11:
    *&valuePtr = @"NSFontSizeAttribute";
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &valuePtr);
    *&valuePtr = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 3)];
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    goto LABEL_12;
  }

  v10 = v9;
  Value = CFDictionaryGetValue(v9, @"NSFontSizeAttribute");

  if (!Value)
  {
    goto LABEL_11;
  }

  *&valuePtr = -1;
  CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
  if (*&valuePtr != *(this + 3))
  {
    goto LABEL_11;
  }

LABEL_12:
  v116 = 0;
  v12 = MEMORY[0x1E695E480];
  if (*(this + 6))
  {
    v13 = v7;
    if (v13)
    {
      v14 = v13;
      v15 = CFDictionaryGetValue(v13, @"NSCTFontMatrixAttribute");

      if (v15)
      {
        BytePtr = CFDataGetBytePtr(v15);
        if (BytePtr)
        {
          if (!memcmp(BytePtr, *(this + 6), 0x30uLL))
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
    }

    *&valuePtr = @"NSCTFontMatrixAttribute";
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &valuePtr);
    *&valuePtr = atomic_load_explicit(&v116, memory_order_acquire);
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
  }

LABEL_20:
  if (atomic_load_explicit(this + 21, memory_order_acquire))
  {
    *&valuePtr = 0xAAAAAAAAAAAAAAAALL;
    v17 = atomic_load_explicit(this + 21, memory_order_acquire);
    v18 = v17;
    if (v17)
    {
      v17 = CFDictionaryGetValue(v17, @"NSCTFontOpticalSizeAttribute");
    }

    *&valuePtr = v17;

    if (valuePtr)
    {
      values = @"NSCTFontOpticalSizeAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v19 = atomic_load_explicit(this + 21, memory_order_acquire);
    v20 = v19;
    if (v19)
    {
      v19 = CFDictionaryGetValue(v19, @"NSCTFontTrackAttribute");
    }

    *&valuePtr = v19;

    if (valuePtr)
    {
      values = @"NSCTFontTrackAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v21 = atomic_load_explicit(this + 21, memory_order_acquire);
    v22 = v21;
    if (v21)
    {
      v21 = CFDictionaryGetValue(v21, @"NSCTFontUnscaledTrackingAttribute");
    }

    *&valuePtr = v21;

    if (valuePtr)
    {
      values = @"NSCTFontUnscaledTrackingAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v23 = atomic_load_explicit(this + 21, memory_order_acquire);
    v24 = v23;
    if (v23)
    {
      v23 = CFDictionaryGetValue(v23, @"NSCTFontFeatureSettingsAttribute");
    }

    *&valuePtr = v23;

    if (valuePtr)
    {
      values = @"NSCTFontFeatureSettingsAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    if (a2)
    {
      v25 = atomic_load_explicit(this + 21, memory_order_acquire);
      v26 = v25;
      if (v25)
      {
        v25 = CFDictionaryGetValue(v25, @"CTFontOriginalFeatureSettingsAttribute");
      }

      *&valuePtr = v25;

      if (valuePtr)
      {
        values = @"CTFontOriginalFeatureSettingsAttribute";
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
      }
    }

    v27 = atomic_load_explicit(this + 21, memory_order_acquire);
    v28 = v27;
    if (v27)
    {
      v27 = CFDictionaryGetValue(v27, @"NSCTFontCascadeListAttribute");
    }

    *&valuePtr = v27;

    if (valuePtr)
    {
      values = @"NSCTFontCascadeListAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v29 = atomic_load_explicit(this + 21, memory_order_acquire);
    v30 = v29;
    if (v29)
    {
      v29 = CFDictionaryGetValue(v29, @"CTFontDescriptorLanguageAttribute");
    }

    *&valuePtr = v29;

    if (valuePtr)
    {
      values = @"CTFontDescriptorLanguageAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v31 = atomic_load_explicit(this + 21, memory_order_acquire);
    v32 = v31;
    if (v31)
    {
      v31 = CFDictionaryGetValue(v31, @"NSCTFontBaselineAdjustAttribute");
    }

    *&valuePtr = v31;

    if (valuePtr)
    {
      values = @"NSCTFontBaselineAdjustAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v33 = atomic_load_explicit(this + 21, memory_order_acquire);
    v34 = v33;
    if (v33)
    {
      v33 = CFDictionaryGetValue(v33, @"NSCTFontFixedAdvanceAttribute");
    }

    *&valuePtr = v33;

    if (valuePtr)
    {
      values = @"NSCTFontFixedAdvanceAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v35 = atomic_load_explicit(this + 21, memory_order_acquire);
    v36 = v35;
    if (v35)
    {
      v35 = CFDictionaryGetValue(v35, @"CTFontPaletteAttribute");
    }

    *&valuePtr = v35;

    if (valuePtr)
    {
      values = @"CTFontPaletteAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v37 = atomic_load_explicit(this + 21, memory_order_acquire);
    v38 = v37;
    if (v37)
    {
      v37 = CFDictionaryGetValue(v37, @"CTFontPaletteColorsAttribute");
    }

    *&valuePtr = v37;

    if (valuePtr)
    {
      values = @"CTFontPaletteColorsAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v39 = atomic_load_explicit(this + 21, memory_order_acquire);
    v40 = v39;
    if (v39)
    {
      v39 = CFDictionaryGetValue(v39, @"NSCTFontVariationAttribute");
    }

    *&valuePtr = v39;

    if (valuePtr)
    {
      values = @"NSCTFontVariationAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v41 = atomic_load_explicit(this + 21, memory_order_acquire);
    v42 = v41;
    if (v41)
    {
      v41 = CFDictionaryGetValue(v41, @"CTFontEmojiMLUpscalingTimeoutAttribute");
    }

    *&valuePtr = v41;

    if (valuePtr)
    {
      values = @"CTFontEmojiMLUpscalingTimeoutAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }

    v43 = atomic_load_explicit(this + 21, memory_order_acquire);
    v44 = v43;
    if (v43)
    {
      v43 = CFDictionaryGetValue(v43, @"NSCTFontTargetEnvironmentAttribute");
    }

    *&valuePtr = v43;

    if (valuePtr)
    {
      values = @"NSCTFontTargetEnvironmentAttribute";
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &values);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
    }
  }

  v45 = *(this + 3);
  if (v45)
  {
    LODWORD(valuePtr) = 2;
    v46 = CFNumberCreate(*v12, kCFNumberIntType, &valuePtr);
    *&valuePtr = @"NSCTFontOrientationAttribute";
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &valuePtr);
    *&valuePtr = v46;
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);

    v45 = *(this + 3);
  }

  v47 = (v45 >> 6) & 7;
  if (v47 != 3)
  {
    *&valuePtr = v47;
    v48 = CFNumberCreate(*v12, kCFNumberLongType, &valuePtr);
    *&valuePtr = @"NSCTFontFallbackOptionAttribute";
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&keys, &valuePtr);
    *&valuePtr = v48;
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](&p_keys, &valuePtr);
  }

  if (keys != __dst)
  {
    if (__dst - keys != 8)
    {
      goto LABEL_121;
    }

    explicit = atomic_load_explicit(this + 2, memory_order_acquire);
    if (keys == __dst)
    {
      goto LABEL_111;
    }

    v50 = p_keys;
    if (p_keys == v140)
    {
      goto LABEL_111;
    }

    v51 = *keys;
    if (!dispatch_get_specific(TDescriptorSource::DoNotCacheKey))
    {
      v114 = v6;
      v115 = v7;
      v53 = *v50;
      *&v54 = 0xAAAAAAAAAAAAAAAALL;
      *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v124 = v54;
      *&v124[16] = v54;
      valuePtr = v54;
      v55 = values;
      v56 = values[1];
      if (v56 <= 0xB)
      {
        v57 = 0;
        v58 = values + 3;
        do
        {
          v59 = v56;
          v60 = &v58[6 * v56];
          v61 = atomic_load_explicit(v60 + 2, memory_order_acquire);
          v62 = atomic_load_explicit(v124, memory_order_acquire);
          if (v61 == v62 || (v61 ? (v63 = v62 == 0) : (v63 = 1), !v63 && CFEqual(v61, v62)))
          {
            v64 = atomic_load_explicit(v60 + 3, memory_order_acquire);
            v65 = atomic_load_explicit(&v124[8], memory_order_acquire);
            if (v64 == v65 || (v64 ? (v66 = v65 == 0) : (v66 = 1), !v66 && CFEqual(v64, v65)))
            {
              v67 = atomic_load_explicit(v60 + 4, memory_order_acquire);
              v68 = atomic_load_explicit(&v124[16], memory_order_acquire);
              if (v67 == v68 || (v67 ? (v69 = v68 == 0) : (v69 = 1), !v69 && CFEqual(v67, v68)))
              {
                v70 = v55[1];
                v12 = MEMORY[0x1E695E480];
                if (v59 != v70)
                {
                  v58[6 * v57 + 1] = v60[1];
                  v71 = v55[2];
                  if (v59 == v71)
                  {
                    v60[1] = v70;
                    v55[1] = v59;
                    v55[2] = v57;
                  }

                  else
                  {
                    v60[1] = v70;
                    v55[1] = v59;
                    v57 = v71;
                    if (v71 >= 0xC)
                    {
                      goto LABEL_111;
                    }
                  }

                  v58[6 * v57 + 1] = v59;
                }

                v52 = atomic_load_explicit(v60 + 5, memory_order_acquire);
                goto LABEL_119;
              }
            }
          }

          if (v59 == v55[2])
          {
            goto LABEL_112;
          }

          v56 = v60[1];
          v57 = v59;
        }

        while (v56 < 0xC);
      }

      goto LABEL_111;
    }

    v52 = 0;
    while (1)
    {
      TCFRef<__CTFont const*>::Retain(a3, v52);
LABEL_121:
      if (atomic_load_explicit(a3, memory_order_acquire))
      {
        goto LABEL_157;
      }

      v72 = v7;
      if (v72)
      {
        v73 = v72;
        Count = CFDictionaryGetCount(v72);

        if (Count)
        {
          *&v75 = 0xAAAAAAAAAAAAAAAALL;
          *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v137 = v75;
          v136 = v75;
          v135 = v75;
          v134 = v75;
          v133 = v75;
          v132 = v75;
          v131 = v75;
          v130 = v75;
          v129 = v75;
          v128 = v75;
          v127 = v75;
          v126 = v75;
          v125 = v75;
          *&v124[24] = v75;
          *&v124[8] = v75;
          valuePtr = 0uLL;
          *v124 = 0;
          v138 = &v124[8];
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&valuePtr, Count);
          v76 = *(&valuePtr + 1);
          bzero(*(&valuePtr + 1), 8 * Count);
          *(&valuePtr + 1) = v76 + 8 * Count;
          *&v77 = 0xAAAAAAAAAAAAAAAALL;
          *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v121[14] = v77;
          v121[13] = v77;
          v121[12] = v77;
          v121[11] = v77;
          v121[10] = v77;
          v121[9] = v77;
          v121[8] = v77;
          v121[7] = v77;
          v121[6] = v77;
          v121[5] = v77;
          v121[4] = v77;
          v121[3] = v77;
          v121[2] = v77;
          v121[1] = v77;
          v121[0] = v77;
          v119 = 0;
          v120 = 0;
          values = 0;
          v122 = v121;
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&values, Count);
          v78 = v119;
          bzero(v119, 8 * Count);
          v119 = &v78[8 * Count];
          CFDictionaryGetKeysAndValues(v7, valuePtr, values);
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__insert_with_size[abi:fn200100]<std::__wrap_iter<void const**>,std::__wrap_iter<void const**>>(&keys, __dst, valuePtr, *(&valuePtr + 1), (*(&valuePtr + 1) - valuePtr) >> 3);
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__insert_with_size[abi:fn200100]<std::__wrap_iter<void const**>,std::__wrap_iter<void const**>>(&p_keys, v140, values, v119, (v119 - values) >> 3);
          p_values = &values;
          std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_values);
          values = &valuePtr;
          std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
        }
      }

      else
      {
      }

      v79 = v7;
      if (v79)
      {
        v80 = v79;
        v81 = CFDictionaryGetValue(v79, @"NSCTFontUIUsageAttribute");

        if (v81)
        {
          v82 = __dst;
          v83 = keys;
          if (__dst != keys)
          {
            v84 = 0;
            v85 = 0;
            while (1)
            {
              v86 = v83[v84];
              if (v86 == @"NSFontNameAttribute")
              {
                break;
              }

              if (@"NSFontNameAttribute")
              {
                if (v86)
                {
                  v87 = CFEqual(v86, @"NSFontNameAttribute");
                  v83 = keys;
                  v82 = __dst;
                  if (v87)
                  {
                    break;
                  }
                }
              }

              ++v85;
              ++v84;
              if (v85 >= v82 - v83)
              {
                goto LABEL_144;
              }
            }

            v88 = &v83[v84];
            if (v82 == &v83[v84])
            {
              goto LABEL_111;
            }

            v89 = v82 - v83 - v84 * 8 - 8;
            if (v88 + 1 != v82)
            {
              memmove(&v83[v84], v88 + 1, v82 - v83 - v84 * 8 - 8);
            }

            __dst = v88 + v89;
            v90 = &p_keys[v84];
            if (v140 == &p_keys[v84])
            {
              goto LABEL_111;
            }

            v91 = v140 - p_keys - v84 * 8 - 8;
            if (v90 + 1 != v140)
            {
              memmove(&p_keys[v84], v90 + 1, v140 - p_keys - v84 * 8 - 8);
            }

            v140 = v90 + v91;
          }
        }
      }

      else
      {
      }

LABEL_144:
      v92 = CFDictionaryCreate(*v12, keys, p_keys, (__dst - keys) >> 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v93 = atomic_load_explicit(this + 2, memory_order_acquire);
      v94 = *(this + 51);
      v95 = TCFBase<TDescriptor>::Allocate();
      v96 = v95;
      if (v95)
      {
        v95[2] = 0;
        v95[3] = TDescriptor::Hash;
        v95[4] = 0;
        v95[5] = v95 + 6;
        TDescriptor::TDescriptor((v95 + 6), *(v93 + 40), v94, v92);
      }

      *&valuePtr = v96;

      if (!atomic_load_explicit(a3, memory_order_acquire) || __dst - keys != 8)
      {
LABEL_156:

        goto LABEL_157;
      }

      v97 = atomic_load_explicit(this + 2, memory_order_acquire);
      if (keys != __dst && p_keys != v140)
      {
        v98 = *keys;
        v99 = *p_keys;
        v100 = atomic_load_explicit(a3, memory_order_acquire);
        if (dispatch_get_specific(TDescriptorSource::DoNotCacheKey))
        {
          goto LABEL_156;
        }

        *&v101 = 0xAAAAAAAAAAAAAAAALL;
        *(&v101 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v124 = v101;
        *&v124[16] = v101;
        valuePtr = v101;
        v102 = values;
        v103 = values[2];
        if (v103 < 0xC)
        {
          v105 = v102[1];
          while (v105 < 0xC)
          {
            v106 = v105;
            v107 = &v102[6 * v105 + 3];
            v109 = *(v107 + 8);
            v108 = (v107 + 8);
            v105 = v109;
            if (v109 == v102[2])
            {
              v104[1] = v102[1];
              v102[1] = v103;
              v102[2] = v106;
              *v108 = v103;
              *&valuePtr = &unk_1EF257A38;

              goto LABEL_156;
            }
          }
        }
      }

LABEL_111:
      __break(1u);
LABEL_112:
      v52 = 0;
      v12 = MEMORY[0x1E695E480];
LABEL_119:
      *&valuePtr = &unk_1EF257A38;

      v6 = v114;
      v7 = v115;
    }
  }

  TCFRef<__CTFont const*>::Retain(a3, atomic_load_explicit(this + 2, memory_order_acquire));
LABEL_157:
  *&valuePtr = 0xAAAAAAAAAAAAAAAALL;
  v110 = atomic_load_explicit(a3, memory_order_acquire);
  v111 = 0;
  *&valuePtr = v110;
  v112 = atomic_exchange(&valuePtr, 0);
  atomic_compare_exchange_strong((this + v6), &v111, v112);
  if (v111)
  {
    v113 = v112;
  }

  else
  {
    v113 = 0;
  }

  *&valuePtr = &p_keys;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
  p_keys = &keys;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_keys);
}

CFDictionaryRef CTFontDescriptorCopyAttributes(CTFontDescriptorRef descriptor)
{
  if (!descriptor)
  {
    return 0;
  }

  TDescriptor::CopyAttributes(*(descriptor + 5), &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void TDescriptor::CopyAttributes(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  v3 = TDescriptor::GetAttributes(this, 1);
  *a2 = atomic_exchange(&v3, 0);
}

unint64_t TDescriptor::GetAttributes(atomic_ullong *this, int a2)
{
  v2 = this + 1;
  if (atomic_load_explicit(this + 1, memory_order_acquire))
  {
    v3 = 1;
  }

  else
  {
    v3 = a2 == 0;
  }

  if (!v3)
  {
    if ((this[2] & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(this, 0, 0.0);
    }

    explicit = atomic_load_explicit(this + 4, memory_order_acquire);
    if (explicit)
    {
      TBaseFont::CreateDescriptorAttributes(explicit, &v10);
      v6 = atomic_exchange(&v10, 0);

      v7 = 0;
      atomic_compare_exchange_strong(this + 1, &v7, v6);
      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return atomic_load_explicit(v2, memory_order_acquire);
}

unint64_t TFont::Hash(TFont *this)
{
  v2 = *(this + 3) + 2654435769;
  if (*(this + 3) == 0.0)
  {
    v2 = 2654435769;
  }

  v3 = (*(this + 3) + (v2 << 6) + (v2 >> 2) + 2654435769u) ^ v2;
  if (atomic_load_explicit(this + 2, memory_order_acquire))
  {
    v3 ^= (v3 << 6) + 2654435769u + (v3 >> 2) + TDescriptor::Hash(*(atomic_load_explicit(this + 2, memory_order_acquire) + 40));
  }

  v4 = *(this + 6);
  if (v4)
  {
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
    v9 = v4[5];
    v10 = *v4 == 0.0;
    v11 = *v4 + 2654435769;
    if (v10)
    {
      v11 = 2654435769;
    }

    v12 = *&v5 + 2654435769;
    if (v5 == 0.0)
    {
      v12 = 2654435769;
    }

    v13 = ((v11 >> 2) + (v11 << 6) + v12) ^ v11;
    v14 = *&v6 + 2654435769;
    if (v6 == 0.0)
    {
      v14 = 2654435769;
    }

    v15 = (v14 + (v13 << 6) + (v13 >> 2)) ^ v13;
    v16 = *&v7 + 2654435769;
    if (v7 == 0.0)
    {
      v16 = 2654435769;
    }

    v17 = (v16 + (v15 << 6) + (v15 >> 2)) ^ v15;
    v18 = *&v8 + 2654435769;
    if (v8 == 0.0)
    {
      v18 = 2654435769;
    }

    v19 = (v18 + (v17 << 6) + (v17 >> 2)) ^ v17;
    v20 = *&v9 + 2654435769;
    if (v9 == 0.0)
    {
      v20 = 2654435769;
    }

    v3 ^= (v3 << 6) + 2654435769u + (v3 >> 2) + ((v20 + (v19 << 6) + (v19 >> 2)) ^ v19);
  }

  if (atomic_load_explicit(this + 21, memory_order_acquire))
  {
    v3 ^= (v3 << 6) + 2654435769u + (v3 >> 2) + CFHash(atomic_load_explicit(this + 21, memory_order_acquire));
  }

  return v3;
}

void *TCFBase<TFont>::ClassHash(void *result)
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

unint64_t TDescriptor::Hash(TDescriptor *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    if ((*(this + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(this, 0, 0.0);
    }

    explicit = atomic_load_explicit(this + 4, memory_order_acquire);
    if (explicit && (v4 = atomic_load_explicit((explicit + 96), memory_order_acquire)) != 0)
    {
      v5 = v4;
      v6 = CFHash(v4);
    }

    else
    {
      Attributes = TDescriptor::GetAttributes(this, 1);
      v6 = CFHash(Attributes);
      v5 = 0;
    }

    v1 = (((v6 + 2654435769u) << 6) + ((v6 + 2654435769u) >> 2) + (*(this + 4) & 0x7FFCC408) + 2654435769) ^ (v6 + 2654435769u);
    *(this + 3) = v1;
  }

  return v1;
}

char *SetThreadSpecificData(int a1, uint64_t a2, uint64_t (*a3)(void *))
{
  result = GetTable();
  if (result)
  {
    v7 = &result[16 * a1];
    result = *v7;
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = NullDestructor;
    }

    *v7 = a2;
    *(v7 + 1) = v8;
  }

  return result;
}

double TFont::SwapPerThreadLineHeightAdjustment(TFont *this, double a2)
{
  result = COERCE_DOUBLE(SetThreadSpecificData(6, *&a2, ThreadSpecificNullDestructor<double>));
  if (result == 0.0)
  {
    return 0.2;
  }

  return result;
}

void *GetTable(void)
{
  if (GetInternalKey(void)::sOnce != -1)
  {
    dispatch_once_f(&GetInternalKey(void)::sOnce, 0, GetInternalKey(void)::$_0::__invoke);
  }

  v0 = pthread_getspecific(0x5FuLL);
  if (!v0)
  {
    operator new();
  }

  return v0;
}

void *CTFontGetTextStyle(const void *a1)
{
  result = _CTFontEnsureFontRef(a1);
  if (result)
  {
    v2 = *(**(result[5] + 408) + 784);

    return v2();
  }

  return result;
}

const void *_CTFontEnsureFontRef(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (TCFBase<TFont>::GetTypeID(void)::once != -1)
    {
      dispatch_once_f(&TCFBase<TFont>::GetTypeID(void)::once, 0, TCFBase<TFont>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
    }

    if (v2 == TCFBase<TFont>::fTypeID)
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

TDescriptorSource *TDescriptorSource::IsValidTextStyle(TDescriptorSource *this, const __CFString *a2)
{
  if (this)
  {
    v2 = this;
    if (qword_1ED5674B0 != -1)
    {
      dispatch_once(&qword_1ED5674B0, &__block_literal_global_682);
    }

    this = [objc_msgSend(qword_1ED5674A8 objectForKeyedSubscript:{v2), "unsignedIntValue"}];
    if (this > 0x144)
    {
      return 0;
    }
  }

  result = TDescriptorSource::UIFontNameForUIType(this);
  if (result)
  {
    var18.isa = 0xAAAAAAAAAAAAAAAALL;
    result = TDescriptorSource::StashIndexForFontName(result, &var18, v4);
    if (result)
    {
      memcpy(__dst, &__const__ZN17TDescriptorSource24MapTextStyleSizeCategoryEPK10__CFStringj23CTFontTextStylePlatformPdS4_S4_S2__overrideSpec, sizeof(__dst));
      return (FindTextStyle(var18.isa, __dst, -1) != 0);
    }
  }

  return result;
}

uint64_t TDescriptorSource::UIFontNameForUIType(TDescriptorSource *this)
{
  if (qword_1ED5674D0 != -1)
  {
    dispatch_once(&qword_1ED5674D0, &__block_literal_global_1737);
  }

  v2 = qword_1ED5674C8;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:this];

  return [v2 objectForKeyedSubscript:v3];
}

uint64_t TDescriptorSource::StashIndexForFontName(TDescriptorSource *this, const __CFString *a2, uint64_t *a3)
{
  if (qword_1ED5674E0 != -1)
  {
    dispatch_once(&qword_1ED5674E0, &__block_literal_global_2285);
  }

  result = [qword_1ED5674D8 objectForKeyedSubscript:this];
  if (result)
  {
    v6 = [result unsignedIntValue];
    if (v6 > 0x183)
    {
      return 0;
    }

    else
    {
      a2->isa = v6;
      return 1;
    }
  }

  return result;
}

char *FindTextStyle(unint64_t a1, uint64_t a2, int a3)
{
  if (qword_1ED567510 != -1)
  {
    dispatch_once(&qword_1ED567510, &__block_literal_global_3122);
  }

  if (a1 - 151 >= 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = a1 - 151;
  }

  v7 = a1;
  if ((v6 & 0x80000000) == 0)
  {
    v8 = &kCondensedMapping + 352 * v6;
    memcpy((a2 + 24), v8 + 40, 0x120uLL);
    if (*(a2 + 24) != 0.0)
    {
      v9 = a2 + 48;
      v10 = 11;
      do
      {
        if (*v9 == 0.0)
        {
          *v9 = *(v9 - 24);
          *(v9 + 16) = *(v9 - 8);
        }

        v9 += 24;
        --v10;
      }

      while (v10);
    }

    *(a2 + 328) = *(v8 + 43);
    *(a2 + 312) = *(v8 + 328);
    *(a2 + 20) = *(v8 + 8);
    v7 = *v8;
  }

  if (v7 > 0x96)
  {
    return 0;
  }

  if (_MergedGlobals_76)
  {
    v11 = 116;
  }

  else
  {
    v11 = 151;
  }

  v12 = a3 + 1;
  if ((a3 + 1) > 2)
  {
    v13 = &_MergedGlobals_2;
  }

  else
  {
    v13 = (&off_1E6E3DAE0 + v12);
    v11 = qword_184773718[v12];
  }

  v15 = *v13;
  if (v7 >= v11)
  {
    v16 = &kTypeHierarchySpecPhonePad;
  }

  else
  {
    v16 = *v13;
  }

  v17 = &v16[336 * v7];
  v18 = *v17;
  v51.isa = 0;
  v19 = TDescriptorSource::UIFontNameForUIType(HIWORD(v18));
  if (v19)
  {
    TDescriptorSource::StashIndexForFontName(v19, &v51, v20);
    isa = v51.isa;
  }

  else
  {
    isa = 0;
  }

  if (v7 != a1)
  {
    v35 = *(a2 + 24) == 0.0;
LABEL_49:
    LODWORD(v22) = 1;
    goto LABEL_52;
  }

  v22 = v17;
  if (v18 < 0x10000)
  {
    goto LABEL_35;
  }

  v23 = &kTypeHierarchySpecPhonePad + 336 * isa;
  if (isa >= 0x97)
  {
    v23 = 0;
  }

  v22 = isa >= v11 ? v23 : &v15[336 * isa];
  if (v22)
  {
LABEL_35:
    if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
    {
      dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
    }

    if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 4) == 0)
    {
      v24 = *v22;
      v26 = 9;
      do
      {
        v27 = v26 >> 1;
        v28 = &v25[2 * (v26 >> 1)];
        v30 = *v28;
        v29 = v28 + 2;
        v26 += ~(v26 >> 1);
        if (v30 < v24)
        {
          v25 = v29;
        }

        else
        {
          v26 = v27;
        }
      }

      while (v26);
      if (v25 != &kOtherSpecCore && *v25 == v24)
      {
        memmove((a2 + 24), v22 + 24, 0xA8uLL);
        v31 = 0;
        v32 = (a2 + 192);
        do
        {
          v33 = v32 + v31;
          v34 = *v32;
          *(v33 + 2) = *(a2 + 208);
          *v33 = v34;
          v31 += 24;
        }

        while (v31 != 120);
        v35 = 0;
        *(a2 + 20) = v25[1];
        goto LABEL_49;
      }
    }

    v35 = 0;
    LODWORD(v22) = 0;
  }

  else
  {
    v35 = 0;
  }

LABEL_52:
  *a2 = *v17;
  v36 = *(v17 + 4);
  *(a2 + 16) = v36;
  if ((v22 & 1) == 0)
  {
    *(a2 + 20) = *(v17 + 5);
  }

  if (v18 >= 0x10000)
  {
    v38 = &kTypeHierarchySpecPhonePad + 336 * isa;
    if (isa >= 0x97)
    {
      v38 = 0;
    }

    if (isa >= v11)
    {
      v39 = v38;
    }

    else
    {
      v39 = &v15[336 * isa];
    }

    if (v35 || (v22 & 1) == 0)
    {
      memmove((a2 + 24), v39 + 24, 0x120uLL);
      v40 = *(v39 + 41);
      *(a2 + 312) = *(v39 + 312);
      *(a2 + 328) = v40;
      if (!v35)
      {
        *(a2 + 20) = *(v39 + 5);
      }

      LODWORD(v22) = 1;
    }

    if (v15 == &kTypeHierarchySpecWatch)
    {
      v41 = 2.0;
    }

    else
    {
      v41 = 4.0;
    }

    v42 = *(a2 + 20);
    if ((v36 & 0x20) != 0)
    {
      if ((v42 - 2) < 5)
      {
        v42 = dword_184773730[(v42 - 2)];
      }
    }

    else if ((v36 & 0x40) != 0)
    {
      if ((v42 - 3) >= 2)
      {
        if (v42 == 6)
        {
          v42 = 7;
        }
      }

      else
      {
        v42 = 6;
      }
    }

    else if ((v36 & 0x80) != 0)
    {
      if (v42 == 3)
      {
        v42 = 4;
      }

      else if (v42 == 4)
      {
        v42 = 5;
      }
    }

    else
    {
      if (v42 == 6)
      {
        v43 = 8;
      }

      else
      {
        v43 = *(a2 + 20);
      }

      if ((v36 & 0x100) != 0)
      {
        v42 = v43;
      }

      else
      {
        v42 = v42;
      }
    }

    v44 = *(v17 + 3);
    v45 = *(v39 + 3);
    if (*(v17 + 2) == 1)
    {
      LODWORD(v42) = ItalicTrait(v42);
    }

    *(a2 + 20) = v42;
    v47 = v44 == 1 || v44 == -1;
    if (v45)
    {
      v48 = 1;
    }

    else
    {
      v48 = !v47;
    }

    if (v48)
    {
      goto LABEL_108;
    }

    v49 = 32;
    while (v44 != 1)
    {
      if (v44 == -1)
      {
        v50 = v41 + *(a2 + v49);
        goto LABEL_105;
      }

LABEL_106:
      v49 += 24;
      if (v49 == 320)
      {
        *(a2 + 12) = v44;
        goto LABEL_108;
      }
    }

    v50 = *(a2 + v49) - v41;
LABEL_105:
    *(a2 + v49) = v50;
    goto LABEL_106;
  }

  if (v35)
  {
    memmove((a2 + 24), v17 + 24, 0x120uLL);
    v37 = *(v17 + 5);
    *(a2 + 312) = *(v17 + 24);
    *(a2 + 328) = v37;
  }

LABEL_108:
  if (v22)
  {
    return a2;
  }

  else
  {
    return v17;
  }
}

void TDescriptorSource::TDescriptorSource(TDescriptorSource *this)
{
  if (qword_1ED567B00 != -1)
  {
    dispatch_once_f(&qword_1ED567B00, 0, TDescriptorSource::GetCache(void)::{lambda(void *)#1}::__invoke);
  }

  v2 = dword_1ED567A6C;
  if (v2 != GetLocaleChangedCount())
  {
    [atomic_load_explicit(qword_1ED567AF8 memory:"removeAllObjects" order:?acquire)];
    dword_1ED567A6C = GetLocaleChangedCount();
  }

  *this = qword_1ED567AF8;
  if (qword_1ED567A78 != -1)
  {
    dispatch_once_f(&qword_1ED567A78, 0, TDescriptorSource::TDescriptorSource(void)::$_0::__invoke);
  }
}

uint64_t GetLocaleChangedCount(void)
{
  if (qword_1ED567BA0 != -1)
  {
    dispatch_once_f(&qword_1ED567BA0, 0, GetLocaleChangedCount(void)::$_0::__invoke);
  }

  return gLocaleChangedCount;
}

char *TFont::SwapPerThreadSize(TFont *this, double a2)
{
  v2 = NAN;
  if (a2 != 0.0)
  {
    v2 = a2;
  }

  if (a2 == 12.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *&v2;
  }

  return SetThreadSpecificData(5, v3, ThreadSpecificNullDestructor<unsigned long>);
}

void *std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::__value_func[abi:fn200100](v4, a2);
  std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::swap[abi:fn200100](v4, a1);
  std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v4);
  return a1;
}

void *std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::swap[abi:fn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 170, 24);
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

__n128 CTFontTransformGlyphsWithLanguage(const __CTFont *a1, unsigned __int16 *a2, CGSize *a3, uint64_t a4, int a5, __CFString *a6, uint64_t a7)
{
  v31[67] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3 || a4 <= 0)
  {
    return *MEMORY[0x1E695F060];
  }

  v13 = a5 ? a5 : 3;
  if (!StackHasAvailable(0x8000uLL))
  {
    return *MEMORY[0x1E695F060];
  }

  memcpy(v31, &unk_18475C038, 0x218uLL);
  TRunGlue::TRunGlue(v31, a1, a2, a3, a4, 0, 0, 0);
  v14 = v31[62];
  ShapingType = TBaseFont::GetShapingType(*(v31[62] + 408));
  v16 = ShapingType;
  v17 = 0;
  if (ShapingType >= 2)
  {
    if (v31[63] <= 0x10000uLL)
    {
      v18 = ((LODWORD(v31[63]) + 63) >> 3) & 0x7FF8;
    }

    else
    {
      v18 = 0x2000;
    }

    MEMORY[0x1EEE9AC00](ShapingType, v18);
    v17 = &v25 - v19;
    bzero(&v25 - v19, v20);
  }

  TRunGlue::DetermineCoverage(v31, v17);
  v27 = 0xAAAAAAAAAAAAAA00;
  v28 = -1431655936;
  if (v13)
  {
    if (v14[41])
    {
      if (TFont::NeedsShapingForGlyphs(v14, a2, a4, a6))
      {
        v30[0] = &unk_1EF257918;
        v30[1] = a7;
        v30[3] = v30;
        std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator=(&v31[56], v30);
        std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v30);
        v23 = TShapingEngine::ShapeGlyphs(v31, v16, a6, &v27, 0);
LABEL_30:
        if (!a7 && !v23)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v29[0] = &unk_1EF257918;
      v29[1] = a7;
      v29[3] = v29;
      std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator=(&v31[56], v29);
      std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v29);
      v23 = TShapingEngine::ShapeGlyphs(v31, v16, a6, &v27, 0);
      if (!v23)
      {
        goto LABEL_30;
      }

      if (qword_1ED5678D8 != -1)
      {
        dispatch_once_f(&qword_1ED5678D8, 0, GetShapingGlyphsQueue(void)::$_0::__invoke);
      }

      v24 = qword_1ED5678D0;
      CFRetain(a1);
      dispatch_async_f(v24, a1, InitShapingGlyphsOnQueue(__CTFont const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0::__invoke);
    }

    LOBYTE(v23) = 1;
LABEL_26:
    if ((v13 & 2) == 0 || (v23 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v13 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_28:
  if (!TKerningEngine::PositionGlyphs(v31, v16, v27, v28, a6, 0, 1))
  {
LABEL_32:
    *&v21 = 0x7FF0000000000000;
    v26 = v21;
    goto LABEL_33;
  }

LABEL_29:
  *&v21 = v31[54];
  v26 = v21;
  *&v21 = v31[55];
LABEL_33:
  v25 = v21;
  std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&v31[56]);
  v27 = &v31[32];
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v27);
  v27 = &v31[27];
  std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v27);
  v27 = &v31[7];
  std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v27);
  result.n128_u64[0] = v26;
  result.n128_u64[1] = v25;
  return result;
}

void TRunGlue::TRunGlue(TRunGlue *this, const __CTFont *a2, unsigned __int16 *a3, CGSize *a4, uint64_t a5, uint64_t a6, CGPoint *a7, uint64_t *a8)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 1;
  *(this + 4) = a5;
  *(this + 5) = a6;
  *(this + 6) = a5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 12) = this + 80;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = -1;
  *(this + 16) = -1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = a5;
  *(this + 21) = a3;
  *(this + 22) = a4;
  *(this + 23) = a7;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 31) = this + 240;
  if ((a5 + 14) >= 0xF)
  {
    if (a5 >= -7)
    {
      v11 = a5 + 7;
    }

    else
    {
      v11 = a5 + 14;
    }

    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__vallocate[abi:fn200100](this + 27, v11 >> 3);
    v12 = *(this + 28);
    bzero(v12, v11 >> 3);
    *(this + 28) = &v12[v11 >> 3];
  }

  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  *(this + 50) = this + 280;
  *(this + 51) = 0;
  *(this + 52) = a8;
  *(this + 53) = 0;
  *(this + 27) = *MEMORY[0x1E695F060];
  *(this + 59) = 0;
  *(this + 60) = 0;
  v13 = *(a2 + 5);
  *(this + 61) = a2;
  *(this + 62) = v13;
  *(this + 63) = TBaseFont::GetGlyphCount(*(v13 + 408));
  *(this + 512) = (*(**(*(this + 62) + 408) + 104))(*(*(this + 62) + 408));
  *(this + 513) = 1;
  *(this + 515) = 0;
  *(this + 516) = *(*(this + 62) + 12) & 1;
  *(this + 65) = TRunGlue::InitScale(this);
  *(this + 66) = v14;
  *(this + 25) = -1;
  *(this + 26) = -1;
}

BOOL StackHasAvailable(unint64_t a1)
{
  v2 = pthread_self();
  stackaddr_np = pthread_get_stackaddr_np(v2);
  return &vars0 + pthread_get_stacksize_np(v2) - stackaddr_np > a1;
}

uint64_t TBaseFont::GetGlyphCount(TBaseFont *this)
{
  result = *(this + 25);
  if (!result)
  {
    InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
    v4 = *(*this + 880);

    return v4(this, InitializedGraphicsFont);
  }

  return result;
}

double TRunGlue::InitScale(TRunGlue *this)
{
  v2 = *(this + 62);
  if (*(v2 + 56))
  {
    v3 = v2 + 56;
  }

  else
  {
    TFont::InitStrikeMetrics(v2);
  }

  v5 = *(v3 + 40);
  result = *(v3 + 48);
  if (v5 == *MEMORY[0x1E695EFF8] && result == *(MEMORY[0x1E695EFF8] + 8))
  {
    result = 1.0;
    v5 = 1.0;
  }

  if (!*(this + 516))
  {
    return v5;
  }

  return result;
}

uint64_t TBaseFont::GetShapingType(TBaseFont *this)
{
  if ((*(this + 46) & 0x30000) != 0)
  {
    return HIWORD(*(this + 45)) & 3;
  }

  if (TBaseFont::GetCommonTable(this, 1634561906, 0))
  {
    if ((*(this + 46) & 0x30000) != 0)
    {
      return HIWORD(*(this + 45)) & 3;
    }

    result = 1;
  }

  else
  {
    result = 2 * (TBaseFont::GetCommonTable(this, 1196643650, 0) != 0);
  }

  atomic_fetch_or_explicit(this + 45, result << 16, memory_order_relaxed);
  atomic_fetch_or_explicit(this + 46, 0x30000u, memory_order_relaxed);
  return result;
}

uint64_t TRunGlue::DetermineCoverage(uint64_t this, unsigned __int8 *a2)
{
  v3 = this;
  if (a2)
  {
    v4 = *(this + 504);
    *(this + 192) = a2;
  }

  else
  {
    v4 = 0;
  }

  *(this + 200) = 0;
  *(this + 208) = 0;
  if (*(this + 144))
  {
    v5 = *(this + 16);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(this + 8) + v8;
        v10 = *(*this + 16);
        if (v9 >= (*(*this + 24) - v10) >> 3)
        {
          break;
        }

        v11 = *(*(v10 + 8 * v9) + 40);
        v12 = v11[26];
        if (v12 >= 1)
        {
          v13 = (*(v11[27] + 16) + 2 * v11[25]);
          do
          {
            v15 = *v13++;
            v14 = v15;
            if (v4 > v15)
            {
              a2[v14 >> 3] |= 1 << (v14 & 7);
              v7 = *(this + 200);
              v6 = *(this + 208);
            }

            v7 |= 1 << v14;
            v6 |= 1 << ((-1640531535 * v14) >> 26);
            *(this + 200) = v7;
            *(this + 208) = v6;
            --v12;
          }

          while (v12);
          v5 = *(this + 16);
        }

        if (++v8 >= v5)
        {
          return this;
        }
      }

      __break(1u);
    }
  }

  else
  {
    this = TRunGlue::length(this);
    if (this >= 1)
    {
      for (i = 0; i != this; ++i)
      {
        v17 = *(v3[21] + 2 * v3[19] + 2 * i);
        if (v4 > v17)
        {
          a2[v17 >> 3] |= 1 << (v17 & 7);
        }

        v18 = v3[25] | (1 << v17);
        v19 = v3[26] | (1 << ((-1640531535 * v17) >> 26));
        v3[25] = v18;
        v3[26] = v19;
      }
    }
  }

  return this;
}

BOOL TFont::NeedsShapingForGlyphs(atomic_ullong *this, const unsigned __int16 *a2, uint64_t a3, const __CFString *a4)
{
  if (a4)
  {
    v7 = 40;
  }

  else
  {
    v8 = TFont::ShapesAnyPreferredLanguage(this);
    v7 = 41;
    if (v8)
    {
      v7 = 40;
    }
  }

  explicit = atomic_load_explicit(&this[v7], memory_order_acquire);
  if (explicit == -1)
  {
    return 1;
  }

  v10 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  do
  {
    v11 = *a2++;
    v12 = (1 << (v11 & 7)) & *(explicit + (v11 >> 3));
    result = v12 != 0;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10 == 0;
    }

    --v10;
  }

  while (!v14);
  return result;
}

CFIndex TFont::ShapesAnyPreferredLanguage(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 39, memory_order_acquire);
  if (!explicit)
  {
    v7 = 0;
    return v7 & 1;
  }

  LocaleChangedCount = GetLocaleChangedCount();
  if (*(this + 2) == LocaleChangedCount)
  {
LABEL_5:
    v7 = *(this + 4);
    return v7 & 1;
  }

  v4 = LocaleChangedCount;
  BytePtr = CFDataGetBytePtr(explicit);
  result = CFDataGetLength(explicit);
  if (((result >> 2) & 0x8000000000000000) == 0)
  {
    *(this + 4) = IsAnyLangSysTagInPreferredLanguages(BytePtr, result >> 2);
    *(this + 2) = v4;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t TRunGlue::length(TRunGlue *this)
{
  if (!*(this + 18))
  {
    return *(this + 20) - *(this + 19);
  }

  result = *(this + 4);
  if (result == -1)
  {
    TRunGlue::ComputeEndIndex(this);
    return *(this + 4);
  }

  return result;
}

uint64_t FallbackForLangSysTag(unsigned int a1)
{
  if (HIWORD(a1) == 23112)
  {
    if (a1 == 1514689613)
    {
      return 1514686496;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_1ED567DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567DF8))
    {
      *&qword_1ED567E90 = 0u;
      *&qword_1ED567E80 = 0u;
      dword_1ED567EA0 = 1065353216;
      __cxa_guard_release(&qword_1ED567DF8);
    }

    if (qword_1ED567E00 != -1)
    {
      dispatch_once_f(&qword_1ED567E00, 0, FallbackForLangSysTag::$_0::__invoke);
    }

    if (result)
    {
      return *(result + 20);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<CTFontTransformGlyphsWithLanguage::$_0,std::allocator<CTFontTransformGlyphsWithLanguage::$_0>,BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF257918;
  a2[1] = v2;
  return result;
}

uint64_t TFont::IsSystemUIFontAndForShaping(TFont *this, BOOL *a2)
{
  if (atomic_load_explicit(this + 2, memory_order_acquire) && (v4 = *(*(atomic_load_explicit(this + 2, memory_order_acquire) + 40) + 16), (TDescriptor::GetSystemUIFontOptions(this) & v4) != 0))
  {
    v5 = (*(this + 12) & 0x20) == 0;
    result = 1;
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t TShapingEngine::ShapeGlyphs(uint64_t a1, int a2, __CFString *this, uint64_t a4, uint64_t a5)
{
  __b[92] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v9 = *(a1 + 496);
  if (a2 == 2 || a2 == 3 && (FontRequiresOpenTypeShaping(*(a1 + 496)) & 1) != 0)
  {
    InitialScriptAndLangSys = TOpenTypeMorph::GetInitialScriptAndLangSys(this, v9, this);
    v11 = InitialScriptAndLangSys;
    if (*(a4 + 8) == 1)
    {
      *a4 = InitialScriptAndLangSys;
    }

    else
    {
      *a4 = InitialScriptAndLangSys;
      *(a4 + 8) = 1;
    }

    v13 = *(a1 + 40);
    if (v13 == -1)
    {
      TRunGlue::ComputeEndIndex(a1);
      v13 = *(a1 + 40);
    }

    v14 = *(a1 + 48);
    v15 = v14 + v13;
    v20.location = v13;
    location = v13;
    do
    {
      v20.length = v15 - location;
      memset(__b, 170, 0x2E0uLL);
      TOpenTypeMorph::TOpenTypeMorph(__b, a1, a5, v11, &v20);
      if (__b[68])
      {
        v19 = 0;
        v12 = TOpenTypeMorph::ShapeGlyphs(__b, &v19);
      }

      else
      {
        v12 = 1;
      }

      v20.location += v20.length;
      location = v20.location;
      std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](&__b[4]);
    }

    while (location < v15 && (v12 & 1) != 0);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    v17 = *(a1 + 32);
    *(a1 + 152) = 0;
    *(a1 + 160) = v17;
  }

  else
  {
    memset(__b, 170, 0x2A0uLL);
    TAATMorphTableMorx::TAATMorphTableMorx(__b, a1);
    if (__b[5])
    {
      LOBYTE(v20.location) = 0;
      v12 = TAATMorphTable::ShapeGlyphs(__b, &v20, this);
    }

    else
    {
      v12 = 1;
    }

    __b[0] = &unk_1EF257650;
    __b[8] = &unk_1EF257678;
    v20.location = &__b[32];
    std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](&v20);
  }

  TRunGlue::UpdateAdvancesIfNeeded(a1);
  return v12;
}

unint64_t TOpenTypeMorph::GetInitialScriptAndLangSys(__CFString *this, __CFString *a2, const TFont *a3)
{
  if (this)
  {
    v3 = ScriptAndLangSysFromCanonicalLanguage(this);
LABEL_6:
    v5 = v3 & 0xFFFFFFFF00000000;
    return v5 | v3;
  }

  v7 = -86;
  IsSystemUIFontAndForShaping = TFont::IsSystemUIFontAndForShaping(a2, &v7);
  v5 = 0;
  LODWORD(v3) = -1;
  if (IsSystemUIFontAndForShaping && v7)
  {
    v3 = ScriptAndLangSysForPreferredLanguage();
    goto LABEL_6;
  }

  return v5 | v3;
}

uint64_t TDescriptor::GetSystemUIFontOptions(TDescriptor *this)
{
  if (qword_1ED5679B0 != -1)
  {
    dispatch_once_f(&qword_1ED5679B0, 0, TDescriptor::GetSystemUIFontOptions(void)::$_0::__invoke);
  }

  return _MergedGlobals_13;
}

uint64_t *TOpenTypeMorph::TOpenTypeMorph(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFRange *a5)
{
  *a1 = a2;
  v8 = *(a2 + 496);
  a1[1] = v8;
  *(a1 + 4) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 516);
  *(a1 + 21) = 1;
  a1[3] = a4;
  a1[4] = 0;
  *(a1 + 5) = 0u;
  a1[67] = (a1 + 7);
  CommonTable = TBaseFont::GetCommonTable(*(v8 + 408), 1196643650, 0);
  a1[68] = CommonTable;
  a1[69] = a3;
  *(a1 + 35) = 0u;
  a1[72] = &OTL::GDEF::kNullClassDefTable;
  a1[73] = &OTL::GDEF::kNullClassDefTable;
  a1[74] = &OTL::GDEF::kNullMarkGlyphSets;
  *(a1 + 75) = 0u;
  *(a1 + 77) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 164) = 2;
  *(a1 + 83) = 0u;
  *(a1 + 85) = 0u;
  a1[87] = 0;
  *(a1 + 89) = 0u;
  *(a1 + 728) = 0;
  a1[81] = &unk_1EF258990;
  if (!CommonTable)
  {
    return a1;
  }

  v10 = TBaseFont::GetCommonTable(*(a1[1] + 408), 1195656518, 0);
  OTL::GDEF::GDEF(v58, v10);
  v11 = *&v58[48];
  *(a1 + 37) = *&v58[32];
  *(a1 + 38) = v11;
  *(a1 + 39) = *&v58[64];
  a1[80] = *&v58[80];
  v12 = *&v58[16];
  *(a1 + 35) = *v58;
  *(a1 + 36) = v12;
  if (!a3)
  {
    goto LABEL_54;
  }

  v13 = *(a1[1] + 408);
  if ((*(v13 + 184) & 0x400) == 0)
  {
    TBaseFont::DetermineFontFlags(*(a1[1] + 408), 0x400u);
  }

  if ((*(v13 + 180) & 0x400) != 0 && !TFont::ShapesAnyPreferredLanguage(a1[1]) || *(a1 + 6) == 128)
  {
    goto LABEL_54;
  }

  v59 = 0u;
  memset(&v58[8], 0, 160);
  v14 = *(a3 + 16);
  v60 = 0;
  *&v59 = v14;
  location = a5->location;
  length = a5->length;
  v57 = a5->location;
  *v58 = a3;
  if (length < 1)
  {
    LODWORD(v20) = -1;
    goto LABEL_33;
  }

  p_location = &a5->location;
  v17 = 0;
  v18 = length + location;
  v19 = 0xFFFFFFFFLL;
  while (1)
  {
    v20 = v19;
    FullChar = TCharStreamIterator::GetFullChar(v58, &v57, 0);
    v19 = ScriptCodeForLongCharacter(FullChar);
    if (!v19)
    {
      if (!IsRightAssociative(FullChar))
      {
        goto LABEL_28;
      }

      v24 = v57 + 1;
      *v56 = v57 + 1;
      v25 = *a1;
      v26 = *(*a1 + 40);
      if (v26 == -1)
      {
        TRunGlue::ComputeEndIndex(*a1);
        v26 = *(v25 + 40);
      }

      v27 = *(v25 + 48) + v26;
      if (v24 >= v27)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v28 = TCharStreamIterator::GetFullChar(v58, v56, 0);
        v29 = ScriptCodeForLongCharacter(v28);
        v19 = v29;
        if (v29 >= 1)
        {
          break;
        }

        ++*v56;
        if (*v56 >= v27)
        {
          if (v29)
          {
            break;
          }

          goto LABEL_28;
        }
      }
    }

    if (v19 != v20 && (v20 < 1 || !ContinueScriptRunGivenCharacterWithScript(v20, FullChar)))
    {
      break;
    }

LABEL_28:
    v19 = v20;
LABEL_29:
    location = v57 + 1;
    v57 = location;
    if (location >= v18)
    {
      a5 = p_location;
      location = *p_location;
      LODWORD(v20) = v19;
      goto LABEL_33;
    }
  }

  if ((v17 & 1) == 0)
  {
    if (*(a1 + 6) != v19)
    {
      v22 = *(*a1 + 496);
      v56[0] = -86;
      if (TFont::IsSystemUIFontAndForShaping(v22, v56))
      {
        if (v56[0])
        {
          v23 = LangSysTagFromPreferredLanguagesForScript(v19);
          if (v23)
          {
            *(a1 + 7) = v23;
          }
        }
      }
    }

    *(a1 + 6) = v19;
    v17 = 1;
    goto LABEL_29;
  }

  a5 = p_location;
  v30 = *p_location;
  p_location[1] = location - *p_location;
  location = v30;
LABEL_33:
  v31 = *a1;
  v33 = *(*a1 + 64);
  v32 = *(*a1 + 72);
  if (v33 >= v32)
  {
    v35 = v31[7];
    v36 = v33 - v35;
    v37 = (v33 - v35) >> 4;
    v38 = v37 + 1;
    if ((v37 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v39 = v32 - v35;
    if (v39 >> 3 > v38)
    {
      v38 = v39 >> 3;
    }

    if (v39 >= 0x7FFFFFFFFFFFFFF0)
    {
      v40 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = v38;
    }

    if (v40)
    {
      v41 = v31[12];
      v42 = v41 + 16 * v40;
      if (v42 > (v31 + 12))
      {
        if (!(v40 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v31[12] = v42;
    }

    else
    {
      v41 = 0;
    }

    v43 = v37;
    v44 = v41 + 16 * v37;
    v45 = v41 + 16 * v40;
    *v44 = v20;
    *(v44 + 8) = location;
    v34 = v44 + 16;
    v46 = (v44 - 16 * v43);
    memcpy(v46, v35, v36);
    v47 = v31[7];
    v31[7] = v46;
    v31[8] = v34;
    v48 = v31[9];
    v31[9] = v45;
    if (v47)
    {
      if (v31 + 10 > v47 || (v49 = v31 + 12, v31 + 12 <= v47))
      {
        operator delete(v47);
      }

      else if (v48 == *v49)
      {
        *v49 = v47;
      }
    }
  }

  else
  {
    *v33 = v20;
    *(v33 + 8) = location;
    v34 = v33 + 16;
  }

  v31[8] = v34;
LABEL_54:
  v50 = ScriptTagForScriptCode(*(a1 + 6));
  v51 = v50;
  OTL::GCommon::GCommon(v58, 0, a1[1], a1[68], (a1 + 70), v50, *(a1 + 7));
  v52 = *&v58[24];
  v53 = *&v58[56];
  *(a1 + 43) = *&v58[40];
  *(a1 + 44) = v53;
  *(a1 + 713) = *&v58[65];
  *(a1 + 41) = *&v58[8];
  *(a1 + 42) = v52;
  if ((a1[91] & 1) == 0 && v51 != *(a1 + 180))
  {
    *(a1 + 6) = -1;
  }

  TRunGlue::SetCharRange(*a1, *a5);
  return a1;
}

uint64_t TBaseFont::GetCommonTable(TBaseFont *this, uint64_t a2, unsigned int *a3)
{
  v3 = a2;
  while (1)
  {
    v5 = *(this + 44);
    if (v3 > 1634561905)
    {
      break;
    }

    if (v3 <= 1634428273)
    {
      switch(v3)
      {
        case 1195656518:
          v6 = (this + 16);
          if (atomic_load_explicit(this + 2, memory_order_acquire))
          {
            v10 = 0;
          }

          else
          {
            v10 = (v5 & 0x100) == 0;
          }

          if (!v10)
          {
            if ((v5 & 0x100) == 0)
            {
              return atomic_load_explicit(v6, memory_order_acquire);
            }

            return 0;
          }

          v31 = 0xAAAAAAAAAAAAAAAALL;
          (*(*this + 504))(&v31, this, a2, a3);
          v30 = CGFontCopyTableForTag(atomic_load_explicit(&v31, memory_order_acquire), 0x47444546u);
          explicit = atomic_load_explicit(&v30, memory_order_acquire);
          if (explicit)
          {
            goto LABEL_32;
          }

          v8 = (this + 176);
          v9 = 256;
          break;
        case 1196445523:
          v6 = (this + 24);
          if (atomic_load_explicit(this + 3, memory_order_acquire) || (v5 & 0x80) != 0)
          {
            if ((v5 & 0x80) == 0)
            {
              return atomic_load_explicit(v6, memory_order_acquire);
            }

            return 0;
          }

          v31 = 0xAAAAAAAAAAAAAAAALL;
          (*(*this + 504))(&v31, this, a2, a3);
          v30 = CGFontCopyTableForTag(atomic_load_explicit(&v31, memory_order_acquire), 0x47504F53u);
          explicit = atomic_load_explicit(&v30, memory_order_acquire);
          if (explicit)
          {
            goto LABEL_32;
          }

          v8 = (this + 176);
          v9 = 128;
          break;
        case 1196643650:
          v6 = (this + 32);
          if (atomic_load_explicit(this + 4, memory_order_acquire) || (v5 & 0x40) != 0)
          {
            if ((v5 & 0x40) == 0)
            {
              return atomic_load_explicit(v6, memory_order_acquire);
            }

            return 0;
          }

          v31 = 0xAAAAAAAAAAAAAAAALL;
          (*(*this + 504))(&v31, this, a2, a3);
          v30 = CGFontCopyTableForTag(atomic_load_explicit(&v31, memory_order_acquire), 0x47535542u);
          explicit = atomic_load_explicit(&v30, memory_order_acquire);
          if (!explicit)
          {
            v8 = (this + 176);
            v9 = 64;
            break;
          }

LABEL_32:
          v11 = 0;
          v12 = atomic_exchange(&v30, 0);
          atomic_compare_exchange_strong(v6, &v11, v12);
          if (v11)
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

LABEL_54:
          if (explicit)
          {
            return atomic_load_explicit(v6, memory_order_acquire);
          }

          return 0;
        default:
          return 0;
      }

LABEL_53:
      atomic_fetch_or_explicit(v8, v9, memory_order_relaxed);
      goto LABEL_54;
    }

    if (v3 == 1634428274)
    {
      if ((v5 & 0x2000000) == 0)
      {
        goto LABEL_13;
      }

      v14 = 134234112;
      if (a3)
      {
        *a3 = 1801810552;
      }

LABEL_93:
      v6 = (this + 48);
      if (!atomic_load_explicit(this + 6, memory_order_acquire) && (v5 & 0x4000) == 0)
      {
        v31 = 0xAAAAAAAAAAAAAAAALL;
        (*(*this + 504))(&v31, this, a2, a3);
        v30 = CGFontCopyTableForTag(atomic_load_explicit(&v31, memory_order_acquire), 0x6B657278u);
        v26 = atomic_load_explicit(&v30, memory_order_acquire);
        if (v26)
        {
          v27 = 0;
          v28 = atomic_exchange(&v30, 0);
          atomic_compare_exchange_strong(v6, &v27, v28);
          if (v27)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          atomic_fetch_or_explicit(this + 44, 0x4000u, memory_order_relaxed);
        }

        result = 0;
        if (!v26 || (v14 & v5) == 0x4000)
        {
          return result;
        }

        return atomic_load_explicit(v6, memory_order_acquire);
      }

      if ((v14 & v5) != 0x4000)
      {
        return atomic_load_explicit(v6, memory_order_acquire);
      }

      return 0;
    }

    if (v3 != 1634497633)
    {
      return 0;
    }

    if ((v5 & 0x2000000) != 0)
    {
      if (a3)
      {
        *a3 = 1819566439;
      }

      v16 = 272629760;
LABEL_82:
      v6 = (this + 56);
      if (!atomic_load_explicit(this + 7, memory_order_acquire) && (v5 & 0x400000) == 0)
      {
        v31 = 0xAAAAAAAAAAAAAAAALL;
        (*(*this + 504))(&v31, this, a2, a3);
        v30 = CGFontCopyTableForTag(atomic_load_explicit(&v31, memory_order_acquire), 0x6C746167u);
        v22 = atomic_load_explicit(&v30, memory_order_acquire);
        if (v22)
        {
          v23 = 0;
          v24 = atomic_exchange(&v30, 0);
          atomic_compare_exchange_strong(v6, &v23, v24);
          if (v23)
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          atomic_fetch_or_explicit(this + 44, 0x400000u, memory_order_relaxed);
        }

        result = 0;
        if (!v22 || (v16 & v5) == 0x400000)
        {
          return result;
        }

        return atomic_load_explicit(v6, memory_order_acquire);
      }

      if ((v16 & v5) != 0x400000)
      {
        return atomic_load_explicit(v6, memory_order_acquire);
      }

      return 0;
    }

LABEL_13:
    TBaseFont::InitAnnexTables(this);
    a3 = 0;
  }

  if (v3 > 1801810541)
  {
    if (v3 <= 1819566438)
    {
      if (v3 != 1801810542)
      {
        if (v3 != 1801810552 || (~v5 & 0xA000000) == 0)
        {
          return 0;
        }

        v14 = 0x4000;
        goto LABEL_93;
      }

      v6 = (this + 40);
      if (atomic_load_explicit(this + 5, memory_order_acquire) || (v5 & 1) != 0)
      {
        if ((v5 & 1) == 0)
        {
          return atomic_load_explicit(v6, memory_order_acquire);
        }

        return 0;
      }

      v31 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 504))(&v31, this, a2, a3);
      v30 = CGFontCopyTableForTag(atomic_load_explicit(&v31, memory_order_acquire), 0x6B65726Eu);
      explicit = atomic_load_explicit(&v30, memory_order_acquire);
      if (explicit)
      {
        goto LABEL_32;
      }

      v8 = (this + 176);
      v9 = 1;
    }

    else
    {
      if (v3 == 1819566439)
      {
        if ((~v5 & 0x12000000) == 0)
        {
          return 0;
        }

        v16 = 0x400000;
        goto LABEL_82;
      }

      if (v3 == 1836020344)
      {
        if ((~v5 & 0x22000000) != 0)
        {
          v17 = 4;
          goto LABEL_66;
        }

        return 0;
      }

      if (v3 != 1953653099)
      {
        return 0;
      }

      v6 = (this + 72);
      if (atomic_load_explicit(this + 9, memory_order_acquire) || (v5 & 8) != 0)
      {
        if ((v5 & 8) == 0)
        {
          return atomic_load_explicit(v6, memory_order_acquire);
        }

        return 0;
      }

      v31 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 504))(&v31, this, a2, a3);
      v30 = CGFontCopyTableForTag(atomic_load_explicit(&v31, memory_order_acquire), 0x7472616Bu);
      explicit = atomic_load_explicit(&v30, memory_order_acquire);
      if (explicit)
      {
        goto LABEL_32;
      }

      v8 = (this + 176);
      v9 = 8;
    }

    goto LABEL_53;
  }

  if (v3 != 1634561906)
  {
    return 0;
  }

  if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_13;
  }

  v17 = 536870916;
  if (a3)
  {
    *a3 = 1836020344;
  }

LABEL_66:
  v6 = (this + 64);
  if (atomic_load_explicit(this + 8, memory_order_acquire) || (v5 & 4) != 0)
  {
    if ((v17 & v5) != 4)
    {
      return atomic_load_explicit(v6, memory_order_acquire);
    }

    return 0;
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 504))(&v31, this, a2, a3);
  v30 = CGFontCopyTableForTag(atomic_load_explicit(&v31, memory_order_acquire), 0x6D6F7278u);
  v18 = atomic_load_explicit(&v30, memory_order_acquire);
  if (v18)
  {
    v19 = 0;
    v20 = atomic_exchange(&v30, 0);
    atomic_compare_exchange_strong(v6, &v19, v20);
    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    atomic_fetch_or_explicit(this + 44, 4u, memory_order_relaxed);
  }

  result = 0;
  if (v18 && (v17 & v5) != 4)
  {
    return atomic_load_explicit(v6, memory_order_acquire);
  }

  return result;
}

uint64_t OTL::GDEF::GDEF(OTL::GDEF *this, CFDataRef theData)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v5 = CFDataGetBytePtr(theData);
    if (v5)
    {
      v6 = &v5[CFDataGetLength(theData)];
      goto LABEL_6;
    }
  }

  else
  {
    BytePtr = 0;
  }

  v6 = 0;
LABEL_6:

  return OTL::GDEF::GDEF(this, BytePtr, v6);
}

uint64_t OTL::GDEF::GDEF(uint64_t a1, _WORD *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &OTL::GDEF::kNullClassDefTable;
  *(a1 + 24) = &OTL::GDEF::kNullClassDefTable;
  *(a1 + 32) = &OTL::GDEF::kNullMarkGlyphSets;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  if (a2 && (a2 + 6) <= a3 && *a2 == 256)
  {
    *a1 = a2;
    *(a1 + 8) = a3;
    if (a2[2])
    {
      v5 = a2 + __rev16(a2[2]);
      *(a1 + 16) = v5;
      if ((v5 + 2) > a3 || ((v6 = bswap32(*v5) >> 16, v6 == 2) ? (v7 = 6 * (bswap32(*(v5 + 1)) >> 16) + 4) : v6 != 1 ? (v7 = 0) : (v7 = 2 * (bswap32(*(v5 + 2)) >> 16) + 6), (v8 = &v5[v7], v8 >= v5) ? (v9 = v8 > a3) : (v9 = 1), v9))
      {
        *(a1 + 16) = &OTL::GDEF::kNullClassDefTable;
      }
    }

    if (a2[5])
    {
      v10 = a2 + __rev16(a2[5]);
      *(a1 + 24) = v10;
      if ((v10 + 2) > a3 || ((v11 = bswap32(*v10) >> 16, v11 == 2) ? (v12 = 6 * (bswap32(*(v10 + 1)) >> 16) + 4) : v11 != 1 ? (v12 = 0) : (v12 = 2 * (bswap32(*(v10 + 2)) >> 16) + 6), (v13 = &v10[v12], v13 < v10) || v13 > a3))
      {
        *(a1 + 24) = &OTL::GDEF::kNullClassDefTable;
      }
    }

    v14 = bswap32(a2[1]) >> 16;
    v15 = (a2 + 7);
    if (v14 >= 2 && v15 <= a3)
    {
      if (a2[6])
      {
        v17 = (a2 + __rev16(a2[6]));
        v18 = v17 + 2;
        v19 = &OTL::GDEF::kNullMarkGlyphSets;
        if ((v17 + 2) <= a3)
        {
          v20 = bswap32(v17[1]) >> 16;
          v21 = &v18[2 * v20];
          v22 = (v17 + 4) <= a3 ? (a3 - v18) >> 2 : 0;
          v23 = v21 <= a3 && v21 >= v18;
          if (v23 || v22 == v20)
          {
            v19 = v17;
          }
        }

        *(a1 + 32) = v19;
        v14 = bswap32(a2[1]) >> 16;
      }

      if (v14 >= 3 && (a2 + 9) <= a3)
      {
        v25 = *v15;
        if (v25)
        {
          ItemVariationStore::Initialize(v4, a2 + bswap32(v25), a3);
        }
      }
    }
  }

  return a1;
}

uint64_t ItemVariationStore::Initialize(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a2 + 8;
  if (a2 + 8 <= a3)
  {
    v4 = bswap32(*(a2 + 6)) >> 16;
    v5 = v3 + 4 * v4;
    v6 = v5 < v3 || v5 > a3;
    if (!v6 || (a2 + 12 <= a3 ? (v7 = (a3 - v3) >> 2) : (v7 = 0), v7 == v4))
    {
      v8 = *(a2 + 2);
      if (v8)
      {
        v9 = (a2 + bswap32(v8));
        if ((v9 + 2) <= a3)
        {
          v10 = &v9[3 * (bswap32(*v9) >> 16) * (bswap32(v9[1]) >> 16) + 2];
          if (v10 >= v9 && v10 <= a3)
          {
            *a1 = a2;
            a1[1] = a3;
            a1[2] = bswap32(v9[1]) >> 16;
            a1[3] = v9;
            a1[4] = bswap32(*(a2 + 6)) >> 16;
            a1[5] = v3;
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t OTL::GCommon::GCommon(uint64_t a1, int a2, uint64_t a3, CFDataRef theData, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v45[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1EF2589B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  if (!theData || (*(a1 + 32) = CFDataGetBytePtr(theData), (BytePtr = CFDataGetBytePtr(theData)) == 0))
  {
    *(a1 + 65) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
LABEL_36:
    *(a1 + 32) = 0;
    return a1;
  }

  v14 = &BytePtr[CFDataGetLength(theData)];
  *(a1 + 40) = v14;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v15 = *(a1 + 32);
  if ((v15 + 5) > v14 || bswap32(*v15) >> 16 > 1)
  {
    goto LABEL_36;
  }

  if (v15[1] && (v15 + 7) > v14)
  {
    goto LABEL_36;
  }

  if (!v15[3])
  {
    goto LABEL_11;
  }

  v17 = (v15 + __rev16(v15[3]));
  v18 = v17 + 1;
  if ((v17 + 1) > v14)
  {
    goto LABEL_11;
  }

  v33 = bswap32(*v17) >> 16;
  v34 = &v18[3 * v33];
  if (v34 < v18 || v34 > v14)
  {
    v36 = (v14 - v18) / 6;
    if ((v17 + 4) > v14)
    {
      v36 = 0;
    }

    if (v36 != v33)
    {
LABEL_11:
      v17 = 0;
    }
  }

  *(a1 + 56) = v17;
  if (!v15[4] || (v19 = (v15 + __rev16(v15[4])), v20 = v19 + 1, (v19 + 1) > v14))
  {
    *(a1 + 64) = 0;
    goto LABEL_15;
  }

  v37 = bswap32(*v19) >> 16;
  v38 = &v20[v37];
  v40 = v38 >= v20 && v38 <= v14;
  v41 = (v14 - v20) >> 1;
  if ((v19 + 2) <= v14)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  if (v40 || v42 == v37)
  {
    v43 = v19;
  }

  else
  {
    v43 = 0;
  }

  *(a1 + 64) = v43;
  if (!v17 || !v43)
  {
LABEL_15:
    *(a1 + 32) = 0;
    if (a2)
    {
      return a1;
    }

    goto LABEL_16;
  }

  OTL::GCommon::InitLangSysTable(a1, a3, a6, a7);
  if (a2)
  {
    return a1;
  }

LABEL_16:
  if (*(a1 + 80) == 1 && (*(a3 + 12) & 1) != 0)
  {
    v44 = 0;
    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v23 = *(a1 + 32);
    v45[0] = &unk_1EF258B90;
    v45[1] = &v44;
    v45[3] = v45;
    OTL::GCommon::IterateFeatureTables(v23, v21, v22, v45);
    std::__function::__value_func<BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::~__value_func[abi:fn200100](v45);
    if ((v44 & 1) == 0)
    {
      v24 = *(a1 + 56);
      if (*v24)
      {
        v25 = 0;
        LODWORD(v26) = __rev16(*v24);
        v27 = (v24 + 1);
        if (v26 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v26;
        }

        do
        {
          v28 = *v27;
          v27 = (v27 + 6);
          v29 = bswap32(v28);
          if (v29 == 1986359924 || v29 == 1987212338)
          {
            v25 = 1;
          }

          if (v29 == 1986359924 || v29 == 1987212338)
          {
            break;
          }

          --v26;
        }

        while (v26);
        if (v25)
        {
          OTL::GCommon::InitLangSysTable(a1, a3, 0, 0);
        }
      }
    }
  }

  return a1;
}

uint64_t ScriptTagForScriptCode(int a1)
{
  v16 = a1;
  v1 = 1652128365;
  switch(a1)
  {
    case -1:
      return 0;
    case 0:
    case 1:
    case 102:
    case 103:
    case 129:
    case 174:
      return 1145457748;
    case 2:
      return 1634885986;
    case 3:
      v7 = 3084;
      v8 = 1634885986;
      return v8 | v7;
    case 4:
      return 1650814567;
    case 5:
      return 1651470447;
    case 6:
      return 1667786098;
    case 7:
      return 1668247668;
    case 8:
      return 1668903532;
    case 9:
      return 1685287540;
    case 10:
      return 1684371041;
    case 11:
      return 1702127721;
    case 12:
      return 1734700914;
    case 13:
      return 1735357544;
    case 14:
      return 1735550315;
    case 15:
      return 1735748210;
    case 16:
      return 1735750261;
    case 17:
      return 1751215721;
    case 18:
      return 1751215719;
    case 19:
      return 1751474802;
    case 20:
    case 22:
    case 54:
      return 1801547361;
    case 21:
      return 1802396769;
    case 23:
      return 1802005874;
    case 24:
      return 1818324768;
    case 25:
      return 1818326126;
    case 26:
      return 1835825517;
    case 27:
      v10 = 1836016745;
      return (v10 + 2558);
    case 28:
      return 1836674418;
    case 29:
      return 1869046125;
    case 30:
      return 1769234796;
    case 31:
      return 1869773153;
    case 32:
      return 1920298610;
    case 33:
      return 1936289384;
    case 34:
    case 95:
    case 96:
    case 97:
      return 1937338979;
    case 35:
      return 1952542060;
    case 36:
      return 1952803957;
    case 37:
      return 1952997729;
    case 38:
      v4 = 1952997729;
      return v4 | 8u;
    case 39:
      return 1953063540;
    case 40:
      return 1667329651;
    case 41:
      return 2036932640;
    case 42:
      return 1952935015;
    case 43:
      v4 = 1751215719;
      return v4 | 8u;
    case 44:
      return 1651861604;
    case 45:
      return 1952540514;
    case 46:
      return 1651663209;
    case 47:
      return 1668313716;
    case 48:
      return 1818848610;
    case 49:
      v5 = 1818848610;
      return (v5 + 256);
    case 50:
      return 1869835617;
    case 51:
      v6 = 24951;
      return v6 | 0x73680000u;
    case 52:
      return 1952541797;
    case 53:
      return 1969709426;
    case 55:
      return 1651861353;
    case 56:
      return 1735156071;
    case 57:
      return 1802002802;
    case 58:
      return 1937337455;
    case 59:
      return 1952541813;
    case 60:
      return 1952869991;
    case 61:
      return 2020631919;
    case 62:
      return 1650551913;
    case 63:
      return 1650553963;
    case 65:
      return 1651663208;
    case 66:
      return 1667785069;
    case 71:
      return 1701280112;
    case 75:
      return 1752002151;
    case 76:
      return 1752526439;
    case 78:
      return 1784772193;
    case 79:
      return 1801546857;
    case 82:
      return 1818587235;
    case 83:
      return 1818848865;
    case 84:
      return 1835101796;
    case 86:
      return 1835364975;
    case 87:
      return 1852534560;
    case 88:
      return 1869769576;
    case 89:
      return 1885696621;
    case 90:
      return 1885888871;
    case 91:
      return 1885892216;
    case 99:
      return 1986095392;
    case 101:
      return 2020832632;
    case 104:
      return 1667330665;
    case 106:
      return 1818324577;
    case 107:
      return 1819894633;
    case 108:
      v5 = 1819894633;
      return (v5 + 256);
    case 109:
      return 1869374315;
    case 110:
      return 1919577703;
    case 111:
      return 1935766898;
    case 112:
      return 1936158327;
    case 113:
      return 1937075812;
    case 115:
      return 1836344681;
    case 116:
      return 1634889065;
    case 117:
      return 1635152756;
    case 118:
      return 1667328877;
    case 120:
      return 1802791017;
    case 121:
      return 1835101801;
    case 122:
      return 1885891689;
    case 123:
      return 1885891696;
    case 125:
      return 1886549097;
    case 126:
      return 1935764850;
    case 127:
      return 1952544372;
    case 128:
      return 1835103336;
    case 130:
      return 1650552181;
    case 131:
      return 1818850165;
    case 133:
      return 1935766114;
    case 134:
      return 1650553715;
    case 135:
      return 1685418092;
    case 136:
      return 1701601889;
    case 137:
      return 1735549294;
    case 140:
      v10 = 1835361382;
      return (v10 + 2558);
    case 141:
      return 1835364963;
    case 142:
      return 1851880034;
    case 143:
      return 1851941236;
    case 144:
      return 1885432941;
    case 145:
      v7 = 2560;
      v8 = 1936286820;
      return v8 | v7;
    case 146:
      return 2002874977;
    case 149:
      return 1836216175;
    case 150:
      return 1853057141;
    case 151:
      v6 = 29284;
      return v6 | 0x73680000u;
    case 152:
      return 1936683617;
    case 153:
      return 1952541554;
    case 154:
      return 1952542311;
    case 156:
      return 1751938423;
    case 157:
      return 1802006378;
    case 158:
      return 1953067624;
    case 159:
      return 1634166882;
    case 160:
      return 1835100266;
    case 161:
      return 1634234221;
    case 162:
      return 1751217266;
    case 163:
      return 1836016745;
    case 164:
      return 1836412020;
    case 165:
      return 1885435235;
    case 166:
      return 1936286820;
    case 167:
      return 1633971309;
    case 168:
      return 1651010419;
    case 169:
      return 1835102819;
    case 170:
      return 1852143457;
    case 171:
      return 1869834085;
    case 175:
      return 1735356013;
    case 176:
      v9 = 31087;
      return v9 | 0x736F0000u;
    case 177:
      return 2053205602;
    case 178:
      return 1685022578;
    case 179:
      return 1735356007;
    case 180:
      return 1835101025;
    case 181:
      return 1835361382;
    case 182:
      return 1919903847;
    case 183:
      v9 = 26468;
      return v9 | 0x736F0000u;
    case 184:
      v7 = 11;
      v8 = 1936680804;
      return v8 | v7;
    case 193:
      return 1668312430;
    case 194:
      return 1869965170;
    case 195:
      return 1953395553;
    case 196:
      return 1953461359;
    case 197:
      return 1986622568;
    case 198:
      return 1801549673;
    case 199:
      return 1851877229;
    case 201:
      return 1734439521;
    case 202:
      return 1735748456;
    case 203:
      return 1802658153;
    case 204:
      return 1869504879;
    case 205:
      v7 = 17;
      v8 = 1937075812;
      return v8 | v7;
    case 206:
      return 1953457266;
    case 207:
      return 1953854567;
    case 209:
      return v1;
    case 210:
      return 1836413795;
    default:
      os_unfair_lock_lock_with_options();
      v2 = qword_1ED567E18;
      if (qword_1ED567E18)
      {
        goto LABEL_8;
      }

      v2 = operator new(0x28uLL, MEMORY[0x1E69E5398]);
      if (v2)
      {
        *v2 = 0u;
        v2[1] = 0u;
        *(v2 + 8) = 1065353216;
        qword_1ED567E18 = v2;
LABEL_8:
        v3 = std::__hash_table<std::__hash_value_type<UScriptCode,unsigned int>,std::__unordered_map_hasher<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::hash<UScriptCode>,std::equal_to<UScriptCode>,true>,std::__unordered_map_equal<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::equal_to<UScriptCode>,std::hash<UScriptCode>,true>,std::allocator<std::__hash_value_type<UScriptCode,unsigned int>>>::find<UScriptCode>(v2, &v16);
        if (v3)
        {
          v1 = *(v3 + 5);
          goto LABEL_184;
        }
      }

      else
      {
        qword_1ED567E18 = 0;
      }

      ShortName = uscript_getShortName();
      if (ShortName && (v12 = ShortName, strlen(ShortName) > 3))
      {
        v1 = (v12[1] << 16) | (__tolower(*v12) << 24) | (v12[2] << 8) | v12[3];
        v13 = qword_1ED567E18;
        if (!qword_1ED567E18)
        {
          goto LABEL_184;
        }

        v14 = v16;
      }

      else
      {
        v1 = 1145457748;
        v13 = qword_1ED567E18;
        if (!qword_1ED567E18)
        {
          goto LABEL_184;
        }

        v14 = v16;
      }

      std::__hash_table<std::__hash_value_type<UScriptCode,unsigned int>,std::__unordered_map_hasher<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::hash<UScriptCode>,std::equal_to<UScriptCode>,true>,std::__unordered_map_equal<UScriptCode,std::__hash_value_type<UScriptCode,unsigned int>,std::equal_to<UScriptCode>,std::hash<UScriptCode>,true>,std::allocator<std::__hash_value_type<UScriptCode,unsigned int>>>::__emplace_unique_key_args<UScriptCode,std::pair<UScriptCode,unsigned int>>(v13, v14);
LABEL_184:
      os_unfair_lock_unlock(&_MergedGlobals_27);
      return v1;
  }
}

uint64_t ScriptAndLangSysForPreferredLanguage(void)
{
  {
    ScriptAndLangSysForPreferredLanguage(void)::sPreferredScriptAndLangSys = 0xFFFFFFFFLL;
  }

  os_unfair_lock_lock_with_options();
  LocaleChangedCount = GetLocaleChangedCount();
  if (ScriptAndLangSysForPreferredLanguage(void)::sLocaleChangedCount != LocaleChangedCount)
  {
    ScriptAndLangSysForPreferredLanguage(void)::sLocaleChangedCount = LocaleChangedCount;
    CopyPreferredLanguage(&v3);
    ScriptAndLangSysForPreferredLanguage(void)::sPreferredScriptAndLangSys = ScriptAndLangSysFromCanonicalLanguage(atomic_load_explicit(&v3, memory_order_acquire));
  }

  v1 = ScriptAndLangSysForPreferredLanguage(void)::sPreferredScriptAndLangSys;
  os_unfair_lock_unlock(&ScriptAndLangSysForPreferredLanguage(void)::sLock);
  return v1;
}

void OTL::GCommon::InitLangSysTable(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  while (1)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = __rev16(*(v8 + 4));
    v10 = (v8 + v9);
    v11 = (v8 + v9 + 2);
    if (!*(v8 + 4) || v11 > v7)
    {
      break;
    }

    v13 = __rev16(*v10);
    v14 = v11 + 6 * v13;
    if (v14 < v11 || v14 > v7)
    {
      if ((v10 + 4) <= v7)
      {
        v16 = (v7 - v11) / 6;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 == v13;
      if (!*v10 || !v17)
      {
        return;
      }
    }

    else if (!*v10)
    {
      return;
    }

    if (a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = 1818326126;
    }

    v19 = v18 & 0xFFFFFF00 | 0x20;
    if (v19 > 1835822367)
    {
      if (v19 <= 1869773087)
      {
        if (v19 == 1835822368)
        {
          goto LABEL_57;
        }

        if (v19 == 1836674336)
        {
          goto LABEL_36;
        }
      }

      else
      {
        switch(v19)
        {
          case 1869773088:
            goto LABEL_50;
          case 1952803872:
            goto LABEL_49;
          case 1953328160:
            goto LABEL_30;
        }
      }
    }

    else if (v19 <= 1735029279)
    {
      v21 = 1650814567;
      v20 = 1651402547;
      if (v19 == 1651402528)
      {
        goto LABEL_58;
      }

      if (v19 == 1684370976)
      {
        goto LABEL_33;
      }
    }

    else
    {
      switch(v19)
      {
        case 1735029280:
          goto LABEL_43;
        case 1735750176:
          goto LABEL_44;
        case 1802396704:
          goto LABEL_25;
      }
    }

    if (a3 > 1835825516)
    {
      if (a3 <= 1869773152)
      {
        if (a3 == 1835825517)
        {
LABEL_57:
          v20 = 1835822387;
          v21 = 1835825517;
          goto LABEL_58;
        }

        if (a3 != 1836674418)
        {
LABEL_56:
          v21 = v18;
          v20 = v18;
          goto LABEL_58;
        }

LABEL_36:
        v20 = 1836674354;
        v21 = 1836674418;
        goto LABEL_58;
      }

      if (a3 == 1869773153)
      {
LABEL_50:
        v20 = 1869773107;
        v21 = 1869773153;
        goto LABEL_58;
      }

      if (a3 != 1952542060)
      {
        if (a3 != 1952803957)
        {
          goto LABEL_56;
        }

LABEL_49:
        v20 = 1952803891;
        v21 = 1952803957;
        goto LABEL_58;
      }

LABEL_30:
      v20 = 1953328179;
      v21 = 1952542060;
      goto LABEL_58;
    }

    if (a3 <= 1735748209)
    {
      if (a3 == 1650814567)
      {
        v21 = a3;
        v20 = 1651402547;
        goto LABEL_58;
      }

      if (a3 != 1684371041)
      {
        goto LABEL_56;
      }

LABEL_33:
      v20 = 1684370995;
      v21 = 1684371041;
      goto LABEL_58;
    }

    if (a3 == 1735748210)
    {
LABEL_43:
      v20 = 1735029299;
      v21 = 1735748210;
      goto LABEL_58;
    }

    if (a3 == 1735750261)
    {
LABEL_44:
      v20 = 1735750195;
      v21 = 1735750261;
      goto LABEL_58;
    }

    if (a3 != 1802396769)
    {
      goto LABEL_56;
    }

LABEL_25:
    v20 = 1802396723;
    v21 = 1802396769;
LABEL_58:
    v22 = 0;
    v23 = (v8 + v9 + 6);
    v24 = 1;
    while (1)
    {
      v25 = (v10 + (bswap32(*v23) >> 16));
      if ((v25 + 2) > v7)
      {
        break;
      }

      v26 = *(v23 - 1);
      v27 = bswap32(v26);
      if (v26 == 1414284868 && v22 == 0)
      {
        *(a1 + 72) = 1145457748;
        goto LABEL_71;
      }

      if ((v27 - 58) >= 0xFFFFFFF8)
      {
        v29 = v27 & 0xFFFFFF00 | 0x20;
        if (v29 > 1835822367)
        {
          if (v29 <= 1869773087)
          {
            v30 = 1835825517;
            if (v29 != 1835822368)
            {
              v30 = 1836674418;
              v31 = 1836674336;
              goto LABEL_80;
            }
          }

          else
          {
            v30 = 1869773153;
            if (v29 != 1869773088)
            {
              v30 = 1952803957;
              if (v29 != 1952803872)
              {
                v30 = 1952542060;
                v31 = 1953328160;
                goto LABEL_80;
              }
            }
          }
        }

        else if (v29 <= 1735029279)
        {
          v30 = 1650814567;
          if (v29 != 1651402528)
          {
            v30 = 1684371041;
            v31 = 1684370976;
            goto LABEL_80;
          }
        }

        else
        {
          v30 = 1735748210;
          if (v29 != 1735029280)
          {
            if (v29 == 1735750176)
            {
              v30 = 1735750261;
            }

            else
            {
              v30 = 1802396769;
              v31 = 1802396704;
LABEL_80:
              if (v29 != v31)
              {
                v30 = v27;
              }
            }
          }
        }

        if (v30 == v21)
        {
          *(a1 + 72) = v21;
          *(a1 + 76) = v27;
          goto LABEL_71;
        }
      }

      if (v27 != v21 || *(a1 + 76))
      {
        goto LABEL_86;
      }

      *(a1 + 72) = v21;
LABEL_71:
      v22 = v25;
LABEL_86:
      if (v27 < v20)
      {
        v23 += 3;
        v41 = v24++ >= v13;
        if (!v41)
        {
          continue;
        }
      }

      break;
    }

    if (v22)
    {
      goto LABEL_98;
    }

    v32 = a2;
    v33 = *(a2 + 408);
    if ((*(v33 + 46) & 0x400) == 0)
    {
      TBaseFont::DetermineFontFlags(v33, 0x400u);
    }

    v34 = *(v33 + 45);
    a2 = v32;
    if ((v34 & 0x400) == 0)
    {
      return;
    }

    v22 = (v10 + (bswap32(v10[3]) >> 16));
    v7 = *(a1 + 40);
    if ((v22 + 2) > v7)
    {
      return;
    }

    *(a1 + 72) = bswap32(*v11);
    v8 = *(a1 + 32);
LABEL_98:
    if (*v22)
    {
      v35 = v22 + __rev16(*v22);
      v36 = (v35 + 6);
      if ((v35 + 4) < v8 || v36 > v7)
      {
        return;
      }

      v38 = bswap32(*(v35 + 2)) >> 16;
      v39 = v36 + 2 * v38;
      v40 = (v35 + 8) <= v7 ? (v7 - v36) >> 1 : 0;
      v41 = v39 <= v7 && v39 >= v36;
      if (!v41 && v40 != v38)
      {
        return;
      }

      if (!a4)
      {
LABEL_156:
        *(a1 + 48) = v35;
        *(a1 + 80) = 1;
        return;
      }

      *(a1 + 48) = v35;
    }

    v43 = v22 + 2;
    if (v8 > (v22 + 2) || ((LODWORD(v44) = __rev16(v22[1]), v45 = &v43[3 * v44], v45 >= v43) ? (v46 = v45 > v7) : (v46 = 1), v46))
    {
      LODWORD(v44) = 0;
      if (v8 <= v43 && (v22 + 5) <= v7)
      {
        v44 = (v7 - v43) / 6;
      }

      if (!(bswap32(v44) >> 16))
      {
        goto LABEL_151;
      }

LABEL_127:
      if ((v44 & 0xFFFE) != 0)
      {
        v47 = v44;
      }

      else
      {
        v47 = 1;
      }

      v48 = v22 + 4;
      while (1)
      {
        if (*v48)
        {
          v35 = v22 + __rev16(*v48);
          v49 = (v35 + 6);
          if ((v35 + 4) < v8 || v49 > v7)
          {
            return;
          }

          v51 = bswap32(*(v35 + 2)) >> 16;
          v52 = v49 + 2 * v51;
          v53 = (v35 + 8) <= v7 ? (v7 - v49) >> 1 : 0;
          v54 = v52 <= v7 && v52 >= v49;
          if (!v54 && v53 != v51)
          {
            return;
          }

          v56 = *(v48 - 1);
          if (bswap32(v56) == a4)
          {
            goto LABEL_156;
          }

          if (!v56)
          {
            *(a1 + 48) = v35;
          }
        }

        v48 += 3;
        if (!--v47)
        {
          goto LABEL_151;
        }
      }
    }

    if (v22[1])
    {
      goto LABEL_127;
    }

LABEL_151:
    if (a4)
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        a4 = FallbackForLangSysTag(a4);
        a3 = v21;
        if (a4)
        {
          continue;
        }
      }
    }

    return;
  }
}

uint64_t TOpenTypeMorph::ShapeGlyphs(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = &v100;
  v116 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v113[0] = &unk_1EF258CD0;
  v113[3] = v113;
  TRunGlue::GlyphRangeByTrimming(v7, v113);
  v9 = v8;
  std::__function::__value_func<BOOL ()(TRunGlue::TGlyph)>::~__value_func[abi:fn200100](v113);
  if (v9 < 1)
  {
    return 1;
  }

  v10 = &v87;
  v73 = *(*v5 + 104);
  *(*v5 + 104) = v5 + 8;
  memset(v111, 170, sizeof(v111));
  v109 = 0;
  v110 = 0;
  v108 = 0;
  v112 = v111;
  v84 = 0u;
  v85 = 0u;
  memset(v83, 0, sizeof(v83));
  v80 = 0;
  v81[0] = 0xAAAAAAAAAAAAAAAALL;
  __p = 0;
  v79 = 0;
  v81[1] = v81;
  v82 = 0;
  v77 = 0;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v96 = v11;
  v95 = v11;
  v94 = v11;
  v93 = v11;
  v92 = v11;
  v91 = v11;
  v90 = v11;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  *&v97 = 0xAAAAAAAAAAAAAAAALL;
  *(&v97 + 1) = &v90;
  LODWORD(v105) = 1920365166;
  OTL::FeatureBuffer::FeatureBuffer(__b, &v105, 1);
  SingleSubstLookups = OTL::GSUB::GetSingleSubstLookups(v5 + 81, __b, &v87);
  *&v100 = __b;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v100);
  if (SingleSubstLookups)
  {
    memset(&__b[24], 170, 0xC30uLL);
    memset(__b, 0, 24);
    v115 = &__b[24];
    v13 = TRunGlue::length(*v5);
    v14 = v87;
    v15 = v88;
    if (v87 != v88)
    {
      v16 = v13;
      do
      {
        v17 = *v14;
        v14 = (v14 + 4);
        v6 = v6 & 0xFFFFFFFF00000000 | v17;
        OTL::GlyphLookups::SetLookupInRange<false>(__b, v6, 0, v16);
      }

      while (v14 != v15);
    }

    OTL::GSUB::ApplyLookups((v5 + 162), *v5, v5[4], __b, v4, 0, 0);
    *&v100 = __b;
    std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v100);
  }

  *__b = &v87;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](__b);
  v100 = xmmword_184773D20;
  v105 = xmmword_184773D30;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v96 = v18;
  v95 = v18;
  v94 = v18;
  v93 = v18;
  v92 = v18;
  v91 = v18;
  v90 = v18;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  if (v5[4] <= 0)
  {
    v19 = &v105;
  }

  else
  {
    v19 = &v100;
  }

  *&v97 = 0xAAAAAAAAAAAAAAAALL;
  *(&v97 + 1) = &v90;
  OTL::FeatureBuffer::FeatureBuffer(__b, v19, 4);
  Lookups = OTL::GCommon::GetLookups((v5 + 162), __b, &v87, 0);
  v86 = __b;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v86);
  if (Lookups)
  {
    v21 = v87;
    v22 = v88;
    while (v21 != v22)
    {
      v23 = *v21;
      v21 = (v21 + 4);
      Lookups = Lookups & 0xFFFFFFFF00000000 | v23;
      OTL::GlyphLookups::SetLookupInRange<false>(&v108, Lookups, 0, -1);
    }
  }

  v24 = v5[6];
  if (*(v5 + 21))
  {
    v25 = &v100;
    switch(v24)
    {
      case 2:
        goto LABEL_21;
      case 3:
      case 6:
      case 8:
      case 12:
      case 14:
      case 19:
      case 25:
      case 29:
      case 32:
        goto LABEL_75;
      case 4:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          BengaliShapingEngine::BengaliShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 10:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          DevanagariShapingEngine::DevanagariShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 15:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          GujaratiShapingEngine::GujaratiShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 16:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          GurmukhiShapingEngine::GurmukhiShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 17:
      case 54:
        v26 = v5[180];
        if (v26 != ScriptTagForScriptCode(v24))
        {
          goto LABEL_75;
        }

        *__b = 1667329140;
        v27 = __b;
        goto LABEL_74;
      case 18:
        if (!*(v5 + 69))
        {
          goto LABEL_75;
        }

        v34 = *v5;
        *__b = *(v5 + 69);
        *&__b[8] = v34;
        if (!HangulShapingEngine::CanShape(__b))
        {
          goto LABEL_75;
        }

        if ((*(*&__b[8] + 24) & 0x80000000) != 0)
        {
          v35 = 0;
        }

        else
        {
          v35 = HangulShapingEngine::SetFeatures(__b, (v5 + 162), &v108);
        }

        *v4 |= v35;
        LODWORD(v86) = 1667329140;
        v27 = &v86;
LABEL_74:
        std::vector<unsigned int,TInlineBufferAllocator<unsigned int,1ul>>::push_back[abi:fn200100](&__p, v27);
        goto LABEL_75;
      case 21:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          KannadaShapingEngine::KannadaShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 23:
        *&v37 = 0xAAAAAAAAAAAAAAAALL;
        *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__b[464] = v37;
        *&__b[480] = v37;
        *&__b[432] = v37;
        *&__b[448] = v37;
        *&__b[400] = v37;
        *&__b[416] = v37;
        *&__b[368] = v37;
        *&__b[384] = v37;
        *&__b[336] = v37;
        *&__b[352] = v37;
        *&__b[304] = v37;
        *&__b[320] = v37;
        *&__b[272] = v37;
        *&__b[288] = v37;
        *&__b[240] = v37;
        *&__b[256] = v37;
        *&__b[208] = v37;
        *&__b[224] = v37;
        *&__b[176] = v37;
        *&__b[192] = v37;
        *&__b[144] = v37;
        *&__b[160] = v37;
        *&__b[112] = v37;
        *&__b[128] = v37;
        *&__b[80] = v37;
        *&__b[96] = v37;
        *&__b[48] = v37;
        *&__b[64] = v37;
        *&__b[16] = v37;
        *&__b[32] = v37;
        *__b = v37;
        OpenTypeShapingEngine::OpenTypeShapingEngine(__b, *(v5 + 69), *v5);
        *__b = &unk_1EF25BE38;
        *v4 |= OpenTypeShapingEngine::ApplyScriptShaping(__b, v83);
        TOpenTypeMorph::SetLookups(v5, v83, &v108);
        v38 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v109 - v108) >> 3));
        if (v109 == v108)
        {
          v39 = 0;
        }

        else
        {
          v39 = v38;
        }

        std::__introsort<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,false>(v108, v109, v39, 1);
        OTL::GSUB::ApplyLookups((v5 + 162), *v5, v5[4], &v108, v4, 0, 0);
        v41 = v108;
        v40 = v109;
        if (v109 != v108)
        {
          do
          {
            v42 = v40 - 104;
            v86 = (v40 - 96);
            std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v86);
            v40 = v42;
          }

          while (v42 != v41);
        }

        v109 = v41;
        KhmerShapingEngine::GetPresentationFeatures(__b, v83, &v82);
        LODWORD(v86) = 1818847073;
        std::vector<unsigned int,TInlineBufferAllocator<unsigned int,1ul>>::push_back[abi:fn200100](&__p, &v86);
        goto LABEL_56;
      case 24:
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__b[464] = v32;
        *&__b[480] = v32;
        *&__b[432] = v32;
        *&__b[448] = v32;
        *&__b[400] = v32;
        *&__b[416] = v32;
        *&__b[368] = v32;
        *&__b[384] = v32;
        *&__b[336] = v32;
        *&__b[352] = v32;
        *&__b[304] = v32;
        *&__b[320] = v32;
        *&__b[272] = v32;
        *&__b[288] = v32;
        *&__b[240] = v32;
        *&__b[256] = v32;
        *&__b[208] = v32;
        *&__b[224] = v32;
        *&__b[176] = v32;
        *&__b[192] = v32;
        *&__b[144] = v32;
        *&__b[160] = v32;
        *&__b[112] = v32;
        *&__b[128] = v32;
        *&__b[80] = v32;
        *&__b[96] = v32;
        *&__b[48] = v32;
        *&__b[64] = v32;
        *&__b[16] = v32;
        *&__b[32] = v32;
        *__b = v32;
        OpenTypeShapingEngine::OpenTypeShapingEngine(__b, *(v5 + 69), *v5);
        *__b = &unk_1EF25BE08;
        *v4 |= OpenTypeShapingEngine::ApplyScriptShaping(__b, v83);
        OpenTypeShapingEngine::~OpenTypeShapingEngine(__b);
        goto LABEL_67;
      case 26:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          MalayalamShapingEngine::MalayalamShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 28:
        if (*(v5 + 69) && v5[181])
        {
          v36 = *v5;
          *__b = *(v5 + 69);
          *&__b[8] = v36;
          *v4 |= MyanmarShapingEngine::ApplyScriptShaping(__b, (v5 + 162), &v108);
          strcpy(v83, "serpsvbaswlbstsp");
          BYTE1(v83[4]) = 0;
          HIWORD(v83[4]) = 0;
          goto LABEL_75;
        }

        strcpy(v83, "gilcagil");
        BYTE1(v83[2]) = 0;
        HIWORD(v83[2]) = 0;
        v31 = TOpenTypeMorph::ApplyShapingEngine<TInlineVector<unsigned int,1ul>>(OTL::GlyphLookups &,unsigned int *,BOOL (**),TInlineVector<unsigned int,1ul> &,SyncState &,BOOL *)::{lambda#2}::__invoke;
        break;
      case 31:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          OriyaShapingEngine::OriyaShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 34:
        goto LABEL_20;
      case 35:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          TamilShapingEngine::TamilShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 36:
        if ((*(v5 + 724) - 58) <= 0xFFFFFFF8 && v5[4] >= 1)
        {
          memset(__b, 170, 0x380uLL);
          TeluguShapingEngine::TeluguShapingEngine(__b, *(v5 + 69), *v5, (v5 + 162));
        }

        goto LABEL_67;
      case 38:
        *&v33 = 0xAAAAAAAAAAAAAAAALL;
        *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__b[464] = v33;
        *&__b[480] = v33;
        *&__b[432] = v33;
        *&__b[448] = v33;
        *&__b[400] = v33;
        *&__b[416] = v33;
        *&__b[368] = v33;
        *&__b[384] = v33;
        *&__b[336] = v33;
        *&__b[352] = v33;
        *&__b[304] = v33;
        *&__b[320] = v33;
        *&__b[272] = v33;
        *&__b[288] = v33;
        *&__b[240] = v33;
        *&__b[256] = v33;
        *&__b[208] = v33;
        *&__b[224] = v33;
        *&__b[176] = v33;
        *&__b[192] = v33;
        *&__b[144] = v33;
        *&__b[160] = v33;
        *&__b[112] = v33;
        *&__b[128] = v33;
        *&__b[80] = v33;
        *&__b[96] = v33;
        *&__b[48] = v33;
        *&__b[64] = v33;
        *&__b[16] = v33;
        *&__b[32] = v33;
        *__b = v33;
        OpenTypeShapingEngine::OpenTypeShapingEngine(__b, *(v5 + 69), *v5);
        *__b = &unk_1EF25BDB8;
        *v4 |= OpenTypeShapingEngine::ApplyScriptShaping(__b, v83);
LABEL_56:
        OpenTypeShapingEngine::~OpenTypeShapingEngine(__b);
        goto LABEL_75;
      default:
        if (v5[180] != 1145457748)
        {
LABEL_67:
          v43 = *(v5 + 69);
          if (v43)
          {
            v44 = *v5;
            v45 = ScriptTagForScriptCode(v5[6]);
            *__b = v43;
            *&__b[8] = v44;
            UniversalClassTable::ClassTableForScript(v45, &v86);
            *&__b[16] = v86;
            if (v86)
            {
              *v4 |= UniversalShapingEngine::ApplyScriptShaping(__b, (v5 + 162), &v108);
              strcpy(v83, "svbaswlbnlahserpstsp");
              BYTE1(v83[5]) = 0;
              HIWORD(v83[5]) = 0;
              v46 = *&__b[16];
              *&__b[16] = 0;
              if (v46)
              {
                MEMORY[0x1865F22D0](v46, 0x1050C409ECFBC67);
              }
            }
          }
        }

        goto LABEL_75;
    }
  }

  else
  {
    v25 = &v100;
    if (v24 != 2)
    {
      if (v24 == 34)
      {
LABEL_20:
        *&__b[24] = 0xAAAAAAAAAAAAAA00;
        v29 = *v5;
        *&__b[8] = *(v5 + 69);
        *&__b[16] = v29;
        *__b = &unk_1EF25B9C8;
        *v4 |= JoiningScriptShapingEngine::ApplyScriptShaping(__b, (v5 + 162), &v108, &v77);
      }

      goto LABEL_75;
    }

LABEL_21:
    *&__b[24] = 0xAAAAAAAAAAAAAA00;
    v30 = *v5;
    *&__b[8] = *(v5 + 69);
    *&__b[16] = v30;
    *__b = &unk_1EF259828;
    *v4 |= ArabicShapingEngine::ApplyScriptShaping(__b, (v5 + 162), &v108, v83, &v77);
    v31 = TOpenTypeMorph::ApplyShapingEngine<TInlineVector<unsigned int,1ul>>(OTL::GlyphLookups &,unsigned int *,BOOL (**),TInlineVector<unsigned int,1ul> &,SyncState &,BOOL *)::{lambda#1}::__invoke;
  }

  v82 = v31;
LABEL_75:
  *__b = &v87;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](__b);
  if (*(v5 + 87))
  {
    *&v105 = v5;
    *(&v105 + 1) = v83;
    p_p = &__p;
    v107 = &v82;
    v75 = *(*v5 + 16);
    if (v75 > 1)
    {
      v74 = *(*v5 + 8);
      v103 = 0xAAAAAAAAAAAAAAAALL;
      *&v53 = 0xAAAAAAAAAAAAAAAALL;
      *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v102[6] = v53;
      v102[5] = v53;
      v102[4] = v53;
      v102[3] = v53;
      v102[2] = v53;
      v102[1] = v53;
      v102[0] = v53;
      v101 = 0;
      v100 = 0uLL;
      v104 = v102;
      v98 = v53;
      v97 = v53;
      v96 = v53;
      v95 = v53;
      v94 = v53;
      v93 = v53;
      v92 = v53;
      v91 = v53;
      v90 = v53;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      v99 = &v90;
      if (v5[6] != 2 && OTL::GCommon::GetFeatures((v5 + 162), &v87))
      {
        *&v54 = 0xAAAAAAAAAAAAAAAALL;
        *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__b[248] = v54;
        *&__b[232] = v54;
        *&__b[216] = v54;
        *&__b[200] = v54;
        *&__b[184] = v54;
        *&__b[168] = v54;
        *&__b[152] = v54;
        *&__b[136] = v54;
        *&__b[120] = v54;
        *&__b[104] = v54;
        *&__b[88] = v54;
        *&__b[72] = v54;
        *&__b[56] = v54;
        *&__b[40] = v54;
        *&__b[24] = v54;
        memset(__b, 0, 24);
        *&__b[264] = &__b[24];
        GetOTFeaturesForOptionalLigatures(&v87, __b);
        OTL::GCommon::GetLookups((v5 + 162), __b, &v100, 0);
        v86 = __b;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v86);
      }

      v76 = v5;
      v55 = 0;
      v56 = 0;
      v57 = v100;
      do
      {
        v58 = **v76;
        v59 = TRunGlue::PhysicalRunIndexFromLogical(*v76, v56 + v74);
        v60 = *(v58 + 16);
        if (v59 >= (*(v58 + 24) - v60) >> 3)
        {
          __break(1u);
        }

        v61 = *(*(v60 + 8 * v59) + 48);
        v62 = *(atomic_load_explicit((v61 + 56), memory_order_acquire) + 40);
        v63 = *(v61 + 208);
        *&__b[136] = 0xAAAAAAAAAAAAAAAALL;
        *&v64 = 0xAAAAAAAAAAAAAAAALL;
        *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__b[104] = v64;
        *&__b[120] = v64;
        *&__b[72] = v64;
        *&__b[88] = v64;
        *&__b[40] = v64;
        *&__b[56] = v64;
        *&__b[24] = v64;
        memset(__b, 0, 24);
        *&__b[144] = &__b[24];
        if (TOpenTypeMorph::ShapeGlyphs(SyncState &)::$_2::operator()(&v105, v62 + 176, __b))
        {
          v65 = *__b;
          v66 = *&__b[8];
          while (v65 != v66)
          {
            v67 = *v65;
            v68 = v57;
            if (v57 != *(&v57 + 1))
            {
              v68 = v57;
              while (*v68 != v67)
              {
                v68 += 2;
                if (v68 == *(&v57 + 1))
                {
                  goto LABEL_98;
                }
              }
            }

            if (v68 == *(&v57 + 1))
            {
LABEL_98:
              v25 = v25 & 0xFFFFFFFF00000000 | v67;
              OTL::GlyphLookups::SetLookupInRange<true>(&v108, v25, v55, v63);
            }

            else
            {
              v10 = v10 & 0xFFFFFFFF00000000 | v67;
              OTL::GlyphLookups::SetLookupInRange<false>(&v108, v10, v55, v63);
            }

            ++v65;
          }
        }

        v55 += v63;
        v86 = __b;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v86);
        ++v56;
      }

      while (v56 != v75);
      *__b = &v87;
      std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__destroy_vector::operator()[abi:fn200100](__b);
      *__b = &v100;
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](__b);
      v5 = v76;
    }

    else
    {
      *&v47 = 0xAAAAAAAAAAAAAAAALL;
      *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&__b[120] = v47;
      *&__b[104] = v47;
      *&__b[88] = v47;
      *&__b[72] = v47;
      *&__b[56] = v47;
      *&__b[40] = v47;
      *&__b[24] = v47;
      memset(__b, 0, 24);
      *&__b[136] = 0xAAAAAAAAAAAAAAAALL;
      *&__b[144] = &__b[24];
      if (TOpenTypeMorph::ShapeGlyphs(SyncState &)::$_2::operator()(&v105, *(v5 + 1) + 176, __b))
      {
        v48 = TRunGlue::length(*v5);
        v49 = *__b;
        v50 = *&__b[8];
        if (*__b != *&__b[8])
        {
          v51 = v48;
          do
          {
            v52 = *v49++;
            v25 = v25 & 0xFFFFFFFF00000000 | v52;
            OTL::GlyphLookups::SetLookupInRange<false>(&v108, v25, 0, v51);
          }

          while (v49 != v50);
        }
      }

      v87 = __b;
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v87);
    }

    if (v5[6] != 2)
    {
      v69 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v109 - v108) >> 3));
      if (v109 == v108)
      {
        v70 = 0;
      }

      else
      {
        v70 = v69;
      }

      std::__introsort<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,false>(v108, v109, v70, 1);
    }

    v28 = OTL::GSUB::ApplyLookups((v5 + 162), *v5, v5[4], &v108, v4, 0, 0);
    if (v77)
    {
      JoiningScriptShapingEngine::FinishStretching(*(v5 + 69), *v5, v71);
    }
  }

  else
  {
    v28 = 1;
  }

  *(*v5 + 104) = v73;
  if (__p)
  {
    v79 = __p;
    if (v81 > __p || v81 + 4 <= __p)
    {
      operator delete(__p);
    }
  }

  *__b = &v108;
  std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](__b);
  return v28;
}

uint64_t TRunGlue::SetCharRange(uint64_t this, CFRange a2)
{
  if (*(this + 40) != a2.location || *(this + 48) != a2.length)
  {
    v3 = *(this + 152);
    v4 = *(this + 24);
    v5 = v3;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = *(this + 160) - 1;
    }

    v6 = *(this + 32);
    if ((v5 & 0x8000000000000000) == 0 && v6 > v5)
    {
      while (*(*(this + 416) + 8 * v5) < a2.location)
      {
        v5 += v4;
        if (v5 < 0 || v6 <= v5)
        {
          goto LABEL_14;
        }
      }

      *(this + 152) = v5;
      v3 = v5;
      v5 += v4;
    }

LABEL_14:
    if ((v5 & 0x8000000000000000) == 0 && v6 > v5)
    {
      do
      {
        if (*(*(this + 416) + 8 * v5) >= a2.location + a2.length)
        {
          break;
        }

        v5 += v4;
        if (v5 < 0)
        {
          break;
        }
      }

      while (v6 > v5);
    }

    *(this + 160) = v5;
    if ((v4 & 0x80000000) != 0)
    {
      *(this + 152) = v5 + 1;
      *(this + 160) = v3 + 1;
    }

    *(this + 40) = a2;
  }

  return this;
}

uint64_t *std::unordered_map<unsigned int,anonymous namespace::FeatureMapEntry const*>::find[abi:fn200100](uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TRunGlue::TGlyph::IsIgnorable(TRunGlue::TGlyph *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (*(*this + 144))
  {
    TRunGlue::FocusOnIndex(*this, v2);
    v4 = (*(v3 + 168) + 2 * (v2 - *(v3 + 152)));
  }

  else
  {
    v4 = (*(v3 + 168) + 2 * *(v3 + 152) + 2 * v2);
  }

  if ((*v4 + 1) < 2u)
  {
    return 1;
  }

  v6 = *this;
  v7 = *(this + 1);

  return TRunGlue::IsDeleted(v6, v7);
}

uint64_t std::function<BOOL ()(TRunGlue::TGlyph)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, v6);
  }

  v5 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__value_func<BOOL ()(TRunGlue::TGlyph)>::~__value_func[abi:fn200100](v5);
}

uint64_t std::__function::__value_func<BOOL ()(TRunGlue::TGlyph)>::~__value_func[abi:fn200100](uint64_t a1)
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

void *TRunGlue::IsDeleted(void *this, int64_t a2)
{
  v3 = this;
  if (this[18])
  {
    TRunGlue::FocusOnIndex(this, a2);
    v4 = *(v3[51] + 4 * (a2 - v3[19]));
LABEL_5:
    v7 = v4 & 0x20;
    return (v7 != 0);
  }

  v5 = this[19] + a2;
  v6 = this[51];
  if (v6)
  {
    v4 = *(v6 + 4 * v5);
    goto LABEL_5;
  }

  v8 = v5 + 7;
  if (v5 >= 0)
  {
    v8 = this[19] + a2;
  }

  v9 = this[27];
  if (this[28] - v9 > (v8 >> 3))
  {
    v7 = (1 << (v5 & 7)) & *(v9 + (v8 >> 3));
    return (v7 != 0);
  }

  __break(1u);
  return this;
}

void *OTL::FeatureBuffer::FeatureBuffer(void *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = a1 + 3;
  a1[2] = 0;
  a1[33] = a1 + 3;
  if (a3)
  {
    v6 = 0;
    v7 = (a1 + 33);
    v8 = 4 * a3;
    do
    {
      v9 = a1[2];
      if (v6 >= v9)
      {
        v10 = *a1;
        v11 = v6 - *a1;
        v12 = (v11 >> 3) + 1;
        if (v12 >> 61)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v13 = v9 - v10;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        v25 = v4;
        if (v14)
        {
          v15 = *v7;
          v16 = *v7 + 8 * v14;
          if (v16 > v7)
          {
            if (!(v14 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          *v7 = v16;
        }

        else
        {
          v15 = 0;
        }

        v23 = 0u;
        v24 = 0u;
        v17 = &v15[8 * (v11 >> 3)];
        v18 = &v15[8 * v14];
        *v17 = *a2;
        *(v17 + 1) = 1;
        v6 = v17 + 8;
        v19 = v15;
        memcpy(v15, v10, v11);
        v20 = *a1;
        *a1 = v19;
        a1[1] = v6;
        v21 = a1[2];
        a1[2] = v18;
        *&v24 = v20;
        *(&v24 + 1) = v21;
        *&v23 = v20;
        *(&v23 + 1) = v20;
        std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v23);
      }

      else
      {
        *v6 = *a2;
        v6[1] = 1;
        v6 += 2;
      }

      a1[1] = v6;
      ++a2;
      v8 -= 4;
    }

    while (v8);
  }

  return a1;
}

uint64_t TRunGlue::GlyphRangeByTrimming(TRunGlue *a1, uint64_t a2)
{
  v4 = TRunGlue::length(a1);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  while (std::function<BOOL ()(TRunGlue::TGlyph)>::operator()(a2, a1, v5))
  {
    if (v4 == ++v5)
    {
      return v4;
    }
  }

  v6 = v4 - v5;
  if (v6 >= 1)
  {
    v7 = v5 + v6;
    do
    {
      if (!std::function<BOOL ()(TRunGlue::TGlyph)>::operator()(a2, a1, --v7))
      {
        break;
      }

      --v6;
    }

    while (v7 > v5);
  }

  return v5;
}

__int128 *TFont::GetFeatureTableSubstitutions(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 352;
  explicit = atomic_load_explicit((a1 + 352 + 8 * a2), memory_order_acquire);
  if (explicit)
  {
    if (explicit != -1)
    {
      return explicit;
    }
  }

  else
  {
    v5 = a2;
    if (a2)
    {
      v6 = 1196445523;
    }

    else
    {
      v6 = 1196643650;
    }

    CommonTable = TBaseFont::GetCommonTable(*(a1 + 408), v6, 0);
    if (CommonTable)
    {
      v8 = CommonTable;
      BytePtr = CFDataGetBytePtr(CommonTable);
      if (BytePtr)
      {
        v10 = BytePtr;
        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15 = v11;
        v16 = v11;
        v17 = 0xAAAAAAAAFFFFFFFFLL;
        v12 = CFDataGetBytePtr(v8);
        if (v12)
        {
          v13 = &v12[CFDataGetLength(v8)];
        }

        else
        {
          v13 = 0;
        }

        OTL::GCommon::FeatureTableSubstitutionsForFont(v10, v13, a1, &v15);
        if (*(&v16 + 1))
        {
          operator new();
        }

        std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(&v15);
      }
    }

    atomic_store(0xFFFFFFFFFFFFFFFFLL, (v2 + 8 * v5));
  }

  EmptyFeatureTableSubstitutions();
  return &EmptyFeatureTableSubstitutions(void)::kNoSubstitutions;
}

uint64_t std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 240);
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

uint64_t OTL::GCommon::GetLookups(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a3;
  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v38 = bswap32(**(a1 + 64)) >> 16;
  v9 = bswap32(*v8) >> 16;
  v10 = *(v4 + 4);
  v36[0] = TFont::GetFeatureTableSubstitutions(*(a1 + 16), *(a1 + 8));
  v36[1] = &v37;
  v36[2] = a1;
  v36[3] = &v38;
  v36[4] = &v39;
  v37 = 0;
  if (a4)
  {
    v11 = bswap32(*(*(a1 + 48) + 2)) >> 16;
    if (v11 < v9)
    {
      OTL::GCommon::GetLookups(OTL::FeatureBuffer const&,TInlineVector<std::pair<unsigned short,unsigned short>,30ul> *,BOOL)const::$_0::operator()(v36, v11, 0);
    }
  }

  v13 = *a2;
  v12 = *(a2 + 8);
  if (v13 != v12)
  {
    v14 = 2 * __rev16(v10);
    do
    {
      v15 = v13[1];
      if (v15 && v10)
      {
        v16 = (*(a1 + 48) + 6);
        v17 = v14;
        while (1)
        {
          v18 = bswap32(*v16) >> 16;
          if (v18 < v9 && bswap32(*(*(a1 + 56) + 6 * v18 + 2)) == *v13)
          {
            break;
          }

          ++v16;
          v17 -= 2;
          if (!v17)
          {
            goto LABEL_15;
          }
        }

        OTL::GCommon::GetLookups(OTL::FeatureBuffer const&,TInlineVector<std::pair<unsigned short,unsigned short>,30ul> *,BOOL)const::$_0::operator()(v36, v18, v15 - 1);
      }

LABEL_15:
      v13 += 2;
    }

    while (v13 != v12);
  }

  v20 = *v39;
  v19 = *(v39 + 8);
  v21 = 126 - 2 * __clz((v19 - *v39) >> 2);
  if (v19 == *v39)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(*v39, *(v39 + 8), v22, 1);
  v24 = v39;
  if (v19 != v20)
  {
    v25 = (v20 - 4);
    while (v25 + 4 != v19)
    {
      v27 = v25[2];
      v25 += 2;
      v26 = v27;
      if (v27 == v25[2] && v25[1] == v25[3])
      {
        for (i = v25 + 4; i != v19; i += 2)
        {
          v30 = v26;
          v26 = *i;
          if (v30 != v26 || v25[1] != i[1])
          {
            v25[2] = v26;
            v25 += 2;
            v25[1] = i[1];
          }
        }

        v33 = v25 + 2;
        v34 = v25 + 2 == v19;
        if (v25 + 2 > v19)
        {
          __break(1u);
          return result;
        }

        v32 = *v24;
        if (!v34)
        {
          v35 = v24[1];
          while (v19 != v35)
          {
            *v33 = *v19;
            v33[1] = v19[1];
            v19 += 2;
            v33 += 2;
          }

          v24[1] = v33;
        }

        return v32 != v24[1];
      }
    }
  }

  v32 = *v39;
  return v32 != v24[1];
}

void EmptyFeatureTableSubstitutions(void)
{
  {
    EmptyFeatureTableSubstitutions(void)::kNoSubstitutions = 0u;
    *algn_1ED568310 = 0u;
    dword_1ED568320 = 1065353216;
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(uint64_t result, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  for (i = v7; ; *(i - 1) = v58)
  {
LABEL_3:
    v7 = i;
    v9 = (a2 - i) >> 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          return std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(i, i + 2, a2 - 2);
        case 4:
          result = std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(i, i + 2, i + 4);
          v105 = *(a2 - 2);
          v106 = i[4];
          v107 = -1;
          if (v105 >= v106)
          {
            v107 = 1;
          }

          if (v105 == v106)
          {
            v108 = *(a2 - 1);
            v109 = i[5];
            v102 = v108 >= v109;
            v110 = v108 == v109;
            v107 = -1;
            if (v102)
            {
              v107 = 1;
            }

            if (v110)
            {
              v107 = 0;
            }
          }

          if (v107 < 0)
          {
            i[4] = v105;
            *(a2 - 2) = v106;
            v111 = i[5];
            i[5] = *(a2 - 1);
            *(a2 - 1) = v111;
            v112 = i[4];
            v113 = i[2];
            v114 = -1;
            if (v112 >= v113)
            {
              v114 = 1;
            }

            if (v112 == v113)
            {
              v115 = i[5];
              v116 = i[3];
              v102 = v115 >= v116;
              v117 = v115 == v116;
              v114 = -1;
              if (v102)
              {
                v114 = 1;
              }

              if (v117)
              {
                v114 = 0;
              }
            }

            if (v114 < 0)
            {
              i[2] = v112;
              i[4] = v113;
              v118 = i[3];
              v119 = i[5];
              i[3] = v119;
              i[5] = v118;
              v120 = *i;
              v121 = -1;
              if (v112 >= v120)
              {
                v121 = 1;
              }

              if (v112 == v120)
              {
                v122 = i[1];
                v102 = v119 >= v122;
                v123 = v119 == v122;
                v121 = -1;
                if (v102)
                {
                  v121 = 1;
                }

                if (v123)
                {
                  v121 = 0;
                }
              }

              if (v121 < 0)
              {
                *i = v112;
                i[2] = v120;
                v124 = i[1];
                i[1] = v119;
                i[3] = v124;
              }
            }
          }

          return result;
        case 5:

          return std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(i, i + 2, i + 4, i + 6, a2 - 2);
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
        v97 = *(a2 - 2);
        v98 = *i;
        v99 = -1;
        if (v97 >= v98)
        {
          v99 = 1;
        }

        if (v97 == v98)
        {
          v100 = *(a2 - 1);
          v101 = i[1];
          v102 = v100 >= v101;
          v103 = v100 == v101;
          v99 = -1;
          if (v102)
          {
            v99 = 1;
          }

          if (v103)
          {
            v99 = 0;
          }
        }

        if (v99 < 0)
        {
          *i = v97;
          *(a2 - 2) = v98;
          v104 = i[1];
          i[1] = *(a2 - 1);
          *(a2 - 1) = v104;
        }

        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v147 = (v9 - 2) >> 1;
        v148 = v147;
        do
        {
          v149 = v148;
          if (v147 >= v148)
          {
            v150 = (2 * v148) | 1;
            v151 = &i[2 * v150];
            if (2 * v149 + 2 < v9)
            {
              v152 = v151[2];
              v153 = *v151;
              v154 = v153 == v152;
              if (v153 >= v152)
              {
                v155 = 1;
              }

              else
              {
                v155 = -1;
              }

              if (v154)
              {
                v156 = v151[1];
                v157 = v151[3];
                v158 = v156 == v157;
                v155 = v156 >= v157 ? 1 : -1;
                if (v158)
                {
                  v155 = 0;
                }
              }

              if (v155 < 0)
              {
                v151 += 2;
                v150 = 2 * v149 + 2;
              }
            }

            result = &i[2 * v149];
            v159 = *v151;
            v160 = *result;
            v161 = v159 == v160;
            if (v159 >= v160)
            {
              v162 = 1;
            }

            else
            {
              v162 = -1;
            }

            if (v161)
            {
              v163 = v151[1];
              v164 = *(result + 2);
              v165 = v163 == v164;
              v162 = v163 >= v164 ? 1 : -1;
              if (v165)
              {
                v162 = 0;
              }
            }

            if ((v162 & 0x80) == 0)
            {
              v166 = *result;
              v167 = HIWORD(*result);
              do
              {
                v168 = v151;
                *result = v159;
                *(result + 2) = v151[1];
                if (v147 < v150)
                {
                  break;
                }

                v169 = (2 * v150) | 1;
                v151 = &i[2 * v169];
                v150 = 2 * v150 + 2;
                if (v150 >= v9)
                {
                  v150 = v169;
                }

                else
                {
                  v170 = v151[2];
                  v171 = *v151;
                  v172 = v171 == v170;
                  if (v171 >= v170)
                  {
                    v173 = 1;
                  }

                  else
                  {
                    v173 = -1;
                  }

                  if (v172)
                  {
                    v174 = v151[1];
                    v175 = v151[3];
                    v176 = v174 == v175;
                    v173 = v174 >= v175 ? 1 : -1;
                    if (v176)
                    {
                      v173 = 0;
                    }
                  }

                  if (v173 < 0)
                  {
                    v151 += 2;
                  }

                  else
                  {
                    v150 = v169;
                  }
                }

                v159 = *v151;
                if (v159 >= v166)
                {
                  v177 = 1;
                }

                else
                {
                  v177 = -1;
                }

                if (v159 == v166)
                {
                  v178 = v151[1];
                  v179 = v178 == v167;
                  if (v178 >= v167)
                  {
                    v180 = 1;
                  }

                  else
                  {
                    v180 = -1;
                  }

                  if (v179)
                  {
                    v177 = 0;
                  }

                  else
                  {
                    v177 = v180;
                  }
                }

                result = v168;
              }

              while ((v177 & 0x80) == 0);
              *v168 = v166;
              v168[1] = v167;
            }
          }

          v148 = v149 - 1;
        }

        while (v149);
        do
        {
          v181 = 0;
          v182 = *i;
          v183 = i;
          do
          {
            v184 = &v183[2 * v181];
            v185 = v184 + 2;
            v186 = (2 * v181) | 1;
            v181 = 2 * v181 + 2;
            if (v181 >= v9)
            {
              v181 = v186;
            }

            else
            {
              v188 = v184 + 4;
              v187 = v184[4];
              v189 = v184[2];
              v190 = v189 == v187;
              if (v189 >= v187)
              {
                result = 1;
              }

              else
              {
                result = 255;
              }

              if (v190)
              {
                v191 = v184[3];
                v192 = v184[5];
                v193 = v191 == v192;
                if (v191 >= v192)
                {
                  v194 = 1;
                }

                else
                {
                  v194 = 255;
                }

                if (v193)
                {
                  result = 0;
                }

                else
                {
                  result = v194;
                }
              }

              if ((result & 0x80) != 0)
              {
                v185 = v188;
              }

              else
              {
                v181 = v186;
              }
            }

            *v183 = *v185;
            v183[1] = v185[1];
            v183 = v185;
          }

          while (v181 <= ((v9 - 2) >> 1));
          if (v185 == a2 - 2)
          {
            *v185 = v182;
          }

          else
          {
            *v185 = *(a2 - 2);
            v185[1] = *(a2 - 1);
            *(a2 - 1) = v182;
            v195 = (v185 - i + 4) >> 2;
            v196 = v195 < 2;
            v197 = v195 - 2;
            if (!v196)
            {
              v198 = v197 >> 1;
              v199 = &i[2 * v198];
              v200 = *v199;
              v201 = *v185;
              v202 = v200 == v201;
              if (v200 >= v201)
              {
                v203 = 1;
              }

              else
              {
                v203 = -1;
              }

              if (v202)
              {
                v204 = v199[1];
                v205 = v185[1];
                v206 = v204 == v205;
                v203 = v204 >= v205 ? 1 : -1;
                if (v206)
                {
                  v203 = 0;
                }
              }

              if (v203 < 0)
              {
                v207 = *v185;
                v208 = HIWORD(*v185);
                do
                {
                  v209 = v199;
                  *v185 = v200;
                  v185[1] = v199[1];
                  if (!v198)
                  {
                    break;
                  }

                  v198 = (v198 - 1) >> 1;
                  v199 = &i[2 * v198];
                  v200 = *v199;
                  if (v200 >= v207)
                  {
                    result = 1;
                  }

                  else
                  {
                    result = 255;
                  }

                  if (v200 == v207)
                  {
                    v210 = v199[1];
                    v211 = v210 == v208;
                    if (v210 >= v208)
                    {
                      v212 = 1;
                    }

                    else
                    {
                      v212 = 255;
                    }

                    if (v211)
                    {
                      result = 0;
                    }

                    else
                    {
                      result = v212;
                    }
                  }

                  v185 = v209;
                }

                while ((result & 0x80) != 0);
                *v209 = v207;
                v209[1] = v208;
              }
            }
          }

          a2 -= 2;
          v196 = v9-- <= 2;
        }

        while (!v196);
      }

      return result;
    }

    v10 = v9 >> 1;
    v11 = &i[2 * (v9 >> 1)];
    if (v9 < 0x81)
    {
      result = std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(&v7[2 * (v9 >> 1)], v7, a2 - 2);
    }

    else
    {
      std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v7, &v7[2 * (v9 >> 1)], a2 - 2);
      std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v7 + 2, v11 - 2, a2 - 4);
      std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v7 + 4, &v7[2 * v10 + 2], a2 - 6);
      result = std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v11 - 2, v11, &v7[2 * v10 + 2]);
      v12 = *v7;
      *v7 = *v11;
      *v11 = v12;
      v13 = v7[1];
      v7[1] = v11[1];
      v11[1] = v13;
    }

    --a3;
    if (a4)
    {
      goto LABEL_27;
    }

    v14 = *(v7 - 2);
    v15 = *v7;
    v16 = v14 == v15;
    if (v14 >= v15)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    if (v16)
    {
      v18 = *(v7 - 1);
      v19 = v7[1];
      v20 = v18 == v19;
      v17 = v18 >= v19 ? 1 : -1;
      if (v20)
      {
        v17 = 0;
      }
    }

    if (v17 < 0)
    {
LABEL_27:
      v21 = 0;
      v22 = *v7;
      v23 = HIWORD(*v7);
      do
      {
        v24 = &v7[v21 + 2];
        if (v24 == a2)
        {
          goto LABEL_409;
        }

        v25 = *v24;
        if (v25 >= v22)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        if (v25 == v22)
        {
          v27 = v7[v21 + 3];
          v28 = v27 == v23;
          v26 = v27 >= v23 ? 1 : -1;
          if (v28)
          {
            v26 = 0;
          }
        }

        v21 += 2;
      }

      while (v26 < 0);
      v29 = &v7[v21];
      v30 = a2;
      if (v21 != 2)
      {
        while (v30 != v7)
        {
          v31 = v30 - 2;
          v32 = *(v30 - 2);
          v33 = v32 == v22;
          if (v32 >= v22)
          {
            v34 = 1;
          }

          else
          {
            v34 = -1;
          }

          if (v33)
          {
            v35 = *(v30 - 1);
            v36 = v35 == v23;
            if (v35 >= v23)
            {
              v37 = 1;
            }

            else
            {
              v37 = -1;
            }

            if (v36)
            {
              v34 = 0;
            }

            else
            {
              v34 = v37;
            }
          }

          v30 = v31;
          if (v34 < 0)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_409;
      }

      v38 = a2;
      while (v29 < v38)
      {
        v31 = v38 - 2;
        v39 = *(v38 - 2);
        v40 = v39 == v22;
        if (v39 >= v22)
        {
          v41 = 1;
        }

        else
        {
          v41 = -1;
        }

        if (v40)
        {
          v42 = *(v38 - 1);
          v43 = v42 == v23;
          if (v42 >= v23)
          {
            v44 = 1;
          }

          else
          {
            v44 = -1;
          }

          if (v43)
          {
            v41 = 0;
          }

          else
          {
            v41 = v44;
          }
        }

        v38 = v31;
        if (v41 < 0)
        {
          goto LABEL_70;
        }
      }

      v31 = v38;
LABEL_70:
      if (v29 < v31)
      {
        LOWORD(v45) = *v31;
        i = v29;
        v46 = v31;
LABEL_72:
        *i = v45;
        *v46 = v25;
        v47 = i[1];
        i[1] = v46[1];
        v46[1] = v47;
        v48 = i + 2;
        while (v48 != a2)
        {
          v25 = *v48;
          if (v25 >= v22)
          {
            v49 = 1;
          }

          else
          {
            v49 = -1;
          }

          if (v25 == v22)
          {
            v50 = v48[1];
            v51 = v50 == v23;
            v49 = v50 >= v23 ? 1 : -1;
            if (v51)
            {
              v49 = 0;
            }
          }

          v48 += 2;
          if ((v49 & 0x80) == 0)
          {
            i = v48 - 2;
            v52 = v46;
            while (v52 != v7)
            {
              v46 = v52 - 2;
              v45 = *(v52 - 2);
              if (v45 >= v22)
              {
                v53 = 1;
              }

              else
              {
                v53 = -1;
              }

              if (v45 == v22)
              {
                v54 = *(v52 - 1);
                v55 = v54 == v23;
                if (v54 >= v23)
                {
                  v56 = 1;
                }

                else
                {
                  v56 = -1;
                }

                if (v55)
                {
                  v53 = 0;
                }

                else
                {
                  v53 = v56;
                }
              }

              v52 = v46;
              if (v53 < 0)
              {
                if (i < v46)
                {
                  goto LABEL_72;
                }

                goto LABEL_100;
              }
            }

            goto LABEL_409;
          }
        }

        goto LABEL_409;
      }

      i = v29;
LABEL_100:
      if (i - 2 != v7)
      {
        *v7 = *(i - 2);
        v7[1] = *(i - 1);
      }

      *(i - 2) = v22;
      *(i - 1) = v23;
      if (v29 < v31)
      {
LABEL_105:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(v7, i - 2, a3, a4 & 1);
        a4 = 0;
        goto LABEL_3;
      }

      v57 = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v7, i - 2);
      result = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(i, a2);
      if (!result)
      {
        if (v57)
        {
          goto LABEL_3;
        }

        goto LABEL_105;
      }

      a2 = i - 2;
      if (v57)
      {
        return result;
      }

      goto LABEL_2;
    }

    v58 = HIWORD(*v7);
    v59 = *(a2 - 2);
    v60 = v59 == *v7;
    if (v59 <= *v7)
    {
      v61 = 1;
    }

    else
    {
      v61 = -1;
    }

    if (v60)
    {
      v62 = *(a2 - 1);
      v63 = v62 == v58;
      v61 = v62 <= v58 ? 1 : -1;
      if (v63)
      {
        v61 = 0;
      }
    }

    v64 = *v7;
    if (v61 < 0)
    {
      v71 = v7 + 2;
      do
      {
        if (v71 == a2)
        {
          goto LABEL_409;
        }

        v72 = *v71;
        v73 = v72 == v64;
        if (v72 <= v64)
        {
          v74 = 1;
        }

        else
        {
          v74 = -1;
        }

        if (v73)
        {
          v75 = v71[1];
          v76 = v75 == v58;
          v74 = v75 <= v58 ? 1 : -1;
          if (v76)
          {
            v74 = 0;
          }
        }

        v71 += 2;
      }

      while ((v74 & 0x80) == 0);
      i = v71 - 2;
    }

    else
    {
      v65 = v7 + 2;
      do
      {
        i = v65;
        if (v65 >= a2)
        {
          break;
        }

        v66 = *v65;
        v67 = v66 == v64;
        if (v66 <= v64)
        {
          v68 = 1;
        }

        else
        {
          v68 = -1;
        }

        if (v67)
        {
          v69 = v65[1];
          v70 = v69 == v58;
          v68 = v69 <= v58 ? 1 : -1;
          if (v70)
          {
            v68 = 0;
          }
        }

        v65 += 2;
      }

      while ((v68 & 0x80) == 0);
    }

    v77 = a2;
    if (i < a2)
    {
      v78 = a2;
      while (v78 != v7)
      {
        v77 = v78 - 2;
        v79 = *(v78 - 2);
        v80 = v79 == v64;
        if (v79 <= v64)
        {
          v81 = 1;
        }

        else
        {
          v81 = -1;
        }

        if (v80)
        {
          v82 = *(v78 - 1);
          v83 = v82 == v58;
          if (v82 <= v58)
          {
            v84 = 1;
          }

          else
          {
            v84 = -1;
          }

          if (v83)
          {
            v81 = 0;
          }

          else
          {
            v81 = v84;
          }
        }

        v78 = v77;
        if ((v81 & 0x80) == 0)
        {
          goto LABEL_160;
        }
      }

      goto LABEL_409;
    }

LABEL_160:
    if (i < v77)
    {
      LOWORD(v85) = *i;
      LOWORD(v86) = *v77;
      do
      {
        *i = v86;
        *v77 = v85;
        v87 = i[1];
        i[1] = v77[1];
        v77[1] = v87;
        v88 = i + 2;
        do
        {
          if (v88 == a2)
          {
            goto LABEL_409;
          }

          v85 = *v88;
          if (v85 <= v64)
          {
            v89 = 1;
          }

          else
          {
            v89 = -1;
          }

          if (v85 == v64)
          {
            v90 = v88[1];
            v91 = v90 == v58;
            v89 = v90 <= v58 ? 1 : -1;
            if (v91)
            {
              v89 = 0;
            }
          }

          v88 += 2;
        }

        while ((v89 & 0x80) == 0);
        i = v88 - 2;
        v92 = v77;
        do
        {
          if (v92 == v7)
          {
            goto LABEL_409;
          }

          v77 = v92 - 2;
          v86 = *(v92 - 2);
          if (v86 <= v64)
          {
            v93 = 1;
          }

          else
          {
            v93 = -1;
          }

          if (v86 == v64)
          {
            v94 = *(v92 - 1);
            v95 = v94 == v58;
            if (v94 <= v58)
            {
              v96 = 1;
            }

            else
            {
              v96 = -1;
            }

            if (v95)
            {
              v93 = 0;
            }

            else
            {
              v93 = v96;
            }
          }

          v92 = v77;
        }

        while (v93 < 0);
      }

      while (i < v77);
    }

    if (i - 2 != v7)
    {
      *v7 = *(i - 2);
      v7[1] = *(i - 1);
    }

    a4 = 0;
    *(i - 2) = v64;
  }

  v125 = i + 2;
  v127 = i == a2 || v125 == a2;
  if ((a4 & 1) == 0)
  {
    if (v127)
    {
      return result;
    }

    v213 = 0;
    v214 = 4;
    v215 = i;
    while (1)
    {
      v216 = v214;
      v217 = *v125;
      v218 = *v215;
      v219 = v217 == v218;
      if (v217 >= v218)
      {
        v220 = 1;
      }

      else
      {
        v220 = -1;
      }

      if (v219)
      {
        v221 = v215[3];
        v222 = v215[1];
        v223 = v221 == v222;
        v220 = v221 >= v222 ? 1 : -1;
        if (v223)
        {
          v220 = 0;
        }
      }

      if (v220 < 0)
      {
        break;
      }

LABEL_407:
      v215 += 2;
      v214 = v216 + 4;
      v125 = (i + v216 + 4);
      v213 = v216;
      if (v125 == a2)
      {
        return result;
      }
    }

    v224 = 0;
    v225 = *v125;
    v226 = *v125;
    v227 = HIWORD(v225);
    LOWORD(v213) = *(i + v213);
    while (1)
    {
      v228 = &v215[v224];
      v228[2] = v213;
      v228[3] = v215[v224 + 1];
      if (!(v216 + v224 * 2))
      {
        break;
      }

      LODWORD(v213) = *(v228 - 2);
      if (v213 <= v226)
      {
        v229 = 1;
      }

      else
      {
        v229 = -1;
      }

      if (v213 == v226)
      {
        v230 = v215[v224 - 1];
        v231 = v230 == v227;
        v229 = v230 <= v227 ? 1 : -1;
        if (v231)
        {
          v229 = 0;
        }
      }

      v224 -= 2;
      if ((v229 & 0x80) == 0)
      {
        v232 = &v215[v224];
        v232[2] = v226;
        v232[3] = v227;
        goto LABEL_407;
      }
    }

LABEL_409:
    __break(1u);
    return result;
  }

  if (!v127)
  {
    v128 = 0;
    v129 = i;
    do
    {
      v130 = v125;
      v131 = v129[2];
      v132 = *v129;
      v133 = v131 == v132;
      if (v131 >= v132)
      {
        v134 = 1;
      }

      else
      {
        v134 = -1;
      }

      if (v133)
      {
        v135 = v129[3];
        v136 = v129[1];
        v137 = v135 == v136;
        if (v135 >= v136)
        {
          v138 = 1;
        }

        else
        {
          v138 = -1;
        }

        if (v137)
        {
          v134 = 0;
        }

        else
        {
          v134 = v138;
        }
      }

      if (v134 < 0)
      {
        v139 = *v130;
        v140 = HIWORD(*v130);
        v141 = v128;
        while (1)
        {
          v142 = i + v141;
          *(v142 + 2) = v132;
          *(v142 + 3) = *(i + v141 + 2);
          if (!v141)
          {
            break;
          }

          v132 = *(v142 - 2);
          if (v132 <= v139)
          {
            v143 = 1;
          }

          else
          {
            v143 = -1;
          }

          if (v132 == v139)
          {
            v144 = *(i + v141 - 2);
            v145 = v144 == v140;
            v143 = v144 <= v140 ? 1 : -1;
            if (v145)
            {
              v143 = 0;
            }
          }

          v141 -= 4;
          if ((v143 & 0x80) == 0)
          {
            v146 = (i + v141 + 4);
            goto LABEL_272;
          }
        }

        v146 = i;
LABEL_272:
        *v146 = v139;
        v146[1] = v140;
      }

      v125 = v130 + 2;
      v128 += 4;
      v129 = v130;
    }

    while (v130 + 2 != a2);
  }

  return result;
}

void std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 18;
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == v1[18])
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 33;
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == v1[33])
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void OTL::GCommon::GetLookups(OTL::FeatureBuffer const&,TInlineVector<std::pair<unsigned short,unsigned short>,30ul> *,BOOL)const::$_0::operator()(uint64_t a1, unsigned __int16 a2, __int16 a3)
{
  v36 = a2;
  v5 = *(a1 + 16);
  v6 = std::__hash_table<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>>>::find<unsigned short>(*a1, &v36);
  if (**(a1 + 8) == v6)
  {
    v7 = (*(v5 + 56) + (bswap32(*(*(v5 + 56) + 6 * v36 + 6)) >> 16));
    v9 = *(v5 + 40);
    v10 = v7 + 4;
    if (v7 + 4 > v9)
    {
      return;
    }

    v11 = __rev16(*(v7 + 1));
    v12 = &v10[2 * v11];
    v13 = v7 + 6 <= v9 ? (v9 - v10) >> 1 : 0;
    v14 = v12 <= v9 && v12 >= v10;
    if (!v14 && v13 != v11)
    {
      return;
    }

    v8 = 2 * v11;
    if (!*(v7 + 1))
    {
      return;
    }
  }

  else
  {
    v7 = v6[3];
    v8 = 2 * __rev16(*(v7 + 1));
    if (!*(v7 + 1))
    {
      return;
    }
  }

  v16 = v7 + 2;
  do
  {
    v17 = bswap32(*v16) >> 16;
    if (**(a1 + 24) > v17)
    {
      v18 = **(a1 + 32);
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      if (v20 >= v19)
      {
        v22 = *v18;
        v23 = v20 - *v18;
        v24 = (v23 >> 2) + 1;
        if (v24 >> 62)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v25 = v19 - v22;
        if (v25 >> 1 > v24)
        {
          v24 = v25 >> 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v26 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          v27 = *(v18 + 144);
          v28 = &v27[4 * v26];
          if (v28 > v18 + 144)
          {
            if (!(v26 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          *(v18 + 144) = v28;
        }

        else
        {
          v27 = 0;
        }

        v29 = &v27[4 * (v23 >> 2)];
        v30 = &v27[4 * v26];
        *v29 = v17;
        *(v29 + 1) = a3;
        v21 = v29 + 4;
        v31 = v27;
        memcpy(v27, v22, v23);
        v32 = *v18;
        *v18 = v31;
        *(v18 + 8) = v21;
        v33 = *(v18 + 16);
        *(v18 + 16) = v30;
        if (v32)
        {
          v34 = (v18 + 144);
          if (v18 + 24 <= v32 && v34 > v32)
          {
            if (v33 == *v34)
            {
              *v34 = v32;
            }
          }

          else
          {
            operator delete(v32);
          }
        }
      }

      else
      {
        *v20 = v17;
        v20[1] = a3;
        v21 = v20 + 2;
      }

      *(v18 + 8) = v21;
    }

    ++v16;
    v8 -= 2;
  }

  while (v8);
}

unsigned __int16 *std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  result = std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  v13 = -1;
  if (v11 >= v12)
  {
    v13 = 1;
  }

  if (v11 == v12)
  {
    v14 = a4[1];
    v15 = a3[1];
    v16 = v14 >= v15;
    v17 = v14 == v15;
    v13 = -1;
    if (v16)
    {
      v13 = 1;
    }

    if (v17)
    {
      v13 = 0;
    }
  }

  if (v13 < 0)
  {
    *a3 = v11;
    *a4 = v12;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    v21 = -1;
    if (v19 >= v20)
    {
      v21 = 1;
    }

    if (v19 == v20)
    {
      v22 = a3[1];
      v23 = a2[1];
      v16 = v22 >= v23;
      v24 = v22 == v23;
      v21 = -1;
      if (v16)
      {
        v21 = 1;
      }

      if (v24)
      {
        v21 = 0;
      }
    }

    if (v21 < 0)
    {
      *a2 = v19;
      *a3 = v20;
      v25 = a2[1];
      a2[1] = a3[1];
      a3[1] = v25;
      v26 = *a2;
      v27 = *a1;
      v28 = -1;
      if (v26 >= v27)
      {
        v28 = 1;
      }

      if (v26 == v27)
      {
        v29 = a2[1];
        v30 = a1[1];
        v16 = v29 >= v30;
        v31 = v29 == v30;
        v28 = -1;
        if (v16)
        {
          v28 = 1;
        }

        if (v31)
        {
          v28 = 0;
        }
      }

      if (v28 < 0)
      {
        *a1 = v26;
        *a2 = v27;
        v32 = a1[1];
        a1[1] = a2[1];
        a2[1] = v32;
      }
    }
  }

  v33 = *a5;
  v34 = *a4;
  v35 = -1;
  if (v33 >= v34)
  {
    v35 = 1;
  }

  if (v33 == v34)
  {
    v36 = a5[1];
    v37 = a4[1];
    v16 = v36 >= v37;
    v38 = v36 == v37;
    v35 = -1;
    if (v16)
    {
      v35 = 1;
    }

    if (v38)
    {
      v35 = 0;
    }
  }

  if (v35 < 0)
  {
    *a4 = v33;
    *a5 = v34;
    v39 = a4[1];
    a4[1] = a5[1];
    a5[1] = v39;
    v40 = *a4;
    v41 = *a3;
    v42 = -1;
    if (v40 >= v41)
    {
      v42 = 1;
    }

    if (v40 == v41)
    {
      v43 = a4[1];
      v44 = a3[1];
      v16 = v43 >= v44;
      v45 = v43 == v44;
      v42 = -1;
      if (v16)
      {
        v42 = 1;
      }

      if (v45)
      {
        v42 = 0;
      }
    }

    if (v42 < 0)
    {
      *a3 = v40;
      *a4 = v41;
      v46 = a3[1];
      a3[1] = a4[1];
      a4[1] = v46;
      v47 = *a3;
      v48 = *a2;
      v49 = -1;
      if (v47 >= v48)
      {
        v49 = 1;
      }

      if (v47 == v48)
      {
        v50 = a3[1];
        v51 = a2[1];
        v16 = v50 >= v51;
        v52 = v50 == v51;
        v49 = -1;
        if (v16)
        {
          v49 = 1;
        }

        if (v52)
        {
          v49 = 0;
        }
      }

      if (v49 < 0)
      {
        *a2 = v47;
        *a3 = v48;
        v53 = a2[1];
        a2[1] = a3[1];
        a3[1] = v53;
        v54 = *a2;
        v55 = *a1;
        v56 = -1;
        if (v54 >= v55)
        {
          v56 = 1;
        }

        if (v54 == v55)
        {
          v57 = a2[1];
          v58 = a1[1];
          v16 = v57 >= v58;
          v59 = v57 == v58;
          v56 = -1;
          if (v16)
          {
            v56 = 1;
          }

          if (v59)
          {
            v56 = 0;
          }
        }

        if (v56 < 0)
        {
          *a1 = v54;
          *a2 = v55;
          v60 = a1[1];
          a1[1] = a2[1];
          a2[1] = v60;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(unsigned __int16 *result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  v4 = *result;
  if (v3 >= v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v3 == v4)
  {
    v6 = a2[1];
    v7 = result[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (v11 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v25 = a3[1];
      v26 = a2[1];
      v8 = v25 >= v26;
      v27 = v25 == v26;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v27)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      *result++ = v11;
      *a3 = v4;
      v35 = a3 + 1;
    }

    else
    {
      *result = v3;
      *a2 = v4;
      v28 = result[1];
      result[1] = a2[1];
      a2[1] = v28;
      v29 = *a3;
      v30 = *a2;
      v31 = -1;
      if (v29 >= v30)
      {
        v31 = 1;
      }

      if (v29 == v30)
      {
        v32 = a3[1];
        v8 = v32 >= v28;
        v33 = v32 == v28;
        v34 = -1;
        if (v8)
        {
          v34 = 1;
        }

        if (v33)
        {
          v31 = 0;
        }

        else
        {
          v31 = v34;
        }
      }

      if ((v31 & 0x80) == 0)
      {
        return result;
      }

      *a2 = v29;
      *a3 = v30;
      v35 = a3 + 1;
      result = a2 + 1;
    }

    v17 = v35;
    goto LABEL_52;
  }

  if (v11 == v3)
  {
    v13 = a3[1];
    v14 = a2[1];
    v8 = v13 >= v14;
    v15 = v13 == v14;
    v16 = -1;
    if (v8)
    {
      v16 = 1;
    }

    if (v15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v16;
    }
  }

  if (v12 < 0)
  {
    *a2 = v11;
    *a3 = v3;
    v17 = a2 + 1;
    v18 = a2[1];
    a2[1] = a3[1];
    a3[1] = v18;
    v19 = *a2;
    v20 = *result;
    v21 = -1;
    if (v19 >= v20)
    {
      v21 = 1;
    }

    if (v19 == v20)
    {
      v22 = *v17;
      v23 = result[1];
      v8 = v22 >= v23;
      v24 = v22 == v23;
      v21 = -1;
      if (v8)
      {
        v21 = 1;
      }

      if (v24)
      {
        v21 = 0;
      }
    }

    if (v21 < 0)
    {
      *result++ = v19;
      *a2 = v20;
LABEL_52:
      v36 = *result;
      *result = *v17;
      *v17 = v36;
    }
  }

  return result;
}

uint64_t *std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[11] = (a1 + 3);
  if (a3 != a2)
  {
    v5 = a2;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__vallocate[abi:fn200100](a1, a3 - a2);
    v6 = a1[1];
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != a3);
    a1[1] = v6;
  }

  return a1;
}

uint64_t std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__emplace_back_slow_path<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v7 = (a1 + 3);
  v16[4] = a1 + 3;
  if (v6)
  {
    v8 = std::allocator_traits<TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>((a1 + 3), v6);
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 + 104 * v6;
  v9 = v8 + 104 * v2;
  *v9 = *a2;
  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>((v9 + 8), *(a2 + 8), *(a2 + 16));
  v11 = a1[1];
  v12 = v9 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:fn200100]<TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*>(v7, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v9 + 104;
  v14 = a1[2];
  a1[2] = v10;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  std::__split_buffer<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul> &>::~__split_buffer(v16);
  return v9 + 104;
}

void *std::__split_buffer<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul> &>::~__split_buffer(void *a1)
{
  std::__split_buffer<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul> &>::clear[abi:fn200100](a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v5 = v3 > v2;
    v4 = (v3 + 3120);
    v5 = !v5 && v4 > v2;
    if (v5)
    {
      if (a1[3] == *v4)
      {
        *v4 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:fn200100]<TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v11[5] = v4;
    v11[6] = v5;
    v7 = a2;
    v8 = (a4 + 8);
    v9 = a2;
    do
    {
      *(v8 - 2) = *v9;
      v10 = std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(v8, *(v9 + 8), *(v9 + 16));
      v9 += 104;
      v8 = v10 + 13;
    }

    while (v9 != a3);
    do
    {
      v11[0] = (v7 + 8);
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](v11);
      v7 += 104;
    }

    while (v7 != a3);
  }
}

void std::__split_buffer<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul> &>::clear[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v4 = (i - 96);
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
  }
}

BOOL TOpenTypeMorph::ShapeGlyphs(SyncState &)::$_2::operator()(unsigned int **a1, uint64_t a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = (*a1)[6] + 2654435769;
  v8 = ((*a1)[7] + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = ((*a1)[4] + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  os_unfair_lock_lock_with_options();
  v10 = *(a2 + 48);
  if (!*&v10)
  {
    goto LABEL_17;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*(a2 + 40) + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_17:
    v54 = a3;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66[8] = v16;
    v66[7] = v16;
    v66[6] = v16;
    v66[5] = v16;
    v66[4] = v16;
    v66[3] = v16;
    v66[2] = v16;
    v66[1] = v16;
    v66[0] = v16;
    memset(v65, 0, sizeof(v65));
    v67 = v66;
    OTL::GCommon::GetFeatures((v6 + 162), v65);
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63[14] = v17;
    v63[13] = v17;
    v63[12] = v17;
    v63[11] = v17;
    v63[10] = v17;
    v63[9] = v17;
    v63[8] = v17;
    v63[7] = v17;
    v63[6] = v17;
    v63[5] = v17;
    v63[4] = v17;
    v63[2] = v17;
    v63[3] = v17;
    v63[0] = v17;
    v63[1] = v17;
    v62 = 0uLL;
    v61 = 0;
    v64 = v63;
    v55 = a1;
    if (OTL::FeatureList::StripMissingFeaturesFrom(v65, a1[1]))
    {
      v18 = 0;
      v19 = a1[1];
      do
      {
        v20 = v19[v18];
        if (!v20)
        {
          break;
        }

        v21 = v62;
        if (v62 >= *(&v62 + 1))
        {
          v60 = 0xAAAAAAAAAAAAAAAALL;
          *&v23 = 0xAAAAAAAAAAAAAAAALL;
          *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v58 = v23;
          v59 = v23;
          v24 = (v62 - v61) >> 3;
          v25 = v24 + 1;
          if ((v24 + 1) >> 61)
          {
LABEL_61:
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v26 = *(&v62 + 1) - v61;
          if ((*(&v62 + 1) - v61) >> 2 > v25)
          {
            v25 = v26 >> 2;
          }

          v27 = v26 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v25;
          std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v58, v27, v24, v63);
          v28 = v59;
          *v59 = v20;
          *(v28 + 4) = 1;
          *&v59 = v28 + 8;
          v29 = (*(&v58 + 1) - (v62 - v61));
          memcpy(v29, v61, v62 - v61);
          v30 = v61;
          v31 = *(&v62 + 1);
          v61 = v29;
          v56 = v59;
          v62 = v59;
          *&v59 = v30;
          *(&v59 + 1) = v31;
          *&v58 = v30;
          *(&v58 + 1) = v30;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v58);
          v22 = v56;
        }

        else
        {
          *v62 = v20;
          *(v21 + 4) = 1;
          v22 = v21 + 8;
        }

        *&v62 = v22;
        ++v18;
      }

      while (v18 != 16);
    }

    v32 = v55[2];
    v33 = *v32;
    v34 = *(v32 + 1);
    if (*v32 != v34)
    {
      v35 = v62;
      do
      {
        v36 = *v33;
        if (v35 >= *(&v62 + 1))
        {
          v60 = 0xAAAAAAAAAAAAAAAALL;
          *&v37 = 0xAAAAAAAAAAAAAAAALL;
          *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v58 = v37;
          v59 = v37;
          v38 = (v35 - v61) >> 3;
          v39 = v38 + 1;
          if ((v38 + 1) >> 61)
          {
            goto LABEL_61;
          }

          v40 = *(&v62 + 1) - v61;
          if ((*(&v62 + 1) - v61) >> 2 > v39)
          {
            v39 = v40 >> 2;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF8)
          {
            v41 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v58, v41, v38, v63);
          v42 = v59;
          *v59 = v36;
          *(v42 + 4) = 0;
          *&v59 = v42 + 8;
          v43 = (*(&v58 + 1) - (v62 - v61));
          memcpy(v43, v61, v62 - v61);
          v44 = v61;
          v45 = *(&v62 + 1);
          v61 = v43;
          v57 = v59;
          v62 = v59;
          *&v59 = v44;
          *(&v59 + 1) = v45;
          *&v58 = v44;
          *(&v58 + 1) = v44;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v58);
          v35 = v57;
        }

        else
        {
          *v35 = v36;
          *(v35 + 1) = 0;
          v35 += 8;
        }

        *&v62 = v35;
        ++v33;
      }

      while (v33 != v34);
    }

    ConvertSettingsToOTFeatures(v65, a2, *(v6 + 20), &v61, *v55[3], 0, 1);
    a3 = v54;
    OTL::GCommon::GetLookups((v6 + 162), &v61, v54, 1);
    v46 = *(a2 + 48);
    if (!*&v46)
    {
      goto LABEL_59;
    }

    v47 = vcnt_s8(v46);
    v47.i16[0] = vaddlv_u8(v47);
    if (v47.u32[0] > 1uLL)
    {
      v48 = v9;
      if (*&v46 <= v9)
      {
        v48 = v9 % *&v46;
      }
    }

    else
    {
      v48 = (*&v46 - 1) & v9;
    }

    v49 = *(*(a2 + 40) + 8 * v48);
    if (!v49 || (v50 = *v49) == 0)
    {
LABEL_59:
      operator new();
    }

    while (1)
    {
      v51 = v50[1];
      if (v51 == v9)
      {
        if (v50[2] == v9)
        {
          *&v58 = &v61;
          std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v58);
          v61 = v65;
          std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__destroy_vector::operator()[abi:fn200100](&v61);
          goto LABEL_60;
        }
      }

      else
      {
        if (v47.u32[0] > 1uLL)
        {
          if (v51 >= *&v46)
          {
            v51 %= *&v46;
          }
        }

        else
        {
          v51 &= *&v46 - 1;
        }

        if (v51 != v48)
        {
          goto LABEL_59;
        }
      }

      v50 = *v50;
      if (!v50)
      {
        goto LABEL_59;
      }
    }
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14[2] != v9)
  {
    goto LABEL_16;
  }

  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<std::pair<unsigned short,unsigned short>*>,std::__wrap_iter<std::pair<unsigned short,unsigned short>*>>(a3, v14[3], v14[4], (v14[4] - v14[3]) >> 2);
LABEL_60:
  v52 = *a3 != a3[1];
  os_unfair_lock_unlock((a2 + 32));
  return v52;
}

void std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vdeallocate(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 144);
    if (a1 + 24 <= v2 && v3 > v2)
    {
      if (*(a1 + 16) == *(a1 + 144))
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vallocate[abi:fn200100](void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v4 = a1 + 18;
  result = a1[18];
  v5 = result + 4 * a2;
  if (v5 > v4)
  {
    operator new();
  }

  *v4 = v5;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 4 * a2;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,false>(__int16 *a1, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v231 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a1;
  while (1)
  {
    v9 = a2 - v8;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3uLL:
          std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(v8, v8 + 52, a2 - 52);
          return;
        case 4uLL:
          std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(v8, v8 + 52, v8 + 104, a2 - 52);
          return;
        case 5uLL:
          std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(v8, v8 + 52, v8 + 104, v8 + 156, a2 - 52);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v102 = *(a2 - 52);
        v103 = *v8;
        v104 = v102 == v103;
        if (v102 >= v103)
        {
          v105 = 1;
        }

        else
        {
          v105 = -1;
        }

        if (v104)
        {
          v106 = *(a2 - 51);
          v107 = v8[1];
          v108 = v106 >= v107;
          v109 = v106 == v107;
          v105 = -1;
          if (v108)
          {
            v105 = 1;
          }

          if (v109)
          {
            v105 = 0;
          }
        }

        if (v105 < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(v8, a2 - 52);
        }

        return;
      }
    }

    if (v9 <= 2495)
    {
      break;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v129 = v11 >> 1;
        v130 = v11 >> 1;
        do
        {
          v131 = v130;
          if (v129 >= v130)
          {
            v132 = (2 * v130) | 1;
            v133 = &v8[52 * v132];
            if (2 * v130 + 2 < v10)
            {
              v134 = v133[52];
              v135 = *v133;
              v136 = v135 == v134;
              if (v135 >= v134)
              {
                v137 = 1;
              }

              else
              {
                v137 = -1;
              }

              if (v136)
              {
                v138 = v133[1];
                v139 = v133[53];
                v140 = v138 == v139;
                v137 = v138 >= v139 ? 1 : -1;
                if (v140)
                {
                  v137 = 0;
                }
              }

              if (v137 < 0)
              {
                v133 += 52;
                v132 = 2 * v130 + 2;
              }
            }

            v141 = &v8[52 * v130];
            v142 = *v133;
            v143 = *v141;
            v144 = v142 == v143;
            if (v142 >= v143)
            {
              v145 = 1;
            }

            else
            {
              v145 = -1;
            }

            if (v144)
            {
              v146 = v133[1];
              v147 = v141[1];
              v148 = v146 == v147;
              v145 = v146 >= v147 ? 1 : -1;
              if (v148)
              {
                v145 = 0;
              }
            }

            if ((v145 & 0x80) == 0)
            {
              v230 = 0xAAAAAAAAAAAAAAAALL;
              *&v149 = 0xAAAAAAAAAAAAAAAALL;
              *(&v149 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v228 = v149;
              v229 = v149;
              v226 = v149;
              v227 = v149;
              v225 = v149;
              v224 = v149;
              LODWORD(v224) = *v141;
              std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v224 + 1, *(v141 + 1), *(v141 + 2));
              LOWORD(v150) = *v133;
              while (1)
              {
                v151 = v133;
                *v141 = v150;
                v141[1] = v133[1];
                std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v141 + 1, *(v133 + 1), *(v133 + 2), (*(v133 + 2) - *(v133 + 1)) >> 4);
                if (v129 < v132)
                {
                  break;
                }

                v133 = &v8[52 * ((2 * v132) | 1)];
                if (2 * v132 + 2 >= v10)
                {
                  v132 = (2 * v132) | 1;
                }

                else
                {
                  v152 = v133[52];
                  v153 = *v133;
                  v154 = v153 == v152;
                  if (v153 >= v152)
                  {
                    v155 = 1;
                  }

                  else
                  {
                    v155 = -1;
                  }

                  if (v154)
                  {
                    v156 = v133[1];
                    v157 = v133[53];
                    v158 = v156 == v157;
                    v155 = v156 >= v157 ? 1 : -1;
                    if (v158)
                    {
                      v155 = 0;
                    }
                  }

                  if (v155 < 0)
                  {
                    v133 += 52;
                    v132 = 2 * v132 + 2;
                  }

                  else
                  {
                    v132 = (2 * v132) | 1;
                  }
                }

                v150 = *v133;
                v159 = v224;
                if (v150 >= v224)
                {
                  v160 = 1;
                }

                else
                {
                  v160 = -1;
                }

                if (v150 == v224)
                {
                  v161 = v133[1];
                  v162 = v161 == WORD1(v224);
                  v160 = v161 >= WORD1(v224) ? 1 : -1;
                  if (v162)
                  {
                    v160 = 0;
                  }
                }

                v141 = v151;
                if (v160 < 0)
                {
                  v163 = (v151 + 4);
                  goto LABEL_298;
                }
              }

              v163 = (v133 + 4);
              v159 = v224;
LABEL_298:
              *v151 = v159;
              v151[1] = WORD1(v224);
              std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v163, *(&v224 + 1), v225, (v225 - *(&v224 + 1)) >> 4);
              *&v217 = &v224 + 8;
              std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v217);
            }
          }

          v130 = v131 - 1;
        }

        while (v131);
        v164 = 0x4EC4EC4EC4EC4EC5 * (v9 >> 3);
        do
        {
          if (v164 >= 2)
          {
            v223 = 0xAAAAAAAAAAAAAAAALL;
            *&v165 = 0xAAAAAAAAAAAAAAAALL;
            *(&v165 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v221 = v165;
            v222 = v165;
            v219 = v165;
            v220 = v165;
            v217 = v165;
            v218 = v165;
            LODWORD(v217) = *v8;
            std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v217 + 1, *(v8 + 1), *(v8 + 2));
            v166 = 0;
            v167 = v8;
            do
            {
              v168 = &v167[13 * v166];
              v169 = v168 + 52;
              if (2 * v166 + 2 >= v164)
              {
                v166 = (2 * v166) | 1;
              }

              else
              {
                v170 = v168 + 104;
                v171 = v168[104];
                v172 = v168[52];
                v173 = v172 == v171;
                if (v172 >= v171)
                {
                  v174 = 1;
                }

                else
                {
                  v174 = -1;
                }

                if (v173)
                {
                  v175 = v168[53];
                  v176 = v168[105];
                  v177 = v175 == v176;
                  if (v175 >= v176)
                  {
                    v178 = 1;
                  }

                  else
                  {
                    v178 = -1;
                  }

                  if (v177)
                  {
                    v174 = 0;
                  }

                  else
                  {
                    v174 = v178;
                  }
                }

                if (v174 < 0)
                {
                  v169 = v170;
                  v166 = 2 * v166 + 2;
                }

                else
                {
                  v166 = (2 * v166) | 1;
                }
              }

              *v167 = *v169;
              *(v167 + 1) = v169[1];
              std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v167 + 1, *(v169 + 1), *(v169 + 2), (*(v169 + 2) - *(v169 + 1)) >> 4);
              v167 = v169;
            }

            while (v166 <= ((v164 - 2) >> 1));
            if (v169 == a2 - 52)
            {
              *v169 = v217;
              std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v169 + 1, *(&v217 + 1), v218, (v218 - *(&v217 + 1)) >> 4);
            }

            else
            {
              v179 = *(a2 - 12);
              *v169 = *(a2 - 52);
              v169[1] = *(a2 - 51);
              std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v169 + 1, v179, *(a2 - 11), (*(a2 - 11) - v179) >> 4);
              *(a2 - 26) = v217;
              std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(a2 - 12, *(&v217 + 1), v218, (v218 - *(&v217 + 1)) >> 4);
              v180 = v169 - v8 + 104;
              if (v180 >= 105)
              {
                v181 = (0x4EC4EC4EC4EC4EC5 * (v180 >> 3) - 2) >> 1;
                v182 = &v8[52 * v181];
                v183 = *v182;
                v184 = *v169;
                v185 = v183 == v184;
                if (v183 >= v184)
                {
                  v186 = 1;
                }

                else
                {
                  v186 = -1;
                }

                if (v185)
                {
                  v187 = *(v182 + 1);
                  v188 = v169[1];
                  v189 = v187 == v188;
                  v186 = v187 >= v188 ? 1 : -1;
                  if (v189)
                  {
                    v186 = 0;
                  }
                }

                if (v186 < 0)
                {
                  v230 = 0xAAAAAAAAAAAAAAAALL;
                  *&v190 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v190 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v228 = v190;
                  v229 = v190;
                  v226 = v190;
                  v227 = v190;
                  v225 = v190;
                  v224 = v190;
                  LODWORD(v224) = *v169;
                  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v224 + 1, *(v169 + 1), *(v169 + 2));
                  LOWORD(v191) = *v182;
                  do
                  {
                    v192 = v182;
                    *v169 = v191;
                    v169[1] = *(v182 + 1);
                    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v169 + 1, v182[1], v182[2], (v182[2] - v182[1]) >> 4);
                    if (!v181)
                    {
                      break;
                    }

                    v181 = (v181 - 1) >> 1;
                    v182 = &v8[52 * v181];
                    v191 = *v182;
                    if (v191 >= v224)
                    {
                      v193 = 1;
                    }

                    else
                    {
                      v193 = -1;
                    }

                    if (v191 == v224)
                    {
                      v194 = *(v182 + 1);
                      v195 = v194 == WORD1(v224);
                      v193 = v194 >= WORD1(v224) ? 1 : -1;
                      if (v195)
                      {
                        v193 = 0;
                      }
                    }

                    v169 = v192;
                  }

                  while (v193 < 0);
                  *v192 = v224;
                  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v192 + 1, *(&v224 + 1), v225, (v225 - *(&v224 + 1)) >> 4);
                  v216 = &v224 + 1;
                  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v216);
                }
              }
            }

            *&v224 = &v217 + 8;
            std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v224);
          }

          a2 -= 52;
        }

        while (v164-- > 2);
      }

      return;
    }

    v12 = &v8[52 * (v10 >> 1)];
    if (v9 < 0x3401)
    {
      std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(&v8[52 * (v10 >> 1)], v8, a2 - 52);
    }

    else
    {
      std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(v8, &v8[52 * (v10 >> 1)], a2 - 52);
      std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(v8 + 52, v12 - 52, a2 - 104);
      std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(v8 + 104, v12 + 52, a2 - 156);
      std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(v12 - 52, &v8[52 * (v10 >> 1)], v12 + 52);
      v13 = *v8;
      *v8 = *v12;
      *v12 = v13;
      v14 = v8[1];
      v8[1] = v12[1];
      v12[1] = v14;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v228 = v15;
      v229 = v15;
      v226 = v15;
      v227 = v15;
      v225 = v15;
      v224 = v15;
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v224, *(v8 + 1), *(v8 + 2));
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v8 + 1, *(v12 + 1), *(v12 + 2), (*(v12 + 2) - *(v12 + 1)) >> 4);
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v12 + 1, v224, *(&v224 + 1), (*(&v224 + 1) - v224) >> 4);
      *&v217 = &v224;
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v217);
    }

    --a3;
    if ((a4 & 1) == 0)
    {
      v16 = *(v8 - 52);
      v17 = *v8;
      v18 = v16 == v17;
      if (v16 >= v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = -1;
      }

      if (v18)
      {
        v20 = *(v8 - 51);
        v21 = v8[1];
        v22 = v20 == v21;
        v19 = v20 >= v21 ? 1 : -1;
        if (v22)
        {
          v19 = 0;
        }
      }

      if ((v19 & 0x80) == 0)
      {
        v230 = 0xAAAAAAAAAAAAAAAALL;
        *&v62 = 0xAAAAAAAAAAAAAAAALL;
        *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v228 = v62;
        v229 = v62;
        v226 = v62;
        v227 = v62;
        v225 = v62;
        v224 = v62;
        LODWORD(v224) = *v8;
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v224 + 1, *(v8 + 1), *(v8 + 2));
        v63 = v224;
        v64 = *(a2 - 52);
        if (v224 == v64)
        {
          v65 = WORD1(v224);
          v66 = *(a2 - 51);
          v67 = WORD1(v224) == v66;
          if (WORD1(v224) >= v66)
          {
            v68 = 1;
          }

          else
          {
            v68 = -1;
          }

          if (v67)
          {
            v68 = 0;
          }
        }

        else
        {
          if (v224 >= v64)
          {
            v68 = 1;
          }

          else
          {
            v68 = -1;
          }

          v65 = WORD1(v224);
        }

        if (v68 < 0)
        {
          v75 = v8 + 52;
          do
          {
            if (v75 == a2)
            {
              goto LABEL_379;
            }

            v76 = *v75;
            v77 = v224 == v76;
            if (v224 >= v76)
            {
              v78 = 1;
            }

            else
            {
              v78 = -1;
            }

            if (v77)
            {
              v79 = v75[1];
              v80 = v65 == v79;
              v78 = v65 >= v79 ? 1 : -1;
              if (v80)
              {
                v78 = 0;
              }
            }

            v75 += 52;
          }

          while ((v78 & 0x80) == 0);
          a1 = (v75 - 52);
        }

        else
        {
          v69 = (v8 + 52);
          do
          {
            a1 = v69;
            if (v69 >= a2)
            {
              break;
            }

            v70 = *v69;
            v71 = v224 == v70;
            if (v224 >= v70)
            {
              v72 = 1;
            }

            else
            {
              v72 = -1;
            }

            if (v71)
            {
              v73 = v69[1];
              v74 = v65 == v73;
              v72 = v65 >= v73 ? 1 : -1;
              if (v74)
              {
                v72 = 0;
              }
            }

            v69 += 52;
          }

          while ((v72 & 0x80) == 0);
        }

        v81 = a2;
        if (a1 < a2)
        {
          v82 = a2;
          while (v82 != v8)
          {
            v81 = (v82 - 52);
            v83 = *(v82 - 52);
            v84 = v224 == v83;
            if (v224 >= v83)
            {
              v85 = 1;
            }

            else
            {
              v85 = -1;
            }

            if (v84)
            {
              v86 = *(v82 - 51);
              v87 = v65 == v86;
              if (v65 >= v86)
              {
                v88 = 1;
              }

              else
              {
                v88 = -1;
              }

              if (v87)
              {
                v85 = 0;
              }

              else
              {
                v85 = v88;
              }
            }

            v82 = v81;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_191;
            }
          }

LABEL_379:
          __break(1u);
        }

LABEL_191:
        if (a1 < v81)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a1, v81);
          v63 = v224;
          v89 = (a1 + 52);
          do
          {
            if (v89 == a2)
            {
              goto LABEL_379;
            }

            v90 = *v89;
            v91 = v224 == v90;
            if (v224 >= v90)
            {
              v92 = 1;
            }

            else
            {
              v92 = -1;
            }

            if (v91)
            {
              v93 = v89[1];
              v94 = WORD1(v224) == v93;
              v92 = WORD1(v224) >= v93 ? 1 : -1;
              if (v94)
              {
                v92 = 0;
              }
            }

            v89 += 52;
          }

          while ((v92 & 0x80) == 0);
          a1 = (v89 - 52);
          v95 = v81;
          while (v95 != v8)
          {
            v81 = v95 - 52;
            v96 = *(v95 - 52);
            v97 = v224 == v96;
            if (v224 >= v96)
            {
              v98 = 1;
            }

            else
            {
              v98 = -1;
            }

            if (v97)
            {
              v99 = *(v95 - 51);
              v100 = WORD1(v224) == v99;
              if (WORD1(v224) >= v99)
              {
                v101 = 1;
              }

              else
              {
                v101 = -1;
              }

              if (v100)
              {
                v98 = 0;
              }

              else
              {
                v98 = v101;
              }
            }

            v95 = v81;
            if ((v98 & 0x80) == 0)
            {
              goto LABEL_191;
            }
          }

          goto LABEL_379;
        }

        if (a1 - 52 != v8)
        {
          *v8 = *(a1 - 52);
          v8[1] = *(a1 - 51);
          std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v8 + 1, *(a1 - 12), *(a1 - 11), (*(a1 - 11) - *(a1 - 12)) >> 4);
          v63 = v224;
        }

        *(a1 - 52) = v63;
        *(a1 - 51) = WORD1(v224);
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(a1 - 12, *(&v224 + 1), v225, (v225 - *(&v224 + 1)) >> 4);
        *&v217 = &v224 + 8;
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v217);
        a4 = 0;
        goto LABEL_2;
      }
    }

    v230 = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v228 = v23;
    v229 = v23;
    v226 = v23;
    v227 = v23;
    v225 = v23;
    v224 = v23;
    LODWORD(v224) = *v8;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v224 + 1, *(v8 + 1), *(v8 + 2));
    v24 = 0;
    v25 = v224;
    do
    {
      v26 = &v8[v24 + 52];
      if (v26 == a2)
      {
        goto LABEL_379;
      }

      v27 = *v26;
      v28 = v27 == v224;
      if (v27 >= v224)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

      if (v28)
      {
        v30 = v8[v24 + 53];
        v31 = v30 == WORD1(v224);
        v29 = v30 >= WORD1(v224) ? 1 : -1;
        if (v31)
        {
          v29 = 0;
        }
      }

      v24 += 52;
    }

    while (v29 < 0);
    v32 = &v8[v24];
    v33 = a2;
    if (v24 != 52)
    {
      while (v33 != v8)
      {
        v35 = (v33 - 52);
        v34 = *(v33 - 52);
        v36 = v34 == v224;
        if (v34 >= v224)
        {
          v37 = 1;
        }

        else
        {
          v37 = -1;
        }

        if (v36)
        {
          v38 = *(v33 - 51);
          v39 = v38 == WORD1(v224);
          v37 = v38 >= WORD1(v224) ? 1 : -1;
          if (v39)
          {
            v37 = 0;
          }
        }

        v33 -= 52;
        if (v37 < 0)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_379;
    }

    v40 = a2;
    while (v32 < v40)
    {
      v35 = (v40 - 52);
      v41 = *(v40 - 52);
      v42 = v41 == v224;
      if (v41 >= v224)
      {
        v43 = 1;
      }

      else
      {
        v43 = -1;
      }

      if (v42)
      {
        v44 = *(v40 - 51);
        v45 = v44 == WORD1(v224);
        if (v44 >= WORD1(v224))
        {
          v46 = 1;
        }

        else
        {
          v46 = -1;
        }

        if (v45)
        {
          v43 = 0;
        }

        else
        {
          v43 = v46;
        }
      }

      v40 = v35;
      if (v43 < 0)
      {
        goto LABEL_70;
      }
    }

    v35 = v40;
LABEL_70:
    a1 = v32;
    if (v32 < v35)
    {
      v47 = v35;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a1, v47);
        v25 = v224;
        v48 = (a1 + 52);
        do
        {
          if (v48 == a2)
          {
            goto LABEL_379;
          }

          v49 = *v48;
          v50 = v49 == v224;
          if (v49 >= v224)
          {
            v51 = 1;
          }

          else
          {
            v51 = -1;
          }

          if (v50)
          {
            v52 = v48[1];
            v53 = v52 == WORD1(v224);
            v51 = v52 >= WORD1(v224) ? 1 : -1;
            if (v53)
            {
              v51 = 0;
            }
          }

          v48 += 52;
        }

        while (v51 < 0);
        a1 = (v48 - 52);
        v54 = v47;
        do
        {
          if (v54 == v8)
          {
            goto LABEL_379;
          }

          v47 = v54 - 52;
          v55 = *(v54 - 52);
          v56 = v55 == v224;
          if (v55 >= v224)
          {
            v57 = 1;
          }

          else
          {
            v57 = -1;
          }

          if (v56)
          {
            v58 = *(v54 - 51);
            v59 = v58 == WORD1(v224);
            if (v58 >= WORD1(v224))
            {
              v60 = 1;
            }

            else
            {
              v60 = -1;
            }

            if (v59)
            {
              v57 = 0;
            }

            else
            {
              v57 = v60;
            }
          }

          v54 = v47;
        }

        while ((v57 & 0x80) == 0);
      }

      while (a1 < v47);
    }

    if (a1 - 52 != v8)
    {
      *v8 = *(a1 - 52);
      v8[1] = *(a1 - 51);
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v8 + 1, *(a1 - 12), *(a1 - 11), (*(a1 - 11) - *(a1 - 12)) >> 4);
      v25 = v224;
    }

    *(a1 - 52) = v25;
    *(a1 - 51) = WORD1(v224);
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(a1 - 12, *(&v224 + 1), v225, (v225 - *(&v224 + 1)) >> 4);
    *&v217 = &v224 + 8;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v217);
    if (v32 < v35)
    {
      goto LABEL_107;
    }

    v61 = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*>(v8, a1 - 52);
    if (!std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*>(a1, a2))
    {
      if ((v61 & 1) == 0)
      {
LABEL_107:
        std::__introsort<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,false>(v8, a1 - 52, a3, a4 & 1);
        a4 = 0;
      }

      goto LABEL_2;
    }

    a2 = (a1 - 52);
    if (v61)
    {
      return;
    }
  }

  if (a4)
  {
    if (v8 != a2)
    {
      v110 = v8 + 52;
      if (v8 + 52 != a2)
      {
        v111 = 0;
        v112 = v8;
        do
        {
          v113 = v110;
          v114 = *(v112 + 52);
          v115 = *v112;
          v116 = v114 == v115;
          if (v114 >= v115)
          {
            v117 = 1;
          }

          else
          {
            v117 = -1;
          }

          if (v116)
          {
            v118 = *(v112 + 53);
            v119 = *(v112 + 1);
            v120 = v118 == v119;
            v117 = v118 >= v119 ? 1 : -1;
            if (v120)
            {
              v117 = 0;
            }
          }

          if (v117 < 0)
          {
            v230 = 0xAAAAAAAAAAAAAAAALL;
            *&v121 = 0xAAAAAAAAAAAAAAAALL;
            *(&v121 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v228 = v121;
            v229 = v121;
            v226 = v121;
            v227 = v121;
            v225 = v121;
            v224 = v121;
            LODWORD(v224) = *v113;
            std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v224 + 1, v112[14], v112[15]);
            LOWORD(v122) = *v112;
            v123 = v111;
            while (1)
            {
              v124 = v8 + v123;
              *(v124 + 52) = v122;
              *(v124 + 53) = *(v8 + v123 + 2);
              std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>((v8 + v123 + 112), *(v8 + v123 + 8), *(v8 + v123 + 16), (*(v8 + v123 + 16) - *(v8 + v123 + 8)) >> 4);
              if (!v123)
              {
                break;
              }

              v122 = *(v124 - 52);
              if (v224 >= v122)
              {
                v125 = 1;
              }

              else
              {
                v125 = -1;
              }

              if (v224 == v122)
              {
                v126 = *(v8 + v123 - 102);
                v127 = WORD1(v224) == v126;
                v125 = WORD1(v224) >= v126 ? 1 : -1;
                if (v127)
                {
                  v125 = 0;
                }
              }

              v123 -= 104;
              if ((v125 & 0x80) == 0)
              {
                v128 = v8 + v123 + 104;
                goto LABEL_239;
              }
            }

            v128 = v8;
LABEL_239:
            *v128 = v224;
            std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>((v128 + 8), *(&v224 + 1), v225, (v225 - *(&v224 + 1)) >> 4);
            *&v217 = &v224 + 8;
            std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v217);
          }

          v110 = v113 + 52;
          v111 += 104;
          v112 = v113;
        }

        while (v113 + 52 != a2);
      }
    }
  }

  else if (v8 != a2)
  {
    v197 = v8 + 52;
    if (v8 + 52 != a2)
    {
      v198 = 0;
      v199 = 104;
      v200 = v8;
      do
      {
        v201 = v199;
        v202 = *v197;
        v203 = *v200;
        v204 = v202 == v203;
        if (v202 >= v203)
        {
          v205 = 1;
        }

        else
        {
          v205 = -1;
        }

        if (v204)
        {
          v206 = *(v200 + 53);
          v207 = *(v200 + 1);
          v208 = v206 == v207;
          v205 = v206 >= v207 ? 1 : -1;
          if (v208)
          {
            v205 = 0;
          }
        }

        if (v205 < 0)
        {
          v230 = 0xAAAAAAAAAAAAAAAALL;
          *&v209 = 0xAAAAAAAAAAAAAAAALL;
          *(&v209 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v228 = v209;
          v229 = v209;
          v226 = v209;
          v227 = v209;
          v225 = v209;
          v224 = v209;
          LODWORD(v224) = *v197;
          std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v224 + 1, v200[14], v200[15]);
          v210 = 0;
          LOWORD(v211) = *(v8 + v198);
          do
          {
            v212 = &v200[v210];
            v212[52] = v211;
            v212[53] = WORD1(v200[v210]);
            std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(&v200[v210 + 14], v200[v210 + 1], v200[v210 + 2], v200[v210 + 2] - v200[v210 + 1]);
            if (!(v201 + v210 * 8))
            {
              goto LABEL_379;
            }

            v211 = *(v212 - 52);
            if (v224 >= v211)
            {
              v213 = 1;
            }

            else
            {
              v213 = -1;
            }

            if (v224 == v211)
            {
              v214 = *(&v200[v210 - 12] - 3);
              v215 = WORD1(v224) == v214;
              v213 = WORD1(v224) >= v214 ? 1 : -1;
              if (v215)
              {
                v213 = 0;
              }
            }

            v210 -= 13;
          }

          while (v213 < 0);
          LODWORD(v200[v210 + 13]) = v224;
          std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(&v200[v210 + 14], *(&v224 + 1), v225, (v225 - *(&v224 + 1)) >> 4);
          *&v217 = &v224 + 8;
          std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v217);
        }

        v200 += 13;
        v199 = v201 + 104;
        v197 = (v8 + v201 + 104);
        v198 = v201;
      }

      while (v197 != a2);
    }
  }
}

void *std::__function::__value_func<void ()(CFRange,long)>::swap[abi:fn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 170, 24);
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

BOOL OTL::GSUB::ApplyLookups(uint64_t a1, TRunGlue *a2, int a3, unsigned __int16 **a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a4[1] - *a4;
  if (v7)
  {
    v9 = a4;
    v47 = *(a2 + 24);
    v12 = *(a2 + 63);
    v13 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
    v54 = 0;
    v14 = ((v12 + 63) >> 3) & 0x7FF8;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v64 = v15;
    v65 = v15;
    if (v12 > 0x10000)
    {
      v14 = 0x2000;
    }

    v40 = v14;
    v63 = v15;
    *(&v64 + 1) = 0;
    v53[0] = a4;
    v53[1] = a6;
    v53[2] = a7;
    v55 = &unk_1EF256998;
    v56 = v53;
    v58 = &v55;
    std::__function::__value_func<void ()(CFRange,long)>::swap[abi:fn200100](&v55, &v63);
    std::__function::__value_func<void ()(CFRange,long)>::~__value_func[abi:fn200100](&v55);
    *&v65 = &v54;
    *(&v65 + 1) = TRunGlue::length(a2) << 7;
    v50 = *(*(a1 + 16) + 408);
    os_unfair_lock_lock_with_options();
    v16 = 0;
    v17 = 0;
    v42 = -a3;
    if (v13 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13;
    }

    v48 = v18;
    v49 = v13;
    while (0x4EC4EC4EC4EC4EC5 * ((v9[1] - *v9) >> 3) > v17)
    {
      v19 = *&(*v9)[52 * v17];
      v52 = 0;
      v20 = TBaseFont::NthLookup<OTL::GSUB>(v50, a1, v19);
      v21 = a2;
      if (v20)
      {
        v22 = v20;
        if ((*(a2 + 25) & v20[3]) != 0 && (*(a2 + 26) & v20[4]) != 0)
        {
          if (!v47 || (v23 = OTL::CoverageBitmap::CoversBitmap((v20 + 5), v47, v40), v21 = a2, v23))
          {
            v24 = HIWORD(v19);
            v25 = v22[8];
            v26 = v42;
            if (v25 != 8)
            {
              v26 = a3;
            }

            v46 = v26;
            v27 = *v9;
            v28 = v9[1];
            if (*v9 != v28)
            {
              while (*v27 != v19 || v27[1] != v24)
              {
                v27 += 52;
                if (v27 == v28)
                {
                  v27 = v9[1];
                  break;
                }
              }
            }

            v30 = *(v27 + 1);
            v41 = *(v27 + 2);
            if (v30 != v41)
            {
              v45 = a3;
              v44 = v9;
              v43 = v16;
              do
              {
                v32 = *v30;
                v31 = v30[1];
                if (v31 < 0)
                {
                  v33 = TRunGlue::length(v21);
                  v21 = a2;
                  v31 = v33 - v32;
                }

                v62 = 0xAAAAAAAAAAAAAAAALL;
                *&v34 = 0xAAAAAAAAAAAAAAAALL;
                *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v61 = v34;
                v60 = v34;
                v55 = v21;
                v56 = (v46 | 0xAAAAAAAA00000000);
                v57 = (v32 - 1);
                v58 = (v31 + v32);
                v59 = -1;
                v35 = TRunGlue::length(v21);
                *&v61 = -1;
                *(&v61 + 1) = -1;
                *&v60 = v35;
                v62 = 0;
                v36 = v57;
                if ((v46 & 0x80000000) != 0)
                {
                  v37 = v59;
                  v57 = v58;
                  v58 = v36;
                  v59 = v35;
                  *&v60 = v37;
                  v36 = v57;
                }

                a3 = v45;
                *(&v60 + 1) = v36;
                v38 = OTL::Lookup::ignore(v22, *(a1 + 24));
                *(&v60 + 1) = v57;
                v62 = v38;
                v9 = v44;
                v16 = v43;
                while (TGlyphIterator::NextCoveredBy(&v55, v22))
                {
                  *a5 |= OTL::GSUB::ApplyLookupAt(a1, v22, v25, &v55, v24, &v52, &v63, 0);
                  if (v54)
                  {
                    goto LABEL_35;
                  }
                }

                v30 += 2;
                v21 = a2;
              }

              while (v30 != v41);
            }
          }
        }
      }

      v16 = ++v17 >= v49;
      if (v17 == v48)
      {
LABEL_35:
        os_unfair_lock_unlock(v50 + 89);
        std::__function::__value_func<void ()(CFRange,long)>::~__value_func[abi:fn200100](&v63);
        return v16;
      }
    }

    __break(1u);
  }

  return 1;
}

uint64_t std::__function::__func<OTL::GSUB::ApplyLookups(TRunGlue &,int,OTL::GlyphLookups &,SyncState &,void (*)(void *,CFRange,long),void *)::{lambda(CFRange,long)#1},std::allocator<OTL::GSUB::ApplyLookups(TRunGlue &,int,OTL::GlyphLookups &,SyncState &,void (*)(void *,CFRange,long),void *)::{lambda(CFRange,long)#1}>,void ()(CFRange,long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF256998;
  a2[1] = v2;
  return result;
}

uint64_t *TBaseFont::NthLookup<OTL::GSUB>(uint64_t a1, void *a2, unsigned int a3)
{
  v22[48] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>((a1 + 360), &v19);
  if (v5)
  {
    return v5 + 3;
  }

  v7 = a2[8];
  if (v19 >= bswap32(*v7) >> 16)
  {
    return 0;
  }

  v8 = (v7 + (bswap32(v7[v19 + 1]) >> 16));
  v10 = a2[4];
  v9 = a2[5];
  if ((v8 + 2) < v10 || (v8 + 3) > v9)
  {
    return 0;
  }

  v12 = &v8[(bswap32(v8[2]) >> 16) + 3] + ((v8[1] >> 11) & 2);
  v13 = v10 <= v8 && v12 >= v8;
  if (!v13 || v12 > v9)
  {
    return 0;
  }

  OTL::Lookup::Lookup<OTL::GSUB>(v22, a2, v8);
  v20 = v22;
  v21 = &v19;
  v15 = std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<OTL::Lookup&&>>((a1 + 360), &v19);
  v17 = v16;
  OTL::Lookup::~Lookup(v22);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v6 = (v15 + 3);
  OTL::Lookup::InitCoverageUnion(v6);
  return v6;
}
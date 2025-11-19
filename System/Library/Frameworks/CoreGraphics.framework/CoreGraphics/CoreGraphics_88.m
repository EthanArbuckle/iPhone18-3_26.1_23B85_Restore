void CGContextShowGlyphsAtPoint(CGContextRef c, CGFloat x, CGFloat y, const CGGlyph *glyphs, size_t count)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(c + 19) = x;
      *(c + 20) = y;
      CGContextShowGlyphs(c, glyphs, count);
      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextShowGlyphsAtPoint", v10, count, v5, v6, v7, v8, v9);
}

void CGContextShowGlyphsAtPositionsWithString(CGContext *a1, const CGGlyph *a2, const CGPoint *a3, CFIndex *a4, int64_t a5, const __CFString *a6, CFIndex a7, CFIndex a8, CFDictionaryRef theDict)
{
  v188 = a2;
  v189 = a5;
  v191 = a4;
  v180 = a3;
  __s2[1] = *MEMORY[0x1E69E9840];
  LOBYTE(__s2[0]) = 0;
  if (CGCFDictionaryGetBoolean(theDict, @"rightToLeft", __s2))
  {
    v20 = LOBYTE(__s2[0]) == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 && CGContextGetType(a1, v13, v14, v15, v16, v17, v18, v19) == 1)
  {
    LOBYTE(__s2[0]) = 0;
    Boolean = CGCFDictionaryGetBoolean(theDict, @"begin", __s2);
    if (LOBYTE(__s2[0]))
    {
      v22 = Boolean;
    }

    else
    {
      v22 = 0;
    }

    v184 = v22;
    LOBYTE(__s2[0]) = 0;
    v186 = theDict;
    v23 = CGCFDictionaryGetBoolean(theDict, @"finished", __s2);
    v171[1] = v171;
    if (LOBYTE(__s2[0]))
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v185 = v25;
    if (a8 < 0)
    {
      v26 = -1;
    }

    else
    {
      v26 = a8;
    }

    if (v26 < 0x3D)
    {
      v27 = 2 * a8 + 1;
    }

    else
    {
      v27 = 1;
    }

    MEMORY[0x1EEE9AC00](v23, v24);
    v30 = v171 - v28;
    if (v26 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v31 = v171 - v28;
    }

    else
    {
      v31 = 0;
    }

    if (v26 - 0x7FFFFFFFFFFFFFFFLL >= 0x800000000000003ELL)
    {
      v31 = malloc_type_malloc(2 * a8, 0x675EA0BEuLL);
    }

    v32 = MEMORY[0x1EEE9AC00](v31, v29);
    v172 = v171 - v34;
    if (v33 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v35 = v171 - v34;
    }

    else
    {
      v35 = 0;
    }

    v177 = v32;
    if (v33 - 0x3FFFFFFFFFFFFFFFLL >= 0xC00000000000007ALL)
    {
      v35 = malloc_type_malloc(8 * a8, 0x749840DuLL);
    }

    v174 = v35;
    v36 = memset(v35, 255, 8 * a8);
    v183 = v171;
    MEMORY[0x1EEE9AC00](v36, v37);
    v38 = v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v26 <= 0x7FFFFFFFFFFFFFFELL)
    {
      if (v26 > 0x3C)
      {
        v39 = malloc_type_calloc(2 * a8, 1uLL, 0x53429C02uLL);
      }

      else
      {
        bzero(v38, 2 * a8);
        v39 = v38;
      }
    }

    else
    {
      v39 = 0;
    }

    v196.location = a7;
    v196.length = a8;
    CFStringGetCharacters(a6, v196, v39);
    v47 = v174;
    if (v189 >= 1)
    {
      for (i = 0; i != v189; ++i)
      {
        v49 = v191[i];
        if (v49 >= a7 && a7 + a8 > v49)
        {
          v51 = &v47[8 * (v49 - a7)];
          v52 = *v51;
          if (v52 == -1 || i < v52)
          {
            *v51 = i;
          }

          v54 = *(v51 + 1);
          if (v54 == -1 || i > v54)
          {
            *(v51 + 1) = i;
          }
        }
      }
    }

    Font = CGContextGetFont(a1, v40, v41, v42, v43, v44, v45, v46);
    v179 = a1;
    v173 = v30;
    v181 = v38;
    if (Font)
    {
      Font = (*(*(Font + 16) + 104))(*(Font + 112));
    }

    v187 = Font;
    v182 = a8;
    FPFontGetGlyphsForCharacters();
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
    if (v189)
    {
      v58 = Predefined;
      v59 = a7 + v182;
      v60 = v191;
      v61 = v188;
      v62 = v189;
      v190 = Predefined;
      do
      {
        v64 = *v60++;
        v63 = v64;
        v65 = v64 - a7;
        if (v64 >= a7 && v59 > v63)
        {
          v67 = v39;
          v68 = &v39[v65];
          v69 = *v68;
          v70 = v63 + 1;
          if ((v69 & 0xFC00) != 0xD800 || v59 <= v70)
          {
            v72 = 1;
            if (!v58)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v73 = v68[1];
            v74 = (v73 & 0xFC00) == 56320;
            v75 = v73 + (v69 << 10) - 56613888;
            if (v74)
            {
              v72 = 2;
            }

            else
            {
              v72 = 1;
            }

            if (v74)
            {
              v69 = v75;
            }

            if (!v58)
            {
LABEL_79:
              __s2[0] = 0;
              if (v72 != FPFontGetUnicharsForGlyph() || memcmp(v68, __s2, 2 * v72))
              {
                v177[v65] = 0;
              }

              v39 = v67;
              v58 = v190;
              goto LABEL_83;
            }
          }

          IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v58, v69);
          v58 = v190;
          if (!IsLongCharacterMember)
          {
            goto LABEL_79;
          }

          v177[v65] = *v61;
          v39 = v67;
        }

LABEL_83:
        ++v61;
        --v62;
      }

      while (v62);
    }

    if (v39 != v181)
    {
      free(v39);
    }

    v192 = 0;
    TypeID = CFStringGetTypeID();
    CFTypeRef = CGCFDictionaryGetCFTypeRef(v186, @"CGPDFTagPropertyLanguageText", TypeID, &v192);
    v79 = *MEMORY[0x1E695E480];
    v80 = v179;
    v81 = v185;
    v82 = v182;
    if (CFTypeRef)
    {
      values = v192;
      __s2[0] = @"CGPDFTagPropertyLanguageText";
      v83 = CFDictionaryCreate(v79, __s2, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CGPDFContextBeginAccessibilitySpan(v80, v83, v84, v85, v86, v87, v88, v89);
      CFRelease(v83);
    }

    Mutable = CFBitVectorCreateMutable(v79, 0);
    CFBitVectorSetCount(Mutable, v82);
    if (v189)
    {
      v175 = v79;
      v176 = 0;
      v91 = 0;
      v92 = a7 + v82;
      v190 = &v174[-8 * a7 + 4];
      v186 = 0;
      v187 = &v177[-a7];
      v183 = Mutable;
      do
      {
        v93 = v191[v91];
        v94 = v93 < a7 || v92 <= v93;
        if (v94 || !CFBitVectorGetBitAtIndex(Mutable, v93 - a7))
        {
          v185 = v81;
          RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
          v97 = v96;
          v98 = v91;
          v182 = v91;
          do
          {
            if (v97 >= 1)
            {
              v99 = v190 + 8 * RangeOfCharacterClusterAtIndex;
              v100 = RangeOfCharacterClusterAtIndex;
              do
              {
                if (a7 <= v100 && v92 > v100)
                {
                  v101 = *(v99 - 1);
                  if (v91 >= v101)
                  {
                    v102 = *(v99 - 1);
                  }

                  else
                  {
                    v102 = v91;
                  }

                  if (v101 != -1)
                  {
                    v91 = v102;
                  }

                  v103 = *v99;
                  if (v98 <= v103)
                  {
                    v104 = *v99;
                  }

                  else
                  {
                    v104 = v98;
                  }

                  if (v103 != -1)
                  {
                    v98 = v104;
                  }
                }

                ++v100;
                v99 += 8;
              }

              while (v100 < v97 + RangeOfCharacterClusterAtIndex);
            }

            if (v91 > v98)
            {
              break;
            }

            v105 = 0;
            v106 = v98 - v91 + 1;
            v107 = &v191[v91];
            do
            {
              v109 = *v107++;
              v108 = v109;
              v110 = v97 + RangeOfCharacterClusterAtIndex;
              if (RangeOfCharacterClusterAtIndex > v109 || v110 <= v108)
              {
                v112 = CFStringGetRangeOfCharacterClusterAtIndex();
                if (RangeOfCharacterClusterAtIndex >= v112)
                {
                  RangeOfCharacterClusterAtIndex = v112;
                }

                v114 = v112 + v113;
                if (v110 > v112 + v113)
                {
                  v114 = v110;
                }

                v97 = v114 - RangeOfCharacterClusterAtIndex;
                v105 = 1;
              }

              --v106;
            }

            while (v106);
          }

          while ((v105 & 1) != 0);
          v115 = v98 + 1;
          v116 = RangeOfCharacterClusterAtIndex;
          if (v98 + 1 < v189)
          {
            while (v188[v115] == -1)
            {
              v117 = v191[v115];
              v118 = CFStringGetRangeOfCharacterClusterAtIndex();
              v120 = v118 + v119;
              if (v117 < v118 + v119)
              {
                v121 = v190 + 8 * v117;
                do
                {
                  if (a7 <= v117 && v92 > v117)
                  {
                    v122 = *(v121 - 1);
                    if (v91 >= v122)
                    {
                      v123 = *(v121 - 1);
                    }

                    else
                    {
                      v123 = v91;
                    }

                    if (v122 != -1)
                    {
                      v91 = v123;
                    }

                    v124 = *v121;
                    if (v98 <= v124)
                    {
                      v125 = *v121;
                    }

                    else
                    {
                      v125 = v98;
                    }

                    if (v124 != -1)
                    {
                      v98 = v125;
                    }
                  }

                  ++v117;
                  v121 += 8;
                }

                while (v120 != v117);
              }

              if (RangeOfCharacterClusterAtIndex >= v118)
              {
                v116 = v118;
              }

              else
              {
                v116 = RangeOfCharacterClusterAtIndex;
              }

              if (v97 + RangeOfCharacterClusterAtIndex > v120)
              {
                v120 = v97 + RangeOfCharacterClusterAtIndex;
              }

              v97 = v120 - v116;
              ++v115;
              RangeOfCharacterClusterAtIndex = v116;
              if (v115 == v189)
              {
                goto LABEL_150;
              }
            }

            v116 = RangeOfCharacterClusterAtIndex;
          }

LABEL_150:
          v126 = v97 + v116;
          if (v97 + v116 >= v92)
          {
            v127 = v92;
          }

          else
          {
            v127 = v97 + v116;
          }

          if (a7 > v116 || v116 >= v92)
          {
            v130 = v127 - a7;
            if (a7 < v126)
            {
              v131 = a7;
            }

            else
            {
              v131 = 0;
            }

            if (a7 < v126)
            {
              v132 = v130;
            }

            else
            {
              v132 = 0;
            }

            if (v116 <= a7)
            {
              v129 = v131;
            }

            else
            {
              v129 = 0;
            }

            if (v116 <= a7)
            {
              v128.length = v132;
            }

            else
            {
              v128.length = 0;
            }
          }

          else
          {
            v128.length = v127 - v116;
            v129 = v116;
          }

          v133 = v186;
          v128.location = v129 - a7;
          v134 = 1;
          CFBitVectorSetBits(v183, v128, 1u);
          v178 = v98 + 1;
          v181 = (v98 + 1 - v91);
          v80 = v179;
          if (v97 == v181)
          {
            if (v97 >= 1)
            {
              v135 = v190 + 8 * v116;
              v136 = v116;
              while (1)
              {
                if (a7 <= v136 && v92 > v136)
                {
                  v137 = *&v187[2 * v136];
                  if (*&v187[2 * v136] || (CFStringGetCharacterAtIndex(a6, v136) & 0xFC00) != 0xDC00 || v136 <= v116 || (CFStringGetCharacterAtIndex(a6, v136 - 1) & 0xFC00) != 0xD800)
                  {
                    v138 = *(v135 - 1);
                    if (v138 == -1 || v138 != *v135)
                    {
                      v80 = v179;
                      v133 = v186;
                      if ((v184 & 1) == 0)
                      {
                        goto LABEL_193;
                      }

LABEL_195:
                      if (v133 >= 1)
                      {
                        CGContextShowGlyphsAtPositions(v80, &v188[v176], &v180[v176], v133);
                      }

                      v140 = v175;
                      v197.location = v116;
                      v197.length = v97;
                      v141 = CFStringCreateWithSubstring(v175, a6, v197);
                      values = v141;
                      __s2[0] = @"CGPDFTagPropertyActualText";
                      v142 = CFDictionaryCreate(v140, __s2, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      CGPDFContextBeginAccessibilitySpan(v80, v142, v143, v144, v145, v146, v147, v148);
                      CFRelease(v142);
                      CFRelease(v141);
                      v149 = 0;
                      v150 = v185;
                      v151 = v181;
                      goto LABEL_206;
                    }

                    if (v188[v138] != v137)
                    {
                      break;
                    }
                  }
                }

                ++v136;
                v135 += 8;
                if (v136 >= v126)
                {
                  v134 = 0;
LABEL_190:
                  v80 = v179;
                  v133 = v186;
                  goto LABEL_191;
                }
              }

              v134 = 1;
              goto LABEL_190;
            }

            v134 = 0;
          }

LABEL_191:
          if (v184)
          {
            goto LABEL_195;
          }

          if (v134)
          {
LABEL_193:
            if (a7 <= v116 && v126 <= v92)
            {
              goto LABEL_195;
            }
          }

          if (v176 >= v91)
          {
            v152 = v91;
          }

          else
          {
            v152 = v176;
          }

          v153 = v176 + v133;
          if (v176 + v133 <= v178)
          {
            v153 = v178;
          }

          v149 = (v153 - v152);
          v151 = v181;
          if (!v133)
          {
            v149 = v181;
            v152 = v91;
          }

          v176 = v152;
          v150 = v185;
          if (v185)
          {
LABEL_206:
            v186 = v149;
            CGContextShowGlyphsAtPositions(v80, &v188[v91], &v180[v91], v151);
            v162 = a7 <= v116 && v126 <= v92;
            if ((v150 | v162))
            {
              CGPDFContextEndAccessibilitySpan(v80, v154, v155, v156, v157, v158, v159, v160);
            }
          }

          else
          {
            v186 = v149;
          }

          v81 = 0;
          v184 = 0;
          v91 = v182;
          Mutable = v183;
        }

        ++v91;
      }

      while (v91 != v189);
      CFRelease(Mutable);
      v169 = v186;
      v170 = v172;
      if (v186 > 0)
      {
        CGContextShowGlyphsAtPositions(v80, &v188[v176], &v180[v176], v186);
      }
    }

    else
    {
      CFRelease(Mutable);
      v170 = v172;
    }

    if (v192)
    {
      CGPDFContextEndAccessibilitySpan(v80, v163, v164, v169, v165, v166, v167, v168);
    }

    if (v81)
    {
      CGPDFContextEndAccessibilitySpan(v80, v163, v164, v169, v165, v166, v167, v168);
    }

    if (v174 != v170)
    {
      free(v174);
    }

    if (v177 != v173)
    {
      free(v177);
    }
  }

  else
  {

    CGContextShowGlyphsAtPositions(a1, v188, v180, v189);
  }
}

CGColorSpaceRef CGColorSpaceCreateCalibratedGray(const CGFloat *whitePoint, const CGFloat *blackPoint, CGFloat gamma)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!whitePoint)
  {
    goto LABEL_24;
  }

  v12 = malloc_type_calloc(0x78uLL, 1uLL, 0x7AAC6DB8uLL);
  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = v12;
  *v12 = 1;
  v12[12] = 1;
  *(v12 + 2) = 0x10000;
  *(v12 + 6) = 3;
  v14 = v12 + 24;
  *(v12 + 7) = 256;
  *(v12 + 14) = &color_space_state_create_calibrated_gray_calibrated_gray_vtable;
  *(v12 + 7) = 0;
  *(v12 + 8) = 0;
  *(v12 + 10) = 0;
  *(v12 + 11) = 0;
  *(v12 + 5) = &calibrated_gray_get_default_color_components_default_gray;
  *(v12 + 6) = 1;
  v15 = malloc_type_calloc(0x90uLL, 1uLL, 0x9665C99EuLL);
  *(v13 + 96) = v15;
  if (!v15)
  {
    free(v13);
LABEL_24:
    v32 = CGColorSpaceCreateWithState(0, blackPoint, v3, v4, v5, v6, v7, v8);
    goto LABEL_25;
  }

  for (i = 0; i != 3; ++i)
  {
    v15[i] = whitePoint[i];
  }

  v17 = 0;
  v18 = &default_black_point_19329;
  if (blackPoint)
  {
    v18 = blackPoint;
  }

  do
  {
    v15[v17 + 3] = v18[v17];
    ++v17;
  }

  while (v17 != 3);
  v15[6] = gamma;
  memset(md, 0, 16);
  v19 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v19);
  if (v19)
  {
    CC_MD5_Update(v19, v14, 4u);
  }

  v20 = *(v13 + 96);
  v21 = 3;
  v22 = v20;
  do
  {
    if (v19)
    {
      CC_MD5_Update(v19, v22, 8u);
    }

    v22 += 8;
    --v21;
  }

  while (v21);
  for (j = 0; j != 3; ++j)
  {
    while (v19)
    {
      CC_MD5_Update(v19, &v20[8 * j++ + 24], 8u);
      if (j == 3)
      {
        CC_MD5_Update(v19, v20 + 48, 8u);
        CC_MD5_Final(md, v19);
        v24 = *md;
        goto LABEL_21;
      }
    }
  }

  v24 = 0uLL;
LABEL_21:
  v34 = v24;
  free(v19);
  *(v13 + 64) = v34;
  v32 = CGColorSpaceCreateWithState(v13, v25, v26, v27, v28, v29, v30, v31);
  if (atomic_fetch_add_explicit(v13, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v13);
  }

LABEL_25:
  if (v32)
  {
    *(v32 + 3) = color_space_state_register(*(v32 + 3));
  }

  return v32;
}

__n128 CGColorSpaceGetCalibratedGrayData@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 24);
  if (*(v5 + 24) != 3)
  {
    _CGHandleAssert("CGColorSpaceGetCalibratedGrayData", 122, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_CalGray.c", "space->state->type == kCGColorSpaceCalibratedGray", "Colorspace %p not calibrated grayscale. Type = %d", a2, a3, a4, a1);
  }

  v6 = *(v5 + 96);
  v7 = *(v6 + 16);
  *a5 = *v6;
  *(a5 + 16) = v7;
  result = *(v6 + 32);
  *(a5 + 32) = result;
  *(a5 + 48) = *(v6 + 48);
  return result;
}

uint64_t CGFontCopyPath(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 232))(*(result + 112));
  }

  return result;
}

int CGFontGetLeading(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    LODWORD(font_info) = font_info[5];
  }

  return font_info;
}

CGFloat CGFontGetItalicAngle(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    return font_info[7];
  }

  else
  {
    return 0.0;
  }
}

CGFloat CGFontGetStemV(CGFontRef font)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  Descriptor = CGFontGetDescriptor(font, v3);
  result = *&v4;
  if (!Descriptor)
  {
    return 0.0;
  }

  return result;
}

BOOL CGFontGetDescriptor(void *a1, uint64_t a2)
{
  font_info = get_font_info(a1);
  v5 = font_info;
  if (font_info)
  {
    v6 = *(font_info + 12);
    v7.i64[0] = v6;
    v7.i64[1] = SHIDWORD(v6);
    v18 = vdupq_n_s64(0x408F400000000000uLL);
    *&v16 = *(font_info + 2);
    v17 = vdupq_lane_s64(v16, 0);
    *(a2 + 32) = vrndaq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_s64(v7), v18), v17));
    *(a2 + 48) = round(*(font_info + 6) * 1000.0 / *&v16);
    (*(a1[2] + 136))(a1[14], a2 + 64, a2 + 72);
    v8 = *(v5 + 8);
    v9.f64[0] = *(a2 + 72);
    v9.f64[1] = *(v5 + 9);
    *(a2 + 72) = vrndaq_f64(vdivq_f64(vmulq_f64(v9, v18), v17));
    *(a2 + 88) = round(v8 * 1000.0 / *&v16);
    *(a2 + 96) = 0;
    v7.i64[0] = *(v5 + 5);
    v7.i64[1] = *(v5 + 7);
    *(a2 + 104) = vrndaq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_s64(v7), v18), v17));
    v10.f64[0] = *(v5 + 7);
    v10.f64[1] = *(a2 + 64);
    *(a2 + 56) = vrndaq_f64(vdivq_f64(vmulq_f64(v10, v18), v17));
    v11.f64[0] = (*(a1[2] + 120))(a1[14]);
    v11.f64[1] = v12;
    v14.f64[1] = v13;
    *a2 = vrndaq_f64(vdivq_f64(vmulq_f64(v11, v18), v17));
    *(a2 + 16) = vrndaq_f64(vdivq_f64(vmulq_f64(v14, v18), v17));
  }

  return v5 != 0;
}

uint64_t CGFontIsFixedPitch(void *a1)
{
  font_info = get_font_info(a1);
  if (font_info)
  {
    v2 = font_info[48];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t CGFontIsItalic(void *a1)
{
  font_info = get_font_info(a1);
  if (font_info)
  {
    v2 = font_info[49];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *CGFontGetVMetrics(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  explicit = atomic_load_explicit(a1 + 7, memory_order_acquire);
  if (!explicit)
  {
    explicit = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    if (((*(a1[2] + 128))(a1[14], explicit) & 1) == 0)
    {
      *explicit = 0;
      explicit[1] = 0;
    }

    v3 = 0;
    atomic_compare_exchange_strong(a1 + 7, &v3, explicit);
    if (v3)
    {
      free(explicit);
      return v3;
    }
  }

  return explicit;
}

uint64_t CGFontGetPostScriptName(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 152))(*(result + 112));
  }

  return result;
}

const __CFLocale *CGFontCopyLocalizedName(uint64_t a1, uint64_t a2, __CFString *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  name_id_for_key = get_name_id_for_key(a3);
  if (name_id_for_key == -1)
  {
    return 0;
  }

  v6 = name_id_for_key;
  name_table = get_name_table(a1);
  if (!name_table)
  {
    return 0;
  }

  return CGFontNameTableCopyNameForLocale(name_table, a2, v6);
}

uint64_t CGFontIsBitmapOnly(void *a1)
{
  font_info = get_font_info(a1);
  if (font_info)
  {
    v2 = font_info[104];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t CGFontGetIdentifier(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    atomic_compare_exchange_strong_explicit((a1 + 24), &v1, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
    return *(a1 + 24);
  }

  return v1;
}

uint64_t CGFontCopyCharacterSet(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 240))(*(result + 112));
  }

  return result;
}

uint64_t CGSReleaseRegion(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }

  return 0;
}

uint64_t CGSNewRegionWithRect(double *a1, void *a2)
{
  if (!a2)
  {
    return 1001;
  }

  if (a1)
  {
    v3 = CGRegionCreateWithRect(*a1, a1[1], a1[2], a1[3]);
  }

  else
  {
    if (CGRegionGetTypeID_initOnce != -1)
    {
      dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
    }

    v3 = &__kCGRegionEmptyRegion;
  }

  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 1000;
  }
}

uint64_t CGSGetRegionBounds(uint64_t a1, uint64_t a2)
{
  *a2 = CGRegionGetBoundingBox(a1);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return 0;
}

uint64_t CGSOffsetRegion(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10)
{
  if (!a2)
  {
    return 1001;
  }

  if (a1)
  {
    v11 = CGRegionCreateWithOffset(a1, a9, a10, a2, a3, a4, a5, a6, a7, a8);
    *a2 = v11;
    if (v11)
    {
      return 0;
    }

    else
    {
      return 1000;
    }
  }

  else
  {
    *a2 = 0;
    return 1001;
  }
}

BOOL CGSRegionIsEmpty(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  return v1 == &the_empty_shape || *(v1 + 4 * *(v1 + 4)) == 0x7FFFFFFF;
}

uint64_t CGSTransformRegion(uint64_t *a1, double *a2, uint64_t **a3, float a4)
{
  if (!a3)
  {
    return 1001;
  }

  v7 = a1;
  if (!region_check(a1))
  {
    v7 = 0;
    result = 1001;
    goto LABEL_107;
  }

  if (!a2)
  {
    if (!v7)
    {
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  v15 = v7[2];
  if (v15 == &the_empty_shape)
  {
LABEL_93:
    CFRetain(v7);
LABEL_106:
    result = 0;
    goto LABEL_107;
  }

  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v21 = a2[4];
  v20 = a2[5];
  v22 = v18 == 0.0 && v17 == 0.0;
  if (!v22 || v16 != 1.0)
  {
    goto LABEL_12;
  }

  if (v19 == 1.0)
  {
    if (v21 == 0.0 && v20 == 0.0)
    {
      goto LABEL_93;
    }

    v77 = v21;
    v78 = v20;
    v76 = CGRegionCreateWithOffset(v7, v77, v78, v8, v9, v10, v11, v12, v13, v14);
LABEL_105:
    v7 = v76;
    goto LABEL_106;
  }

  if (v19 == -1.0)
  {
    v74 = floor(v20);
    if (floor(v21) == v21 && v74 == v20)
    {
      v73 = shape_reverse_y(v7[2], 1, -1, v21, v20);
      if (v73)
      {
LABEL_103:
        v76 = region_create_with_shape(v73, v66, v67, v68, v69, v70, v71, v72);
        goto LABEL_105;
      }

      v15 = v7[2];
    }
  }

LABEL_12:
  v24 = malloc_type_malloc(0x38uLL, 0x1050040CAC2EC8CuLL);
  v25 = v24;
  *v24 = 0;
  *(v24 + 4) = xmmword_18439CC20;
  *(v24 + 20) = vneg_f32(0x100000001);
  *(v24 + 5) = 0;
  *(v24 + 6) = 0;
  *(v24 + 4) = 0;
  if (v15 != &the_empty_shape && *(v15 + 4 * *(v15 + 4)) != 0x7FFFFFFF)
  {
    *(v24 + 1) = 0;
    *(v24 + 4) = v15;
    *(v24 + 5) = v15 + 8;
  }

  v80 = 0;
  v81 = 0;
  v79 = -v16;
  v26 = &the_empty_shape;
  while (shape_enum_next(v25, &v81 + 1, &v81, &v80 + 1, &v80))
  {
    v27 = SHIDWORD(v81);
    if (v22)
    {
      v28 = v21 + v16 * v27;
      v29 = v21 + v16 * SHIDWORD(v80);
      v30 = v20 + v19 * v81;
      v31 = v20 + v19 * v80;
      if (v28 <= v29)
      {
        v32 = v21 + v16 * v27;
      }

      else
      {
        v32 = v21 + v16 * SHIDWORD(v80);
      }

      if (v28 <= v29)
      {
        v33 = v21 + v16 * SHIDWORD(v80);
      }

      else
      {
        v33 = v28;
      }

      if (v30 > v31)
      {
        v34 = v20 + v19 * v80;
      }

      else
      {
        v34 = v20 + v19 * v81;
      }

      if (v30 > v31)
      {
        v35 = v20 + v19 * v81;
      }

      else
      {
        v35 = v20 + v19 * v80;
      }

      goto LABEL_73;
    }

    v36 = (HIDWORD(v80) - HIDWORD(v81));
    v37 = (v80 - v81);
    v38 = v21 + v18 * v81 + v16 * v27;
    v39 = v20 + v19 * v81 + v17 * v27;
    v40 = v38 + v16 * v36;
    v41 = v39 + v17 * v36;
    if (v40 > v38)
    {
      v42 = v38 + v16 * v36;
    }

    else
    {
      v42 = v38;
    }

    if (v40 >= v38)
    {
      v43 = v38;
    }

    else
    {
      v43 = v38 + v16 * v36;
    }

    if (v40 >= v38)
    {
      v38 = v42;
    }

    if (v41 > v39)
    {
      v44 = v39 + v17 * v36;
    }

    else
    {
      v44 = v39;
    }

    if (v41 >= v39)
    {
      v45 = v39;
    }

    else
    {
      v45 = v39 + v17 * v36;
    }

    if (v41 >= v39)
    {
      v46 = v44;
    }

    else
    {
      v46 = v39;
    }

    v47 = v40 + v18 * v37;
    v48 = v41 + v19 * v37;
    if (v47 > v38)
    {
      v49 = v40 + v18 * v37;
    }

    else
    {
      v49 = v38;
    }

    if (v47 >= v43)
    {
      v32 = v43;
    }

    else
    {
      v32 = v47;
    }

    if (v47 >= v43)
    {
      v50 = v49;
    }

    else
    {
      v50 = v38;
    }

    if (v48 > v46)
    {
      v51 = v48;
    }

    else
    {
      v51 = v46;
    }

    if (v48 >= v45)
    {
      v34 = v45;
    }

    else
    {
      v34 = v48;
    }

    if (v48 >= v45)
    {
      v52 = v51;
    }

    else
    {
      v52 = v46;
    }

    v33 = v47 + v79 * v36;
    if (v33 >= v32)
    {
      if (v33 > v50)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v32 = v47 + v79 * v36;
    }

    v33 = v50;
LABEL_69:
    v35 = v48 + -v17 * v36;
    if (v35 < v34)
    {
      v34 = v35;
LABEL_72:
      v35 = v52;
      goto LABEL_73;
    }

    if (v35 <= v52)
    {
      goto LABEL_72;
    }

LABEL_73:
    v53 = ceil(v32 + -0.00390625);
    v54 = floor(v33 + 0.00390625);
    v55 = ceil(v34 + -0.00390625);
    v56 = floor(v35 + 0.00390625);
    v57 = floor(v32 + 0.00390625);
    v58 = ceil(v33 + -0.00390625);
    v59 = floor(v34 + 0.00390625);
    v60 = ceil(v35 + -0.00390625);
    if (a4 < 0.0)
    {
      v57 = v53;
      v58 = v54;
      v59 = v55;
      v60 = v56;
    }

    v61 = v59;
    LODWORD(v81) = v59;
    HIDWORD(v81) = v57;
    v62 = v60;
    LODWORD(v80) = v60;
    HIDWORD(v80) = v58;
    if (v57 < v58 && v61 < v62)
    {
      v64 = shape_union_with_bounds(v26, v57, v61, v58, v62);
      if (v26 != &the_empty_shape)
      {
        free(v26);
      }
    }

    else
    {
      v64 = v26;
    }

    v26 = v64;
    if (!v64)
    {
      free(v25);
      if (CGRegionGetTypeID_initOnce != -1)
      {
        dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
      }

      result = 1000;
      goto LABEL_111;
    }
  }

  free(v25);
  if (v26 != &the_empty_shape)
  {
    v73 = v26;
    goto LABEL_103;
  }

  if (CGRegionGetTypeID_initOnce != -1)
  {
    dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
  }

  result = 0;
LABEL_111:
  v7 = &__kCGRegionEmptyRegion;
LABEL_107:
  *a3 = v7;
  return result;
}

void sub_1842BED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19381(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1842BF4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void path_reverse_release_info(void **a1)
{
  path_free(a1[3]);

  free(a1);
}

unsigned __int8 **path_reverse_end(unsigned __int8 **result, uint64_t a2)
{
  if (*(result + 16) == 1)
  {
    v3 = result;
    v7 = *result;
    if (a2)
    {
      (*(a2 + 24))(*(a2 + 8), 0, &v7, *(a2 + 48));
    }

    result = path_iterator_unrollpath(a2, v3 + 3);
    *(v3 + 16) = 0;
  }

  if (a2)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 48);

      return v4(v5, v6);
    }
  }

  return result;
}

uint64_t path_reverse_iterate(uint64_t result, int a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        result = path_add((result + 24), 2u, a3, a4, a5, a6, a7, a8);
        *result = *a3;
        *(result + 16) = *v10;
        v11 = a3[1];
        break;
      case 3:
        result = path_add((result + 24), 3u, a3, a4, a5, a6, a7, a8);
        *result = a3[1];
        *(result + 16) = *a3;
        *(result + 32) = *v10;
        v11 = a3[2];
        break;
      case 4:
        if (*(result + 16) == 1)
        {
          v12 = *result;
          if (a4)
          {
            (*(a4 + 24))(*(a4 + 8), 0, &v12, *(a4 + 48));
            path_iterator_unrollpath(a4, (v10 + 24));
            result = (*(a4 + 24))(*(a4 + 8), 4, 0, *(a4 + 48));
          }

          else
          {
            result = path_iterator_unrollpath(0, (result + 24));
          }

          *(v10 + 16) = 0;
        }

        return result;
      default:
LABEL_22:
        abort();
    }

    *v10 = v11;
    *(v10 + 16) = 1;
    return result;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      result = path_add((result + 24), 1u, a3, a4, a5, a6, a7, a8);
      *result = *v10;
      *v10 = *a3;
      *(v10 + 16) = 1;
      return result;
    }

    goto LABEL_22;
  }

  if (*(result + 16) == 1)
  {
    v12 = *result;
    if (a4)
    {
      (*(a4 + 24))(*(a4 + 8), 0, &v12, *(a4 + 48));
    }

    result = path_iterator_unrollpath(a4, (v10 + 24));
    *(v10 + 16) = 0;
  }

  *v10 = *a3;
  return result;
}

uint64_t path_reverse_begin(uint64_t result, uint64_t a2, void *a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a3)
  {
    v3 = a3[2];
    if (v3)
    {
      return v3(a3[1], a2, a3[6]);
    }
  }

  return result;
}

double __RIPStyleGaussianBlur_block_invoke()
{
  rips_gb_cs = CGColorSpaceCreateDeviceRGB();
  if (rips_gb_cs)
  {
    *algn_1EA8689E8 = *&off_1EF238420;
    result = *&xmmword_1EF238450;
    *&qword_1EA868A28 = *off_1EF238460;
    *&RIPStyleGaussianBlur_rips_gb_cls = rips_gb_super;
    *(&RIPStyleGaussianBlur_rips_gb_cls + 1) = rips_gb_size;
    qword_1EA8689F0 = rips_gb_release;
    *&xmmword_1EA8689F8 = rips_gb_Create;
    *(&xmmword_1EA8689F8 + 1) = rips_gb_Growth;
    qword_1EA868A08 = rips_gb_ColorSpace;
    qword_1EA868A10 = rips_gb_BltShape;
    *&xmmword_1EA868A18 = rips_gb_BltGlyph;
    *(&xmmword_1EA868A18 + 1) = rips_gb_BltImage;
    qword_1EA868A28 = rips_gb_BltShade;
  }

  return result;
}

uint64_t rips_gb_BltShade(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  v9 = (v8 + 12);
  if (a4)
  {
    v9 = a4;
  }

  if (a5)
  {
    v9 = a5;
  }

  return rips_gb_Draw(a1, a2, a3, a4, v9, 0, 0, 0, a5, a6, a7, a8);
}

uint64_t rips_gb_Draw(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, uint64_t a12)
{
  v73 = *MEMORY[0x1E69E9840];
  v18 = vcvtmd_s64_f64(*(a1 + 104) + 0.5);
  if (v18 > 0)
  {
LABEL_2:
    v54 = 0uLL;
    v53[0] = 0;
    v53[1] = 0;
    if (!a4 || a4 == a5)
    {
      v54 = *a5;
      v20 = 1;
      if (!DWORD2(v54))
      {
        return v20;
      }

      v45 = a9;
      v46 = a12;
      if (!HIDWORD(v54))
      {
        return v20;
      }
    }

    else
    {
      v45 = a9;
      v46 = a12;
      if (!CGSBoundsIntersection(a4, a5, &v54))
      {
        return 1;
      }
    }

    v55[0] = 0uLL;
    if (a3)
    {
      if ((CGSBoundsIntersection((a2 + 12), (a3 + 12), v55) & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      v55[0] = *(a2 + 12);
      if (!DWORD2(v55[0]) || !HIDWORD(v55[0]))
      {
        return 1;
      }
    }

    *&v54 = (v54 + ~v18) | ((DWORD1(v54) + ~v18) << 32);
    *(&v54 + 1) = (DWORD2(v54) - 2 * ~v18) | ((HIDWORD(v54) - 2 * ~v18) << 32);
    *&v55[0] = (LODWORD(v55[0]) + ~v18) | ((DWORD1(v55[0]) + ~v18) << 32);
    *(&v55[0] + 1) = (DWORD2(v55[0]) - 2 * ~v18) | ((HIDWORD(v55[0]) - 2 * ~v18) << 32);
    if (!CGSBoundsIntersection(&v54, v55, v53))
    {
      return 1;
    }

    v27 = *(a2 + 32);
    if ((*v27 & 0x3F0000u) <= 0x80000)
    {
      v29 = (*v27 >> 8) & 0xF;
      if (!v29 || v29 == 3)
      {
LABEL_34:
        v30 = RIPLayerCreate(RIPLayer_ripl_class, v53, 17, v27, *(a2 + 52), v24, v25, v26);
        if (v30)
        {
          v36 = v30;
          v37 = *(v46 + 16);
          v70[0] = *v46;
          v70[1] = v37;
          v38 = *(v46 + 48);
          v70[2] = *(v46 + 32);
          v71 = v38;
          v39 = *(v46 + 64);
          LODWORD(v70[0]) = 2;
          v72 = v39;
          *&v71 = 0x3FF0000000000000;
          if (a6)
          {
            if ((RIPLayerBltShape(v30, 0, 0, a6, a10, a11, v70, v35) & 1) == 0)
            {
LABEL_52:
              (*(*v36 + 24))(v36);
              return 0;
            }
          }

          else if (a7)
          {
            if ((RIPLayerBltGlyph(v30, 0, 0, a7, a10, a11, 0, v70) & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else if (a8)
          {
            if ((RIPLayerBltImage(v30, 0, 0, a8, v70, v33, v34, v35) & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v40 = v45;
            if (v45 && (RIPLayerBltShade(v30, 0, 0, v45, a10, v70, v34, v35) & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          v41 = RIPLayerGaussianBlur(v36, *(a2 + 52), v31, v40, v32, v33, v34, v35, *(a1 + 104));
          (*(*v36 + 24))(v36);
          if (v41)
          {
            v56 = xmmword_184562C90;
            v57 = unk_184562CA0;
            v60 = xmmword_184562CD0;
            v61 = unk_184562CE0;
            v58 = xmmword_184562CB0;
            v59 = unk_184562CC0;
            v64 = xmmword_184562D10;
            v65 = unk_184562D20;
            v62 = xmmword_184562CF0;
            v63 = unk_184562D00;
            v69 = 0;
            v67 = xmmword_184562D40;
            v68 = xmmword_184562D50;
            v66 = xmmword_184562D30;
            memset(v55, 0, sizeof(v55));
            *&v56 = *(v41 + 4);
            DWORD2(v57) = *(v41 + 5);
            DWORD2(v56) = DWORD2(v57);
            HIDWORD(v57) = *(v41 + 6);
            *&v57 = 0;
            HIDWORD(v56) = HIDWORD(v57);
            LODWORD(v58) = *(v41 + 12);
            *(&v58 + 1) = *(v41 + 7);
            *(&v59 + 1) = *(v41 + 9);
            LODWORD(v59) = *(v41 + 16);
            v60 = 0uLL;
            v51 = 0;
            v47 = *(v41 + 12);
            v52 = 0;
            v49 = 0;
            v50 = 0;
            v48 = v55;
            v20 = RIPLayerBltImage(a2, a3, v53, &v47, v46, v42, v43, v44);
            (*(*v41 + 24))(v41);
            return v20;
          }
        }

        return 0;
      }

      v28 = 6;
    }

    else
    {
      v28 = 20;
    }

    v27 = RIPGetDepthForLayerFormat(v28, v21, v22, v27, v23, v24, v25, v26);
    goto LABEL_34;
  }

  if (a6)
  {

    return RIPLayerBltShape(a2, a3, a4, a6, a10, a11, a12, a12);
  }

  else if (a7)
  {

    return RIPLayerBltGlyph(a2, a3, a4, a7, a10, a11, 0, a12);
  }

  else if (a8)
  {

    return RIPLayerBltImage(a2, a3, a4, a8, a12, 0, 0, a12);
  }

  else
  {
    if (!a9)
    {
      goto LABEL_2;
    }

    return RIPLayerBltShade(a2, a3, a4, a9, a10, a12, 0, a12);
  }
}

uint64_t rips_gb_BltImage(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  v8 = a5;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = (v9 + 12);
  if (a4)
  {
    v10 = a4;
  }

  if (!a5)
  {
    a5 = v10;
  }

  return rips_gb_Draw(a1, a2, a3, a4, a5, 0, 0, v8, 0, a6, a7, a8);
}

uint64_t rips_gb_BltGlyph(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, uint64_t a6, int32x2_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a5;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  v12 = (v11 + 12);
  if (a4)
  {
    v12 = a4;
  }

  if (!a5)
  {
    a5 = v12;
  }

  return rips_gb_Draw(a1, a2, a3, a4, a5, 0, v10, 0, 0, a6, a7, a10);
}

uint64_t rips_gb_BltShape(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = (v9 + 12);
  if (a4)
  {
    v10 = a4;
  }

  if (a5)
  {
    v11 = (a5 + 12);
  }

  else
  {
    v11 = v10;
  }

  return rips_gb_Draw(a1, a2, a3, a4, v11, a5, 0, 0, 0, a6, a7, a8);
}

BOOL rips_gb_Growth(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    *a2 = *(a1 + 88);
  }

  return v2 != 0;
}

float *rips_gb_Create(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  v8 = (*(a1 + 8))();
  v9 = malloc_type_calloc(1uLL, v8, 0xF8F3ED2FuLL);
  v10 = v9;
  if (v9)
  {
    *v9 = a1;
    *(v9 + 1) = 1;
    *(v9 + 10) = CGGStateCreateCopy(a4);
    v11 = a2 + 32;
    if (!a2)
    {
      v11 = 0;
    }

    if (a3)
    {
      v12 = sqrt(fabs(*a3 * a3[3] - a3[1] * a3[2]));
    }

    else
    {
      v12 = 1.0;
    }

    v13 = v12 * *(v11 + 8);
    if (v13 > 4194300.0)
    {
      v13 = 4194300.0;
    }

    v10[26] = v13;
    *(v10 + 3) = 2289;
    v14 = vcvtms_s32_f32(v13 + 0.5);
    *(v10 + 22) = ~v14;
    *(v10 + 23) = ~v14;
    v15 = 2 * v14 + 2;
    *(v10 + 24) = v15;
    *(v10 + 25) = v15;
  }

  return v10;
}

void rips_gb_release(_DWORD *a1)
{
  v2 = a1[2] - 1;
  a1[2] = v2;
  if (!v2)
  {
    v4 = *(a1 + 10);
    if (v4)
    {
      CGGStateRelease(v4);
    }

    free(a1);
  }
}

void CGPDFXObjectFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  switch(v1)
  {
    case 2:
      CGPDFGroupRelease(*(a1 + 96));
      break;
    case 1:
      v2 = *(a1 + 96);
      if (v2)
      {
LABEL_5:
        CFRelease(v2);
      }

      break;
    case 0:
      v2 = *(a1 + 96);
      if (v2)
      {
        goto LABEL_5;
      }

      break;
  }
}

uint64_t CPTextServicesAppendTextLine(__CFString *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int *a6)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a4 < 1)
  {
    v14 = a3;
    return v14 + 2;
  }

  v10 = 0;
  if (a3 + a4 <= a3 + 1)
  {
    v11 = a3 + 1;
  }

  else
  {
    v11 = a3 + a4;
  }

  for (i = 24 * a3 + 16; ; i += 24)
  {
    LOBYTE(v13) = 0;
    v14 = a3 + v10;
    if (a2 && (v14 & 0x8000000000000000) == 0)
    {
      if (a2[6] <= v14)
      {
        goto LABEL_12;
      }

      v13 = a2[3];
      if (v13)
      {
        LODWORD(v13) = (*(v13 + i) >> 3) & 1;
      }
    }

    if (v13)
    {
      break;
    }

LABEL_12:
    if (a4 - 1 == v10)
    {
      break;
    }

    ++v10;
    if (a3 + v10 >= a3 + a4)
    {
      v14 = v11;
      return v14 + 2;
    }
  }

  v15 = v10 + 1;
  if (v10 < 100)
  {
    v16 = &v68;
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = malloc_type_malloc(2 * v15, 0x1000040BDFB0063uLL);
LABEL_20:
    v17 = 0;
    v18 = 24 * a3;
    do
    {
      LOWORD(v19) = 0;
      if (a2 && ((a3 + v17) & 0x8000000000000000) == 0)
      {
        if (a2[6] <= a3 + v17)
        {
          LOWORD(v19) = 0;
        }

        else
        {
          v19 = a2[3];
          if (v19)
          {
            v19 = *(v19 + v18);
            if (v19)
            {
              LOWORD(v19) = *(v19 + 8);
            }
          }
        }
      }

      *&v16[2 * v17++] = v19;
      v18 += 24;
    }

    while (v10 + 1 != v17);
  }

  v67 = v14 - a3;
  v62 = a6;
  v65 = v14 - a3 + 1;
  v20 = malloc_type_malloc(6 * v15, 0x1000040BDFB0063uLL);
  if (!ubidi_open())
  {
    ResultLength = 0;
    v58 = 0;
    v56 = 0;
    goto LABEL_33;
  }

  ubidi_setReorderingMode();
  ubidi_setContext();
  ubidi_setPara();
  ubidi_getLength();
  ubidi_countRuns();
  v56 = ubidi_writeReordered();
  ProcessedLength = ubidi_getProcessedLength();
  v58 = malloc_type_malloc(4 * ProcessedLength, 0x100004052888210uLL);
  ubidi_getVisualMap();
  ResultLength = ubidi_getResultLength();
  ubidi_close();
  if (v56 <= 0)
  {
LABEL_33:
    free(v20);
    v20 = 0;
  }

  if (v67 >= 100)
  {
    free(v16);
  }

  if (v56 >= 1)
  {
    chars = v20;
    v21 = a2[7];
    RangeInCharacterRange = CPMultiUnicodesGetRangeInCharacterRange(v21, a3, v65);
    if (v58)
    {
      v24 = v23;
      if (v23 >= 1 && ResultLength >= 1)
      {
        v25 = RangeInCharacterRange;
        v59 = a5;
        v26 = malloc_type_malloc(8 * v65, 0x100004000313F17uLL);
        v27 = v26;
        if ((v67 & 0x8000000000000000) == 0)
        {
          memset(v26, 255, 8 * v10 + 8);
        }

        v28 = v25 + v24;
        do
        {
          if (v21 && (v29 = *(v21 + 24)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v29, v25)) != 0)
          {
            v31 = *ValueAtIndex;
          }

          else
          {
            v31 = 0;
          }

          if (v31 >= a3 && v31 <= v14)
          {
            v27[v31 - a3] = v25;
          }

          ++v25;
        }

        while (v25 < v28);
        v32 = 0;
        v33 = 0;
        v34 = 1;
        v35 = a1;
        while (1)
        {
          v36 = v32 + v33;
          v37 = v58[v32 + v33];
          if ((v37 & 0x80000000) != 0)
          {
            break;
          }

          if (v67 < v37)
          {
            break;
          }

          v38 = v27[v37];
          if (v38 == -1)
          {
            break;
          }

          if (!v21 || (v39 = *(v21 + 24)) == 0 || (v40 = CFArrayGetValueAtIndex(v39, v38)) == 0)
          {
            v52 = v35;
            v51 = 0;
            v53 = 0;
            goto LABEL_74;
          }

          v41 = v35;
          v42 = *(v40 + 2);
          CFStringAppendCharacters(v41, *(v40 + 3), v42);
          if (v42 >= 2)
          {
            v60 = v33 + ResultLength + ~v36;
            v61 = v33 + v42 - 1;
            v43 = malloc_type_realloc(v58, 4 * (v61 + ResultLength), 0x100004052888210uLL);
            v58 = v43;
            if (v60)
            {
              memmove(&v43[4 * v36 + 4 * v42], &v43[4 * v36 + 4], 4 * v60);
            }

            if (v36 + 1 < v42 + v36)
            {
              v44 = 0;
              v45 = v58[v36];
              v46 = (v42 + 2) & 0xFFFFFFFFFFFFFFFCLL;
              v47 = vdupq_n_s64(v42 - 2);
              v48 = 4 * (v33 + v34) + 4;
              v35 = a1;
              do
              {
                v49 = vdupq_n_s64(v44);
                v50 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_18439C670)));
                if (vuzp1_s16(v50, *v47.i8).u8[0])
                {
                  *(v58 + v48 - 4) = v45;
                }

                if (vuzp1_s16(v50, *&v47).i8[2])
                {
                  *(v58 + v48) = v45;
                }

                if (vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_18439C760)))).i32[1])
                {
                  *(v58 + v48 + 4) = v45;
                  *(v58 + v48 + 8) = v45;
                }

                v44 += 4;
                v48 += 16;
              }

              while (v46 != v44);
              v33 = v61;
              goto LABEL_75;
            }

            v33 = v33 + v42 - 1;
          }

          v35 = a1;
LABEL_75:
          ++v32;
          ++v34;
          if (v32 == ResultLength)
          {
            ResultLength += v33;
            free(v27);
            a5 = v59;
            v54 = chars;
            goto LABEL_80;
          }
        }

        v51 = &chars[v32];
        v52 = v35;
        v53 = 1;
LABEL_74:
        CFStringAppendCharacters(v52, v51, v53);
        goto LABEL_75;
      }
    }

    v54 = v20;
    CFStringAppendCharacters(a1, v20, v56);
LABEL_80:
    free(v54);
  }

  if (v62)
  {
    *v62 = ResultLength;
  }

  if (a5)
  {
    *a5 = v58;
  }

  else
  {
    free(v58);
  }

  return v14 + 2;
}

FILE *PDFLinearizer::createTempFile(const char *a1, std::string *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (CGGetTempDirPath_predicate != -1)
  {
    dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
  }

  if (!CGGetTempDirPath_tempDirPath)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    _CGExceptionDescription(2, "strlen(tempDir) == 0", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Linearized/PDFLinearizer.cc", 965, 0, &__dst, v12);
    std::logic_error::logic_error(exception, &__dst);
    exception->__vftable = (MEMORY[0x1E69E55A8] + 16);
    __cxa_throw(exception, off_1E6E04878, MEMORY[0x1E69E5270]);
  }

  strncpy(&__dst, &CGGetTempDirPath_tempDirPath, 0x400uLL);
  v4 = strlen(&__dst);
  if (__dst.__r_.__value_.__s.__data_[v4 - 1] != 47)
  {
    strncat(&__dst, "/", 1023 - v4);
  }

  if (a1)
  {
    v5 = strlen(&__dst);
    strncat(&__dst, a1, 1023 - v5);
  }

  v6 = strlen(&__dst);
  strncat(&__dst, "XXXXXX", 1023 - v6);
  v7 = strlen(&__dst);
  strncat(&__dst, ".pdf", 1023 - v7);
  v8 = mkstemps(&__dst, 4);
  if (v8 == -1)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "mkstemps failed");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::string::__assign_external(a2, &__dst);
  return fdopen(v8, "wb");
}

void std::vector<PDFIndirectObject>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:fe200100]<PDFIndirectObject,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<PDFLinearizerPageInfo>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v6 = *(v4 - 6);
        if (v6)
        {
          *(v4 - 5) = v6;
          operator delete(v6);
        }

        v4 -= 72;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:fe200100]<PDFIndirectObject,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

void PDFLinearizer::endDocument(PDFLinearizer *this, CGDataConsumer *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  context.__r_.__value_.__r.__words[0] = &unk_1EF241620;
  p_context = &context;
  v26[4] = PDFWriterCreate(a2);
  std::__function::__value_func<void ()(PDFWriter *)>::__value_func[abi:fe200100](&v27, &context);
  std::__function::__value_func<void ()(PDFWriter *)>::~__value_func[abi:fe200100](&context);
  v3 = this + 24;
  if (*(this + 47) < 0)
  {
    v3 = *v3;
  }

  v4 = fopen(v3, "rb");
  context.__r_.__value_.__r.__words[0] = &unk_1EF2416B0;
  p_context = &context;
  v25 = v4;
  std::__function::__value_func<void ()(__sFILE *)>::__value_func[abi:fe200100](v26, &context);
  std::__function::__value_func<void ()(__sFILE *)>::~__value_func[abi:fe200100](&context);
  if (v25)
  {
    if (*this)
    {
      v5 = *(*this + 504);
      if (v5)
      {
        v24[1] = 0;
        v24[0] = 0;
        v23 = v24;
        v7 = *(this + 6);
        v6 = *(this + 7);
        while (v7 != v6)
        {
          std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v23, *v7);
          v7 += 9;
        }

        context.__r_.__value_.__r.__words[0] = 0;
        context.__r_.__value_.__l.__size_ = &context;
        context.__r_.__value_.__r.__words[2] = 0x6002000000;
        p_context = __Block_byref_object_copy__19580;
        v19 = __Block_byref_object_dispose__19581;
        v8 = *(this + 23);
        v9 = *(this + 24);
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        v20[0] = v20;
        v20[1] = v20;
        v21 = 0u;
        v22 = 0u;
        theData = (&v21 + 8);
        LOBYTE(v29) = 0;
        v12 = v10 - v11;
        if (v10 != v11)
        {
          if ((v12 >> 4) <= 0x492492492492492)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>(v12 >> 4);
          }

          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        if (v8 != v9)
        {
          if (*v8 <= v8[1])
          {
            v13 = v8[1];
          }

          else
          {
            v13 = *v8;
          }

          if (v13 >= 0x6DB6DB6DB6DB6DB7 * ((v22 - *(&v21 + 1)) >> 3))
          {
            std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::resize(&v21 + 1, v13 + 1);
          }

          operator new();
        }

        operator new();
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _CGExceptionDescription(0, "mainXRefTable", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Linearized/PDFLinearizer.cc", 263, 0, &context, v16);
    std::logic_error::logic_error(exception, &context);
    exception->__vftable = (MEMORY[0x1E69E55A8] + 16);
    __cxa_throw(exception, off_1E6E04878, MEMORY[0x1E69E5270]);
  }

  v15 = __cxa_allocate_exception(0x10uLL);
  _CGExceptionDescription(0, "srcFile.get()", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Linearized/PDFLinearizer.cc", 260, 0, &context, v16);
  std::logic_error::logic_error(v15, &context);
  v15->__vftable = (MEMORY[0x1E69E55A8] + 16);
  __cxa_throw(v15, off_1E6E04878, MEMORY[0x1E69E5270]);
}

void sub_1842C4ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  PDFIndirectObject::~PDFIndirectObject(&STACK[0x368]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
  }

  std::__tree<unsigned long>::destroy(a56);
  std::__tree<unsigned long>::destroy(STACK[0x2A8]);
  _Block_object_dispose(&STACK[0x428], 8);
  v61 = STACK[0x450];
  if (STACK[0x450])
  {
    STACK[0x458] = v61;
    operator delete(v61);
  }

  _Block_object_dispose(&a60, 8);
  boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::~adjacency_list(a21);
  std::__tree<unsigned long>::destroy(STACK[0x2D0]);
  std::unique_ptr<__sFILE,std::function<void ()(__sFILE*)>>::reset[abi:fe200100](&STACK[0x318]);
  std::__function::__value_func<void ()(__sFILE *)>::~__value_func[abi:fe200100](&STACK[0x320]);
  std::unique_ptr<PDFWriter,std::function<void ()(PDFWriter*)>>::reset[abi:fe200100](&STACK[0x340]);
  std::__function::__value_func<void ()(PDFWriter *)>::~__value_func[abi:fe200100](&STACK[0x348]);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(PDFWriter *)>::__value_func[abi:fe200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(PDFWriter *)>::~__value_func[abi:fe200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(__sFILE *)>::__value_func[abi:fe200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(__sFILE *)>::~__value_func[abi:fe200100](uint64_t a1)
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

std::string *PDFLinearizer::emitLinearizationDict(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = *MEMORY[0x1E69E9840];
  if (a1[7] == a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    _CGExceptionDescription(3, "_pageInfo.size() > 0", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Linearized/PDFLinearizer.cc", 776, 0, &v89, v84);
    std::logic_error::logic_error(exception, &v89);
    exception->__vftable = (MEMORY[0x1E69E55A8] + 16);
    __cxa_throw(exception, off_1E6E04878, MEMORY[0x1E69E5270]);
  }

  v8 = a4;
  v88 = 0;
  PDFWriterBeginObject(a2, a1[12], a1 + 33, a4, a5, a6, a7, a8);
  PDFWriterPrintf(a2, "<<", v12, v13, v14, v15, v16, v17, v84);
  PDFWriterPrintf(a2, "/Linearized 1.0", v18, v19, v20, v21, v22, v23, v85);
  PDFWriterPrintf(a2, "/L %O", v24, v25, v26, v27, v28, v29, a3);
  PDFWriterPrintf(a2, "/H [%O %d]", v30, v31, v32, v33, v34, v35, a1[38]);
  v42 = a1[6];
  if (a1[7] == v42 || (PDFWriterPrintf(a2, "/O %d", v36, v37, v38, v39, v40, v41, *v42), v49 = a1[6], a1[7] == v49))
  {
    __break(1u);
  }

  PDFWriterPrintf(a2, "/E %O", v43, v44, v45, v46, v47, v48, *(v49 + 16));
  PDFWriterPrintf(a2, "/N %d", v50, v51, v52, v53, v54, v55, 0x8E38E38E38E38E39 * ((a1[7] - a1[6]) >> 3));
  PDFWriterPrintf(a2, "/T %O", v56, v57, v58, v59, v60, v61, a1[37]);
  PDFWriterPrintf(a2, ">>", v62, v63, v64, v65, v66, v67, v86);
  result = PDFWriterEndObject(a2, &v88, v68, v69, v70, v71, v72, v73);
  if ((v8 & 1) == 0)
  {
    v75 = 2 * vcvtmd_u64_f64(log10(a3)) + 20;
    v90 = 0;
    if (v75 >= 0x101)
    {
      operator new[]();
    }

    memset(&v89, 32, v75);
    if (a2)
    {
      if (v90)
      {
        v82 = v90;
      }

      else
      {
        v82 = &v89;
      }

      CGDataConsumerPutBytes(*a2, v82, v75);
    }

    PDFWriterPrintf(a2, "\n", v76, v77, v78, v79, v80, v81, v87);
    result = v90;
    if (v90)
    {
      return MEMORY[0x1865EE610](v90, 0x1000C4077774924);
    }
  }

  return result;
}

void PDFLinearizer::emitFirstPageTrailer(uint64_t a1, _BYTE **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 320))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Trailer dict is NULL");
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  PDFWriterPrintf(a2, "trailer\n", a3, a4, a5, a6, a7, a8, v97);
  PDFWriterPrintf(a2, "<<", v10, v11, v12, v13, v14, v15, v98);
  v22 = *(a1 + 88);
  if (v22)
  {
    v22 = (*(v22 + 24) - *(v22 + 16)) >> 4;
  }

  v23 = *(a1 + 104);
  if (v23)
  {
    v23 = (*(v23 + 24) - *(v23 + 16)) >> 4;
  }

  PDFWriterPrintf(a2, "/Size %d", v16, v17, v18, v19, v20, v21, v23 + v22);
  v105 = 0;
  if (CGCFDictionaryGetNumber(*(a1 + 320), @"/Root", kCFNumberLongType, &v105))
  {
    PDFWriterPrintf(a2, "/Root %R", v24, v25, v26, v27, v28, v29, *(a1 + 96) + 1);
  }

  if (CGCFDictionaryGetNumber(*(a1 + 320), @"/Encrypt", kCFNumberLongType, &v105))
  {
    v30 = std::map<unsigned long,std::reference_wrapper<PDFIndirectObject>>::at(*(a1 + 240), v105);
    PDFWriterPrintf(a2, "/Encrypt %R", v31, v32, v33, v34, v35, v36, *v30);
  }

  if (CGCFDictionaryGetNumber(*(a1 + 320), @"/Info", kCFNumberLongType, &v105))
  {
    v37 = std::map<unsigned long,std::reference_wrapper<PDFIndirectObject>>::at(*(a1 + 240), v105);
    PDFWriterPrintf(a2, "/Info %R", v38, v39, v40, v41, v42, v43, *v37);
  }

  Value = CFDictionaryGetValue(*(a1 + 320), @"/ID");
  if (Value)
  {
    v51 = Value;
    PDFWriterPrintf(a2, "/ID [", v45, v46, v47, v48, v49, v50, v99);
    Length = CFDataGetLength(v51);
    CFDataGetBytePtr(v51);
    PDFWriterPrintf(a2, "%X", v53, v54, v55, v56, v57, v58, Length);
    v59 = CFDataGetLength(v51);
    CFDataGetBytePtr(v51);
    PDFWriterPrintf(a2, "%X", v60, v61, v62, v63, v64, v65, v59);
    PDFWriterPrintf(a2, "]", v66, v67, v68, v69, v70, v71, v100);
  }

  PDFWriterPrintf(a2, "/Prev %O", v45, v46, v47, v48, v49, v50, *(a1 + 288));
  PDFWriterPrintf(a2, ">>\n", v72, v73, v74, v75, v76, v77, v101);
  PDFWriterPrintf(a2, "startxref\n", v78, v79, v80, v81, v82, v83, v102);
  PDFWriterPrintf(a2, "0\n", v84, v85, v86, v87, v88, v89, v103);
  PDFWriterPrintf(a2, "%%%%EOF\n", v90, v91, v92, v93, v94, v95, v104);
}

uint64_t std::__function::__value_func<void ()(CGDataConsumer *)>::__value_func[abi:fe200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(CGDataConsumer *)>::~__value_func[abi:fe200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(__CFData *)>::__value_func[abi:fe200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(__CFData *)>::~__value_func[abi:fe200100](uint64_t a1)
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

uint64_t *std::unique_ptr<PDFWriter,std::function<void ()(PDFWriter*)>>::reset[abi:fe200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:fe200100]();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t *std::unique_ptr<CGDataConsumer,std::function<void ()(CGDataConsumer*)>>::reset[abi:fe200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:fe200100]();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t *std::unique_ptr<__CFData,std::function<void ()(__CFData*)>>::reset[abi:fe200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:fe200100]();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t *std::unique_ptr<__sFILE,std::function<void ()(__sFILE*)>>::reset[abi:fe200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:fe200100]();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_8,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_8>,void ()(__sFILE *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_4,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_4>,void ()(CGDataConsumer *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer14emitHintTablesEP17CGPDFHintTableSetP9PDFWriterE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_4,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_4>,void ()(CGDataConsumer *)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_3,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_3>,void ()(CGDataConsumer *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer14emitHintTablesEP17CGPDFHintTableSetP9PDFWriterE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_3,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_3>,void ()(CGDataConsumer *)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_2,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_2>,void ()(__CFData *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer14emitHintTablesEP17CGPDFHintTableSetP9PDFWriterE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_2,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_2>,void ()(__CFData *)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_1,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_1>,void ()(CGDataConsumer *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer14emitHintTablesEP17CGPDFHintTableSetP9PDFWriterE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_1,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_1>,void ()(CGDataConsumer *)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_0,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_0>,void ()(__CFData *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer14emitHintTablesEP17CGPDFHintTableSetP9PDFWriterE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_0,std::allocator<PDFLinearizer::emitHintTables(CGPDFHintTableSet *,PDFWriter *)::$_0>,void ()(__CFData *)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_7,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_7>,void ()(PDFWriter *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_6,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_6>,void ()(CGDataConsumer *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_6,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_6>,void ()(CGDataConsumer *)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_5,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_5>,void ()(__CFData *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_5,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_5>,void ()(__CFData *)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void *std::vector<unsigned long>::assign[abi:fe200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,0>(void *a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    v5 = a1 + 1;
    result = *a1;
LABEL_3:
    *v5 = result;
    return result;
  }

  v6 = a2;
  v7 = 0;
  v8 = a2;
  do
  {
    v9 = v7;
    v10 = v8[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v8[2];
        v12 = *v11 == v8;
        v8 = v11;
      }

      while (!v12);
    }

    ++v7;
    v8 = v11;
  }

  while (v11 != a3);
  v13 = a1[2];
  result = *a1;
  if (v9 >= (v13 - *a1) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v13 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (v9 < 0x1FFFFFFFFFFFFFFFLL)
    {
      v19 = v13 >> 2;
      if (v13 >> 2 <= v7)
      {
        v19 = v9 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      std::vector<unsigned long>::__vallocate[abi:fe200100](a1, v20);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  v15 = a1[1];
  v5 = a1 + 1;
  v14 = v15;
  v16 = v15 - result;
  if (v16 > v9)
  {
    if (a2 != a3)
    {
      do
      {
        *result = v6[4];
        v17 = v6[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v6[2];
            v12 = *v18 == v6;
            v6 = v18;
          }

          while (!v12);
        }

        ++result;
        v6 = v18;
      }

      while (v18 != a3);
    }

    goto LABEL_3;
  }

  if (v16 < 0)
  {
    v25 = a2;
    do
    {
      v26 = *v25;
      if (*v25)
      {
        do
        {
          v23 = v26;
          v26 = v26[1];
        }

        while (v26);
      }

      else
      {
        do
        {
          v23 = v25[2];
          v12 = *v23 == v25;
          v25 = v23;
        }

        while (v12);
      }

      v25 = v23;
    }

    while (!__CFADD__(v16++, 1));
  }

  else if (v14 == result)
  {
    v23 = a2;
  }

  else
  {
    v21 = a2;
    do
    {
      v22 = v21[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v12 = *v23 == v21;
          v21 = v23;
        }

        while (!v12);
      }

      v21 = v23;
    }

    while (v16-- > 1);
  }

  if (v23 != a2)
  {
    do
    {
      *result = v6[4];
      v28 = v6[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v6[2];
          v12 = *v29 == v6;
          v6 = v29;
        }

        while (!v12);
      }

      ++result;
      v6 = v29;
    }

    while (v29 != v23);
  }

  if (v23 != a3)
  {
    do
    {
      *v14 = v23[4];
      v30 = v23[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v23[2];
          v12 = *v31 == v23;
          v23 = v31;
        }

        while (!v12);
      }

      ++v14;
      v23 = v31;
    }

    while (v31 != a3);
  }

  *v5 = v14;
  return result;
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_4,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_4>,void ()(PDFWriter *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_3,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_3>,void ()(CGDataConsumer *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_3,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_3>,void ()(CGDataConsumer *)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_2,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_2>,void ()(__sFILE *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_2,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_2>,void ()(__sFILE *)>::operator()(uint64_t a1, FILE **a2)
{
  fclose(*a2);
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  v3 = v5;
  if (*(v4 + 23) >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  return unlink(v6);
}

void std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_2,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_2>,void ()(__sFILE *)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_2,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_2>,void ()(__sFILE *)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_2,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_2>,void ()(__sFILE *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1EF241740;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_2,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_2>,void ()(__sFILE *)>::~__func(uint64_t a1)
{
  *a1 = &unk_1EF241740;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1865EE610);
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_2,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_2>,void ()(__sFILE *)>::~__func(uint64_t a1)
{
  *a1 = &unk_1EF241740;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void ___ZN13PDFLinearizer11emitCatalogEP9PDFWriter_block_invoke(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  v6 = *(a1 + 40);
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID() && (valuePtr = 0, CFNumberGetValue(cf, kCFNumberLongType, &valuePtr)))
  {
    valuePtr = *std::map<unsigned long,std::reference_wrapper<PDFIndirectObject>>::at(*(v6 + 240), valuePtr);
    PDFWriterPrintf(*(a1 + 48), "%/ %R", v8, v9, v10, v11, v12, v13, a2);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __Block_byref_object_copy__19580(uint64_t a1, void *a2)
{
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  if (a2[9] == a2[8])
  {
LABEL_6:
    v10 = a2[6];
    if (v10 != a2 + 5)
    {
      if (v10[2] <= v10[3])
      {
        v11 = v10[3];
      }

      else
      {
        v11 = v10[2];
      }

      if (v11 >= 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 72) - *(a1 + 64)) >> 3))
      {
        std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::resize((a1 + 64), v11 + 1);
      }

      boost::add_edge<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config>();
    }

    operator new();
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 48;
  while (1)
  {
    std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::resize((a1 + 64), 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3) + 1);
    v8 = a2[8];
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2[9] - v8) >> 3);
    if (v9 <= v6)
    {
      break;
    }

    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    if (v5 == v4)
    {
      break;
    }

    *(v4 + 56 * (0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3) - 1) + 48) = *(v8 + v7);
    ++v6;
    v7 += 56;
    if (v6 >= v9)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void *__Block_byref_object_dispose__19581(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    MEMORY[0x1865EE610](v2, 0xC400A2AC0F1);
  }

  v4 = (a1 + 64);
  std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::__destroy_vector::operator()[abi:fe200100](&v4);

  return std::__list_imp<unsigned long>::clear((a1 + 40));
}

void *__Block_byref_object_copy__15(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

uint64_t ___ZN13PDFLinearizer14collectObjectsEP7__sFILE_block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(*(*(result + 32) + 8) + 64);
  if (0x6DB6DB6DB6DB6DB7 * ((*(*(*(result + 32) + 8) + 72) - v2) >> 3) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = (v2 + 56 * a2);
    v6 = *v3;
    v4 = v3 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = result;
      v8 = (result + 64);
      do
      {
        v9 = v5[4];
        v10 = *(*(v7 + 40) + 8);
        v13 = *(v10 + 48);
        v11 = v10 + 48;
        v12 = v13;
        if (!v13)
        {
          goto LABEL_12;
        }

        v14 = v11;
        do
        {
          v15 = *(v12 + 32);
          v16 = v15 >= v9;
          v17 = v15 < v9;
          if (v16)
          {
            v14 = v12;
          }

          v12 = *(v12 + 8 * v17);
        }

        while (v12);
        if (v14 == v11 || v9 < *(v14 + 32))
        {
LABEL_12:
          result = std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(v11 - 8, v9);
          v18 = *v8;
          if (!*v8)
          {
            goto LABEL_20;
          }

          v19 = v8;
          do
          {
            v20 = v18[4];
            v16 = v20 >= v9;
            v21 = v20 < v9;
            if (v16)
            {
              v19 = v18;
            }

            v18 = v18[v21];
          }

          while (v18);
          if (v19 == v8 || v9 < v19[4])
          {
LABEL_20:
            result = (*(*(*(*(v7 + 48) + 8) + 40) + 16))();
          }
        }

        v22 = v5[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v5[2];
            v24 = *v23 == v5;
            v5 = v23;
          }

          while (!v24);
        }

        v5 = v23;
      }

      while (v23 != v4);
    }
  }

  return result;
}

void *std::set<unsigned long>::set[abi:fe200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = v3[4];
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

__n128 __Block_byref_object_copy__20(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__21(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN13PDFLinearizer14collectObjectsEP7__sFILE_block_invoke_22(uint64_t a1, uint64_t a2, off_t a3, size_t a4)
{
  if (a3)
  {
    v5 = a3;
    v8 = *(a1 + 40);
    if (fseeko(*(a1 + 48), a3, 0) == -1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      _CGExceptionDescription(2, "ioResult == -1", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Linearized/PDFLinearizer.cc", 474, "fseek to offset: %llu failed", v37, v5);
      std::logic_error::logic_error(exception, v37);
      exception->__vftable = (MEMORY[0x1E69E55A8] + 16);
      __cxa_throw(exception, off_1E6E04878, MEMORY[0x1E69E5270]);
    }

    if (*(*(*(a1 + 32) + 8) + 56) - *(*(*(a1 + 32) + 8) + 40) < a4)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    if (fread(*(*(*(a1 + 32) + 8) + 40), 1uLL, a4, *(a1 + 48)) != a4)
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      _CGExceptionDescription(3, "bytesRead == length", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Linearized/PDFLinearizer.cc", 478, "fread of %llu bytes at position %llu failed", v37, a4);
      std::logic_error::logic_error(v31, v37);
      v31->__vftable = (MEMORY[0x1E69E55A8] + 16);
      __cxa_throw(v31, off_1E6E04878, MEMORY[0x1E69E5270]);
    }

    v36 = 0;
    if (sscanf(*(*(*(a1 + 32) + 8) + 40), "%d 0 obj\n%n", &v36 + 4, &v36) != 1)
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      _CGExceptionDescription(3, "count == 1", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Linearized/PDFLinearizer.cc", 482, "failed to scan object number from object: %llu, offset: %llu", v37, v5);
      std::logic_error::logic_error(v32, v37);
      v32->__vftable = (MEMORY[0x1E69E55A8] + 16);
      __cxa_throw(v32, off_1E6E04878, MEMORY[0x1E69E5270]);
    }

    v9 = a4 - v36;
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:fe200100]();
    }

    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v35) = a4 - v36;
    if (a4 != v36)
    {
      memmove(&__dst, (v10 + v36), v9);
    }

    *(&__dst + v9) = 0;
    v12 = v8[15];
    v11 = v8[16];
    if (v12 >= v11)
    {
      v15 = v8[14];
      v16 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v15) >> 3);
      if ((v16 + 1) > 0x492492492492492)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v17 = 0x6DB6DB6DB6DB6DB7 * ((v11 - v15) >> 3);
      v18 = 2 * v17;
      if (2 * v17 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x249249249249249)
      {
        v19 = 0x492492492492492;
      }

      else
      {
        v19 = v18;
      }

      v38 = v8 + 14;
      if (v19)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<PDFIndirectObject>>(v19);
      }

      v21 = 56 * v16;
      *v37 = 0;
      *&v37[8] = v21;
      *&v37[16] = v21;
      *&v37[24] = 0;
      *v21 = a2;
      v22 = (v21 + 8);
      if (SHIBYTE(v35) < 0)
      {
        std::string::__init_copy_ctor_external(v22, __dst, *(&__dst + 1));
        v24 = *&v37[16];
        v23 = *&v37[8];
      }

      else
      {
        *&v22->__r_.__value_.__l.__data_ = __dst;
        *(v21 + 24) = v35;
        v23 = v21;
        v24 = v21;
      }

      *(v21 + 32) = 0;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *&v37[16] = v24 + 56;
      v25 = v8[14];
      v26 = v8[15];
      v27 = v23 + v25 - v26;
      std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<PDFIndirectObject>,PDFIndirectObject*>(v25, v26, v27);
      v28 = v8[14];
      v8[14] = v27;
      v29 = v8[16];
      v33 = *&v37[16];
      *(v8 + 15) = *&v37[16];
      *&v37[16] = v28;
      *&v37[24] = v29;
      *v37 = v28;
      *&v37[8] = v28;
      std::__split_buffer<PDFIndirectObject>::~__split_buffer(v37);
      v20 = v33;
      v14 = HIBYTE(v35);
    }

    else
    {
      *v12 = a2;
      v13 = (v12 + 1);
      v14 = HIBYTE(v35);
      if (SHIBYTE(v35) < 0)
      {
        std::string::__init_copy_ctor_external(v13, __dst, *(&__dst + 1));
      }

      else
      {
        *&v13->__r_.__value_.__l.__data_ = __dst;
        v12[3] = v35;
      }

      v12[4] = 0;
      v12[5] = 0;
      v12[6] = 0;
      v20 = v12 + 7;
      v8[15] = v12 + 7;
    }

    v8[15] = v20;
    if (v14 < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_1842C799C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::__split_buffer<PDFIndirectObject>::~__split_buffer(&a21);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::reference_wrapper<PDFIndirectObject>>::insert(uint64_t a1, char *__src, void *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v14);
    }

    v16 = (8 * v15);
    v17 = 8 * v15;
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v18 = 1;
        }

        else
        {
          v18 = v12 >> 2;
        }

        std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v18);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v17 = v16;
    }

    *v16 = *a3;
    v19 = v17 + 8;
    memcpy((v17 + 8), __src, *(a1 + 8) - __src);
    v20 = *a1;
    v24 = (v19 + *(a1 + 8) - __src);
    *(a1 + 8) = __src;
    v21 = (__src - v20);
    v22 = v16 - (__src - v20);
    memcpy(v22, v20, v21);
    v23 = *a1;
    *a1 = v22;
    *(a1 + 8) = v24;
    if (v23)
    {

      operator delete(v23);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *__src = *a3;
  }
}

void sub_1842C7C5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL PDFLinearizerPageInfo::hasReferenceToObject(PDFLinearizerPageInfo *this, PDFLinearizerPageInfo *a2, unint64_t a3)
{
  if (a2 == this)
  {
    return 0;
  }

  v3 = (a2 - this) >> 3;
  do
  {
    v4 = v3 >> 1;
    v5 = (this + 8 * (v3 >> 1));
    v7 = *v5;
    v6 = (v5 + 1);
    v3 += ~(v3 >> 1);
    if (v7 < a3)
    {
      this = v6;
    }

    else
    {
      v3 = v4;
    }
  }

  while (v3);
  return this != a2 && *this == a3;
}

void std::vector<std::reference_wrapper<PDFIndirectObject>>::__insert_with_size[abi:fe200100]<std::__wrap_iter<std::reference_wrapper<PDFIndirectObject>*>,std::__wrap_iter<std::reference_wrapper<PDFIndirectObject>*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v13 = v9 - v11;
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

    v15 = (__dst - v11) >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v14);
    }

    v32 = 8 * v15;
    v33 = 8 * a5;
    v34 = (8 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 8;
    }

    while (v33);
    memcpy((v32 + 8 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 8 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v28 = &__dst[8 * a5];
    v29 = &v10[-8 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 8;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v28);
    }

    v27 = 8 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[8 * a5];
    v22 = &v10[v19];
    if (&v20[-8 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -8 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 8;
        v23 += 8;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[8 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

uint64_t std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,unsigned long>>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::map<unsigned long,std::reference_wrapper<PDFIndirectObject>>::at(void *a1, unint64_t a2)
{
  if (!a1)
  {
LABEL_7:
    std::__throw_out_of_range[abi:fe200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = a1[4];
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

void PDFLinearizer::updateObjectReference(std::string **this, PDFIndirectObject *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x20uLL, "%lu 0 R", a2);
  snprintf(__s, 0x20uLL, "%lu 0 R", a3);
  v5 = strlen(__s);
  v6 = strlen(__str);
  v7 = 0;
  v38 = this;
  v10 = this[1];
  v8 = (this + 1);
  v9 = v10;
  v35 = v5 - v6;
  v36 = v5;
  v11 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
  v12 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  v13 = v11 < 0;
  size = v8->__r_.__value_.__l.__size_;
  v37 = v8;
  if (v11 >= 0)
  {
    v15 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v9;
    v15 = size;
  }

  v16 = __str[0];
  while (!v6)
  {
LABEL_15:
    if (!v7)
    {
      goto LABEL_27;
    }

    if (v7 == -1)
    {
      return;
    }

    v22 = v7 - 1;
    if (v13)
    {
      v23 = size;
    }

    else
    {
      v23 = v12;
    }

    if (v23 < v22)
    {
      __break(1u);
    }

    v24 = v37;
    if (v13)
    {
      v24 = v9;
    }

    v25 = v24->__r_.__value_.__s.__data_[v22];
    if ((v25 & 0x80000000) != 0 ? __maskrune(v25, 0x4000uLL) : *(MEMORY[0x1E69E9830] + 4 * v25 + 60) & 0x4000)
    {
LABEL_27:
      v27 = *(v38 + 4);
      v28 = *(v38 + 5);
      if (v28 == v27)
      {
        goto LABEL_35;
      }

      v29 = v28 - v27;
      do
      {
        v30 = v29 >> 1;
        v31 = &v27[v29 >> 1];
        v33 = *v31;
        v32 = v31 + 1;
        v29 += ~(v29 >> 1);
        if (v33 < v7)
        {
          v27 = v32;
        }

        else
        {
          v29 = v30;
        }
      }

      while (v29);
      if (v27 == v28 || *v27 != v7)
      {
LABEL_35:
        v34 = strlen(__s);
        std::string::replace(v37, v7, v6, __s, v34);
        PDFIndirectObject::addToReplacementOffsets(v38, v7, v35);
      }
    }

    v7 += v36;
    v12 = *(v38 + 31);
    v13 = *(v38 + 31) < 0;
    v9 = *(v38 + 1);
    size = *(v38 + 2);
    if (*(v38 + 31) >= 0)
    {
      v8 = v37;
    }

    else
    {
      v8 = *(v38 + 1);
    }

    if (*(v38 + 31) >= 0)
    {
      v15 = *(v38 + 31);
    }

    else
    {
      v15 = *(v38 + 2);
    }

    if (v15 < v7)
    {
      return;
    }
  }

  v17 = v15 - v7;
  if ((v15 - v7) >= v6)
  {
    v18 = v8 + v15;
    v19 = v8 + v7;
    do
    {
      if (v17 - v6 == -1)
      {
        break;
      }

      v20 = memchr(v19, v16, v17 - v6 + 1);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (!memcmp(v20, __str, v6))
      {
        if (v21 == v18)
        {
          return;
        }

        v7 = v21 - v8;
        goto LABEL_15;
      }

      v19 = v21 + 1;
      v17 = v18 - (v21 + 1);
    }

    while (v17 >= v6);
  }
}

void std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::__base_destruct_at_end[abi:fe200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void PDFIndirectObject::~PDFIndirectObject(PDFIndirectObject *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::~adjacency_list(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    MEMORY[0x1865EE610](v2, 0xC400A2AC0F1);
  }

  v4 = (a1 + 24);
  std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::__destroy_vector::operator()[abi:fe200100](&v4);
  std::__list_imp<unsigned long>::clear(a1);
  return a1;
}

void std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::__base_destruct_at_end[abi:fe200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 56)
  {
    std::__tree<unsigned long>::destroy(*(i - 24));
    std::__tree<unsigned long>::destroy(*(i - 48));
  }

  *(a1 + 8) = a2;
}

void PDFIndirectObject::addToReplacementOffsets(PDFIndirectObject *this, unint64_t a2, uint64_t a3)
{
  v33 = a2;
  v6 = *(this + 4);
  v5 = *(this + 5);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v9 = *(this + 5);
  }

  else
  {
    v8 = v7 >> 3;
    v9 = *(this + 4);
    do
    {
      v10 = v8 >> 1;
      v11 = &v9[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = v11 + 8;
      v8 += ~(v8 >> 1);
      if (v13 < a2)
      {
        v9 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v8);
  }

  if (v5 == v9 || *v9 != a2)
  {
    v14 = *(this + 6);
    if (v5 >= v14)
    {
      v17 = (v7 >> 3) + 1;
      if (!(v17 >> 61))
      {
        v18 = v9 - v6;
        v19 = v14 - v6;
        v20 = (v14 - v6) >> 2;
        if (v20 > v17)
        {
          v17 = v20;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v17;
        }

        v22 = v18 >> 3;
        if (v21)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v21);
        }

        v24 = (8 * v22);
        if (!v22)
        {
          if (v18 < 1)
          {
            if (v9 == v6)
            {
              v32 = 1;
            }

            else
            {
              v32 = v18 >> 2;
            }

            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v32);
          }

          v24 = (v24 - (((v18 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
        }

        *v24 = a2;
        memcpy(v24 + 1, v9, *(this + 5) - v9);
        v25 = *(this + 4);
        v16 = v24 + *(this + 5) - v9 + 8;
        *(this + 5) = v9;
        v26 = v9 - v25;
        v27 = v24 - (v9 - v25);
        memcpy(v27, v25, v26);
        v28 = *(this + 4);
        *(this + 4) = v27;
        *(this + 40) = v16;
        if (v28)
        {
          operator delete(v28);
          v16 = *(this + 5);
        }

        goto LABEL_42;
      }
    }

    else
    {
      if (v9 == v5)
      {
        *v5 = a2;
        v23 = v5 + 8;
        *(this + 5) = v23;
        v16 = v23;
LABEL_41:
        v24 = v9;
LABEL_42:
        for (i = (v24 + 1); i != v16; i += 8)
        {
          *i += a3;
        }

        return;
      }

      v15 = v9 + 8;
      if (v5 < 8)
      {
        v16 = *(this + 5);
      }

      else
      {
        *v5 = *(v5 - 1);
        v16 = v5 + 8;
      }

      *(this + 5) = v16;
      if (v5 != v15)
      {
        memmove(v9 + 8, v9, v5 - v15);
        v16 = *(this + 5);
      }

      if (v16 >= v9)
      {
        v29 = v16 <= &v33 || v9 > &v33;
        v30 = 8;
        if (v29)
        {
          v30 = 0;
        }

        *v9 = *(&v33 + v30);
        goto LABEL_41;
      }

      __break(1u);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void sub_1842C872C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<PDFIndirectObject>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<PDFIndirectObject>,PDFIndirectObject*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v6;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 48) = *(v5 + 48);
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      v5 += 56;
      a3 += 56;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:fe200100]<PDFIndirectObject,0>(v4);
      v4 += 56;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<PDFIndirectObject>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__destroy_at[abi:fe200100]<PDFIndirectObject,0>(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 - *a1;
  v5 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v10 = v3 + 56 * a2;

      std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::__base_destruct_at_end[abi:fe200100](a1, v10);
    }
  }

  else
  {
    v7 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v7 - v2) >> 3) < v6)
    {
      if (a2 <= 0x492492492492492)
      {
        v8 = 0xDB6DB6DB6DB6DB6ELL * ((v7 - v3) >> 3);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v7 - v3) >> 3)) >= 0x249249249249249)
        {
          v9 = 0x492492492492492;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:fe200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>(v9);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v11 = v2 + 56 * v6;
    v12 = 56 * a2 - 8 * (v4 >> 3);
    v13 = (v2 + 32);
    do
    {
      *(v13 - 3) = 0;
      *(v13 - 4) = v13 - 3;
      *v13 = 0;
      v13[1] = 0;
      *(v13 - 2) = 0;
      *(v13 - 1) = v13;
      v13 += 7;
      v12 -= 56;
    }

    while (v12);
    a1[1] = v11;
  }
}

uint64_t boost::vec_adj_list_impl<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config,boost::bidirectional_graph_helper_with_property<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config>>::~vec_adj_list_impl(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>::__destroy_vector::operator()[abi:fe200100](&v3);
  std::__list_imp<unsigned long>::clear(a1);
  return a1;
}

void *std::__tree<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property>>::__emplace_unique_key_args<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property>,boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::setS,boost::vecS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::setS,boost::bidirectionalS,Vertex,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_1,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_1>,void ()(__sFILE *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PDFLinearizer::endDocument(CGDataConsumer *)::$_0,std::allocator<PDFLinearizer::endDocument(CGDataConsumer *)::$_0>,void ()(PDFWriter *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN13PDFLinearizer11endDocumentEP14CGDataConsumerE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void PDFLinearizerRecordReference(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v6 = a1[24];
    v5 = a1[25];
    if (v6 >= v5)
    {
      v8 = a1[23];
      v9 = v6 - v8;
      v10 = (v6 - v8) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v12 = v5 - v8;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fe200100]();
      }

      v14 = (16 * v10);
      *v14 = a3;
      v14[1] = a2;
      v7 = 16 * v10 + 16;
      memcpy(0, v8, v9);
      a1[23] = 0;
      a1[24] = v7;
      a1[25] = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v6 = a3;
      *(v6 + 1) = a2;
      v7 = (v6 + 16);
    }

    a1[24] = v7;
  }

  else
  {
    pdf_log("%s: Invalid param. object = %lu, referrer = %lu", "void PDFLinearizer::recordReference(PDFObjectNumber, PDFObjectNumber)", a2, a3);
  }
}

float64x2_t aal_close(uint64_t a1, float64x2_t result)
{
  if (!*(a1 + 48))
  {
    return result;
  }

  v3 = *a1;
  *&result.f64[0] = vcvt_f32_f64(*(a1 + 16));
  v18 = result;
  if (*result.f64 == v3)
  {
    v5 = *(a1 + 8);
    v4 = *(result.f64 + 1);
    if (*(result.f64 + 1) == v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(result.f64 + 1);
  }

  aal_add_point(a1, *result.f64, v4);
  result = v18;
LABEL_6:
  v6 = vcvt_f32_f64(*(a1 + 32));
  v7 = fabsf(*(a1 + 236));
  v8 = *(a1 + 104) - v7;
  if (v8 <= v6.f32[0] || v8 <= *result.f64)
  {
    v10 = v7 + *(a1 + 112);
    if (v10 >= v6.f32[0] || v10 >= *result.f64)
    {
      v12 = *(a1 + 108) - v7;
      if (v12 <= v6.f32[1] || v12 <= *(result.f64 + 1))
      {
        v14 = v7 + *(a1 + 116);
        if (v14 >= v6.f32[1] || v14 >= *(result.f64 + 1))
        {
          v17 = v6;
          v16 = aal_new_edge(a1);
          result = v18;
          if (v16)
          {
            result = vcvtq_f64_f32(*&v18.f64[0]);
            *v16 = result;
            *(v16 + 16) = vcvtq_f64_f32(v17);
            *(v16 + 32) = 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t aal_add_point(uint64_t result, float a2, float a3)
{
  v5 = result;
  v6 = vcvt_f32_f64(*result);
  v7 = fabsf(*(result + 236));
  v8 = *(result + 104) - v7;
  if (v8 < v6.f32[0] || v8 < a2)
  {
    v10 = v7 + *(result + 112);
    if (v10 > v6.f32[0] || v10 > a2)
    {
      v12 = *(result + 108) - v7;
      v13 = v6.f32[1];
      if (v12 < v6.f32[1] || v12 < a3)
      {
        v15 = v7 + *(result + 116);
        if (v15 > v6.f32[1] || v15 > a3)
        {
          v22 = v6;
          result = aal_new_edge(result);
          if (!result)
          {
            return result;
          }

          v17 = v22.f32[0];
          *result = vcvtq_f64_f32(v22);
          *(result + 16) = a2;
          *(result + 24) = a3;
          *(result + 32) = 0;
          if (v22.f32[0] <= a2)
          {
            v18 = v22.f32[0];
          }

          else
          {
            v18 = a2;
          }

          if (v22.f32[0] <= a2)
          {
            v17 = a2;
          }

          if (v13 <= a3)
          {
            v19 = v13;
          }

          else
          {
            v19 = a3;
          }

          if (v13 <= a3)
          {
            v20 = a3;
          }

          else
          {
            v20 = v13;
          }

          if (v18 < *(v5 + 52))
          {
            if (v18 < *(v5 + 104))
            {
              v18 = *(v5 + 104);
            }

            *(v5 + 52) = v18;
          }

          if (v17 > *(v5 + 60))
          {
            if (v17 > *(v5 + 112))
            {
              v17 = *(v5 + 112);
            }

            *(v5 + 60) = v17;
          }

          if (v19 < *(v5 + 56))
          {
            if (v19 < *(v5 + 108))
            {
              v19 = *(v5 + 108);
            }

            *(v5 + 56) = v19;
          }

          if (v20 > *(v5 + 64))
          {
            if (v20 > *(v5 + 116))
            {
              v20 = *(v5 + 116);
            }

            *(v5 + 64) = v20;
          }
        }
      }
    }
  }

  *v5 = a2;
  *(v5 + 8) = a3;
  v21 = *(v5 + 48);
  if (!v21)
  {
    *(v5 + 32) = a2;
    *(v5 + 40) = a3;
  }

  *(v5 + 48) = v21 + 1;
  return result;
}

uint64_t aal_new_edge(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = v2[1];
  v4 = v2[2] + 1;
  if (v4 > v3)
  {
    v2 = malloc_type_malloc(80 * v3 + 24, 0x102004024DAA5DEuLL);
    if (!v2)
    {
      puts("ERROR -- edge pool could not be allocated");
      return 0;
    }

    v5 = *(a1 + 176);
    do
    {
      v6 = v5;
      v5 = *v5;
    }

    while (v5);
    *v6 = v2;
    *v2 = 0;
    v2[1] = 2 * v3;
    v4 = 1;
    *(a1 + 184) = v2;
  }

  v7 = &v2[5 * v4 - 2];
  v2[2] = v4;
  ++*(a1 + 168);
  return v7;
}

uint64_t aa_line_render(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v49 = 0;
  v50 = 0;
  v7 = vdupq_n_s64(0xC10FFFF800000000);
  *(result + 88) = v7;
  v8 = (result + 88);
  *(result + 120) = a4;
  *(result + 124) = a5;
  *(result + 128) = a6;
  *(result + 132) = a7;
  *(result + 152) = a2;
  *(result + 160) = a3;
  v9 = fabsf(*(result + 236) * 65536.0);
  if (v9 >= 0x10000)
  {
    v9 = 0x10000;
  }

  *(result + 192) = v9;
  v45 = v7;
  *(result + 72) = v7;
  v10 = (result + 72);
  v11 = *(result + 176);
  if (v11)
  {
    v12 = result;
    while (!v11[2])
    {
LABEL_42:
      v11 = *v11;
      if (!v11)
      {
        return result;
      }
    }

    v13 = 0;
    v14 = (v11 + 7);
    while (1)
    {
      v48 = 0uLL;
      v47 = 0uLL;
      v48 = v14[-2];
      v47 = v14[-1];
      v15 = *v48.i64;
      if (fabs(*v48.i64) <= 262143.0)
      {
        v16 = *&v48.i64[1];
        if (fabs(*&v48.i64[1]) <= 262143.0)
        {
          v17 = *v47.i64;
          if (fabs(*v47.i64) <= 262143.0)
          {
            v18 = *&v47.i64[1];
            if (fabs(*&v47.i64[1]) <= 262143.0)
            {
              goto LABEL_13;
            }
          }
        }
      }

      result = aal_clip_edge(v48.i64, v47.i64);
      if (!result)
      {
        break;
      }

LABEL_39:
      ++v13;
      v14 = (v14 + 40);
      if (v13 >= v11[2])
      {
        goto LABEL_42;
      }
    }

    v18 = *&v47.i64[1];
    v17 = *v47.i64;
    v16 = *&v48.i64[1];
    v15 = *v48.i64;
LABEL_13:
    v19 = v17 - v15;
    v20 = v18 - v16;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if (v19 != 0.0)
    {
      v22 = 1.0 / v19;
      v23 = (1.0 / v19) * v20;
    }

    v49.f32[0] = v22;
    *&v50 = v23;
    v24 = 0.0;
    if (v20 != 0.0)
    {
      v21 = 1.0 / v20;
      v24 = (1.0 / v20) * v19;
    }

    v49.f32[1] = v21;
    *(&v50 + 1) = v24;
    if (*v8 != v15)
    {
      goto LABEL_35;
    }

    v25 = *(v12 + 96);
    if (v25 != v16)
    {
      goto LABEL_35;
    }

    v26 = *v8 - *(v12 + 72);
    v27 = v25 - *(v12 + 80);
    v28 = fabsf(v19);
    v29 = fabsf(v20);
    if (v28 > v29 == fabsf(v26) > fabsf(v27) || (v19 * v26) <= 0.0 || (v20 * v27) <= 0.0)
    {
      goto LABEL_35;
    }

    v46 = v48;
    if (v28 <= v29)
    {
      v36 = (v24 * 0.5);
      v37 = v20 < 0.0;
      v38 = v20 + 0.5;
      v39 = v16 + -0.5;
      v40 = v15 - v36;
      v41 = v20 + -0.5;
      v16 = v16 + 0.5;
      v15 = v15 + v36;
      if (v37)
      {
        v42 = v41;
      }

      else
      {
        v16 = v39;
        v42 = v38;
      }

      if (!v37)
      {
        v15 = v40;
      }

      v49.f32[1] = 1.0 / v42;
      *v48.i64 = v15;
      *&v48.i64[1] = v16;
      v43 = v17 - v15;
      if (fabsf(v43) > fabsf(v42))
      {
        v49.f32[0] = 1.0 / v43;
        *&v50 = v42 * (1.0 / v43);
      }
    }

    else
    {
      v30 = (v23 * 0.5);
      v37 = v19 < 0.0;
      v31 = v19 + 0.5;
      v32 = v15 + -0.5;
      v33 = v16 - v30;
      v34 = v19 + -0.5;
      v15 = v15 + 0.5;
      v16 = v16 + v30;
      if (!v37)
      {
        v15 = v32;
        v34 = v31;
        v16 = v33;
      }

      v49.f32[0] = 1.0 / v34;
      *v48.i64 = v15;
      *&v48.i64[1] = v16;
      v35 = v18 - v16;
      if (fabsf(v35) > fabsf(v34))
      {
        v49.f32[1] = 1.0 / v35;
        *(&v50 + 1) = v34 * (1.0 / v35);
      }
    }

    if (v14->i8[0])
    {
      v47 = v46;
      result = line_to(v12, &v49, v15, v16, *v46.i64, *&v46.i64[1]);
      *(v12 + 72) = v45;
      *(v12 + 88) = v45;
    }

    else
    {
LABEL_35:
      if (v14->i8[0])
      {
        v44 = v45;
        *v10 = v45;
      }

      else
      {
        result = line_to(v12, &v49, v15, v16, v17, v18);
        v44 = v47;
        *v10 = v48;
      }

      *v8 = v44;
    }

    goto LABEL_39;
  }

  return result;
}

uint64_t aal_clip_edge(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = (*a1 > 262143.0) | (4 * (*a1 < -262143.0)) | (2 * (v3 > 262143.0)) | (8 * (v3 < -262143.0));
  v7 = (*a2 > 262143.0) | (4 * (*a2 < -262143.0)) | (2 * (v5 > 262143.0)) | (8 * (v5 < -262143.0));
  v8 = v5 - v3;
  v9 = *a2 - *a1;
  v10 = v7 == 0;
  while (1)
  {
    v11 = v7 & v6;
    if ((v7 & v6) != 0)
    {
      return v11;
    }

    if (v6)
    {
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = 0;
      *a1 = v2;
      a1[1] = v3;
      v9 = -v9;
      v8 = -v8;
      v2 = v4;
      v3 = v5;
      v6 = v7;
      v7 = 0;
      if ((v6 & 4) == 0)
      {
LABEL_5:
        if (v6)
        {
          v3 = v3 + (262143.0 - v2) * v8 / v9;
          v6 = (2 * (v3 > 262143.0)) | (8 * (v3 < -262143.0));
          v2 = 262143.0;
        }

        else if ((v6 & 2) != 0)
        {
          v2 = v2 + v9 * (262143.0 - v3) / v8;
          v6 = (v2 > 262143.0) | (4 * (v2 < -262143.0));
          v3 = 262143.0;
        }

        else if ((v6 & 8) != 0)
        {
          v2 = v2 + v9 * (-262143.0 - v3) / v8;
          v6 = (v2 > 262143.0) | (4 * (v2 < -262143.0));
          v3 = -262143.0;
        }

        goto LABEL_13;
      }
    }

    v3 = v3 + (-262143.0 - v2) * v8 / v9;
    v6 = (2 * (v3 > 262143.0)) | (8 * (v3 < -262143.0));
    v2 = -262143.0;
LABEL_13:
    v11 = v10 | v7 | v6;
    if (!v11)
    {
      *a2 = v2;
      a2[1] = v3;
      return v11;
    }
  }
}

float *line_to(float *result, float32x2_t *a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a5;
  v7 = a4 - a6;
  if (fabsf(v6) <= fabsf(v7))
  {
    if (v7 != 0.0)
    {
      if (a4 <= a6)
      {
        v6 = a5 - a3;
        v9 = a6;
      }

      else
      {
        *a2 = vneg_f32(*a2);
        v9 = a4;
        a4 = a6;
        a3 = a5;
      }

      v19 = 2048;
      if (v6 != 0.0)
      {
        v20 = v9 - a4;
        v21 = (sqrt(((v20 * v20) + (v6 * v6))) * a2->f32[1] * 0.5 * 4096.0 + 0.5);
        if (v21 <= 2048)
        {
          v19 = 2048;
        }

        else
        {
          v19 = v21;
        }
      }

      v22 = (a4 * 4096.0 + 0.5);
      v23 = (v9 * 4096.0 + 0.5);
      v24 = vcvtd_n_f64_s32(v22 & 0xFFFFF000, 0xCuLL);
      v25 = vcvtd_n_f64_s32((v23 + 4095) & 0xFFFFF000, 0xCuLL);
      v26 = result[27];
      if (v26 <= v24)
      {
        v26 = v24;
      }

      v27 = result[29];
      if (v27 >= v25)
      {
        v27 = v25;
      }

      if (v26 < v27)
      {
        return draw_line(result, v26, v27, v24, v25 - 1, ((v26 - a4) * a2[1].f32[1] * 4096.0 + 0.5) + (a3 * 4096.0 + 0.5), (a2[1].f32[1] * 4096.0 + 0.5), (a2[1].f32[0] * 4096.0 + 0.5), v19, v22, v23, 1);
      }
    }
  }

  else if (v6 != 0.0)
  {
    if (a3 <= a5)
    {
      v7 = a6 - a4;
      v8 = a5;
    }

    else
    {
      *a2 = vneg_f32(*a2);
      v8 = a3;
      a4 = a6;
      a3 = a5;
    }

    v10 = 2048;
    if (v7 != 0.0)
    {
      v11 = v8 - a3;
      v12 = (sqrt(((v7 * v7) + (v11 * v11))) * a2->f32[0] * 0.5 * 4096.0 + 0.5);
      if (v12 <= 2048)
      {
        v10 = 2048;
      }

      else
      {
        v10 = v12;
      }
    }

    v13 = (a3 * 4096.0 + 0.5);
    v14 = (v8 * 4096.0 + 0.5);
    v15 = vcvtd_n_f64_s32(v13 & 0xFFFFF000, 0xCuLL);
    v16 = vcvtd_n_f64_s32((v14 + 4095) & 0xFFFFF000, 0xCuLL);
    v17 = result[26];
    if (v17 <= v15)
    {
      v17 = v15;
    }

    v18 = result[28];
    if (v18 >= v16)
    {
      v18 = v16;
    }

    if (v17 < v18)
    {
      return draw_line(result, v17, v18, v15, v16 - 1, ((v17 - a3) * a2[1].f32[0] * 4096.0 + 0.5) + (a4 * 4096.0 + 0.5), (a2[1].f32[0] * 4096.0 + 0.5), (a2[1].f32[1] * 4096.0 + 0.5), v10, v13, v14, 0);
    }
  }

  return result;
}

uint64_t draw_line(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, __int16 a10, int a11, char a12)
{
  v14 = a2;
  v97 = result;
  v15 = a7 + a6 - a9;
  v16 = a7 + a6 + a9;
  v17 = ((a6 - a9) >> 4);
  v18 = ((a9 + a6) >> 4);
  v19 = (a6 - a9) >> 12;
  v20 = ((a9 + a6 + 4095) >> 12) - 1;
  v96 = a9 >> 3;
  if (a7 < 0)
  {
    if (a2 < a3)
    {
      v89 = -a8;
      v57 = 4096 - (a10 & 0xFFF);
      v58 = a11 - ((a11 - 1) & 0xFFFFF000);
      v59 = v58 >> 4;
      v95 = (255 * (v57 >> 4)) >> 8;
      v91 = v57 >> 4;
      v93 = v58 >> 4;
      do
      {
        v60 = (v15 >> 4);
        v61 = (v16 >> 4);
        v62 = v15 >> 12;
        v63 = ((v16 + 4095) >> 12) - 1;
        if (v20 == v15 >> 12)
        {
          v64 = v95;
          if (a4 != v14)
          {
            v64 = 255;
          }

          if (a5 == v14)
          {
            LOBYTE(v64) = (v64 * v93) >> 8;
          }

          v65 = a4 == v14 || a5 == v14;
          v100 = v64;
        }

        else if (v20 == v62 + 1)
        {
          v66 = ((v17 + v60) >> 1) ^ 0xFF;
          v67 = v96 - v66;
          v68 = ((v96 - v66) * v91) >> 8;
          if (a4 == v14)
          {
            v66 = (v66 * v91) >> 8;
            v67 = v68;
          }

          if (a5 == v14)
          {
            LOBYTE(v66) = (v66 * v59) >> 8;
            v67 = (v67 * v59) >> 8;
          }

          v65 = a4 == v14 || a5 == v14;
          v100 = v66;
          if (v67 >= 255)
          {
            v69 = -1;
          }

          else
          {
            v69 = v67;
          }

          v101 = v69;
        }

        else if (v20 == v62 + 2)
        {
          v70 = ((v60 ^ 0xFF) * v89 * (v60 ^ 0xFF)) >> 21;
          if (v70 >= 255)
          {
            v70 = 255;
          }

          v71 = (v18 * v89 * v18) >> 21;
          if (v71 >= 255)
          {
            v72 = 255;
          }

          else
          {
            v72 = (v18 * v89 * v18) >> 21;
          }

          v73 = (v18 + v61) >> 1;
          if (v20 != v63)
          {
            v73 = v72;
          }

          v74 = ((v17 + v60) >> 1) ^ 0xFF;
          if (v71 >= 255)
          {
            v71 = 255;
          }

          if (v19 == v62)
          {
            v70 = v74;
            v73 = v71;
          }

          v75 = v96 - v70 - v73;
          if (v75 >= 255)
          {
            v75 = 255;
          }

          if (a4 == v14)
          {
            v70 = (v70 * v91) >> 8;
            v73 = (v73 * v91) >> 8;
            v75 = (v75 * v91) >> 8;
            v76 = 1;
          }

          else
          {
            v76 = 0;
          }

          if (a5 == v14)
          {
            LOBYTE(v70) = (v70 * v59) >> 8;
            LOBYTE(v73) = (v73 * v59) >> 8;
          }

          v100 = v70;
          if (a5 == v14)
          {
            v77 = (v75 * v59) >> 8;
          }

          else
          {
            v77 = v75;
          }

          if (a5 == v14)
          {
            v65 = 1;
          }

          else
          {
            v65 = v76;
          }

          v101 = v77;
          v102 = v73;
        }

        else
        {
          v78 = ((v60 ^ 0xFF) * v89 * (v60 ^ 0xFF)) >> 21;
          if (v78 >= 255)
          {
            v78 = 255;
          }

          v79 = (v18 * v89 * v18) >> 21;
          if (v79 >= 255)
          {
            v79 = 255;
          }

          v80 = (v18 + v61 + 255) >> 1;
          v81 = v96 - (v78 + v80);
          if (v81 >= 255)
          {
            v81 = 255;
          }

          v82 = v80 - v79;
          if (v82 >= 255)
          {
            LOWORD(v82) = 255;
          }

          if (a4 == v14)
          {
            v78 = (v78 * v91) >> 8;
            v79 = (v79 * v91) >> 8;
            v81 = (v81 * v91) >> 8;
            v82 = (v81 * v91) >> 8;
            v83 = 1;
          }

          else
          {
            v83 = 0;
          }

          if (a5 == v14)
          {
            LOBYTE(v78) = (v78 * v59) >> 8;
            LOBYTE(v79) = (v79 * v59) >> 8;
            LOBYTE(v81) = (v81 * v59) >> 8;
            v65 = 1;
          }

          else
          {
            v65 = v83;
          }

          v100 = v78;
          v101 = v81;
          if (a5 == v14)
          {
            v84 = (v82 * v59) >> 8;
          }

          else
          {
            v84 = v82;
          }

          v102 = v84;
          v103 = v79;
        }

        if (a12)
        {
          v85 = 1;
          v86 = v15 >> 12;
          v87 = v14;
        }

        else
        {
          v85 = 0;
          v86 = v14;
          v87 = v15 >> 12;
        }

        result = aal_add_coverage_span(v97, v85, v86, v87, v20 - v62 + 1, &v100, v65);
        ++v14;
        v15 += a7;
        v16 += a7;
        v20 = v63;
        v19 = v62;
        v18 = v61;
        v17 = v60;
      }

      while (a3 != v14);
    }
  }

  else if (a2 < a3)
  {
    v21 = 4096 - (a10 & 0xFFF);
    v22 = a11 - ((a11 - 1) & 0xFFFFF000);
    v23 = v22 >> 4;
    v94 = (255 * (v21 >> 4)) >> 8;
    v90 = v21 >> 4;
    v92 = v22 >> 4;
    do
    {
      v24 = (v15 >> 4);
      v25 = (v16 >> 4);
      v26 = v15 >> 12;
      v27 = (v16 + 4095) >> 12;
      v28 = v27 - 1;
      v29 = v27 - 1 - v19;
      if (v27 - 1 == v19)
      {
        v30 = v94;
        if (a4 != v14)
        {
          v30 = 255;
        }

        if (a5 == v14)
        {
          LOBYTE(v30) = (v30 * v92) >> 8;
        }

        v31 = a4 == v14 || a5 == v14;
        v100 = v30;
      }

      else if (v27 == v19 + 2)
      {
        v32 = ((v17 + v24) >> 1) ^ 0xFF;
        v33 = v96 - v32;
        v34 = ((v96 - v32) * v90) >> 8;
        if (a4 == v14)
        {
          v32 = (v32 * v90) >> 8;
          v33 = v34;
        }

        if (a5 == v14)
        {
          LOBYTE(v32) = (v32 * v23) >> 8;
          v33 = (v33 * v23) >> 8;
        }

        v31 = a4 == v14 || a5 == v14;
        v100 = v32;
        if (v33 >= 255)
        {
          v35 = -1;
        }

        else
        {
          v35 = v33;
        }

        v101 = v35;
      }

      else if (v27 == v19 + 3)
      {
        v36 = ((v17 ^ 0xFF) * a8 * (v17 ^ 0xFF)) >> 21;
        if (v36 >= 255)
        {
          v36 = 255;
        }

        v37 = (v25 * a8 * v25) >> 21;
        if (v37 >= 255)
        {
          v38 = 255;
        }

        else
        {
          v38 = (v25 * a8 * v25) >> 21;
        }

        v39 = (v18 + v25) >> 1;
        if (v20 == v28)
        {
          v40 = v39;
        }

        else
        {
          v40 = v38;
        }

        v41 = ((v17 + v24) >> 1) ^ 0xFF;
        if (v37 >= 255)
        {
          v42 = 255;
        }

        else
        {
          v42 = (v25 * a8 * v25) >> 21;
        }

        if (v19 == v26)
        {
          v40 = v42;
        }

        else
        {
          v41 = v36;
        }

        v43 = v96 - v41 - v40;
        if (v43 >= 255)
        {
          v43 = 255;
        }

        if (a4 == v14)
        {
          v41 = (v41 * v90) >> 8;
          v40 = (v40 * v90) >> 8;
          v43 = (v43 * v90) >> 8;
          v44 = 1;
        }

        else
        {
          v44 = 0;
        }

        if (a5 == v14)
        {
          LOBYTE(v41) = (v41 * v23) >> 8;
          LOBYTE(v40) = (v40 * v23) >> 8;
        }

        v100 = v41;
        if (a5 == v14)
        {
          v45 = (v43 * v23) >> 8;
        }

        else
        {
          v45 = v43;
        }

        if (a5 == v14)
        {
          v31 = 1;
        }

        else
        {
          v31 = v44;
        }

        v101 = v45;
        v102 = v40;
      }

      else
      {
        v46 = ((v17 ^ 0xFF) * a8 * (v17 ^ 0xFF)) >> 21;
        if (v46 >= 255)
        {
          v46 = 255;
        }

        v47 = (v25 * a8 * v25) >> 21;
        if (v47 >= 255)
        {
          v47 = 255;
        }

        v48 = (v18 + v25 + 255) >> 1;
        v49 = v96 - (v46 + v48);
        if (v49 >= 255)
        {
          v49 = 255;
        }

        v50 = v48 - v47;
        if (v50 >= 255)
        {
          LOWORD(v50) = 255;
        }

        if (a4 == v14)
        {
          v46 = (v46 * v90) >> 8;
          v47 = (v47 * v90) >> 8;
          v49 = (v49 * v90) >> 8;
          v50 = (v49 * v90) >> 8;
          v51 = 1;
        }

        else
        {
          v51 = 0;
        }

        if (a5 == v14)
        {
          LOBYTE(v46) = (v46 * v23) >> 8;
          LOBYTE(v47) = (v47 * v23) >> 8;
          LOBYTE(v49) = (v49 * v23) >> 8;
          v31 = 1;
        }

        else
        {
          v31 = v51;
        }

        v100 = v46;
        v101 = v49;
        if (a5 == v14)
        {
          v52 = (v50 * v23) >> 8;
        }

        else
        {
          v52 = v50;
        }

        v102 = v52;
        v103 = v47;
      }

      if (v29 >= 3)
      {
        v53 = 3;
      }

      else
      {
        v53 = v29;
      }

      if (v29 >= -1)
      {
        v54 = v53 + 1;
      }

      else
      {
        v54 = 0;
      }

      if (a12)
      {
        v55 = 1;
        v56 = v19;
        v19 = v14;
      }

      else
      {
        v55 = 0;
        v56 = v14;
      }

      result = aal_add_coverage_span(v97, v55, v56, v19, v54, &v100, v31);
      ++v14;
      v15 += a7;
      v16 += a7;
      v20 = v28;
      v19 = v26;
      v18 = v25;
      v17 = v24;
    }

    while (a3 != v14);
  }

  return result;
}

uint64_t aal_add_coverage_span(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v9 = result;
  if (a2)
  {
    if (*(result + 124) <= a4)
    {
      v10 = *(result + 132);
      if (v10 > a4)
      {
        v11 = *(result + 120);
        if (a5 + a3 > v11)
        {
          v12 = *(result + 128);
          if (v12 > a3)
          {
            v13 = v11 - a3;
            if (v11 <= a3)
            {
              v13 = 0;
            }

            v14 = v13;
            if (v11 <= a3)
            {
              v15 = a3;
            }

            else
            {
              v15 = *(result + 120);
            }

            v16 = a5 - v13;
            v17 = v12 - (v16 + v15);
            if (v12 >= v16 + v15)
            {
              v17 = 0;
            }

            v18 = v17 + v16;
            v19 = (*(result + 152) + *(result + 160) * (v10 + ~a4) + v15 - v11);
            if (v17 + v16 + v15 > v12)
            {
              result = puts("***** ERROR - aa_line writing outside of the mask");
            }

            v20 = *(v9 + 192);
            v21 = v18 < 1 || v14 > 3;
            v22 = v21;
            if (HIWORD(v20))
            {
              if (a7 == 1)
              {
                if ((v22 & 1) == 0)
                {
                  v41 = 1;
                  do
                  {
                    v42 = *(a6 + v14) + *v19;
                    if (v42 >= 0xFF)
                    {
                      LOBYTE(v42) = -1;
                    }

                    *v19++ = v42;
                    if (v41 >= v18)
                    {
                      break;
                    }

                    ++v41;
                    v21 = v14++ > 2;
                  }

                  while (!v21);
                }
              }

              else if ((v22 & 1) == 0)
              {
                v55 = 1;
                do
                {
                  v56 = *v19;
                  v57 = *(a6 + v14);
                  if (v57 <= v56)
                  {
                    v58 = *v19;
                  }

                  else
                  {
                    v58 = *(a6 + v14);
                  }

                  v59 = (v56 + v57 + 3 * v58 + 2) >> 2;
                  if (v59 >= 0xFF)
                  {
                    LOBYTE(v59) = -1;
                  }

                  *v19++ = v59;
                  if (v55 >= v18)
                  {
                    break;
                  }

                  ++v55;
                  v21 = v14++ > 2;
                }

                while (!v21);
              }
            }

            else if (a7 == 1)
            {
              if ((v22 & 1) == 0)
              {
                v23 = 1;
                do
                {
                  v24 = *v19 + ((v20 * *(a6 + v14)) >> 16);
                  if (v24 >= 0xFF)
                  {
                    LOBYTE(v24) = -1;
                  }

                  *v19++ = v24;
                  if (v23 >= v18)
                  {
                    break;
                  }

                  ++v23;
                  v21 = v14++ > 2;
                }

                while (!v21);
              }
            }

            else if ((v22 & 1) == 0)
            {
              v45 = 1;
              do
              {
                v46 = *v19;
                v47 = v20 * *(a6 + v14);
                v48 = BYTE2(v47);
                if (BYTE2(v47) <= v46)
                {
                  v48 = *v19;
                }

                v49 = (v46 + HIWORD(v47) + 3 * v48 + 2) >> 2;
                if (v49 >= 0xFF)
                {
                  LOBYTE(v49) = -1;
                }

                *v19++ = v49;
                if (v45 >= v18)
                {
                  break;
                }

                ++v45;
                v21 = v14++ > 2;
              }

              while (!v21);
            }
          }
        }
      }
    }
  }

  else
  {
    v25 = *(result + 120);
    v26 = __OFSUB__(a3, v25);
    v27 = a3 - v25;
    if (v27 < 0 == v26 && *(result + 128) > a3)
    {
      v28 = *(result + 124);
      if (a5 + a4 > v28)
      {
        v29 = *(result + 132);
        if (v29 > a4)
        {
          v30 = v28 - a4;
          if (v28 <= a4)
          {
            v30 = 0;
          }

          v31 = v30;
          if (v28 <= a4)
          {
            v28 = a4;
          }

          v32 = a5 - v30;
          v33 = v29 - (v32 + v28);
          if (v29 >= v32 + v28)
          {
            v33 = 0;
          }

          v34 = v33 + v32;
          v35 = (*(result + 152) + *(result + 160) * (v29 + ~v28) + v27);
          if (v33 + v32 + v28 > v29)
          {
            result = puts("***** ERROR - aa_line writing outside of the mask");
          }

          v36 = *(v9 + 192);
          v38 = v34 < 1 || v31 > 3;
          if (HIWORD(v36))
          {
            if (a7 == 1)
            {
              if (!v38)
              {
                v43 = 1;
                do
                {
                  v44 = *(a6 + v31) + *v35;
                  if (v44 >= 0xFF)
                  {
                    LOBYTE(v44) = -1;
                  }

                  *v35 = v44;
                  if (v43 >= v34)
                  {
                    break;
                  }

                  v35 -= *(v9 + 160);
                  ++v43;
                  v21 = v31++ > 2;
                }

                while (!v21);
              }
            }

            else if (!v38)
            {
              v60 = 1;
              do
              {
                v61 = *(a6 + v31);
                v62 = *v35;
                if (v61 <= v62)
                {
                  v63 = *v35;
                }

                else
                {
                  v63 = *(a6 + v31);
                }

                v64 = (v62 + v61 + 3 * v63 + 2) >> 2;
                if (v64 >= 0xFF)
                {
                  LOBYTE(v64) = -1;
                }

                *v35 = v64;
                if (v60 >= v34)
                {
                  break;
                }

                v35 -= *(v9 + 160);
                ++v60;
              }

              while (v31++ < 3);
            }
          }

          else if (a7 == 1)
          {
            if (!v38)
            {
              v39 = 1;
              do
              {
                v40 = *v35 + ((v36 * *(a6 + v31)) >> 16);
                if (v40 >= 0xFF)
                {
                  LOBYTE(v40) = -1;
                }

                *v35 = v40;
                if (v39 >= v34)
                {
                  break;
                }

                v35 -= *(v9 + 160);
                ++v39;
                v21 = v31++ > 2;
              }

              while (!v21);
            }
          }

          else if (!v38)
          {
            v50 = 1;
            do
            {
              v51 = *v35;
              v52 = v36 * *(a6 + v31);
              v53 = BYTE2(v52);
              if (BYTE2(v52) <= v51)
              {
                v53 = *v35;
              }

              v54 = (v51 + HIWORD(v52) + 3 * v53 + 2) >> 2;
              if (v54 >= 0xFF)
              {
                LOBYTE(v54) = -1;
              }

              *v35 = v54;
              if (v50 >= v34)
              {
                break;
              }

              v35 -= *(v9 + 160);
              ++v50;
              v21 = v31++ > 2;
            }

            while (!v21);
          }
        }
      }
    }
  }

  return result;
}

uint64_t aa_line_render_shape(uint64_t a1, void **a2, int a3, int a4, int a5, int a6, int a7)
{
  v130[0] = a3;
  v127 = 0uLL;
  if (!a2)
  {
    return 0;
  }

  v8 = *(a1 + 52);
  v9 = *(a1 + 64);
  v10 = v8 <= *(a1 + 60) && *(a1 + 56) <= v9;
  if (!v10 || 40 * *(a1 + 168) + 24 < 1)
  {
    return 0;
  }

  v16 = *(a1 + 236);
  *(a1 + 120) = a4;
  *(a1 + 124) = a5;
  *(a1 + 128) = a6;
  *(a1 + 132) = a7;
  v17 = fabsf(v16 * 65536.0);
  if (v17 >= 0x10000)
  {
    v17 = 0x10000;
  }

  *(a1 + 192) = v17;
  v18 = a7 - a5;
  v19 = 16 * (a7 - a5);
  v120 = malloc_type_malloc(v19, 0xD4405319uLL);
  if (!v120)
  {
    v23 = "ERROR -- buckets could not be allocated";
    goto LABEL_107;
  }

  v118 = a2;
  v115 = a4;
  v116 = a7;
  v117 = a3;
  if (*(a1 + 120) == *(a1 + 120) && *(a1 + 128) == *(a1 + 128))
  {
    bzero(v120, v19);
    v22 = 0;
  }

  else
  {
    if (a7 != a5)
    {
      if (v18 <= 1)
      {
        LODWORD(v20) = 1;
      }

      else
      {
        LODWORD(v20) = v18;
      }

      v20 = v20;
      v21 = v120;
      do
      {
        *v21 = -1;
        *(v21 + 1) = 0;
        v21 += 16;
        --v20;
      }

      while (v20);
    }

    v22 = 1;
  }

  *(a1 + 232) = v22;
  v129 = 0uLL;
  v128 = 0uLL;
  v24 = *(a1 + 124);
  v25 = *(a1 + 132);
  v26 = *(a1 + 176);
  if (!v26)
  {
LABEL_103:
    v81 = v117 / 4;
    v130[0] = v117 / 4;
    v82 = v118;
    v83 = *v118;
    if (*v118)
    {
      if (v117 > 35)
      {
        ptr = *v118;
LABEL_111:
        v84 = fabsf(v16) * 0.5;
        v85 = vcvtps_s32_f32(v9 + v84);
        v86 = (v116 - v85) & ~((v116 - v85) >> 31);
        v123 = v83 + 4;
        v124 = v83 + 4;
        *v83 = 0x280000000;
        v87 = (v83 + 1);
        v125 = (v83 + 1);
        if (v25 <= v24)
        {
LABEL_134:
          v112 = v87 + 2;
          *v87 = v86;
          v87[1] = 2;
          v113 = (v87 + 2) - v83;
          if (v130[0] <= v113 >> 2)
          {
            puts("failure");
          }

          *v112 = 0x7FFFFFFF;
          *v82 = v83;
          if (*(a1 + 232) == 1)
          {
            free_all_spans(a1);
          }

          free(v120);
          return (v113 + 4);
        }

        v88 = vcvtms_s32_f32(v8 - v84);
        v89 = ((v88 - v115) & ~((v88 - v115) >> 31)) - v115;
        v90 = vdup_n_s32(v89);
        v91 = 16 * v25 - 16 * v24 - 8;
        while (aa_shape_size_check(*v82, &ptr, v130, &v125, &v124, &v123))
        {
          v92 = v125;
          v93 = v125;
          *v125 = v86;
          v87 = v93 + 2;
          v92[1] = 2;
          --v25;
          v124 = (v92 + 1);
          v125 = v87;
          v94 = &v120[16 * (v25 - v24)];
          v95 = *v94;
          if (v95 < 0)
          {
            v100 = *(v94 + 1);
            if (v100)
            {
              while (1)
              {
                v101 = v100[1];
                if (!aa_shape_size_check(*v82, &ptr, v130, &v125, &v124, &v123))
                {
                  goto LABEL_140;
                }

                v102 = v125;
                v103 = v125;
                *v125 = vadd_s32(v90, v101);
                v125 = v103 + 2;
                v100 = *v100;
                if (!v100)
                {
                  v87 = v102 + 2;
                  break;
                }
              }
            }
          }

          else if (*v94)
          {
            LOWORD(v96) = 0;
            v122 = v91;
            while (1)
            {
              v97 = *&v120[v91];
              v98 = *&v120[v91 + 2];
              if (!aa_shape_size_check(*v118, &ptr, v130, &v125, &v124, &v123))
              {
                goto LABEL_140;
              }

              v99 = v125;
              v87 = v125 + 2;
              v125 += 2;
              *v99 = v89 + v97;
              v99[1] = v89 + v98;
              v96 = (v96 + 1);
              v91 += 4;
              if (v96 >= v95)
              {
                v82 = v118;
                v91 = v122;
                break;
              }
            }
          }

          v104 = v124;
          v105 = ((v87 - v124) >> 2) + 1;
          *v124 = v105;
          v106 = v123;
          if (v123 && v105 == *v123)
          {
            if (v105 != 2)
            {
              v107 = (v104 + 4);
              v108 = (v123 + 4);
              while (v107 != v87)
              {
                v110 = *v107++;
                v109 = v110;
                v111 = *v108++;
                if (v109 != v111)
                {
                  goto LABEL_131;
                }
              }
            }

            v87 = (v104 - 4);
            v124 = v123;
            v125 = (v104 - 4);
          }

          else
          {
LABEL_131:
            v106 = v104;
          }

          v123 = v106;
          ++v86;
          v91 -= 16;
          if (v25 <= v24)
          {
            v83 = ptr;
            goto LABEL_134;
          }
        }

LABEL_140:
        puts("ERROR -- shape allocation error");
        malloc_type_realloc(ptr, 0, 0x9C99BB6EuLL);
LABEL_141:
        free(v120);
        return 0;
      }
    }

    else
    {
      if (v117 <= 255)
      {
        v81 = 64;
        v130[0] = 64;
      }

      v83 = malloc_type_realloc(0, (4 * v81 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
      ptr = v83;
      if (v83)
      {
        goto LABEL_111;
      }
    }

    puts("ERROR -- shape allocation error");
    goto LABEL_141;
  }

  v27 = *(a1 + 120);
  v28 = *(a1 + 128);
  while (1)
  {
    v119 = v26;
    v121 = *(v26 + 16);
    if (v121 >= 1)
    {
      break;
    }

LABEL_102:
    v26 = *v119;
    if (!*v119)
    {
      goto LABEL_103;
    }
  }

  v29 = 0;
  v30 = (v26 + 24);
  while (1)
  {
    if (v30[2])
    {
      goto LABEL_32;
    }

    v31 = *v30;
    v128 = v30[1];
    v129 = v31;
    if (fabs(*&v31) > 262143.0 || (v32 = *(&v129 + 1), fabs(*(&v129 + 1)) > 262143.0) || (v33 = *&v128, fabs(*&v128) > 262143.0) || (v34 = *(&v128 + 1), fabs(*(&v128 + 1)) > 262143.0))
    {
      if (aal_clip_edge(&v129, &v128))
      {
        goto LABEL_32;
      }

      v32 = *(&v129 + 1);
      *&v31 = v129;
      v34 = *(&v128 + 1);
      v33 = *&v128;
    }

    v35 = *&v31 + -0.5;
    v36 = v32 + -0.5;
    *&v129 = v35;
    *(&v129 + 1) = v36;
    v37 = v33 + -0.5;
    v38 = v34 + -0.5;
    *&v128 = v33 + -0.5;
    *(&v128 + 1) = v34 + -0.5;
    v39 = v33 + -0.5 - v35;
    v40 = v34 + -0.5 - v36;
    v41 = -v39;
    if (v39 >= 0.0)
    {
      v41 = v39;
    }

    v42 = -v40;
    if (v40 >= 0.0)
    {
      v42 = v40;
    }

    if (v41 <= v42)
    {
      break;
    }

    if (v35 > v37)
    {
      v43 = v128;
      v127 = v129;
      v128 = v129;
      v129 = v43;
      v37 = *&v128;
      v36 = *(&v43 + 1);
      v35 = *(&v43 + 1);
    }

    v44 = v35 + 0.5;
    LODWORD(v26) = vcvtms_s32_f32(v44);
    v45 = v37 + 0.5;
    v46 = vcvtms_s32_f32(v45) - *(a1 + 240);
    v47 = v40 / v39;
    v48 = v36 + (v26 - v35) * (v40 / v39) + 0.5;
    v49 = vcvtms_s32_f32(v48) - 1;
    if (v46 >= v26)
    {
      v66 = 0;
      v67 = v46 + 1;
      v68 = v26;
      do
      {
        v69 = vcvtms_s32_f32(v48);
        if (v49 == v69)
        {
          v50 = v66 + 1;
        }

        else
        {
          v50 = 1;
          if (v66 >= 1 && v49 >= v24 && v49 < v25 && v26 + v66 > v27 && v26 < v28)
          {
            v70 = v26 - v27;
            if (v26 >= v27)
            {
              v70 = 0;
            }

            v71 = v70 + v66;
            if (v26 <= v27)
            {
              v72 = v27;
            }

            else
            {
              v72 = v26;
            }

            if (v71 + v72 >= v28)
            {
              v73 = v28;
            }

            else
            {
              v73 = v71 + v72;
            }

            aal_insert_span(a1, &v120[16 * (v49 - v24)], v72, v73);
            v50 = 1;
          }

          v49 = v69;
          v26 = v68;
        }

        v68 = (v68 + 1);
        v48 = v47 + v48;
        v66 = v50;
      }

      while (v67 != v68);
    }

    else
    {
      v50 = 0;
    }

    if (v50 >= 1)
    {
      v74 = v49 >= v24 && v49 < v25;
      v75 = !v74 || v26 + v50 <= v27;
      if (!v75 && v26 < v28)
      {
        v77 = v26 - v27;
        if (v26 >= v27)
        {
          v77 = 0;
        }

        v78 = v77 + v50;
        v79 = v26 <= v27 ? v27 : v26;
        v80 = v78 + v79 >= v28 ? v28 : v78 + v79;
        if ((aal_insert_span(a1, &v120[16 * (v49 - v24)], v79, v80) & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

LABEL_32:
    ++v29;
    v30 = (v30 + 40);
    if (v29 == v121)
    {
      goto LABEL_102;
    }
  }

  if (v36 > v38)
  {
    v51 = v128;
    v127 = v129;
    v128 = v129;
    v129 = v51;
    v38 = *(&v128 + 1);
    v36 = *(&v51 + 1);
    v35 = *(&v51 + 1);
  }

  v52 = v36 + 0.5;
  v53 = vcvtms_s32_f32(v52);
  v54 = v38 + 0.5;
  v55 = vcvtms_s32_f32(v54);
  v56 = *(a1 + 240);
  v57 = v39 / v40;
  if (v40 == 0.0)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = v57;
  }

  if ((v55 - v56) < v53)
  {
    goto LABEL_32;
  }

  v59 = v35 + (v53 - v36) * v58 + 0.5;
  v60 = v53;
  v61 = &v120[16 * v53 + -16 * v24];
  v26 = ~v55;
  v62 = v26 + v53 + v56;
  while (1)
  {
    if (v60 >= v24 && v60 < v25)
    {
      v63 = vcvtms_s32_f32(v59);
      v64 = v27 > v63 || v28 <= v63;
      if (!v64 && (aal_insert_span(a1, v61, v63, v63 + 1) & 1) == 0)
      {
        break;
      }
    }

    ++v60;
    v59 = v58 + v59;
    v61 += 8;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_32;
    }
  }

LABEL_106:
  v23 = "ERROR -- shape allocation error";
LABEL_107:
  puts(v23);
  return 0;
}

uint64_t aal_insert_span(uint64_t a1, unsigned __int16 *a2, int a3, int a4)
{
  v37 = 0uLL;
  v8 = *a2;
  if ((v8 & 0x8000) != 0)
  {
    goto LABEL_19;
  }

  v9 = (a2 + 4);
  if (v8 == 1)
  {
    v11 = *v9;
    if (v11 <= a4)
    {
      v24 = a2[5];
      if (v24 >= a3)
      {
        if (v11 > a3)
        {
          *v9 = a3;
        }

        if (v24 >= a4)
        {
          return 1;
        }

        goto LABEL_47;
      }

      a2[6] = a3;
      a2[7] = a4;
    }

    else
    {
      *(a2 + 3) = *(a2 + 2);
      a2[4] = a3;
      a2[5] = a4;
    }

    *a2 = 2;
    return 1;
  }

  if (!*a2)
  {
    a2[4] = a3;
    a2[5] = a4;
LABEL_5:
    result = 1;
    *a2 = 1;
    return result;
  }

  v12 = *v9;
  if (v12 > a4)
  {
    goto LABEL_10;
  }

  v13 = a2[7];
  if (v13 < a3)
  {
    goto LABEL_10;
  }

  v28 = a2[5];
  v29 = a2[6];
  if (v28 >= a3)
  {
    if (v29 <= a4)
    {
      v36 = a2[7];
      if (v12 > a3)
      {
        *v9 = a3;
      }

      if (v13 < a4)
      {
        a2[7] = a4;
        v36 = a4;
      }

      a2[5] = v36;
      goto LABEL_5;
    }

    if (v12 > a3)
    {
      *v9 = a3;
    }

    if (v28 >= a4)
    {
      return 1;
    }

LABEL_47:
    a2[5] = a4;
    return 1;
  }

  if (v29 <= a4)
  {
    if (v29 > a3)
    {
      a2[6] = a3;
    }

    if (v13 < a4)
    {
      a2[7] = a4;
    }

    return 1;
  }

LABEL_10:
  *(a1 + 232) = 1;
  v37 = *a2;
  *a2 = -1;
  *(a2 + 1) = 0;
  v14 = v37;
  if (v37 < 1)
  {
LABEL_19:
    v19 = *(a2 + 1);
    if (!v19)
    {
      result = allocate_span(a1);
      if (!result)
      {
        return result;
      }

      v22 = result;
      *(result + 8) = a3;
      *(result + 12) = a4;
      *result = 0;
      goto LABEL_30;
    }

    if (*v19)
    {
      v20 = *(v19 + 12);
      if (v20 < a3)
      {
        while (1)
        {
          v21 = v19;
          v19 = *v19;
          if (!v19)
          {
            break;
          }

          v20 = *(v19 + 12);
          if (v20 >= a3)
          {
            goto LABEL_35;
          }
        }

LABEL_36:
        result = allocate_span(a1);
        if (!result)
        {
          return result;
        }

        *(result + 8) = a3;
        *(result + 12) = a4;
        if (v21)
        {
          *result = *v21;
          *v21 = result;
        }

        else
        {
          *result = v19;
          *(a2 + 1) = result;
        }

        return 1;
      }

      v21 = 0;
LABEL_35:
      v25 = *(v19 + 8);
      if (v25 > a4)
      {
        goto LABEL_36;
      }

      if (v25 == a4)
      {
LABEL_40:
        *(v19 + 8) = a3;
        return 1;
      }

      if (v20 >= a4)
      {
        if (v25 <= a3)
        {
          return 1;
        }

        goto LABEL_40;
      }

      v30 = v19;
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30 && *(v30 + 2) <= a4);
      v32 = *v19;
      if (v30 != *v19)
      {
        if (v25 > a3)
        {
          *(v19 + 8) = a3;
        }

        v33 = *(v31 + 3);
        if (v33 <= a4)
        {
          v33 = a4;
        }

        *(v19 + 12) = v33;
        *v19 = v30;
        *v31 = 0;
        v34 = *(a1 + 216);
        do
        {
          v35 = v32;
          v32 = *v32;
          *v35 = v34;
          v34 = v35;
        }

        while (v32);
        *(a1 + 216) = v35;
        return 1;
      }

      if (v25 >= a3)
      {
        *(v19 + 8) = a3;
      }

LABEL_69:
      *(v19 + 12) = a4;
      return 1;
    }

    v23 = *(v19 + 8);
    if (v23 > a4)
    {
      result = allocate_span(a1);
      if (!result)
      {
        return result;
      }

      v22 = result;
      *(result + 8) = a3;
      *(result + 12) = a4;
      *result = v19;
LABEL_30:
      result = 1;
      *(a2 + 1) = v22;
      return result;
    }

    v26 = *(v19 + 12);
    if (v26 < a3)
    {
      result = allocate_span(a1);
      if (result)
      {
        v27 = result;
        *(result + 8) = a3;
        *(result + 12) = a4;
        *v19 = result;
        result = 1;
        *v27 = 0;
      }

      return result;
    }

    if (v23 > a3)
    {
      *(v19 + 8) = a3;
    }

    if (v26 < a4)
    {
      goto LABEL_69;
    }

    return 1;
  }

  v15 = 0;
  v16 = (&v37 | 0xA);
  while (1)
  {
    result = allocate_span(a1);
    if (!result)
    {
      return result;
    }

    v17 = *v16;
    *(result + 8) = *(v16 - 1);
    *(result + 12) = v17;
    *result = 0;
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = (a2 + 4);
    }

    if (!v15)
    {
      v15 = result;
    }

    *v18 = result;
    v16 += 2;
    if (!--v14)
    {
      goto LABEL_19;
    }
  }
}

_BYTE *aa_shape_size_check(_BYTE *a1, uint64_t a2, int *a3, void *a4, void *a5, void *a6)
{
  v6 = *a2;
  v7 = *a3;
  if (((*a4 - *a2) >> 2) + 5 <= v7)
  {
    return *a2;
  }

  v13 = (8 * v7 + 511) & 0xFFFFFFFFFFFFFE00;
  if (v6 == a1)
  {
    v16 = malloc_type_realloc(0, v13, 0x9C99BB6EuLL);
    v14 = v16;
    if (!v16)
    {
      return v14;
    }

    memmove(v16, v6, 4 * *a3);
  }

  else
  {
    v14 = malloc_type_realloc(v6, v13, 0x9C99BB6EuLL);
    if (!v14)
    {
      return v14;
    }
  }

  *a3 = 2 * v7;
  v17 = v14 - v6;
  if (v14 != v6)
  {
    *a2 = v14;
    *a4 += v17;
    *a5 += v17;
    if (*a6)
    {
      *a6 += v17;
    }
  }

  return v14;
}

void *free_all_spans(void *a1)
{
  result = a1[28];
  if (result)
  {
    while (*result)
    {
      a1[28] = *result;
      free(result);
      result = a1[28];
    }

    a1[25] = result + 1;
    a1[26] = result + 513;
    a1[27] = 0;
  }

  return result;
}

void *allocate_span(void *a1)
{
  result = a1[25];
  if (result >= a1[26])
  {
    result = a1[27];
    if (result)
    {
      a1[27] = *result;
    }

    else
    {
      result = malloc_type_malloc(0x1008uLL, 0x1020040EF3C788CuLL);
      if (result)
      {
        v3 = result++;
        *v3 = a1[28];
        a1[28] = v3;
        a1[25] = v3 + 3;
        a1[26] = v3 + 513;
      }
    }
  }

  else
  {
    a1[25] = result + 2;
  }

  return result;
}

void aal_stroke_iterate(uint64_t a1, int a2, double *a3, float64x2_t a4, float32x4_t a5, float32x4_t a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v152 = *MEMORY[0x1E69E9840];
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          goto LABEL_201;
        }

        aal_close(a1, a4);
        return;
      }

      v13 = *a3;
      a6.i32[1] = 1206910975;
      if (*a3 <= 3.40282347e38)
      {
        if (v13 >= -3.40282347e38)
        {
          *&v13 = v13;
LABEL_49:
          v30 = a3[1];
          if (v30 <= 3.40282347e38)
          {
            if (v30 >= -3.40282347e38)
            {
              v32 = v30;
LABEL_55:
              v33 = a3[2];
              if (v33 <= 3.40282347e38)
              {
                if (v33 >= -3.40282347e38)
                {
                  *&v33 = v33;
LABEL_61:
                  v35 = a3[3];
                  if (v35 <= 3.40282347e38)
                  {
                    if (v35 >= -3.40282347e38)
                    {
                      v37 = v35;
LABEL_67:
                      v38 = a3[4];
                      if (v38 <= 3.40282347e38)
                      {
                        _NF = v38 < -3.40282347e38;
                        *&v38 = v38;
                        if (_NF)
                        {
                          *&v38 = -3.4028e38;
                        }
                      }

                      else
                      {
                        LODWORD(v38) = 2139095039;
                      }

                      v39 = a3[5];
                      if (v39 <= 3.40282347e38)
                      {
                        v40 = -3.4028e38;
                        _NF = v39 < -3.40282347e38;
                        v41 = v39;
                        if (!_NF)
                        {
                          v40 = v41;
                        }
                      }

                      else
                      {
                        v40 = 3.4028e38;
                      }

                      *(&v13 + 1) = v32;
                      *(&v33 + 1) = v37;
                      *(&v38 + 1) = v40;
                      a6.i32[0] = *(a1 + 144);
                      v42 = *(a1 + 136) * 1.77777778;
                      v43 = *(a1 + 140) * 1.77777778;
                      v44 = 0.00390625;
                      if (v42 >= 0.00390625)
                      {
                        v44 = *(a1 + 136) * 1.77777778;
                        if (v42 > 262144.0)
                        {
                          v44 = 262144.0;
                        }
                      }

                      v45 = a6.f32[0];
                      v46 = vcvtq_f64_f32(*&v13);
                      v47 = vcvtq_f64_f32(*&v33);
                      v48 = vcvtq_f64_f32(*&v38);
                      v49 = 0.00390625;
                      if (v43 >= 0.00390625)
                      {
                        v49 = *(a1 + 140) * 1.77777778;
                        if (v43 > 262144.0)
                        {
                          v49 = 262144.0;
                        }
                      }

                      v50 = 0;
                      v51 = *a1;
                      *a8.i64 = fabsf(*(a1 + 236));
                      v52 = *(a1 + 104) - *a8.i64;
                      v53 = *(a1 + 108) - *a8.i64;
                      v54 = *a8.i64 + *(a1 + 112);
                      v55 = *a8.i64 + *(a1 + 116);
                      a8.i64[0] = 0;
                      v56 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a8)), 0);
                      v57 = vbslq_s8(v56, vmulq_n_f64(v47, v45), v47);
                      v58 = vbslq_s8(v56, vmulq_n_f64(v46, v45), v46);
                      v59 = vbslq_s8(v56, vmulq_n_f64(v48, v45), v48);
                      for (i = v151; ; v59 = i[3])
                      {
                        if (v50 <= 22)
                        {
                          v61 = vaddq_f64(v58, v59);
                          v62 = vaddq_f64(v57, v57);
                          v63 = vaddq_f64(v58, v58);
                          v64 = (v51.f64[0] > v54) | (4 * (v51.f64[0] < v52)) | (2 * (v51.f64[1] > v55)) | (8 * (v51.f64[1] < v53));
                          do
                          {
                            v65 = vaddq_f64(v51, v57);
                            v66 = vsubq_f64(v65, v63);
                            v67 = vmulq_f64(v66, v66);
                            v68 = vsubq_f64(v61, v62);
                            v69 = vmulq_f64(v68, v68);
                            v70 = v67.f64[0] <= v44 && v67.f64[1] <= v49;
                            v71 = v70 && v69.f64[0] <= v44;
                            if (v71 && v69.f64[1] <= v49)
                            {
                              break;
                            }

                            if (v64)
                            {
                              v73 = v59.f64[1];
                              if (v64 == ((v59.f64[0] > v54) | (4 * (v59.f64[0] < v52)) | (2 * (v59.f64[1] > v55)) | (8 * (v59.f64[1] < v53))) && v64 == ((v58.f64[0] > v54) | (4 * (v58.f64[0] < v52)) | (2 * (v58.f64[1] > v55)) | (8 * (v58.f64[1] < v53))) && v64 == ((v57.f64[0] > v54) | (4 * (v57.f64[0] < v52)) | (2 * (v57.f64[1] > v55)) | (8 * (v57.f64[1] < v53))))
                              {
                                v85 = vcvtq_f64_f32(vcvt_f32_f64(v59));
                                *a1 = v85;
                                v86 = *(a1 + 48);
                                if (!v86)
                                {
                                  *(a1 + 32) = v85;
                                }

                                *(a1 + 48) = v86 + 1;
                                if (v50)
                                {
                                  goto LABEL_102;
                                }

                                return;
                              }
                            }

                            else
                            {
                              v73 = v59.f64[1];
                            }

                            v74 = vaddq_f64(v57, v59);
                            i[3].f64[0] = v59.f64[0];
                            i[3].f64[1] = v73;
                            v75 = vaddq_f64(v65, v61);
                            v76 = vaddq_f64(v63, v65);
                            __asm { FMOV            V16.2D, #0.25 }

                            v80 = vaddq_f64(v63, v75);
                            __asm { FMOV            V5.2D, #0.5 }

                            i[1] = vmulq_f64(vaddq_f64(v62, v61), _Q16);
                            i[2] = vmulq_f64(v74, _Q5);
                            __asm { FMOV            V3.2D, #0.125 }

                            v59 = vmulq_f64(vaddq_f64(v62, v80), _Q3);
                            v57 = vmulq_f64(v76, _Q16);
                            *i = v59;
                            i += 4;
                            v58 = vmulq_f64(vaddq_f64(v51, v58), _Q5);
                            ++v50;
                            v63 = vaddq_f64(v58, v58);
                            v62 = vaddq_f64(v57, v57);
                            v61 = vaddq_f64(v59, v58);
                          }

                          while (v50 != 23);
                        }

                        v83 = v59.f64[0];
                        v84 = v59.f64[1];
                        aal_add_point(a1, v83, v84);
                        if (!v50)
                        {
                          break;
                        }

LABEL_102:
                        v51 = i[-4];
                        v58 = i[-3];
                        i -= 4;
                        --v50;
                        v57 = i[2];
                      }

                      return;
                    }

                    *&v36 = -3.4028e38;
                  }

                  else
                  {
                    *&v36 = 3.4028e38;
                  }

                  v37 = *&v36;
                  goto LABEL_67;
                }

                v34 = -8388609;
              }

              else
              {
                v34 = 2139095039;
              }

              LODWORD(v33) = v34;
              goto LABEL_61;
            }

            *&v31 = -3.4028e38;
          }

          else
          {
            *&v31 = 3.4028e38;
          }

          v32 = *&v31;
          goto LABEL_55;
        }

        v14 = -8388609;
      }

      else
      {
        v14 = 2139095039;
      }

      LODWORD(v13) = v14;
      goto LABEL_49;
    }

    v17 = *a3;
    a5.i32[1] = 1206910975;
    if (*a3 <= 3.40282347e38)
    {
      if (v17 >= -3.40282347e38)
      {
        *&v17 = v17;
LABEL_120:
        v91 = a3[1];
        if (v91 <= 3.40282347e38)
        {
          if (v91 >= -3.40282347e38)
          {
            v93 = v91;
LABEL_132:
            v97 = a3[2];
            if (v97 <= 3.40282347e38)
            {
              _NF = v97 < -3.40282347e38;
              *&v97 = v97;
              if (_NF)
              {
                *&v97 = -3.4028e38;
              }
            }

            else
            {
              LODWORD(v97) = 2139095039;
            }

            v98 = a3[3];
            if (v98 <= 3.40282347e38)
            {
              _NF = v98 < -3.40282347e38;
              v99 = v98;
              if (_NF)
              {
                v99 = -3.4028e38;
              }
            }

            else
            {
              v99 = 3.4028e38;
            }

            *(&v17 + 1) = v93;
            *(&v97 + 1) = v99;
            a5.i32[0] = *(a1 + 144);
            v100 = *(a1 + 136) * 16.0;
            v101 = *(a1 + 140) * 16.0;
            v102 = 0.00390625;
            if (v100 >= 0.00390625)
            {
              v102 = *(a1 + 136) * 16.0;
              if (v100 > 262144.0)
              {
                v102 = 262144.0;
              }
            }

            v103 = a5.f32[0];
            v104 = vcvtq_f64_f32(*&v17);
            v105 = vcvtq_f64_f32(*&v97);
            v106 = 0.00390625;
            if (v101 >= 0.00390625)
            {
              v106 = *(a1 + 140) * 16.0;
              if (v101 > 262144.0)
              {
                v106 = 262144.0;
              }
            }

            v107 = 0;
            v108 = *a1;
            *a9.i64 = fabsf(*(a1 + 236));
            v109 = *(a1 + 104) - *a9.i64;
            v110 = *(a1 + 108) - *a9.i64;
            v111 = *a9.i64 + *(a1 + 112);
            v112 = *a9.i64 + *(a1 + 116);
            a9.i64[0] = 0;
            v113 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a9)), 0);
            v114 = vbslq_s8(v113, vmulq_n_f64(v105, v103), v105);
            v115 = vbslq_s8(v113, vmulq_n_f64(v104, v103), v104);
            v116 = v151;
            __asm
            {
              FMOV            V7.2D, #0.5
              FMOV            V16.2D, #0.25
            }

            v149 = _Q16;
            v150 = _Q7;
            while (1)
            {
              if (v107 <= 22)
              {
                v119 = vaddq_f64(v115, v115);
                v120 = (v108.f64[0] > v111) | (4 * (v108.f64[0] < v109)) | (2 * (v108.f64[1] > v112)) | (8 * (v108.f64[1] < v110));
                do
                {
                  v121 = v116;
                  v122 = vaddq_f64(v108, v114);
                  v123 = vsubq_f64(v122, v119);
                  v124 = vmulq_f64(v123, v123);
                  if (v124.f64[0] <= v102 && v124.f64[1] <= v106)
                  {
                    break;
                  }

                  if (v120 && v120 == ((v114.f64[0] > v111) | (4 * (v114.f64[0] < v109)) | (2 * (v114.f64[1] > v112)) | (8 * (v114.f64[1] < v110))) && v120 == ((v115.f64[0] > v111) | (4 * (v115.f64[0] < v109)) | (2 * (v115.f64[1] > v112)) | (8 * (v115.f64[1] < v110))))
                  {
                    v129 = vcvtq_f64_f32(vcvt_f32_f64(v114));
                    *a1 = v129;
                    v130 = *(a1 + 48);
                    if (!v130)
                    {
                      *(a1 + 32) = v129;
                    }

                    *(a1 + 48) = v130 + 1;
                    if (v107)
                    {
                      goto LABEL_158;
                    }

                    return;
                  }

                  v116 += 3;
                  ++v107;
                  v121[1] = vmulq_f64(vaddq_f64(v115, v114), _Q7);
                  v121[2] = v114;
                  v114 = vmulq_f64(vaddq_f64(v119, v122), _Q16);
                  *v121 = v114;
                  v115 = vmulq_f64(vaddq_f64(v108, v115), _Q7);
                  v119 = vaddq_f64(v115, v115);
                }

                while (v107 != 23);
              }

              v126 = v114.f64[0];
              v127 = v114.f64[1];
              aal_add_point(a1, v126, v127);
              v121 = v116;
              _Q16 = v149;
              _Q7 = v150;
              if (!v107)
              {
                return;
              }

LABEL_158:
              v108 = v121[-3];
              v115 = v121[-2];
              v128 = v121 - 3;
              --v107;
              v114 = v128[2];
              v116 = v128;
            }
          }

          *&v92 = -3.4028e38;
        }

        else
        {
          *&v92 = 3.4028e38;
        }

        v93 = *&v92;
        goto LABEL_132;
      }

      v18 = -8388609;
    }

    else
    {
      v18 = 2139095039;
    }

    LODWORD(v17) = v18;
    goto LABEL_120;
  }

  if (a2 == -3)
  {
    v15 = *a3;
    if (*a3 <= 3.40282347e38)
    {
      _NF = v15 < -3.40282347e38;
      v16 = v15;
      if (_NF)
      {
        v16 = -3.4028e38;
      }
    }

    else
    {
      v16 = 3.4028e38;
    }

    v25 = a3[1];
    if (v25 <= 3.40282347e38)
    {
      _NF = v25 < -3.40282347e38;
      v26 = v25;
      if (_NF)
      {
        v26 = -3.4028e38;
      }
    }

    else
    {
      v26 = 3.4028e38;
    }

    v27 = a3[2];
    if (v27 <= 3.40282347e38)
    {
      if (v27 >= -3.40282347e38)
      {
        v29 = v27;
LABEL_126:
        v94 = a3[3];
        if (v94 <= 3.40282347e38)
        {
          if (v94 >= -3.40282347e38)
          {
            v96 = v94;
LABEL_164:
            *(a1 + 48) = 0;
            v131 = *(a1 + 144);
            _ZF = v131 == 0.0;
            v133 = v131 * v16;
            v134 = v131 * v26;
            v135 = v131 * v29;
            v136 = v131 * v96;
            if (_ZF)
            {
              v137 = v29;
            }

            else
            {
              v137 = v135;
            }

            if (_ZF)
            {
              v138 = v96;
            }

            else
            {
              v138 = v136;
            }

            if (_ZF)
            {
              v139 = v26;
            }

            else
            {
              v139 = v134;
            }

            if (_ZF)
            {
              v140 = v16;
            }

            else
            {
              v140 = v133;
            }

            v141 = v139;
            *a1 = v140;
            *(a1 + 8) = v139;
            *(a1 + 16) = v140;
            *(a1 + 24) = v139;
            if (v139 == v138 && v140 == v137)
            {
              v142 = fabsf(*(a1 + 236));
              if (v140 > (*(a1 + 104) - v142) && v140 < (v142 + *(a1 + 112)) && v139 > (*(a1 + 108) - v142) && v139 < (v142 + *(a1 + 116)))
              {
                v143 = aal_new_edge(a1);
                if (v143)
                {
                  *v143 = (v140 - (v142 * 0.4));
                  *(v143 + 8) = v141;
                  *(v143 + 16) = (v140 + (v142 * 0.4));
                  *(v143 + 24) = v141;
                  *(v143 + 32) = 0;
                  if (v140 < *(a1 + 52))
                  {
                    v144 = *(a1 + 104);
                    if (v140 >= v144)
                    {
                      v144 = v140;
                    }

                    *(a1 + 52) = v144;
                  }

                  if (v140 > *(a1 + 60))
                  {
                    v145 = *(a1 + 112);
                    if (v140 <= v145)
                    {
                      v145 = v140;
                    }

                    *(a1 + 60) = v145;
                  }

                  if (v139 < *(a1 + 56))
                  {
                    v146 = *(a1 + 108);
                    if (v139 >= v146)
                    {
                      v146 = v139;
                    }

                    *(a1 + 56) = v146;
                  }

                  if (v139 > *(a1 + 64))
                  {
                    v147 = *(a1 + 116);
                    if (v139 <= v147)
                    {
                      v147 = v139;
                    }

                    *(a1 + 64) = v147;
                  }
                }
              }
            }

            else
            {
              aal_add_point(a1, v137, v139);
              aal_add_point(a1, v137, v138);
              aal_add_point(a1, v140, v138);
              aal_close(a1, v148);
              *(a1 + 48) = 0;
            }

            return;
          }

          *&v95 = -3.4028e38;
        }

        else
        {
          *&v95 = 3.4028e38;
        }

        v96 = *&v95;
        goto LABEL_164;
      }

      *&v28 = -3.4028e38;
    }

    else
    {
      *&v28 = 3.4028e38;
    }

    v29 = *&v28;
    goto LABEL_126;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v10 = *a3;
      if (*a3 <= 3.40282347e38)
      {
        if (v10 >= -3.40282347e38)
        {
          v24 = v10;
LABEL_108:
          v87 = a3[1];
          if (v87 <= 3.40282347e38)
          {
            if (v87 >= -3.40282347e38)
            {
              v89 = v87;
              goto LABEL_114;
            }

            *&v88 = -3.4028e38;
          }

          else
          {
            *&v88 = 3.4028e38;
          }

          v89 = *&v88;
LABEL_114:
          v90 = *(a1 + 144);
          if (v90 != 0.0)
          {
            v24 = v24 * v90;
            v89 = v89 * v90;
          }

          aal_add_point(a1, v24, v89);
          return;
        }

        *&v11 = -3.4028e38;
      }

      else
      {
        *&v11 = 3.4028e38;
      }

      v24 = *&v11;
      goto LABEL_108;
    }

LABEL_201:
    abort();
  }

  v12 = *a3;
  if (*a3 <= 3.40282347e38)
  {
    _NF = v12 < -3.40282347e38;
    *&v12 = v12;
    if (_NF)
    {
      *&v12 = -3.4028e38;
    }
  }

  else
  {
    LODWORD(v12) = 2139095039;
  }

  v20 = a3[1];
  if (v20 <= 3.40282347e38)
  {
    v21 = -3.4028e38;
    _NF = v20 < -3.40282347e38;
    v22 = v20;
    if (!_NF)
    {
      v21 = v22;
    }
  }

  else
  {
    v21 = 3.4028e38;
  }

  *(a1 + 48) = 0;
  *(&v12 + 1) = v21;
  v23 = vcvtq_f64_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(a1 + 144) != 0.0), 0x1FuLL)), vmul_n_f32(*&v12, *(a1 + 144)), *&v12));
  *a1 = v23;
  *(a1 + 16) = v23;
}

float64x2_t aal_stroke_begin(uint64_t a1, float64x2_t *a2)
{
  if (a2)
  {
    v2 = vdupq_lane_s64(COERCE__INT64(*(a1 + 236)), 0);
    v3 = vsubq_f64(*a2, v2);
    result = vaddq_f64(a2[1], v2);
    *a2 = v3;
    a2[1] = result;
  }

  return result;
}

uint64_t CMYKf_sample_CMYK32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = *(result + 152) - 20;
  v92 = *(result + 144) - 1;
  v9 = 0xFF00000000;
  if (v6)
  {
    v9 = 0;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = (*(result + 256) - 1);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + v11 + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 4;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v21 | v87;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v17 | v87;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_40;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_40:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    v8 += 20;
    *++v92 = 0;
LABEL_41:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 4 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37);
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 32;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_63:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = bswap32(*v36);
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 32;
    }

    v84 = interpolate_cif10a[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 54));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = bswap32(*v36);
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 32;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_cif10a[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_45;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 54));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = bswap32(*v55);
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = bswap32(*v58);
      v60 = (v57 + (v54 >> 54));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = bswap32(*v36);
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 32;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 32;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 32;
      }

      v67 = interpolate_cif10a[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_cif10a[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_45:
  v44 = 0;
  v45 = v23 >> 22;
  v8 += 20;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32(v8, v38 | v96);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v90) | (a2 - v91)) < 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_41;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = bswap32(*v49);
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 32;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_63;
      }
    }

    ++v44;
    v8 += 20;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

float CMYK32(uint64_t a1, uint64_t a2)
{
  *a1 = _blt_float[BYTE3(a2)];
  *(a1 + 4) = _blt_float[BYTE2(a2)];
  *(a1 + 8) = _blt_float[BYTE1(a2)];
  *(a1 + 12) = _blt_float[a2];
  result = *&_blt_float[BYTE4(a2)];
  *(a1 + 16) = result;
  return result;
}

uint64_t CMYKf_sample_cmyk32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = *(result + 152) - 20;
  v92 = *(result + 144) - 1;
  v9 = 0xFF00000000;
  if (v6)
  {
    v9 = 0;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = (*(result + 256) - 1);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + v11 + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 4;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v21 | v87;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v17 | v87;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_40;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_40:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    v8 += 20;
    *++v92 = 0;
LABEL_41:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 4 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 32;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_63:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = *v36;
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 32;
    }

    v84 = interpolate_cif10a[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 54));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = *v36;
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 32;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_cif10a[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_45;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 54));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = *v55;
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = *v58;
      v60 = (v57 + (v54 >> 54));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = *v36;
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 32;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 32;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 32;
      }

      v67 = interpolate_cif10a[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_cif10a[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_45:
  v44 = 0;
  v45 = v23 >> 22;
  v8 += 20;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32(v8, v38 | v96);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v90) | (a2 - v91)) < 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_41;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = *v49;
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 32;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_63;
      }
    }

    ++v44;
    v8 += 20;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

void CMYKf_sample_CMYK64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = *(a1 + 40);
  v9 = *(a1 + 176);
  v109 = *(a1 + 80);
  v110 = *(a1 + 88);
  v122 = *(a1 + 120);
  v123 = *(a1 + 112);
  v10 = *(a1 + 152) - 20;
  v113 = *(a1 + 144) - 1;
  v11 = *(a1 + 260) - 1;
  v120 = *(a1 + 24);
  v118 = *(a1 + 32);
  v12 = *(a1 + 256) - 1;
  v108 = *(a1 + 188);
  v115 = *(a1 + 28);
  v116 = v8 + (v11 * v115) + 2 * v12;
  v121 = v118 + (v11 * v120) + 8 * v12 - 8;
  v111 = *(a1 + 72);
  v112 = *(a1 + 64);
  v117 = v8;
  while (1)
  {
    if (a3 >= v111)
    {
      v18 = v10;
      if (a3 <= v110)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v16 = a4;
        v17 = v112;
      }

      else
      {
        v20 = v7[27];
        v21 = v7[28] + v110;
        v22 = v21 - a3 + (v20 >> 1);
        v16 = a4;
        v17 = v112;
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (v7[29] * v22) >> 32;
        }

        v25 = v23 | v108;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v13 = v7[27];
      v14 = v111 - v7[28];
      v15 = a3 - v14 + (v13 >> 1);
      v16 = a4;
      v17 = v112;
      v18 = v10;
      if (v15 < 1)
      {
        goto LABEL_37;
      }

      if (v15 >= v13)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (v7[29] * v15) >> 32;
      }

      v25 = v19 | v108;
      v26 = v14 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v17)
    {
      if (a2 <= v109)
      {
        v31 = (a2 >> 26) & 0x3C;
        v30 = a2;
      }

      else
      {
        v32 = v7[24];
        v33 = v7[25] + v109;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_37;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((v7[26] * v34) >> 32) >> 15)) | v108;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = v7[24];
      v28 = v17 - v7[25];
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_37;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((v7[26] * v29) >> 32) >> 15)) | v108;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v44 = v16 - 1;
    a2 += v123;
    a3 += v122;
    v10 = v18 + 20;
    *++v113 = 0;
LABEL_38:
    a4 = v44;
    if (!v44)
    {
      return;
    }
  }

  v35 = v26 >> 32;
  v36 = v30 >> 32;
  v37 = v118 + SHIDWORD(v26) * v120 + 8 * (v30 >> 32);
  v38 = v7[4];
  v39 = v121;
  if (v121 >= v37)
  {
    v39 = v37;
  }

  if (v39 < v38)
  {
    v39 = v7[4];
  }

  if (v8)
  {
    v40 = v8 + v35 * v115 + 2 * v36;
    v41 = v7[5];
    v42 = v116;
    v114 = v40;
    if (v116 >= v40)
    {
      v42 = v40;
    }

    if (v42 >= v41)
    {
      v41 = v42;
    }

    v43 = v4 & 0xFFFFFFFFFFFF0000 | (bswap32(*v41) >> 16);
  }

  else
  {
    v114 = 0;
    v43 = v4 | 0xFFFF;
  }

  v45 = ((bswap32(v39[2]) >> 16) << 32) | ((bswap32(v39[3]) >> 16) << 48) | bswap32(v39[1]) & 0xFFFF0000 | (bswap32(*v39) >> 16);
  if (!v9)
  {
    goto LABEL_43;
  }

  v46 = *(v9 + (v31 | v24));
LABEL_63:
  v61 = v46 & 0xF;
  v62 = HIBYTE(v46) & 3;
  if (v61 == 1)
  {
    v100 = (v37 + SBYTE1(v46) * v120);
    if (v121 < v100)
    {
      v100 = v121;
    }

    if (v100 >= v38)
    {
      v38 = v100;
    }

    v101 = ((bswap32(v38[2]) >> 16) << 32) | ((bswap32(v38[3]) >> 16) << 48) | bswap32(v38[1]) & 0xFFFF0000 | (bswap32(*v38) >> 16);
    v102 = 0xFFFF;
    if (v8)
    {
      v103 = (v114 + SBYTE1(v46) * v115);
      if (v116 < v103)
      {
        v103 = v116;
      }

      if (v103 < v7[5])
      {
        v103 = v7[5];
      }

      v102 = bswap32(*v103) >> 16;
    }

    v104 = &interpolate_cmyk64 + 16 * v62;
    v105 = *v104;
    v106 = v62 + 1;
    v95 = v45 - ((*v104 & v45) >> v106);
    LODWORD(v104) = *(v104 + 4);
    v96 = v43 - ((v104 & v43) >> v106);
    v97 = v43 & 0xFFFFFFFFFFFF0000;
    v98 = (v105 & v101) >> v106;
    v99 = (v102 & v104) >> v106;
    goto LABEL_117;
  }

  if (v61 == 2)
  {
    v87 = HIWORD(v46) << 56;
    v88 = (v37 + (v87 >> 53));
    if (v121 < v88)
    {
      v88 = v121;
    }

    if (v88 >= v38)
    {
      v38 = v88;
    }

    v89 = ((bswap32(v38[2]) >> 16) << 32) | ((bswap32(v38[3]) >> 16) << 48) | bswap32(v38[1]) & 0xFFFF0000 | (bswap32(*v38) >> 16);
    v90 = 0xFFFF;
    if (v8)
    {
      v91 = (v114 + (v87 >> 55));
      if (v116 < v91)
      {
        v91 = v116;
      }

      if (v91 < v7[5])
      {
        v91 = v7[5];
      }

      v90 = bswap32(*v91) >> 16;
    }

    v92 = (v46 >> 28) & 3;
    v93 = &interpolate_cmyk64 + 16 * v92;
    v94 = *v93;
    LOBYTE(v92) = v92 + 1;
    v95 = v45 - ((*v93 & v45) >> v92);
    LODWORD(v93) = *(v93 + 4);
    v96 = v43 - ((v93 & v43) >> v92);
    v97 = v43 & 0xFFFFFFFFFFFF0000;
    v98 = (v94 & v89) >> v92;
    v99 = (v90 & v93) >> v92;
LABEL_117:
    v45 = v95 + v98;
    v49 = v97 | (v96 + v99);
    goto LABEL_118;
  }

  if (v61 != 3)
  {
LABEL_43:
    v47 = v109;
    v48 = v110;
    v49 = v43;
    goto LABEL_44;
  }

  v63 = HIWORD(v46) << 56;
  v64 = (v37 + (v63 >> 53));
  if (v121 < v64)
  {
    v64 = v121;
  }

  if (v64 < v38)
  {
    v64 = v38;
  }

  v65 = ((bswap32(v64[2]) >> 16) << 32) | ((bswap32(v64[3]) >> 16) << 48) | bswap32(v64[1]) & 0xFFFF0000 | (bswap32(*v64) >> 16);
  v66 = v37 + SBYTE1(v46) * v120;
  if (v121 >= v66)
  {
    v67 = (v37 + SBYTE1(v46) * v120);
  }

  else
  {
    v67 = v121;
  }

  if (v67 < v38)
  {
    v67 = v38;
  }

  v68 = ((bswap32(v67[2]) >> 16) << 32) | ((bswap32(v67[3]) >> 16) << 48) | bswap32(v67[1]) & 0xFFFF0000 | (bswap32(*v67) >> 16);
  v69 = (v66 + (v63 >> 53));
  if (v121 < v69)
  {
    v69 = v121;
  }

  if (v69 >= v38)
  {
    v38 = v69;
  }

  v70 = ((bswap32(v38[2]) >> 16) << 32) | ((bswap32(v38[3]) >> 16) << 48) | bswap32(v38[1]) & 0xFFFF0000 | (bswap32(*v38) >> 16);
  v71 = 0xFFFF;
  v72 = 0xFFFF;
  v73 = 0xFFFF;
  if (v8)
  {
    v74 = (v114 + (v63 >> 55));
    v75 = v7[5];
    if (v116 < v74)
    {
      v74 = v116;
    }

    if (v74 < v75)
    {
      v74 = v7[5];
    }

    v73 = bswap32(*v74) >> 16;
    v76 = v114 + SBYTE1(v46) * v115;
    if (v116 >= v76)
    {
      v77 = (v114 + SBYTE1(v46) * v115);
    }

    else
    {
      v77 = v116;
    }

    if (v77 < v75)
    {
      v77 = v7[5];
    }

    v72 = bswap32(*v77) >> 16;
    v78 = (v76 + (v63 >> 55));
    if (v116 < v78)
    {
      v78 = v116;
    }

    if (v78 < v75)
    {
      v78 = v7[5];
    }

    v71 = bswap32(*v78) >> 16;
  }

  v79 = &interpolate_cmyk64 + 16 * v62;
  v80 = *v79;
  v81 = v62 + 1;
  v82 = v45 - ((*v79 & v45) >> v81);
  LODWORD(v79) = *(v79 + 4);
  v83 = v43 - ((v79 & v43) >> v81) + ((v72 & v79) >> v81);
  v84 = v65 - ((v80 & v65) >> v81) + ((v80 & v70) >> v81);
  v85 = (v46 >> 28) & 3;
  v86 = &interpolate_cmyk64 + 16 * v85;
  LOBYTE(v85) = v85 + 1;
  v45 = v82 + ((v80 & v68) >> v81) - (((v82 + ((v80 & v68) >> v81)) & *v86) >> v85) + ((v84 & *v86) >> v85);
  v49 = v43 & 0xFFFFFFFFFFFF0000 | (v83 - ((v83 & *(v86 + 4)) >> v85) + (((v73 - ((v73 & v79) >> v81) + ((v71 & v79) >> v81)) & *(v86 + 4)) >> v85));
LABEL_118:
  v47 = v109;
  v48 = v110;
LABEL_44:
  v50 = 0;
  v51 = v25 >> 22;
  v52 = (v18 + 20);
  v107 = v16;
  v53 = v16 - 1;
  a3 += v122;
  v54 = v48 - a3;
  a2 += v123;
  v55 = v47 - a2;
  while (1)
  {
    v10 = v52;
    v56 = v52;
    v4 = v49;
    v57 = v9;
    CMYK64(v56, v45, v49);
    *(v113 + 1 + v50) = v51;
    v7 = a1;
    v8 = v117;
    if (v53 == v50)
    {
      break;
    }

    v9 = v57;
    if ((v54 | v55 | (a3 - v111) | (a2 - v112)) < 0)
    {
      v113 += v50 + 1;
      v44 = ~v50 + v107;
      goto LABEL_38;
    }

    v37 = v118 + SHIDWORD(a3) * v120 + 8 * (a2 >> 32);
    v38 = *(a1 + 32);
    v58 = v121;
    if (v121 >= v37)
    {
      v58 = (v118 + SHIDWORD(a3) * v120 + 8 * (a2 >> 32));
    }

    if (v58 < v38)
    {
      v58 = *(a1 + 32);
    }

    v18 = v10;
    if (v117)
    {
      v59 = *(a1 + 40);
      v60 = v116;
      v114 = v117 + SHIDWORD(a3) * v115 + 2 * (a2 >> 32);
      if (v116 >= v114)
      {
        v60 = v117 + SHIDWORD(a3) * v115 + 2 * (a2 >> 32);
      }

      if (v60 >= v59)
      {
        v59 = v60;
      }

      v49 = v4 & 0xFFFFFFFFFFFF0000 | (bswap32(*v59) >> 16);
    }

    else
    {
      v49 = v4 | 0xFFFF;
    }

    v45 = ((bswap32(v58[2]) >> 16) << 32) | ((bswap32(v58[3]) >> 16) << 48) | bswap32(v58[1]) & 0xFFFF0000 | (bswap32(*v58) >> 16);
    if (v9)
    {
      v46 = *(v9 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v46 & 0xF) != 0)
      {
        v43 = v49;
        v113 += v50 + 1;
        v16 = ~v50 + v107;
        v25 = -1;
        goto LABEL_63;
      }
    }

    ++v50;
    v52 = (v10 + 20);
    a3 += v122;
    v54 -= v122;
    a2 += v123;
    v55 -= v123;
    LOBYTE(v51) = -1;
  }
}
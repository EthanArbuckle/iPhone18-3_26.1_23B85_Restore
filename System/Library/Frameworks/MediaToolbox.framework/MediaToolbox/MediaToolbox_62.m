CGColor *copyContentColor(uint64_t a1, CGColorRef color, uint64_t a3, const __CFDictionary *a4, void *key, CGFloat a6)
{
  if (a1 || !color)
  {
    v10 = 1;
    if (a4)
    {
      if (key)
      {
        CGColorFromCFArray = createCGColorFromCFArray(a4, key, 0);
        v10 = CGColorFromCFArray == 0;
        if (CGColorFromCFArray)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    CGColorFromCFArray = CGColorCreateCopy(color);
    v10 = 1;
    if (CGColorFromCFArray)
    {
      goto LABEL_9;
    }
  }

  CGColorFromCFArray = CGColorCreateCopy(color);
  if (!CGColorFromCFArray)
  {
    return CGColorFromCFArray;
  }

LABEL_9:
  if (!a3)
  {
    if (a6 < 0.0)
    {
      return CGColorFromCFArray;
    }

    goto LABEL_16;
  }

  if (a6 >= 0.0 && v10)
  {
LABEL_16:
    CopyWithAlpha = CGColorCreateCopyWithAlpha(CGColorFromCFArray, a6);
    if (CopyWithAlpha)
    {
      v13 = CopyWithAlpha;
      CGColorRelease(CGColorFromCFArray);
      return v13;
    }
  }

  return CGColorFromCFArray;
}

uint64_t subtitleRendererDrawText(double a1, double a2, double a3, double a4, double a5, uint64_t a6, const __CFAttributedString *a7, CGContext *a8, unsigned int a9)
{
  v95 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a9 == 1)
  {
    CGContextSetLineJoin(a8, kCGLineJoinBevel);
    v18 = CMBaseObjectGetDerivedStorage();
    v19 = 0.0;
    v20 = 0.0;
  }

  else
  {
    v18 = CMBaseObjectGetDerivedStorage();
    if (a1 <= 60.0)
    {
      v20 = a1 * 0.0882352941;
    }

    else
    {
      v20 = a1 * 0.0882352941 / 1.5;
    }

    if (*(v18 + 32) != 1)
    {
      v20 = -v20;
    }

    v19 = 0.0;
  }

  effectiveRange.a = 0.0;
  effectiveRange.b = 0.0;
  Attributes = CFAttributedStringGetAttributes(a7, 0, &effectiveRange);
  EdgeStyle = getEdgeStyle(*(v18 + 216), *(v18 + 352), Attributes, *MEMORY[0x1E6960818]);
  if (EdgeStyle > 2)
  {
    if (EdgeStyle == 3)
    {
      if (a1 <= 60.0)
      {
        v19 = a1 * 0.0882352941;
      }

      else
      {
        v19 = a1 * 0.0882352941 / 1.5;
      }

      v20 = -v19;
    }

    else if (EdgeStyle == 4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (EdgeStyle == 1)
    {
      goto LABEL_26;
    }

    if (EdgeStyle == 2)
    {
      if (a1 <= 60.0)
      {
        v19 = a1 * -0.0882352941;
        v20 = a1 * 0.0882352941;
      }

      else
      {
        v19 = a1 * 0.0882352941 / -1.5;
        v20 = a1 * 0.0882352941 / 1.5;
      }
    }
  }

  *&effectiveRange.a = xmmword_196E78EF8;
  *&effectiveRange.c = *algn_196E78F08;
  v23 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (v23)
  {
    v24 = v23;
    v25 = CGColorCreate(v23, &effectiveRange.a);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v25, *(v18 + 248));
    CGColorRelease(v25);
    CGColorSpaceRelease(v24);
  }

  else
  {
    CopyWithAlpha = 0;
  }

  v102.width = v19;
  v102.height = v20;
  CGContextSetShadowWithColor(a8, v102, 4.0, CopyWithAlpha);
  CGColorRelease(CopyWithAlpha);
LABEL_26:
  Mutable = CGPathCreateMutable();
  if (!Mutable)
  {
    return 4294955204;
  }

  v28 = Mutable;
  v29 = CTFramesetterCreateWithAttributedString(a7);
  if (v29)
  {
    v30 = v29;
    v92.location = 0;
    v92.length = 0;
    Attribute = CFAttributedStringGetAttribute(a7, 0, *MEMORY[0x1E6960998], &v92);
    FrameAttributesDictionary = createFrameAttributesDictionary(Attribute);
    effectiveRange.a = 0.0;
    v33 = CFAttributedStringGetAttribute(a7, 0, @"kFigSubtitleRenderer_CompensationInTextLayout", &v92);
    if (v33)
    {
      CFNumberGetValue(v33, kCFNumberCGFloatType, &effectiveRange);
    }

    v104.origin.x = a2 + effectiveRange.a;
    v104.origin.y = a3 + effectiveRange.a;
    v104.size.width = a4 - effectiveRange.a * 2.0;
    v104.size.height = a5 - effectiveRange.a * 2.0;
    v75 = a3 + effectiveRange.a;
    v76 = a2 + effectiveRange.a;
    CGPathAddRect(v28, 0, v104);
    v96.length = CFAttributedStringGetLength(a7);
    v96.location = 0;
    v34 = CTFramesetterCreateFrame(v30, v96, v28, FrameAttributesDictionary);
    if (FrameAttributesDictionary)
    {
      CFRelease(FrameAttributesDictionary);
    }

    if (v34)
    {
      if (*(DerivedStorage + 28))
      {
        Lines = CTFrameGetLines(v34);
        leading = 0.0;
        Count = CFArrayGetCount(Lines);
        if (Count >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Lines, Count - 1);
          CTLineGetTypographicBounds(ValueAtIndex, 0, 0, &leading);
        }

        frame = v34;
        v67 = v30;
        v68 = v28;
        if (Attribute)
        {
          CGContextSaveGState(a8);
          *&effectiveRange.a = xmmword_196E78EA0;
          effectiveRange.c = 1.0;
          memset(&effectiveRange.d, 0, 24);
          CGContextConcatCTM(a8, &effectiveRange);
          *&v93.a = xmmword_196E78EA0;
          v93.c = 1.0;
          memset(&v93.d, 0, 24);
          CGAffineTransformInvert(&effectiveRange, &v93);
          v73 = *&effectiveRange.c;
          v74 = *&effectiveRange.a;
          v37 = *&effectiveRange.tx;
        }

        else
        {
          v73 = *(MEMORY[0x1E695EFD0] + 16);
          v74 = *MEMORY[0x1E695EFD0];
          v37 = *(MEMORY[0x1E695EFD0] + 32);
        }

        v72 = v37;
        if (Count >= 1)
        {
          v39 = 0;
          theString2 = *MEMORY[0x1E6960C30];
          name = *MEMORY[0x1E695F1C0];
          v40 = *MEMORY[0x1E6960810];
          v79 = *(MEMORY[0x1E695F060] + 8);
          v80 = *MEMORY[0x1E695F060];
          v70 = Lines;
          v71 = Attribute;
          while (1)
          {
            v41 = CFArrayGetValueAtIndex(Lines, v39);
            origins.x = 0.0;
            origins.y = 0.0;
            v97.location = v39;
            v97.length = 1;
            CTFrameGetLineOrigins(frame, v97, &origins);
            origins.x = v76 + origins.x;
            if (Attribute && CFStringCompare(Attribute, theString2, 0) == kCFCompareEqualTo)
            {
              effectiveRange.a = 0.0;
              effectiveRange.b = 0.0;
              v98.location = Count + ~v39;
              v98.length = 1;
              CTFrameGetLineOrigins(frame, v98, &effectiveRange);
              b = effectiveRange.b;
            }

            else
            {
              b = origins.y;
            }

            origins = vaddq_f64(v72, vmlaq_n_f64(vmulq_n_f64(v73, v75 + b + leading * -0.5), v74, origins.x));
            CGContextSetTextPosition(a8, origins.x, origins.y);
            if (v39)
            {
              BoundsWithOptions = CTLineGetBoundsWithOptions(v41, 0x10uLL);
            }

            else
            {
              v106 = CTLineGetBoundsWithOptions(v41, 0);
              x = v106.origin.x;
              y = v106.origin.y;
              width = v106.size.width;
              height = v106.size.height;
              v109 = CTLineGetBoundsWithOptions(v41, 8uLL);
              v107.origin.x = x;
              v107.origin.y = y;
              v107.size.width = width;
              v107.size.height = height;
              BoundsWithOptions = CGRectUnion(v107, v109);
            }

            v81 = BoundsWithOptions.size.height;
            v82 = BoundsWithOptions.origin.y;
            GlyphRuns = CTLineGetGlyphRuns(v41);
            memset(&effectiveRange, 0, sizeof(effectiveRange));
            CGContextGetTextMatrix(&effectiveRange, a8);
            if (CFArrayGetCount(GlyphRuns) >= 1)
            {
              break;
            }

LABEL_80:
            ++v39;
            Lines = v70;
            Attribute = v71;
            if (v39 == Count)
            {
              goto LABEL_81;
            }
          }

          v48 = 0;
          v49 = 0.0;
          while (1)
          {
            descent = 0.0;
            ascent = 0.0;
            v85 = 0.0;
            v50 = CFArrayGetValueAtIndex(GlyphRuns, v48);
            v51 = CTRunGetAttributes(v50);
            TextPosition = CGContextGetTextPosition(a8);
            CTRunGetTextMatrix(&v93, v50);
            v88 = *&v93.a;
            v89 = *&v93.c;
            tx = v93.tx;
            ty = v93.ty;
            v99.location = 0;
            v99.length = 0;
            TypographicBounds = CTRunGetTypographicBounds(v50, v99, &ascent, &descent, &v85);
            v56 = origins.y;
            v84 = origins.x;
            v57 = descent;
            *&v93.a = v88;
            *&v93.c = v89;
            v93.tx = tx;
            v93.ty = ty;
            CGAffineTransformIsIdentity(&v93);
            if (a9 != 2)
            {
              if (a9 <= 1)
              {
                CGContextSaveGState(a8);
                *&v93.a = v88;
                *&v93.c = v89;
                v93.tx = tx;
                v93.ty = ty;
                if (CGAffineTransformIsIdentity(&v93))
                {
                  CGContextSetTextPosition(a8, TextPosition.x, v56 - v57 + descent);
                  v100.location = 0;
                  v100.length = 0;
                  CTRunDraw(v50, a8, v100);
                }

                else
                {
                  *&v93.a = v88;
                  *&v93.c = v89;
                  *&v93.tx = TextPosition;
                  CGContextSetTextMatrix(a8, &v93);
                  v101.location = 0;
                  v101.length = 0;
                  CTRunDraw(v50, a8, v101);
                  v93 = effectiveRange;
                  CGContextSetTextMatrix(a8, &v93);
                }

                CGContextRestoreGState(a8);
              }

              goto LABEL_77;
            }

            if (v51)
            {
              break;
            }

            v62 = 0;
LABEL_76:
            CGColorRelease(v62);
LABEL_77:
            v49 = v49 + TypographicBounds;
            CGContextSetTextPosition(a8, TextPosition.x, TextPosition.y);
            if (++v48 >= CFArrayGetCount(GlyphRuns))
            {
              goto LABEL_80;
            }
          }

          v58 = CGColorSpaceCreateWithName(name);
          if (CFDictionaryContainsKey(v51, v40))
          {
            CGColorFromCFArray = createCGColorFromCFArray(v51, v40, 0);
            v60 = CGColorFromCFArray;
            if (CGColorFromCFArray)
            {
              if (*(DerivedStorage + 96))
              {
                Components = CGColorGetComponents(CGColorFromCFArray);
                *&v93.a = *Components;
                v93.c = Components[2];
                goto LABEL_69;
              }

              v63 = 0;
LABEL_68:
              v64 = CGColorGetComponents(*(DerivedStorage + 232));
              *&v93.a = *v64;
              v93.c = v64[2];
              v65 = (DerivedStorage + 256);
              if (v63)
              {
LABEL_72:
                v93.d = *v65;
                v62 = CGColorCreate(v58, &v93.a);
                CGColorRelease(v60);
                if (v58)
                {
                  CFRelease(v58);
                }

                if (v62)
                {
                  CGContextSaveGState(a8);
                  v103.height = v79;
                  v103.width = v80;
                  CGContextSetShadowWithColor(a8, v103, 0.0, 0);
                  CGContextSetFillColorWithColor(a8, v62);
                  v108.size.height = v81;
                  v108.origin.y = v82 + origins.y + leading * 0.5;
                  v108.origin.x = v49 + v84;
                  v108.size.width = TypographicBounds;
                  CGContextFillRect(a8, v108);
                  CGContextRestoreGState(a8);
                }

                goto LABEL_76;
              }

LABEL_69:
              if (*(DerivedStorage + 120))
              {
                v65 = (CGColorGetComponents(v60) + 3);
              }

              else
              {
                v65 = (DerivedStorage + 256);
              }

              goto LABEL_72;
            }
          }

          else
          {
            v60 = 0;
          }

          v63 = 1;
          goto LABEL_68;
        }

LABEL_81:
        if (Attribute)
        {
          CGContextRestoreGState(a8);
        }

        v30 = v67;
        v28 = v68;
        v34 = frame;
      }

      else
      {
        CTFrameDraw(v34, a8);
      }

      CFRelease(v34);
      v38 = 0;
    }

    else
    {
      v38 = 4294955204;
    }

    CFRelease(v30);
  }

  else
  {
    v38 = 4294955204;
  }

  CFRelease(v28);
  return v38;
}

uint64_t getEdgeStyle(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, void *key)
{
  v5 = a2;
  if (a1)
  {
    if (!theDict || !key)
    {
      return a2;
    }

    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, key, &value) && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(value)))
    {
      v5 = 1;
      if (CFStringCompare(value, *MEMORY[0x1E69609C8], 1uLL))
      {
        if (CFStringCompare(value, *MEMORY[0x1E69609D0], 1uLL))
        {
          if (CFStringCompare(value, *MEMORY[0x1E69609B8], 1uLL))
          {
            if (CFStringCompare(value, *MEMORY[0x1E69609D8], 1uLL))
            {
              if (CFStringCompare(value, *MEMORY[0x1E69609C0], 1uLL))
              {
                v5 = 0;
              }

              else
              {
                v5 = 5;
              }
            }

            else
            {
              v5 = 4;
            }
          }

          else
          {
            v5 = 3;
          }
        }

        else
        {
          v5 = 2;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  if (!v5)
  {
    return a2;
  }

  return v5;
}

void setupHighlight(uint64_t a1, const __CFAttributedString *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 28))
  {
    v4 = DerivedStorage;
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    Length = CFAttributedStringGetLength(a2);
    if (Length >= 1)
    {
      v6 = Length;
      v7 = 0;
      v8 = *MEMORY[0x1E695F1C0];
      v9 = *MEMORY[0x1E6960810];
      attrName = *MEMORY[0x1E6965630];
      v21 = *MEMORY[0x1E6965A90];
      v10 = *MEMORY[0x1E695E4D0];
      while (1)
      {
        Attributes = CFAttributedStringGetAttributes(a2, v7, &effectiveRange);
        if (Attributes)
        {
          break;
        }

LABEL_21:
        v7 = effectiveRange.length + effectiveRange.location;
        if (effectiveRange.length + effectiveRange.location >= v6)
        {
          return;
        }
      }

      v12 = Attributes;
      v13 = CGColorSpaceCreateWithName(v8);
      if (CFDictionaryContainsKey(v12, v9))
      {
        CGColorFromCFArray = createCGColorFromCFArray(v12, v9, 0);
        v15 = CGColorFromCFArray;
        if (CGColorFromCFArray)
        {
          if (*(v4 + 96))
          {
            v16 = CGColorGetComponents(CGColorFromCFArray);
            *components = *v16;
            v25 = *(v16 + 2);
            goto LABEL_13;
          }

          v17 = 0;
LABEL_12:
          v18 = CGColorGetComponents(*(v4 + 232));
          *components = *v18;
          v25 = *(v18 + 2);
          v19 = (v4 + 256);
          if (v17)
          {
LABEL_16:
            v26 = *v19;
            v20 = CGColorCreate(v13, components);
            CGColorRelease(v15);
            if (v13)
            {
              CFRelease(v13);
            }

            if (v20)
            {
              CFAttributedStringSetAttribute(a2, effectiveRange, attrName, v20);
              CFAttributedStringSetAttribute(a2, effectiveRange, v21, v10);
            }

            CGColorRelease(v20);
            goto LABEL_21;
          }

LABEL_13:
          if (*(v4 + 120))
          {
            v19 = CGColorGetComponents(v15) + 3;
          }

          else
          {
            v19 = (v4 + 256);
          }

          goto LABEL_16;
        }
      }

      else
      {
        v15 = 0;
      }

      v17 = 1;
      goto LABEL_12;
    }
  }
}

uint64_t subtitleRendererSetupText(uint64_t a1, const __CFAttributedString *a2, int a3, double a4)
{
  v151 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  switch(a3)
  {
    case 0:
      v9 = DerivedStorage;
      v142.location = 0;
      v142.length = 0;
      Length = CFAttributedStringGetLength(a2);
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      v11 = CFAttributedStringGetAttribute(a2, 0, *MEMORY[0x1E6960998], &effectiveRange);
      v12 = CFAttributedStringGetAttribute(a2, 0, @"kFigSubtitleRenderer_SourceFormat", &effectiveRange);
      valuePtr = 0;
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      v13 = CFAttributedStringGetLength(a2);
      String = CFAttributedStringGetString(a2);
      v15 = malloc_type_calloc(v13, 2uLL, 0x1000040BDFB0063uLL);
      v16 = MEMORY[0x1E695E480];
      if (v15)
      {
        v17 = v15;
        LODWORD(value.a) = 1;
        v18 = *MEMORY[0x1E695E480];
        v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &value);
        if (v19)
        {
          v20 = v19;
          v154.location = 0;
          v154.length = v13;
          CFStringGetCharacters(String, v154, v17);
          if (v13 < 1)
          {
            v26 = 0;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            v23 = -1;
            do
            {
              v24 = v17[v22];
              if ((vmaxv_u16(vcgt_u16(0x51C019C0003000C0, vadd_s16(vdup_n_s16(v24), 0xB200CC00CE40CFC0))) & 1) != 0 || (v24 + 1792) < 0x200u || (v24 + 464) < 0x20u || (v24 + 256) < 0xF0u || (v24 & 0xFF80) == 0x2E80 || (v24 & 0xFFC0) == 0x3000 || (v24 & 0xFE00) == 0x3200)
              {
                if (v23 < 0)
                {
                  v23 = v22;
                }
              }

              else
              {
                if (v23 >= -1)
                {
                  v25 = -1;
                }

                else
                {
                  v25 = v23;
                }

                if (v23 >= 0)
                {
                  v21 = 1;
                }

                v23 = v25;
              }

              ++v22;
            }

            while (v13 != v22);
            if (v23 >= 0)
            {
              v26 = 1;
            }

            else
            {
              v26 = v21;
            }
          }

          CFRelease(v20);
        }

        else
        {
          v26 = 0;
        }

        free(v17);
        v127 = v11 != 0;
        v109 = 1;
        if (v26 && v11)
        {
          v156.location = 0;
          v156.length = Length;
          CFAttributedStringSetAttribute(a2, v156, *MEMORY[0x1E6965B50], *MEMORY[0x1E695E4D0]);
          Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            subtitleRendererSetupText_cold_1(&value);
            return LODWORD(value.a);
          }

          v35 = Mutable;
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965640], *MEMORY[0x1E6965650]);
          v157.location = 0;
          v157.length = Length;
          CFAttributedStringSetAttribute(a2, v157, *MEMORY[0x1E6965648], v35);
          CFRelease(v35);
          v109 = 0;
          v127 = 1;
        }
      }

      else
      {
        v127 = v11 != 0;
        v109 = 1;
      }

      v36 = CTParagraphStyleCreate(0, 0);
      if (!v36)
      {
        return 4294955204;
      }

      v37 = v36;
      CTParagraphStyleSetCompositionLanguage();
      v158.location = 0;
      v158.length = Length;
      v110 = *MEMORY[0x1E6965A30];
      CFAttributedStringSetAttribute(a2, v158, *MEMORY[0x1E6965A30], v37);
      CFRelease(v37);
      v132 = *MEMORY[0x1E6965798];
      v124 = *MEMORY[0x1E6960878];
      key = *MEMORY[0x1E6960988];
      v112 = *MEMORY[0x1E6960890];
      attrName = *MEMORY[0x1E6965A10];
      v131 = *MEMORY[0x1E6960928];
      v126 = *MEMORY[0x1E695E4D0];
      v122 = *MEMORY[0x1E69608A8];
      v121 = *MEMORY[0x1E69607D0];
      allocator = *v16;
      v119 = (v9 + 288);
      v120 = *MEMORY[0x1E6960990];
      v107 = *MEMORY[0x1E6965B48];
      v118 = *MEMORY[0x1E6960858];
      v117 = *MEMORY[0x1E6960880];
      v113 = *MEMORY[0x1E6965830];
      v116 = *MEMORY[0x1E69608B0];
      v108 = *MEMORY[0x1E6965A20];
      v105 = *MEMORY[0x1E6965678];
      v114 = *MEMORY[0x1E6965658];
      v115 = *MEMORY[0x1E69659D8];
      attribute = *MEMORY[0x1E6965808];
      v130 = Length;
      while (1)
      {
        if (v142.length + v142.location >= Length)
        {
          setupRubyAnnotation(a1, a2, 0, a4);
          v159.length = CFAttributedStringGetLength(a2);
          v142.location = 0;
          v142.length = v159.length;
          v159.location = 0;
          CFAttributedStringSetAttribute(a2, v159, @"kFigSubtitleRenderer_CommonSetupDone", v126);
          return 0;
        }

        v150[0] = xmmword_196E78F18;
        v150[1] = unk_196E78F28;
        v38 = CFRetain(@"Helvetica");
        v139 = 0.0;
        Attributes = CFAttributedStringGetAttributes(a2, v142.length + v142.location, &v142);
        if (!Attributes)
        {
          v133 = 0;
          CGColorFromCFArray = 0;
          v128 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v135 = 0;
          v50 = v132;
          v44 = a4;
          goto LABEL_126;
        }

        v40 = Attributes;
        CGColorFromCFArray = copyContentColor(*(v9 + 88), *(v9 + 224), *(v9 + 112), Attributes, v124, *(v9 + 248));
        if (!CGColorFromCFArray)
        {
          CGColorFromCFArray = createCGColorFromCFArray(0, 0, v150);
        }

        if (CFDictionaryContainsKey(v40, key) && (v41 = CFDictionaryGetValue(v40, key)) != 0)
        {
          CFNumberGetValue(v41, kCFNumberCGFloatType, &v139);
          LODWORD(v133) = fabs(v139) <= 100.0;
        }

        else
        {
          LODWORD(v133) = 0;
        }

        if (v127)
        {
          if (CFDictionaryContainsKey(v40, v112))
          {
            v42 = CFDictionaryGetValue(v40, v112);
            v43 = v42;
            LODWORD(value.a) = 0;
            if (!v42 || (CFNumberGetValue(v42, kCFNumberIntType, &value), LODWORD(value.a) <= 4))
            {
              CFAttributedStringSetAttribute(a2, v142, attrName, v43);
            }
          }
        }

        v44 = a4;
        if (CFDictionaryContainsKey(v40, v131))
        {
          v45 = CFDictionaryGetValue(v40, v131);
          LODWORD(value.a) = 100;
          if (v45)
          {
            CFNumberGetValue(v45, kCFNumberIntType, &value);
            a_low = SLODWORD(value.a);
          }

          else
          {
            a_low = 100.0;
          }

          v44 = a_low * a4 / 100.0;
        }

        v51 = v126 == CFDictionaryGetValue(v40, v122);
        v135 = v126 == CFDictionaryGetValue(v40, v121);
        if (v126 == CFDictionaryGetValue(v40, v120))
        {
          LODWORD(value.a) = 1;
          v52 = CFNumberCreate(allocator, kCFNumberSInt32Type, &value);
          CFAttributedStringSetAttribute(a2, v142, v107, v52);
          if (v52)
          {
            CFRelease(v52);
          }
        }

        v47 = *(v9 + 64) != v51 || *(v9 + 65) != v135 || *(v9 + 80);
        if (valuePtr != 2021028980 && valuePtr != 2004251764)
        {
          break;
        }

        if (CFDictionaryContainsKey(v40, v118))
        {
          v53 = CFDictionaryGetValue(v40, v118);
          if (!v53)
          {
            break;
          }

          v54 = v53;
          CFRetain(v53);
          if (v38)
          {
            CFRelease(v38);
          }

          v55 = 0;
          v128 = 1;
          v50 = v132;
          v38 = v54;
        }

        else
        {
          if (!CFDictionaryContainsKey(v40, v117) || !CFDictionaryGetValue(v40, v117))
          {
            break;
          }

          value.a = 0.0;
          if (FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle() && (v56 = v119[*&value.a]) != 0)
          {
            if (v38)
            {
              CFRelease(v38);
            }

            v38 = CTFontDescriptorCopyAttribute(v56, attribute);
            v55 = 0;
            v50 = v113;
          }

          else
          {
            v55 = 1;
            v50 = v132;
          }

          v128 = 0;
        }

LABEL_99:
        HIDWORD(v133) = v51;
        if (*(v9 + 152))
        {
          if (!v55)
          {
            goto LABEL_111;
          }

          v57 = *v119;
          if (v38)
          {
            CFRelease(v38);
          }
        }

        else
        {
          if (v38)
          {
            CFRelease(v38);
          }

          v57 = *v119;
        }

        v38 = CTFontDescriptorCopyAttribute(v57, attribute);
        v58 = *v119;
        if (!*v119)
        {
          v50 = v113;
LABEL_111:
          v61 = *(v9 + 48);
          if (v61)
          {
            CFRelease(v61);
            *(v9 + 48) = 0;
          }

          v62 = *(v9 + 56);
          if (v62)
          {
            if (CFStringCompare(v62, v38, 0) == kCFCompareEqualTo)
            {
              v48 = 0;
              v49 = 0;
              goto LABEL_123;
            }

            v59 = *(v9 + 56);
          }

          else
          {
            v59 = 0;
          }

          *(v9 + 56) = v38;
          if (v38)
          {
            CFRetain(v38);
          }

          v60 = 0;
          v49 = 0;
          v48 = 1;
          if (!v59)
          {
            goto LABEL_123;
          }

          goto LABEL_120;
        }

        v59 = *(v9 + 48);
        if (v59 == v58)
        {
          v48 = 0;
          v49 = 0;
          v50 = v113;
          goto LABEL_123;
        }

        *(v9 + 48) = v58;
        CFRetain(v58);
        v48 = 0;
        v60 = 1;
        v50 = v113;
        v49 = 1;
        if (!v59)
        {
          goto LABEL_123;
        }

LABEL_120:
        CFRelease(v59);
        v49 = v60;
LABEL_123:
        if (CFDictionaryContainsKey(v40, v116))
        {
          v63 = CFDictionaryGetValue(v40, v116);
          if (v63)
          {
            CFAttributedStringSetAttribute(a2, v142, v108, v63);
          }
        }

LABEL_126:
        v64 = *(v9 + 40);
        if (v64)
        {
          Size = CTFontGetSize(v64);
          v66 = *(v9 + 40);
          if (!(v48 | v47 | v49) && v44 == Size)
          {
            v67 = CGColorFromCFArray;
            if (!v66)
            {
              goto LABEL_202;
            }

            goto LABEL_198;
          }

          if (v66)
          {
            CFRelease(*(v9 + 40));
            *(v9 + 40) = 0;
          }
        }

        v68 = *(v9 + 48);
        v69 = *(v9 + 72);
        v70 = v139;
        v71 = CMBaseObjectGetDerivedStorage();
        if (!v38)
        {
LABEL_156:
          v79 = 0;
          v67 = CGColorFromCFArray;
          goto LABEL_197;
        }

        if (!v69)
        {
          v74 = 0;
          v73 = HIDWORD(v133);
          goto LABEL_149;
        }

        v72 = v71;
        v73 = HIDWORD(v133);
        if (CFStringCompare(@"yue", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"yue-Hant", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"cmn-Hant", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-cmn-Hant", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-Hant", v69, 1uLL) == kCFCompareEqualTo)
        {
          v74 = 3;
          goto LABEL_149;
        }

        if (CFStringCompare(@"cmn-Hans", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-cmn-Hans", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-cmn", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-Hans", v69, 1uLL) == kCFCompareEqualTo)
        {
          v74 = 2;
          goto LABEL_149;
        }

        if (CFStringCompare(@"ja", v69, 1uLL) && CFStringCompare(@"ja-JP", v69, 1uLL))
        {
          v74 = 0;
          goto LABEL_149;
        }

        if (v128)
        {
          v74 = 1;
LABEL_149:
          if (v68)
          {
            v75 = CFRetain(v68);
            v76 = 0;
            if (v75)
            {
              goto LABEL_160;
            }

            goto LABEL_216;
          }

          v77 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v77)
          {
            goto LABEL_156;
          }

          v76 = v77;
          if (v132 == v50)
          {
            v78 = MEMORY[0x1E6965790];
LABEL_158:
            CFDictionaryAddValue(v77, *v78, v38);
          }

          else if (v113 == v50)
          {
            v78 = MEMORY[0x1E6965808];
            goto LABEL_158;
          }

          v75 = CTFontDescriptorCreateWithAttributes(v76);
          if (v75)
          {
            goto LABEL_160;
          }

          goto LABEL_216;
        }

        v74 = 1;
        if (*(v72 + 152) != 1)
        {
          goto LABEL_149;
        }

        *&value.a = 1;
        v75 = MACaptionAppearanceCopyFontDescriptorForLanguage();
        v76 = 0;
        v74 = 1;
        if (v75)
        {
LABEL_160:
          v80 = v73 | (2 * v135);
          CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v75, v80, 3u);
          if (!CopyWithSymbolicTraits)
          {
            if (!v73)
            {
              goto LABEL_171;
            }

            SInt32 = FigCFNumberCreateSInt32();
            UInt32 = FigCFNumberCreateUInt32();
            CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v75, SInt32, UInt32);
            CopyWithSymbolicTraits = CopyWithFeature;
            if (!v135)
            {
              goto LABEL_166;
            }

            if (CopyWithFeature)
            {
              v85 = CTFontDescriptorCreateCopyWithSymbolicTraits(CopyWithFeature, v80, 2u);
              if (v85)
              {
                v86 = v85;
                CFRelease(CopyWithSymbolicTraits);
                CopyWithSymbolicTraits = v86;
              }

LABEL_166:
              if (SInt32)
              {
LABEL_167:
                CFRelease(SInt32);
              }
            }

            else
            {
              CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v75, v80, 2u);
              if (SInt32)
              {
                goto LABEL_167;
              }
            }

            if (UInt32)
            {
              CFRelease(UInt32);
            }

            if (!CopyWithSymbolicTraits)
            {
LABEL_171:
              CopyWithSymbolicTraits = CFRetain(v75);
            }
          }

          if (!v133)
          {
            goto LABEL_228;
          }

          v87 = v70 * 90.0 / 100.0;
          v88 = 89.0;
          if (v87 < 89.0)
          {
            v88 = v70 * 90.0 / 100.0;
            if (v87 <= -89.0)
            {
              v88 = -89.0;
            }
          }

          v89 = tan(v88 * 3.14159265 / 180.0);
          if (v109)
          {
            v90 = 0.0;
          }

          else
          {
            v90 = v89;
          }

          value.a = 1.0;
          if (!v109)
          {
            v89 = 0.0;
          }

          value.b = v90;
          value.c = v89;
          value.d = 1.0;
          value.tx = 0.0;
          value.ty = 0.0;
          v79 = CTFontCreateWithFontDescriptor(CopyWithSymbolicTraits, v44, &value);
          if (!v79)
          {
LABEL_228:
            v79 = CTFontCreateWithFontDescriptor(CopyWithSymbolicTraits, v44, 0);
            if (!v79)
            {
              goto LABEL_192;
            }
          }

          if ((v74 & 2) != 0 && v76 && (*&value.a = qword_1E7492AE8[v74], (v91 = CFArrayCreate(allocator, &value, 1, MEMORY[0x1E695E9C0])) != 0))
          {
            v92 = v91;
            v93 = CTFontCopyDefaultCascadeListForLanguages(v79, v91);
            v67 = CGColorFromCFArray;
            if (v93)
            {
              v94 = v93;
              CFDictionarySetValue(v76, v105, v93);
              CFRelease(v75);
              CFRelease(v79);
              v95 = CTFontDescriptorCreateWithAttributes(v76);
              v75 = v95;
              if (v95)
              {
                v79 = CTFontCreateWithFontDescriptor(v95, v44, 0);
              }

              else
              {
                v79 = 0;
              }

              CFRelease(v94);
              CFRelease(v92);
              if (!v75)
              {
                if (!CopyWithSymbolicTraits)
                {
LABEL_195:
                  if (!v76)
                  {
                    goto LABEL_197;
                  }

LABEL_196:
                  CFRelease(v76);
                  goto LABEL_197;
                }

LABEL_194:
                CFRelease(CopyWithSymbolicTraits);
                goto LABEL_195;
              }
            }

            else
            {
              CFRelease(v92);
            }
          }

          else
          {
LABEL_192:
            v67 = CGColorFromCFArray;
          }

          CFRelease(v75);
          if (!CopyWithSymbolicTraits)
          {
            goto LABEL_195;
          }

          goto LABEL_194;
        }

LABEL_216:
        v79 = 0;
        v67 = CGColorFromCFArray;
        if (v76)
        {
          goto LABEL_196;
        }

LABEL_197:
        *(v9 + 40) = v79;
        *(v9 + 80) = 0;
        *(v9 + 64) = BYTE4(v133);
        *(v9 + 65) = v135;
        if (!v79)
        {
          goto LABEL_202;
        }

LABEL_198:
        TextAlignment = getTextAlignment(a2);
        Ascent = CTFontGetAscent(*(v9 + 40));
        Descent = CTFontGetDescent(*(v9 + 40));
        v98 = *(v9 + 40);
        v99 = CTFontGetAscent(v98);
        v100 = CTFontGetDescent(v98);
        Leading = CTFontGetLeading(v98);
        if (Leading <= (v99 + v100) * 0.2)
        {
          Leading = (v99 + v100) * 0.2;
        }

        v137 = Leading;
        v136 = Ascent + Descent + Leading;
        LODWORD(value.a) = 0;
        *&value.b = 1;
        *&value.c = &TextAlignment;
        LODWORD(value.d) = 15;
        *&value.tx = 8;
        *&value.ty = &v137;
        v144 = 14;
        v145 = 8;
        v146 = &v137;
        v147 = 8;
        v148 = 8;
        v149 = &v136;
        v102 = CTParagraphStyleCreate(&value, 4uLL);
        CFAttributedStringSetAttribute(a2, v142, v115, v67);
        CFAttributedStringSetAttribute(a2, v142, v114, *(v9 + 40));
        if (!v102)
        {
LABEL_202:
          v103 = 4294955204;
          goto LABEL_203;
        }

        CFAttributedStringSetAttribute(a2, v142, v110, v102);
        CFRelease(v102);
        v103 = 0;
LABEL_203:
        Length = v130;
        CGColorRelease(v67);
        if (v38)
        {
          CFRelease(v38);
        }

        if (v103)
        {
          return v103;
        }
      }

      v128 = 0;
      v55 = 1;
      v50 = v132;
      goto LABEL_99;
    case 3:
      v27 = CFAttributedStringGetLength(a2);
      if (v27 >= 1)
      {
        v28 = v27;
        v29 = 0;
        v30 = *MEMORY[0x1E6965658];
        do
        {
          value.a = 0.0;
          value.b = 0.0;
          v31 = CFAttributedStringGetAttribute(a2, v29, v30, &value);
          if (v31)
          {
            if (*&value.b <= 1uLL)
            {
              v32 = 1;
            }

            else
            {
              v32 = *&value.b;
            }

            CopyWithAttributes = CTFontCreateCopyWithAttributes(v31, a4, 0, 0);
            v155.location = v29;
            v155.length = v32;
            CFAttributedStringSetAttribute(a2, v155, v30, CopyWithAttributes);
            CFRelease(CopyWithAttributes);
          }

          if (*&value.b)
          {
            v29 += *&value.b;
          }

          else
          {
            ++v29;
          }
        }

        while (v29 < v28);
      }

      break;
    case 2:
      value.a = 0.0;
      *&v150[0] = 0;
      v8 = CFAttributedStringGetLength(a2);
      calculateStrokeAttributes(a4, a1, &value, v150);
      if (*&value.a)
      {
        v152.location = 0;
        v152.length = v8;
        CFAttributedStringSetAttribute(a2, v152, *MEMORY[0x1E6965A58], *&value.a);
      }

      if (*&v150[0])
      {
        v153.location = 0;
        v153.length = v8;
        CFAttributedStringSetAttribute(a2, v153, *MEMORY[0x1E6965A60], *&v150[0]);
      }

      if (*&value.a)
      {
        CFRelease(*&value.a);
        value.a = 0.0;
      }

      if (*&v150[0])
      {
        CFRelease(*&v150[0]);
        *&v150[0] = 0;
      }

      setupRubyAnnotation(a1, a2, 2, a4);
      break;
  }

  return 0;
}

CGColorRef createCGColorFromCFArray(const __CFDictionary *a1, void *key, _OWORD *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1 || !key || !CFDictionaryContainsKey(a1, key))
  {
    if (!a3)
    {
      return 0;
    }

    v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
LABEL_15:
    v14 = a3[1];
    *components = *a3;
    v18 = v14;
LABEL_16:
    if (v9)
    {
      v8 = CGColorCreate(v9, components);
      CGColorSpaceRelease(v9);
      return v8;
    }

    return 0;
  }

  Value = CFDictionaryGetValue(a1, key);
  v7 = CFGetTypeID(Value);
  if (v7 != CGColorGetTypeID())
  {
    v10 = CFGetTypeID(Value);
    if (v10 == CFArrayGetTypeID())
    {
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v11);
        valuePtr = 0.0;
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 != CFNumberGetTypeID())
        {
          break;
        }

        CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
        components[(v11++ - 1) & 3] = valuePtr;
        if (v11 == 4)
        {
          v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          goto LABEL_16;
        }
      }
    }

LABEL_14:
    v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = CGColorRetain(Value);
  if (!v8)
  {
    goto LABEL_14;
  }

  return v8;
}

CFDictionaryRef createFrameAttributesDictionary(const __CFString *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = *MEMORY[0x1E6965A08];
  valuePtr = 0;
  if (a1)
  {
    if (CFStringCompare(a1, *MEMORY[0x1E6960C38], 0))
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }

    valuePtr = v1;
  }

  v2 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  return CFDictionaryCreate(v2, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

uint64_t getTextAlignment(const __CFAttributedString *a1)
{
  v6.location = 0;
  v6.length = 0;
  Attribute = CFAttributedStringGetAttribute(a1, 0, *MEMORY[0x1E69607B0], &v6);
  if (Attribute)
  {
    v3 = Attribute;
    if (CFStringCompare(Attribute, *MEMORY[0x1E69607A0], 0))
    {
      if (CFStringCompare(v3, *MEMORY[0x1E6960788], 0))
      {
        v4 = 1;
        if (CFStringCompare(v3, *MEMORY[0x1E6960780], 0))
        {
          if (CFStringCompare(v3, *MEMORY[0x1E6960798], 0))
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return (2 * (CFAttributedStringGetAttribute(a1, 0, *MEMORY[0x1E6960998], &v6) == 0));
  }

  return v4;
}

void setupRubyAnnotation(uint64_t a1, CFAttributedStringRef aStr, int a3, double a4)
{
  v5 = aStr;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Length = CFAttributedStringGetLength(aStr);
  if (Length >= 1)
  {
    v7 = Length;
    v8 = 0;
    v9 = *MEMORY[0x1E69659D8];
    v10 = *MEMORY[0x1E6960930];
    key = *MEMORY[0x1E6960938];
    theString2 = *MEMORY[0x1E6960B68];
    v40 = *MEMORY[0x1E6960B58];
    v41 = *MEMORY[0x1E6960B38];
    v39 = *MEMORY[0x1E6960B40];
    v37 = *MEMORY[0x1E6960B48];
    v35 = *MEMORY[0x1E6960B30];
    v36 = *MEMORY[0x1E6960B60];
    v51 = *MEMORY[0x1E6960940];
    attrName = *MEMORY[0x1E6965638];
    v11 = a4 * 0.5;
    v12 = *MEMORY[0x1E695E480];
    v48 = *MEMORY[0x1E6965A48];
    v47 = *MEMORY[0x1E6965A40];
    v46 = *MEMORY[0x1E695E4D0];
    v43 = *MEMORY[0x1E6965A58];
    v42 = *MEMORY[0x1E6965A60];
    v50 = *MEMORY[0x1E6960948];
    v49 = *MEMORY[0x1E6965A38];
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      Attributes = CFAttributedStringGetAttributes(v5, v8, &effectiveRange);
      if (Attributes)
      {
        v14 = Attributes;
        v15 = CFDictionaryContainsKey(Attributes, v9) ? CFDictionaryGetValue(v14, v9) : 0;
        if (CFDictionaryContainsKey(v14, v10))
        {
          break;
        }
      }

LABEL_44:
      v8 = effectiveRange.length + effectiveRange.location;
      if (effectiveRange.length + effectiveRange.location >= v7)
      {
        return;
      }
    }

    Value = CFDictionaryGetValue(v14, v10);
    String = CFAttributedStringGetString(Value);
    v55.location = 0;
    v55.length = 0;
    v18 = CFAttributedStringGetAttributes(Value, 0, &v55);
    v19 = CFDictionaryGetValue(v18, key);
    if (v19)
    {
      v20 = v19;
      if (CFStringCompare(v19, theString2, 0) == kCFCompareEqualTo)
      {
        v21 = kCTRubyAlignmentStart;
        goto LABEL_22;
      }

      if (CFStringCompare(v20, v41, 0))
      {
        if (CFStringCompare(v20, v40, 0))
        {
          if (CFStringCompare(v20, v39, 0))
          {
            if (CFStringCompare(v20, v37, 0))
            {
              if (CFStringCompare(v20, v36, 0))
              {
                v21 = 2 * (CFStringCompare(v20, v35, 0) != kCFCompareEqualTo);
              }

              else
              {
                v21 = kCTRubyAlignmentLineEdge;
              }
            }

            else
            {
              v21 = kCTRubyAlignmentDistributeSpace;
            }
          }

          else
          {
            v21 = kCTRubyAlignmentDistributeLetter;
          }
        }

        else
        {
          v21 = kCTRubyAlignmentEnd;
        }

        goto LABEL_22;
      }
    }

    v21 = kCTRubyAlignmentCenter;
LABEL_22:
    v22 = CFDictionaryGetValue(v18, v51);
    if (v22)
    {
      CFAttributedStringSetAttribute(v5, effectiveRange, attrName, v22);
    }

    v58 = 0;
    valuePtr = 0x3FE0000000000000;
    v57 = 0;
    if (a3 == 2)
    {
      calculateStrokeAttributes(v11, a1, &v58, &v57);
    }

    Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = v12;
    v25 = Mutable;
    if (Mutable)
    {
      v26 = v21;
      v27 = v5;
      v28 = String;
      v29 = v7;
      v30 = v10;
      v31 = CFNumberCreate(v24, kCFNumberCGFloatType, &valuePtr);
      CFDictionaryAddValue(v25, v48, v31);
      if (v31)
      {
        CFRelease(v31);
      }

      CFDictionaryAddValue(v25, v47, v46);
      CFDictionaryAddValue(v25, v9, v15);
      if (v58)
      {
        CFDictionaryAddValue(v25, v43, v58);
      }

      v10 = v30;
      if (v57)
      {
        CFDictionaryAddValue(v25, v42, v57);
      }

      Copy = CFDictionaryCreateCopy(allocator, v25);
      v7 = v29;
      String = v28;
      v5 = v27;
      v21 = v26;
    }

    else
    {
      setupRubyAnnotation_cold_1();
      Copy = 0;
    }

    if (v58)
    {
      CFRelease(v58);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    CFDictionaryGetValue(v18, v50);
    v33 = FigCFEqual() != 0;
    v34 = CTRubyAnnotationCreateWithAttributes(v21, kCTRubyOverhangNone, v33, String, Copy);
    CFAttributedStringSetAttribute(v5, effectiveRange, v49, v34);
    if (v34)
    {
      CFRelease(v34);
    }

    v12 = allocator;
    if (Copy)
    {
      CFRelease(Copy);
    }

    goto LABEL_44;
  }
}

void subtitleRendererLayoutDo(double *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *(v1 + 1);
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[6];
  v6 = v1[7];
  *attrName = *(v1 + 4);
  *value = *(v1 + 2);
  v463 = *(v1 + 5);
  v483 = *(v1 + 6);
  LOBYTE(v477.origin.x) = *(v1 + 112);
  v8 = *(v1 + 116);
  v9 = *(v1 + 31);
  v10 = *(v1 + 16);
  range_8 = *(v1 + 17);
  v436 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  effectiveRange.length = 0;
  effectiveRange.location = 0;
  if (!*DerivedStorage)
  {
    goto LABEL_462;
  }

  if (v10)
  {
    v12 = v10;
    v13 = MEMORY[0x1E695F058];
    if (!v3)
    {
      a_low = -12090;
      v27 = range_8;
      goto LABEL_459;
    }

    v14 = DerivedStorage;
    v396 = v10;
    v15 = CFDictionaryGetValue(v3, @"SubtitleContent");
    if (!v15 || !CFArrayGetCount(v15))
    {
      a_low = -12090;
      v27 = range_8;
      v12 = v10;
      goto LABEL_459;
    }

    v16 = *MEMORY[0x1E695E480];
    Count = CFDictionaryGetCount(v3);
    MutableCopy = CFDictionaryCreateMutableCopy(v16, Count, v3);
    if (!MutableCopy)
    {
      subtitleRendererLayoutDo_cold_3(&v487);
      a_low = LODWORD(v487.a);
      goto LABEL_458;
    }

    v20 = v8 < 1.0 && v8 != 0.0 || v8 == -1.0;
    v21 = fabs(v8);
    if (!v20)
    {
      v21 = 0.9;
    }

    v22 = vmulq_n_f64(*value, v21);
    theDict = MutableCopy;
    v407 = v4;
    v389 = v1;
    v414 = v22;
    v412 = v22.f64[1];
    if (v7 == 0.0 || v6 == 0.0)
    {
      v24 = *MEMORY[0x1E695EFD0];
      v25 = *(MEMORY[0x1E695EFD0] + 16);
      v23 = (MEMORY[0x1E695EFD0] + 32);
      v6 = v22.f64[1];
      v7 = v22.f64[0];
    }

    else
    {
      v23 = &v483;
      v25 = v463;
      v24 = *attrName;
    }

    v482 = *v23;
    *&rect.a = v24;
    *&rect.c = v25;
    *&rect.tx = v482;
    v459 = v21;
    CGAffineTransformScale(&v487, &rect, v21, v21);
    a = v487.a;
    b = v487.b;
    c = v487.c;
    d = v487.d;
    v482 = *&v487.tx;
    v32 = theDict;
    valuea = CFDictionaryGetValue(theDict, @"SubtitleFormat");
    CFNumberGetValue(valuea, kCFNumberSInt32Type, &valuePtr);
    v33 = CFDictionaryGetValue(theDict, @"SubtitleExtendedLanguageTag");
    if (!FigCFEqual())
    {
      v34 = *(v14 + 9);
      *(v14 + 9) = v33;
      if (v33)
      {
        CFRetain(v33);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      v14[80] = 1;
      v32 = theDict;
    }

    v35 = CFDictionaryGetValue(v32, @"SubtitleContent");
    v36 = CFDictionaryGetValue(v32, @"kFigSubtitleRenderer_ObeySubtitleFormatting");
    v37 = CFArrayGetCount(v35);
    theArray = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
    if (theArray)
    {
      v38 = malloc_type_calloc(v37, 0x98uLL, 0x1000040C7D30508uLL);
      if (v38)
      {
        v39 = v38;
        v400 = v5;
        v439 = *MEMORY[0x1E6960998];
        v417 = *MEMORY[0x1E6960C38];
        v418 = v38;
        v413 = v16;
        v392 = *MEMORY[0x1E695E4D0];
        if (v37 >= 1)
        {
          v40 = 0;
          v421 = 0;
          v41 = v6 * d;
          v42 = v6 * c + a * v7;
          v43 = v41 + b * v7;
          v453 = *MEMORY[0x1E6960978];
          theString2 = *MEMORY[0x1E6960C30];
          v450 = *MEMORY[0x1E69608E0];
          v443 = *MEMORY[0x1E69608D8];
          v448 = *MEMORY[0x1E69609A0];
          v464 = v36 == *MEMORY[0x1E695E4D0];
          __asm { FMOV            V1.2D, #0.5 }

          v460 = vmulq_f64(vmulq_n_f64(v414, 1.0 - v459), _Q1);
          v47 = v436;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v35, v40);
            if (ValueAtIndex)
            {
              v49 = ValueAtIndex;
              if (CFAttributedStringGetLength(ValueAtIndex))
              {
                break;
              }
            }

LABEL_70:
            if (v37 == ++v40)
            {
              goto LABEL_73;
            }
          }

          v491.length = CFAttributedStringGetLength(v49);
          v491.location = 0;
          CFAttributedStringSetAttribute(v49, v491, @"kFigSubtitleRenderer_SourceFormat", valuea);
          v50 = &v39[152 * v421];
          *(v50 + 12) = a;
          *(v50 + 13) = b;
          *(v50 + 14) = c;
          *(v50 + 15) = d;
          *(v50 + 8) = v482;
          *v50 = v5;
          *(v50 + 1) = v407;
          *(v50 + 1) = v414;
          *(v50 + 4) = v42;
          *(v50 + 5) = v43;
          *(v50 + 36) = v9;
          if (valuePtr != 2021028980 && valuePtr != 2004251764)
          {
            v59 = *(MEMORY[0x1E695F050] + 16);
            *&rect.a = *MEMORY[0x1E695F050];
            *&rect.c = v59;
            *(v50 + 11) = 0x3FECCCCCCCCCCCCDLL;
            v60 = CFDictionaryGetValue(theDict, @"kFigSubtitleRenderer_TextBox");
            if (v60)
            {
              CGRectMakeWithDictionaryRepresentation(v60, &rect);
            }

            v508.origin.x = rect.a;
            v508.origin.y = rect.b;
            v508.size.width = rect.c;
            v508.size.height = rect.d;
            v487.a = a;
            v487.b = b;
            v487.c = c;
            v487.d = d;
            *&v487.tx = v482;
            v509 = CGRectApplyAffineTransform(v508, &v487);
            v61 = v509.origin.y + v509.size.height * 0.5;
            *(v50 + 8) = v42 * 0.5;
            goto LABEL_67;
          }

          v487.a = 50.0;
          rect.a = 100.0;
          LODWORD(descent[0]) = 0;
          v477.size.width = -100.0;
          Attribute = CFAttributedStringGetAttribute(v49, 0, v439, &effectiveRange);
          v52 = CFAttributedStringGetAttribute(v49, 0, v453, &effectiveRange);
          if (Attribute)
          {
            if (CFStringCompare(Attribute, theString2, 0) == kCFCompareEqualTo)
            {
              v487.a = 0.0;
              if (!v52)
              {
LABEL_40:
                v53 = CFAttributedStringGetAttribute(v49, 0, v450, &effectiveRange);
                v54 = v53;
                rect.a = 100.0;
                if (Attribute)
                {
                  v55 = CFStringCompare(Attribute, theString2, 0);
                  v56 = 100.0;
                  if (v55)
                  {
                    v56 = 0.0;
                  }

                  rect.a = v56;
                  v50[80] = 0;
                  v57 = v50 + 80;
                  if (v54)
                  {
                    CFNumberGetValue(v54, kCFNumberCGFloatType, &rect);
                    if (CFStringCompare(Attribute, v417, 0) == kCFCompareEqualTo)
                    {
                      v58 = 0;
                      rect.a = 100.0 - rect.a;
LABEL_54:
                      v63 = CFAttributedStringGetAttribute(v49, 0, v448, &effectiveRange);
                      if (v63)
                      {
                        CFNumberGetValue(v63, kCFNumberCGFloatType, &v477.size);
                      }

                      *(v50 + 11) = v477.size.width / 100.0;
                      if (Attribute)
                      {
                        v39 = v418;
                        if (*v57)
                        {
                          v64 = SLODWORD(descent[0]);
                        }

                        else
                        {
                          v64 = v42 * (rect.a / 100.0);
                        }

                        v16 = v413;
                        v61 = v43 * ((100.0 - v487.a) / 100.0);
                        *(v50 + 8) = v64;
                      }

                      else
                      {
                        v16 = v413;
                        if (v58)
                        {
                          v61 = SLODWORD(descent[0]);
                        }

                        else
                        {
                          v61 = v43 * ((100.0 - rect.a) / 100.0);
                        }

                        *(v50 + 8) = v42 * (v487.a / 100.0);
                        v39 = v418;
                      }

LABEL_67:
                      *(v50 + 9) = v61;
                      v50[81] = v464;
                      v50[82] = LOBYTE(v477.origin.x);
                      *(v50 + 21) = valuePtr;
                      *(v50 + 3) = v460;
                      Length = CFAttributedStringGetLength(v49);
                      v66 = CFAttributedStringCreateMutableCopy(v16, Length, v49);
                      if (v66)
                      {
                        v67 = v66;
                        CFArrayAppendValue(theArray, v66);
                        CFRelease(v67);
                        ++v421;
                      }

                      v47 = v436;
                      goto LABEL_70;
                    }

LABEL_51:
                    v58 = 0;
                    goto LABEL_54;
                  }
                }

                else
                {
                  v50[80] = 0;
                  v57 = v50 + 80;
                  if (v53)
                  {
                    CFNumberGetValue(v53, kCFNumberCGFloatType, &rect);
                    goto LABEL_51;
                  }
                }

                v62 = CFAttributedStringGetAttribute(v49, 0, v443, &effectiveRange);
                v58 = 1;
                if (v62)
                {
                  CFNumberGetValue(v62, kCFNumberIntType, descent);
                  *v57 = 1;
                }

                goto LABEL_54;
              }

LABEL_39:
              CFNumberGetValue(v52, kCFNumberCGFloatType, &v487);
              goto LABEL_40;
            }

            v487.a = 100.0;
          }

          if (!v52)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v421 = 0;
        v47 = v436;
LABEL_73:
        v410 = *MEMORY[0x1E695F058];
        v420 = *(MEMORY[0x1E695F058] + 8);
        v422 = *(MEMORY[0x1E695F058] + 24);
        v423 = *(MEMORY[0x1E695F058] + 16);
        v430 = *MEMORY[0x1E69631D8];
        v409 = *MEMORY[0x1E69607C8];
        v426 = *MEMORY[0x1E695F060];
        v424 = *(MEMORY[0x1E695F060] + 8);
        v390 = *MEMORY[0x1E69608A8];
        v391 = *MEMORY[0x1E6965A08];
        v401 = *MEMORY[0x1E6960818];
        v429 = *MEMORY[0x1E6960830];
        v419 = *MEMORY[0x1E69609E0];
        v411 = *MEMORY[0x1E69609E8];
        v403 = v5 + v414.f64[0];
        v68 = 1.0;
        v69 = 0.5;
        v428 = *MEMORY[0x1E6960838];
        v435 = *MEMORY[0x1E69609F8];
        v408 = *MEMORY[0x1E6960A08];
        v427 = *MEMORY[0x1E6960A00];
        v449 = 1.0;
        v70 = theArray;
        while (1)
        {
          while (1)
          {
            v402 = CMBaseObjectGetDerivedStorage();
            v437 = CFArrayGetCount(v70);
            if (v437 >= 1)
            {
              for (i = 0; i != v437; ++i)
              {
                v72 = CFArrayGetValueAtIndex(v70, i);
                v73 = &v39[152 * i];
                v74 = *(v73 + 2);
                v75 = *(v73 + 3);
                v76 = *(v73 + 4);
                v77 = *(v73 + 5);
                theString2a = *(v73 + 7);
                v461 = *(v73 + 6);
                attrNamea = *(v73 + 8);
                valueb = *(v73 + 9);
                v441 = v73[80];
                v444 = v73[81];
                v446 = v73[82];
                v78 = *(v73 + 21);
                v79 = *(v73 + 11);
                v80 = *(v73 + 13);
                v81 = *(v73 + 15);
                v82 = *(v73 + 36);
                v83 = CMBaseObjectGetDerivedStorage();
                v486 = 0.0;
                v484 = 0.0;
                *(v83 + 32) = v82;
                *&v454 = v75;
                v477.origin.x = v76;
                _NF = vabdd_f64(v76, v74) < 0.1;
                v440 = (v75 - v77) * v69;
                if (_NF)
                {
                  v85 = (v75 - v77) * v69;
                }

                else
                {
                  v85 = 0.0;
                }

                v465 = v85;
                if (_NF)
                {
                  v86 = 0.0;
                }

                else
                {
                  v86 = (v74 - v76) * v69;
                }

                v485 = v77 * 0.15 / 3.0;
                if (v78 != 1954034535)
                {
                  v487.a = 0.0;
                  v487.b = 0.0;
                  v87 = CFAttributedStringGetAttribute(v72, 0, v430, &v487);
                  if (v87)
                  {
                    CFNumberGetValue(v87, kCFNumberCGFloatType, &v485);
                    v485 = v80 + v81 * v485;
                  }

                  else
                  {
                    v134 = CFAttributedStringGetAttribute(v72, 0, v409, &v487);
                    if (v134)
                    {
                      rect.a = 0.0;
                      CFNumberGetValue(v134, kCFNumberCGFloatType, &rect);
                      if (*(v83 + 144) == 1)
                      {
                        v89 = v77 * rect.a / 100.0;
                        if (v89 > 0.0)
                        {
                          goto LABEL_87;
                        }
                      }
                    }
                  }
                }

                v88 = *(v83 + 280);
                v89 = v485;
                if (v88 > 0.0)
                {
                  v89 = v88 * v485;
                }

LABEL_87:
                v486 = v449 * v89;
                v90 = v465;
                v68 = 1.0;
                v91 = CFNumberCreate(v16, kCFNumberCGFloatType, &v486);
                v492.length = CFAttributedStringGetLength(v72);
                v492.location = 0;
                CFAttributedStringSetAttribute(v72, v492, @"kFigSubtitleRenderer_FontSizeToUse", v91);
                CFRelease(v91);
                v92 = *(v83 + 280);
                v93 = v486;
                v94 = CMBaseObjectGetDerivedStorage();
                *&v451 = v86;
                if (!v72)
                {
                  v133 = v422;
                  v112 = v423;
                  x = v477.origin.x;
                  goto LABEL_172;
                }

                v95 = v94;
                v96 = -v79;
                if (v79 >= 0.0)
                {
                  v96 = v79;
                }

                if (v92 > 0.0)
                {
                  v96 = v96 * (v449 * v92);
                }

                if (v96 > 1.0)
                {
                  v96 = 1.0;
                }

                v484 = 0.0;
                x = v477.origin.x;
                v98 = v477.origin.x * v96;
                rect.b = 0.0;
                rect.a = 0.0;
                v438 = subtitleRendererSetupText(v47, v72, 0, v93);
                v99 = CFAttributedStringGetAttribute(v72, 0, v439, &rect);
                v100 = v99;
                if (v99)
                {
                  v101 = v98;
                }

                else
                {
                  v101 = v77;
                }

                if (v99)
                {
                  v102 = v77;
                }

                else
                {
                  v102 = v98;
                }

                v103 = CFAttributedStringGetLength(v72);
                if (v103 < 1)
                {
                  v112 = v426;
                  v133 = v424;
                  v47 = v436;
                  v68 = 1.0;
                  goto LABEL_168;
                }

                v104 = v103;
                v105 = CTFramesetterCreateWithAttributedString(v72);
                if (!v105)
                {
                  v70 = theArray;
                  v47 = v436;
                  v68 = 1.0;
LABEL_171:
                  v112 = x;
                  v133 = v77;
                  goto LABEL_172;
                }

                v106 = v105;
                frameAttributes = createFrameAttributesDictionary(v100);
                if (!*(v95 + 28))
                {
                  v135 = CFAttributedStringGetLength(v72);
                  Mutable = CGPathCreateMutable();
                  v47 = v436;
                  if (Mutable)
                  {
                    v137 = Mutable;
                    width = 0.0;
                    v514.origin.x = 0.0;
                    v514.origin.y = 0.0;
                    v514.size.width = v102;
                    v514.size.height = v101;
                    CGPathAddRect(Mutable, 0, v514);
                    v494.location = 0;
                    v494.length = v135;
                    v139 = CTFramesetterCreateFrame(v106, v494, v137, frameAttributes);
                    v140 = 0.0;
                    if (v139)
                    {
                      cfa = v139;
                      Lines = CTFrameGetLines(v139);
                      if (Lines)
                      {
                        v142 = Lines;
                        v143 = CFArrayGetCount(Lines);
                        if (v143 >= 1)
                        {
                          v144 = v143;
                          framea = v135;
                          v477.size.width = 0.0;
                          leading = 0.0;
                          descent[0] = 0.0;
                          v145 = CFArrayGetValueAtIndex(v142, 0);
                          CTLineGetTypographicBounds(v145, &v477.size.width, descent, &leading);
                          rangea = v477.size.width;
                          v394 = leading;
                          v395 = descent[0];
                          v488 = 0;
                          v146 = CFDictionaryGetValue(frameAttributes, v391);
                          if (!v146 || (CFNumberGetValue(v146, kCFNumberSInt32Type, &v488), !v488))
                          {
                            v147 = 0;
                            v148 = v93 / 5.0;
                            v149 = v148;
                            do
                            {
                              v150 = CFArrayGetValueAtIndex(v142, v147);
                              StringRange = CTLineGetStringRange(v150);
                              v487.a = 0.0;
                              v487.b = 0.0;
                              Attributes = CFAttributedStringGetAttributes(v72, StringRange.length + StringRange.location - 1, &v487);
                              if (CFDictionaryGetValue(Attributes, v390) == v392)
                              {
                                v153 = v149;
                              }

                              else
                              {
                                v153 = 0.0;
                              }

                              v154 = CTLineGetTypographicBounds(v150, &v477.size.width, descent, &leading) + v153;
                              if (width < v154)
                              {
                                width = v154;
                              }

                              ++v147;
                            }

                            while (v144 != v147);
                          }

                          v140 = rangea + v395 + v394;
                          v39 = v418;
                          v135 = framea;
                        }
                      }

                      CFRelease(cfa);
                      v16 = v413;
                      v47 = v436;
                    }

                    CFRelease(v137);
                    v155.location = 0;
                  }

                  else
                  {
                    v155.location = 0;
                    width = 0.0;
                    v140 = 0.0;
                  }

                  v484 = v140;
                  v155.length = v135;
                  v507.width = v102;
                  v507.height = v101;
                  v156 = CTFramesetterSuggestFrameSizeWithConstraints(v106, v155, 0, v507, 0);
                  if (v156.width >= width)
                  {
                    width = v156.width;
                  }

                  v157 = CMBaseObjectGetDerivedStorage();
                  v487.a = 0.0;
                  v487.b = 0.0;
                  v158 = CFAttributedStringGetAttributes(v72, 0, &v487);
                  EdgeStyle = getEdgeStyle(*(v157 + 216), *(v157 + 352), v158, v401);
                  if (EdgeStyle == 4)
                  {
                    v160 = v140 * 10.0 / 100.0;
                    v68 = 1.0;
                  }

                  else
                  {
                    v68 = 1.0;
                    if (EdgeStyle != 3)
                    {
                      v160 = 0.0;
                      v90 = v465;
                      if (EdgeStyle == 2)
                      {
                        v160 = v93 * 0.0882352941;
                        if (v93 > 60.0)
                        {
                          v160 = v160 / 1.5;
                        }
                      }

                      goto LABEL_162;
                    }

                    v160 = v93 * 0.0882352941;
                    if (v93 > 60.0)
                    {
                      v160 = v93 * 0.0882352941 / 1.5;
                    }
                  }

                  v90 = v465;
LABEL_162:
                  v487.a = v160;
                  v161 = CFAttributedStringGetLength(v72);
                  v162 = CFNumberCreate(v16, kCFNumberCGFloatType, &v487);
                  if (v162)
                  {
                    v163 = v162;
                    v495.location = 0;
                    v495.length = v161;
                    CFAttributedStringSetAttribute(v72, v495, @"kFigSubtitleRenderer_CompensationInTextLayout", v162);
                    CFRelease(v163);
                  }

                  v112 = width + v487.a * 2.0;
                  v113 = v156.height + v487.a * 2.0;
                  x = v477.origin.x;
                  goto LABEL_165;
                }

                v107 = CGPathCreateMutable();
                v47 = v436;
                if (v107)
                {
                  v108 = v107;
                  v510.origin.x = 0.0;
                  v510.origin.y = 0.0;
                  v510.size.width = v102;
                  v510.size.height = v101;
                  CGPathAddRect(v107, 0, v510);
                  v493.location = 0;
                  v493.length = v104;
                  v109 = frameAttributes;
                  v110 = CTFramesetterCreateFrame(v106, v493, v108, frameAttributes);
                  if (v110)
                  {
                    frame = v110;
                    v111 = CTFrameGetLines(v110);
                    v112 = v426;
                    v113 = v424;
                    v68 = 1.0;
                    if (v111)
                    {
                      v114 = v111;
                      v115 = CFArrayGetCount(v111);
                      v112 = v426;
                      v113 = v424;
                      if (v115)
                      {
                        v116 = v115;
                        range = v115 - 1;
                        if (v115 < 1)
                        {
                          cf = 0.0;
                          v434 = 0.0;
                          v112 = v426;
                          v122 = 0.0;
                          v121 = 0.0;
                          v120 = 0.0;
                          v119 = 0.0;
                          v118 = 0.0;
                          v406 = 0.0;
                        }

                        else
                        {
                          v117 = 0;
                          v406 = 0.0;
                          v118 = 0.0;
                          v119 = 0.0;
                          v120 = 0.0;
                          v121 = 0.0;
                          v122 = 0.0;
                          cf = 0.0;
                          v434 = 0.0;
                          v123 = v426;
                          do
                          {
                            v124 = CFArrayGetValueAtIndex(v114, v117);
                            if (!v124)
                            {
                              goto LABEL_121;
                            }

                            v125 = v124;
                            if (v117)
                            {
                              BoundsWithOptions = CTLineGetBoundsWithOptions(v124, 0x10uLL);
                              v112 = BoundsWithOptions.size.width;
                            }

                            else
                            {
                              v512 = CTLineGetBoundsWithOptions(v124, 0);
                              v126 = v512.origin.x;
                              y = v512.origin.y;
                              v128 = v512.size.width;
                              height = v512.size.height;
                              v554 = CTLineGetBoundsWithOptions(v125, 8uLL);
                              v513.origin.x = v126;
                              v513.origin.y = y;
                              v513.size.width = v128;
                              v513.size.height = height;
                              BoundsWithOptions = CGRectUnion(v513, v554);
                              v112 = v130;
                              v120 = BoundsWithOptions.size.height;
                              v119 = v130;
                              v118 = BoundsWithOptions.origin.y;
                              v406 = BoundsWithOptions.origin.x;
                            }

                            if (v116 == 1)
                            {
                              v131 = BoundsWithOptions.size.height;
                            }

                            else
                            {
                              v131 = v434;
                            }

                            v132 = cf;
                            if (v116 == 1)
                            {
                              v132 = v112;
                            }

                            cf = v132;
                            v434 = v131;
                            if (v116 == 1)
                            {
                              v122 = BoundsWithOptions.origin.y;
                              v121 = BoundsWithOptions.origin.x;
                            }

                            if (v123 >= v112)
                            {
LABEL_121:
                              v112 = v123;
                            }

                            ++v117;
                            v123 = v112;
                            --v116;
                          }

                          while (v116);
                        }

                        v484 = v120;
                        v477.size.height = 0.0;
                        v477.size.width = 0.0;
                        v499.location = 0;
                        v499.length = 1;
                        CTFrameGetLineOrigins(frame, v499, &v477.size);
                        CGAffineTransformMakeTranslation(&v487, 0.0, v477.size.height);
                        v520.origin.x = v406;
                        v520.origin.y = v118;
                        v520.size.width = v119;
                        v520.size.height = v120;
                        v521 = CGRectApplyAffineTransform(v520, &v487);
                        MaxY = CGRectGetMaxY(v521);
                        v500.location = range;
                        v500.length = 1;
                        CTFrameGetLineOrigins(frame, v500, &v477.size);
                        CGAffineTransformMakeTranslation(&v487, 0.0, v477.size.height);
                        v522.origin.x = v121;
                        v522.origin.y = v122;
                        v522.size.width = cf;
                        v522.size.height = v434;
                        v523 = CGRectApplyAffineTransform(v522, &v487);
                        v68 = 1.0;
                        v113 = MaxY - CGRectGetMinY(v523) + 1.0;
                        v47 = v436;
                        v90 = v465;
                        x = v477.origin.x;
                      }
                    }

                    CFRelease(frame);
                    v16 = v413;
                    v109 = frameAttributes;
                  }

                  else
                  {
                    v438 = -12092;
                    v112 = v426;
                    v113 = v424;
                    v68 = 1.0;
                  }

                  CFRelease(v108);
                  v39 = v418;
                  if (!v109)
                  {
                    goto LABEL_167;
                  }

LABEL_166:
                  CFRelease(v109);
                  goto LABEL_167;
                }

                v112 = v426;
                v113 = v424;
                v39 = v418;
                v68 = 1.0;
LABEL_165:
                v109 = frameAttributes;
                if (frameAttributes)
                {
                  goto LABEL_166;
                }

LABEL_167:
                v133 = ceil(v113);
                CFRelease(v106);
                v70 = theArray;
LABEL_168:
                v164 = CFAttributedStringGetLength(v72);
                v165 = CFNumberCreate(v16, kCFNumberCGFloatType, &v484);
                if (v165)
                {
                  v166 = v165;
                  v496.location = 0;
                  v496.length = v164;
                  CFAttributedStringSetAttribute(v72, v496, @"kFigSubtitleRenderer_SuggestLineHeight", v165);
                  CFRelease(v166);
                }

                if (v438)
                {
                  goto LABEL_171;
                }

LABEL_172:
                if (v78 != 1954034535)
                {
                  v487.a = 0.0;
                  v487.b = 0.0;
                  v174 = CFAttributedStringGetAttribute(v72, 0, v439, &v487);
                  if (v174)
                  {
                    if (v441)
                    {
                      if (attrNamea <= 0.0)
                      {
                        v175 = -(attrNamea * v484);
                      }

                      else
                      {
                        v175 = x - attrNamea * v484;
                      }

                      attrNamea = v175;
                    }

                    v170 = v133;
                    v133 = v112;
                  }

                  else
                  {
                    if (v441)
                    {
                      if (valueb <= 0.0)
                      {
                        v176 = -(valueb * v484);
                      }

                      else
                      {
                        v176 = v77 - valueb * v484;
                      }

                      valueb = v176;
                    }

                    v170 = v112;
                  }

                  v177 = CFAttributedStringGetAttribute(v72, 0, v429, &v487);
                  v171 = *&v451;
                  if (v177)
                  {
                    v178 = v177;
                    if (CFStringCompare(v177, v419, 0))
                    {
                      if (CFStringCompare(v178, v411, 0))
                      {
                        goto LABEL_190;
                      }

                      if (v174)
                      {
                        v168 = *&v451 + attrNamea + v170 * -0.5;
                        goto LABEL_201;
                      }

                      v169 = v90 + valueb + v133 * -0.5;
LABEL_204:
                      v168 = v410;
LABEL_205:
                      v179 = CFAttributedStringGetAttribute(v72, 0, v428, &v487);
                      if (!v179)
                      {
                        TextAlignment = getTextAlignment(v72);
                        v181 = v435;
                        if (TextAlignment != 1)
                        {
                          v181 = v427;
                        }

                        if ((TextAlignment & 3) != 0)
                        {
                          v179 = v181;
                        }

                        else
                        {
                          v179 = v408;
                        }
                      }

                      if (CFStringCompare(v179, v435, 0))
                      {
                        if (CFStringCompare(v179, v427, 0))
                        {
                          v173 = *&theString2a;
                          v172 = v461;
                          if (v174)
                          {
                            v169 = v90 + valueb - v133;
                          }

                          else
                          {
                            v168 = *&v451 + attrNamea;
                          }

LABEL_221:
                          v167 = v477.origin.x;
                          goto LABEL_222;
                        }

                        v182 = *&v451 + attrNamea + v170 * -0.5;
                        v183 = v90 + valueb + v133 * -0.5;
                      }

                      else
                      {
                        v182 = *&v451 + attrNamea - v170;
                        v183 = v90 + valueb;
                      }

                      if (v174)
                      {
                        v169 = v183;
                      }

                      else
                      {
                        v168 = v182;
                      }

                      v173 = *&theString2a;
                      v172 = v461;
                      goto LABEL_221;
                    }

                    if (!v174)
                    {
                      v169 = v90 + valueb;
                      goto LABEL_204;
                    }

                    if (CFStringCompare(v174, v417, 0))
                    {
                      v168 = *&v451 + attrNamea - v170;
                    }

                    else
                    {
                      v168 = *&v451 + attrNamea;
                    }
                  }

                  else
                  {
LABEL_190:
                    if (!v174)
                    {
                      v169 = v90 + valueb - v133;
                      goto LABEL_204;
                    }

                    if (CFStringCompare(v174, v417, 0))
                    {
                      v168 = *&v451 + attrNamea;
                    }

                    else
                    {
                      v168 = *&v451 + attrNamea - v170;
                    }
                  }

LABEL_201:
                  v169 = v420;
                  goto LABEL_205;
                }

                v167 = x;
                v168 = x * 0.5 + *&v451 - v112 * 0.5;
                v169 = v90 + valueb - v133 * 0.5;
                v170 = v112;
                v171 = *&v451;
                v173 = *&theString2a;
                v172 = v461;
LABEL_222:
                if (v168 + v170 <= v167 + v171)
                {
                  if (v168 < v171)
                  {
                    v184 = v171;
                  }

                  else
                  {
                    v184 = v168;
                  }
                }

                else
                {
                  v184 = v167 + v171 - v170;
                }

                v69 = 0.5;
                v185 = v77 + v90;
                if (v169 + v133 <= v77 + v90)
                {
                  if (v169 < v90)
                  {
                    v169 = v90;
                  }
                }

                else
                {
                  v169 = v185 - v133;
                }

                v186 = v133 * 0.5;
                v187 = v133 * 0.5 + v169;
                if (v78 == 1954034535)
                {
                  v188 = *&v454;
                  v189 = *&v454 - v187;
                  if (!v444)
                  {
                    v189 = v133 * 0.5 + v169;
                  }

                  v190 = v77 * 0.5;
                  v191 = v77 * 0.5 + v90;
                  if (v446)
                  {
                    v192 = *&v454 * 0.5;
                    if (v189 <= v191)
                    {
                      v194 = v192 - v190 - v186;
                      if (v440 >= v133)
                      {
                        v187 = v194;
                      }

                      else
                      {
                        v187 = v133 * 0.5;
                      }
                    }

                    else
                    {
                      v193 = v192 + v190 + v186;
                      if (v440 >= v133)
                      {
                        v187 = v193;
                      }

                      else
                      {
                        v187 = *&v454 - v186;
                      }
                    }
                  }

                  else if (v189 <= v191)
                  {
                    v187 = v90 + v186;
                  }

                  else
                  {
                    v187 = v185 - v186;
                  }
                }

                else
                {
                  v188 = *&v454;
                }

                v195 = v170 * 0.5 + v184;
                if (*(v83 + 32) == 1)
                {
                  v187 = v188 - v187;
                }

                v515.origin.x = v172 + v195 - v170 * 0.5;
                v515.origin.y = v173 + v187 - v186;
                v515.size.width = v170;
                v515.size.height = v133;
                v516 = CGRectIntegral(v515);
                v196 = v516.origin.x;
                v197 = v516.origin.y;
                v198 = v516.size.width;
                v199 = v516.size.height;
                DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v516);
                v497.length = CFAttributedStringGetLength(v72);
                v497.location = 0;
                CFAttributedStringSetAttribute(v72, v497, @"kFigSubtitleRenderer_SuggestTextLayout", DictionaryRepresentation);
                CFRelease(DictionaryRepresentation);
                if (*(CMBaseObjectGetDerivedStorage() + 264) > 0.0)
                {
                  v487.a = 0.0;
                  v487.b = 0.0;
                  rect.a = 0.0;
                  v201 = CFAttributedStringGetAttribute(v72, 0, @"kFigSubtitleRenderer_SuggestLineHeight", &v487);
                  if (v201)
                  {
                    CFNumberGetValue(v201, kCFNumberCGFloatType, &rect);
                    v202 = rect.a;
                  }

                  else
                  {
                    v202 = 0.0;
                  }

                  v517.origin.y = v197 - v202 / 20.0;
                  v517.origin.x = v196 - v202 / 20.0;
                  v203 = v202 / 10.0;
                  v517.size.height = v199 + v203;
                  v517.size.width = v198 + v203;
                  v518 = CGRectIntegral(v517);
                  v196 = v518.origin.x;
                  v197 = v518.origin.y;
                  v198 = v518.size.width;
                  v199 = v518.size.height;
                }

                v519.origin.x = v196;
                v519.origin.y = v197;
                v519.size.width = v198;
                v519.size.height = v199;
                v204 = CGRectCreateDictionaryRepresentation(v519);
                if (v204)
                {
                  v205 = v204;
                  v498.length = CFAttributedStringGetLength(v72);
                  v498.location = 0;
                  CFAttributedStringSetAttribute(v72, v498, @"kFigSubtitleRenderer_SuggestLayout", v205);
                  CFRelease(v205);
                }
              }
            }

            v13 = MEMORY[0x1E695F058];
            v207 = v400;
            v208 = v407;
            if (*(v402 + 24) > 1u)
            {
              goto LABEL_416;
            }

            v209 = CMBaseObjectGetDerivedStorage();
            v210 = CFArrayGetCount(v70);
            if (v210 <= 1)
            {
              goto LABEL_416;
            }

            v211 = v210;
            v212 = CFArrayCreateMutable(v16, v210, 0);
            if (v212)
            {
              break;
            }

            v449 = v449 + -0.1;
            if (v449 <= 0.0)
            {
              goto LABEL_416;
            }
          }

          v213 = v212;
          v214 = 0;
          rect.b = 0.0;
          rect.a = 0.0;
          v216 = v407 + v412;
          v215 = v403;
          v217 = -1.0;
          do
          {
            v218 = *(v13 + 16);
            *&v487.a = *v13;
            *&v487.c = v218;
            v219 = CFArrayGetValueAtIndex(v70, v214);
            v220 = CFAttributedStringGetAttribute(v219, 0, @"kFigSubtitleRenderer_SuggestLayout", &rect);
            if (v220)
            {
              CGRectMakeWithDictionaryRepresentation(v220, &v487);
            }

            v221 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1020040DCB5435FuLL);
            if (!v221)
            {
              goto LABEL_341;
            }

            v222 = v221;
            *(v221 + 48) = 0;
            v223 = CFArrayCreateMutable(v16, 0, 0);
            *(v222 + 4) = v223;
            __asm { FMOV            V0.2D, #-1.0 }

            *(v222 + 40) = _Q0;
            *(v222 + 56) = _Q0;
            if (!v223)
            {
              free(v222);
LABEL_341:
              v462 = 1;
LABEL_342:
              v39 = v418;
              v47 = v436;
              goto LABEL_343;
            }

            v225 = *&v487.c;
            *v222 = *&v487.a;
            v222[1] = v225;
            CFArrayAppendValue(v213, v222);
            ++v214;
          }

          while (v211 != v214);
          v226 = *(v209 + 24);
          v455 = v211;
          theString2b = v213;
          if (v226 == 1)
          {
            v296 = CFArrayGetCount(v213);
            v297 = (v296 - 1) * v296;
            v39 = v418;
            if (v297 < 1 || (v301 = CFArrayGetCount(v213), resetOverlaps(v213), surveyOverlaps(v213), v301 < 1))
            {
              v298 = 0;
            }

            else
            {
              v302 = 0;
              v303 = v297 & ~(v297 >> 63);
              v304 = 1;
              do
              {
                v305 = 0;
                v306 = 0;
                v307 = 0;
                do
                {
                  v308 = CFArrayGetValueAtIndex(theString2b, v306);
                  if (*(v308 + 48) <= 0)
                  {
                    v309 = v308;
                    if (CFArrayGetCount(v308[4]) >= 1)
                    {
                      v310 = CFArrayGetCount(v309[4]);
                      if (v310 < 1)
                      {
                        v307 = 0;
                      }

                      else
                      {
                        v311 = v310;
                        v307 = 0;
                        v312 = 0;
                        v313 = *(v309 + 1) + *(v309 + 3) * v69;
                        do
                        {
                          v314 = CFArrayGetValueAtIndex(v309[4], v312);
                          v315 = v314[1];
                          v316 = v314[3] * v69;
                          v317 = v315 + v316;
                          v318 = v316 + *(v309 + 3) * v69 - vabdd_f64(v313, v315 + v316);
                          if (v318 > 0.0 && !*(v314 + 48))
                          {
                            if (v317 <= v313)
                            {
                              v319 = -v318;
                            }

                            else
                            {
                              v319 = v318;
                            }

                            v314[1] = v315 + v319;
                            v307 = 1;
                            *(v314 + 48) = 1;
                          }

                          ++v312;
                        }

                        while (v311 != v312);
                      }

                      v302 = 1;
                      v305 = 1;
                    }
                  }

                  ++v306;
                }

                while (v306 != v301);
                if (!v305 || v307)
                {
                  if (!v305)
                  {
                    break;
                  }
                }

                else
                {
                  resetNumMoves(theString2b);
                }

                if (v304 == v303)
                {
                  break;
                }

                ++v304;
                v301 = CFArrayGetCount(theString2b);
                resetOverlaps(theString2b);
                surveyOverlaps(theString2b);
              }

              while (v301 > 0);
              v298 = v302 != 0;
              v13 = MEMORY[0x1E695F058];
              v39 = v418;
              v211 = v455;
              v213 = theString2b;
            }

            sublayout_unionCFDataRects(v213);
            if (v299 > v412 || surveyOverlaps(v213))
            {
              v300 = 1;
            }

            else
            {
              v524.origin.x = sublayout_unionCFDataRects(v213);
              v320 = v524.origin.y;
              v321 = v524.size.width;
              v322 = v524.size.height;
              v477.origin.x = v524.origin.x;
              MinX = CGRectGetMinX(v524);
              v525.origin.x = v400;
              v525.origin.y = v407;
              v525.size.width = v414.f64[0];
              v525.size.height = v412;
              if (MinX >= CGRectGetMinX(v525))
              {
                v531.origin.x = v400;
                v531.origin.y = v407;
                v531.size.width = v414.f64[0];
                v531.size.height = v412;
                MaxX = CGRectGetMaxX(v531);
                v532.origin.x = v477.origin.x;
                v532.origin.y = v320;
                v532.size.width = v321;
                v532.size.height = v322;
                v325 = 0.0;
                if (MaxX < CGRectGetMaxX(v532))
                {
                  v533.origin.x = v477.origin.x;
                  v533.origin.y = v320;
                  v533.size.width = v321;
                  v533.size.height = v322;
                  v341 = CGRectGetMaxX(v533);
                  v534.origin.x = v400;
                  v534.origin.y = v407;
                  v534.size.width = v414.f64[0];
                  v534.size.height = v412;
                  v325 = -(v341 - CGRectGetMaxX(v534));
                }
              }

              else
              {
                v526.origin.x = v400;
                v526.origin.y = v407;
                v526.size.width = v414.f64[0];
                v526.size.height = v412;
                v324 = CGRectGetMinX(v526);
                v527.origin.x = v477.origin.x;
                v527.origin.y = v320;
                v527.size.width = v321;
                v527.size.height = v322;
                v325 = v324 - CGRectGetMinX(v527);
              }

              v535.origin.x = v477.origin.x;
              v535.origin.y = v320;
              v535.size.width = v321;
              v535.size.height = v322;
              MinY = CGRectGetMinY(v535);
              v536.origin.x = v400;
              v536.origin.y = v407;
              v536.size.width = v414.f64[0];
              v536.size.height = v412;
              if (MinY >= CGRectGetMinY(v536))
              {
                v539.origin.x = v400;
                v539.origin.y = v407;
                v539.size.width = v414.f64[0];
                v539.size.height = v412;
                v345 = CGRectGetMaxY(v539);
                v540.origin.x = v477.origin.x;
                v540.origin.y = v320;
                v540.size.width = v321;
                v540.size.height = v322;
                v346 = CGRectGetMaxY(v540);
                v344 = 0.0;
                if (v345 < v346)
                {
                  v541.origin.x = v477.origin.x;
                  v541.origin.y = v320;
                  v541.size.width = v321;
                  v541.size.height = v322;
                  v347 = CGRectGetMaxY(v541);
                  v542.origin.x = v400;
                  v542.origin.y = v407;
                  v542.size.width = v414.f64[0];
                  v542.size.height = v412;
                  v344 = -(v347 - CGRectGetMaxY(v542));
                }
              }

              else
              {
                v537.origin.x = v400;
                v537.origin.y = v407;
                v537.size.width = v414.f64[0];
                v537.size.height = v412;
                v343 = CGRectGetMinY(v537);
                v538.origin.x = v477.origin.x;
                v538.origin.y = v320;
                v538.size.width = v321;
                v538.size.height = v322;
                v344 = v343 - CGRectGetMinY(v538);
              }

              v543.origin.x = v477.origin.x;
              v543.origin.y = v320;
              v543.size.width = v321;
              v543.size.height = v322;
              v544 = CGRectOffset(v543, v325, v344);
              v348 = v544.origin.x;
              v349 = v544.origin.y;
              v350 = v544.size.width;
              v351 = v544.size.height;
              valued = CGRectGetMinX(v544);
              v545.origin.x = v477.origin.x;
              v545.origin.y = v320;
              v545.size.width = v321;
              v545.size.height = v322;
              attrNameb = CGRectGetMinX(v545);
              v546.origin.x = v348;
              v546.origin.y = v349;
              v546.size.width = v350;
              v546.size.height = v351;
              v352 = CGRectGetMinY(v546);
              v547.origin.x = v477.origin.x;
              v547.origin.y = v320;
              v547.size.width = v321;
              v547.size.height = v322;
              v353 = CGRectGetMinY(v547);
              v354 = CFArrayGetCount(v213);
              if (v354 < 1)
              {
                v300 = 0;
                v207 = v400;
                v208 = v407;
                v68 = 1.0;
                v69 = 0.5;
              }

              else
              {
                v355 = v354;
                v356 = 0;
                v357 = v352 - v353;
                v207 = v400;
                v208 = v407;
                v68 = 1.0;
                v69 = 0.5;
                do
                {
                  v358 = CFArrayGetValueAtIndex(v213, v356);
                  v548 = CGRectOffset(*v358, valued - attrNameb, v357);
                  v300 = 0;
                  *v358 = v548;
                  v39 = v418;
                  ++v356;
                }

                while (v355 != v356);
              }
            }

            v462 = v300;
            v47 = v436;
            if (!v298)
            {
              goto LABEL_343;
            }

LABEL_392:
            for (j = 0; j != v211; ++j)
            {
              v327 = CFArrayGetValueAtIndex(v70, j);
              v328 = CFArrayGetValueAtIndex(v213, j);
              if (v327)
              {
                p_x = &v328->origin.x;
                if (v328)
                {
                  v330 = CGRectCreateDictionaryRepresentation(*v328);
                  v503.length = CFAttributedStringGetLength(v327);
                  v503.location = 0;
                  CFAttributedStringSetAttribute(v327, v503, @"kFigSubtitleRenderer_SuggestLayout", v330);
                  CFRelease(v330);
                  v331 = *p_x;
                  v332 = p_x[1];
                  v333 = p_x[2];
                  v334 = p_x[3];
                  if (*(CMBaseObjectGetDerivedStorage() + 264) > 0.0)
                  {
                    v487.a = 0.0;
                    v487.b = 0.0;
                    v477.size.width = 0.0;
                    v335 = CFAttributedStringGetAttribute(v327, 0, @"kFigSubtitleRenderer_SuggestLineHeight", &v487);
                    if (v335)
                    {
                      CFNumberGetValue(v335, kCFNumberCGFloatType, &v477.size);
                      v336 = v477.size.width;
                    }

                    else
                    {
                      v336 = 0.0;
                    }

                    v528.origin.y = v332 + v336 / 20.0;
                    v528.origin.x = v331 + v336 / 20.0;
                    v337 = v336 / 10.0;
                    v528.size.height = v334 - v337;
                    v528.size.width = v333 - v337;
                    v529 = CGRectIntegral(v528);
                    v331 = v529.origin.x;
                    v332 = v529.origin.y;
                    v333 = v529.size.width;
                    v334 = v529.size.height;
                  }

                  v530.origin.x = v331;
                  v530.origin.y = v332;
                  v530.size.width = v333;
                  v530.size.height = v334;
                  v338 = CGRectCreateDictionaryRepresentation(v530);
                  v208 = v407;
                  if (v338)
                  {
                    v339 = v338;
                    v504.length = CFAttributedStringGetLength(v327);
                    v504.location = 0;
                    CFAttributedStringSetAttribute(v327, v504, @"kFigSubtitleRenderer_SuggestTextLayout", v339);
                    CFRelease(v339);
                  }
                }
              }
            }

            goto LABEL_342;
          }

          v39 = v418;
          v47 = v436;
          if (v226)
          {
            goto LABEL_359;
          }

          v227 = CFArrayGetCount(v213);
          v228 = CFDataCreateMutable(v16, 0);
          if (!v228)
          {
            goto LABEL_359;
          }

          v445 = (v227 - 1) * v227;
          if (v445 < 1)
          {
            CFRelease(v228);
LABEL_359:
            v462 = 1;
            goto LABEL_343;
          }

          v442 = v228;
          v447 = 0;
          while (2)
          {
            resetOverlaps(v213);
            v229 = surveyOverlaps(v213);
            if (!v229)
            {
              v462 = 0;
              ++v447;
              break;
            }

            v462 = v229;
            v230 = CFArrayGetCount(v213);
            if (v230 >= 1)
            {
              for (k = 0; k != v230; ++k)
              {
                v232 = CFArrayGetValueAtIndex(v213, k);
                v232[5] = v400;
                v232[6] = v215;
                v232[7] = v216;
                v232[8] = v208;
              }
            }

            v233 = CFArrayCreateMutableCopy(v16, 0, v213);
            if (v233)
            {
              v234 = v233;
              v501.location = 0;
              v501.length = v230;
              CFArraySortValues(v233, v501, objComparatorX, 0);
              v235 = CFArrayGetValueAtIndex(v234, 0);
              v236 = v235;
              v235[5] = v400;
              if (v230 >= 2)
              {
                for (m = 1; m != v230; ++m)
                {
                  v235 = CFArrayGetValueAtIndex(v234, m);
                  v238 = v235[2] * v69;
                  v239 = v236[2] * v69;
                  v236[6] = v239 + *v235 + v238 + v217;
                  v235[5] = v239 + *v236 + v68 - v238;
                  v236 = v235;
                }
              }

              v235[6] = v215;
              v502.location = 0;
              v502.length = v230;
              CFArraySortValues(v234, v502, objComparatorY, 0);
              v240 = CFArrayGetValueAtIndex(v234, 0);
              v241 = v240;
              v240[8] = v208;
              if (v230 >= 2)
              {
                for (n = 1; n != v230; ++n)
                {
                  v240 = CFArrayGetValueAtIndex(v234, n);
                  v243 = v240[3] * v69;
                  v244 = v241[3] * v69;
                  v241[7] = v244 + v240[1] + v243 + v217;
                  v240[8] = v244 + v241[1] + v68 - v243;
                  v241 = v240;
                }
              }

              v240[7] = v216;
              CFRelease(v234);
              v16 = v413;
              v39 = v418;
            }

            v245 = CFArrayGetCount(v213);
            if (v245 < 1)
            {
              v462 = 1;
              v47 = v436;
              break;
            }

            v246 = v245;
            v247 = 0;
            v466 = 0;
            v248 = -1;
            v249 = 0.0;
            v47 = v436;
            v452 = v245;
            while (2)
            {
              valuec = v247;
              v250 = CFArrayGetValueAtIndex(v213, v247);
              if (v250)
              {
                v251 = v250;
                if (*(v250 + 48) > 0)
                {
                  v466 = 1;
                  goto LABEL_294;
                }

                v254 = *(v250 + 5);
                v253 = *(v250 + 6);
                v255 = *(v250 + 7);
                v256 = *(v250 + 8);
                v257 = CFArrayGetCount(*(v250 + 4));
                if (v257 >= 1)
                {
                  v258 = v257;
                  v259 = 0;
                  v260 = *v251 + *(v251 + 2) * 0.5;
                  v261 = (v251 + 96);
                  v262 = (v251 + 72);
                  v263 = *(v251 + 1) + *(v251 + 3) * 0.5;
                  v264 = (v251 + 128);
                  v265 = (v251 + 152);
                  do
                  {
                    v266 = CFArrayGetValueAtIndex(*(v251 + 4), v259);
                    v267 = v266[3];
                    v268 = v266[2] * 0.5;
                    v269 = v266[1];
                    v270 = *v266 + v268;
                    v271 = *(v251 + 3);
                    v272 = v268 + *(v251 + 2) * 0.5 - vabdd_f64(v260, v270);
                    if (v260 >= v270)
                    {
                      v273 = (v251 + 96);
                      v274 = (v251 + 112);
                      if (*v261 == 0.0 || (v273 = (v251 + 96), v274 = (v251 + 112), v272 < *v261))
                      {
LABEL_303:
                        *v273 = v272;
                      }
                    }

                    else
                    {
                      v273 = (v251 + 72);
                      v274 = (v251 + 88);
                      if (*v262 == 0.0)
                      {
                        goto LABEL_303;
                      }

                      v273 = (v251 + 72);
                      v274 = (v251 + 88);
                      if (v272 < *v262)
                      {
                        goto LABEL_303;
                      }
                    }

                    v275 = v267 * 0.5;
                    v276 = v269 + v275;
                    v277 = v275 + v271 * 0.5 - vabdd_f64(v263, v276);
                    *v274 = v277 + *v274;
                    if (v263 >= v276)
                    {
                      v278 = (v251 + 128);
                      v279 = (v251 + 136);
                      if (*v264 != 0.0)
                      {
                        v278 = (v251 + 128);
                        v279 = (v251 + 136);
                        if (v277 >= *v264)
                        {
                          goto LABEL_311;
                        }
                      }
                    }

                    else
                    {
                      v278 = (v251 + 152);
                      v279 = (v251 + 160);
                      if (*v265 != 0.0)
                      {
                        v278 = (v251 + 152);
                        v279 = (v251 + 160);
                        if (v277 >= *v265)
                        {
                          goto LABEL_311;
                        }
                      }
                    }

                    *v278 = v277;
LABEL_311:
                    *v279 = v272 + *v279;
                    ++v259;
                  }

                  while (v258 != v259);
                }

                v280 = v253 - v254;
                v281 = v255 - v256;
                *(v251 + 9) = -*(v251 + 9);
                *(v251 + 19) = -*(v251 + 19);
                fcr_validateMove(v251, (v251 + 72), v254, v256, v280, v281);
                fcr_validateMove(v251, (v251 + 96), v254, v256, v280, v281);
                fcr_validateMove(v251, (v251 + 144), v254, v256, v280, v281);
                fcr_validateMove(v251, (v251 + 120), v254, v256, v280, v281);
                v282 = *(v251 + 11);
                v283 = *(v251 + 14);
                v284 = v282 <= v283;
                if (v282 <= v283)
                {
                  v282 = *(v251 + 14);
                }

                v285 = 96;
                if (!v284)
                {
                  v285 = 72;
                }

                v286 = *&v251[v285];
                v287 = *(v251 + 17);
                v288 = *(v251 + 20);
                v289 = v287 <= v288;
                if (v287 <= v288)
                {
                  v287 = *(v251 + 20);
                }

                v290 = 152;
                if (!v289)
                {
                  v290 = 128;
                }

                v291 = *&v251[v290];
                if (v282 > 0.0 || v287 > 0.0)
                {
                  v292 = v282 > 0.0 && *(v251 + 2) < *(v251 + 3);
                  v13 = MEMORY[0x1E695F058];
                  v16 = v413;
                  v39 = v418;
                  v47 = v436;
                  v216 = v407 + v412;
                  v215 = v403;
                  v68 = 1.0;
                  v69 = 0.5;
                  v217 = -1.0;
                  v246 = v452;
                  v211 = v455;
                  v252 = valuec;
                  if (v292)
                  {
                    *(v251 + 21) = v286;
                    *(v251 + 22) = 0;
                    *(v251 + 23) = v282;
                  }

                  else
                  {
                    *(v251 + 21) = 0;
                    v282 = v287;
                    *(v251 + 22) = v291;
                    *(v251 + 23) = v287;
                  }

                  v213 = theString2b;
                }

                else
                {
                  *(v251 + 21) = 0;
                  *(v251 + 22) = 0;
                  v282 = 0.0;
                  *(v251 + 23) = 0;
                  v13 = MEMORY[0x1E695F058];
                  v16 = v413;
                  v39 = v418;
                  v47 = v436;
                  v216 = v407 + v412;
                  v215 = v403;
                  v68 = 1.0;
                  v69 = 0.5;
                  v217 = -1.0;
                  v211 = v455;
                  v213 = theString2b;
                  v246 = v452;
                  v252 = valuec;
                }

                if (v249 < v282)
                {
                  v248 = v252;
                  v249 = v282;
                }
              }

              else
              {
LABEL_294:
                v252 = valuec;
              }

              v247 = v252 + 1;
              if (v247 != v246)
              {
                continue;
              }

              break;
            }

            if (v249 <= 0.0)
            {
              v208 = v407;
              v70 = theArray;
              if (v466)
              {
                resetNumMoves(v213);
                *&v293 = v447 - 1;
                goto LABEL_336;
              }

LABEL_390:
              v462 = 1;
              break;
            }

            v208 = v407;
            v70 = theArray;
            if ((subtitleRendererLayoutDo_cold_1(v213, v248, v442, v447, &v487) & 1) == 0)
            {
              goto LABEL_390;
            }

            v293 = v487.a;
LABEL_336:
            v447 = *&v293 + 1;
            if (*&v293 + 1 < v445)
            {
              continue;
            }

            break;
          }

          CFRelease(v442);
          if (v447 > 1)
          {
            goto LABEL_392;
          }

LABEL_343:
          if (CFArrayGetCount(v213) >= 1)
          {
            do
            {
              v294 = CFArrayGetValueAtIndex(v213, 0);
              CFArrayRemoveValueAtIndex(v213, 0);
              if (v294)
              {
                v295 = v294[4];
                if (v295)
                {
                  CFRelease(v295);
                }

                free(v294);
              }
            }

            while (CFArrayGetCount(v213) > 0);
          }

          CFRelease(v213);
          v16 = v413;
          if (v462)
          {
            v449 = v449 + -0.1;
            if (v449 > 0.0)
            {
              continue;
            }
          }

LABEL_416:
          if (v421 < 1)
          {
            v361 = 0.0;
            v360 = 0.0;
            v362.f64[0] = v414.f64[0];
          }

          else
          {
            v359 = 0;
            v360 = 0.0;
            *valuee = *(v13 + 16);
            v477.origin = *v13;
            v361 = 0.0;
            v362 = v414;
            do
            {
              v415 = v362;
              v363 = CFArrayGetValueAtIndex(v70, v359);
              *&v487.a = v477.origin;
              *&v487.c = *valuee;
              v364 = CFAttributedStringGetAttribute(v363, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
              if (v364)
              {
                CGRectMakeWithDictionaryRepresentation(v364, &v487);
              }

              v362 = v415;
              if (v487.a < v415.f64[0])
              {
                v362.f64[0] = v487.a;
              }

              if (v487.a + v487.c > v361)
              {
                v361 = v487.a + v487.c;
              }

              v365 = v412;
              if (v487.b < v412)
              {
                v365 = v487.b;
              }

              v412 = v365;
              if (v487.b + v487.d > v360)
              {
                v360 = v487.b + v487.d;
              }

              ++v359;
            }

            while (v421 != v359);
          }

          v366 = v361 - v362.f64[0];
          v367 = v412;
          v368 = v360 - v412;
          *v396 = v362.f64[0];
          v396[1] = v412;
          v396[2] = v366;
          v396[3] = v368;
          if (v207 != *MEMORY[0x1E695EFF8] || v208 != *(MEMORY[0x1E695EFF8] + 8))
          {
            if (v421 >= 1)
            {
              v370 = 0;
              *valuef = *(v13 + 16);
              v477.origin = *v13;
              do
              {
                v371 = CFArrayGetValueAtIndex(v70, v370);
                v372 = CFAttributedStringGetLength(v371);
                *&rect.a = v477.origin;
                *&rect.c = *valuef;
                v477.size = v477.origin;
                v478 = *valuef;
                v373 = CFAttributedStringGetAttribute(v371, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
                if (v373)
                {
                  CGRectMakeWithDictionaryRepresentation(v373, &rect);
                }

                CGAffineTransformMakeTranslation(&v487, v207, v208);
                v549.origin.x = rect.a;
                v549.origin.y = rect.b;
                v549.size.width = rect.c;
                v549.size.height = rect.d;
                v550 = CGRectApplyAffineTransform(v549, &v487);
                rect.a = v550.origin.x;
                rect.b = v550.origin.y;
                rect.c = v550.size.width;
                rect.d = v550.size.height;
                v374 = CGRectCreateDictionaryRepresentation(v550);
                if (v374)
                {
                  v375 = v374;
                  v505.location = 0;
                  v505.length = v372;
                  CFAttributedStringSetAttribute(v371, v505, @"kFigSubtitleRenderer_SuggestLayout", v374);
                  CFRelease(v375);
                }

                v376 = CFAttributedStringGetAttribute(v371, 0, @"kFigSubtitleRenderer_SuggestTextLayout", &effectiveRange);
                if (v376)
                {
                  CGRectMakeWithDictionaryRepresentation(v376, &v477.size);
                }

                CGAffineTransformMakeTranslation(&v487, v207, v208);
                v551.origin.x = v477.size.width;
                v551.origin.y = v477.size.height;
                v551.size = v478;
                v552 = CGRectApplyAffineTransform(v551, &v487);
                v477.size.width = v552.origin.x;
                v477.size.height = v552.origin.y;
                v478.width = v552.size.width;
                v478.height = v552.size.height;
                v377 = CGRectCreateDictionaryRepresentation(v552);
                if (v377)
                {
                  v378 = v377;
                  v506.location = 0;
                  v506.length = v372;
                  CFAttributedStringSetAttribute(v371, v506, @"kFigSubtitleRenderer_SuggestTextLayout", v377);
                  CFRelease(v378);
                }

                ++v370;
              }

              while (v421 != v370);
              v362.f64[0] = *v396;
              v367 = v396[1];
              v366 = v396[2];
              v368 = v396[3];
            }

            v416 = v362.f64[0];
            v379 = v208;
            v380 = v367;
            CGAffineTransformMakeTranslation(&v487, v207, v379);
            v553.origin.x = v416;
            v553.origin.y = v380;
            v553.size.width = v366;
            v553.size.height = v368;
            CGRectApplyAffineTransform(v553, &v487);
          }

          if (v421 >= 1)
          {
            for (ii = 0; ii != v421; ++ii)
            {
              v382 = CFArrayGetValueAtIndex(v70, ii);
              Copy = CFAttributedStringCreateCopy(v16, v382);
              CFArraySetValueAtIndex(v70, ii, Copy);
              if (Copy)
              {
                CFRelease(Copy);
              }
            }
          }

          v384 = CFArrayCreateCopy(v16, v70);
          CFDictionarySetValue(theDict, @"SubtitleContent", v384);
          *range_8 = CFDictionaryCreateCopy(v16, theDict);
          free(v39);
          CFRelease(theDict);
          v385 = 0;
          a_low = 0;
          v386 = v384;
          if (v384)
          {
LABEL_454:
            CFRelease(v386);
            a_low = v385;
          }

          if (v70)
          {
            CFRelease(v70);
          }

          v1 = v389;
LABEL_458:
          v27 = range_8;
          v12 = v396;
          if (a_low)
          {
LABEL_459:
            v387 = *(v13 + 16);
            *v12 = *v13;
            *(v12 + 1) = v387;
            if (v27)
            {
              goto LABEL_460;
            }
          }

          goto LABEL_463;
        }
      }

      v388 = 6182;
    }

    else
    {
      v388 = 6179;
    }

    subtitleRendererLayoutDo_cold_2(v388, &v487);
    v385 = LODWORD(v487.a);
    v386 = theDict;
    v70 = theArray;
    goto LABEL_454;
  }

  if (subtitleRendererLayoutDo_cold_4(&v487))
  {
LABEL_462:
    a_low = 0;
    goto LABEL_463;
  }

  a_low = LODWORD(v487.a);
  v27 = range_8;
  if (range_8)
  {
LABEL_460:
    *v27 = 0;
  }

LABEL_463:
  **(v1 + 18) = a_low;
}

uint64_t resetNumMoves(const __CFArray *a1)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      result = CFArrayGetValueAtIndex(a1, i);
      *(result + 192) = 0;
    }
  }

  return result;
}

uint64_t objComparatorX(double *a1, double *a2)
{
  v2 = *a1 + a1[2] * 0.5;
  v3 = *a2 + a2[2] * 0.5;
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t objComparatorY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + *(a1 + 24) * 0.5;
  v3 = *(a2 + 8) + *(a2 + 24) * 0.5;
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

double sublayout_unionCFDataRects(const __CFArray *a1)
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      v12 = *CFArrayGetValueAtIndex(a1, i);
      v10.origin.x = x;
      v10.origin.y = y;
      v10.size.width = width;
      v10.size.height = height;
      v11 = CGRectUnion(v10, v12);
      x = v11.origin.x;
      y = v11.origin.y;
      width = v11.size.width;
      height = v11.size.height;
    }
  }

  return x;
}

void *OUTLINED_FUNCTION_7_82(size_t a1)
{

  return malloc_type_calloc(a1, 8uLL, v1);
}

uint64_t FigCaptionRendererAVFLayoutRegionSetLayoutContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  return 0;
}

void FigCaptionRendererAVFLayoutRegionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 8) = 0;
}

__CFString *FigCaptionRendererAVFLayoutRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAVFLayoutRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererAVFLayoutRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAVFLayoutRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAVFLayoutRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetViewport(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 64);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 96);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 112);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 128);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_PurgeImageCache()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 160);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetZOrder(double a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 256);
  if (!v6)
  {
    return 4294954514;
  }

  v4.n128_f64[0] = a1;

  return v6(v2, v4);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_ResetNodeTree()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 272);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a2 + 296))
  {
    v5 = *(MEMORY[0x1E695F050] + 16);
    v25.origin = *MEMORY[0x1E695F050];
    v25.size = v5;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v7 = *(ProtocolVTable + 16);
      if (v7)
      {
        v8 = *(v7 + 104);
        if (v8)
        {
          v8(a1, &v25);
        }
      }
    }

    v9 = *(a2 + 296);
    if (v9)
    {
      Value = CFDictionaryGetValue(v9, a1);
      MidX = CGRectGetMidX(v25);
      MidY = CGRectGetMidY(v25);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v13 = CMBaseObjectGetProtocolVTable();
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = *(v14 + 72);
          if (v15)
          {
            v15(Value, MidX, MidY);
          }
        }
      }

      size = v25.size;
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v17 = CMBaseObjectGetProtocolVTable();
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v18 + 88);
          if (v19)
          {
            v19(Value, size.width, size.height);
          }
        }
      }
    }
  }

  v20 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 280);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, double *a2)
{
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2[45] > 0.0 && a2[46] > 0.0)
  {
    v156[0] = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 2);
      if (v8 && (v9 = *(v8 + 24)) != 0)
      {
        v9(a1, v156);
        ProtocolVTable = v156[0];
      }

      else
      {
        ProtocolVTable = 0;
      }
    }

    Count = CFArrayGetCount(ProtocolVTable);
    if (Count >= 1)
    {
      key = *MEMORY[0x1E69609A0];
      v140 = *MEMORY[0x1E6960978];
      v139 = *MEMORY[0x1E69607B0];
      v138 = *MEMORY[0x1E6960838];
      v131 = *MEMORY[0x1E6960788];
      v128 = *MEMORY[0x1E6960790];
      v125 = *MEMORY[0x1E6960798];
      v124 = *MEMORY[0x1E69607A0];
      v123 = *MEMORY[0x1E6960780];
      theString2 = *MEMORY[0x1E6960A08];
      v130 = *MEMORY[0x1E6960A00];
      v127 = *MEMORY[0x1E69609F8];
      v137 = *MEMORY[0x1E69608E0];
      v136 = *MEMORY[0x1E69608D8];
      v135 = *MEMORY[0x1E6960830];
      v11 = Count + 1;
      v132 = *MEMORY[0x1E69609F0];
      v12 = 1.0;
      v129 = *MEMORY[0x1E69609E8];
      v126 = *MEMORY[0x1E69609E0];
      v134 = *MEMORY[0x1E6960998];
      v13 = "FigCaptionRendererCellStackLayoutRegion";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v156[0], v11 - 2);
        v155 = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        v15 = CMBaseObjectGetProtocolVTable();
        if (!v15 || (v16 = *(v15 + 16)) == 0 || (v17 = *(v16 + 8)) == 0 || v17(ValueAtIndex, &v155))
        {
          FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_5();
          break;
        }

        v18 = v155;
        if (v155)
        {
          if (!strcmp(v155, "FigCaptionRendererCaption"))
          {
            v154 = 0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v19 = CMBaseObjectGetProtocolVTable();
            if (!v19 || (v20 = *(v19 + 16)) == 0 || (v21 = *(v20 + 48)) == 0 || v21(ValueAtIndex, &v154))
            {
              FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_4();
              break;
            }

            v153 = 0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v22 = CMBaseObjectGetProtocolVTable();
            if (!v22 || (v23 = *(v22 + 16)) == 0 || (v24 = *(v23 + 16)) == 0 || v24(ValueAtIndex, &v153))
            {
              FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_3();
              break;
            }

            v142 = *(MEMORY[0x1E695F050] + 16);
            v144 = *MEMORY[0x1E695F050];
            v151 = *MEMORY[0x1E695F050];
            v152 = v142;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v25 = CMBaseObjectGetProtocolVTable();
            if (!v25 || (v26 = *(v25 + 16)) == 0 || (v27 = *(v26 + 104)) == 0 || v27(ValueAtIndex, &v151))
            {
              FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_2();
              break;
            }

            v28 = a2[47] == 0.0;
            if (a2[48] == 0.0)
            {
              v28 = 1;
            }

            if (v28)
            {
              v29 = a2[46];
            }

            else
            {
              v29 = a2[48];
            }

            if (v28)
            {
              v30 = a2[45];
            }

            else
            {
              v30 = a2[47];
            }

            v31 = FCRGetVideoPresentationBounds(v30, v29, a2[43], a2[44], a2[45], a2[46]);
            v33 = v32;
            v35 = v34;
            v37 = v36;
            if (v154 != 4)
            {
              if (v154 == 3)
              {
                rect.origin = v144;
                rect.size = v142;
                Value = CFDictionaryGetValue(v153, @"textbox");
                if (Value)
                {
                  CGRectMakeWithDictionaryRepresentation(Value, &rect);
                }

                v143 = v37;
                v145 = v35;
                v39 = v31;
                v40 = v33;
                if (CGRectIsNull(rect))
                {
                  width = v30 * 0.9;
                  height = v29 * 0.15;
                  x = (v30 - v30 * 0.9) * 0.5;
                  y = v29 - v29 * 0.15;
                  rect.origin.x = x;
                  rect.origin.y = y;
                  rect.size.width = v30 * 0.9;
                  rect.size.height = v29 * 0.15;
                }

                else
                {
                  x = rect.origin.x;
                  y = rect.origin.y;
                  width = rect.size.width;
                  height = rect.size.height;
                }

                MidX = CGRectGetMidX(*&x);
                MidY = CGRectGetMidY(rect);
                v57 = v152;
                FigCaptionRendererNodeProtocolGetProtocolID();
                v58 = CMBaseObjectGetProtocolVTable();
                if (v58)
                {
                  v59 = *(v58 + 16);
                  if (v59)
                  {
                    v60 = *(v59 + 128);
                    if (v60)
                    {
                      v60(ValueAtIndex, v39 + MidX * (v145 / v30) - v57.width * 0.5, v40 + (v29 - MidY) * (v143 / v29) - v57.height * 0.5);
                    }
                  }
                }

                FigCaptionRendererNodeProtocolGetProtocolID();
                v61 = CMBaseObjectGetProtocolVTable();
                if (v61)
                {
                  v62 = *(v61 + 16);
                  if (v62)
                  {
                    v63 = *(v62 + 232);
                    if (v63)
                    {
                      v63(ValueAtIndex, 1);
                    }
                  }
                }

                v12 = 1.0;
              }

              goto LABEL_129;
            }

            v45 = v13;
            valuePtr = 50.0;
            rect.origin.x = 100.0;
            v148 = 100.0;
            v147 = 0;
            v46 = CFDictionaryGetValue(v153, key);
            if (v46)
            {
              CFNumberGetValue(v46, kCFNumberCGFloatType, &rect);
              if (rect.origin.x < 0.0)
              {
LABEL_174:
                FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_1();
                break;
              }
            }

            v47 = v3;
            v48 = CFDictionaryGetValue(v153, v140);
            v49 = CFDictionaryGetValue(v153, v139);
            v50 = CFDictionaryGetValue(v153, v138);
            v51 = v50;
            if (v48)
            {
              CFNumberGetValue(v48, kCFNumberCGFloatType, &valuePtr);
              if (valuePtr < 0.0)
              {
                goto LABEL_174;
              }

              goto LABEL_50;
            }

            if (!v49)
            {
              if (v50)
              {
                goto LABEL_51;
              }

              goto LABEL_80;
            }

            if (CFStringCompare(v49, v131, 0))
            {
              if (CFStringCompare(v49, v128, 0))
              {
                if (CFStringCompare(v49, v125, 0))
                {
                  goto LABEL_50;
                }

                *&v64 = 100.0;
              }

              else
              {
                *&v64 = 50.0;
              }

              valuePtr = *&v64;
            }

            else
            {
              valuePtr = 0.0;
            }

LABEL_50:
            if (v51)
            {
LABEL_51:
              if (CFStringCompare(v51, theString2, 0) == kCFCompareEqualTo)
              {
                v54 = 0.0;
                goto LABEL_82;
              }

              if (CFStringCompare(v51, v130, 0))
              {
                v52 = v51;
                v53 = v127;
LABEL_54:
                if (CFStringCompare(v52, v53, 0))
                {
                  v54 = 50.0;
                }

                else
                {
                  v54 = 100.0;
                }

                goto LABEL_82;
              }

LABEL_80:
              *&v65 = 50.0;
LABEL_81:
              v54 = *&v65;
              goto LABEL_82;
            }

            if (!v49)
            {
              goto LABEL_80;
            }

            v54 = 0.0;
            if (CFStringCompare(v49, v131, 0) == kCFCompareEqualTo)
            {
              goto LABEL_82;
            }

            if (CFStringCompare(v49, v128, 0) == kCFCompareEqualTo)
            {
              goto LABEL_80;
            }

            if (CFStringCompare(v49, v125, 0) == kCFCompareEqualTo)
            {
              *&v65 = 100.0;
              goto LABEL_81;
            }

            if (CFStringCompare(v49, v124, 0))
            {
              v52 = v49;
              v53 = v123;
              goto LABEL_54;
            }

LABEL_82:
            v66 = CFDictionaryGetValue(v153, v137);
            v67 = CFDictionaryGetValue(v153, v136);
            v68 = CFDictionaryGetValue(v153, v135);
            if (v66)
            {
              CFNumberGetValue(v66, kCFNumberCGFloatType, &v148);
              if (v148 < 0.0)
              {
                goto LABEL_174;
              }

LABEL_84:
              v69 = 1;
            }

            else
            {
              if (!v67)
              {
                goto LABEL_84;
              }

              CFNumberGetValue(v67, kCFNumberIntType, &v147);
              v69 = 0;
            }

            v13 = v45;
            v70 = 0.0;
            if (v68 && CFStringCompare(v68, v132, 0))
            {
              if (CFStringCompare(v68, v129, 0))
              {
                if (CFStringCompare(v68, v126, 0))
                {
                  v70 = 0.0;
                }

                else
                {
                  v70 = 100.0;
                }
              }

              else
              {
                v70 = 50.0;
              }
            }

            v71 = v54 / 100.0;
            v148 = v148 / 100.0;
            valuePtr = valuePtr / 100.0;
            v72 = v70 / 100.0;
            v73 = CFDictionaryGetValue(v153, v134);
            v74 = v73;
            v146 = 0.0;
            if (v69)
            {
              if (!v73)
              {
                v75 = valuePtr;
                v76 = v37 * (v12 - v148);
                goto LABEL_116;
              }

LABEL_102:
              v80 = FigCFEqual();
              v76 = v37 * (v12 - valuePtr);
              if (v69)
              {
                v3 = v47;
                if (v80)
                {
                  v81 = v35 * v148;
                  goto LABEL_113;
                }

                v82 = v35 * (v12 - v148);
LABEL_120:
                v84 = v82 - v152.width * (v12 - v72);
              }

              else
              {
                if (v147 < 0)
                {
                  v83 = v147;
                  v3 = v47;
                  if (!v80)
                  {
                    v82 = -(v146 * v83);
                    goto LABEL_120;
                  }

                  v81 = v35 + (v146 * v83);
                }

                else
                {
                  v81 = (v146 * v147);
                  v3 = v47;
                  if (!v80)
                  {
                    v82 = v35 - v81;
                    goto LABEL_120;
                  }
                }

LABEL_113:
                v84 = v81 - v152.width * v72;
              }
            }

            else
            {
              FigCaptionRendererCaptionProtocolGetProtocolID();
              v77 = CMBaseObjectGetProtocolVTable();
              if (v77)
              {
                v78 = *(v77 + 16);
                if (v78)
                {
                  v79 = *(v78 + 104);
                  if (v79)
                  {
                    v79(ValueAtIndex, &v146);
                  }
                }
              }

              if (v74)
              {
                goto LABEL_102;
              }

              v75 = valuePtr;
              if (v147 < 0)
              {
                v76 = -(v146 * v147);
              }

              else
              {
                v76 = v37 - (v146 * v147);
              }

LABEL_116:
              v3 = v47;
              v84 = v35 * v75 - v152.width * v71;
              v71 = v70 / 100.0;
            }

            v85 = v152.height;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v86 = CMBaseObjectGetProtocolVTable();
            if (v86)
            {
              v87 = *(v86 + 16);
              if (v87)
              {
                v88 = *(v87 + 128);
                if (v88)
                {
                  v88(ValueAtIndex, v31 + v84, v33 + v76 - v85 * (v12 - v71));
                }
              }
            }

LABEL_125:
            FigCaptionRendererNodeProtocolGetProtocolID();
            v89 = CMBaseObjectGetProtocolVTable();
            if (v89)
            {
              v90 = *(v89 + 16);
              if (v90)
              {
                v91 = *(v90 + 232);
                if (v91)
                {
                  v91(ValueAtIndex, 1);
                }
              }
            }

            goto LABEL_129;
          }

          if (!strcmp(v18, "FigCaptionRendererStackLayoutRegion") || !strcmp(v18, v13) || !strcmp(v18, "FigCaptionRendererTTMLRegion"))
          {
            goto LABEL_125;
          }
        }

LABEL_129:
        --v11;
      }

      while (v11 > 1);
    }
  }

  if (*(DerivedStorage + 40))
  {
    FigCaptionRendererLayoutDecouple_ApplyDecouplingAndSafeRegion(a1, a2);
  }

  v156[0] = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v92 = CMBaseObjectGetProtocolVTable();
  if (!v92 || (v93 = *(v92 + 16)) == 0)
  {
    v121 = 4294954508;
LABEL_166:
    FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_6();
    return v121;
  }

  v94 = *(v93 + 24);
  if (!v94)
  {
    v121 = 4294954514;
    goto LABEL_166;
  }

  v95 = v94(a1, v156);
  if (v95)
  {
    v121 = v95;
    goto LABEL_166;
  }

  v96 = CFArrayGetCount(v156[0]);
  if (v96 < 1)
  {
    return 0;
  }

  v97 = v96 + 1;
  v98 = MEMORY[0x1E695F058];
  while (1)
  {
    v99 = CFArrayGetValueAtIndex(v156[0], v97 - 2);
    v155 = 0;
    FigCaptionRendererBaseProtocolGetProtocolID();
    v100 = CMBaseObjectGetProtocolVTable();
    if (!v100 || (v101 = *(v100 + 16)) == 0)
    {
      v121 = 4294954508;
      goto LABEL_164;
    }

    v102 = *(v101 + 8);
    if (!v102)
    {
      v121 = 4294954514;
      goto LABEL_164;
    }

    v103 = v102(v99, &v155);
    if (v103)
    {
      break;
    }

    if (!v155 || strcmp(v155, "FigCaptionRendererCaption"))
    {
      v104 = v98[1];
      v151 = *v98;
      v152 = v104;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v105 = CMBaseObjectGetProtocolVTable();
      if (v105)
      {
        v106 = *(v105 + 16);
        if (v106)
        {
          v107 = *(v106 + 104);
          if (v107)
          {
            v107(a1, &v151);
          }
        }
      }

      v108 = FCRGetOverscanSafeRect(*&v151, *(&v151 + 1), v152.width, v152.height);
      v110 = v109;
      v112 = v111;
      v114 = v113;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v115 = CMBaseObjectGetProtocolVTable();
      if (v115)
      {
        v116 = *(v115 + 16);
        if (v116)
        {
          v117 = *(v116 + 64);
          if (v117)
          {
            v117(v99, v108, v110, v112, v114);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v118 = CMBaseObjectGetProtocolVTable();
      if (v118)
      {
        v119 = *(v118 + 16);
        if (v119)
        {
          v120 = *(v119 + 232);
          if (v120)
          {
            v120(v99, 1);
          }
        }
      }
    }

    if (--v97 <= 1)
    {
      return 0;
    }
  }

  v121 = v103;
LABEL_164:
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return v121;
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 248);
      if (v7)
      {
        v7(a1, &v25 + 1);
        if (HIBYTE(v25))
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v8 = CMBaseObjectGetProtocolVTable();
          if (v8)
          {
            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = *(v9 + 296);
              if (v10)
              {
                v10(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 240);
      if (v13)
      {
        v13(a1, &v25);
        if (v25)
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v14 = CMBaseObjectGetProtocolVTable();
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v15 + 288);
              if (v16)
              {
                v16(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 280);
      if (v19)
      {
        v19(a1, a2);
      }
    }
  }

  v20 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 304);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    v5 = *(DerivedStorage + 8);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v9 = *(a2 + 32);
    v4(v8, v5);
  }

  return 0;
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_RemoveAllActions()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 328);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_BeginScene(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(a2 + 296);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, a1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 128);
          if (v9)
          {
            v9(Value);
          }
        }
      }
    }
  }

  v10 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    return 4294954508;
  }

  v13 = *(v12 + 376);
  if (!v13)
  {
    return 4294954514;
  }

  return v13(v10, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_EndScene(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(a2 + 296);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, a1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 136);
          if (v9)
          {
            v9(Value);
          }
        }
      }
    }
  }

  v10 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    return 4294954508;
  }

  v13 = *(v12 + 384);
  if (!v13)
  {
    return 4294954514;
  }

  return v13(v10, a2);
}

uint64_t RegisterFigCaptionRendererAVFLayoutRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void FigLoadAVFDylib()
{
  if (FigLoadAVFDylib_loadAVFoundationOnce != -1)
  {
    FigLoadAVFDylib_cold_1();
  }
}

void *__FigLoadAVFDylib_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 4);
  FigLoadAVFDylib_avfDylib = result;
  return result;
}

uint64_t CreatePesPrivateForLPCM(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x138uLL, 0x10B0040459D684BuLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *v4 = v4 + 38;
  v4[2] = v4 + 308;
  v4[3] = 4;
  v4[4] = LPCMCheckHeader;
  v4[5] = LPCMCompareHeaders;
  v4[6] = LPCMGetSamplesPerFrame;
  v4[7] = LPCMGetSampleFrequency;
  v4[8] = LPCMGetFrameSize;
  a1[105] = PesLPCMProcessData;
  a1[106] = PesLPCMCleanPrivateData;
  a1[107] = PesLPCMDeletePrivateData;
  a1[6] = v4;
  return result;
}

void PesLPCMDeletePrivateData(uint64_t a1)
{
  MPEGAudioCleanPrivateData(*(a1 + 48));
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

uint64_t caprp_FigCaptionGroupConverterOutputCallbackTX3G(uint64_t a1, uint64_t a2, CFMutableArrayRef *a3)
{
  if (FigCaptionGroupGetSliceCount() && !FigSampleBufferCreateForCaptionGroup())
  {
    if (*a3)
    {
      CFArrayRemoveAllValues(*a3);
      Mutable = *a3;
LABEL_6:
      CFArrayAppendValue(Mutable, 0);
      return 0;
    }

    Mutable = CFArrayCreateMutable(a3[1], 1, MEMORY[0x1E695E9C0]);
    *a3 = Mutable;
    if (Mutable)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t caprp_FigCaptionGroupConverterOutputCallbackWebVTT(uint64_t a1, uint64_t a2, CFMutableArrayRef *a3)
{
  if (FigCaptionGroupGetSliceCount() && !FigSampleBufferCreateForCaptionGroup())
  {
    if (*a3)
    {
      CFArrayRemoveAllValues(*a3);
      Mutable = *a3;
LABEL_6:
      CFArrayAppendValue(Mutable, 0);
      return 0;
    }

    Mutable = CFArrayCreateMutable(a3[1], 1, MEMORY[0x1E695E9C0]);
    *a3 = Mutable;
    if (Mutable)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t caprp_sendSubtitleSampleForSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM();
    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_3;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v8 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
  memset(&v37, 0, sizeof(v37));
  CMSampleBufferGetOutputPresentationTimeStamp(&v37, a2);
  memset(&v36, 0, sizeof(v36));
  CMSampleBufferGetOutputDuration(&v36, a2);
  v35 = 0;
  v31 = *MEMORY[0x1E695F050];
  v32 = *(MEMORY[0x1E695F050] + 16);
  v33 = *MEMORY[0x1E695F050];
  v34 = v32;
  if (MediaSubType)
  {
    *(DerivedStorage + 192) = MediaSubType;
  }

  else
  {
    MediaSubType = *(DerivedStorage + 192);
  }

  if (CMFormatDescriptionGetMediaType(FormatDescription) == 1668310898)
  {
    if (!v8)
    {
      FigSimpleMutexLock();
      v9 = *(DerivedStorage + 120);
      if (v9)
      {
        v10 = CFRetain(v9);
      }

      else
      {
        v10 = 0;
      }

      FigSimpleMutexUnlock();
      SubtitleSampleForWebVTTSampleBuffer = caprp_createSubtitleSampleForCaptionGroupSampleBuffer(a1, a2, *(DerivedStorage + 136), *(DerivedStorage + 88), &cf);
      goto LABEL_38;
    }

LABEL_41:
    LOBYTE(v35) = 0;
    v14 = 1;
    v33 = v31;
    v34 = v32;
    goto LABEL_42;
  }

  if ((CMFormatDescriptionGetMediaType(FormatDescription) == 1935832172 || CMFormatDescriptionGetMediaType(FormatDescription) == 1937072756) && CMFormatDescriptionGetMediaSubType(FormatDescription) == 1937010800)
  {
    if (v8)
    {
      goto LABEL_41;
    }

    FigSimpleMutexLock();
    v11 = *(DerivedStorage + 120);
    if (v11)
    {
      v10 = CFRetain(v11);
    }

    else
    {
      v10 = 0;
    }

    FigSimpleMutexUnlock();
    SubtitleSampleForWebVTTSampleBuffer = caprp_createSubtitleSampleForMPEG4Part30SampleBuffer(a1, a2, *(DerivedStorage + 136), *(DerivedStorage + 88), &cf);
LABEL_38:
    v16 = SubtitleSampleForWebVTTSampleBuffer;
    if (v10)
    {
      CFRelease(v10);
    }

    if (v16)
    {
      goto LABEL_3;
    }

    goto LABEL_41;
  }

  if (WebVTTIsFormatDescriptionForWebVTT(FormatDescription))
  {
    if (v8)
    {
      goto LABEL_41;
    }

    if (!*(DerivedStorage + 112) && WebVTTSampleBufferParserCreate((DerivedStorage + 112)))
    {
      goto LABEL_3;
    }

    FigSimpleMutexLock();
    v12 = *(DerivedStorage + 120);
    if (v12)
    {
      v10 = CFRetain(v12);
    }

    else
    {
      v10 = 0;
    }

    FigSimpleMutexUnlock();
    SubtitleSampleForWebVTTSampleBuffer = caprp_createSubtitleSampleForWebVTTSampleBuffer(a1, *(DerivedStorage + 112), a2, v10, *(DerivedStorage + 136), *(DerivedStorage + 88), &cf);
    goto LABEL_38;
  }

  LOBYTE(v39) = 0;
  if (v8)
  {
    v13 = 0;
    LOBYTE(v35) = 0;
    v14 = 1;
    v33 = v31;
    v34 = v32;
  }

  else
  {
    if (caprp_createSubtitleSampleForTX3GSampleBuffer(a1, a2, *(DerivedStorage + 136), &cf, &v39, &v35 + 1, &v35, &v33))
    {
      goto LABEL_3;
    }

    v14 = HIBYTE(v35);
    if (!HIBYTE(v35))
    {
      if (*(DerivedStorage + 106))
      {
        if (v39)
        {
          *(DerivedStorage + 106) = 0;
          v14 = 1;
          goto LABEL_42;
        }

        v40 = v37;
        caprp_sendSubtitleSample(a1, MediaSubType, &v40.value, 1, 0);
        *(DerivedStorage + 106) = 0;
      }

      if (!*(DerivedStorage + 144))
      {
        goto LABEL_3;
      }

      v14 = 0;
      goto LABEL_42;
    }

    v13 = v39 == 0;
  }

  *(DerivedStorage + 106) = v13;
LABEL_42:
  if (*(DerivedStorage + 2))
  {
    *(DerivedStorage + 2) = 0;
    CMFormatDescriptionGetMediaType(FormatDescription);
    if (dword_1EAF17730)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (subrp_SampleBufferShouldBeDisplayed(a2))
  {
    if (subrp_isSubTypeFourCCToBeRepresentedNatively(*(DerivedStorage + 184), MediaSubType))
    {
      if (*(DerivedStorage + 168))
      {
        v18 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v18)
        {
          v19 = v18;
          v20 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00400775FAF6uLL);
          if (v20)
          {
            v21 = v20;
            if (a1)
            {
              v22 = CFRetain(a1);
            }

            else
            {
              v22 = 0;
            }

            *v21 = v22;
            *(v21 + 1) = *(DerivedStorage + 168);
            *(v21 + 2) = CFRetain(v19);
            *(v21 + 3) = CFRetain(a2);
            *(v21 + 32) = v37;
            v21[56] = v14;
            dispatch_async_f(*(DerivedStorage + 8), v21, caprpNativeCallback);
          }

          else
          {
            caprp_sendSubtitleSampleForSampleBuffer_cold_1();
          }

          v28 = v19;
LABEL_65:
          CFRelease(v28);
        }
      }
    }

    else if (*(DerivedStorage + 152))
    {
      v23 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v23)
      {
        v24 = v23;
        v25 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040556ECBE3uLL);
        if (v25)
        {
          v26 = v25;
          if (a1)
          {
            v27 = CFRetain(a1);
          }

          else
          {
            v27 = 0;
          }

          *v26 = v27;
          *(v26 + 1) = *(DerivedStorage + 152);
          *(v26 + 2) = CFRetain(v24);
          v29 = cf;
          if (cf)
          {
            v29 = CFRetain(cf);
          }

          *(v26 + 3) = v29;
          *(v26 + 32) = v37;
          v26[80] = v14;
          v26[81] = v35;
          v30 = v34;
          *(v26 + 88) = v33;
          *(v26 + 104) = v30;
          dispatch_async_f(*(DerivedStorage + 8), v26, caprpCommonCallback);
        }

        else
        {
          caprp_sendSubtitleSampleForSampleBuffer_cold_2();
        }

        v28 = v24;
        goto LABEL_65;
      }
    }
  }

LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  return FigSimpleMutexUnlock();
}

uint64_t caprp_resetOutput(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM();
  }

  else if (*(DerivedStorage + 200))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xE004023458D36uLL);
      if (v6)
      {
        v7 = v6;
        if (a2)
        {
          v8 = CFRetain(a2);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(DerivedStorage + 200);
        *v7 = v8;
        v7[1] = v9;
        v7[2] = CFRetain(v5);
        dispatch_async_f(*(DerivedStorage + 8), v7, caprpFlushCallback);
      }

      else
      {
        caprp_resetOutput_cold_1();
      }

      CFRelease(v5);
    }
  }

  else
  {
    v11 = *(DerivedStorage + 192);
    figSubtitleRenderPipelineGetCurrentTimeFromTimebase(DerivedStorage, &v12);
    caprp_sendSubtitleSample(a2, v11, &v12.value, *(DerivedStorage + 106), 0);
    *(DerivedStorage + 106) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t figCaptionRenderPipelineFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2) = 1;
  figCaptionRenderPipelineInvalidate_Internal(a1, 0);
  FigTextSampleBufferTearDownState(DerivedStorage + 40);
  v3 = *(DerivedStorage + 288);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 288) = 0;
  }

  v4 = *(DerivedStorage + 296);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 296) = 0;
  }

  v5 = *(DerivedStorage + 248);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 248) = 0;
  }

  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 160) = 0;
  }

  v7 = *(DerivedStorage + 176);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 176) = 0;
  }

  v8 = *(DerivedStorage + 208);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 208) = 0;
  }

  v9 = *(DerivedStorage + 8);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 8) = 0;
  }

  if (*(DerivedStorage + 120))
  {
    FigSimpleMutexLock();
    v10 = *(DerivedStorage + 120);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 120) = 0;
    }

    FigSimpleMutexUnlock();
  }

  v11 = *(DerivedStorage + 136);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 136) = 0;
  }

  v12 = *(DerivedStorage + 304);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 304) = 0;
  }

  v13 = *(DerivedStorage + 184);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 184) = 0;
  }

  WebVTTSampleBufferParserDestroy(*(DerivedStorage + 112));
  FigSimpleMutexDestroy();
  *(DerivedStorage + 128) = 0;
  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 16) = 0;
  return result;
}

__CFString *figCaptionRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t figCaptionRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage))
  {

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"CRPP_TextMarkupArray"))
  {
    FigSimpleMutexLock();
    v10 = v8[15];
    if (v10)
    {
      v11 = 0;
      *a4 = CFRetain(v10);
    }

    else
    {
      v11 = 4294954513;
    }

    FigSimpleMutexUnlock();
    return v11;
  }

  if (CFEqual(a2, @"CRPP_ExtendedLanguageTagString"))
  {
    v12 = v8[17];
    if (!v12)
    {
LABEL_12:
      v11 = 0;
      *a4 = v12;
      return v11;
    }

LABEL_11:
    v12 = CFRetain(v12);
    goto LABEL_12;
  }

  if (CFEqual(@"HDRCrossTalker", a2))
  {
    v12 = v8[38];
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(v8[3]);

  return CMBaseObjectCopyProperty(FigBaseObject, a2, a3, a4);
}

uint64_t figCaptionRenderPipelineSetProperty(const void *a1, const void *a2, void *a3)
{
  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v7 = DerivedStorage, *DerivedStorage))
  {
LABEL_3:

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"CRPP_TextMarkupArray"))
  {
    if (a3)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        goto LABEL_3;
      }
    }

    FigSimpleMutexLock();
    v10 = *(v7 + 120);
    *(v7 + 120) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(a2, @"CRPP_TextHighlightArray"))
  {
    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CFArrayGetTypeID())
      {
        goto LABEL_3;
      }
    }

    else
    {
      values = *MEMORY[0x1E695E738];
    }

    v13 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigTextAttributeSubtitleTextHighlightArray, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16 = *(v7 + 192);
    figSubtitleRenderPipelineGetCurrentTimeFromTimebase(v7, &v18);
    caprp_sendSubtitleSample(a1, v16, &v18.value, 0, v13);
    if (!v13)
    {
      return 0;
    }

LABEL_39:
    CFRelease(v13);
    return 0;
  }

  if (CFEqual(a2, @"CRPP_ExtendedLanguageTagString"))
  {
    if (!a3)
    {
      v13 = *(v7 + 136);
      *(v7 + 136) = 0;
      if (!v13)
      {
        return 0;
      }

      goto LABEL_39;
    }

    v12 = CFStringGetTypeID();
    if (v12 != CFGetTypeID(a3))
    {
      goto LABEL_3;
    }

    v13 = *(v7 + 136);
    *(v7 + 136) = a3;
    goto LABEL_24;
  }

  if (CFEqual(a2, @"DisplayNonForcedSubtitles"))
  {
    if (a3)
    {
      v14 = CFBooleanGetTypeID();
      if (v14 != CFGetTypeID(a3))
      {
        goto LABEL_3;
      }
    }

    *(v7 + 144) = CFBooleanGetValue(a3);
    return 0;
  }

  if (CFEqual(a2, @"HDRCrossTalker"))
  {
    if (!a3)
    {
      v13 = *(v7 + 304);
      *(v7 + 304) = 0;
      if (!v13)
      {
        return 0;
      }

      goto LABEL_39;
    }

    v15 = FigCrossTalkerGetTypeID();
    if (v15 != CFGetTypeID(a3))
    {
      goto LABEL_3;
    }

    v13 = *(v7 + 304);
    *(v7 + 304) = a3;
LABEL_24:
    CFRetain(a3);
    if (!v13)
    {
      return 0;
    }

    goto LABEL_39;
  }

  v17 = *(v7 + 24);

  return FigRenderPipelineSetProperty(v17, a2, a3);
}

void figCaptionRenderPipelineInvalidate_Internal(const void *a1, int a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v5 = DerivedStorage;
      if (*(DerivedStorage + 16))
      {
        FigSimpleMutexLock();
        if (*v5)
        {

          FigSimpleMutexUnlock();
        }

        else
        {
          if (a2)
          {
            if (*(v5 + 200))
            {
              v6 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v6)
              {
                v7 = v6;
                (*(v5 + 200))(a1, v6);
                CFRelease(v7);
              }
            }

            else
            {
              memset(&v18, 0, sizeof(v18));
              figSubtitleRenderPipelineGetCurrentTimeFromTimebase(v5, &v18);
              caprp_sendSubtitleSample(a1, *(v5 + 192), &v18.value, *(v5 + 106), 0);
              *(v5 + 106) = 0;
            }
          }

          *v5 = 1;
          FigSimpleMutexUnlock();
          if (*(v5 + 32))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterRemoveListener();
            CFRelease(*(v5 + 32));
            *(v5 + 32) = 0;
          }

          v8 = *(v5 + 24);
          if (v8)
          {
            FigBaseObject = FigRenderPipelineGetFigBaseObject(v8);
            if (FigBaseObject)
            {
              v10 = FigBaseObject;
              v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
              if (v11)
              {
                v11(v10);
              }
            }

            CFRelease(*(v5 + 24));
            *(v5 + 24) = 0;
          }

          v12 = *(v5 + 216);
          if (v12)
          {
            CFRelease(v12);
            *(v5 + 216) = 0;
          }

          v13 = *(v5 + 224);
          if (v13)
          {
            CFRelease(v13);
            *(v5 + 224) = 0;
          }

          v14 = *(v5 + 232);
          if (v14)
          {
            CFRelease(v14);
            *(v5 + 232) = 0;
          }

          v15 = *(v5 + 240);
          if (v15)
          {
            CFRelease(v15);
            *(v5 + 240) = 0;
          }

          v16 = *(v5 + 272);
          if (v16)
          {
            CFRelease(v16);
            *(v5 + 272) = 0;
          }

          v17 = *(v5 + 256);
          if (v17)
          {
            CFRelease(v17);
            *(v5 + 256) = 0;
          }
        }
      }
    }
  }
}

void caprp_sendSubtitleSample(const void *a1, int a2, __int128 *a3, char a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (subrp_isSubTypeFourCCToBeRepresentedNatively(*(DerivedStorage + 184), a2))
  {
    if (!*(DerivedStorage + 168))
    {
      return;
    }

    v11 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v13 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00400775FAF6uLL);
    if (!v13)
    {
      caprp_sendSubtitleSample_cold_1();
      goto LABEL_21;
    }

    v14 = v13;
    if (a1)
    {
      v15 = CFRetain(a1);
    }

    else
    {
      v15 = 0;
    }

    v20 = *(DerivedStorage + 168);
    *v14 = v15;
    v14[1] = v20;
    v14[2] = CFRetain(v12);
    v14[3] = 0;
    v21 = *(a3 + 2);
    *(v14 + 2) = *a3;
    v14[6] = v21;
    *(v14 + 56) = a4;
    v22 = *(DerivedStorage + 8);
    v23 = caprpNativeCallback;
    v24 = v14;
  }

  else
  {
    if (!*(DerivedStorage + 152))
    {
      return;
    }

    v16 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v16)
    {
      return;
    }

    v12 = v16;
    v17 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040556ECBE3uLL);
    if (!v17)
    {
      caprp_sendSubtitleSample_cold_2();
      goto LABEL_21;
    }

    v18 = v17;
    if (a1)
    {
      v19 = CFRetain(a1);
    }

    else
    {
      v19 = 0;
    }

    v25 = *(DerivedStorage + 152);
    *v18 = v19;
    *(v18 + 1) = v25;
    *(v18 + 2) = CFRetain(v12);
    if (a5)
    {
      v26 = CFRetain(a5);
    }

    else
    {
      v26 = 0;
    }

    *(v18 + 3) = v26;
    v27 = *a3;
    *(v18 + 6) = *(a3 + 2);
    *(v18 + 2) = v27;
    v18[80] = a4;
    v28 = MEMORY[0x1E695F050];
    v18[81] = 0;
    v29 = v28[1];
    *(v18 + 88) = *v28;
    *(v18 + 104) = v29;
    v22 = *(DerivedStorage + 8);
    v23 = caprpCommonCallback;
    v24 = v18;
  }

  dispatch_async_f(v22, v24, v23);
LABEL_21:

  CFRelease(v12);
}

void caprpNativeCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 56);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v3(v2, v6, &v10, v5, v7);
  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void caprpCommonCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 80);
  v6 = *(a1 + 81);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v3(v2, v7, &v11, v5, v6, v8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t caprp_isSubtitleOverHDRVideo()
{
  cf = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 304);
  if (!v0)
  {
    return 0;
  }

  FigBytePumpGetFigBaseObject(v0);
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  if (v3(v2, 0x1F0B4C778, *MEMORY[0x1E695E480], &cf))
  {
    v4 = 0;
  }

  else
  {
    v4 = *MEMORY[0x1E695E4D0] == cf;
  }

  v5 = v4;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void caprpFlushCallback(CFTypeRef *a1)
{
  (a1[1])(*a1, a1[2]);
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

CFDictionaryRef OUTLINED_FUNCTION_1_163@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeCopyAsDictionary(&time, v8);
}

uint64_t OUTLINED_FUNCTION_5_107()
{
  *(v1 - 136) = 0;
  *(v1 - 128) = 0;
  *(v1 - 120) = 0;
  return v0;
}

CMTime *OUTLINED_FUNCTION_6_96()
{
  *(v1 - 160) = 0;
  *(v1 - 152) = 0;
  *(v1 - 144) = 0;

  return CMSampleBufferGetDuration((v1 - 160), v0);
}

void LPCMResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

void LPCMDestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(a1 + 88);
    if (*(v1 + 24))
    {
      CFRelease(*(v1 + 24));
      v3 = *(a1 + 88);
    }

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    free(v3);
    *(a1 + 88) = 0;
  }
}

uint64_t LPCMReadBitRate(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    return 4294954323;
  }

  if (!a2)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = *(*(a1 + 88) + 12);
  return result;
}

void OUTLINED_FUNCTION_0_172()
{
  *v1 = 0;
  v1[2] = v0;
  v1[3] = 1;
  v1[8] = 2;
}

uint64_t FigTTMLSpanCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    FigTTMLSpanCreate_cold_2(&v16);
    return v16;
  }

  FigTTMLNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v8)
  {
    return v8;
  }

  v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v8)
  {
    return v8;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v15 = 201;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 204;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLSpan_ConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

uint64_t figTTMLSpan_ConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theString = 0;
  value = 0;
  v7 = CFGetAllocator(*a2);
  AnimationClassNode = FigTTMLParseAndCreateInlineClassNode(v7, a1, a2, &value);
  if (AnimationClassNode)
  {
    goto LABEL_24;
  }

  if (!value)
  {
    CFGetAllocator(*a2);
    AnimationClassNode = FigTTMLParseAndCreateAnimationClassNode();
    if (!AnimationClassNode)
    {
      v10 = value;
      if (!value)
      {
        v13 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
        v11 = v13;
        if (a3 && !v13)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      }

      v9 = *(DerivedStorage + 144);
      goto LABEL_10;
    }

LABEL_24:
    v11 = AnimationClassNode;
    goto LABEL_14;
  }

  AnimationClassNode = FigTTMLNodeCopyNodeValue(value, &theString);
  if (AnimationClassNode)
  {
    goto LABEL_24;
  }

  if (theString && !CFStringGetLength(theString))
  {
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    goto LABEL_11;
  }

  v9 = *(DerivedStorage + 136);
  v10 = value;
LABEL_10:
  CFArrayAppendValue(v9, v10);
LABEL_11:
  if (a3)
  {
LABEL_12:
    v11 = 0;
    *a3 = value;
    value = 0;
    goto LABEL_16;
  }

  v11 = 0;
LABEL_14:
  if (value)
  {
    CFRelease(value);
  }

LABEL_16:
  if (theString)
  {
    CFRelease(theString);
  }

  return v11;
}

void figTTMLSpan_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLSpan_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"span: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLSpan_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    result = 0;
    *a2 = ConcatenationOfTwoArrays;
  }

  else
  {
    figTTMLExtensions_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figTTMLSpan_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 5;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLSpan_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t LPCMCheckHeader(unsigned __int16 *a1)
{
  result = 0;
  v3 = __rev16(*a1);
  v4 = *(a1 + 2);
  v5 = v4 & 0xF;
  v6 = *(a1 + 3);
  v7 = v6 >> 6;
  if (v3 <= 4319)
  {
    if (v3 > 1919)
    {
      switch(v3)
      {
        case 1920:
          if (v7 == 1 && v5 == 1)
          {
            return 1;
          }

          result = 0;
          if ((v4 & 0xD0) != 0x10 || v7 != 1)
          {
            return result;
          }

          break;
        case 2880:
          if ((v7 == 1 && (v4 & 0xE0) == 128 || (v6 & 0x80u) != 0) && v5 == 1)
          {
            return 1;
          }

          result = 0;
          if ((v4 & 0xD0) != 0x10 || (v6 & 0x80000000) == 0)
          {
            return result;
          }

          break;
        case 3840:
          v10 = v5 == 1 && (v4 & 0xE0) == 160 && v7 == 1;
          v11 = v5 == 2 && v7 == 1;
          if (v10 || v11)
          {
            return 1;
          }

          result = 0;
          if ((v4 & 0xD0) != 0x10 || v7 != 1)
          {
            return result;
          }

          goto LABEL_102;
        default:
          return result;
      }

      if (v5 != 2)
      {
        return result;
      }

      return 1;
    }

    if (v3 == 960)
    {
      return (v4 & 0xD0) == 0x10 && v7 == 1 && v5 == 1;
    }

    if (v3 != 1440)
    {
      return result;
    }

    if ((v4 & 0xD0) == 0x10)
    {
      return (v6 & 0x80u) != 0 && v5 == 1;
    }

    return 0;
  }

  if (v3 > 8639)
  {
    switch(v3)
    {
      case 8640:
        if ((v4 & 0xE0) == 0x80)
        {
          return (v6 & 0x80u) != 0 && v5 == 2;
        }

        break;
      case 11520:
        v19 = v4 & 0xE0;
        if (v19 == 128)
        {
          if ((v6 & 0x80) != 0 && v5 == 3)
          {
            return 1;
          }
        }

        else if (v19 == 160 && (v6 & 0x80) != 0 && v5 == 2)
        {
          return 1;
        }

        result = 0;
        if ((v6 & 0x80) == 0)
        {
          return result;
        }

        goto LABEL_102;
      case 17280:
        if ((v4 & 0xE0) == 0x80)
        {
          return (v6 & 0x80u) != 0 && v5 == 3;
        }

        break;
      default:
        return result;
    }

    return 0;
  }

  switch(v3)
  {
    case 4320:
      if ((v4 & 0xE0) == 0x80)
      {
        return (v6 & 0x80u) != 0 && v5 == 1;
      }

      return 0;
    case 5760:
      if ((v4 & 0xE0) == 0xA0 && (v6 & 0x80) != 0 && v5 == 1)
      {
        return 1;
      }

      v17 = v7 == 1 && (v4 & 0xE0) == 128;
      v18 = v17 || (v6 & 0x80u) != 0;
      if (v18 && v5 == 2)
      {
        return 1;
      }

      result = 0;
      if ((v4 & 0xD0) != 0x10 || (v6 & 0x80000000) == 0)
      {
        return result;
      }

LABEL_102:
      if (v5 != 3)
      {
        return result;
      }

      return 1;
    case 7680:
      v8 = (v4 & 0xE0) == 160;
      if (v7 != 1)
      {
        v8 = 0;
      }

      if (v5 != 2)
      {
        v8 = 0;
      }

      v9 = v5 == 3 && v7 == 1;
      return v8 | v9;
  }

  return result;
}

uint64_t LPCMGetChannelLayout(uint64_t a1)
{
  v1 = (*(a1 + 2) >> 4) - 1;
  if (v1 > 0xA)
  {
    return 196610;
  }

  else
  {
    return dword_196E78FD8[v1];
  }
}

uint64_t LPCMGetBitsPerChannelSample(uint64_t a1)
{
  v1 = *(a1 + 3) >> 6;
  if (v1 == 3)
  {
    v2 = 24;
  }

  else
  {
    v2 = 16;
  }

  if (v1 == 2)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t LPCMGetSamplesPerFrame(unsigned __int16 *a1)
{
  v2 = __rev16(*a1);
  v3 = LPCMGetChannelLayout(a1);
  if (*(a1 + 3) >= 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v2 / (v4 * v3);
}

uint64_t LPCMGetSampleFrequency(uint64_t a1)
{
  v1 = *(a1 + 2) & 0xF;
  if (v1 == 5)
  {
    v2 = 192000;
  }

  else
  {
    v2 = 48000;
  }

  if (v1 == 4)
  {
    return 96000;
  }

  else
  {
    return v2;
  }
}

uint64_t PSLPCMCheckHeader(_BYTE *a1)
{
  if ((*a1 & 0xF8) == 0xA0)
  {
    return PSLPCMGetBytesPerFrame(a1, &v3);
  }

  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  if (!result)
  {
    return PSLPCMGetBytesPerFrame(a1, &v3);
  }

  return result;
}

uint64_t PSLPCMGetBytesPerFrame(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v9 = 0;
  result = PSLPCMGetSampleFrequency(a1, &v9);
  if (!result)
  {
    v5 = *(a1 + 5);
    v6 = v9 / 0x258uLL + v9 / 0x258 * (v5 & 7);
    v7 = v5 >> 6;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        result = 0;
        v8 = 3 * v6;
        goto LABEL_7;
      }

      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    else
    {
      if (!v7)
      {
        result = 0;
        v8 = 2 * v6;
LABEL_7:
        *a2 = v8;
        return result;
      }

      return 4294954321;
    }
  }

  return result;
}

uint64_t PSLPCMGetSampleFrequency(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  if ((*(a1 + 5) & 0x30) != 0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *a2 = 48000;
    return 0;
  }
}

__n128 FigPlaybackItemSegmentGetTimeMapping@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 68);
  *(a2 + 32) = *(a1 + 52);
  *(a2 + 48) = v2;
  v3 = *(a1 + 100);
  *(a2 + 64) = *(a1 + 84);
  *(a2 + 80) = v3;
  result = *(a1 + 20);
  v5 = *(a1 + 36);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t FigPlaybackItemSegmentCreate(int a1, __int128 *a2, const void *a3, const void *a4, const void *a5, void *a6)
{
  if (a6)
  {
    if (a1 != 1 && (a1 || a5))
    {
      FigPlaybackItemSegmentCreate_cold_1(&v22);
      return v22;
    }

    else
    {
      MEMORY[0x19A8D3660](&FigPlaybackItemSegmentGetTypeID_sFigPlaybackItemSegmentRegisterOnce, FigPlaybackItemSegment_initOnce);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v13 = Instance;
        *(Instance + 16) = a1;
        v14 = *a2;
        *(Instance + 36) = a2[1];
        *(Instance + 20) = v14;
        v15 = a2[2];
        v16 = a2[3];
        v17 = a2[4];
        *(Instance + 100) = a2[5];
        *(Instance + 84) = v17;
        *(Instance + 68) = v16;
        *(Instance + 52) = v15;
        if (a3)
        {
          v18 = CFRetain(a3);
        }

        else
        {
          v18 = 0;
        }

        v13[15] = v18;
        if (a4)
        {
          v19 = CFRetain(a4);
        }

        else
        {
          v19 = 0;
        }

        v13[16] = v19;
        if (a5)
        {
          v20 = CFRetain(a5);
        }

        else
        {
          v20 = 0;
        }

        result = 0;
        v13[17] = v20;
        *a6 = v13;
      }

      else
      {
        FigPlaybackItemSegmentCreate_cold_2(&v23);
        return v23;
      }
    }
  }

  else
  {
    FigPlaybackItemSegmentCreate_cold_3(&v24);
    return v24;
  }

  return result;
}

uint64_t FigPlaybackItemSegment_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlaybackItemSegmentID = result;
  return result;
}

double fpis_init(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void fpis_finalize(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    CFRelease(v2);
    a1[15] = 0;
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
    a1[16] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    CFRelease(v4);
    a1[17] = 0;
  }
}

CFStringRef fpfis_copyFormattingDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  if (fpfis_copyFormattingDesc_onceToken != -1)
  {
    fpfis_copyFormattingDesc_cold_1();
  }

  v3 = *MEMORY[0x1E695E480];
  if (*(a1 + 16))
  {
    v4 = @"I";
  }

  else
  {
    v4 = @"P";
  }

  v5 = *(a1 + 128);
  *&time.start.value = *(a1 + 20);
  time.start.epoch = *(a1 + 36);
  Seconds = CMTimeGetSeconds(&time.start);
  v7 = *(a1 + 36);
  *&time.start.value = *(a1 + 20);
  *&time.start.epoch = v7;
  *&time.duration.timescale = *(a1 + 52);
  CMTimeRangeGetEnd(&v16, &time);
  v8 = CMTimeGetSeconds(&v16);
  *&time.start.value = *(a1 + 68);
  time.start.epoch = *(a1 + 84);
  v9 = CMTimeGetSeconds(&time.start);
  v10 = *(a1 + 84);
  *&time.start.value = *(a1 + 68);
  *&time.start.epoch = v10;
  *&time.duration.timescale = *(a1 + 100);
  CMTimeRangeGetEnd(&v16, &time);
  v11 = CMTimeGetSeconds(&v16);
  if (fpfis_copyFormattingDesc_includeLoadedTimeRange)
  {
    v12 = v2;
  }

  else
  {
    v12 = &stru_1F0B1AFB8;
  }

  v13 = CFStringCreateWithFormat(v3, 0, @"[%@] %@: [%.3f, %.3f] [%.3f, %.3f] %@", v4, v5, *&Seconds, *&v8, *&v9, *&v11, v12);
  if (v2)
  {
    CFRelease(v2);
  }

  return v13;
}

uint64_t __fpfis_copyFormattingDesc_block_invoke()
{
  result = FigGetCFPreferenceBooleanWithDefault();
  fpfis_copyFormattingDesc_includeLoadedTimeRange = result;
  return result;
}

void FigCaptionRendererNodeFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 320);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 320) = 0;
  }

  v3 = *(DerivedStorage + 304);
  if (v3)
  {
    CFRelease(v3);
  }

  CGImageRelease(*(DerivedStorage + 296));
  *(DerivedStorage + 296) = 0;
  v4 = *(DerivedStorage + 288);
  if (v4)
  {
    *(DerivedStorage + 288) = 0;

    free(v4);
  }
}

__CFString *FigCaptionRendererNodeCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererNode: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererNode_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererNode <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, const void *a2, BOOL *a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  v7.length = CFArrayGetCount(v5);
  v7.location = 0;
  *a3 = CFArrayGetFirstIndexOfValue(v5, v7, a2) >= 0;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayAppendValue(*(DerivedStorage + 8), a2);
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, const void *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v6.length = CFArrayGetCount(v3);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v6, a2);
  CFArrayRemoveValueAtIndex(v3, FirstIndexOfValue);
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayRemoveAllValues(*(DerivedStorage + 8));
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetViewport(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (!CGRectEqualToRect(*(DerivedStorage + 16), v10))
  {
    *(DerivedStorage + 16) = a1;
    *(DerivedStorage + 24) = a2;
    *(DerivedStorage + 32) = a3;
    *(DerivedStorage + 40) = a4;
    *(DerivedStorage + 313) = 1;
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 32);
  *a2 = *(DerivedStorage + 16);
  a2[1] = v4;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a2[3];
  v6 = *a2;
  v5 = a2[1];
  DerivedStorage[5] = a2[2];
  DerivedStorage[6] = v4;
  DerivedStorage[3] = v6;
  DerivedStorage[4] = v5;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage[6];
  v6 = DerivedStorage[3];
  v5 = DerivedStorage[4];
  a2[2] = DerivedStorage[5];
  a2[3] = v4;
  *a2 = v6;
  a2[1] = v5;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 112) = a1;
  *(DerivedStorage + 120) = a2;
  *(DerivedStorage + 128) = a3;
  *(DerivedStorage + 136) = a4;
  v9 = 0.0;
  v10 = 0.0;
  if (*(DerivedStorage + 184) == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v10 = v11 / 100.0 * *(DerivedStorage + 128);
  }

  v31 = v10;
  if (*(DerivedStorage + 200) == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v9 = v12 / 100.0 * *(DerivedStorage + 128);
  }

  v13 = 0.0;
  if (*(DerivedStorage + 216) == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v13 = v14 / 100.0 * *(DerivedStorage + 136);
  }

  if (*(DerivedStorage + 232) == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v16 = *(DerivedStorage + 136);
    v17 = v15 / 100.0 * v16;
  }

  else
  {
    v16 = *(DerivedStorage + 136);
    v17 = 0.0;
  }

  v18.f64[0] = v31;
  v19 = *(DerivedStorage + 128) - v31 - v9;
  v18.f64[1] = v17;
  *(DerivedStorage + 144) = vaddq_f64(v18, *(DerivedStorage + 112));
  *(DerivedStorage + 160) = v19;
  *(DerivedStorage + 168) = v16 - v13 - v17;
  v20 = *(DerivedStorage + 8);
  if (CFArrayGetCount(v20) >= 1)
  {
    v21 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
      v23 = *(DerivedStorage + 144);
      v24 = *(DerivedStorage + 152);
      v25 = *(DerivedStorage + 160);
      v26 = *(DerivedStorage + 168);
      FigCaptionRendererNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v28 = *(ProtocolVTable + 16);
        if (v28)
        {
          v29 = *(v28 + 64);
          if (v29)
          {
            v29(ValueAtIndex, v23, v24, v25, v26);
          }
        }
      }

      ++v21;
    }

    while (CFArrayGetCount(v20) > v21);
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 128);
  *a2 = *(DerivedStorage + 112);
  a2[1] = v4;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 256) = a1;
  *(DerivedStorage + 264) = a2;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 240) = a1;
  *(DerivedStorage + 248) = a2;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[22] = a2;
  DerivedStorage[23] = a3;
  DerivedStorage[24] = a4;
  DerivedStorage[25] = a5;
  DerivedStorage[26] = a6;
  DerivedStorage[27] = a7;
  DerivedStorage[28] = a9;
  DerivedStorage[29] = a10;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 160);
  *a2 = *(DerivedStorage + 144);
  a2[1] = v4;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_PurgeImageCache()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 288);
  if (v1)
  {
    *(DerivedStorage + 288) = 0;
    free(v1);
    *(DerivedStorage + 272) = 0;
    *(DerivedStorage + 280) = 0;
  }

  CGImageRelease(*(DerivedStorage + 296));
  *(DerivedStorage + 296) = 0;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, CGImage *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CGImageRelease(*(DerivedStorage + 296));
  *(DerivedStorage + 296) = CGImageRetain(a2);
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 > 0x10000)
  {
    FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_5(&v14);
    return v14;
  }

  if (a3 > 0x10000)
  {
    FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_4(&v14);
    return v14;
  }

  if (a4 >= 0x11)
  {
    FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_3(&v14);
    return v14;
  }

  v8 = a4 * a3 * (a4 * a2);
  if (v8 >> 29)
  {
    FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_2(&v14);
    return v14;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 276) * *(DerivedStorage + 272) * *(DerivedStorage + 280);
  v11 = *(DerivedStorage + 288);
  if (v10 == a4 * a2 * a3)
  {
    bzero(v11, 4 * v8);
    return 0;
  }

  if (v11)
  {
    *(v9 + 288) = 0;
    free(v11);
    *(v9 + 272) = 0;
    *(v9 + 280) = 0;
  }

  if (v8)
  {
    v13 = malloc_type_calloc(4 * v8, 1uLL, 0xB2A22E01uLL);
    *(v9 + 288) = v13;
    if (!v13)
    {
      FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_1(&v14);
      return v14;
    }
  }

  result = 0;
  *(v9 + 272) = a2;
  *(v9 + 276) = a3;
  *(v9 + 280) = a4;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 313) = a2;
  v4 = *(DerivedStorage + 8);
  if (CFArrayGetCount(v4) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
      FigCaptionRendererNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 232);
          if (v9)
          {
            v9(ValueAtIndex, a2);
          }
        }
      }

      ++v5;
    }

    while (CFArrayGetCount(v4) > v5);
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, BOOL *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = CFArrayGetCount(*(DerivedStorage + 320)) > 0;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 312) = 257;
  __asm { FMOV            V0.2D, #-1.0 }

  *(DerivedStorage + 240) = _Q0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v9 = *(ProtocolVTable + 16);
    if (v9)
    {
      v10 = *(v9 + 328);
      if (v10)
      {
        v10(a1);
      }
    }
  }

  v11 = *(DerivedStorage + 8);
  if (CFArrayGetCount(v11) >= 1)
  {
    v12 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v14 = CMBaseObjectGetProtocolVTable();
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *(v15 + 272);
          if (v16)
          {
            v16(ValueAtIndex);
          }
        }
      }

      ++v12;
    }

    while (CFArrayGetCount(v11) > v12);
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_Draw(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950096;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 328) && *(a2 + 754))
  {
    CGContextSaveGState(*(a2 + 320));
    v6 = *(MEMORY[0x1E695F050] + 16);
    v11.origin = *MEMORY[0x1E695F050];
    v11.size = v6;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 16);
      if (v8)
      {
        v9 = *(v8 + 104);
        if (v9)
        {
          v9(a1, &v11);
        }
      }
    }

    CGContextSetRGBStrokeColor(*(a2 + 320), 1.0, 0.0, 1.0, 1.0);
    CGContextSetLineWidth(*(a2 + 320), 3.0);
    CGContextStrokeRect(*(a2 + 320), v11);
    CGContextRestoreGState(*(a2 + 320));
  }

  result = 0;
  *(v5 + 312) = 0;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950096;
  }

  v4 = DerivedStorage;
  result = 0;
  *(v4 + 313) = 0;
  return result;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 4294950096;
  }
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v5 = *(ProtocolVTable + 16);
    if (v5)
    {
      v6 = *(v5 + 312);
      if (v6)
      {
        v11[0] = v8;
        v11[1] = v9;
        v12 = v10;
        v6(v3, v11);
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayAppendValue(*(DerivedStorage + 320), a2);
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_RemoveAllActions()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayRemoveAllValues(*(DerivedStorage + 320));
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 320);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 320) = 0;
  }

  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 320) = v5;
  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, BOOL *a2, CGFloat a3, CGFloat a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(MEMORY[0x1E695F050] + 16);
  v18.origin = *MEMORY[0x1E695F050];
  v18.size = v9;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v11 = *(ProtocolVTable + 16);
    if (v11)
    {
      v12 = *(v11 + 104);
      if (v12)
      {
        v12(a1, &v18);
      }
    }
  }

  v17 = 0;
  *context = a3;
  *&context[1] = a4;
  v13 = *(DerivedStorage + 8);
  v19.length = CFArrayGetCount(v13);
  v19.location = 0;
  CFArrayApplyFunction(v13, v19, SelectChildNodes, context);
  if (!v17)
  {
    v20.x = a3;
    v20.y = a4;
    *(DerivedStorage + 328) = CGRectContainsPoint(v18, v20);
  }

  if (a2)
  {
    if (v17)
    {
      v14 = 1;
    }

    else
    {
      v21.x = a3;
      v21.y = a4;
      v14 = CGRectContainsPoint(v18, v21);
    }

    *a2 = v14;
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, BOOL *a2, CGFloat a3, CGFloat a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(MEMORY[0x1E695F050] + 16);
  v18.origin = *MEMORY[0x1E695F050];
  v18.size = v9;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v11 = *(ProtocolVTable + 16);
    if (v11)
    {
      v12 = *(v11 + 104);
      if (v12)
      {
        v12(a1, &v18);
      }
    }
  }

  v17 = 0;
  *context = a3;
  *&context[1] = a4;
  v13 = *(DerivedStorage + 8);
  v19.length = CFArrayGetCount(v13);
  v19.location = 0;
  CFArrayApplyFunction(v13, v19, UnselectChildNodes, context);
  if (!v17)
  {
    v20.x = a3;
    v20.y = a4;
    if (CGRectContainsPoint(v18, v20))
    {
      *(DerivedStorage + 328) = 0;
    }
  }

  if (a2)
  {
    if (v17)
    {
      v14 = 1;
    }

    else
    {
      v21.x = a3;
      v21.y = a4;
      v14 = CGRectContainsPoint(v18, v21);
    }

    *a2 = v14;
  }

  return 0;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_SetPCTContextData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 304);
  *(DerivedStorage + 304) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t updateDisplayChildNodes(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 304);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t nodeComparatorZIndex(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0.0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v5 = *(ProtocolVTable + 16);
    if (v5)
    {
      v6 = *(v5 + 264);
      if (v6)
      {
        v6(a1, &v13);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v7 = CMBaseObjectGetProtocolVTable();
  v8.n128_u64[0] = 0;
  if (v7)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = *(v9 + 264);
      if (v10)
      {
        v10(a2, &v12, v8);
        v8.n128_u64[0] = v12;
      }
    }
  }

  if (v13 < v8.n128_f64[0])
  {
    return -1;
  }

  else
  {
    return v13 > v8.n128_f64[0];
  }
}

uint64_t SelectChildNodes(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result && (v8 = *(result + 16), result += 16, (v7 = v8) != 0))
  {
    v9 = *(v7 + 352);
    if (v9)
    {
      result = v9(a1, &v10, v4, v5);
      LOBYTE(v9) = v10 != 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  *(a2 + 16) = (*(a2 + 16) != 0) | v9 & 1;
  return result;
}

uint64_t UnselectChildNodes(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result && (v8 = *(result + 16), result += 16, (v7 = v8) != 0))
  {
    v9 = *(v7 + 360);
    if (v9)
    {
      result = v9(a1, &v10, v4, v5);
      LOBYTE(v9) = v10 != 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  *(a2 + 16) = (*(a2 + 16) != 0) | v9 & 1;
  return result;
}

uint64_t RegisterFigCaptionRendererNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t fsd_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fsd_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7492DD0;
  block[4] = &v3;
  if (fsd_ensureClientEstablished_sFigSessionDataRemoteClientSetupOnce != -1)
  {
    dispatch_once(&fsd_ensureClientEstablished_sFigSessionDataRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryRemote(double a1)
{
  v2 = fsd_ensureClientEstablished();
  if (v2 || (v2 = FigXPCCreateBasicMessage(), v2) || (v2 = FigXPCMessageSetCFString(), v2) || (v2 = FigXPCMessageSetCFObject(), v2) || (xpc_dictionary_set_double(0, "duration", a1), v2 = FigXPCMessageSetCFURL(), v2) || (v2 = FigXPCMessageSetCFDictionary(), v2) || (v2 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v2) || (v2 = FigXPCMessageCopyCFArray(), v2) || (v2 = FigXPCMessageCopyCFDictionary(), v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

void __fsd_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFDictionarySetValue();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12786;
  }
}

uint64_t FigSubtitleRendererNotificationBarrier(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t FigSubtitleRendererDrawSubtitleText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = *(a3 + 32);
  v10 = *(a3 + 48);
  return v6(a1, a2, v9);
}

uint64_t FigSubtitleRendererLayout(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  v11 = a3[5];
  v15[4] = a3[4];
  v15[5] = v11;
  v15[6] = a3[6];
  v12 = a3[1];
  v15[0] = *a3;
  v15[1] = v12;
  v13 = a3[3];
  v15[2] = a3[2];
  v15[3] = v13;
  return v10(a1, a2, v15, a4, a5);
}

void MediaDataChunkWriterRelease(const __CFAllocator **ptr)
{
  if (ptr)
  {
    v3 = *ptr;
    v2 = ptr[1];
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ptr[1], i);
          if (ValueAtIndex)
          {
            CFAllocatorDeallocate(v3, ValueAtIndex);
          }
        }
      }

      v8 = ptr[1];
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = ptr[5];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = ptr[3];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = ptr[6];
    if (v11)
    {
      CFRelease(v11);
    }

    CFAllocatorDeallocate(v3, ptr);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t MediaDataChunkWriterAddTrack(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!a1)
  {
    MediaDataChunkWriterAddTrack_cold_4(&v15);
    return LODWORD(v15.value);
  }

  if (!a4)
  {
    MediaDataChunkWriterAddTrack_cold_3(&v15);
    return LODWORD(v15.value);
  }

  if (!a6)
  {
    MediaDataChunkWriterAddTrack_cold_2(&v15);
    return LODWORD(v15.value);
  }

  v12 = MEMORY[0x19A8CC720](*a1, 112, 0x108004067B5A0E7, 0);
  if (!v12)
  {
    MediaDataChunkWriterAddTrack_cold_1(&v15);
    return LODWORD(v15.value);
  }

  v13 = v12;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 32) = 0u;
  *v12 = a2;
  *(v12 + 8) = a4;
  *(v12 + 16) = a5;
  *(v12 + 72) = 0x100000;
  CMTimeMake(&v15, 1, 1);
  *(v13 + 76) = v15;
  *(v13 + 100) = 0;
  *(v13 + 104) = a3 & 1;
  CFArrayAppendValue(*(a1 + 8), v13);
  result = 0;
  *a6 = v13;
  return result;
}

uint64_t MediaDataChunkWriterTrackAppendSampleData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, size_t *a10, const __CFArray *a11, uint64_t a12)
{
  if (!a1)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_9(&v14);
    return v14;
  }

  if (!a2)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_8(&v14);
    return v14;
  }

  if (!a3)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_7(&v14);
    return v14;
  }

  if (!a4)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_6(&v14);
    return v14;
  }

  if (a6 <= 0)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_5(&v14);
    return v14;
  }

  if (a7 <= 0)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_4(&v14);
    return v14;
  }

  if (!a8)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_3(&v14);
    return v14;
  }

  if (a9 <= 0)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_2(&v14);
    return v14;
  }

  if (!a10)
  {
    MediaDataChunkWriterTrackAppendSampleData_cold_1(&v14);
    return v14;
  }

  v12 = 0;
  while (a10[v12])
  {
    if (a9 == ++v12)
    {
      return appendSampleDataOrSampleReference(a1, a2, a3, a4, 0, a5, a6, a7, a8, a9, a10, a11, a12);
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t MediaDataChunkWriterTrackAppendSampleReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9, const __CFArray *a10, uint64_t a11)
{
  if (!a1)
  {
    MediaDataChunkWriterTrackAppendSampleReference_cold_7(&v13);
    return v13;
  }

  if (!a2)
  {
    MediaDataChunkWriterTrackAppendSampleReference_cold_6(&v13);
    return v13;
  }

  if (a5 <= 0)
  {
    MediaDataChunkWriterTrackAppendSampleReference_cold_5(&v13);
    return v13;
  }

  if (a6 <= 0)
  {
    MediaDataChunkWriterTrackAppendSampleReference_cold_4(&v13);
    return v13;
  }

  if (!a7)
  {
    MediaDataChunkWriterTrackAppendSampleReference_cold_3(&v13);
    return v13;
  }

  if (a8 <= 0)
  {
    MediaDataChunkWriterTrackAppendSampleReference_cold_2(&v13);
    return v13;
  }

  if (!a9)
  {
    MediaDataChunkWriterTrackAppendSampleReference_cold_1(&v13);
    return v13;
  }

  v11 = 0;
  while (a9[v11])
  {
    if (a8 == ++v11)
    {
      return appendSampleDataOrSampleReference(a1, a2, 0, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t MediaDataChunkWriterTrackStartNewChunk(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 105) = 1;
    }

    else
    {
      MediaDataChunkWriterTrackStartNewChunk_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    MediaDataChunkWriterTrackStartNewChunk_cold_2(&v4);
    return v4;
  }

  return result;
}

uint64_t MediaDataChunkWriterGetEntireLength(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return getEndOffset(a1, a2, a3);
      }

      else
      {
        MediaDataChunkWriterGetEntireLength_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MediaDataChunkWriterGetEntireLength_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterGetEntireLength_cold_3(&v6);
    return v6;
  }
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkSize(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3 < 0)
      {
        MediaDataChunkWriterTrackSetPreferredChunkSize_cold_1(&v4);
        return v4;
      }

      else
      {
        result = 0;
        *(a2 + 72) = a3;
      }
    }

    else
    {
      MediaDataChunkWriterTrackSetPreferredChunkSize_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterTrackSetPreferredChunkSize_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkSize(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        *a3 = *(a2 + 72);
      }

      else
      {
        MediaDataChunkWriterTrackGetPreferredChunkSize_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MediaDataChunkWriterTrackGetPreferredChunkSize_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterTrackGetPreferredChunkSize_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkDuration(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (!a1)
  {
    MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_4(&time1);
    return LODWORD(time1.value);
  }

  if (!a2)
  {
    MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_3(&time1);
    return LODWORD(time1.value);
  }

  if ((a3->flags & 0x1D) != 1)
  {
    MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_1(&time1);
    return LODWORD(time1.value);
  }

  time1 = **&MEMORY[0x1E6960CC0];
  v7 = *a3;
  if (CMTimeCompare(&time1, &v7) >= 1)
  {
    MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_2(&time1);
    return LODWORD(time1.value);
  }

  result = 0;
  v6 = *&a3->value;
  *(a2 + 92) = a3->epoch;
  *(a2 + 76) = v6;
  return result;
}
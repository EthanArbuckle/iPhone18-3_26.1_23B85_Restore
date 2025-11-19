void PDFContentStreamEndTag(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (CFArrayGetCount(a1[22]))
  {
    v10 = *a1;
    v11 = *(*a1 + 600);
    if (v11 && CFArrayGetCount(v11) >= 2)
    {
      Count = CFArrayGetCount(*(v10 + 600));
      CFArrayRemoveValueAtIndex(*(v10 + 600), Count - 1);
    }

    CGCFArrayRemoveLastValue(a1[22]);
    v19 = a1[8];

    PDFWriterPrintf(v19, "EMC", v13, v14, v15, v16, v17, v18, a9);
  }
}

void PDFContentStreamSetRedactionPath(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 200);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 200) = cf;
  }
}

void PDFContentStreamBegin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    PDFDocumentBeginObject(*a1, *(a1 + 8), a3, a4, a5, a6, a7, a8);
    PDFDocumentPrintf(*a1, "<<", v10, v11, v12, v13, v14, v15, v23);
    v22 = *a1;
    if (*(*a1 + 73) == 1)
    {

      PDFDocumentPrintf(v22, "/Filter /FlateDecode", v16, v17, v18, v19, v20, v21, a9);
    }
  }
}

void PDFContentStreamBeginData(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    a1[4] = Mutable;
    Encryptor = CGDataConsumerCreateWithCFData(Mutable);
    a1[5] = Encryptor;
    a1[3] = Encryptor;
    v13 = *a1;
    v14 = *(*a1 + 56);
    if (v14)
    {
      Encryptor = PDFSecurityHandlerCreateEncryptor(v14, Encryptor, a1[1]);
      a1[7] = Encryptor;
      a1[3] = Encryptor;
      v13 = *a1;
    }

    if (*(v13 + 73) == 1)
    {
      Encryptor = CGDataConsumerCreateFlateEncoder(Encryptor);
      a1[6] = Encryptor;
      a1[3] = Encryptor;
    }

    v15 = PDFWriterCreate(Encryptor);
    a1[8] = v15;
    v16 = *a1;
    v17 = malloc_type_calloc(1uLL, 0x108uLL, 0x1060040267ABF3BuLL);
    __CFSetLastAllocationEventName();
    if (v17)
    {
      *v17 = 1;
      v17[1] = v16;
      v17[2] = v15;
      v24 = *(v16 + 440);
      if (!v24)
      {
        v24 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
        __CFSetLastAllocationEventName();
        if (v24)
        {
          *v24 = v16;
        }

        *(v16 + 440) = v24;
      }

      v25 = a1[14];
      v17[3] = v24;
      v17[4] = v25;
      v17[5] = CFArrayCreateMutable(v10, 0, 0);
      gstate_init(v17);
    }

    a1[13] = v17;
    v26 = a1[8];

    PDFWriterPrintf(v26, "q", v18, v19, v20, v21, v22, v23, a9);
  }
}

uint64_t PDFContentStreamEndData(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    PDFWriterPrintf(*(result + 64), "Q", a3, a4, a5, a6, a7, a8, v10);
    CGDataConsumerClose(v8[6]);
    result = CGDataConsumerClose(v8[7]);
    v9 = v8[3];
    if (v9)
    {
      v9 = *(v9 + 40);
    }

    v8[2] = v9;
  }

  return result;
}

CFDataRef *PDFContentStreamEnd(CFDataRef *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = *(*result + 3);
    Length = CFDataGetLength(result[4]);
    PDFDocumentPrintf(v2, "/Length %O", v5, v6, v7, v8, v9, v10, Length);
    PDFDocumentPrintf(*v1, ">>\n", v11, v12, v13, v14, v15, v16, v45);
    PDFDocumentPrintf(*v1, "stream\n", v17, v18, v19, v20, v21, v22, v46);
    BytePtr = CFDataGetBytePtr(v1[4]);
    v24 = CFDataGetLength(v1[4]);
    CGDataConsumerPutBytes(v3, BytePtr, v24);
    PDFDocumentPrintf(*v1, "\n", v25, v26, v27, v28, v29, v30, v47);
    PDFDocumentPrintf(*v1, "endstream\n", v31, v32, v33, v34, v35, v36, v48);
    v44 = *v1;

    return PDFDocumentEndObject(v44, v37, v38, v39, v40, v41, v42, v43);
  }

  return result;
}

void PDFContentStreamDrawImage(const __CFArray **a1, uint64_t a2, CGImageRef cf, double a4, double a5, double a6, double a7)
{
  if (!a1 || !cf)
  {
    return;
  }

  v8 = a2;
  v9 = a1;
  v10 = a1[25];
  if (!v10 || (v11 = *(a2 + 40), *&transform.a = *(a2 + 24), *&transform.c = v11, *&transform.tx = *(a2 + 56), v147 = CGRectApplyAffineTransform(*&a4, &transform), width = v147.size.width, height = v147.size.height, x = v147.origin.x, bytesPerRow = v147.origin.y, (CGPathIntersectsRect(v10, v147.origin.x, v147.origin.y, v147.size.width, v147.size.height) & 1) == 0))
  {
    CFRetain(cf);
    Image = cf;
    goto LABEL_17;
  }

  v14 = CGBitmapContextCreateForFlatteningImage(cf, 0, 0);
  v15 = *(cf + 5);
  v16 = *(cf + 6);
  v148.origin.x = 0.0;
  v148.origin.y = 0.0;
  v148.size.width = v15;
  v148.size.height = v16;
  CGContextDrawImage(v14, v148, cf);
  transform.a = v15 / width;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = v16 / height;
  *&transform.tx = vmlsq_lane_f64(vmlsq_lane_f64(0, COERCE_UNSIGNED_INT64(v15 / width), x, 0), *&transform.c, bytesPerRow, 0);
  v17 = CGPathCreateMutableCopyByTransformingPath(v10, &transform);
  CGContextSetRGBFillColor(v14, 0.0, 0.0, 0.0, 1.0);
  CGContextAddPath(v14, v17);
  CGContextDrawPath(v14, kCGPathFill);
  Image = CGBitmapContextCreateImage(v14);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (Image)
  {
    if (Image != cf)
    {
      LastValue = CGCFArrayGetLastValue(v9[22]);
      transform.a = 0.0;
      if (LastValue)
      {
        if (CFNumberGetValue(LastValue, kCFNumberSInt64Type, &transform))
        {
          v20 = *(*v9 + 320);
          if (v20)
          {
            v21 = vcnt_s8(v20);
            v21.i16[0] = vaddlv_u8(v21);
            if (v21.u32[0] > 1uLL)
            {
              a = transform.a;
              if (*&transform.a >= *&v20)
              {
                *&a = *&transform.a % *&v20;
              }
            }

            else
            {
              *&a = (*&v20 - 1) & *&transform.a;
            }

            v128 = *(*(*v9 + 39) + 8 * *&a);
            if (v128)
            {
              for (i = *v128; i; i = *i)
              {
                v130 = i[1];
                if (v130 == *&transform.a)
                {
                  if (i[2] == *&transform.a)
                  {
                    goto LABEL_17;
                  }
                }

                else
                {
                  if (v21.u32[0] > 1uLL)
                  {
                    if (v130 >= *&v20)
                    {
                      v130 %= *&v20;
                    }
                  }

                  else
                  {
                    v130 &= *&v20 - 1;
                  }

                  if (v130 != *&a)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }
      }
    }

LABEL_17:
    v23 = *(*(v8 + 120) + 4);
    if ((*(Image + 39) & 2) != 0)
    {
      if (*(Image + 7) == 1)
      {
        v24 = PDFDocumentAddImage(*v9, Image, *(*(v8 + 120) + 4));
        v25 = 1;
LABEL_44:
        v56 = v9[14];
        *(v56 + 6) |= 0x1Cu;
        v57 = *(v56 + 8);
        if (!v57)
        {
          v57 = CGOrderedSetCreate();
          *(v56 + 8) = v57;
        }

        CGOrderedSetAddValue(v57, v24);
        v58 = *(v56 + 1);
        v59 = *(v58 + 632);
        if (v59)
        {
          v60 = v24[2];
          if (v60)
          {
            v60 = *(v60 + 8);
          }

          if (*(v59 + 16) == 1 && !*(v59 + 32))
          {
            *(v59 + 32) = v60;
            v61 = *(v58 + 640);
            *(v58 + 640) = v61 + 1;
            *(v59 + 40) = v61;
          }

          else
          {
            v61 = -1;
          }

          v24[13] = v61;
        }

        v62 = v9[8];
        v63 = v9[13];
        PDFGStateSetClipStack(v63, *(v8 + 112));
        v70 = *(v8 + 120);
        v71 = *(v70 + 4);
        if (((v71 >> 20) & 0xF) != 0)
        {
          v72 = v71 << 8;
        }

        else
        {
          v72 = v71 << 12;
        }

        if (v72 >> 28)
        {
          v73 = v72 >> 28;
        }

        else
        {
          v73 = 2;
        }

        if (*(v63 + 80) != v73)
        {
          *(v63 + 80) = v73;
          addEmitFunction(v63, emitRenderingIntentChange);
          v70 = *(v8 + 120);
        }

        v74 = *(v70 + 8);
        if (v25)
        {
          FillColor = CGGStateGetFillColor(v8);
          PDFGStateSetFillColor(v63, FillColor);
          v76 = *(v9 + 17);
          *&transform.a = *(v9 + 15);
          *&transform.c = v76;
          *&transform.tx = *(v9 + 19);
          PDFGStateSetPatternMatrix(v63, &transform, v77, v78, v79, v80, v81, v82, *(*(v8 + 120) + 24), *(*(v8 + 120) + 32));
          v84 = *(*(v8 + 144) + 16);
          if (*(v63 + 224) != v84)
          {
            *(v63 + 224) = v84;
            addEmitFunction(v63, emitSmoothnessChange);
          }

          if (FillColor)
          {
            if ((FillColor & 0x8000000000000000) != 0)
            {
              Alpha = CGTaggedColorGetAlpha(FillColor, v83, v64, v65, v66, v67, v68, v69);
            }

            else
            {
              Alpha = *(FillColor + 8 * *(FillColor + 56) + 64);
            }
          }

          else
          {
            Alpha = 0.0;
          }

          v74 = v74 * Alpha;
        }

        if (*(v63 + 168) != v74)
        {
          *(v63 + 168) = v74;
          addEmitFunction(v63, emitNonStrokeAlphaChange);
        }

        v86 = *(v8 + 144);
        v87 = *(v86 + 24);
        if (*(v63 + 200) != v87)
        {
          *(v63 + 200) = v87;
          addEmitFunction(v63, emitNonStrokeOverprintChange);
          v86 = *(v8 + 144);
        }

        PDFGStateSetOverprintMode(v63, *(v86 + 28), v64, v65, v66, v67, v68, v69);
        PDFGStateSetBlackGeneration(v63, *(*(v8 + 144) + 32));
        PDFGStateSetUndercolorRemoval(v63, *(*(v8 + 144) + 40));
        PDFGStateSetStyle(v63, *(*(v8 + 120) + 16));
        PDFGStateSetSoftMask(v63, *(*(v8 + 120) + 40));
        v94 = (*(*(v8 + 120) + 4) << 16) >> 24;
        if ((v94 - 13) >= 0xF)
        {
          v94 = 2;
        }

        if (*(v63 + 248) != v94)
        {
          *(v63 + 248) = v94;
          addEmitFunction(v63, emitBlendModeChange);
        }

        PDFWriterAnnotate(v62, "  BEGIN: synchronizing gstate.", v88, v89, v90, v91, v92, v93, decode);
        PDFGStateEmit(v63);
        PDFWriterAnnotate(v62, "  END: synchronizing gstate.", v95, v96, v97, v98, v99, v100, decodea);
        PDFWriterAnnotate(v62, "%s: BEGIN: drawing %s.", v101, v102, v103, v104, v105, v106, "PDFWriteImage");
        v113 = *(v8 + 40);
        *&transform.a = *(v8 + 24);
        *&transform.c = v113;
        *&transform.tx = *(v8 + 56);
        *&transform.tx = vmlaq_n_f64(vmlaq_n_f64(*&transform.tx, *&transform.a, a4), v113, a5);
        v114 = vmulq_n_f64(*&transform.a, a6);
        v115 = vmulq_n_f64(v113, a7);
        *&transform.a = v114;
        *&transform.c = v115;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v114, xmmword_18439C630), vceqq_f64(v115, xmmword_18439C780))))) & 1) == 0 && transform.tx == 0.0 && transform.ty == 0.0)
        {
          PDFWriterPrintf(v62, "/%N Do", v107, v108, v109, v110, v111, v112, (v24 + 3));
        }

        else if (-v114.f64[1] * v115.f64[0] + v114.f64[0] * v115.f64[1] != 0.0)
        {
          PDFWriterPrintf(v62, "q %*m cm", v107, v108, v109, v110, v111, v112, &transform);
          PDFWriterPrintf(v62, "/%N Do", v116, v117, v118, v119, v120, v121, (v24 + 3));
          PDFWriterPrintf(v62, "Q", v122, v123, v124, v125, v126, v127, decodeb);
        }

        PDFWriterAnnotate(v62, "%s: END: drawing %s.", v107, v108, v109, v110, v111, v112, "PDFWriteImage");
        CFRelease(Image);
        return;
      }

      NumberOfComponents = CGGStateGetFillColor(v8);
      v34 = NumberOfComponents;
      v136 = v8;
      v137 = v9;
      v139 = v23;
      if (NumberOfComponents)
      {
        if (NumberOfComponents < 0)
        {
          NumberOfComponents = CGTaggedColorGetNumberOfComponents(NumberOfComponents, v27, v28, v29, v30, v31, v32, v33);
        }

        else
        {
          NumberOfComponents = *(NumberOfComponents + 56);
        }
      }

      v35 = NumberOfComponents - 1;
      v36 = *(Image + 5);
      v37 = *(Image + 6);
      bytesPerRowa = (NumberOfComponents - 1) * v36;
      v134 = bytesPerRowa * v37;
      v135 = Image;
      v38 = malloc_type_malloc(bytesPerRowa * v37, 0xCC251E8uLL);
      if (v37)
      {
        for (j = 0; j != v37; ++j)
        {
          if (v36)
          {
            v40 = 0;
            v41 = &v38[j * bytesPerRowa];
            do
            {
              if (v35)
              {
                v42 = 0;
                v43 = v35;
                do
                {
                  *v41++ = (CGColorGetComponents(v34)[v42++] * 255.0 + 0.5);
                  --v43;
                }

                while (v43);
              }

              ++v40;
            }

            while (v40 != v36);
          }
        }
      }

      check_clients_buffer("CGDataProviderCreateWithData", v38, v134);
      v51 = CGDataProviderCreateWithDataInternal(0, v38, v134, release_data, 0);
      if (v34)
      {
        v9 = v137;
        v52 = v139;
        if ((v34 & 0x8000000000000000) != 0)
        {
          ColorSpace = CGTaggedColorGetColorSpace(v34, v44, v45, v46, v47, v48, v49, v50);
        }

        else
        {
          ColorSpace = *(v34 + 24);
        }
      }

      else
      {
        ColorSpace = 0;
        v9 = v137;
        v52 = v139;
      }

      v54 = CGImageCreate(v36, v37, 8uLL, 8 * v35, bytesPerRowa, ColorSpace, 0, v51, 0, 1, kCGRenderingIntentDefault);
      CGDataProviderRelease(v51);
      Image = v135;
      v55 = CGImageCreateWithMaskAndMatte(v54, v135, 0);
      if (v54)
      {
        CFRelease(v54);
      }

      v24 = PDFDocumentAddImage(*v9, v55, v52);
      v8 = v136;
      if (v55)
      {
        CFRelease(v55);
      }
    }

    else
    {
      v24 = PDFDocumentAddImage(*v9, Image, *(*(v8 + 120) + 4));
    }

    v25 = 0;
    goto LABEL_44;
  }
}

void PDFContentStreamDrawGlyphs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, unint64_t a6, __n128 a7)
{
  v212 = a5;
  v211 = a4;
  v213 = a3;
  v226 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1EEE9AC00](2 * a6, a7);
  v215 = &v211 - v13;
  if ((v12 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000102)
  {
    malloc_type_malloc(v10, 0x87F0E7C6uLL);
  }

  v14 = MEMORY[0x1EEE9AC00](16 * a6, v11);
  v24 = v210.f64 - v23 + 1;
  v214 = v210.f64 - v23 + 1;
  if (v21 > 0xFFFFFFFFFFFFFFELL)
  {
    v24 = 0;
  }

  v216 = v22;
  if (v21 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000102)
  {
    v217 = malloc_type_malloc(v14, 0x16328146uLL);
  }

  else
  {
    v217 = v24;
  }

  v25 = *(a1 + 200);
  v26 = a6;
  if (v25)
  {
    v26 = 0;
    v28 = *v213;
    v27 = v213[1];
    v29 = v213[2].f64[1];
    v218 = v213[2].f64[0];
    v30 = v28.f64[1];
    v222 = v27;
    v31 = v27.f64[1];
    v32 = v211;
    v33 = v212;
    v34 = a6;
    v221 = v28;
    do
    {
      v36 = *v33;
      v35 = v33[1];
      glyphs = *v32;
      v37 = *(*(a2 + 136) + 8);
      font_info = get_font_info(v37);
      if (font_info)
      {
        v39 = font_info[2];
      }

      else
      {
        v39 = 0.0;
      }

      v40 = *(*(a2 + 136) + 16) / v39;
      v220 = vmulq_n_f64(v222, v40);
      v219 = vmulq_n_f64(v221, v40);
      memset(&bboxes, 0, 32);
      GlyphBBoxes = CGFontGetGlyphBBoxes(v37, &glyphs, 1uLL, &bboxes);
      v42 = v35 * v222.f64[0];
      v43 = v35 * v31;
      if (GlyphBBoxes)
      {
        v44 = v218 + v42 + v221.f64[0] * v36;
        v228.origin.x = bboxes.a;
        v228.origin.y = bboxes.b;
        v228.size.width = bboxes.c;
        v228.size.height = bboxes.d;
        *&v225.a = v219;
        *&v225.c = v220;
        v225.tx = 0.0;
        v225.ty = 0.0;
        v229 = CGRectApplyAffineTransform(v228, &v225);
        v230 = CGRectOffset(v229, v44, v29 + v43 + v30 * v36);
      }

      else
      {
        v231.origin.x = -v39;
        v231.size.width = v39 + v39;
        *&v225.a = v219;
        *&v225.c = v220;
        v225.tx = 0.0;
        v225.ty = 0.0;
        v231.origin.y = -v39;
        v231.size.height = v39 + v39;
        v232 = CGRectApplyAffineTransform(v231, &v225);
        v234 = CGRectOffset(v232, v218 + v42 + v221.f64[0] * v36, v29 + v43 + v30 * v36);
        v230 = CGRectUnion(v234, v234);
      }

      v45 = *(a2 + 40);
      *&v225.a = *(a2 + 24);
      *&v225.c = v45;
      *&v225.tx = *(a2 + 56);
      v233 = CGRectApplyAffineTransform(v230, &v225);
      x = v233.origin.x;
      y = v233.origin.y;
      if ((CGPathIntersectsRect(v25, v233.origin.x, v233.origin.y, v233.size.width, v233.size.height) & 1) == 0)
      {
        v227.x = x;
        v227.y = y;
        if (!CGPathContainsPoint(v25, 0, v227, 0))
        {
          *&v216[2 * v26] = *v32;
          *&v217[16 * v26++] = *v33;
        }
      }

      v33 += 2;
      ++v32;
      --v34;
    }

    while (v34);
  }

  if (!v26)
  {
    goto LABEL_31;
  }

  v48 = *(*(a2 + 136) + 1);
  if (*(a1 + 169))
  {
    v48 = 3;
  }

  if (v48 >= 8)
  {
LABEL_31:
    v63 = v217;
    if (v216 != v215)
    {
      free(v216);
    }

    if (v63 != v214)
    {
      free(v63);
    }

    return;
  }

  v49 = dword_184564550[v48];
  v50 = *(a1 + 64);
  *&v210.f64[1] = off_1E6E33200[v48];
  PDFWriterAnnotate(v50, "%s: BEGIN: %s", v15, v16, v17, v18, v19, v20, "PDFContentStreamDrawGlyphs");
  PDFGStateSetClipStack(*(a1 + 104), *(a2 + 112));
  if (*(a1 + 169))
  {
    v57 = 3;
  }

  else
  {
    v57 = v49;
  }

  if ((v57 & 1) == 0)
  {
    v58 = *(*(a2 + 120) + 8);
    FillColor = CGGStateGetFillColor(a2);
    PDFGStateSetFillColor(*(a1 + 104), FillColor);
    v61 = *(a1 + 104);
    if (FillColor)
    {
      if ((FillColor & 0x8000000000000000) != 0)
      {
        Alpha = CGTaggedColorGetAlpha(FillColor, v60, v51, v52, v53, v54, v55, v56);
      }

      else
      {
        Alpha = *(FillColor + 8 * *(FillColor + 56) + 64);
      }
    }

    else
    {
      Alpha = 0.0;
    }

    v64 = v58 * Alpha;
    if (*(v61 + 168) != v64)
    {
      *(v61 + 168) = v64;
      addEmitFunction(v61, emitNonStrokeAlphaChange);
    }

    v65 = *(a1 + 104);
    v66 = *(*(a2 + 144) + 24);
    if (*(v65 + 200) != v66)
    {
      *(v65 + 200) = v66;
      addEmitFunction(v65, emitNonStrokeOverprintChange);
    }
  }

  if ((v57 - 1) <= 1)
  {
    v67 = *(*(a2 + 120) + 8);
    StrokeColor = CGGStateGetStrokeColor(a2);
    PDFGStateSetStrokeColor(*(a1 + 104), StrokeColor);
    v76 = *(a1 + 104);
    if (StrokeColor)
    {
      if ((StrokeColor & 0x8000000000000000) != 0)
      {
        v77 = CGTaggedColorGetAlpha(StrokeColor, v69, v70, v71, v72, v73, v74, v75);
      }

      else
      {
        v77 = *(StrokeColor + 8 * *(StrokeColor + 56) + 64);
      }
    }

    else
    {
      v77 = 0.0;
    }

    v79 = v67 * v77;
    if (*(v76 + 176) != v79)
    {
      *(v76 + 176) = v79;
      addEmitFunction(v76, emitStrokeAlphaChange);
    }

    PDFGStateSetStrokeOverprint(*(a1 + 104), *(*(a2 + 144) + 25));
    v80 = *(a1 + 104);
    v81 = *(a2 + 128);
    v82 = *(v81 + 8);
    if (v82 == -1.0905473e16)
    {
      v82 = 0.0;
    }

    if (*(v80 + 48) != v82)
    {
      *(v80 + 48) = v82;
      addEmitFunction(v80, emitLineWidthChange);
      v80 = *(a1 + 104);
      v81 = *(a2 + 128);
    }

    v83 = *(v81 + 2);
    if (*(v80 + 56) != v83)
    {
      *(v80 + 56) = v83;
      addEmitFunction(v80, emitLineCapChange);
      v80 = *(a1 + 104);
      v81 = *(a2 + 128);
      v83 = *(v81 + 2);
    }

    if (*(v80 + 60) != v83 >> 8)
    {
      *(v80 + 60) = v83 >> 8;
      addEmitFunction(v80, emitLineJoinChange);
      v80 = *(a1 + 104);
      v81 = *(a2 + 128);
    }

    v84 = *(v81 + 16);
    if (*(v80 + 64) != v84)
    {
      *(v80 + 64) = v84;
      addEmitFunction(v80, emitMiterLimitChange);
      v80 = *(a1 + 104);
      v81 = *(a2 + 128);
    }

    PDFGStateSetLineDash(v80, *(v81 + 32));
    v78 = *(a1 + 104);
    goto LABEL_63;
  }

  v78 = *(a1 + 104);
  if (v57 != 3)
  {
LABEL_63:
    v85 = *(*(a2 + 144) + 8);
    if (*(v78 + 88) != v85)
    {
      *(v78 + 88) = v85;
      addEmitFunction(v78, emitFlatnessChange);
      v78 = *(a1 + 104);
    }

    v86 = *(*(a2 + 128) + 1);
    if (*(v78 + 96) != v86)
    {
      *(v78 + 96) = v86;
      addEmitFunction(v78, emitStrokeAdjustChange);
      v78 = *(a1 + 104);
    }

    v87 = *(a2 + 120);
    v88 = *(v87 + 4);
    if ((v88 & 0xF0000) != 0)
    {
      v89 = v88 << 12 >> 28;
    }

    else
    {
      v89 = 2;
    }

    if (*(v78 + 80) != v89)
    {
      *(v78 + 80) = v89;
      addEmitFunction(v78, emitRenderingIntentChange);
      v78 = *(a1 + 104);
      v87 = *(a2 + 120);
    }

    v90 = *(v87 + 24);
    v91 = *(v87 + 32);
    v92 = *(a1 + 136);
    *&v225.a = *(a1 + 120);
    *&v225.c = v92;
    *&v225.tx = *(a1 + 152);
    PDFGStateSetPatternMatrix(v78, &v225, v51, v52, v53, v54, v55, v56, v90, v91);
    v99 = *(a1 + 104);
    v100 = *(a2 + 144);
    v101 = *(v100 + 16);
    if (*(v99 + 224) != v101)
    {
      *(v99 + 224) = v101;
      addEmitFunction(v99, emitSmoothnessChange);
      v99 = *(a1 + 104);
      v100 = *(a2 + 144);
    }

    PDFGStateSetOverprintMode(v99, *(v100 + 28), v93, v94, v95, v96, v97, v98);
    PDFGStateSetBlackGeneration(*(a1 + 104), *(*(a2 + 144) + 32));
    PDFGStateSetUndercolorRemoval(*(a1 + 104), *(*(a2 + 144) + 40));
    PDFGStateSetStyle(*(a1 + 104), *(*(a2 + 120) + 16));
    PDFGStateSetSoftMask(*(a1 + 104), *(*(a2 + 120) + 40));
    v78 = *(a1 + 104);
    v102 = (*(*(a2 + 120) + 4) << 16) >> 24;
    if ((v102 - 13) >= 0xF)
    {
      v102 = 2;
    }

    if (*(v78 + 248) != v102)
    {
      *(v78 + 248) = v102;
      addEmitFunction(v78, emitBlendModeChange);
      v78 = *(a1 + 104);
    }

    if (*(v78 + 184) == v57)
    {
      goto LABEL_81;
    }

    *(v78 + 184) = v57;
    goto LABEL_80;
  }

  if (*(v78 + 184) != 3)
  {
    *(v78 + 184) = 3;
LABEL_80:
    addEmitFunction(v78, emitTextDrawingModeChange);
  }

LABEL_81:
  PDFWriterAnnotate(*(a1 + 64), "  BEGIN: synchronizing gstate.", v51, v52, v53, v54, v55, v56, v211);
  PDFGStateEmit(*(a1 + 104));
  PDFWriterAnnotate(*(a1 + 64), "  END: synchronizing gstate.", v103, v104, v105, v106, v107, v108, v211);
  v109 = PDFDocumentAddFont(*a1, *(*(a2 + 136) + 8));
  v110 = v109;
  if (*(a1 + 169) == 1)
  {
    *(v109 + 56) = 1;
  }

  v111 = *(a1 + 112);
  if (v111 && v109)
  {
    *(v111 + 24) |= 2u;
    v112 = *(v111 + 48);
    if (!v112)
    {
      v112 = CGOrderedSetCreate();
      *(v111 + 48) = v112;
    }

    CGOrderedSetAddValue(v112, v110);
  }

  v113 = *a1;
  v114 = *(a1 + 64);
  v115 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004003B7C86CuLL);
  __CFSetLastAllocationEventName();
  *v115 = 1;
  v115[1] = v113;
  v115[2] = v114;
  v115[9] = 0;
  v116 = *(a2 + 24);
  v117 = *(a2 + 40);
  *(v115 + 7) = *(a2 + 56);
  *(v115 + 5) = v117;
  *(v115 + 3) = v116;
  if (v26 >= a6)
  {
    v118 = v211;
    v119 = v212;
    v120 = a6;
  }

  else
  {
    v118 = v216;
    v119 = v217;
    v120 = v26;
  }

  PDFTextLayoutAddGlyphsWithPositions(v115, *(*(a2 + 136) + 8), v213, v118, v119, v120, *(*(a2 + 136) + 16));
  v128 = v115[10];
  if (v128)
  {
    v129 = 0;
    do
    {
      v130 = v128;
      v128 = *v128;
      *v130 = v129;
      v129 = v130;
    }

    while (v128);
    v115[10] = 0;
    v131 = v130;
    do
    {
      v132 = v131[1];
      layout_flush_block(v115, v132, v127);
      if (v132)
      {
        v133 = *(v132 + 24);
        if (v133)
        {
          CFRelease(v133);
        }

        free(*(v132 + 8));
        free(*(v132 + 16));
        free(v132);
      }

      v131 = *v131;
    }

    while (v131);
    do
    {
      v134 = *v130;
      free(v130);
      v130 = v134;
    }

    while (v134);
  }

  v135 = v115[2];
  PDFWriterAnnotate(v135, "BEGIN: begin text object.", v121, v122, v123, v124, v125, v126, v211);
  if (*(v115 + 3) == 1.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v115 + 2)), vceqq_f64(*(v115 + 3), xmmword_18439C630))))) & 1) == 0 && *(v115 + 8) == 0.0)
  {
    v142 = 1;
  }

  else
  {
    PDFWriterPrintf(v135, "q %*m cm", v136, v137, v138, v139, v140, v141, (v115 + 3));
    v142 = 0;
  }

  PDFWriterPrintf(v135, "BT", v136, v137, v138, v139, v140, v141, v211);
  v149 = v115[9];
  if (v149)
  {
    LODWORD(v222.f64[0]) = v142;
    v150 = 0;
    do
    {
      v151 = v149;
      v149 = *v149;
      *v151 = v150;
      v150 = v151;
    }

    while (v149);
    v152 = 0;
    v115[9] = v151;
    v153 = 0.0;
    while (1)
    {
      v154 = v151[1];
      if (v154[9])
      {
        break;
      }

LABEL_143:
      v151 = *v151;
      if (!v151)
      {
        LOBYTE(v142) = LOBYTE(v222.f64[0]);
        if (v153 == 0.0)
        {
          v186 = 0;
        }

        else
        {
          v186 = LODWORD(v222.f64[0]);
        }

        if (v186 == 1)
        {
          PDFWriterPrintf(v135, "0 Tc", v143, v144, v145, v146, v147, v148, v211);
        }

        goto LABEL_149;
      }
    }

    if (*(v154 + 8) != v153)
    {
      PDFWriterPrintf(v135, "%f Tc", v143, v144, v145, v146, v147, v148, v154[8]);
      v153 = *(v154 + 8);
    }

    if (v152)
    {
      v155 = v152[7];
      v156 = v154[7];
      if (v155 && v156)
      {
        bboxes = *v155;
        CGAffineTransformInvert(&v225, &bboxes);
        v157 = vmlaq_n_f64(vmulq_n_f64(*&v225.c, v156[1]), *&v225.a, *v156);
        v158 = vmlaq_n_f64(vmulq_n_f64(*&v225.c, v156[3]), *&v225.a, v156[2]);
        v159 = fabs(v157.f64[1]);
        v160 = fabs(v158.f64[0]);
        v162 = fabs(v157.f64[0] + -1.0) > 0.00000596046448 || v159 > 0.00000596046448 || v160 > 0.00000596046448;
        v163 = fabs(v158.f64[1] + -1.0);
        if (!v162 && v163 <= 0.00000596046448)
        {
          v210 = vaddq_f64(*&v225.tx, vmlaq_n_f64(vmulq_n_f64(*&v225.c, v156[5]), *&v225.a, v156[4]));
          v165 = v135;
          v166 = "%f %f Td";
LABEL_130:
          PDFWriterPrintf(v165, v166, v143, v144, v145, v146, v147, v148, *&v210.f64[0]);
LABEL_131:
          PDFWriterPrintf(v135, "/%s 1 Tf", v143, v144, v145, v146, v147, v148, *v154);
          v173 = v154[9];
          if (*v173 || (v185 = v173[1], *(v185 + 8) != 0.0))
          {
            PDFWriterPrintf(v135, "[", v167, v168, v169, v170, v171, v172, v211);
            v180 = v154[9];
            if (v180)
            {
              v181 = 0;
              do
              {
                v182 = v180;
                v180 = *v180;
                *v182 = v181;
                v181 = v182;
              }

              while (v180);
              v154[9] = v182;
              do
              {
                v183 = v182[1];
                emit_sequence(v135, v183, v174, v175, v176, v177, v178, v179);
                if (*(v183 + 8) != 0.0)
                {
                  PDFWriterPrintf(v135, "%f", v174, v175, v176, v177, v178, v179, *(v183 + 8));
                }

                v182 = *v182;
              }

              while (v182);
            }

            v184 = "] TJ";
          }

          else
          {
            emit_sequence(v135, v185, v167, v168, v169, v170, v171, v172);
            v184 = "Tj";
          }

          PDFWriterPrintf(v135, v184, v174, v175, v176, v177, v178, v179, v211);
          v152 = v154;
          goto LABEL_143;
        }

LABEL_129:
        *&v210.f64[0] = v156;
        v165 = v135;
        v166 = "%*m Tm";
        goto LABEL_130;
      }
    }

    else
    {
      v156 = v154[7];
    }

    if (!v156)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

LABEL_149:
  PDFWriterPrintf(v135, "ET", v143, v144, v145, v146, v147, v148, v211);
  if ((v142 & 1) == 0)
  {
    PDFWriterPrintf(v135, "Q", v187, v188, v189, v190, v191, v192, v211);
  }

  PDFWriterAnnotate(v135, "BEGIN: end text object.", v187, v188, v189, v190, v191, v192, v211);
  v199 = atomic_fetch_add_explicit(v115, 0xFFFFFFFF, memory_order_relaxed) == 1;
  v200 = v216;
  v201 = v217;
  if (v199)
  {
    v202 = v115[9];
    if (v202)
    {
      v203 = v216;
      do
      {
        v204 = v202[1];
        v205 = v204[9];
        if (v205)
        {
          do
          {
            free(v205[1]);
            v205 = *v205;
          }

          while (v205);
          v206 = v204[9];
          if (v206)
          {
            do
            {
              v207 = *v206;
              free(v206);
              v206 = v207;
            }

            while (v207);
          }
        }

        free(v204);
        v202 = *v202;
      }

      while (v202);
      v208 = v115[9];
      v200 = v203;
      v201 = v217;
      if (v208)
      {
        do
        {
          v209 = *v208;
          free(v208);
          v208 = v209;
        }

        while (v209);
      }
    }

    free(v115);
  }

  if (v200 != v215)
  {
    free(v200);
  }

  if (v201 != v214)
  {
    free(v201);
  }

  PDFWriterAnnotate(*(a1 + 64), "%s: END", v193, v194, v195, v196, v197, v198, "PDFContentStreamDrawGlyphs");
}

void PDFContentStreamBeginTagWithMCID(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 584) != 1)
  {
    *(v5 + 584) = 2;
    StructureTree = CGPDFTaggedPagePropertiesGetStructureTree(a2);
    if (StructureTree)
    {
      v7 = StructureTree;
      theArray = 0;
      StructureElementPathForMCID(StructureTree, a3, &theArray);
      v8 = theArray;
      if (theArray)
      {
        if (CFArrayGetCount(theArray) >= 1)
        {
          if (!*(v5 + 608))
          {
            if (CFDictionaryGetCount(v7) < 1)
            {
              *(v5 + 608) = PDFDocumentCreateTagNode(v5, 0, 100, 0, 0);
            }

            else
            {
              v20 = -1;
              CGCFDictionaryGetNumber(v7, @"TagNodeMCID", kCFNumberSInt64Type, &v20);
              v19 = CGPDFTagTypeDiv;
              CGCFDictionaryGetInteger(v7, @"TagNodeType", &v19);
              Value = CFDictionaryGetValue(v7, @"TagNodeProperties");
              *(v5 + 608) = PDFDocumentCreateTagNode(v5, v20, v19, Value, 0);
              valuePtr = -1;
              CGCFDictionaryGetNumber(v7, @"TagNodeObjectRefID", kCFNumberSInt64Type, &valuePtr);
              CGCFDictionarySetNumber(*(v5 + 608), @"TagNodeObjectRefID", kCFNumberSInt64Type, &valuePtr);
              v16 = CFDictionaryGetValue(v7, @"ID");
              if (v16)
              {
                v17 = v16;
                if (CFGetTypeID(v16) == 134217984)
                {
                  CFDictionarySetValue(*(v5 + 608), @"ID", v17);
                }
              }
            }
          }

          PDFDocumentInsertStructureElementPath(v5, v8);
          CFRelease(v8);
        }
      }
    }
  }

  CGCFArrayAppendInt64(a1[22], a3);
  PDFWriterPrintf(a1[8], "/P << /MCID %d >> BDC", v9, v10, v11, v12, v13, v14, a3);
}

void PDFContentStreamBeginAccessibilitySpan(uint64_t a1, const __CFDictionary *a2)
{
  v4 = 0;
  v5 = 0;
  v23[10] = *MEMORY[0x1E69E9840];
  v22[0] = @"CGPDFTagPropertyAlternativeText";
  v22[1] = "Alt";
  v23[0] = 0;
  v23[1] = @"CGPDFTagPropertyActualText";
  v23[2] = "ActualText";
  v23[3] = 0;
  v23[4] = @"CGPDFTagPropertyLanguageText";
  v23[5] = "Lang";
  v23[6] = 0;
  v23[7] = @"CGPDFTagPropertyExpansionText";
  v23[8] = "E";
  v23[9] = 0;
LABEL_2:
  v6 = &v22[3 * v4];
  do
  {
    v21 = 0;
    v7 = *v6;
    TypeID = CFStringGetTypeID();
    if (CGCFDictionaryGetCFTypeRef(a2, v7, TypeID, &v21))
    {
      v6[2] = v21;
      ++v4;
      v5 = 1;
      if (v4 != 4)
      {
        goto LABEL_2;
      }

      goto LABEL_9;
    }

    ++v4;
    v6 += 3;
  }

  while (v4 != 4);
  if ((v5 & 1) == 0)
  {
    v15 = (a1 + 64);
    v19 = "/Span BDC";
    goto LABEL_15;
  }

LABEL_9:
  v16 = *(a1 + 64);
  v15 = (a1 + 64);
  PDFWriterPrintf(v16, "/Span <<", v9, v10, v11, v12, v13, v14, v20);
  v17 = v23;
  v18 = 4;
  v19 = ">> BDC";
  do
  {
    if (*v17)
    {
      PDFWriterPrintf(*v15, "/%s %T", v9, v10, v11, v12, v13, v14, *(v17 - 1));
    }

    v17 += 3;
    --v18;
  }

  while (v18);
LABEL_15:
  PDFWriterPrintf(*v15, v19, v9, v10, v11, v12, v13, v14, v20);
}

uint64_t CGGStateRetain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 16), 1u, memory_order_relaxed);
  }

  return result;
}

__n128 CGGStateSetCTM(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 24) = result;
  return result;
}

char *__handle_invalid_context_block_invoke()
{
  result = getenv("CG_CONTEXT_SHOW_BACKTRACE");
  handle_invalid_context_show_log = result != 0;
  return result;
}

char *__handle_invalid_numerics_block_invoke()
{
  result = getenv("CG_NUMERICS_SHOW_BACKTRACE");
  handle_invalid_numerics_show_log = result != 0;
  return result;
}

uint64_t __CGColorDataConverterGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorDataConverterGetTypeID_runtime_class);
  CGColorDataConverterGetTypeID_id = result;
  return result;
}

uint64_t converter_retain_count(uint64_t a1, atomic_uint *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case -1:
      if (atomic_fetch_add_explicit(a2 + 4, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        converter_provider_finalize(a2, a2, a3, a4, a5, a6, a7, a8);
        v10 = CFGetAllocator(a2);
        CFAllocatorDeallocate(v10, a2);
      }

      break;
    case 0:
      return a2[4];
    case 1:
      return atomic_fetch_add_explicit(a2 + 4, 1u, memory_order_relaxed) + 1;
  }

  return 0;
}

uint64_t converter_provider_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16))
  {
    _CGHandleAssert("converter_provider_finalize", 61, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGConvertColorDataWithFormat.c", "CGAtomicGet(&converter->retain_count) == 0", "retain count %d", a6, a7, a8, *(a1 + 16));
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    CGAccessSessionRelease(v9);
  }

  return pthread_mutex_destroy((a1 + 24));
}

CFStringRef converter_copy_format_description_20243(uint64_t a1)
{
  v1 = *(a1 + 88);
  v4 = *(a1 + 16);
  v5 = 0;
  asprintf(&v5, "CGColorDataConverterRef: %p session: %p retain count: %d\n", a1, v1, v4);
  v2 = CFStringCreateWithFormat(0, 0, @"%s\n%@", v5, &stru_1EF244DC0);
  free(v5);
  return v2;
}

BOOL CGConvertColorDataWithFormat(size_t width, size_t height, void *dst_data, CGColorDataFormat *dst_format, void *src_data, CGColorDataFormat *src_format, CFDictionaryRef options)
{
  v7 = *&dst_format->bitmap_info;
  v12[0] = *&dst_format->version;
  v12[1] = v7;
  v12[2] = *&dst_format->bytes_per_row;
  decode = dst_format->decode;
  v8 = *&src_format->bitmap_info;
  v10[0] = *&src_format->version;
  v10[1] = v8;
  v10[2] = *&src_format->bytes_per_row;
  v11 = src_format->decode;
  return convert_color_data_with_format(0, width, height, dst_data, v12, src_data, v10, options);
}

BOOL convert_color_data_with_format(uint64_t *a1, vImagePixelCount a2, CGDataProvider *a3, char *a4, uint64_t a5, const void *a6, uint64_t a7, const __CFDictionary *a8)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a1 && (v16 = *a1) != 0)
  {
    pthread_mutex_lock((v16 + 24));
    v17 = *(v16 + 88);
    v18 = *(v16 + 96);
    v19 = *(v16 + 104);
    v20 = *(a5 + 16);
    __src[0] = *a5;
    __src[1] = v20;
    __src[2] = *(a5 + 32);
    *&__src[3] = *(a5 + 48);
    v21 = *(a7 + 16);
    v71[0] = *a7;
    v71[1] = v21;
    v71[2] = *(a7 + 32);
    *&v71[3] = *(a7 + 48);
    converted_data = session_get_converted_data(v17, a2, a3, a4, __src, v18, v71, v19);
    pthread_mutex_unlock((v16 + 24));
  }

  else
  {
    v23 = *(a7 + 16);
    __src[0] = *a7;
    __src[1] = v23;
    __src[2] = *(a7 + 32);
    *&__src[3] = *(a7 + 48);
    v24 = bits_per_pixel_from_format(__src) * a2 + 7;
    v25 = v24 >> 3;
    if (*(a7 + 32))
    {
      v25 = *(a7 + 32);
    }

    v26 = v25 * (a3 - 1) + (v24 >> 3);
    check_clients_buffer("CGDataProviderCreateWithData", a6, v26);
    v27 = CGDataProviderCreateWithDataInternal(0, a6, v26, 0, 0);
    if (v27)
    {
      v28 = v27;
      v69 = a4;
      v29 = colorspace_from_info(*(a5 + 8));
      v30 = colorspace_from_info(*(a7 + 8));
      ResolvedOptions = CGColorConversionInfoCreateResolvedOptions(v30, *(a7 + 16), a8);
      if (!a8 || ResolvedOptions)
      {
        cf = ResolvedOptions;
        v32 = color_transform_create(v29, ResolvedOptions);
        if (v32)
        {
          v67 = v32;
          memset(__src, 0, sizeof(__src));
          v33 = *(a5 + 16);
          v34 = *(a5 + 24);
          v35 = component_from_format(v33, v34);
          if (v29)
          {
            v36 = *(*(v29 + 3) + 48);
          }

          else
          {
            v36 = 0;
          }

          CGBitmapPixelInfoInitialize(__src, __src, v35, v34, v36, v33 & 0x1F, v33 & 0x7000, v33 & 0xF0000, *(a5 + 48));
          memset(v71, 0, sizeof(v71));
          v37 = *(a7 + 16);
          v38 = *(a7 + 24);
          v39 = component_from_format(v37, v38);
          if (v30)
          {
            v40 = *(*(v30 + 3) + 48);
          }

          else
          {
            v40 = 0;
          }

          CGBitmapPixelInfoInitialize(v71, v71, v39, v38, v40, v37 & 0x1F, v37 & 0x7000, v37 & 0xF0000, *(a7 + 48));
          v41 = *(a5 + 32);
          v42 = *(a7 + 32);
          v43 = *(a7 + 40);
          memcpy(__dst, __src, sizeof(__dst));
          memcpy(v70, v71, sizeof(v70));
          v44 = CGDataProviderCreateForDestination(v67, a2, a3, __dst, v41, v28, v30, v70, v42, v43);
          if (v44)
          {
            v45 = v44;
            v46 = CGAccessSessionCreate(v44);
            v47 = *(a7 + 16);
            __dst[0] = *a7;
            __dst[1] = v47;
            __dst[2] = *(a7 + 32);
            __dst[3].__sig = *(a7 + 48);
            v48 = bits_per_pixel_from_format(__dst);
            v49 = *(a5 + 16);
            __dst[0] = *a5;
            __dst[1] = v49;
            __dst[2] = *(a5 + 32);
            __dst[3].__sig = *(a5 + 48);
            v50 = bits_per_pixel_from_format(__dst);
            v51 = *(a5 + 16);
            __dst[0] = *a5;
            __dst[1] = v51;
            __dst[2] = *(a5 + 32);
            __dst[3].__sig = *(a5 + 48);
            v52 = *(a7 + 16);
            v70[0] = *a7;
            v70[1] = v52;
            v70[2] = *(a7 + 32);
            v53 = *(a7 + 48);
            v54 = v50;
            *&v70[3] = v53;
            v55 = a2;
            v56 = v48;
            v57 = session_get_converted_data(v46, v55, a3, v69, __dst, v50, v70, v48);
            converted_data = v57;
            if (a1)
            {
              if (v57)
              {
                if (kCGConvertColorDataUseColorSyncForToneMapping_block_invoke_once != -1)
                {
                  dispatch_once(&kCGConvertColorDataUseColorSyncForToneMapping_block_invoke_once, &__block_literal_global_12_20232);
                }

                Instance = CGTypeCreateInstance(CGColorDataConverterGetTypeID_id, 96, v58, v59, v60, v61, v62, v63);
                v65 = Instance;
                if (Instance)
                {
                  *(Instance + 88) = v46;
                  *(Instance + 96) = v54;
                  *(Instance + 104) = v56;
                  *(Instance + 16) = 1;
                  __dst[0] = 0uLL;
                  pthread_mutexattr_init(__dst);
                  pthread_mutexattr_settype(__dst, 2);
                  pthread_mutex_init((v65 + 24), __dst);
                  pthread_mutexattr_destroy(__dst);
                }

                *a1 = v65;
              }
            }

            else
            {
              CGAccessSessionRelease(v46);
            }

            CGDataProviderRelease(v45);
          }

          else
          {
            converted_data = 0;
          }

          CFRelease(v67);
        }

        else
        {
          converted_data = 0;
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        converted_data = 0;
      }

      CGDataProviderRelease(v28);
    }

    else
    {
      return 0;
    }
  }

  return converted_data;
}

uint64_t bits_per_pixel_from_format(uint64_t a1)
{
  v2 = colorspace_from_info(*(a1 + 8));
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 == 5)
  {
    if ((v3 & 0xF0000) != 0)
    {
      return 16;
    }

    else
    {
      return 15;
    }
  }

  else
  {
    if (v2)
    {
      v6 = *(*(v2 + 3) + 48);
    }

    else
    {
      v6 = 0;
    }

    if ((v3 & 0x1F) != 0)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6;
    }

    return v7 * v4;
  }
}

CGColorSpaceRef colorspace_from_info(CFTypeRef cf)
{
  if (!cf)
  {
    return cf;
  }

  v2 = CFGetTypeID(cf);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v2 == CGColorSpaceGetTypeID_type_id)
  {
    return cf;
  }

  return CGColorSpaceCreateWithPropertyList(cf);
}

uint64_t component_from_format(__int16 a1, uint64_t a2)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 2;
  }

  if ((a1 & 0x100) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (a2 != 32)
  {
    v3 = 0;
  }

  if (a2 != 16)
  {
    v2 = v3;
  }

  if (a2 == 8)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (a2 == 4)
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 2)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 1)
  {
    v7 = 7;
  }

  else
  {
    v7 = v6;
  }

  if (a2 <= 7)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

BOOL session_get_converted_data(_BOOL8 result, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v15 = result;
    CGAccessSessionRewind(result);
    v17 = (a8 * a2 + 7) >> 3;
    v18 = *(a7 + 32);
    if (v18)
    {
      v19 = v18 >= v17;
    }

    else
    {
      v19 = 1;
    }

    if (v19 && ((v20 = (a6 * a2 + 7) >> 3, (v21 = *(a5 + 32)) == 0) || v21 >= v20))
    {
      v22 = v18 - v17;
      if (v18)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      if (v21)
      {
        v24 = v21 - v20;
      }

      else
      {
        v24 = 0;
      }

      return CGAccessSessionGetChunksAtPosition(v15, 0, v20, v23, a3, a4, v24, v16) == v20 * a3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CGConvertColorData(uint64_t *a1, vImagePixelCount a2, CGDataProvider *a3, char *a4, uint64_t a5, const void *a6, uint64_t a7, const __CFDictionary *a8)
{
  v8 = *(a5 + 16);
  v13[0] = *a5;
  v13[1] = v8;
  v13[2] = *(a5 + 32);
  v14 = *(a5 + 48);
  v9 = *(a7 + 16);
  v11[0] = *a7;
  v11[1] = v9;
  v11[2] = *(a7 + 32);
  v12 = *(a7 + 48);
  return convert_color_data_with_format(a1, a2, a3, a4, v13, a6, v11, a8);
}

void CGColorDataConverterRelease(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (kCGConvertColorDataUseColorSyncForToneMapping_block_invoke_once != -1)
    {
      dispatch_once(&kCGConvertColorDataUseColorSyncForToneMapping_block_invoke_once, &__block_literal_global_12_20232);
    }

    if (v2 == CGColorDataConverterGetTypeID_id)
    {

      CFRelease(a1);
    }
  }
}

uint64_t CGColorConversionInfoConvertData(void *a1, vImagePixelCount a2, CGColorSpace *a3, uint64_t a4, __int128 *a5, char *a6, __int128 *a7)
{
  if (CGColorConversionInfoConvertData_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertData_cglibrarypredicate, &__block_literal_global_15_20255);
  }

  if (CGColorConversionInfoConvertData_f() < 0xF010001)
  {
    CGPostError("%s requires ColorSync version 3770.1.4 or newer", v14, v15, v16, v17, v18, v19, v20, "CGColorConversionInfoConvertData");
    return 0;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v21 = CFGetTypeID(a1);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v21 != kCGColorConverterRuntimeID)
  {
LABEL_21:
    CGPostError("%s: info %p is invalid", v14, v15, v16, v17, v18, v19, v20, "CGColorConversionInfoConvertData");
    return 0;
  }

  if (!a4 || !a6)
  {
    if (!a6)
    {
      CGPostError("%s: Source data pointer cannot be NULL", v14, v15, v16, v17, v18, v19, v20, "CGColorConversionInfoConvertData");
    }

    if (!a4)
    {
      CGPostError("%s: Destination data pointer cannot be NULL", v14, v15, v16, v17, v18, v19, v20, "CGColorConversionInfoConvertData");
      return a4;
    }

    return 0;
  }

  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  if (CGColorConversionInfoConvertData_cglibrarypredicate_18 != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertData_cglibrarypredicate_18, &__block_literal_global_21_20256);
  }

  v23 = CGColorConversionInfoConvertData_f_17(ColorSyncTransform);
  if (CGColorConversionInfoConvertData_cglibrarypredicate_24 != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertData_cglibrarypredicate_24, &__block_literal_global_27_20257);
  }

  v24 = CGColorConversionInfoConvertData_f_23(ColorSyncTransform);
  v25 = a5[1];
  v96 = *a5;
  v97 = v25;
  v94 = v24;
  v31 = verify_format(&v96, v24, a2, v26, v27, v28, v29, v30);
  v32 = a7[1];
  v96 = *a7;
  v97 = v32;
  v38 = verify_format(&v96, v23, a2, v33, v34, v35, v36, v37);
  v46 = v38;
  if (!v31 || !v38)
  {
    if (!v31)
    {
      CGPostError("%s: Destination format is invalid", v39, v40, v41, v42, v43, v44, v45, "CGColorConversionInfoConvertData");
    }

    if (!v46)
    {
      CGPostError("%s: Source format is invalid", v39, v40, v41, v42, v43, v44, v45, "CGColorConversionInfoConvertData");
    }

    return 0;
  }

  v47 = 0;
  v48 = *(a5 + 1);
  v49 = *(a5 + 1);
  if (v48 > 15)
  {
    if (v48 == 16)
    {
      if ((v49 & 0x100) != 0)
      {
        v47 = 5;
      }

      else
      {
        v47 = 2;
      }
    }

    else if (v48 == 32)
    {
      if ((v49 & 0x100) != 0)
      {
        v47 = 4;
      }

      else
      {
        v47 = 3;
      }
    }
  }

  else if (v48 == 8)
  {
    v47 = 1;
  }

  else if (v48 == 10)
  {
    v47 = 6;
  }

  v51 = *(a7 + 1);
  v52 = 1;
  if (v51 > 15)
  {
    if (v51 != 16)
    {
      if (v51 != 32)
      {
LABEL_64:
        if (!v47)
        {
          CGPostError("%s: Incorrect destination data component", v39, v40, v41, v42, v43, v44, v45, "CGColorConversionInfoConvertData");
        }

        CGPostError("%s: Incorrect source data component", v39, v40, v41, v42, v43, v44, v45, "CGColorConversionInfoConvertData");
        return 0;
      }

      v52 = (*(a7 + 1) & 0x100) == 0;
    }
  }

  else if (v51 != 8 && v51 != 10)
  {
    goto LABEL_64;
  }

  if (!v47)
  {
    CGPostError("%s: Incorrect destination data component", v39, v40, v41, v42, v43, v44, v45, "CGColorConversionInfoConvertData");
    return 0;
  }

  v53 = v49 & 0x1F;
  v54 = *(a7 + 1) & 0x1F;
  v56 = v47 != 4 || (*(a5 + 1) & 0x7000) != 0x2000;
  v57 = (*(a7 + 1) & 0x7000) != 0x2000 || v52;
  v92 = v56;
  if (v56)
  {
    if (v53 >= 7)
    {
      CGPostError("Bad CGImageAlphaInfo", v39, v40, v41, v42, v43, v44, v45, v88);
      v53 = 0;
    }

    else
    {
      v53 = dword_184564578[v53];
    }

    if ((v57 & 1) == 0)
    {
      v90 = 0;
      v91 = v54;
      v93 = v53;
      v59 = *(a7 + 3);
      v61 = 4 * a2;
LABEL_76:
      v80 = v94;
      if (v93)
      {
        v80 = v94 + 1;
      }

      v95 = (v61 * v80);
      v81 = malloc_type_calloc(1uLL, v61 * v80 * a3, 0x97037321uLL);
      if (v81)
      {
        v82 = v81;
        v58 = v81;
        goto LABEL_84;
      }

      v83 = "%s: failed to allocate local destination buffer";
      v70 = v90;
      goto LABEL_92;
    }
  }

  else if ((v57 & 1) == 0)
  {
    v90 = 0;
    v91 = *(a7 + 1) & 0x1F;
    v58 = 0;
    v59 = *(a7 + 3);
    v93 = v49 & 0x1F;
    v95 = *(a5 + 3);
    goto LABEL_83;
  }

  v93 = v53;
  if (v54 >= 7)
  {
    CGPostError("Bad CGImageAlphaInfo", v39, v40, v41, v42, v43, v44, v45, v88);
    v60 = 0;
    v91 = 0;
  }

  else
  {
    v91 = dword_184564578[v54];
    v60 = 1;
  }

  v62 = v60 + v23;
  v61 = 4 * a2;
  v59 = 4 * a2 * v62;
  v70 = malloc_type_calloc(1uLL, v59 * a3, 0xBA7A0233uLL);
  if (!v70)
  {
    v83 = "%s: failed to allocate local source buffer";
LABEL_92:
    CGPostError(v83, v63, v64, v65, v66, v67, v68, v69, "CGColorConversionInfoConvertData");
    v58 = 0;
    goto LABEL_93;
  }

  v71 = a7[1];
  v96 = *a7;
  v97 = v71;
  v72 = convert_src_data_to_float_20259(a1, a2, a3, a6, &v96, v70, v59);
  if (v92 && v72)
  {
    v90 = v70;
    a6 = v70;
    goto LABEL_76;
  }

  v58 = 0;
  if (!v72)
  {
LABEL_93:
    v87 = "%s: failed to convert source data to float";
    goto LABEL_94;
  }

  v95 = *(a5 + 3);
  v90 = v70;
  a6 = v70;
LABEL_83:
  v82 = a4;
LABEL_84:
  if (CGColorConversionInfoConvertData_cglibrarypredicate_32 != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertData_cglibrarypredicate_32, &__block_literal_global_35_20260);
  }

  v84 = CGColorConversionInfoConvertData_f_31;
  v85 = CGColorConversionInfoGetColorSyncTransform(a1);
  LODWORD(v89) = 7;
  HIDWORD(v89) = v91;
  if (!(v84)(v85, a2, a3, v82, 7, v93, v95, a6, v89, v59, 0))
  {
    v87 = "%s: ColorSyncTransformConvert failed";
    v70 = v90;
LABEL_94:
    CGPostError(v87, v73, v74, v75, v76, v77, v78, v79, "CGColorConversionInfoConvertData");
    a4 = 0;
    goto LABEL_95;
  }

  v70 = v90;
  if (v92)
  {
    v86 = a5[1];
    v96 = *a5;
    v97 = v86;
    if (!convert_float_data_to_dst(a1, a2, a3, a4, &v96, v93, v58, v95))
    {
      v87 = "%s: failed to convert local data to destination";
      goto LABEL_94;
    }
  }

  a4 = 1;
LABEL_95:
  if (v70)
  {
    free(v70);
  }

  if (v58)
  {
    free(v58);
  }

  return a4;
}

BOOL verify_format(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    CGPostError("CGColorConversionInfoConvertData: unsupported version %d", a2, a3, a4, a5, a6, a7, a8, *a1);
    return 0;
  }

  result = 0;
  if (a2 > 4 || ((1 << a2) & 0x1A) == 0)
  {
    return result;
  }

  v10 = *(a1 + 4);
  v11 = v10 & 0x1F;
  v12 = *(a1 + 16);
  if (*(a1 + 24) < (v12 * a3) >> 3 || v11 == 7)
  {
    return 0;
  }

  result = 0;
  v14 = v10 & 0x7000;
  v15 = v10 & 0xF0000;
  v16 = *(a1 + 8);
  if (v16 <= 15)
  {
    if (v16 != 8)
    {
      if (v16 == 10)
      {
        if (v12 == 32 && (v14 == 0x4000 || v14 == 0x2000) && v15 == 196608)
        {
          return (v11 - 5) < 2;
        }

        return 0;
      }

      return result;
    }

    result = v12 == 24 || v12 == 32;
    if (v12 != 32 && v12 != 24)
    {
      return result;
    }

    return ((v10 & 0x5000) == 0 || v14 == 0x4000) && v15 == 0;
  }

  if (v16 == 16)
  {
    result = v12 == 48 || v12 == 64;
    if (v12 != 64 && v12 != 48)
    {
      return result;
    }

    return (v10 & 0xF5000) == 4096;
  }

  if (v16 == 32)
  {
    if ((v10 & 0x100) == 0)
    {
      return 0;
    }

    result = v12 == 96 || (v12 == 128);
    if (v12 == 128 || v12 == 96)
    {
      result = v14 == 0x4000 || (v14 == 0x2000);
      if (v14 == 0x4000 || v14 == 0x2000)
      {
        return v15 == 0;
      }
    }
  }

  return result;
}

BOOL convert_src_data_to_float_20259(void *a1, vImagePixelCount a2, CGColorSpace *a3, char *a4, uint64_t a5, void *a6, const CGFloat *a7)
{
  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  if (convert_src_data_to_float_cglibrarypredicate != -1)
  {
    dispatch_once(&convert_src_data_to_float_cglibrarypredicate, &__block_literal_global_70_20283);
  }

  v14 = convert_src_data_to_float_f(ColorSyncTransform);
  if (v14 == 4)
  {
    v17 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  }

  else
  {
    v15 = *(a5 + 4);
    if (v14 == 3)
    {
      if ((v15 & 0x100) != 0)
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v16 = qword_1ED4E16E8;
        if (!qword_1ED4E16E8)
        {
          return 0;
        }
      }

      else
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v16 = qword_1ED4E16E0;
        if (!qword_1ED4E16E0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v14 != 1)
      {
        return 0;
      }

      if ((v15 & 0x100) != 0)
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v16 = qword_1ED4E1678;
        if (!qword_1ED4E1678)
        {
          return 0;
        }
      }

      else
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v16 = off_1ED4E1670;
        if (!off_1ED4E1670)
        {
          return 0;
        }
      }
    }

    v17 = v16();
  }

  v25 = v17;
  if (!v17)
  {
    return 0;
  }

  v26 = *(a5 + 4) & 0x1F;
  if ((*(a5 + 4) & 0x1Fu) > 6)
  {
    CGPostError("Bad CGImageAlphaInfo", v18, v19, v20, v21, v22, v23, v24, v51.data);
    v28 = 0;
    v29 = 8448;
    v27 = 96;
  }

  else
  {
    v27 = 128;
    v28 = ((1 << v26) & 0x1E) == 0;
    if (((1 << v26) & 0x1E) != 0)
    {
      v29 = 8451;
    }

    else
    {
      v29 = 8453;
    }
  }

  if (*(a5 + 8) != 10)
  {
    v38 = *(a5 + 16);
    srcFormat.bitsPerComponent = *(a5 + 8);
    srcFormat.bitsPerPixel = v38;
    srcFormat.colorSpace = v25;
    srcFormat.bitmapInfo = *(a5 + 4);
    memset(&srcFormat.version, 0, 20);
    destFormat.bitsPerComponent = 32;
    destFormat.bitsPerPixel = v27;
    destFormat.colorSpace = v25;
    destFormat.bitmapInfo = v29;
    memset(&destFormat.version, 0, 20);
    v39 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0x100u, 0);
    if (v39)
    {
      v40 = v39;
      srcs.data = a4;
      srcs.height = a3;
      v41 = *(a5 + 24);
      srcs.width = a2;
      srcs.rowBytes = v41;
      v51.data = a6;
      v51.height = a3;
      v51.width = a2;
      v51.rowBytes = a7;
      v42 = vImageConvert_AnyToAny(v39, &srcs, &v51, 0, 0x80u);
      if (v42 < 0 || (v43 = malloc_type_malloc(v42, 0xA5D9A365uLL)) == 0)
      {
        v45 = 0;
      }

      else
      {
        v44 = v43;
        v45 = vImageConvert_AnyToAny(v40, &srcs, &v51, v43, 0x10u) == 0;
        free(v44);
      }

      vImageConverter_Release(v40);
      return v45;
    }

    return 0;
  }

  if ((*(a5 + 4) & 0x7000) == 0x4000)
  {
    v30 = malloc_type_malloc(*(a5 + 24) * (a3 - 1) + ((*(a5 + 16) * a2) >> 3), 0xD659A0FAuLL);
    v31 = v30;
    if (a3)
    {
      v32 = 0;
      v33 = *(a5 + 24);
      do
      {
        if (a2)
        {
          v34 = &a4[v33 * v32];
          v35 = &v30[v33 * v32];
          v36 = a2;
          do
          {
            v37 = *v34++;
            *v35 = bswap32(v37);
            v35 += 4;
            --v36;
          }

          while (v36);
        }

        v32 = (v32 + 1);
      }

      while (v32 != a3);
    }

    a4 = v30;
  }

  else
  {
    v31 = 0;
  }

  *&srcFormat.bitsPerComponent = a4;
  srcFormat.colorSpace = a3;
  v47 = *(a5 + 24);
  *&srcFormat.bitmapInfo = a2;
  srcFormat.decode = v47;
  *&destFormat.bitsPerComponent = a6;
  destFormat.colorSpace = a3;
  *&destFormat.bitmapInfo = a2;
  destFormat.decode = a7;
  LODWORD(srcs.data) = 197121;
  v48 = vImageConvert_ARGB2101010ToARGBFFFF(&srcFormat, &destFormat, 0, 1023, &srcs, 0x10u);
  if (v31)
  {
    free(v31);
  }

  v49 = v48 == 0;
  v45 = v48 == 0;
  if (v49 && v28)
  {
    vImageOverwriteChannelsWithScalar_ARGBFFFF(1.0, &destFormat, &destFormat, 1u, 0x10u);
  }

  return v45;
}

BOOL convert_float_data_to_dst(void *a1, vImagePixelCount a2, CGColorSpace *a3, char *a4, uint64_t a5, int a6, void *a7, const CGFloat *a8)
{
  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  if (convert_float_data_to_dst_cglibrarypredicate != -1)
  {
    dispatch_once(&convert_float_data_to_dst_cglibrarypredicate, &__block_literal_global_73_20274);
  }

  v16 = convert_float_data_to_dst_f(ColorSyncTransform);
  if (v16 == 4)
  {
    v19 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a5 + 4);
    if (v16 == 3)
    {
      if ((v17 & 0x100) != 0)
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v18 = qword_1ED4E16E8;
        if (!qword_1ED4E16E8)
        {
          return 0;
        }
      }

      else
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v18 = qword_1ED4E16E0;
        if (!qword_1ED4E16E0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v16 != 1)
      {
        return 0;
      }

      if ((v17 & 0x100) != 0)
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v18 = qword_1ED4E1678;
        if (!qword_1ED4E1678)
        {
          return 0;
        }
      }

      else
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v18 = off_1ED4E1670;
        if (!off_1ED4E1670)
        {
          return 0;
        }
      }
    }

    v19 = v18();
    if (!v19)
    {
      return 0;
    }
  }

  if (*(a5 + 8) != 10)
  {
    v26 = *(a5 + 16);
    dest.bitsPerComponent = *(a5 + 8);
    dest.bitsPerPixel = v26;
    dest.colorSpace = v19;
    dest.bitmapInfo = *(a5 + 4);
    memset(&dest.version, 0, 20);
    *&v37.renderingIntent = 0;
    if (a6)
    {
      v27 = 128;
    }

    else
    {
      v27 = 96;
    }

    v37.bitsPerComponent = 32;
    v37.bitsPerPixel = v27;
    v37.colorSpace = v19;
    v37.bitmapInfo = a6 | 0x2100;
    *&v37.version = 0;
    *(&v37.decode + 4) = 0;
    v28 = vImageConverter_CreateWithCGImageFormat(&v37, &dest, 0, 0x100u, 0);
    if (v28)
    {
      v29 = v28;
      permuteMap.data = a7;
      permuteMap.height = a3;
      permuteMap.width = a2;
      permuteMap.rowBytes = a8;
      v35.data = a4;
      v35.height = a3;
      v30 = *(a5 + 24);
      v35.width = a2;
      v35.rowBytes = v30;
      v31 = vImageConvert_AnyToAny(v28, &permuteMap, &v35, 0, 0x80u);
      if (v31 < 0 || (v32 = malloc_type_malloc(v31, 0x8C508916uLL)) == 0)
      {
        v21 = 0;
      }

      else
      {
        v33 = v32;
        v21 = vImageConvert_AnyToAny(v29, &permuteMap, &v35, v32, 0x10u) == 0;
        free(v33);
      }

      vImageConverter_Release(v29);
      return v21;
    }

    return 0;
  }

  *&dest.bitsPerComponent = a7;
  dest.colorSpace = a3;
  *&dest.bitmapInfo = a2;
  dest.decode = a8;
  *&v37.bitsPerComponent = a4;
  v37.colorSpace = a3;
  v20 = *(a5 + 24);
  *&v37.bitmapInfo = a2;
  v37.decode = v20;
  if (a6 == 5)
  {
    vImageOverwriteChannelsWithScalar_ARGBFFFF(1.0, &dest, &dest, 1u, 0x10u);
  }

  LODWORD(permuteMap.data) = 33619971;
  v21 = vImageConvert_ARGBFFFFToARGB2101010(&dest, &v37, 0, 1023, &permuteMap, 0x10u) == 0;
  if ((*(a5 + 4) & 0x7000) == 0x4000 && a3)
  {
    v22 = 0;
    v23 = *(a5 + 24);
    do
    {
      if (a2)
      {
        v24 = &a4[v23 * v22];
        v25 = a2;
        do
        {
          *v24 = bswap32(*v24);
          ++v24;
          --v25;
        }

        while (v25);
      }

      v22 = (v22 + 1);
    }

    while (v22 != a3);
  }

  return v21;
}

uint64_t (*__convert_float_data_to_dst_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformGetSrcComponentCount");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_20279;
  }

  convert_float_data_to_dst_f = v1;
  return result;
}

uint64_t (*__convert_src_data_to_float_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformGetSrcComponentCount");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_20279;
  }

  convert_src_data_to_float_f = v1;
  return result;
}

uint64_t CGColorConversionInfoConvertColorComponents(void *a1, double *a2, double *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = a1;
  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  if (CGColorConversionInfoConvertColorComponents_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertColorComponents_cglibrarypredicate, &__block_literal_global_50_20297);
  }

  v6 = CGColorConversionInfoConvertColorComponents_f(ColorSyncTransform) + 1;
  if (CGColorConversionInfoConvertColorComponents_cglibrarypredicate_52 != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertColorComponents_cglibrarypredicate_52, &__block_literal_global_55_20298);
  }

  v7 = CGColorConversionInfoConvertColorComponents_f_51(ColorSyncTransform);
  v8 = v7 + 1;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  if (v11 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v15 = &v30 - v12;
  }

  else
  {
    v15 = 0;
  }

  v31 = &v30 - v12;
  if (v11 - 0x3FFFFFFFFFFFFFFFLL >= v13)
  {
    v10 = malloc_type_malloc(4 * v6, 0xAF1F6967uLL);
    v15 = v10;
  }

  MEMORY[0x1EEE9AC00](v10, v14);
  v19 = (&v30 - v17);
  if (v16 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v20 = (&v30 - v17);
  }

  else
  {
    v20 = 0;
  }

  if (v16 - 0x3FFFFFFFFFFFFFFFLL >= v18)
  {
    v20 = malloc_type_malloc(4 * v8, 0x7B12D676uLL);
  }

  v21 = v32;
  if (v6)
  {
    v22 = v15;
    v23 = v6;
    do
    {
      v24 = *a2++;
      v25 = v24;
      *v22++ = v25;
      --v23;
    }

    while (v23);
  }

  *&v36 = 0x210300000000;
  *(&v36 + 1) = 32;
  v37 = 32 * v8;
  v38 = 4 * v8;
  *&v33 = 0x210300000000;
  *(&v33 + 1) = 32;
  v34 = 32 * v6;
  v35 = 4 * v6;
  v26 = CGColorConversionInfoConvertData(v21, 1uLL, 1, v20, &v36, v15, &v33);
  if (v26 && v8)
  {
    v27 = v20;
    do
    {
      v28 = *v27++;
      *a3++ = v28;
      --v8;
    }

    while (v8);
  }

  if (v15 != v31)
  {
    free(v15);
  }

  if (v20 != v19)
  {
    free(v20);
  }

  return v26;
}

_DWORD *shadingRetain(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

void emitShadingDefinition(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      if ((*(v10 + 20) - 1) <= 3)
      {
        PDFDocumentBeginObject(*(a1 + 8), *(a1 + 24), a3, a4, a5, a6, a7, a8);
        PDFDocumentPrintf(*(a1 + 8), "<<", v11, v12, v13, v14, v15, v16, v123);
        p_y = &CGRectInfinite.origin.y;
        p_size = &CGRectInfinite.size;
        v25 = (v10 + 48);
        if (*(v10 + 40) == 1)
        {
          p_size = (v10 + 64);
          p_y = (v10 + 56);
          p_height = (v10 + 72);
        }

        else
        {
          v25 = &CGRectInfinite;
          p_height = &CGRectInfinite.size.height;
        }

        v27 = *p_height;
        v28 = *p_y;
        width = p_size->width;
        v127[0] = v25->origin.x;
        v127[1] = v28;
        v127[2] = width;
        v127[3] = v27;
        if (v127[0] != -8.98846567e307 || v28 != -8.98846567e307 || width != 1.79769313e308 || v27 != 1.79769313e308)
        {
          PDFDocumentPrintf(*(a1 + 8), "/BBox %r", v17, v18, v19, v20, v21, v22, v127);
        }

        v33 = PDFDocumentResolveColorSpace(*(a1 + 8), *(v10 + 24));
        v34 = PDFDocumentAddColorSpace(*(a1 + 8), v33);
        PDFDocumentPrintf(*(a1 + 8), "/ColorSpace", v35, v36, v37, v38, v39, v40, v124);
        PDFColorSpaceEmitReference(v34, v41, v42, v43, v44, v45, v46, v47);
        if (v33)
        {
          v54 = *(*(v33 + 3) + 48);
        }

        else
        {
          v54 = 0;
        }

        v55 = *(v10 + 32);
        if (v55)
        {
          PDFDocumentPrintf(*(a1 + 8), "/Background [", v48, v49, v50, v51, v52, v53, v125);
          if (v54)
          {
            v62 = v54;
            do
            {
              v63 = *v55++;
              PDFDocumentPrintf(*(a1 + 8), "%f", v56, v57, v58, v59, v60, v61, v63);
              --v62;
            }

            while (v62);
          }

          PDFDocumentPrintf(*(a1 + 8), "]", v56, v57, v58, v59, v60, v61, v126);
        }

        v64 = *(v10 + 20);
        switch(v64)
        {
          case 1:
            v92 = *(a1 + 16);
            if (v92 && (*(v92 + 20) - 1) <= 3)
            {
              PDFDocumentPrintf(*(a1 + 8), "/ShadingType 2", v48, v49, v50, v51, v52, v53, v125);
              PDFDocumentPrintf(*(a1 + 8), "/Coords [ %f %f %f %f ]", v93, v94, v95, v96, v97, v98, *(v92 + 128));
              PDFDocumentPrintf(*(a1 + 8), "/Domain [ %f %f ]", v99, v100, v101, v102, v103, v104, *(v92 + 176));
              PDFDocumentPrintf(*(a1 + 8), "/Extend [ %b %b ]", v105, v106, v107, v108, v109, v110, *(v92 + 144));
            }

            v72 = 64;
            break;
          case 2:
            v73 = *(a1 + 16);
            if (v73 && (*(v73 + 20) - 1) <= 3)
            {
              PDFDocumentPrintf(*(a1 + 8), "/ShadingType 3", v48, v49, v50, v51, v52, v53, v125);
              PDFDocumentPrintf(*(a1 + 8), "/Coords [ %f %f %f %f %f %f ]", v74, v75, v76, v77, v78, v79, *(v73 + 128));
              PDFDocumentPrintf(*(a1 + 8), "/Domain [ %f %f ]", v80, v81, v82, v83, v84, v85, *(v73 + 192));
              PDFDocumentPrintf(*(a1 + 8), "/Extend [ %b %b ]", v86, v87, v88, v89, v90, v91, *(v73 + 152));
            }

            v72 = 80;
            break;
          case 4:
            v65 = *(a1 + 16);
            if (v65 && (*(v65 + 20) - 1) <= 3)
            {
              PDFDocumentPrintf(*(a1 + 8), "/ShadingType 1", v48, v49, v50, v51, v52, v53, v125);
              PDFDocumentPrintf(*(a1 + 8), "/Domain [ %f %f %f %f ]", v66, v67, v68, v69, v70, v71, *(v65 + 128));
            }

            v72 = 32;
            break;
          default:
LABEL_46:
            PDFDocumentPrintf(*(a1 + 8), ">>", v48, v49, v50, v51, v52, v53, v125);
            PDFDocumentEndObject(*(a1 + 8), v116, v117, v118, v119, v120, v121, v122);
            *(a1 + 16) = 0;
            CFRelease(v10);
            *(a1 + 48) = 1;
            goto LABEL_47;
        }

        v111 = *(v10 + 128 + v72);
        if (v111)
        {
          v112 = *(a1 + 8);
          v113 = v54 - 1;
          v114 = *(v112 + 408);
          if (!v114)
          {
            v114 = PDFFunctionSetCreate(*(a1 + 8));
            *(v112 + 408) = v114;
          }

          v115 = PDFFunctionSetAddFunctionWithRange(v114, v111, v113, 1);
          if (v115)
          {
            PDFDocumentPrintReference(*(a1 + 8), "/Function %R", v115[6], v49, v50, v51, v52, v53);
          }
        }

        goto LABEL_46;
      }
    }
  }

LABEL_47:
  *a2 = 1;
}

_BYTE *emit_empty_image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  PDFDocumentBeginObject(*v9, *(v9 + 8), a3, a4, a5, a6, a7, a8);
  PDFDocumentPrintf(*v9, "<<", v10, v11, v12, v13, v14, v15, v61);
  PDFDocumentPrintf(*(a1 + 8), "/Type /XObject", v16, v17, v18, v19, v20, v21, v62);
  PDFDocumentPrintf(*(a1 + 8), "/Subtype /Image", v22, v23, v24, v25, v26, v27, v63);
  PDFDocumentPrintf(*(a1 + 8), "/Width 1", v28, v29, v30, v31, v32, v33, v64);
  PDFDocumentPrintf(*(a1 + 8), "/Height 1", v34, v35, v36, v37, v38, v39, v65);
  PDFDocumentPrintf(*(a1 + 8), "/BitsPerComponent 1", v40, v41, v42, v43, v44, v45, v66);
  PDFDocumentPrintf(*(a1 + 8), "/ColorSpace /DeviceGray", v46, v47, v48, v49, v50, v51, v67);
  if (*(a1 + 104) != -1)
  {
    PDFDocumentPrintf(*(a1 + 8), "/StructParent %d", v52, v53, v54, v55, v56, v57, *(a1 + 104));
  }

  v58 = *(a1 + 56);
  if (v58)
  {
    PDFDocumentPrintReference(*(a1 + 8), "/AAPL:EPSData %R", v58, v53, v54, v55, v56, v57);
  }

  if (*(a1 + 96))
  {
    PDFDocumentPrintf(*(a1 + 8), "/AAPL:ImageTag %T", v58, v53, v54, v55, v56, v57, *(a1 + 96));
  }

  PDFStreamBeginData(*(a1 + 16));
  CGDataConsumerPutBytes(*(*(a1 + 16) + 24), &unk_184564594, 1);
  PDFStreamEndData(*(a1 + 16));
  v59 = *(a1 + 16);

  return PDFStreamEnd(v59);
}

void emit_interpolation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 8);
  if ((*(v10 + 91) & 1) == 0)
  {
    v11 = *(a1 + 44);
    if ((v11 - 2) >= 2)
    {
      if (v11 == 1 || !CGImageGetShouldInterpolate(*(a1 + 48)))
      {
        return;
      }

      v10 = *(a1 + 8);
    }

    PDFDocumentPrintf(v10, "/Interpolate true", a3, a4, a5, a6, a7, a8, a9);
  }
}

void emit_decode(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v9 = a3;
    v10 = a2;
    PDFDocumentPrintf(*(a1 + 8), "/Decode [", a3, a4, a5, a6, a7, a8, v20);
    for (; v9; --v9)
    {
      v18 = *v10++;
      PDFDocumentPrintf(*(a1 + 8), "%f", v12, v13, v14, v15, v16, v17, v18);
    }

    v19 = *(a1 + 8);

    PDFDocumentPrintf(v19, "]", v12, v13, v14, v15, v16, v17, a9);
  }
}

uint64_t emit_jpeg_data(uint64_t a1)
{
  PDFStreamSetFilter(*(a1 + 16), "DCTDecode");
  PDFStreamBeginData(*(a1 + 16));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 16);
    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(*(a1 + 80));
    CGDataConsumerPutBytes(*(v3 + 24), BytePtr, Length);
  }

  v6 = *(a1 + 16);

  return PDFStreamEndData(v6);
}

uint64_t emit_jpeg2000_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && (*(a2 + 39) & 4) != 0 && !*(a2 + 176))
  {
    v9 = *(a1 + 8);
    v10 = *(v9 + 4);
    if (v10 <= 0)
    {
      *(v9 + 4) = 1;
      v11 = (v9 + 8);
    }

    else
    {
      if (v10 != 1)
      {
        goto LABEL_10;
      }

      v11 = (v9 + 8);
      if (*(v9 + 8) > 4)
      {
        goto LABEL_10;
      }
    }

    *v11 = 5;
    v9 = *(a1 + 8);
LABEL_10:
    PDFDocumentPrintf(v9, "/SMaskInData 1", a3, a4, a5, a6, a7, a8, v18);
  }

  PDFStreamSetFilter(*(a1 + 16), "JPXDecode");
  PDFStreamBeginData(*(a1 + 16));
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *(a1 + 16);
    BytePtr = CFDataGetBytePtr(v12);
    Length = CFDataGetLength(*(a1 + 80));
    CGDataConsumerPutBytes(*(v13 + 24), BytePtr, Length);
  }

  v16 = *(a1 + 16);

  return PDFStreamEndData(v16);
}

_BYTE *emit_image(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v173 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  PDFDocumentBeginObject(*v10, *(v10 + 8), a3, a4, a5, a6, a7, a8);
  PDFDocumentPrintf(*v10, "<<", v11, v12, v13, v14, v15, v16, v156);
  PDFDocumentPrintf(*(a1 + 8), "/Type /XObject", v17, v18, v19, v20, v21, v22, v157);
  PDFDocumentPrintf(*(a1 + 8), "/Subtype /Image", v23, v24, v25, v26, v27, v28, v158);
  v35 = *(a1 + 8);
  if (a2)
  {
    PDFDocumentPrintf(v35, "/Width %z", v29, v30, v31, v32, v33, v34, a2[5]);
    v42 = a2[6];
  }

  else
  {
    PDFDocumentPrintf(v35, "/Width %z", v29, v30, v31, v32, v33, v34, 0);
    v42 = 0;
  }

  PDFDocumentPrintf(*(a1 + 8), "/Height %z", v36, v37, v38, v39, v40, v41, v42);
  emit_interpolation(a1, v43, v44, v45, v46, v47, v48, v49, v159);
  if (*(a1 + 104) != -1)
  {
    PDFDocumentPrintf(*(a1 + 8), "/StructParent %d", v50, v51, v52, v53, v54, v55, *(a1 + 104));
  }

  if ((*(a1 + 73) & 1) == 0 && *(a1 + 74) != 1 || (ColorSpace = *(a1 + 88)) == 0)
  {
    ColorSpace = CGImageGetColorSpace(a2);
  }

  v57 = *(a1 + 8);
  v58 = PDFDocumentResolveColorSpace(v57, ColorSpace);
  v59 = PDFDocumentAddColorSpace(v57, v58);
  PDFDocumentPrintf(*(a1 + 8), "/ColorSpace", v60, v61, v62, v63, v64, v65, v160);
  PDFColorSpaceEmitReference(v59, v66, v67, v68, v69, v70, v71, v72);
  if (CGImageGetDecode(a2))
  {
    if (ColorSpace)
    {
      v73 = 2 * *(*(ColorSpace + 3) + 48);
    }

    else
    {
      v73 = 0;
    }

    Decode = CGImageGetDecode(a2);
    emit_decode(a1, Decode, v73, v75, v76, v77, v78, v79, v161);
  }

  v86 = CGImageGetRenderingIntent(a2) - 1;
  if (v86 <= 3)
  {
    PDFDocumentPrintf(*(a1 + 8), off_1E6E333F0[v86], v80, v81, v82, v83, v84, v85, v161);
  }

  v87 = *(a1 + 56);
  if (v87)
  {
    PDFDocumentPrintReference(*(a1 + 8), "/AAPL:EPSData %R", v87, v81, v82, v83, v84, v85);
  }

  v88 = *(a1 + 48);
  if (v88)
  {
    v89 = *(v88 + 216);
    if (v89)
    {
      if (CGPropertiesGetProperty(v89, @"kCGPDFImageIsSignature"))
      {
        PDFDocumentPrintf(*(a1 + 8), "%*/ true", v90, v91, v92, v93, v94, v95, @"kCGPDFImageIsSignature");
      }
    }
  }

  Mask = CGImageGetMask(a2);
  if (Mask)
  {
    v97 = Mask;
    if (!CGImageGetMatte(a2))
    {
      v107 = PDFDocumentAddSMask(*(a1 + 8), v97, 0, *(a1 + 44));
      goto LABEL_36;
    }

    v98 = CGImageGetColorSpace(a2);
    if (ColorSpace)
    {
      v99 = *(*(ColorSpace + 3) + 48);
      if (v98)
      {
LABEL_27:
        v100 = *(*(v98 + 3) + 48);
        goto LABEL_31;
      }
    }

    else
    {
      v99 = 0;
      if (v98)
      {
        goto LABEL_27;
      }
    }

    v100 = 0;
LABEL_31:
    if (v99 == v100)
    {
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      *components = 0u;
      v165 = 0u;
      CGImageGetMatte(a2);
      __memcpy_chk();
      components[v99] = 1.0;
      v108 = CGColorCreate(ColorSpace, components);
    }

    else
    {
      v108 = 0;
    }

    v107 = PDFDocumentAddSMask(*(a1 + 8), v97, v108, *(a1 + 44));
    if (v108)
    {
      CFRelease(v108);
    }

LABEL_36:
    if (!v107)
    {
      goto LABEL_47;
    }

    v109 = *(a1 + 8);
    v110 = *(v109 + 4);
    if (v110 <= 0)
    {
      *(v109 + 4) = 1;
      v111 = (v109 + 8);
    }

    else if (v110 != 1 || (v111 = (v109 + 8), *(v109 + 8) > 3))
    {
LABEL_43:
      PDFDocumentPrintf(v109, "/SMask", v101, v102, v103, v104, v105, v106, v161);
      v117 = v107[2];
      if (v117)
      {
        v118 = *(v117 + 8);
      }

      else
      {
        v118 = 0;
      }

      PDFDocumentPrintReference(*(a1 + 8), "%R", v118, v112, v113, v114, v115, v116);
      goto LABEL_47;
    }

    *v111 = 4;
    v109 = *(a1 + 8);
    goto LABEL_43;
  }

LABEL_47:
  if (!CGImageGetMaskingColors(a2))
  {
    goto LABEL_68;
  }

  if (!a2)
  {
    v125 = 0;
LABEL_55:
    v126 = 8;
    goto LABEL_56;
  }

  v125 = a2[7];
  if (v125 - 1 >= 8)
  {
    if (v125 > 0x20)
    {
      if (*(a1 + 73) == 1)
      {
        v127 = *(a1 + 8);
        goto LABEL_70;
      }

      if (*(a1 + 74) == 1)
      {
        v147 = *(a1 + 8);
        goto LABEL_73;
      }

LABEL_80:
      PDFImageEmitData(a1, a2);
      return PDFStreamEnd(*(a1 + 16));
    }

    goto LABEL_55;
  }

  v126 = qword_184564598[v125 - 1];
LABEL_56:
  MaskingColors = CGImageGetMaskingColors(a2);
  v163 = a2;
  v129 = CGImageGetColorSpace(a2);
  if (v129)
  {
    v136 = 2 * *(*(v129 + 3) + 48);
    PDFDocumentPrintf(*(a1 + 8), "/Mask [", v130, v131, v132, v133, v134, v135, v161);
    if (v136)
    {
      if (v125 <= v126)
      {
        v143 = 0;
      }

      else
      {
        v143 = v125 - v126;
      }

      do
      {
        v144 = *MaskingColors;
        if (v125 >= v126)
        {
          v145 = (v144 >> v143);
        }

        else
        {
          v145 = ((~(-1 << v125) >> 1) + ~(-1 << v126) * v144) / ~(-1 << v125);
        }

        PDFDocumentPrintf(*(a1 + 8), "%d", v137, v138, v139, v140, v141, v142, v145);
        ++MaskingColors;
        --v136;
      }

      while (v136);
    }
  }

  else
  {
    PDFDocumentPrintf(*(a1 + 8), "/Mask [", v130, v131, v132, v133, v134, v135, v161);
  }

  PDFDocumentPrintf(*(a1 + 8), "]", v137, v138, v139, v140, v141, v142, v162);
  a2 = v163;
LABEL_68:
  if ((*(a1 + 73) & 1) == 0)
  {
    if (*(a1 + 74))
    {
      v147 = *(a1 + 8);
      if (!a2)
      {
        v148 = 0;
        goto LABEL_77;
      }

LABEL_73:
      v148 = a2[7];
LABEL_77:
      PDFDocumentPrintf(v147, "/BitsPerComponent %z", v119, v120, v121, v122, v123, v124, v148);
      emit_jpeg2000_data(a1, a2, v149, v150, v151, v152, v153, v154);
      return PDFStreamEnd(*(a1 + 16));
    }

    goto LABEL_80;
  }

  v127 = *(a1 + 8);
  if (!a2)
  {
    v146 = 0;
    goto LABEL_75;
  }

LABEL_70:
  v146 = a2[7];
LABEL_75:
  PDFDocumentPrintf(v127, "/BitsPerComponent %z", v119, v120, v121, v122, v123, v124, v146);
  emit_jpeg_data(a1);
  return PDFStreamEnd(*(a1 + 16));
}

uint64_t Coons(uint64_t result, float64x2_t *a2, double *a3, double a4, double a5)
{
  *a2 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(result + 352), *(result + 368), a4), *(result + 384), a5), *(result + 400), a4 * a5), vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(result + 416), *(result + 448), a5), *(result + 480), a4), *(result + 512), a4 * a5), a4 * a4), vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(result + 432), *(result + 464), a4), *(result + 496), a5), *(result + 528), a4 * a5), a5 * a5);
  v5 = *(result + 704);
  if (v5)
  {
    v6 = (result + 544);
    do
    {
      *a3++ = *v6 + v6[5] * a4 + v6[10] * a5 + v6[15] * (a4 * a5);
      ++v6;
      --v5;
    }

    while (v5);
  }

  return result;
}

void CGGStateSetFontSmoothingBackgroundColor(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 136) + 64) != a2)
  {
    maybe_copy_text_state(a1);
    v4 = *(*(a1 + 136) + 64);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 136) + 64) = a2;
  }
}

uint64_t CGPDFReferenceTypeID()
{
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  return CGPDFReferenceTypeID_id;
}

uint64_t __CGPDFReferenceTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFReferenceTypeID_class);
  CGPDFReferenceTypeID_id = result;
  return result;
}

BOOL CGPDFReferenceEqual(uint64_t a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  if (v4 != CGPDFReferenceTypeID_id)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  return v5 == CGPDFReferenceTypeID_id && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

uint64_t CGPDFReferenceCreate(uint64_t a1, uint64_t a2)
{
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  result = pdf_create_cftype();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CGPDFReferenceGetRef(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGPDFNameTypeID()
{
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  return CGPDFNameTypeID_id;
}

uint64_t __CGPDFNameTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFNameTypeID_class);
  CGPDFNameTypeID_id = result;
  return result;
}

uint64_t CGPDFNameHash(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *v1;
  if (!*v1)
  {
    return 5381;
  }

  v3 = v1 + 1;
  result = 5381;
  do
  {
    result = 33 * result + v2;
    v5 = *v3++;
    v2 = v5;
  }

  while (v5);
  return result;
}

BOOL CGPDFNameEqual(const char **a1, const char **a2)
{
  v4 = CFGetTypeID(a1);
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  if (v4 != CGPDFNameTypeID_id)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  return v5 == CGPDFNameTypeID_id && strcmp(a1[2], a2[2]) == 0;
}

uint64_t CGPDFNameCreate(const char *a1)
{
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  cftype = pdf_create_cftype();
  if (*a1 == 47)
  {
    *(cftype + 16) = strdup(a1);
  }

  else
  {
    v3 = strlen(a1);
    v4 = malloc_type_malloc(v3 + 2, 0x69CD9D92uLL);
    __CFSetLastAllocationEventName();
    *(cftype + 16) = v4;
    sprintf(v4, "/%s", a1);
  }

  return cftype;
}

unsigned __int8 *CGPDFNameGetString(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *v1;
  v2 = v1 + 1;
  if (v3 == 47)
  {
    return v2;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t CGPDFStreamObjectTypeID()
{
  if (CGPDFStreamObjectTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
  }

  return CGPDFStreamObjectTypeID_id;
}

uint64_t __CGPDFStreamObjectTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFStreamObjectTypeID_class);
  CGPDFStreamObjectTypeID_id = result;
  return result;
}

CFStringRef CGPDFStreamObjectDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(*(a1 + 16));
  Length = CFDataGetLength(*(a1 + 24));
  if (*(a1 + 32))
  {
    v5 = "will";
  }

  else
  {
    v5 = "will not";
  }

  return CFStringCreateWithFormat(v2, 0, @"<CGPDFStreamObjectRef: %d key-value pairs, %d data bytes, %s flate compress>", Count, Length, v5);
}

void CGPDFStreamObjectFinalize(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  CFRelease(v2);
}

uint64_t CGPDFStreamObjectCreate(const void *a1, const void *a2)
{
  if (CGPDFStreamObjectTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
  }

  cftype = pdf_create_cftype();
  *(cftype + 16) = a1;
  CFRetain(a1);
  *(cftype + 24) = a2;
  CFRetain(a2);
  *(cftype + 32) = 0;
  return cftype;
}

uint64_t CGPDFHexDataTypeID()
{
  if (CGPDFHexDataTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
  }

  return CGPDFHexDataTypeID_id;
}

uint64_t __CGPDFHexDataTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFHexDataTypeID_class);
  CGPDFHexDataTypeID_id = result;
  return result;
}

CFStringRef CGPDFHexDataDebugDesc(uint64_t a1)
{
  v2 = CFCopyDescription(*(a1 + 16));
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGPDFHexDataRef %p: data: %@>", a1, v2);
  CFRelease(v2);
  return v3;
}

uint64_t CGPDFHexDataEqual(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (CGPDFHexDataTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
  }

  if (v4 != CGPDFHexDataTypeID_id)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (CGPDFHexDataTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
  }

  if (v5 != CGPDFHexDataTypeID_id)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];

  return CFEqual(v6, v7);
}

void CGPDFHexDataFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t CGPDFHexDataCreate(const UInt8 *a1, CFIndex a2)
{
  if (CGPDFHexDataTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
  }

  cftype = pdf_create_cftype();
  *(cftype + 16) = CFDataCreate(*MEMORY[0x1E695E480], a1, a2);
  return cftype;
}

CFMutableDictionaryRef CGPDFAppenderCreateCFDictionary(CGPDFDictionary *a1)
{
  if (a1)
  {
    v2 = *(a1 + 9);
  }

  else
  {
    v2 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CGPDFAppenderCreateCFDictionary_block_invoke;
  block[3] = &__block_descriptor_tmp_17_20561;
  block[4] = Mutable;
  CGPDFDictionaryApplyBlock(a1, block, 0);
  return Mutable;
}

uint64_t __CGPDFAppenderCreateCFDictionary_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    CFObject = CGPDFAppenderCreateCFObject(a3, 0);
    CGPDFAppenderDictionarySetValue(*(a1 + 32), a2, CFObject);
    CFRelease(CFObject);
  }

  return 1;
}

const __CFData *CGPDFAppenderCreateCFObject(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  if ((a2 & 1) == 0 && *(a1 + 16) | *(a1 + 24))
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 8);
  if (v4 == 12)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        if (v4 != 6)
        {
          return 0;
        }

        v11 = *(a1 + 32);
        if (v11 && (*(v11 + 64) & 2) != 0)
        {
          if (*(v11 + 24))
          {
            decrypt_string(*(a1 + 32));
            v18 = (v11 + 80);
            if (*(v11 + 24))
            {
              decrypt_string(v11);
            }
          }

          else
          {
            v18 = (v11 + 80);
          }

          v19 = *(v11 + 72);

          return CGPDFHexDataCreate(v18, v19);
        }

        else
        {
          v12 = *(a1 + 32);

          return CGPDFStringCopyTextString(v12);
        }
      }

      else
      {
        if (v4 != 7)
        {
          return 0;
        }

        v10 = *(a1 + 32);

        return CGPDFAppenderCreateCFArray(v10);
      }
    }

    if (v5 == 8)
    {
      if (v4 != 8)
      {
        return 0;
      }

      v16 = *(a1 + 32);

      return CGPDFAppenderCreateCFDictionary(v16);
    }

    if (v5 == 9)
    {
      if (v4 != 9)
      {
        return 0;
      }

      v17 = *(a1 + 32);

      return CGPDFAppenderCreateCGPDFStreamObject(v17);
    }

    if (v5 != 10)
    {
      goto LABEL_52;
    }

LABEL_18:
    v8 = *(a1 + 16);

    return CGPDFReferenceCreate(v8, v3);
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v9 = MEMORY[0x1E695E738];
      return *v9;
    }

    if (v5 == 2)
    {
      v9 = MEMORY[0x1E695E4D0];
      if (!*(a1 + 32))
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      return *v9;
    }

LABEL_52:
    pdf_error("Failed to support given object type %d for append mode", v5);
    return 0;
  }

  if (v5 == 3)
  {
    v13 = (a1 + 32);
    v14 = *MEMORY[0x1E695E480];
    v15 = kCFNumberLongType;
  }

  else
  {
    if (v5 != 4)
    {
      if (v4 == 5)
      {
        v6 = *(a1 + 32);

        return CGPDFNameCreate(v6);
      }

      return 0;
    }

    v13 = (a1 + 32);
    v14 = *MEMORY[0x1E695E480];
    v15 = kCFNumberCGFloatType;
  }

  return CFNumberCreate(v14, v15, v13);
}

void CGPDFAppenderDictionarySetValue(__CFDictionary *a1, const char *a2, const void *a3)
{
  if (a2)
  {
    v5 = CGPDFNameCreate(a2);
    if (a3)
    {
      CFDictionarySetValue(a1, v5, a3);
    }

    else
    {
      CFDictionaryRemoveValue(a1, v5);
    }

    CFRelease(v5);
  }
}

CFMutableArrayRef CGPDFAppenderCreateCFArray(CGPDFArray *a1)
{
  if (a1)
  {
    v4 = *(a1 + 2);
    v3 = *(a1 + 3);
    v5 = (v3 - v4) >> 3;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v5, MEMORY[0x1E695E9C0]);
    if (v3 != v4)
    {
      v7 = 0;
      do
      {
        value = 0;
        if (CGPDFArrayGetObject(a1, v7, &value))
        {
          CFObject = CGPDFAppenderCreateCFObject(value, 0);
          CFArrayAppendValue(Mutable, CFObject);
          CFRelease(CFObject);
        }

        ++v7;
      }

      while (v5 != v7);
    }

    return Mutable;
  }

  else
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v10, 0, v11);
  }
}

const __CFData *CGPDFAppenderCreateCGPDFStreamObject(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1[6];
  }

  else
  {
    v1 = 0;
  }

  result = CGPDFStreamCopyRawData(a1);
  if (result)
  {
    v3 = result;
    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);
    CFRelease(v3);
    CFDictionary = CGPDFAppenderCreateCFDictionary(v1);
    v6 = CGPDFStreamObjectCreate(CFDictionary, MutableCopy);
    CFRelease(CFDictionary);
    CFRelease(MutableCopy);
    return v6;
  }

  return result;
}

uint64_t CGPDFAppenderCGPDFObjectMatchesCFType(uint64_t a1, const __CFString *a2)
{
  v4 = CFGetTypeID(a2);
  if (a1)
  {
    if (*(a1 + 8) == 12)
    {
      v5 = kCGPDFObjectTypeInteger;
    }

    else
    {
      v5 = *(a1 + 8);
    }
  }

  else
  {
    v5 = kCGPDFObjectTypeNull;
  }

  if (v4 == CFNullGetTypeID())
  {
    return v5 == kCGPDFObjectTypeNull;
  }

  if (v4 == CFBooleanGetTypeID())
  {
    v7 = 0;
    if (v5 != kCGPDFObjectTypeBoolean || !a1)
    {
      return v7;
    }

    if (*(a1 + 8) == 2 && (*(a1 + 32) != 1 || *MEMORY[0x1E695E4D0] == a2))
    {
      return *(a1 + 32) || *MEMORY[0x1E695E4C0] == a2;
    }

    return 0;
  }

  if (v4 == CFNumberGetTypeID())
  {
    if ((v5 - 5) >= 0xFFFFFFFE)
    {
      v27 = 0.0;
      value = 0.0;
      if (CGPDFObjectGetValue(a1, v5, &value))
      {
        if (CFNumberGetValue(a2, kCFNumberCGFloatType, &v27))
        {
          return vabdd_f64(value, v27) <= 0.00000011920929;
        }
      }
    }

    return 0;
  }

  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  if (v4 == CGPDFNameTypeID_id)
  {
    if (v5 == kCGPDFObjectTypeName)
    {
      data = a2->data;
      v10 = *data;
      v9 = data + 1;
      v11 = v10 == 47 ? v9 : a2->data;
      if (a1)
      {
        if (*(a1 + 8) == 5)
        {
          v12 = *(a1 + 32);
          if (v12)
          {
            return strcmp(v11, v12) == 0;
          }
        }
      }
    }

    return 0;
  }

  if (v4 == CFStringGetTypeID())
  {
    v7 = 0;
    if (v5 != kCGPDFObjectTypeString || !a1)
    {
      return v7;
    }

    if (*(a1 + 8) == 6)
    {
      v13 = CGPDFStringCopyTextString(*(a1 + 32));
      if (v13)
      {
        v14 = v13;
        v7 = CFStringCompare(a2, v13, 0) == kCFCompareEqualTo;
        CFRelease(v14);
        return v7;
      }
    }

    return 0;
  }

  if (v4 == CFArrayGetTypeID())
  {
    if (a1 && *(a1 + 8) == 7)
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        v16 = (*(v15 + 3) - *(v15 + 2)) >> 3;
      }

      else
      {
        v16 = 0;
      }

      Count = CFArrayGetCount(a2);
      v7 = 0;
      if (Count < 0 || v16 != Count)
      {
        return v7;
      }

      if (!v16)
      {
        return 1;
      }

      v22 = 0;
      v23 = v16 - 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v22);
        value = 0.0;
        if (!ValueAtIndex)
        {
          break;
        }

        v25 = ValueAtIndex;
        if (!CGPDFArrayGetObject(v15, v22, &value))
        {
          break;
        }

        v7 = CGPDFAppenderCGPDFObjectMatchesCFType(*&value, v25);
        if (v7)
        {
          if (v23 != v22++)
          {
            continue;
          }
        }

        return v7;
      }
    }

    return 0;
  }

  if (v4 == CFDictionaryGetTypeID())
  {
    if (!a1 || *(a1 + 8) != 8)
    {
      return 0;
    }

    v17 = *(a1 + 32);
    v18 = a2;
  }

  else
  {
    if (CGPDFStreamObjectTypeID_onceToken != -1)
    {
      dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
    }

    if (v4 != CGPDFStreamObjectTypeID_id)
    {
      if (CGPDFReferenceTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
      }

      v7 = 0;
      if (v4 != CGPDFReferenceTypeID_id || v5 != (kCGPDFObjectTypeDictionary|kCGPDFObjectTypeBoolean) || !a1)
      {
        return v7;
      }

      if (*(a1 + 8) == 10)
      {
        if (a2)
        {
          v20 = a2->data;
        }

        else
        {
          v20 = 0;
        }

        return *(a1 + 16) == v20;
      }

      return 0;
    }

    v7 = 0;
    if (v5 != kCGPDFObjectTypeStream || !a1)
    {
      return v7;
    }

    if (*(a1 + 8) != 9)
    {
      return 0;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v17 = *(v19 + 48);
    }

    else
    {
      v17 = 0;
    }

    v18 = a2->data;
  }

  return AppendModeCGPDFDictionaryMatchesCFDictionary(v17, v18);
}

uint64_t AppendModeCGPDFDictionaryMatchesCFDictionary(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = 0;
  }

  Count = CFDictionaryGetCount(theDict);
  v6 = 0;
  if ((Count & 0x8000000000000000) == 0 && v4 == Count)
  {
    v7 = malloc_type_malloc(8 * v4, 0xC0040B8AA526DuLL);
    v8 = malloc_type_malloc(8 * v4, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(theDict, v7, v8);
    if (v4)
    {
      v9 = 0;
      while (1)
      {
        v10 = v7[v9];
        v11 = v8[v9];
        v12 = CFGetTypeID(v10);
        if (CGPDFNameTypeID_onceToken != -1)
        {
          dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
        }

        if (v12 != CGPDFNameTypeID_id)
        {
          break;
        }

        v13 = v10[2];
        if (*v13 == 47)
        {
          ++v13;
        }

        v18 = v13;
        if (!a1)
        {
          break;
        }

        v14 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>((a1 + 48), &v18);
        if (!v14)
        {
          break;
        }

        v15 = v14[3];
        if (!v15)
        {
          break;
        }

        v16 = CGPDFAppenderCGPDFObjectMatchesCFType(v15, v11);
        v6 = v16;
        if (++v9 >= v4 || (v16 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

LABEL_21:
    free(v7);
    free(v8);
  }

  return v6;
}

void CGPDFAppenderDictionarySetInt32(__CFDictionary *a1, const char *a2, int a3)
{
  valuePtr = a3;
  if (a2)
  {
    v4 = CGPDFNameCreate(a2);
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(a1, v4, v5);
    CFRelease(v5);
    CFRelease(v4);
  }
}

void CGPDFAppenderDictionarySetCGPDFName(__CFDictionary *a1, const char *a2, const char *a3)
{
  if (a2 && a3)
  {
    v5 = CGPDFNameCreate(a2);
    v6 = CGPDFNameCreate(a3);
    CFDictionarySetValue(a1, v5, v6);
    CFRelease(v6);

    CFRelease(v5);
  }
}

void CGPDFAppenderDictionarySetCGPDFReference(__CFDictionary *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3 | a4)
  {
    v7 = CGPDFNameCreate(a2);
    v8 = CGPDFReferenceCreate(a3, a4);
    CFDictionarySetValue(a1, v7, v8);
    CFRelease(v8);

    CFRelease(v7);
  }
}

void CGPDFAppenderArrayAppendCGPDFReference(__CFArray *a1, uint64_t a2, uint64_t a3)
{
  v4 = CGPDFReferenceCreate(a2, a3);
  CFArrayAppendValue(a1, v4);

  CFRelease(v4);
}

const void *CGPDFAppenderDictionaryGetValue(const __CFDictionary *a1, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = CGPDFNameCreate(a2);
  Value = CFDictionaryGetValue(a1, v3);
  CFRelease(v3);
  return Value;
}

void CGPDFAppenderDictionarySetReferenceToReference(__CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = CGPDFReferenceCreate(a2, a3);
  v9 = CGPDFReferenceCreate(a4, a5);
  CFDictionarySetValue(a1, v8, v9);
  CFRelease(v9);

  CFRelease(v8);
}

uint64_t CGPDFAppenderDictionaryCreateHash(const __CFString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v2);
  AppendModeDigestCFType(v2, a1);
  if (v2)
  {
    CC_MD5_Final(md, v2);
  }

  free(v2);
  v3 = 0;
  v4 = &v7;
  do
  {
    sprintf(v4, "%02X", md[v3++]);
    v4 += 2;
  }

  while (v3 != 16);
  return CGPDFNameCreate(&v6);
}

void AppendModeDigestCFType(CC_MD5_CTX *a1, const __CFString *a2)
{
  v4 = CFGetTypeID(a2);
  data = v4;
  if (a1)
  {
    CC_MD5_Update(a1, &data, 8u);
    v5 = data;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == CFBooleanGetTypeID())
  {
    LOBYTE(v36) = *MEMORY[0x1E695E4D0] == a2;
    if (!a1)
    {
      return;
    }

    v6 = &v36;
    v7 = a1;
    v8 = 1;
    goto LABEL_10;
  }

  v9 = data;
  if (v9 == CFNumberGetTypeID())
  {
    *&v36 = 0;
    CFNumberGetValue(a2, kCFNumberCGFloatType, &v36);
    if (!a1)
    {
      return;
    }

    v6 = &v36;
    v7 = a1;
    v8 = 8;
    goto LABEL_10;
  }

  v10 = data;
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  if (v10 == CGPDFNameTypeID_id)
  {
    v11 = a2->data;
    v13 = *v11;
    v12 = v11 + 1;
    if (v13 == 47)
    {
      v14 = v12;
    }

    else
    {
      v14 = a2->data;
    }

    v15 = strlen(v14);
    if (v15)
    {
      v16 = v15;
      do
      {
        if (a1)
        {
          CC_MD5_Update(a1, v14, 1u);
        }

        ++v14;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v17 = data;
    if (v17 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a2);
      if (Length)
      {
        v19 = Length;
        for (i = 0; i != v19; ++i)
        {
          LOWORD(v36) = CFStringGetCharacterAtIndex(a2, i);
          if (a1)
          {
            CC_MD5_Update(a1, &v36, 2u);
          }
        }
      }
    }

    else
    {
      v21 = data;
      if (v21 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(a2);
        *&v36 = Count;
        if (a1)
        {
          CC_MD5_Update(a1, &v36, 8u);
          Count = v36;
        }

        if (Count)
        {
          v23 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v23);
            AppendModeDigestCFType(a1, ValueAtIndex);
            ++v23;
          }

          while (v23 < v36);
        }
      }

      else
      {
        v25 = data;
        if (v25 == CFDictionaryGetTypeID())
        {
          v26 = CFDictionaryGetCount(a2);
          *&v36 = v26;
          if (a1)
          {
            CC_MD5_Update(a1, &v36, 8u);
            v26 = v36;
          }

          v27 = malloc_type_malloc(8 * v26, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(a2, 0, v27);
          if (v36)
          {
            v28 = 0;
            do
            {
              AppendModeDigestCFType(a1, v27[v28++]);
            }

            while (v28 < v36);
          }

          free(v27);
        }

        else
        {
          v29 = data;
          if (CGPDFStreamObjectTypeID_onceToken != -1)
          {
            dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
          }

          if (v29 == CGPDFStreamObjectTypeID_id)
          {
            AppendModeDigestCFType(a1, a2->data);
            v30 = a2->length;
            if (v30)
            {
              v31 = CFDataGetLength(v30);
              if (v31)
              {
                v32 = v31;
                for (j = 0; j != v32; ++j)
                {
                  LOBYTE(v36) = 0;
                  v38.location = j;
                  v38.length = 1;
                  CFDataGetBytes(v30, v38, &v36);
                  if (a1)
                  {
                    CC_MD5_Update(a1, &v36, 1u);
                  }
                }
              }
            }
          }

          else
          {
            v34 = data;
            if (CGPDFReferenceTypeID_onceToken != -1)
            {
              dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
            }

            if (v34 == CGPDFReferenceTypeID_id)
            {
              v35 = a2 ? *&a2->data : 0;
              v36 = v35;
              if (a1)
              {
                CC_MD5_Update(a1, &v36, 8u);
                v6 = &v36 + 8;
                v7 = a1;
                v8 = 2;
LABEL_10:
                CC_MD5_Update(v7, v6, v8);
              }
            }
          }
        }
      }
    }
  }
}

void provider_with_masking_colors_release_info(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    CGDataProviderUnlock(*a1);
  }

  CGDataProviderRelease(*a1);
  v2 = *(a1 + 928);
  if (v2)
  {
    vImageConverter_Release(v2);
  }

  v3 = *(a1 + 936);
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

uint64_t provider_with_masking_colors_release_data(uint64_t *a1)
{
  CGDataProviderReleaseBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderReleaseData(v2);
}

uint64_t provider_with_masking_colors_retain_data(uint64_t *a1)
{
  CGDataProviderRetainBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderRetainData(v2);
}

unint64_t provider_with_masking_colors_get_bytes_at_position(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    _CGHandleAssert("provider_with_masking_colors_get_bytes_at_position", 269, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "info->src_provider_uses_random_access == true", "", a6, a7, a8, v8);
  }

  return provider_with_masking_colors_get_bytes_at_position_inner(a1, a2, a3, a4, 0, a6, a7, a8);
}

unint64_t provider_with_masking_colors_get_bytes_at_position_inner(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v143 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_masking_colors_get_bytes_at_position_inner", 191, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "pos >= 0", "position is negative %lld", a6, a7, a8, a3);
  }

  memcpy(__dst, (a1 + 16), 0x130uLL);
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v13, v14, v15, v16, v17, v18, v19);
  memcpy(__dst, (a1 + 344), 0x130uLL);
  v28 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v21, v22, v23, v24, v25, v26, v27);
  v29 = *(a1 + 936);
  memcpy(__src, (a1 + 16), sizeof(__src));
  v35 = destination_position_to_source_position(v28, *(a1 + 648), *(a1 + 656), BitsPerPixel, *(a1 + 320), a3, v30, v31);
  if (v35 >= 0x7FFFFFFF)
  {
    _CGHandleAssert("provider_with_masking_colors_get_bytes_at_position_inner", 219, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "src_pos >= 0 && src_pos < INT_MAX", "src position %lld", v32, v33, v34, v35);
  }

  v125 = a5;
  v126 = a4;
  v127 = v28;
  v36 = 8 * a4;
  v37 = *(a1 + 344);
  v141 = *(a1 + 356);
  v140 = *(a1 + 348);
  v38 = *(a1 + 360);
  v39 = *(a1 + 368);
  v122 = *(a1 + 372);
  v123 = v36;
  v40 = v36 / v28;
  memcpy(v139, (a1 + 376), sizeof(v139));
  v48 = *a1;
  v121 = BitsPerPixel;
  v49 = (v40 * BitsPerPixel + 7) >> 3;
  if (v49 > *(a1 + 944))
  {
    v50 = (v40 * BitsPerPixel + 7) >> 3;
    CGPostError("%s: bytes_to_read %zd > work_buffer_size %zd", v41, v42, v43, v44, v45, v46, v47, "provider_with_masking_colors_get_bytes_at_position_inner");
    v49 = v50;
    if (v50 > *(a1 + 944))
    {
      _CGHandleAssert("provider_with_masking_colors_get_bytes_at_position_inner", 231, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "bytes_to_read <= info->work_buffer_size", "bytes to read %zu  buffer size %zu", v45, v46, v47, v50);
    }
  }

  v124 = v49;
  BytesAtPositionInternal = CGDataProviderGetBytesAtPositionInternal(v48, *(a1 + 8), *(a1 + 936), v35, v49, v45, v46, v47);
  v55 = *(a1 + 928);
  if (v55)
  {
    *__dst = v29;
    *&__dst[8] = v40;
    *&__dst[16] = xmmword_18439CC50;
    *&__dst[32] = 0;
    memcpy(&__dst[40], __src, 0x130uLL);
    v128[0] = a2;
    v128[1] = v40;
    v129 = xmmword_18439CC50;
    v130 = 0;
    v131 = v37;
    v132 = v140;
    v133 = v141;
    v134 = v38;
    v135 = v39;
    v136 = v122;
    memcpy(v137, v139, sizeof(v137));
    vImageConverterConvert(v55, __dst, v128, 0);
  }

  v56 = 1;
  if (v39 != 9)
  {
    if (v39 == 8)
    {
      LOBYTE(v39) = 1;
    }

    else
    {
      v56 = v39 == 3;
      if ((v39 - 5) > 0xFFFFFFFD)
      {
        goto LABEL_10;
      }
    }

    _CGHandleAssert("mask_colors", 156, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "alpha_info == kCGImageAlphaFirst || alpha_info == kCGImageAlphaLast", "alpha info %d", v51, v52, v53, v39);
  }

LABEL_10:
  if (v37 <= 4)
  {
    if (v37 == 1)
    {
      v57 = v125;
      if (v127 <= v123)
      {
        v68 = 0;
        v69 = (v122 == 0x2000) ^ v56;
        if (v69)
        {
          v70 = v38;
        }

        else
        {
          v70 = 0;
        }

        v71 = &a2[v70];
        v72 = &a2[v69 ^ 1];
        v73 = v38 + 1;
        do
        {
          if (v38)
          {
            v74 = 0;
            v75 = (a1 + 673);
            while (1)
            {
              v76 = v72[v74];
              if (v76 < *(v75 - 1) || v76 > *v75)
              {
                break;
              }

              ++v74;
              v75 += 2;
              if (v38 == v74)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
LABEL_49:
            *v71 = 0;
          }

          v72 += v73;
          v71 += v73;
          ++v68;
        }

        while (v68 != v40);
      }
    }

    else if (v37 == 2)
    {
      v57 = v125;
      if (v127 <= v123)
      {
        v111 = 0;
        v112 = !v56;
        if (v56)
        {
          v113 = v38;
        }

        else
        {
          v113 = 0;
        }

        v114 = &a2[2 * v113];
        v115 = 2;
        if (!v112)
        {
          v115 = 0;
        }

        v116 = &a2[v115];
        do
        {
          if (v38)
          {
            v117 = 0;
            v118 = (a1 + 674);
            while (1)
            {
              v119 = *&v116[2 * v117];
              if (v119 < *(v118 - 1) || v119 > *v118)
              {
                break;
              }

              ++v117;
              v118 += 2;
              if (v38 == v117)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
LABEL_122:
            *v114 = 0;
          }

          v114 += 2 * v38 + 2;
          ++v111;
          v116 += 2 * v38 + 2;
        }

        while (v111 != v40);
      }
    }

    else
    {
      _ZF = v37 == 4;
      v57 = v125;
      if (_ZF && v127 <= v123)
      {
        v59 = 0;
        _ZF = !v56;
        if (v56)
        {
          v61 = v38;
        }

        else
        {
          v61 = 0;
        }

        v62 = &a2[4 * v61];
        v63 = 4;
        if (!_ZF)
        {
          v63 = 0;
        }

        v64 = &a2[v63];
        do
        {
          if (v38)
          {
            v65 = 0;
            v66 = (a1 + 680);
            while (1)
            {
              v67 = *&v64[4 * v65];
              if (*(v66 - 1) > v67 || *v66 < v67)
              {
                break;
              }

              ++v65;
              v66 += 2;
              if (v38 == v65)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
LABEL_32:
            *v62 = 0;
          }

          v62 += 4 * v38 + 4;
          ++v59;
          v64 += 4 * v38 + 4;
        }

        while (v59 != v40);
      }
    }
  }

  else
  {
    if (v37 > 7)
    {
      if (v37 == 9)
      {
        v58 = 4;
        v57 = v125;
      }

      else
      {
        _ZF = v37 == 8;
        v57 = v125;
        if (!_ZF)
        {
          goto LABEL_124;
        }

        v58 = 2;
      }

LABEL_68:
      if (v127 > v123)
      {
        goto LABEL_124;
      }

      v90 = 0;
      LODWORD(j) = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = ~(-1 << v58);
      v96 = a2;
      while (!v56)
      {
        if (v58 > v93)
        {
          v93 += 8;
          v98 = *v96++;
          v94 = v98 | (v94 << 8);
        }

        v93 -= v58;
        v97 = (v94 >> v93) & v95;
        if (v38)
        {
          goto LABEL_76;
        }

LABEL_80:
        if (v56)
        {
          if (v58 > v93)
          {
            v93 += 8;
            v102 = *v96++;
            v94 = v102 | (v94 << 8);
          }

          v93 -= v58;
          v97 = (v94 >> v93) & v95;
        }

        if (v38)
        {
          v103 = 1;
          v104 = __dst;
          v105 = (a1 + 673);
          v106 = v38;
          do
          {
            v53 = *(v105 - 1);
            v108 = *v104++;
            v107 = v108;
            if (v108 < v53 || (v53 = *v105, v107 > v53))
            {
              v103 = 0;
            }

            v105 += 2;
            --v106;
          }

          while (v106);
          if (v103)
          {
            v97 = 0;
          }

          if (v56)
          {
            goto LABEL_98;
          }

LABEL_95:
          if (j >= 8)
          {
            LODWORD(j) = j - 8;
            *a2++ = v92 >> j;
          }

          v92 = (v92 << v58) | v97 & v95;
          LODWORD(j) = j + v58;
          goto LABEL_98;
        }

        v97 = 0;
        if (!v56)
        {
          goto LABEL_95;
        }

LABEL_98:
        if (v38)
        {
          for (i = 0; i != v38; ++i)
          {
            v110 = __dst[i];
            if (j >= 8)
            {
              for (j = j; j > 7; *a2++ = v92 >> j)
              {
                j -= 8;
              }
            }

            v92 = (v92 << v58) | v110 & v95;
            LODWORD(j) = j + v58;
          }
        }

        if (v56)
        {
          if (j >= 8)
          {
            LODWORD(j) = j - 8;
            *a2++ = v92 >> j;
          }

          v92 = (v92 << v58) | v97 & v95;
          LODWORD(j) = j + v58;
        }

        if (++v90 == v40)
        {
          goto LABEL_124;
        }
      }

      v97 = 1;
      if (!v38)
      {
        goto LABEL_80;
      }

LABEL_76:
      v99 = __dst;
      v100 = v38;
      do
      {
        if (v58 > v93)
        {
          v93 += 8;
          v101 = *v96++;
          v94 = v101 | (v94 << 8);
        }

        v93 -= v58;
        *v99++ = (v94 >> v93) & v95;
        --v100;
      }

      while (v100);
      goto LABEL_80;
    }

    if (v37 != 5)
    {
      _ZF = v37 == 7;
      v57 = v125;
      if (!_ZF)
      {
        goto LABEL_124;
      }

      v58 = 1;
      goto LABEL_68;
    }

    v57 = v125;
    if (v127 <= v123)
    {
      v77 = 0;
      v78 = !v56;
      if (v56)
      {
        v79 = v38;
      }

      else
      {
        v79 = 0;
      }

      v80 = &a2[2 * v79];
      v81 = 2;
      if (!v78)
      {
        v81 = 0;
      }

      v82 = &a2[v81];
      do
      {
        if (v38)
        {
          v83 = 0;
          v84 = (a1 + 680);
          while (1)
          {
            _H1 = *&v82[2 * v83];
            __asm { FCVT            D1, H1 }

            if (*(v84 - 1) > _D1 || *v84 < _D1)
            {
              break;
            }

            ++v83;
            v84 += 2;
            if (v38 == v83)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
LABEL_64:
          *v80 = 0;
        }

        v80 += 2 * v38 + 2;
        ++v77;
        v82 += 2 * v38 + 2;
      }

      while (v77 != v40);
    }
  }

LABEL_124:
  result = v126;
  if (BytesAtPositionInternal < v124)
  {
    result = byte_count_to_byte_count(v121, *(a1 + 320), *(a1 + 328), *(a1 + 336), v127, *(a1 + 648), BytesAtPositionInternal, v53);
  }

  if (v57)
  {
    *(a1 + 336) += BytesAtPositionInternal;
    *(a1 + 664) += result;
  }

  return result;
}

void provider_with_masking_colors_rewind(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (!v9)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", a6, a7, a8, v10);
  }

  if ((*(v9 + 20) | 2) != 3)
  {
    _CGHandleAssert("provider_with_masking_colors_rewind", 336, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "", "Unimplemented", a6, a7, a8, v10);
  }

  CGDataProviderRewind(v9);
  a1[83] = 0;
  a1[42] = 0;
}

unint64_t provider_with_masking_colors_skip_forward(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v5, v6, v7, v8, v9, v10, v11);
  memcpy(__dst, (a1 + 344), sizeof(__dst));
  v20 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v13, v14, v15, v16, v17, v18, v19);
  if ((a2 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_masking_colors_skip_forward", 290, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "count >= 0", "count = %lld", v21, v22, v23, a2);
  }

  v24 = v20;
  v25 = byte_count_to_byte_count(v20, *(a1 + 648), *(a1 + 656), *(a1 + 664), BitsPerPixel, *(a1 + 320), a2, v23);
  v26 = CGDataProviderSkipForwardInternal(v4, v25);
  v30 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_masking_colors_skip_forward", 303, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "skipped >= 0", "skipped %lld", v27, v28, v29, v26);
  }

  if (v26 != v25)
  {
    a2 = byte_count_to_byte_count(BitsPerPixel, *(a1 + 320), *(a1 + 328), *(a1 + 336), v24, *(a1 + 648), v26, v29);
  }

  *(a1 + 336) += v30;
  *(a1 + 664) += a2;
  return a2;
}

unint64_t provider_with_masking_colors_get_bytes(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    _CGHandleAssert("provider_with_masking_colors_get_bytes", 277, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "info->src_provider_uses_random_access == false", "", a6, a7, a8, v8);
  }

  return provider_with_masking_colors_get_bytes_at_position_inner(a1, a2, 0, a3, 1, a6, a7, a8);
}

uint64_t PBPageLayoutPkg::PBCharacterStyle::formatText(PBPageLayoutPkg::PBCharacterStyle *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 32) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "baselineOffset", *(this + 6));
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "fillColor");
  }

  v6 = *(this + 32);
  if (v6)
  {
    PB::TextFormatter::format(a2, "fontDataIndex");
    v6 = *(this + 32);
  }

  if ((v6 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "fontSize", *(this + 7));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBCharacterStyle::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
  }

  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 28));
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if ((*(v3 + 32) & 2) != 0)
  {
    v6 = *(v3 + 24);

    return PB::Writer::write(a2, v6);
  }

  return this;
}

uint64_t PBPageLayoutPkg::PBCharacterStyle::readFrom(PBPageLayoutPkg::PBCharacterStyle *this, PB::Reader *a2)
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
        operator new();
      }

      if (v22 == 4)
      {
        *(this + 32) |= 2u;
        v24 = *(a2 + 1);
        if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
        {
LABEL_30:
          *(a2 + 24) = 1;
          goto LABEL_53;
        }

        *(this + 6) = *(*a2 + v24);
        goto LABEL_48;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v34 = 0;
          v35 = 0;
          v30 = 0;
          v36 = (v27 + v26);
          v18 = v25 >= v26;
          v37 = v25 - v26;
          if (!v18)
          {
            v37 = 0;
          }

          v38 = v26 + 1;
          while (1)
          {
            if (!v37)
            {
              v30 = 0;
              *(a2 + 24) = 1;
              goto LABEL_52;
            }

            v39 = *v36;
            *(a2 + 1) = v38;
            v30 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            ++v36;
            --v37;
            ++v38;
            v14 = v35++ > 8;
            if (v14)
            {
LABEL_46:
              v30 = 0;
              goto LABEL_52;
            }
          }

          if (*(a2 + 24))
          {
            v30 = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_52:
        *(this + 2) = v30;
        goto LABEL_53;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
        {
          goto LABEL_30;
        }

        *(this + 7) = *(*a2 + v23);
LABEL_48:
        *(a2 + 1) += 4;
        goto LABEL_53;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v41 = 0;
      return v41 & 1;
    }

LABEL_53:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v41 = v4 ^ 1;
  return v41 & 1;
}

void PBPageLayoutPkg::PBCharacterStyle::~PBCharacterStyle(PBPageLayoutPkg::PBCharacterStyle *this)
{
  PBPageLayoutPkg::PBCharacterStyle::~PBCharacterStyle(this);

  JUMPOUT(0x1865EE610);
}

{
  v2 = *(this + 1);
  *this = &unk_1EF2424F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

BOOL __lookup_pattern_entry_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  result = 0;
  if (*(a2 + 96) == *v2 && *(a2 + 104) == v2[1] && *(a2 + 112) == v2[2] && *(a2 + 120) == v2[3])
  {
    v3 = *(a1 + 40);
    if (*(a2 + 64) == *(*(v3 + 48) + 32) && *(a2 + 72) == *(a1 + 48))
    {
      if (*(a2 + 76) == *(v3 + 132))
      {
        return 1;
      }

      v5 = *(v3 + 136);
      v4 = *(v3 + 144);
      if (*(a2 + 80) == v5 && *(a2 + 88) == v4)
      {
        return 1;
      }
    }
  }

  return result;
}

double *get_pattern_phase(double *result, int *a2, double a3, double a4, double a5, double a6)
{
  v6 = result[2] * a4 + *result * a3;
  v7 = result[3] * a4 + result[1] * a3;
  v8 = a6 + result[5];
  v9 = v6 + a5 + result[4];
  if (v9 <= 1073741820.0)
  {
    v11 = llround(v9);
    if (v9 >= -1073741820.0)
    {
      v10 = v11;
    }

    else
    {
      v10 = -1073741823;
    }
  }

  else
  {
    v10 = 0x3FFFFFFF;
  }

  *a2 = v10;
  v12 = v7 + v8;
  if (v12 <= 1073741820.0)
  {
    if (v12 >= -1073741820.0)
    {
      v13 = llround(v12);
    }

    else
    {
      v13 = -1073741823;
    }
  }

  else
  {
    v13 = 0x3FFFFFFF;
  }

  a2[1] = v13;
  return result;
}

char *create_pattern_tile_pattern(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _OWORD *a6, uint64_t a7, uint64_t a8, double a9)
{
  if (a4 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(a4 + 32);
  }

  v18 = *(v16 + 104);
  v17 = *(v16 + 112);
  v20 = *(v16 + 120);
  v19 = *(v16 + 128);
  if (v20 < 0.0 || v19 < 0.0)
  {
    v32 = CGRectStandardize(*(v16 + 104));
    v21 = fabs(v32.size.width);
    v32.origin.x = v18;
    v32.origin.y = v17;
    v32.size.width = v20;
    v32.size.height = v19;
    *(&v22 - 3) = CGRectStandardize(v32);
  }

  else
  {
    v21 = fabs(v20);
    v22 = *(v16 + 128);
  }

  if (*(v16 + 20) == 1)
  {
    goto LABEL_14;
  }

  if (v18 == INFINITY || v17 == INFINITY)
  {
    return 0;
  }

  v29 = 0;
  if (v20 != 0.0 && v19 != 0.0)
  {
LABEL_14:
    if (a9 >= 1.0 && (*(v16 + 186) & 1) != 0 && ((v23 = fabs(v22), v24 = fabs(*(v16 + 144)), v21 == fabs(*(v16 + 136))) ? (v25 = v23 == v24) : (v25 = 0), v25))
    {
      v26 = 32;
      if (a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v26 = 33;
      if (a2)
      {
LABEL_16:
        v27 = *(a2 + 4);
        goto LABEL_28;
      }
    }

    v27 = 3;
LABEL_28:
    v30 = RIPLayerCreate(RIPLayer_ripl_class, a5, v26, *(*(a1 + 48) + 32), v27, a6, a7, a8);
    v29 = v30;
    if (v30)
    {
      build_tile(v30, a1, a2, a3, a4, 0, a6, *a5, a5[1], a5[2], a5[3], a9);
    }
  }

  return v29;
}

float64x2_t __CGAffineTransformInverseConcat(float64x2_t *a1, _OWORD *a2, float64x2_t *a3)
{
  v5 = a2[1];
  *&v13.a = *a2;
  *&v13.c = v5;
  *&v13.tx = a2[2];
  CGAffineTransformInvert(&v14, &v13);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  tx = v14.tx;
  ty = v14.ty;
  v11 = vmlaq_n_f64(vmulq_n_f64(v7, v14.d), *a3, v14.c);
  *a1 = vmlaq_n_f64(vmulq_n_f64(v7, v14.b), *a3, v14.a);
  a1[1] = v11;
  result = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, ty), v6, tx));
  a1[2] = result;
  return result;
}

void build_tile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, _OWORD *a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12)
{
  v21 = a2;
  v22 = a1;
  v195 = *MEMORY[0x1E69E9840];
  memset(&v176[16], 0, 96);
  v177 = 0u;
  *v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  *&v176[24] = *(a2 + 120);
  *&v176[40] = *(a2 + 136);
  *&v176[56] = *(a2 + 152);
  *&v176[72] = *(a2 + 168);
  *&v176[8] = *(a2 + 104);
  *&v172 = *(a2 + 16);
  *(&v173 + 1) = *(a2 + 40);
  v174 = *(a2 + 48);
  memset(v175, 0, sizeof(v175));
  *&v175[0] = *(a2 + 64);
  *(a2 + 56) = 0u;
  *(v175 + 8) = *(a2 + 72);
  *(a2 + 72) = 0u;
  DWORD2(v177) = *(a2 + 216);
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 48) = a1;
  CGRenderingStateCreateCopy(a3);
  v24 = v23;
  v26 = a7[1];
  v25 = a7[2];
  *(v23 + 24) = *a7;
  *(v23 + 40) = v26;
  *(v23 + 56) = v25;
  Copy = CGGStateCreateCopy(a4);
  v28 = Copy;
  if (a6)
  {
    v29 = *a6;
    v30 = a6[1];
    v31 = *(Copy + 15);
    if (*(v31 + 24) != *a6 || *(v31 + 32) != v30)
    {
      maybeCopyRenderingState(Copy);
      v32 = *(v28 + 120);
      *(v32 + 24) = v29;
      *(v32 + 32) = v30;
    }
  }

  CGGStateResetClip(v28);
  if (*(*(v28 + 120) + 8) != 1.0)
  {
    maybeCopyRenderingState(v28);
    *(*(v28 + 120) + 8) = 0x3FF0000000000000;
  }

  CGGStateSetStyle(v28, 0);
  CGGStateSetSoftMask(v28, 0);
  CGGStateSetCompositeOperation(v28, 2);
  if (a5 < 1)
  {
    PatternBaseColor = CGColorGetPatternBaseColor(a5);
    v33 = 0;
    if (!PatternBaseColor)
    {
LABEL_17:
      CGGStateSetFillColor(v28, 0);
      CGGStateSetStrokeColor(v28, 0);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v33 = *(a5 + 32);
  PatternBaseColor = CGColorGetPatternBaseColor(a5);
  if (PatternBaseColor)
  {
LABEL_15:
    CopyWithAlpha = CGColorCreateCopyWithAlpha(PatternBaseColor, 1.0);
    CGGStateSetFillColor(v28, CopyWithAlpha);
    CGGStateSetStrokeColor(v28, CopyWithAlpha);
    if (CopyWithAlpha)
    {
      CFRelease(CopyWithAlpha);
    }

    goto LABEL_18;
  }

  if (!v33 || *(v33 + 20) || *(v33 + 184) != 1 || !*(v33 + 80))
  {
    goto LABEL_17;
  }

LABEL_18:
  v36 = *v21;
  v196 = CGRectStandardize(*(v33 + 104));
  if (v196.size.width == 0.0 || (height = v196.size.height, v196.size.height == 0.0))
  {
LABEL_76:
    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v24);
    }

    goto LABEL_78;
  }

  x = v196.origin.x;
  y = v196.origin.y;
  width = v196.size.width;
  v143 = v22;
  v41 = *(v33 + 152);
  v42 = *(v24 + 24);
  v43 = *(v24 + 40);
  v44 = vaddq_f64(*(*(v28 + 120) + 24), *(v33 + 56));
  v45 = vmlaq_n_f64(vmulq_laneq_f64(v43, *(v33 + 24), 1), v42, *(v33 + 24));
  v46 = vmlaq_n_f64(vmulq_laneq_f64(v43, *(v33 + 40), 1), v42, *(v33 + 40));
  v155 = *(v33 + 136);
  v160 = fabs(v155);
  v151 = *(v33 + 144);
  v163 = fabs(v151);
  rect = y;
  v145 = x;
  v142 = a12;
  v146 = vaddq_f64(*(v24 + 56), vmlaq_n_f64(vmulq_laneq_f64(v43, v44, 1), v42, v44.f64[0]));
  if (x == -8.98846567e307 && y == -8.98846567e307 && v196.size.width == 1.79769313e308 && height == 1.79769313e308)
  {
    v41 = 0;
    v47 = 0.0;
    v149 = v46;
    v150 = v45;
    v48 = 0.0;
    goto LABEL_41;
  }

  if (v155 != 0.0)
  {
    v49 = vmuld_lane_f64(v160, v45, 1);
    v50 = v49 * v49 + v160 * v45.f64[0] * (v160 * v45.f64[0]);
    if (v50 != 0.0 && v50 < 0.253921509)
    {
      v45 = vmulq_n_f64(v45, (1.0 / sqrt(v50) + 0.5));
    }
  }

  if (v151 == 0.0)
  {
    goto LABEL_33;
  }

  v51 = v46.f64[1];
  v52 = vmuld_lane_f64(v163, v46, 1);
  v53 = v52 * v52 + v163 * v46.f64[0] * (v163 * v46.f64[0]);
  if (v53 != 0.0 && v53 < 0.253921509)
  {
    v46 = vmulq_n_f64(v46, (1.0 / sqrt(v53) + 0.5));
LABEL_33:
    v51 = v46.f64[1];
  }

  if (vmuld_lane_f64(width * 256.0, v45, 1) | (height * 256.0 * v46.f64[0]))
  {
    if ((width * 256.0 * v45.f64[0]) | (height * 256.0 * v51))
    {
      v41 = 0;
      v47 = x;
      v149 = v46;
      v150 = v45;
      goto LABEL_40;
    }

    v46.f64[1] = 0.0;
    v45.f64[0] = 0.0;
  }

  else
  {
    v45.f64[1] = 0.0;
    v46.f64[0] = 0.0;
  }

  v149 = v46;
  v150 = v45;
  v47 = x;
LABEL_40:
  v48 = y;
LABEL_41:
  v197.origin.x = a8;
  v197.origin.y = a9;
  v197.size.width = a10;
  v197.size.height = a11;
  v198 = CGRectInset(v197, 0.00390625, 0.00390625);
  *&v178.a = v150;
  *&v178.c = v149;
  *&v178.tx = v146;
  v54.n64_f64[0] = CGRectApplyInverseAffineTransform(&v178.a, *&v198.origin.x, v198.origin.y, v198.size.width, v198.size.height).n64_f64[0] - v47;
  if (v155 == 0.0)
  {
    v159 = vdupq_lane_s64(*&v160, 0);
    v60 = v54.n64_f64[0] - v54.n64_f64[0];
  }

  else
  {
    v58 = v56.n64_f64[0] + v54.n64_f64[0];
    v59 = floor(v54.n64_f64[0] / v160);
    v60 = v160 * v59;
    v159 = vmulq_n_f64(v150, v160);
    v160 = ((v58 - v160 * v59) / v160);
  }

  v61 = v55.n64_f64[0] - v48;
  v62 = v145;
  v141 = v21;
  if (v151 == 0.0)
  {
    v66 = v61 - v61;
    v154 = vdupq_lane_s64(*&v163, 0);
    v63 = v149;
  }

  else
  {
    v63 = v149;
    v154 = vmulq_n_f64(v149, v163);
    v64 = v57.n64_f64[0] + v61;
    v65 = floor(v61 / v163);
    v66 = v163 * v65;
    v163 = ((v64 - v163 * v65) / v163);
  }

  v67 = rect;
  v147 = vmlaq_n_f64(vmlaq_n_f64(v146, v150, v60), v63, v66);
  *&v178.a = v150;
  *&v178.c = v63;
  *&v178.tx = v147;
  v68 = width;
  v69 = height;
  v199 = CGRectApplyAffineTransform(*&v62, &v178);
  v76 = v199.size.width;
  v77 = v147;
  v78 = v199.size.height;
  v79 = v199.origin.y;
  v158 = vsubq_f64(v199.origin, v147);
  if (*(v33 + 20) || *(v33 + 184) != 1 || (v80 = *(v33 + 80)) == 0 || (ClipPath = CGImageGetClipPath(*(v33 + 80)), v77 = v147, ClipPath))
  {
    v82 = v160;
    v83 = v163;
    if (v163 | v160)
    {
      if (CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v70, v71, v72, v73, v74, v75))
      {
        CG::DisplayList::createContextDelegate();
      }

      v77 = v147;
      if (v41)
      {
        goto LABEL_53;
      }
    }

    else if (v41)
    {
LABEL_53:
      __asm { FMOV            V1.2D, #1.0 }

      v89 = vdivq_f64(_Q1, vaddq_f64(v159, v154));
LABEL_63:
      v152 = v89;
      v93 = 0;
      v94 = v150;
      v156 = v149;
      while (1)
      {
        v95 = 0;
        v148 = v77;
        v96 = v77;
        do
        {
          v161 = v96;
          v164 = v94;
          v97 = vaddq_f64(v96, v158);
          v98 = v97.f64[1];
          v200.origin.x = a8;
          v200.origin.y = a9;
          v200.size.width = a10;
          v200.size.height = a11;
          v99 = v76;
          v100 = v78;
          if (!CGRectIntersectsRect(v200, *v97.f64))
          {
            goto LABEL_72;
          }

          v94 = v164;
          if (!v41)
          {
            v106 = v161;
            v109 = v156;
            goto LABEL_71;
          }

          v105 = v161;
          v106 = vrndaq_f64(v161);
          v107 = vmulq_f64(v152, vsubq_f64(vrndaq_f64(vaddq_f64(vaddq_f64(v161, v159), v154)), v106));
          if (v107.f64[0] != 0.0 && v107.f64[1] != 0.0)
          {
            v108 = vabsq_f64(v107);
            v94 = vmulq_f64(v108, v150);
            v109 = vmulq_f64(v108, v149);
LABEL_71:
            v164 = v94;
            *(v28 + 24) = v94;
            v156 = v109;
            *(v28 + 40) = v109;
            *(v28 + 56) = v106;
            CGPatternDrawInContextDelegate(v33, v36, v24, v28, v101, v102, v103, v104);
LABEL_72:
            v105 = v161;
            v94 = v164;
          }

          ++v95;
          v96 = vaddq_f64(v105, v159);
        }

        while (v95 <= v82);
        ++v93;
        v77 = vaddq_f64(v148, v154);
        if (v93 > v83)
        {
          goto LABEL_75;
        }
      }
    }

    v89 = 0uLL;
    goto LABEL_63;
  }

  v178.a = v145;
  v178.b = rect;
  v178.c = width;
  v178.d = height;
  *&v167 = v80;
  v90.n128_u64[1] = *&v149.f64[1];
  *(v28 + 24) = v150;
  *(v28 + 40) = v149;
  *(v28 + 56) = v147;
  if (width != v155 || (v90.n128_f64[0] = v151, height != v151) || CGContextDelegateDrawImages(v36, v24, v28, &v178, &v167, 0, 1, v90))
  {
    if (v41)
    {
      __asm { FMOV            V1.2D, #1.0 }

      v92 = vdivq_f64(_Q1, vaddq_f64(v159, v154));
    }

    else
    {
      v92 = 0uLL;
    }

    v153 = v92;
    v124 = 0;
    v125 = v160;
    v126 = v163;
    v127 = v150;
    v157 = v149;
    do
    {
      v128 = 0;
      v129 = v147;
      do
      {
        v162 = v129;
        v165 = v127;
        v130 = vaddq_f64(v129, v158);
        v131 = v130.f64[1];
        v201.origin.x = a8;
        v201.origin.y = a9;
        v201.size.width = a10;
        v201.size.height = a11;
        v132 = v76;
        v133 = v78;
        if (!CGRectIntersectsRect(v201, *v130.f64))
        {
          v134 = v162;
          v127 = v165;
          goto LABEL_112;
        }

        v127 = v165;
        if (v41)
        {
          v134 = v162;
          v135 = vrndaq_f64(v162);
          v136 = vmulq_f64(v153, vsubq_f64(vrndaq_f64(vaddq_f64(vaddq_f64(v162, v159), v154)), v135));
          if (v136.f64[0] == 0.0 || v136.f64[1] == 0.0)
          {
            goto LABEL_112;
          }

          v137 = vabsq_f64(v136);
          v127 = vmulq_f64(v137, v150);
          v138 = vmulq_f64(v137, v149);
        }

        else
        {
          v134 = v162;
          v135 = v162;
          v138 = v157;
        }

        *(v28 + 24) = v127;
        v157 = v138;
        *(v28 + 40) = v138;
        *(v28 + 56) = v135;
        if (v36)
        {
          v139 = v36[10];
          if (!v139)
          {
            goto LABEL_75;
          }

          v166 = v127;
          v140 = v139(v36, v24, v28, v80, v178.a, v178.b, v178.c, v178.d);
          v134 = v162;
          v127 = v166;
          if (v140)
          {
            goto LABEL_75;
          }
        }

LABEL_112:
        ++v128;
        v129 = vaddq_f64(v134, v159);
      }

      while (v128 <= v125);
      ++v124;
      v147 = vaddq_f64(v147, v154);
    }

    while (v124 <= v126);
  }

LABEL_75:
  v22 = v143;
  a12 = v142;
  v21 = v141;
  if (v24)
  {
    goto LABEL_76;
  }

LABEL_78:
  CGGStateRelease(v28);
  ripc_ContextRestore(v21, &v171);
  if (a12 < 1.0)
  {
    if (v22)
    {
      v110 = *v22;
      if (*v22)
      {
        v111 = a12;
        if (v111 < 1.0 && (*(v22 + 20) & 0x80000000) == 0 && (*(v22 + 24) & 0x80000000) == 0)
        {
          v194 = 0;
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v179 = 0u;
          memset(&v178, 0, sizeof(v178));
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v112 = (*(v110 + 32))(v22, 32, v22 + 12);
          if (v112)
          {
            v119 = v112;
            v120 = *v112;
            if (*v112 && (*(v22 + 56) || ripl_CreateMask(v22, 1, v113, v114, v115, v116, v117, v118)))
            {
              v121 = *(v22 + 40);
              if (v121)
              {
                v122 = LODWORD(v121->a) & 0xFFFFFF00 | 1;
              }

              else
              {
                *&v190 = 0;
                v188 = 0u;
                v189 = 0u;
                v186 = 0u;
                v187 = 0u;
                v184 = 0u;
                v185 = 0u;
                v182 = 0u;
                v183 = 0u;
                v180 = 0u;
                v181 = 0u;
                v179 = 0u;
                v121 = &v178;
                v122 = 1;
                memset(&v178, 0, sizeof(v178));
              }

              LODWORD(v121->a) = v122;
              ripl_BltOpDestination(v121, v22 + 12, v22);
              ripl_BltOpSourceLayer(v121, (v22 + 12), v22, 0, v22);
              LODWORD(v121[2].d) = 0;
              LODWORD(v121[2].tx) = 0;
              if ((LODWORD(v121->a) & 0xFF0000) != 0)
              {
                LODWORD(v121->a) &= 0xFF00FFFF;
                HIDWORD(v121[2].d) = 0;
                v121[2].ty = 0.0;
                v121[2].b = 0.0;
                v121[2].c = 0.0;
              }

              *&v167 = *v120;
              v168 = 0uLL;
              *(&v167 + 2) = a12;
              v169 = *(v22 + 20);
              v170 = 0uLL;
              if ((*(v120 + 5))(v119, v121, &v167))
              {
                v123 = v22 + 12;
              }

              else
              {
                v123 = 0;
              }
            }

            else
            {
              v123 = 0;
            }

            (*(*v22 + 48))(v22, v123);
          }
        }
      }
    }
  }
}

uint64_t RIPColorConvertColorComponents(void *a1, double *a2, unint64_t a3, uint64_t a4)
{
  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v9 = Cache[2];
  }

  else
  {
    v9 = 0;
  }

  ContentHeadroom = CGColorGetContentHeadroom(a3);
  v18 = *(a4 + 120);
  v19 = *(v18 + 48);
  if (v19 >= 1.0 || v19 <= 0.0)
  {
    v21 = *(v18 + 48);
  }

  else
  {
    v21 = 1.0;
  }

  if (v19 >= 0.0)
  {
    HeadroomInfo = v21;
  }

  else
  {
    HeadroomInfo = 0.0;
  }

  if (HeadroomInfo == 0.0 && !CGColorSpaceUsesExtendedRange(v9))
  {
    HeadroomInfo = CGColorSpaceGetHeadroomInfo(v9, 0);
  }

  v24 = ContentHeadroom > HeadroomInfo && HeadroomInfo > 0.0;
  v25 = v24 && ContentHeadroom >= 1.0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(a3, v10, v11, v12, v13, v14, v15, v16);
    }

    else
    {
      ColorSpace = *(a3 + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  v27 = *(a4 + 120);
  if (v25)
  {
    v28 = *(v27 + 56);
    v29 = *(v27 + 64);
    err = 0;
    v30 = CGColorConversionInfoCreateForToneMapping(ColorSpace, v9, v28, v29, &err, ContentHeadroom, HeadroomInfo);
    if (err)
    {
      v31 = CFErrorCopyDescription(err);
      CGLog(2, "convert_color_components failed: %@", v32, v33, v34, v35, v36, v37, v31);
      CFRelease(v31);
      CFRelease(err);
      v38 = 0;
      if (!v30)
      {
        return v38;
      }
    }

    else
    {
      Components = CGColorGetComponents(a3);
      v38 = CGColorConversionInfoConvertColorComponents(v30, Components, a2);
      if (!v30)
      {
        return v38;
      }
    }

    CFRelease(v30);
    return v38;
  }

  v40 = ((*(v27 + 4) << 12) >> 28);
  v41 = CGColorGetComponents(a3);

  return CGColorTransformConvertColorComponents(a1, ColorSpace, v40, v41, a2);
}

CGDataProvider *CGDataProviderCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !*a2)
  {
    return 0;
  }

  provider = create_provider(a1, 3, a3, a4, a5, a6, a7, a8);
  v10 = provider;
  if (provider)
  {
    *(provider + 40) = *a2;
    *(provider + 56) = *(a2 + 8);
    *(provider + 72) = *(a2 + 24);
    if (!CGDataProviderIsRewindable(provider))
    {
      v11 = CGDataProviderCopyData(v10);
      v12 = CGDataProviderCreateWithCFData(v11);
      if (v11)
      {
        CFRelease(v11);
      }

      CFRelease(v10);
      return v12;
    }
  }

  return v10;
}

uint64_t CGDataProviderGetSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return -1;
  }
}

uint64_t CGDataProviderGetSize2(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return -1;
  }
}

CFStringRef CGPDFStringCopyTextString(CGPDFStringRef string)
{
  if (!string)
  {
    v3 = malloc_type_malloc(0, 0x1000040BDFB0063uLL);
    v2 = 0;
    goto LABEL_20;
  }

  if (*(string + 3))
  {
    decrypt_string(string);
    v2 = *(string + 9);
    if (*(string + 3))
    {
      decrypt_string(string);
    }
  }

  else
  {
    v2 = *(string + 9);
  }

  v4 = string + 80;
  if (v2 < 2)
  {
    v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
    if (v2)
    {
LABEL_13:
      for (i = 0; i != v2; ++i)
      {
        v7 = CGPDFUnicodeVectorPDFDoc[v4[i]];
        v3[i] = v7;
        if (!v7)
        {
          if (v4[i] - 9 > 4)
          {
            v8 = 32;
          }

          else
          {
            v8 = asc_184566368[(v4[i] - 9)];
          }

          v3[i] = v8;
        }
      }
    }

LABEL_20:
    v9 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v3, v2);
    v10 = v3;
    goto LABEL_21;
  }

  v5 = *v4;
  if (v5 == 255)
  {
    if (*(string + 81) != 254)
    {
LABEL_11:
      v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
      goto LABEL_13;
    }
  }

  else if (v5 != 254 || *(string + 81) != 255)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    pdf_error("suspicious Unicode text string: length is not a multiple of 2.");
    --v2;
  }

  v12 = 0;
  while (*(string + v12 + 80) || *(string + v12 + 81) != 27)
  {
    v12 += 2;
    if (v12 >= v2)
    {
      v13 = *MEMORY[0x1E695E480];

      return CFStringCreateWithBytes(v13, string + 80, v2, 0x100u, 1u);
    }
  }

  result = malloc_type_malloc(v2, 0xAFA2EFBBuLL);
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = &v4[v16];
    if (v4[v16] || v17[1] != 27)
    {
      v20 = result + v15;
      *v20 = v4[v16];
      v15 += 2;
      v20[1] = v17[1];
    }

    else
    {
      v18 = v16 + 2;
      if (v16 + 2 < v2)
      {
        v19 = string + v16;
        do
        {
          if (!v19[82] && v19[83] == 27)
          {
            break;
          }

          v19 += 2;
          v18 += 2;
        }

        while (v18 < v2);
      }

      v16 = v18;
    }

    v16 += 2;
  }

  while (v16 < v2);
  v9 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], result, v15, 0x100u, 1u);
  v10 = v14;
LABEL_21:
  free(v10);
  return v9;
}

CGPDFStreamRef get_font_stream_20687(uint64_t a1, int *a2)
{
  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  if (!FontDescriptor)
  {
    return 0;
  }

  v4 = FontDescriptor;
  value = 0;
  if (CGPDFDictionaryGetStream(*(FontDescriptor + 32), "FontFile", &value))
  {
    v5 = value;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = 2;
LABEL_7:
    *a2 = v6;
    return v5;
  }

  value = 0;
  if (CGPDFDictionaryGetStream(*(v4 + 32), "FontFile3", &value))
  {
    v5 = value;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    value = 0;
    if (CGPDFDictionaryGetName(*(v5 + 6), "Subtype", &value))
    {
      v7 = value;
      if (!strcmp(value, "Type1C"))
      {
        v6 = 3;
        goto LABEL_7;
      }

      if (!strcmp(v7, "OpenType"))
      {
        v6 = 6;
        goto LABEL_7;
      }
    }

    return 0;
  }

  return v5;
}

uint64_t CGPDFShadingType6Init(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  if (type6_info_getTypeID_onceToken != -1)
  {
    dispatch_once(&type6_info_getTypeID_onceToken, &__block_literal_global_20700);
  }

  result = pdf_create_cftype();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v15 = 0;
  value = 0;
  format = CGPDFDataFormatRaw;
  *a2 = result;
  *a3 = CGPDFShadingType6Init_type6_callbacks;
  if (a1)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *(result + 16) = v8;
  if (!CGPDFDictionaryGetInteger(v9, "BitsPerCoordinate", &value))
  {
    return 0;
  }

  if (value > 0x20 || ((1 << value) & 0x101011116) == 0)
  {
    return 0;
  }

  v7[4] = value;
  if (!CGPDFDictionaryGetInteger(v9, "BitsPerComponent", &value))
  {
    return 0;
  }

  if (value > 0x10 || ((1 << value) & 0x11116) == 0)
  {
    return 0;
  }

  v7[5] = value;
  if (!CGPDFDictionaryGetInteger(v9, "BitsPerFlag", &value))
  {
    return 0;
  }

  if (value > 8 || ((1 << value) & 0x114) == 0)
  {
    return 0;
  }

  v7[6] = value;
  v7[12] = 0;
  if (!CGPDFDictionaryGetObject(v9, "Function", &v15) || (result = CGPDFShadingCreateShadingFunction(v15, 1uLL), (v7[12] = result) != 0))
  {
    if (a1)
    {
      v10 = *(a1 + 40);
    }

    else
    {
      v10 = 0;
    }

    if (v7[12] && CGColorSpaceGetType(v10) == 7)
    {
      return 0;
    }

    if (v10)
    {
      CFRetain(v10);
      v7[3] = v10;
      if (v7[12])
      {
        v11 = 2;
      }

      else
      {
        v11 = 2 * *(v10[3] + 48);
      }
    }

    else
    {
      v7[3] = 0;
      v11 = 2 * (v7[12] != 0);
    }

    v12 = malloc_type_malloc(8 * (v11 + 4), 0x100004000313F17uLL);
    __CFSetLastAllocationEventName();
    if (!v12)
    {
      return 0;
    }

    if (!CGPDFDictionaryGetNumbers(v9, "Decode", v12, v11 + 4))
    {
      free(v12);
      return 0;
    }

    v7[7] = *v12;
    v7[9] = v12[1];
    v7[8] = v12[2];
    v7[10] = v12[3];
    memmove(v12, v12 + 4, 8 * v11);
    v7[11] = v12;
    if (a1)
    {
      v13 = *(a1 + 32);
    }

    else
    {
      v13 = 0;
    }

    result = CGPDFStreamCopyData(v13, &format);
    v7[13] = result;
    if (result)
    {
      if (format == CGPDFDataFormatRaw)
      {
        return 1;
      }

      pdf_error("invalid shading data format.");
      return 0;
    }
  }

  return result;
}

void type6_release_info(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t type6_create_shading(CGRect *a1, const void *a2)
{
  v3 = &CGRectNull;
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  if (a1)
  {
    p_size = &a1[2].size;
    p_y = &a1[2].origin.y;
    v3 = a1 + 2;
    p_height = &a1[2].size.height;
  }

  v7 = *p_height;
  x = v3->origin.x;
  v9 = *p_y;
  width = p_size->width;
  v21[0] = *&v3->origin.x;
  *&v21[1] = v9;
  *&v21[2] = width;
  *&v21[3] = v7;
  if (a1)
  {
    y = a1[1].origin.y;
    a1 = *&a1[1].size.width;
  }

  else
  {
    y = 0.0;
  }

  Components = CGColorGetComponents(a1);
  v17 = x == -8.98846567e307;
  if (v9 != -8.98846567e307)
  {
    v17 = 0;
  }

  if (width != 1.79769313e308)
  {
    v17 = 0;
  }

  v18 = v7 == 1.79769313e308 && v17;
  if (a2)
  {
    CFRetain(a2);
    if (y == 0.0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (y == 0.0)
    {
      return result;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v21;
  }

  result = CGShadingCreateEmpty(0, *&y, Components, v20, v12, v13, v14, v15);
  *(result + 80) = a2;
  *(result + 104) = type6_create_shading_type6_drawing_callbacks;
  *(result + 120) = off_1EF2425F0[0];
  return result;
}

void cg_shading_type6_release(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void cg_shading_type6_draw(uint64_t a1, CGContextRef c)
{
  v2 = c;
  v780 = *MEMORY[0x1E69E9840];
  CGContextSetFillColorSpace(c, *(a1 + 24));
  CGContextSetStrokeColorSpace(v2, *(a1 + 24));
  if (!*(a1 + 96))
  {
    v4 = *(a1 + 24);
    v649 = a1;
    v5 = v4 ? *(*(v4 + 24) + 48) : 0;
    v6 = malloc_type_malloc(32 * v5 + 32, 0x100004000313F17uLL);
    v7 = a1;
    if (v6)
    {
      v8 = v6;
      v627 = 2 * v5;
      v626 = 3 * v5;
      v629 = v5 + 1;
      v625 = 8 * (v5 + 1);
      v647 = 8 * v5;
      v628 = v5;
      v9 = 1.0;
      v10 = 0.25;
      v11 = 1;
      v654 = v2;
      v666 = v6;
      while (1)
      {
        v650 = v11;
        v12 = v7;
        BytePtr = CFDataGetBytePtr(*(v7 + 104));
        Length = CFDataGetLength(*(v12 + 104));
        if (!Length)
        {
          goto LABEL_724;
        }

        v15 = 0;
        v16 = 0;
        v17 = &BytePtr[Length];
        v648 = v17;
        do
        {
          v18 = *(v649 + 48);
          if (*(v649 + 16) == 6)
          {
            if (v18 < 0x19)
            {
              LOBYTE(v24) = 0;
              if (!v18)
              {
LABEL_38:
                LOBYTE(v26) = 0;
LABEL_39:
                v31 = *(v649 + 32);
                v30 = *(v649 + 40);
                v32 = (0xFFFFFFFF >> -v31);
                v33 = v26 | v24;
                v34 = (0xFFFFFFFF >> -v30);
                if ((v33 & 3) != 0)
                {
                  v35 = 0;
                  v36 = 3 * (v33 & 3u);
                  do
                  {
                    *(&x + v35) = *(&x + 48 * (v33 & 3) + v35 + -192 * (v36 / 0xC));
                    v35 += 16;
                    ++v36;
                  }

                  while (v35 != 64);
                  v37 = *(v649 + 56);
                  v38 = *(v649 + 64);
                  v39 = *(v649 + 72) - v37;
                  v40 = *(v649 + 80) - v38;
                  v41 = v31 - 24;
                  v42 = 4;
                  while (1)
                  {
                    if (v31 < 0x19)
                    {
                      v45 = 0;
                      v46 = v31;
                      if (!v31)
                      {
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      if (v15 > 0x17)
                      {
                        v44 = v15;
                      }

                      else
                      {
                        do
                        {
                          v16 <<= 8;
                          if (BytePtr < v17)
                          {
                            v43 = *BytePtr++;
                            v16 |= v43;
                          }

                          v44 = v15 + 8;
                          _CF = v15 >= 0x10;
                          v15 += 8;
                        }

                        while (!_CF);
                      }

                      v15 = v44 - 24;
                      v45 = ((v16 >> (v44 - 24)) & 0xFFFFFF) << v41;
                      v46 = v31 - 24;
                    }

                    while (v15 < v46)
                    {
                      v16 <<= 8;
                      if (BytePtr < v17)
                      {
                        v47 = *BytePtr++;
                        v16 |= v47;
                      }

                      v15 += 8;
                    }

                    v15 -= v46;
                    LODWORD(v46) = (v16 >> v15) & (0xFFFFFFFF >> -v46);
LABEL_59:
                    v48 = v37 + v39 * (v46 | v45) / v32;
                    v49 = &x + 2 * v42;
                    *v49 = v48;
                    if (v31 >= 0x19)
                    {
                      if (v15 > 0x17)
                      {
                        v51 = v15;
                      }

                      else
                      {
                        do
                        {
                          v16 <<= 8;
                          if (BytePtr < v17)
                          {
                            v50 = *BytePtr++;
                            v16 |= v50;
                          }

                          v51 = v15 + 8;
                          _CF = v15 >= 0x10;
                          v15 += 8;
                        }

                        while (!_CF);
                      }

                      v15 = v51 - 24;
                      v52 = ((v16 >> (v51 - 24)) & 0xFFFFFF) << v41;
                      v53 = v31 - 24;
LABEL_70:
                      while (v15 < v53)
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v54 = *BytePtr++;
                          v16 |= v54;
                        }

                        v15 += 8;
                      }

                      v15 -= v53;
                      LODWORD(v53) = (v16 >> v15) & (0xFFFFFFFF >> -v53);
                      goto LABEL_75;
                    }

                    v52 = 0;
                    v53 = v31;
                    if (v31)
                    {
                      goto LABEL_70;
                    }

LABEL_75:
                    v49[1] = v38 + v40 * (v53 | v52) / v32;
                    if (++v42 == 12)
                    {
                      v55 = 0;
                      v56 = 1;
                      do
                      {
                        v57 = v56;
                        if (v5)
                        {
                          v58 = &v8[((v55 + v33) & 3) * v5];
                          v59 = &v8[v55 * v5];
                          v60 = v5;
                          do
                          {
                            v61 = *v58++;
                            *v59++ = v61;
                            --v60;
                          }

                          while (v60);
                        }

                        v56 = 0;
                        v55 = 1;
                      }

                      while ((v57 & 1) != 0);
                      v62 = 0;
                      v63 = 2;
                      while (1)
                      {
                        v64 = v62;
                        if (v5)
                        {
                          break;
                        }

LABEL_101:
                        v62 = 1;
                        v63 = 3;
                        if (v64)
                        {
                          goto LABEL_347;
                        }
                      }

                      v65 = 0;
                      v66 = *(v649 + 88);
                      v67 = &v8[v63 * v5];
                      while (2)
                      {
                        if (v30 < 0x19)
                        {
                          v70 = 0;
                          v71 = v30;
                          if (v30)
                          {
                            goto LABEL_95;
                          }
                        }

                        else
                        {
                          if (v15 > 0x17)
                          {
                            v69 = v15;
                          }

                          else
                          {
                            do
                            {
                              v16 <<= 8;
                              if (BytePtr < v17)
                              {
                                v68 = *BytePtr++;
                                v16 |= v68;
                              }

                              v69 = v15 + 8;
                              _CF = v15 >= 0x10;
                              v15 += 8;
                            }

                            while (!_CF);
                          }

                          v15 = v69 - 24;
                          v70 = ((v16 >> (v69 - 24)) & 0xFFFFFF) << (v30 - 24);
                          v71 = v30 - 24;
LABEL_95:
                          while (v15 < v71)
                          {
                            v16 <<= 8;
                            if (BytePtr < v17)
                            {
                              v72 = *BytePtr++;
                              v16 |= v72;
                            }

                            v15 += 8;
                          }

                          v15 -= v71;
                          LODWORD(v71) = (v16 >> v15) & (0xFFFFFFFF >> -v71);
                        }

                        v67[v65] = *(v66 + 16 * v65) + (*(v66 + 16 * v65 + 8) - *(v66 + 16 * v65)) * (v71 | v70) / v34;
                        if (++v65 == v5)
                        {
                          goto LABEL_101;
                        }

                        continue;
                      }
                    }
                  }
                }

                v73 = 0;
                v74 = *(v649 + 56);
                v75 = *(v649 + 64);
                v76 = *(v649 + 72) - v74;
                v77 = *(v649 + 80) - v75;
                v78 = v31 - 24;
                while (1)
                {
                  if (v31 < 0x19)
                  {
                    v81 = 0;
                    v82 = v31;
                    if (!v31)
                    {
                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    if (v15 > 0x17)
                    {
                      v80 = v15;
                    }

                    else
                    {
                      do
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v79 = *BytePtr++;
                          v16 |= v79;
                        }

                        v80 = v15 + 8;
                        _CF = v15 >= 0x10;
                        v15 += 8;
                      }

                      while (!_CF);
                    }

                    v15 = v80 - 24;
                    v81 = ((v16 >> (v80 - 24)) & 0xFFFFFF) << v78;
                    v82 = v31 - 24;
                  }

                  while (v15 < v82)
                  {
                    v16 <<= 8;
                    if (BytePtr < v17)
                    {
                      v83 = *BytePtr++;
                      v16 |= v83;
                    }

                    v15 += 8;
                  }

                  v15 -= v82;
                  LODWORD(v82) = (v16 >> v15) & (0xFFFFFFFF >> -v82);
LABEL_120:
                  v84 = v74 + v76 * (v82 | v81) / v32;
                  v85 = &x + 2 * v73;
                  *v85 = v84;
                  if (v31 >= 0x19)
                  {
                    if (v15 > 0x17)
                    {
                      v87 = v15;
                    }

                    else
                    {
                      do
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v86 = *BytePtr++;
                          v16 |= v86;
                        }

                        v87 = v15 + 8;
                        _CF = v15 >= 0x10;
                        v15 += 8;
                      }

                      while (!_CF);
                    }

                    v15 = v87 - 24;
                    v88 = ((v16 >> (v87 - 24)) & 0xFFFFFF) << v78;
                    v89 = v31 - 24;
LABEL_131:
                    while (v15 < v89)
                    {
                      v16 <<= 8;
                      if (BytePtr < v17)
                      {
                        v90 = *BytePtr++;
                        v16 |= v90;
                      }

                      v15 += 8;
                    }

                    v15 -= v89;
                    LODWORD(v89) = (v16 >> v15) & (0xFFFFFFFF >> -v89);
                    goto LABEL_136;
                  }

                  v88 = 0;
                  v89 = v31;
                  if (v31)
                  {
                    goto LABEL_131;
                  }

LABEL_136:
                  v85[1] = v75 + v77 * (v89 | v88) / v32;
                  if (++v73 == 12)
                  {
                    v91 = 0;
                    while (!v5)
                    {
LABEL_157:
                      if (++v91 == 4)
                      {
                        goto LABEL_347;
                      }
                    }

                    v92 = 0;
                    v93 = *(v649 + 88);
                    while (2)
                    {
                      if (v30 < 0x19)
                      {
                        v96 = 0;
                        v97 = v30;
                        if (v30)
                        {
                          goto LABEL_151;
                        }
                      }

                      else
                      {
                        if (v15 > 0x17)
                        {
                          v95 = v15;
                        }

                        else
                        {
                          do
                          {
                            v16 <<= 8;
                            if (BytePtr < v17)
                            {
                              v94 = *BytePtr++;
                              v16 |= v94;
                            }

                            v95 = v15 + 8;
                            _CF = v15 >= 0x10;
                            v15 += 8;
                          }

                          while (!_CF);
                        }

                        v15 = v95 - 24;
                        v96 = ((v16 >> (v95 - 24)) & 0xFFFFFF) << (v30 - 24);
                        v97 = v30 - 24;
LABEL_151:
                        while (v15 < v97)
                        {
                          v16 <<= 8;
                          if (BytePtr < v17)
                          {
                            v98 = *BytePtr++;
                            v16 |= v98;
                          }

                          v15 += 8;
                        }

                        v15 -= v97;
                        LODWORD(v97) = (v16 >> v15) & (0xFFFFFFFF >> -v97);
                      }

                      v8[v91 * v5 + v92] = *(v93 + 16 * v92) + (*(v93 + 16 * v92 + 8) - *(v93 + 16 * v92)) * (v97 | v96) / v34;
                      if (++v92 == v5)
                      {
                        goto LABEL_157;
                      }

                      continue;
                    }
                  }
                }
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v20 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v19 = *BytePtr++;
                    v16 |= v19;
                  }

                  v20 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v18 -= 24;
              v15 = v20 - 24;
              v24 = ((v16 >> (v20 - 24)) & 0xFFFFFF) << v18;
              if (!v18)
              {
                goto LABEL_38;
              }
            }

            while (v15 < v18)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v25 = *BytePtr++;
                v16 |= v25;
              }

              v15 += 8;
            }

            v15 -= v18;
            v26 = (v16 >> v15) & (0xFFFFFFFF >> -v18);
            goto LABEL_39;
          }

          if (v18 < 0x19)
          {
            LOBYTE(v27) = 0;
            if (v18)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v15 > 0x17)
            {
              v23 = v15;
            }

            else
            {
              do
              {
                v16 <<= 8;
                if (BytePtr < v17)
                {
                  v22 = *BytePtr++;
                  v16 |= v22;
                }

                v23 = v15 + 8;
                _CF = v15 >= 0x10;
                v15 += 8;
              }

              while (!_CF);
            }

            v18 -= 24;
            v15 = v23 - 24;
            v27 = ((v16 >> (v23 - 24)) & 0xFFFFFF) << v18;
            if (v18)
            {
LABEL_31:
              while (v15 < v18)
              {
                v16 <<= 8;
                if (BytePtr < v17)
                {
                  v28 = *BytePtr++;
                  v16 |= v28;
                }

                v15 += 8;
              }

              v15 -= v18;
              v29 = (v16 >> v15) & (0xFFFFFFFF >> -v18);
              goto LABEL_162;
            }
          }

          LOBYTE(v29) = 0;
LABEL_162:
          v100 = *(v649 + 32);
          v99 = *(v649 + 40);
          v101 = (0xFFFFFFFF >> -v100);
          v102 = v29 | v27;
          v103 = (0xFFFFFFFF >> -v99);
          v104 = 0;
          if ((v102 & 3) != 0)
          {
            v105 = 3 * (v102 & 3u);
            do
            {
              *(&x + v104) = *(&x + 48 * (v102 & 3) + v104 + -192 * (v105 / 0xC));
              v104 += 16;
              ++v105;
            }

            while (v104 != 64);
            v106 = *(v649 + 56);
            v107 = *(v649 + 64);
            v108 = *(v649 + 72) - v106;
            v109 = *(v649 + 80) - v107;
            v110 = v100 - 24;
            v111 = 4;
            while (1)
            {
              if (v100 < 0x19)
              {
                v114 = 0;
                v115 = v100;
                if (!v100)
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v15 > 0x17)
                {
                  v113 = v15;
                }

                else
                {
                  do
                  {
                    v16 <<= 8;
                    if (BytePtr < v17)
                    {
                      v112 = *BytePtr++;
                      v16 |= v112;
                    }

                    v113 = v15 + 8;
                    _CF = v15 >= 0x10;
                    v15 += 8;
                  }

                  while (!_CF);
                }

                v15 = v113 - 24;
                v114 = ((v16 >> (v113 - 24)) & 0xFFFFFF) << v110;
                v115 = v100 - 24;
              }

              while (v15 < v115)
              {
                v16 <<= 8;
                if (BytePtr < v17)
                {
                  v116 = *BytePtr++;
                  v16 |= v116;
                }

                v15 += 8;
              }

              v15 -= v115;
              LODWORD(v115) = (v16 >> v15) & (0xFFFFFFFF >> -v115);
LABEL_182:
              v117 = v106 + v108 * (v115 | v114) / v101;
              v118 = &x + 2 * v111;
              *v118 = v117;
              if (v100 >= 0x19)
              {
                if (v15 > 0x17)
                {
                  v120 = v15;
                }

                else
                {
                  do
                  {
                    v16 <<= 8;
                    if (BytePtr < v17)
                    {
                      v119 = *BytePtr++;
                      v16 |= v119;
                    }

                    v120 = v15 + 8;
                    _CF = v15 >= 0x10;
                    v15 += 8;
                  }

                  while (!_CF);
                }

                v15 = v120 - 24;
                v121 = ((v16 >> (v120 - 24)) & 0xFFFFFF) << v110;
                v122 = v100 - 24;
LABEL_193:
                while (v15 < v122)
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v123 = *BytePtr++;
                    v16 |= v123;
                  }

                  v15 += 8;
                }

                v15 -= v122;
                LODWORD(v122) = (v16 >> v15) & (0xFFFFFFFF >> -v122);
                goto LABEL_198;
              }

              v121 = 0;
              v122 = v100;
              if (v100)
              {
                goto LABEL_193;
              }

LABEL_198:
              v118[1] = v107 + v109 * (v122 | v121) / v101;
              if (++v111 == 12)
              {
                while (1)
                {
                  if (v100 < 0x19)
                  {
                    v126 = v100;
                    if (!v100)
                    {
                      goto LABEL_215;
                    }
                  }

                  else
                  {
                    if (v15 > 0x17)
                    {
                      v125 = v15;
                    }

                    else
                    {
                      do
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v124 = *BytePtr++;
                          v16 |= v124;
                        }

                        v125 = v15 + 8;
                        _CF = v15 >= 0x10;
                        v15 += 8;
                      }

                      while (!_CF);
                    }

                    v15 = v125 - 24;
                    v126 = v100 - 24;
                  }

                  while (v15 < v126)
                  {
                    v16 <<= 8;
                    if (BytePtr < v17)
                    {
                      v127 = *BytePtr++;
                      v16 |= v127;
                    }

                    v15 += 8;
                  }

                  v15 -= v126;
LABEL_215:
                  if (v100 >= 0x19)
                  {
                    if (v15 > 0x17)
                    {
                      v129 = v15;
                    }

                    else
                    {
                      do
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v128 = *BytePtr++;
                          v16 |= v128;
                        }

                        v129 = v15 + 8;
                        _CF = v15 >= 0x10;
                        v15 += 8;
                      }

                      while (!_CF);
                    }

                    v15 = v129 - 24;
                    v130 = v100 - 24;
LABEL_226:
                    while (v15 < v130)
                    {
                      v16 <<= 8;
                      if (BytePtr < v17)
                      {
                        v131 = *BytePtr++;
                        v16 |= v131;
                      }

                      v15 += 8;
                    }

                    v15 -= v130;
                    goto LABEL_231;
                  }

                  v130 = v100;
                  if (v100)
                  {
                    goto LABEL_226;
                  }

LABEL_231:
                  if (++v111 == 16)
                  {
                    v132 = 0;
                    v133 = 1;
                    do
                    {
                      v134 = v133;
                      if (v5)
                      {
                        v135 = &v8[((v132 + v102) & 3) * v5];
                        v136 = &v8[v132 * v5];
                        v137 = v5;
                        do
                        {
                          v138 = *v135++;
                          *v136++ = v138;
                          --v137;
                        }

                        while (v137);
                      }

                      v133 = 0;
                      v132 = 1;
                    }

                    while ((v134 & 1) != 0);
                    v139 = 0;
                    v140 = 2;
                    while (1)
                    {
                      v141 = v139;
                      if (v5)
                      {
                        break;
                      }

LABEL_257:
                      v139 = 1;
                      v140 = 3;
                      if (v141)
                      {
                        goto LABEL_347;
                      }
                    }

                    v142 = 0;
                    v143 = *(v649 + 88);
                    v144 = &v8[v140 * v5];
                    while (2)
                    {
                      if (v99 < 0x19)
                      {
                        v147 = 0;
                        v148 = v99;
                        if (v99)
                        {
                          goto LABEL_251;
                        }
                      }

                      else
                      {
                        if (v15 > 0x17)
                        {
                          v146 = v15;
                        }

                        else
                        {
                          do
                          {
                            v16 <<= 8;
                            if (BytePtr < v17)
                            {
                              v145 = *BytePtr++;
                              v16 |= v145;
                            }

                            v146 = v15 + 8;
                            _CF = v15 >= 0x10;
                            v15 += 8;
                          }

                          while (!_CF);
                        }

                        v15 = v146 - 24;
                        v147 = ((v16 >> (v146 - 24)) & 0xFFFFFF) << (v99 - 24);
                        v148 = v99 - 24;
LABEL_251:
                        while (v15 < v148)
                        {
                          v16 <<= 8;
                          if (BytePtr < v17)
                          {
                            v149 = *BytePtr++;
                            v16 |= v149;
                          }

                          v15 += 8;
                        }

                        v15 -= v148;
                        LODWORD(v148) = (v16 >> v15) & (0xFFFFFFFF >> -v148);
                      }

                      v144[v142] = *(v143 + 16 * v142) + (*(v143 + 16 * v142 + 8) - *(v143 + 16 * v142)) * (v148 | v147) / v103;
                      if (++v142 == v5)
                      {
                        goto LABEL_257;
                      }

                      continue;
                    }
                  }
                }
              }
            }
          }

          v150 = *(v649 + 56);
          v151 = *(v649 + 64);
          v152 = *(v649 + 72) - v150;
          v153 = *(v649 + 80) - v151;
          v154 = v100 - 24;
          do
          {
            if (v100 < 0x19)
            {
              v157 = 0;
              v158 = v100;
              if (!v100)
              {
                goto LABEL_276;
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v156 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v155 = *BytePtr++;
                    v16 |= v155;
                  }

                  v156 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v156 - 24;
              v157 = ((v16 >> (v156 - 24)) & 0xFFFFFF) << v154;
              v158 = v100 - 24;
            }

            while (v15 < v158)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v159 = *BytePtr++;
                v16 |= v159;
              }

              v15 += 8;
            }

            v15 -= v158;
            LODWORD(v158) = (v16 >> v15) & (0xFFFFFFFF >> -v158);
LABEL_276:
            v160 = v150 + v152 * (v158 | v157) / v101;
            v161 = &x + 2 * v104;
            *v161 = v160;
            if (v100 < 0x19)
            {
              v164 = 0;
              v165 = v100;
              if (!v100)
              {
                goto LABEL_292;
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v163 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v162 = *BytePtr++;
                    v16 |= v162;
                  }

                  v163 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v163 - 24;
              v164 = ((v16 >> (v163 - 24)) & 0xFFFFFF) << v154;
              v165 = v100 - 24;
            }

            while (v15 < v165)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v166 = *BytePtr++;
                v16 |= v166;
              }

              v15 += 8;
            }

            v15 -= v165;
            LODWORD(v165) = (v16 >> v15) & (0xFFFFFFFF >> -v165);
LABEL_292:
            v161[1] = v151 + v153 * (v165 | v164) / v101;
            ++v104;
          }

          while (v104 != 12);
          do
          {
            if (v100 < 0x19)
            {
              v169 = v100;
              if (!v100)
              {
                goto LABEL_309;
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v168 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v167 = *BytePtr++;
                    v16 |= v167;
                  }

                  v168 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v168 - 24;
              v169 = v100 - 24;
            }

            while (v15 < v169)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v170 = *BytePtr++;
                v16 |= v170;
              }

              v15 += 8;
            }

            v15 -= v169;
LABEL_309:
            if (v100 < 0x19)
            {
              v173 = v100;
              if (!v100)
              {
                goto LABEL_325;
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v172 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v171 = *BytePtr++;
                    v16 |= v171;
                  }

                  v172 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v172 - 24;
              v173 = v100 - 24;
            }

            while (v15 < v173)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v174 = *BytePtr++;
                v16 |= v174;
              }

              v15 += 8;
            }

            v15 -= v173;
LABEL_325:
            ++v104;
          }

          while (v104 != 16);
          for (i = 0; i != 4; ++i)
          {
            if (v5)
            {
              v176 = 0;
              v177 = *(v649 + 88);
              while (v99 < 0x19)
              {
                v180 = 0;
                v181 = v99;
                if (v99)
                {
                  goto LABEL_340;
                }

LABEL_345:
                v8[i * v5 + v176] = *(v177 + 16 * v176) + (*(v177 + 16 * v176 + 8) - *(v177 + 16 * v176)) * (v181 | v180) / v103;
                if (++v176 == v5)
                {
                  goto LABEL_346;
                }
              }

              if (v15 > 0x17)
              {
                v179 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v178 = *BytePtr++;
                    v16 |= v178;
                  }

                  v179 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v179 - 24;
              v180 = ((v16 >> (v179 - 24)) & 0xFFFFFF) << (v99 - 24);
              v181 = v99 - 24;
LABEL_340:
              while (v15 < v181)
              {
                v16 <<= 8;
                if (BytePtr < v17)
                {
                  v182 = *BytePtr++;
                  v16 |= v182;
                }

                v15 += 8;
              }

              v15 -= v181;
              LODWORD(v181) = (v16 >> v15) & (0xFFFFFFFF >> -v181);
              goto LABEL_345;
            }

LABEL_346:
            ;
          }

LABEL_347:
          v659 = BytePtr;
          if ((v650 & 1) == 0)
          {
            v210 = 0;
            v211 = x;
            v212 = y;
            v213 = x;
            v214 = y;
            do
            {
              v216 = *(&cp1x + v210);
              v215 = *(&cp1y + v210);
              if (v216 > v213)
              {
                v217 = *(&cp1x + v210);
              }

              else
              {
                v217 = v213;
              }

              if (v216 < v211)
              {
                v211 = *(&cp1x + v210);
              }

              else
              {
                v213 = v217;
              }

              if (v215 >= v212)
              {
                if (v215 > v214)
                {
                  v214 = *(&cp1y + v210);
                }
              }

              else
              {
                v212 = *(&cp1y + v210);
              }

              v210 += 16;
            }

            while (v210 != 176);
            ClipBoundingBox = CGContextGetClipBoundingBox(v2);
            v782 = CGRectIntegral(ClipBoundingBox);
            v218 = v782.origin.x;
            v219 = v782.origin.y;
            v220 = v782.size.width;
            height = v782.size.height;
            v710 = v782;
            v782.origin.x = fmin(v782.size.width, v782.size.height);
            v222 = v782.origin.x < 0.0;
            if (v782.origin.x >= 0.0)
            {
              v233 = v782.origin.y + v782.size.height;
              v235 = v211 <= v218 + v782.size.width && v213 >= v218 && v212 <= v233;
              if (v235)
              {
                goto LABEL_395;
              }

              goto LABEL_710;
            }

            v223 = v218;
            rect = v782.origin.y;
            v783 = CGRectStandardize(v782);
            v224 = rect;
            if (v211 <= v783.origin.x + v783.size.width)
            {
              v225 = v218;
              v226 = v220;
              v227 = height;
              v228 = COERCE_DOUBLE(CGRectStandardize(*(&v224 - 1)));
              v229 = rect;
              if (v213 >= v228)
              {
                v230 = v218;
                v231 = v220;
                v232 = height;
                v784 = CGRectStandardize(*(&v229 - 1));
                v219 = rect;
                if (v212 <= v784.origin.y + v784.size.height)
                {
                  if (v222)
                  {
                    v785.origin.x = v218;
                    v785.origin.y = rect;
                    v785.size.width = v220;
                    v785.size.height = height;
                    v786 = CGRectStandardize(v785);
                    v219 = v786.origin.y;
                  }

LABEL_395:
                  if (v214 >= v219)
                  {
                    v709 = 0;
                    memset(v693, 0, sizeof(v693));
                    memset(v694, 0, sizeof(v694));
                    v695 = 0u;
                    v696 = 0u;
                    v697 = 0u;
                    v698 = 0u;
                    v699 = 0u;
                    v700 = 0u;
                    v701 = 0u;
                    v702 = 0u;
                    v703 = 0u;
                    v704 = 0u;
                    CGContextGetCTM(&__src, v2);
                    v681.f64[0] = __src.tx + __src.c * y + __src.a * x;
                    v681.f64[1] = __src.ty + __src.d * y + __src.b * x;
                    v682.f64[0] = __src.tx + __src.c * cp1y + __src.a * cp1x;
                    v682.f64[1] = __src.ty + __src.d * cp1y + __src.b * cp1x;
                    v683.f64[0] = __src.tx + __src.c * cp2y + __src.a * cp2x;
                    v683.f64[1] = __src.ty + __src.d * cp2y + __src.b * cp2x;
                    v684.f64[0] = __src.tx + __src.c * v732 + __src.a * v731;
                    v684.f64[1] = __src.ty + __src.d * v732 + __src.b * v731;
                    v685.f64[0] = __src.tx + __src.c * v734 + __src.a * v733;
                    v685.f64[1] = __src.ty + __src.d * v734 + __src.b * v733;
                    v686.f64[0] = __src.tx + __src.c * v736 + __src.a * v735;
                    v686.f64[1] = __src.ty + __src.d * v736 + __src.b * v735;
                    v687.f64[0] = __src.tx + __src.c * v738 + __src.a * v737;
                    v687.f64[1] = __src.ty + __src.d * v738 + __src.b * v737;
                    v688.f64[0] = __src.tx + __src.c * v740 + __src.a * v739;
                    v688.f64[1] = __src.ty + __src.d * v740 + __src.b * v739;
                    v689.f64[0] = __src.tx + __src.c * v742 + __src.a * v741;
                    v689.f64[1] = __src.ty + __src.d * v742 + __src.b * v741;
                    v690.f64[0] = __src.tx + __src.c * v744 + __src.a * v743;
                    v690.f64[1] = __src.ty + __src.d * v744 + __src.b * v743;
                    v691.f64[0] = __src.tx + __src.c * v746 + __src.a * v745;
                    v691.f64[1] = __src.ty + __src.d * v746 + __src.b * v745;
                    v692.f64[0] = __src.tx + __src.c * v748 + __src.a * v747;
                    v692.f64[1] = __src.ty + __src.d * v748 + __src.b * v747;
                    if (v629 <= 5)
                    {
                      if (v5)
                      {
                        v236 = v693;
                        v237 = v8;
                        v238 = v5;
                        do
                        {
                          *v236 = *v237;
                          v236[5] = *&v237[v5];
                          v236[10] = *&v237[v627];
                          v236[15] = *&v237[v626];
                          ++v237;
                          ++v236;
                          --v238;
                        }

                        while (v238);
                      }

                      v693[v5] = 0x3FF0000000000000;
                      v693[v5 + 5] = 0x3FF0000000000000;
                      v694[v5] = 0x3FF0000000000000;
                      v694[v5 + 5] = 0x3FF0000000000000;
                      __asm { FMOV            V27.2D, #3.0 }

                      v695 = v681;
                      v696 = vmulq_f64(vsubq_f64(v692, v681), _Q27);
                      __asm
                      {
                        FMOV            V7.2D, #5.0
                        FMOV            V22.2D, #-2.0
                      }

                      v697 = vmulq_f64(vsubq_f64(v682, v681), _Q27);
                      v698 = vsubq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vsubq_f64(vaddq_f64(vsubq_f64(v685, v692), v689), v682), _Q27), _Q7, v681), _Q22, vaddq_f64(v684, v690)), v687);
                      v699 = vmulq_f64(vaddq_f64(v681, vmlaq_f64(v691, _Q22, v692)), _Q27);
                      v700 = vmulq_f64(vaddq_f64(v681, vmlaq_f64(v683, _Q22, v682)), _Q27);
                      __asm { FMOV            V19.2D, #2.0 }

                      v638 = _Q19;
                      v708 = v629;
                      v701 = vmulq_f64(vmlaq_f64(vsubq_f64(vsubq_f64(vaddq_f64(v684, v686), v691), v681), _Q19, vsubq_f64(v692, v685)), _Q27);
                      v702 = vmulq_f64(vmlaq_f64(vsubq_f64(vsubq_f64(vaddq_f64(v690, v688), v683), v681), _Q19, vsubq_f64(v682, v689)), _Q27);
                      v703 = vmlaq_f64(vsubq_f64(v690, v681), _Q27, vsubq_f64(v692, v691));
                      v704 = vmlaq_f64(vsubq_f64(v684, v681), _Q27, vsubq_f64(v682, v683));
                      v641 = _Q27;
                      v705 = vmlaq_f64(vaddq_f64(v681, vsubq_f64(vsubq_f64(v687, v684), v690)), _Q27, vaddq_f64(v685, vsubq_f64(vsubq_f64(v691, v692), v686)));
                      v706 = vmlaq_f64(vaddq_f64(v681, vsubq_f64(vsubq_f64(v687, v690), v684)), _Q27, vaddq_f64(v689, vsubq_f64(vsubq_f64(v683, v682), v688)));
                      if (v629)
                      {
                        v245 = &v681;
                        v246 = v629;
                        do
                        {
                          v247 = v245[12].f64[0];
                          v245[34].f64[0] = v247;
                          v248 = v245[19].f64[1];
                          v245[36].f64[1] = v248 - v247;
                          v249 = v245[14].f64[1];
                          v245[39].f64[0] = v249 - v247;
                          v245[41].f64[1] = v247 + v245[17].f64[0] - v249 - v248;
                          v245 = (v245 + 8);
                          --v246;
                        }

                        while (v246);
                      }

                      v250 = malloc_type_malloc(0x30uLL, 0x1000040451B5BE8uLL);
                      __asm { FMOV            V0.2D, #0.5 }

                      v630 = _Q0;
                      v645 = v250;
                      if (v250)
                      {
                        v643 = malloc_type_malloc(0x78uLL, 0x100004000313F17uLL);
                        if (v643)
                        {
                          v252 = v708;
                          v253 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040AF517F5CuLL);
                          if (v253)
                          {
                            v254 = v253;
                            v253[1] = 0;
                            v253[3] = 0;
                            v253[5] = 0;
                            *v253 = v252;
                            v255 = malloc_type_malloc(0x1098uLL, 0x1000040FF89C88EuLL);
                            v254[1] = v255;
                            if (v255)
                            {
                              v256 = -4248;
                              do
                              {
                                v257 = v254[1] + v256;
                                *(v257 + 4312) = 0;
                                *(v257 + 4280) = 0uLL;
                                *(v257 + 4296) = 0uLL;
                                *(v257 + 4248) = 0uLL;
                                *(v257 + 4264) = 0uLL;
                                v256 += 72;
                              }

                              while (v256);
                              v254[2] = 0x3B00000000;
                              v258 = malloc_type_malloc(0x528uLL, 0x1000040A86A77D5uLL);
                              v254[3] = v258;
                              if (v258)
                              {
                                for (j = 0; j != 1320; j += 20)
                                {
                                  v260 = v254[3] + j;
                                  *(v260 + 16) = -1;
                                  *v260 = -1;
                                  *(v260 + 8) = -1;
                                }

                                v254[4] = 0x4200000000;
                                v261 = malloc_type_malloc(0xAE0uLL, 0x1000040EED21634uLL);
                                v254[5] = v261;
                                if (v261)
                                {
                                  v263 = 0;
                                  *&v264 = -1;
                                  *(&v264 + 1) = -1;
                                  do
                                  {
                                    v265 = v254[5] + v263;
                                    *v265 = v264;
                                    *(v265 + 16) = v264;
                                    *(v265 + 32) = -1;
                                    *(v265 + 40) = 1;
                                    v263 += 48;
                                  }

                                  while (v263 != 2784);
                                  v266 = 0;
                                  v254[7] = -1;
                                  v254[8] = -1;
                                  *(v254 + 4) = 9;
                                  *(v254 + 8) = 16;
                                  v254[6] = 0x3A00000008;
                                  *&v262 = 0;
                                  recta = v254;
                                  v651 = (v254 + 7);
                                  while (1)
                                  {
                                    v663 = v266;
                                    v268 = v701;
                                    v267 = v702;
                                    v270 = v705;
                                    v269 = v706;
                                    v272 = v695;
                                    v271 = v696;
                                    v273 = v697;
                                    v274 = v698;
                                    v275 = v699;
                                    v276 = v700;
                                    v277 = v703;
                                    v278 = v704;
                                    v279 = v708;
                                    if (v708)
                                    {
                                      v280 = &v749;
                                      p_src = &__src;
                                      v282 = &v707;
                                      v283 = v708;
                                      do
                                      {
                                        v284 = v282[5] + v282[15] * *&v262;
                                        p_src->a = *v282 + v282[10] * *&v262 + v284 * 0.0;
                                        p_src = (p_src + 8);
                                        v280->f64[0] = v284 * 0.5;
                                        v280 = (v280 + 8);
                                        ++v282;
                                        --v283;
                                      }

                                      while (v283);
                                    }

                                    v285 = 0;
                                    v286 = vmlaq_n_f64(v277, v270, *&v262);
                                    v287 = vmlaq_n_f64(v275, v268, *&v262);
                                    v288 = vmlaq_n_f64(v271, vmlaq_n_f64(v274, vmlaq_n_f64(v267, v269, *&v262), *&v262), *&v262);
                                    v289 = vmlaq_n_f64(v272, vmlaq_n_f64(v273, vmlaq_n_f64(v276, v278, *&v262), *&v262), *&v262);
                                    v290 = vmulq_f64(vmulq_f64(v286, v641), v630);
                                    v291 = vmulq_f64(vmlaq_f64(v290, v638, v287), v630);
                                    v292 = vmulq_f64(vaddq_f64(v290, v290), v630);
                                    v293 = vmlaq_f64(v289, 0, vmlaq_f64(v288, 0, vmlaq_f64(v287, 0, v286)));
                                    v294 = vmlaq_f64(vmulq_f64(vmlaq_f64(v288, v630, vmlaq_f64(v287, v630, v286)), v630), 0, vmlaq_f64(v291, 0, v290));
                                    v295 = vmlaq_f64(vmulq_f64(vmlaq_f64(v291, v630, v290), v630), 0, v292);
                                    v660 = vmulq_f64(v292, v630);
                                    v297 = v643;
                                    v296 = v645;
                                    *v655 = v262;
                                    do
                                    {
                                      *v296 = v293;
                                      if (v279)
                                      {
                                        v298 = &__src;
                                        v670 = v294;
                                        *widthc = v293;
                                        v667 = v295;
                                        memcpy(v297, &__src, 8 * v279);
                                        v295 = v667;
                                        v294 = v670;
                                        v293 = *widthc;
                                        v262 = *v655;
                                        v299 = &v749;
                                        v300 = v279;
                                        do
                                        {
                                          v301 = v299->f64[0];
                                          v299 = (v299 + 8);
                                          v298->a = v301 + v298->a;
                                          v298 = (v298 + 8);
                                          --v300;
                                        }

                                        while (v300);
                                      }

                                      v293 = vaddq_f64(v293, v294);
                                      v294 = vaddq_f64(v294, v295);
                                      v295 = vaddq_f64(v660, v295);
                                      ++v285;
                                      ++v296;
                                      v297 += 40;
                                    }

                                    while (v285 != 3);
                                    v302 = 0;
                                    v303 = v663;
                                    v304 = 3 * v663;
                                    v305 = 2 * v663;
                                    v306 = 3 * v663 + 1;
                                    v307 = 2 * v663 + 2;
                                    v308 = 3 * v663 + 3;
                                    width = 2 * v663 + 12;
                                    v309 = 2 * v663 + 4;
                                    v310 = 2 * (v663 + 1);
                                    v311 = *&v262 <= 1.0 ? *&v262 : 1.0;
                                    v312 = 0.0;
                                    v313 = v643;
                                    v314 = v645;
                                    v315 = recta;
                                    while (1)
                                    {
                                      v316 = v302 + v304;
                                      v317 = *(v315 + 1) + 72 * (v302 + v304);
                                      *v317 = *v314;
                                      if (v312 <= 1.0)
                                      {
                                        v318 = v312;
                                      }

                                      else
                                      {
                                        v318 = 1.0;
                                      }

                                      *(v317 + 16) = v318;
                                      *(v317 + 24) = v311;
                                      v319 = *v315;
                                      if (v319)
                                      {
                                        v320 = 0;
                                        v321 = v317 + 32;
                                        v322 = 8 * v319;
                                        do
                                        {
                                          *(v321 + v320) = *&v313[v320];
                                          v320 += 8;
                                        }

                                        while (v322 != v320);
                                      }

                                      if (v302 == 2)
                                      {
                                        break;
                                      }

                                      v323 = *(v315 + 3);
                                      v324 = v302 + v305;
                                      v325 = (v323 + 20 * (v302 + v305));
                                      v326 = v306 + v302;
                                      *v325 = v316;
                                      v325[1] = v306 + v302;
                                      if (v303 == 2)
                                      {
                                        v325[2] = -1;
                                        v325[3] = 3 * (v302 + v307);
                                        v327 = v302 + 1;
                                      }

                                      else
                                      {
                                        v328 = 3 * v324;
                                        v325[2] = 3 * v324;
                                        if (v303)
                                        {
                                          v325[3] = 3 * (v302 + v307);
                                          v329 = v323 + 20 * v316;
                                          *(v329 + 120) = v302 + v308;
                                          *(v329 + 124) = v316;
                                          v330 = v302 + v308;
                                        }

                                        else
                                        {
                                          v325[3] = -1;
                                          v331 = v323 + 20 * v316;
                                          v330 = v302 + 3;
                                          *(v331 + 120) = v302 + 3;
                                          *(v331 + 124) = v316;
                                        }

                                        v332 = v323 + 20 * v316;
                                        v333 = v328 + 11;
                                        v334 = 3 * v302 + 12;
                                        if (!v663)
                                        {
                                          v334 = -1;
                                        }

                                        if (!v302)
                                        {
                                          v333 = -1;
                                        }

                                        *(v332 + 128) = v328 + 2;
                                        *(v332 + 132) = v333;
                                        v335 = (v323 + 20 * (width + v302));
                                        *v335 = v326;
                                        v335[1] = v330;
                                        v336 = v328 + 1;
                                        v337 = v302 + v309;
                                        v338 = 3 * (v302 + v309) + 1;
                                        v335[2] = v336;
                                        v335[3] = v338;
                                        v339 = *(recta + 5);
                                        v340 = (v339 + 48 * v324);
                                        *v340 = v316;
                                        v340[1] = v326;
                                        v340[2] = v330;
                                        v340[3] = 2 * v324;
                                        v341 = 2 * (width + v302);
                                        v340[4] = v341;
                                        v340[5] = 2 * v316 + 12;
                                        v340[6] = v334;
                                        v340[7] = v338;
                                        v315 = recta;
                                        if (v302)
                                        {
                                          v342 = 3 * v309 + 2;
                                        }

                                        else
                                        {
                                          v342 = -1;
                                        }

                                        v340[8] = v342;
                                        v343 = recta[14];
                                        if (v343 == -1)
                                        {
                                          recta[15] = v324;
                                        }

                                        v340[9] = v343;
                                        *v651 = v324;
                                        v340[10] = 1;
                                        v340[11] = 7 - v324;
                                        v344 = (v339 + 48 * v337);
                                        v327 = v302 + 1;
                                        *v344 = v302 + 1 + v308;
                                        v344[1] = v302 + v308;
                                        v345 = v302 + 1 + v304;
                                        v344[2] = v345;
                                        v344[3] = (2 * (v302 + v310)) | 1;
                                        v344[4] = v341 | 1;
                                        v344[5] = 2 * v345 + 13;
                                        v346 = 3 * (v302 + v310);
                                        if (v663 == 1)
                                        {
                                          v346 = -1;
                                        }

                                        v344[6] = v346;
                                        v344[7] = v336;
                                        if (v302 == 1)
                                        {
                                          v347 = -1;
                                        }

                                        else
                                        {
                                          v347 = 3 * (v327 + v305) + 2;
                                        }

                                        v344[8] = v347;
                                        v348 = *v651;
                                        if (*v651 == -1)
                                        {
                                          recta[15] = v337;
                                        }

                                        v344[9] = v348;
                                        *v651 = v337;
                                        v344[10] = 1;
                                        v344[11] = 7 - v337;
                                        v2 = v654;
                                        v303 = v663;
                                      }

                                      v312 = v312 + 0.5;
                                      ++v314;
                                      v313 += 40;
                                      v302 = v327;
                                    }

                                    if (v303 == 2)
                                    {
                                      break;
                                    }

                                    v349 = (*(v315 + 3) + 20 * v316);
                                    v349[30] = v304 + 5;
                                    v349[31] = v316;
                                    v349[32] = -1;
                                    v349[33] = 3 * v307 + 11;
                                    *&v262 = *&v262 + 0.5;
                                    v266 = v663 + 1;
                                  }

                                  free(v643);
                                  free(v645);
LABEL_464:
                                  *(v315 + 9) = 0;
                                  v350 = v315[14];
                                  for (rectb = v315; v350 != -1; v350 = v315[14])
                                  {
                                    v351 = *(v315 + 5);
                                    v352 = (v351 + 48 * v350);
                                    v315[14] = v352[9];
                                    v353 = *(v315 + 1);
                                    v354 = (v353 + 72 * *v352);
                                    v355 = *v354;
                                    v356 = v354[1];
                                    v357 = (v353 + 72 * v352[1]);
                                    v358 = *v357;
                                    v359 = v357[1];
                                    v360 = (v353 + 72 * v352[2]);
                                    if (fabs(((v358 - v355) * (v359 - v356) + (*v360 - v358) * (v359 - v356 + v360[1] - v356) + (v355 - *v360) * (v360[1] - v356)) * 0.5) >= 8.0)
                                    {
                                      v361 = 0;
                                      v362 = 0;
                                      v363 = v352 + 6;
                                      do
                                      {
                                        v362 |= v363[v361++] == -1;
                                      }

                                      while (v361 != 3);
                                      if ((*(v352 + 41) < 7) | v362 & 1)
                                      {
                                        v364 = 0;
                                        v749 = 0uLL;
                                        do
                                        {
                                          v365 = v363[v364];
                                          if (v365 == -1)
                                          {
                                            v381 = v364 + 1;
                                          }

                                          else
                                          {
                                            v366 = v365 / 3;
                                            v367 = v365 % 3;
                                            v368 = (v364 - 1);
                                            if (!v364)
                                            {
                                              v368 = 2;
                                            }

                                            v369 = v351 + 48 * v366;
                                            v370 = (v353 + 72 * v352[v368]);
                                            v371 = *v370;
                                            v372 = v370[1];
                                            v373 = v367 + 2;
                                            v374 = v367 - 1;
                                            if (v373 < 3)
                                            {
                                              v374 = v373;
                                            }

                                            v375 = (v353 + 72 * *(v369 + 4 * v374));
                                            v376 = *v375;
                                            v377 = v375[1];
                                            v378 = (v353 + 72 * v352[v364]);
                                            v379 = *v378;
                                            v380 = v378[1];
                                            v381 = v364 + 1;
                                            v382 = (v364 + 1);
                                            if (v364 == 2)
                                            {
                                              v382 = 0;
                                            }

                                            v383 = (v353 + 72 * v352[v382]);
                                            v384 = *v383 - v379;
                                            v385 = v383[1] - v380;
                                            v386 = v372 - v380;
                                            if (fabs((v371 - v379) * (v377 - v380 - v385) + v384 * (v386 - (v377 - v380)) + (v376 - v379) * (v385 - v386)) <= 2.22507386e-308)
                                            {
                                              goto LABEL_510;
                                            }

                                            if ((v376 - v379) * v385 - (v377 - v380) * v384 >= 0.0 == v384 * v386 - v385 * (v371 - v379) < 0.0)
                                            {
                                              ++rectb[19];
                                              goto LABEL_506;
                                            }
                                          }

                                          v364 = v381;
                                        }

                                        while (v381 != 3);
                                        v387 = 0;
                                        LODWORD(v364) = -1;
                                        v388 = 0.0;
                                        do
                                        {
                                          v389 = *(rectb + 1);
                                          v390 = (v389 + 72 * v352[v387]);
                                          if (v387 == 2)
                                          {
                                            v391 = 0;
                                          }

                                          else
                                          {
                                            v391 = v387 + 1;
                                          }

                                          v392 = (v389 + 72 * v352[v391]);
                                          v393 = v387 + 1;
                                          v394 = (*v390 + *v392) * 0.5;
                                          v395 = (v390[1] + v392[1]) * 0.5;
                                          Coons(&v681, &v749, &__src.a, (v390[2] + v392[2]) * 0.5, (v390[3] + v392[3]) * 0.5);
                                          v396 = (v749.f64[1] - v395) * (v749.f64[1] - v395);
                                          if (v396 + (v749.f64[0] - v394) * (v749.f64[0] - v394) >= v388)
                                          {
                                            LODWORD(v364) = v387;
                                            v388 = v396 + (v749.f64[0] - v394) * (v749.f64[0] - v394);
                                          }

                                          ++v387;
                                        }

                                        while (v393 != 3);
                                        if (v364 != -1 && v388 > 0.49)
                                        {
                                          ++rectb[18];
LABEL_506:
                                          v749 = 0uLL;
                                          v671 = v352[v364];
                                          v409 = (v364 + 1) % 3;
                                          v668 = v352[v409];
                                          v664 = v352[(v364 + 2) % 3];
                                          v410 = *(rectb + 5);
                                          v411 = v363[v364];
                                          v637 = (v364 + 2) % 3;
                                          v661 = v411;
                                          if (v411 == -1)
                                          {
                                            v639 = 0;
                                            widtha = 0;
                                            v644 = -1;
                                            v652 = -1;
                                          }

                                          else
                                          {
                                            v412 = v411 / 3;
                                            v413 = v411 % 3;
                                            v652 = v412;
                                            v414 = v413 + 2;
                                            v639 = v413;
                                            if ((v413 + 2) >= 3)
                                            {
                                              v414 = v413 - 1;
                                            }

                                            widtha = v410 + 48 * v412;
                                            v644 = *(widtha + 4 * v414);
                                          }

                                          v642 = v364;
                                          v646 = 0xAAAAAAAAAAAAAAABLL * ((v352 - v410) >> 4);
                                          *v656 = vmulq_f64(vaddq_f64(*(*(rectb + 1) + 72 * v671 + 16), *(*(rectb + 1) + 72 * v668 + 16)), v630);
                                          Coons(&v681, &v749, &__src.a, *v656, *&v656[1]);
                                          v415 = &v722;
                                          v416 = 1;
                                          do
                                          {
                                            v417 = v416;
                                            AllocateCoonsMeshTriangle(rectb);
                                            v416 = 0;
                                            v418 = *(rectb + 5);
                                            *v415 = -1431655765 * ((v419 - v418) >> 4);
                                            v415 = &v721;
                                          }

                                          while ((v417 & 1) != 0);
                                          v724 = 0;
                                          v723 = 0;
                                          if (v661 == -1)
                                          {
                                            v720 = -1;
                                            v719 = -1;
                                          }

                                          else
                                          {
                                            v420 = &v724;
                                            v421 = &v720;
                                            v422 = 1;
                                            do
                                            {
                                              v423 = v422;
                                              AllocateCoonsMeshTriangle(rectb);
                                              v422 = 0;
                                              *v420 = v424;
                                              v418 = *(rectb + 5);
                                              *v421 = -1431655765 * ((v424 - v418) >> 4);
                                              v420 = &v723;
                                              v421 = &v719;
                                            }

                                            while ((v423 & 1) != 0);
                                          }

                                          v425 = v722;
                                          v426 = v721;
                                          if (v661 != -1)
                                          {
                                            v724 = (v418 + 48 * v720);
                                            v723 = (v418 + 48 * v719);
                                            widtha = v418 + 48 * v652;
                                          }

                                          v427 = v749;
                                          v428 = rectb[4];
                                          v429 = *(rectb + 1);
                                          if (v428 == rectb[5])
                                          {
                                            v635 = v749;
                                            v429 = malloc_type_realloc(v429, 72 * (v428 + 50), 0x1000040FF89C88EuLL);
                                            *(rectb + 1) = v429;
                                            if (v429)
                                            {
                                              v428 = rectb[4];
                                              rectb[5] += 50;
                                              v427 = v635;
                                              goto LABEL_526;
                                            }

                                            v631 = 0;
                                          }

                                          else
                                          {
LABEL_526:
                                            rectb[4] = v428 + 1;
                                            v430 = &v429[72 * v428];
                                            *v430 = v427;
                                            v430[1] = *v656;
                                            v431 = *rectb;
                                            v631 = v430;
                                            if (v431)
                                            {
                                              v432 = 72 * v428 + 32;
                                              v433 = &__src;
                                              do
                                              {
                                                a = v433->a;
                                                v433 = (v433 + 8);
                                                *&v429[v432] = a;
                                                v432 += 8;
                                                --v431;
                                              }

                                              while (v431);
                                            }
                                          }

                                          v634 = v425;
                                          v636 = v426;
                                          v435 = v418 + 48 * v425;
                                          v436 = v418 + 48 * v426;
                                          v657 = v418 + 48 * v646;
                                          CoonsMeshEdge = AllocateCoonsMeshEdge(rectb);
                                          v632 = *(rectb + 3);
                                          v633 = CoonsMeshEdge;
                                          v438 = &v718;
                                          v439 = 1;
                                          do
                                          {
                                            v440 = v439;
                                            v441 = AllocateCoonsMeshEdge(rectb);
                                            v439 = 0;
                                            v442 = *(rectb + 3);
                                            *v438 = -858993459 * ((v441 - v442) >> 2);
                                            v438 = &v717;
                                          }

                                          while ((v440 & 1) != 0);
                                          if (v661 == -1)
                                          {
                                            v444 = 0;
                                            v443 = 0;
                                          }

                                          else
                                          {
                                            v443 = AllocateCoonsMeshEdge(rectb);
                                            v442 = *(rectb + 3);
                                            v444 = -858993459 * ((v443 - v442) >> 2);
                                          }

                                          v445 = v639;
                                          v446 = v718;
                                          v447 = v717;
                                          if (v661 == -1)
                                          {
                                            v448 = v443;
                                          }

                                          else
                                          {
                                            v448 = (v442 + 20 * v444);
                                          }

                                          v640 = v444;
                                          if (widtha)
                                          {
                                            v449 = widtha + 12;
                                            if (*(v657 + 4 * v642 + 12) >= 0)
                                            {
                                              v450 = *(v657 + 4 * v642 + 12) & 1;
                                            }

                                            else
                                            {
                                              v450 = -(*(v657 + 4 * v642 + 12) & 1);
                                            }

                                            if (*(widtha + 12 + 4 * v445) >= 0)
                                            {
                                              v451 = *(widtha + 12 + 4 * v445) & 1;
                                            }

                                            else
                                            {
                                              v451 = -(*(widtha + 12 + 4 * v445) & 1);
                                            }

                                            v452 = widtha + 24;
                                            v453 = v632;
                                            v454 = 0;
                                            if (v450 == v451)
                                            {
                                              v455 = v445 + 2;
                                              v456 = &v716;
                                              v457 = &v714;
                                              v458 = &v712;
                                              v459 = 1;
                                              do
                                              {
                                                v460 = v459;
                                                v461 = (v455 + v454) % 3;
                                                v462 = *(v449 + 4 * v461);
                                                *v456 = v462 / 2;
                                                *v457 = ((v462 + (v462 >> 31)) & 0xFFFFFFFE) - v462 + 1;
                                                *v458 = *(v452 + 4 * v461);
                                                v454 = -1;
                                                v456 = &v715;
                                                v457 = &v713;
                                                v458 = &v711;
                                                v459 = 0;
                                              }

                                              while ((v460 & 1) != 0);
                                            }

                                            else
                                            {
                                              v463 = v445 + 1;
                                              v464 = &v716;
                                              v465 = &v714;
                                              v466 = &v712;
                                              v467 = 1;
                                              do
                                              {
                                                v468 = v467;
                                                v469 = (v463 + v454) % 3;
                                                v470 = *(v449 + 4 * v469);
                                                *v464 = v470 / 2;
                                                *v465 = v470 % 2;
                                                v471 = *(v452 + 4 * v469);
                                                v454 = 1;
                                                *v466 = v471;
                                                v464 = &v715;
                                                v465 = &v713;
                                                v466 = &v711;
                                                v467 = 0;
                                              }

                                              while ((v468 & 1) != 0);
                                            }
                                          }

                                          else
                                          {
                                            v716 = -1;
                                            v715 = -1;
                                            v453 = v632;
                                          }

                                          v472 = 954437177 * ((v631 - v429) >> 3);
                                          v473 = 0xCCCCCCCCCCCCCCCDLL * ((v633 - v453) >> 2);
                                          v474 = (v442 + 20 * v446);
                                          v475 = (v442 + 20 * v447);
                                          v476 = v657 + 12;
                                          v477 = *(v657 + 12 + 4 * v637);
                                          v478 = *(v657 + 24 + 4 * v637);
                                          v479 = (v442 + 20 * v473);
                                          v480 = *(v657 + 12 + 4 * v409);
                                          v481 = *(v657 + 24 + 4 * v409);
                                          *v479 = v472;
                                          v479[1] = v664;
                                          v482 = 3 * v634;
                                          v483 = 3 * v634 + 1;
                                          v484 = 3 * v636;
                                          v485 = 3 * v636 + 1;
                                          v479[2] = v483;
                                          v479[3] = v485;
                                          *v474 = v671;
                                          v474[1] = v472;
                                          v486 = 3 * v720;
                                          if (v720 == -1)
                                          {
                                            v487 = -1;
                                          }

                                          else
                                          {
                                            v487 = v486 + 1;
                                          }

                                          v474[2] = v482;
                                          v474[3] = v487;
                                          *v475 = v472;
                                          v475[1] = v668;
                                          v488 = v484 + 2;
                                          v489 = 3 * v719;
                                          if (v719 == -1)
                                          {
                                            v490 = -1;
                                          }

                                          else
                                          {
                                            v490 = v489 + 1;
                                          }

                                          v475[2] = v488;
                                          v475[3] = v490;
                                          if (widtha)
                                          {
                                            *v448 = v644;
                                            v448[1] = v472;
                                            v448[2] = v486;
                                            v448[3] = v489 + 2;
                                          }

                                          v491 = v477 / 2;
                                          *v435 = v671;
                                          *(v435 + 4) = v472;
                                          v492 = 2 * v446;
                                          *(v435 + 8) = v664;
                                          *(v435 + 12) = 2 * v446;
                                          v493 = 2 * v473;
                                          *(v435 + 16) = v493;
                                          v494 = (v442 + 20 * (v477 / 2));
                                          if (*v494 == v664)
                                          {
                                            v495 = 2 * v491;
                                            goto LABEL_565;
                                          }

                                          if (v494[1] == v664)
                                          {
                                            v495 = (2 * v491) | 1;
LABEL_565:
                                            *(v435 + 20) = v495;
                                          }

                                          *(v435 + 24) = v487;
                                          *(v435 + 28) = v485;
                                          *(v435 + 32) = v478;
                                          v496 = *(rectb + 5);
                                          v497 = -1431655765 * ((v435 - v496) >> 4);
                                          *(v435 + 36) = -1;
                                          if (rectb[14] == -1)
                                          {
                                            rectb[14] = v497;
                                          }

                                          else
                                          {
                                            *(v496 + 48 * rectb[15] + 36) = v497;
                                          }

                                          rectb[15] = v497;
                                          *(v435 + 40) = 1;
                                          v498 = *(v657 + 41) + 1;
                                          *(v435 + 41) = v498;
                                          *(v435 + 42) += 1 << (16 - v498);
                                          if (v478 != -1)
                                          {
                                            *(v496 + 48 * (v478 / 3) + 4 * (v478 % 3) + 24) = v482 + 2;
                                          }

                                          v499 = v442 + 20 * v491;
                                          v502 = *(v499 + 8);
                                          v500 = (v499 + 8);
                                          v501 = v502;
                                          if (v502 != -1 && v501 / 3 == v646)
                                          {
                                            v2 = v654;
                                            goto LABEL_576;
                                          }

                                          v504 = v500[1];
                                          ++v500;
                                          v503 = v504;
                                          v2 = v654;
                                          if (v504 != -1 && v503 / 3 == v646)
                                          {
LABEL_576:
                                            *v500 = v482 + 2;
                                          }

                                          v505 = v480 / 2;
                                          *v436 = v668;
                                          *(v436 + 4) = v664;
                                          *(v436 + 8) = v472;
                                          v506 = (v442 + 20 * v505);
                                          if (*v506 == v668)
                                          {
                                            v507 = 2 * v505;
                                            v508 = widtha;
                                            goto LABEL_581;
                                          }

                                          v508 = widtha;
                                          if (v506[1] == v668)
                                          {
                                            v507 = (2 * v505) | 1;
LABEL_581:
                                            *(v436 + 12) = v507;
                                          }

                                          v509 = 2 * v447;
                                          *(v436 + 16) = v493 | 1;
                                          *(v436 + 20) = v509;
                                          *(v436 + 24) = v481;
                                          *(v436 + 28) = v483;
                                          v510 = -1431655765 * ((v436 - v496) >> 4);
                                          *(v436 + 32) = v490;
                                          *(v436 + 36) = -1;
                                          if (rectb[14] == -1)
                                          {
                                            rectb[14] = v510;
                                          }

                                          else
                                          {
                                            *(v496 + 48 * rectb[15] + 36) = v510;
                                          }

                                          rectb[15] = v510;
                                          *(v436 + 40) = 1;
                                          *(v436 + 41) = *(v657 + 41) + 1;
                                          if (v481 != -1)
                                          {
                                            *(v496 + 48 * (v481 / 3) + 4 * (v481 % 3) + 24) = v484;
                                          }

                                          v511 = v442 + 20 * v505;
                                          v514 = *(v511 + 8);
                                          v512 = (v511 + 8);
                                          v513 = v514;
                                          if (v514 != -1 && v513 / 3 == v646)
                                          {
                                            v315 = rectb;
                                            goto LABEL_592;
                                          }

                                          v516 = v512[1];
                                          ++v512;
                                          v515 = v516;
                                          v315 = rectb;
                                          if (v516 != -1 && v515 / 3 == v646)
                                          {
LABEL_592:
                                            *v512 = v484;
                                          }

                                          v517 = v724;
                                          if (v724)
                                          {
                                            *v724 = v644;
                                            v517[1] = v472;
                                            v517[2] = v671;
                                            v517[3] = 2 * v640;
                                            v518 = v716;
                                            v519 = v714 + 2 * v716;
                                            v517[4] = v492 | 1;
                                            v517[5] = v519;
                                            v517[6] = v489 + 2;
                                            v517[7] = v482;
                                            v520 = v712;
                                            v517[8] = v712;
                                            if (*(v508 + 40) == 1)
                                            {
                                              v521 = -1431655765 * ((v517 - v496) >> 4);
                                              v517[9] = -1;
                                              if (v315[14] == -1)
                                              {
                                                v315[14] = v521;
                                              }

                                              else
                                              {
                                                *(v496 + 48 * v315[15] + 36) = v521;
                                              }

                                              v315[15] = v521;
                                              v522 = 1;
                                            }

                                            else
                                            {
                                              v522 = 0;
                                              v517[9] = -1;
                                            }

                                            *(v517 + 40) = v522;
                                            *(v517 + 41) = *(v508 + 41) + 1;
                                            if (v520 != -1)
                                            {
                                              *(v496 + 48 * (v520 / 3) + 4 * (v520 % 3) + 24) = v486 + 2;
                                            }

                                            v523 = v442 + 20 * v518;
                                            v526 = *(v523 + 8);
                                            v525 = (v523 + 8);
                                            v524 = v526;
                                            if (v526 != -1 && v524 / 3 == v652 || (v528 = v525[1], ++v525, v527 = v528, v528 != -1) && v527 / 3 == v652)
                                            {
                                              *v525 = v486 + 2;
                                            }
                                          }

                                          v529 = v723;
                                          if (v723)
                                          {
                                            *v723 = v644;
                                            v529[1] = v668;
                                            v530 = v715;
                                            v531 = v713 + 2 * v715;
                                            v529[2] = v472;
                                            v529[3] = v531;
                                            v529[4] = v509 | 1;
                                            v529[5] = (2 * v640) | 1;
                                            v532 = v711;
                                            v529[6] = v711;
                                            v529[7] = v488;
                                            v529[8] = v486;
                                            if (*(v508 + 40) == 1)
                                            {
                                              v533 = -1431655765 * ((v529 - v496) >> 4);
                                              v529[9] = -1;
                                              if (v315[14] == -1)
                                              {
                                                v315[14] = v533;
                                              }

                                              else
                                              {
                                                *(v496 + 48 * v315[15] + 36) = v533;
                                              }

                                              v315[15] = v533;
                                              v537 = 1;
                                            }

                                            else
                                            {
                                              v537 = 0;
                                              v529[9] = -1;
                                            }

                                            *(v529 + 40) = v537;
                                            *(v529 + 41) = *(v508 + 41) + 1;
                                            if (v532 != -1)
                                            {
                                              *(v496 + 48 * (v532 / 3) + 4 * (v532 % 3) + 24) = v489;
                                            }

                                            v538 = v442 + 20 * v530;
                                            v541 = *(v538 + 8);
                                            v539 = (v538 + 8);
                                            v540 = v541;
                                            if (v541 != -1 && v540 / 3 == v652 || (v543 = v539[1], ++v539, v542 = v543, v543 != -1) && v542 / 3 == v652)
                                            {
                                              *v539 = v489;
                                            }

LABEL_623:
                                            v536 = -1431655765 * ((v508 - v496) >> 4);
                                            v544 = v315[14];
                                            if (v544 != -1)
                                            {
                                              v545 = 0xFFFFFFFFLL;
                                              do
                                              {
                                                v546 = v544;
                                                v544 = *(v496 + 48 * v544 + 36);
                                                if (v546 == v536)
                                                {
                                                  if (v545 == -1)
                                                  {
                                                    v315[14] = v544;
                                                  }

                                                  else
                                                  {
                                                    *(v496 + 48 * v545 + 36) = v544;
                                                  }

                                                  if (v315[15] == v536)
                                                  {
                                                    v315[15] = v545;
                                                  }

                                                  v546 = v545;
                                                }

                                                v545 = v546;
                                              }

                                              while (v544 != -1);
                                            }

                                            v547 = *(v476 + 4 * v642);
                                            v548 = v442 + 20 * (v547 / 2);
                                            *(v548 + 16) = v315[17];
                                            v315[17] = v547 / 2;
                                            *v548 = 0xC0000000CLL;
                                            *(v657 + 36) = v315[16];
                                            v315[16] = -1431655765 * ((v657 - v496) >> 4);
                                            *(v657 + 8) = -13;
                                            *v657 = 0xC0000000CLL;
                                          }

                                          else
                                          {
                                            if (v508)
                                            {
                                              goto LABEL_623;
                                            }

                                            v534 = *(v476 + 4 * v642) / 2;
                                            v535 = v442 + 20 * v534;
                                            *(v535 + 16) = v315[17];
                                            v315[17] = v534;
                                            *v535 = 0xC0000000CLL;
                                            v536 = -1431655765 * ((v657 - v496) >> 4);
                                            v508 = v657;
                                          }

                                          *(v508 + 36) = v315[16];
                                          v315[16] = v536;
                                          *(v508 + 8) = -13;
                                          *v508 = 0xC0000000CLL;
                                          continue;
                                        }

                                        v397 = 0;
                                        v398 = *(rectb + 1) + 32;
                                        LODWORD(v364) = -1;
                                        v399 = 0.0;
                                        do
                                        {
                                          v400 = v397 + 1;
                                          if (v397 == 2)
                                          {
                                            v401 = 0;
                                          }

                                          else
                                          {
                                            v401 = v397 + 1;
                                          }

                                          if (*rectb)
                                          {
                                            v402 = (v398 + 72 * v352[v401]);
                                            v403 = (v398 + 72 * v352[v397]);
                                            v404 = *rectb;
                                            do
                                            {
                                              v405 = *v403++;
                                              v406 = v405;
                                              v407 = *v402++;
                                              v408 = v406 - v407;
                                              if (v408 < 0.0)
                                              {
                                                v408 = -v408;
                                              }

                                              if (v408 >= v399)
                                              {
                                                LODWORD(v364) = v397;
                                                v399 = v408;
                                              }

                                              --v404;
                                            }

                                            while (v404);
                                          }

                                          ++v397;
                                        }

                                        while (v400 != 3);
                                        if (v364 != -1 && v399 > 0.1)
                                        {
                                          goto LABEL_506;
                                        }
                                      }
                                    }

LABEL_510:
                                    *(v352 + 40) = 0;
                                    v315 = rectb;
                                  }

                                  v549 = v315[12];
                                  if (v549)
                                  {
                                    LODWORD(v550) = 0;
                                    v551 = *(v315 + 5);
                                    do
                                    {
                                      v552 = *v551;
                                      v551 += 12;
                                      if (v552 == -13)
                                      {
                                        v550 = v550;
                                      }

                                      else
                                      {
                                        v550 = (v550 + 1);
                                      }

                                      --v549;
                                    }

                                    while (v549);
                                    v653 = v550;
                                    v658 = malloc_type_malloc(8 * v550, 0x2004093837F09uLL);
                                    if (v658)
                                    {
                                      v553 = v315[12];
                                      if (v553)
                                      {
                                        v554 = 0;
                                        v555 = *(v315 + 5);
                                        do
                                        {
                                          if (*v555 != -13)
                                          {
                                            v658[v554++] = v555;
                                          }

                                          v555 += 12;
                                          --v553;
                                        }

                                        while (v553);
                                      }

                                      v779 = 0uLL;
                                      v778 = 0uLL;
                                      v777 = 0uLL;
                                      v776 = 0uLL;
                                      v775 = 0uLL;
                                      v774 = 0uLL;
                                      v773 = 0uLL;
                                      v772 = 0uLL;
                                      v771 = 0uLL;
                                      v770 = 0uLL;
                                      v769 = 0uLL;
                                      v768 = 0uLL;
                                      v767 = 0uLL;
                                      v766 = 0uLL;
                                      v765 = 0uLL;
                                      v764 = 0uLL;
                                      v763 = 0uLL;
                                      v762 = 0uLL;
                                      v761 = 0uLL;
                                      v760 = 0uLL;
                                      v759 = 0uLL;
                                      v758 = 0uLL;
                                      v757 = 0uLL;
                                      v756 = 0uLL;
                                      v755 = 0uLL;
                                      v754 = 0uLL;
                                      v753 = 0uLL;
                                      v752 = 0uLL;
                                      v751 = 0uLL;
                                      v665 = &v658[v653];
                                      memset(&__src, 0, sizeof(__src));
                                      if (v653 >= 0xB)
                                      {
                                        v594 = v665 - 1;
                                        v662 = &__src;
                                        tx = *&v658;
LABEL_679:
                                        while (2)
                                        {
                                          v669 = (*&tx + 16);
                                          v596 = v594;
                                          widthb = tx;
                                          while (1)
                                          {
                                            while (1)
                                            {
                                              v597 = (4 * (((v596 - *&tx) >> 3) + ((v596 - *&tx) >> 63))) & 0xFFFFFFFFFFFFFFF8;
                                              v598 = *(*&tx + 8);
                                              *(*&tx + 8) = *(*&tx + v597);
                                              *(*&tx + v597) = v598;
                                              v599 = *(v315 + 1);
                                              v600 = **&tx;
                                              v601 = *(*&tx + 8);
                                              v602 = TriangleGreater(v599, **&tx, v601);
                                              v603 = *v596;
                                              if (v602)
                                              {
                                                if (TriangleGreater(v599, *v596, v601))
                                                {
                                                  if (TriangleGreater(v599, v600, v603))
                                                  {
                                                    *v596 = v600;
                                                    **&tx = *(*&tx + 8);
                                                    *(*&tx + 8) = v603;
                                                  }

                                                  else
                                                  {
                                                    **&tx = vextq_s8(**&tx, **&tx, 8uLL);
                                                  }
                                                }

                                                else
                                                {
                                                  *v596 = v600;
                                                  **&tx = v603;
                                                }
                                              }

                                              else if (TriangleGreater(v599, v601, *v596))
                                              {
                                                if (TriangleGreater(v599, v600, v603))
                                                {
                                                  **&tx = v603;
                                                  *v596 = v600;
                                                  *v596 = *(*&tx + 8);
                                                  *(*&tx + 8) = v600;
                                                }

                                                else
                                                {
                                                  *(*&tx + 8) = v603;
                                                  *v596 = v601;
                                                }
                                              }

                                              v604 = v669;
                                              v672 = v596;
                                              while (1)
                                              {
                                                v605 = *(rectb + 1);
                                                v606 = *(*&widthb + 8);
                                                do
                                                {
                                                  v607 = v604;
                                                  v609 = *v604++;
                                                  v608 = v609;
                                                }

                                                while (TriangleGreater(v605, v606, v609));
                                                do
                                                {
                                                  v610 = v596;
                                                  v612 = *--v596;
                                                  v611 = v612;
                                                }

                                                while (TriangleGreater(v605, v612, v606));
                                                if (v596 < v604)
                                                {
                                                  break;
                                                }

                                                *v607 = v611;
                                                *v596 = v608;
                                              }

                                              tx = widthb;
                                              *(*&widthb + 8) = v611;
                                              *v596 = v606;
                                              v613 = (v596 - *&widthb) >> 3;
                                              v594 = v672;
                                              v614 = (v672 - v607 + 8) >> 3;
                                              v596 = v610 - 2;
                                              if (v613 <= v614)
                                              {
                                                break;
                                              }

                                              v8 = v666;
                                              v315 = rectb;
                                              if (v613 <= 10)
                                              {
                                                goto LABEL_703;
                                              }

                                              if (v614 >= 11)
                                              {
                                                v662->a = widthb;
                                                *&v662->b = v596;
                                                tx = *&v607;
                                                v662 = (v662 + 16);
                                                goto LABEL_679;
                                              }
                                            }

                                            v8 = v666;
                                            v315 = rectb;
                                            if (v614 <= 10)
                                            {
                                              break;
                                            }

                                            if (v613 < 11)
                                            {
                                              tx = *&v607;
                                              goto LABEL_679;
                                            }

                                            *&v662->a = v607;
                                            *&v662->b = v672;
                                            v662 = (v662 + 16);
                                          }

LABEL_703:
                                          v615 = v662;
                                          if (v662 != &__src)
                                          {
                                            tx = v662[-1].tx;
                                            v662 = (v662 - 16);
                                            v594 = *&v615[-1].ty;
                                            continue;
                                          }

                                          break;
                                        }
                                      }

                                      v556 = (v665 - 1);
                                      v2 = v654;
                                      if (v665 - 1 > v658)
                                      {
                                        v557 = -8;
                                        do
                                        {
                                          v558 = v557;
                                          v559 = v556;
                                          v557 -= 8;
                                          v561 = *(v556 - 8);
                                          v556 -= 8;
                                          v560 = v561;
                                          v562 = *(rectb + 1);
                                          while (TriangleGreater(v562, v560, *(v665 + v558)))
                                          {
                                            v235 = v558 <= -16;
                                            v558 += 8;
                                            if (!v235)
                                            {
                                              v563 = &v658[v653];
                                              goto LABEL_655;
                                            }
                                          }

                                          v563 = v665 + v558;
LABEL_655:
                                          if (v556 != v563 - 8)
                                          {
                                            if (v559 < v563)
                                            {
                                              v564 = 0;
                                              do
                                              {
                                                v565 = v559 + v564;
                                                *(v565 - 8) = *(v559 + v564);
                                                v564 += 8;
                                              }

                                              while (v565 + 8 < v563);
                                            }

                                            *(v563 - 8) = v560;
                                          }
                                        }

                                        while (v556 > v658);
                                      }

                                      v566 = malloc_type_malloc(0x28uLL, 0x102004050851865uLL);
                                      if (v566)
                                      {
                                        v567 = v566;
                                        *v566 = *rectb;
                                        v566[4] = rectb[4];
                                        v566[8] = v653;
                                        v568 = malloc_type_malloc(16 * v653, 0x1000040451B5BE8uLL);
                                        if (v568)
                                        {
                                          v569 = v568;
                                          *(v567 + 3) = v568;
                                          if (v653)
                                          {
                                            v570 = 0;
                                            v571 = v568;
                                            do
                                            {
                                              v572 = 0;
                                              v573 = v658[v570];
                                              v571[3] = 0;
                                              do
                                              {
                                                v574 = &v573[v572];
                                                v571[v572] = *v574;
                                                if (v574[6] == -1)
                                                {
                                                  v571[3] |= 1 << v572;
                                                }

                                                ++v572;
                                              }

                                              while (v572 != 3);
                                              ++v570;
                                              v571 += 4;
                                            }

                                            while (v570 != v653);
                                          }

                                          v575 = malloc_type_malloc(72 * rectb[4], 0x1000040FF89C88EuLL);
                                          if (v575)
                                          {
                                            *(v567 + 1) = v575;
                                            v315 = rectb;
                                            if (rectb[4])
                                            {
                                              v576 = 0;
                                              v577 = *(rectb + 1);
                                              do
                                              {
                                                *v575 = *v577;
                                                v578 = *(v577 + 16);
                                                v579 = *(v577 + 32);
                                                v580 = *(v577 + 48);
                                                v575[8] = *(v577 + 64);
                                                *(v575 + 2) = v579;
                                                *(v575 + 3) = v580;
                                                *(v575 + 1) = v578;
                                                ++v576;
                                                v575 += 9;
                                                v577 += 72;
                                              }

                                              while (v576 < rectb[4]);
                                            }

                                            free(v658);
                                            if (RenderTriangleMesh(*(v567 + 1), v567[4], *(v567 + 3), v567[8], v629, &v709, &v710.origin.x))
                                            {
                                              CGContextSaveGState(v654);
                                              CGContextResetCTM(v654, v581, v582, v583, v584, v585, v586, v587);
                                              v588 = v710.size.width;
                                              v589 = v710.size.height;
                                              v590 = v710.origin.x;
                                              v591 = v710.origin.y;
                                              if (v710.size.width < 0.0 || v710.size.height < 0.0)
                                              {
                                                v787 = CGRectStandardize(v710);
                                                v592 = v787.size.width;
                                                v787.origin.x = v590;
                                                v787.origin.y = v591;
                                                v787.size.width = v588;
                                                v787.size.height = v589;
                                                *(&v593 - 3) = CGRectStandardize(v787);
                                              }

                                              else
                                              {
                                                v592 = v710.size.width;
                                                v593 = v710.size.height;
                                              }

                                              widthd = v592;
                                              v617 = v593;
                                              v618 = (v625 * v592) >> 3;
                                              v619 = v709;
                                              v620 = v618 * v593;
                                              check_clients_buffer("CGDataProviderCreateWithData", v709, v620);
                                              v621 = CGDataProviderCreateWithDataInternal(0, v619, v620, patch_data_release_20716, 0);
                                              v622 = CGImageCreate(widthd, v617, 8uLL, v625, v618, *(v649 + 24), 3u, v621, 0, 0, kCGRenderingIntentDefault);
                                              CGDataProviderRelease(v621);
                                              CGImageSetCachingFlags(v622, 1);
                                              v788.origin.x = v590;
                                              v788.origin.y = v591;
                                              v788.size.width = v588;
                                              v788.size.height = v589;
                                              CGContextDrawImage(v654, v788, v622);
                                              CGContextRestoreGState(v654);
                                              if (v622)
                                              {
                                                CFRelease(v622);
                                              }

                                              v623 = *(v567 + 1);
                                              v315 = rectb;
                                              if (v623)
                                              {
                                                free(v623);
                                              }

                                              v624 = *(v567 + 3);
                                              if (v624)
                                              {
                                                free(v624);
                                              }

                                              free(v567);
                                            }
                                          }

                                          else
                                          {
                                            free(v658);
                                            free(v567);
                                            free(v569);
                                            v315 = rectb;
                                          }

                                          goto LABEL_709;
                                        }

                                        free(v658);
                                        v616 = v567;
                                      }

                                      else
                                      {
                                        v616 = v658;
                                      }

                                      free(v616);
                                      v315 = rectb;
                                    }
                                  }

LABEL_709:
                                  CoonsMeshFree(v315);
                                  v5 = v628;
                                  goto LABEL_710;
                                }
                              }
                            }

                            CoonsMeshFree(v254);
                          }

                          free(v643);
                        }

                        free(v645);
                      }

                      v315 = 0;
                      goto LABEL_464;
                    }
                  }
                }
              }
            }

LABEL_710:
            v9 = 1.0;
            v10 = 0.25;
            goto LABEL_711;
          }

          v183 = malloc_type_malloc(v647 + 8, 0x100004000313F17uLL);
          v184 = v183;
          if (v5)
          {
            v185 = 0;
            v186 = v8;
            do
            {
              v183[v185] = 0.0;
              v187 = 0.0;
              v188 = v186;
              v189 = 4;
              do
              {
                v187 = v187 + *v188;
                v183[v185] = v187;
                v188 = (v188 + v647);
                --v189;
              }

              while (v189);
              v183[v185++] = v187 * v10;
              ++v186;
            }

            while (v185 != v5);
          }

          v183[v5] = 1.0;
          CGContextSetFillColor(v2, v183);
          CGContextMoveToPoint(v2, x, y);
          CGContextAddCurveToPoint(v2, cp1x, cp1y, cp2x, cp2y, v731, v732);
          CGContextAddCurveToPoint(v2, v733, v734, v735, v736, v737, v738);
          CGContextAddCurveToPoint(v2, v739, v740, v741, v742, v743, v744);
          CGContextAddCurveToPoint(v2, v745, v746, v747, v748, x, y);
          CGContextDrawPath(v2, kCGPathFill);
          for (k = 0; k != 4; ++k)
          {
            if (v5)
            {
              for (m = 0; m != v5; ++m)
              {
                v192 = 0;
                v184[m] = 0.0;
                v193 = 0.0;
                do
                {
                  v193 = v193 + v8[m + ((k + v192) & 3) * v5];
                  v184[m] = v193;
                  ++v192;
                }

                while (v192 != 2);
                v184[m] = v193 * 0.5;
              }
            }

            v184[v5] = 1.0;
            CGContextSetStrokeColor(v2, v184);
            CGContextSaveGState(v2);
            CGContextSetLineWidth(v2, 2.0);
            v194 = &x + 6 * k;
            v195 = *v194;
            v196 = v194[1];
            v197 = 3 * k + 3;
            if (3 * k == 9)
            {
              v197 = 0;
            }

            v198 = &x + 2 * v197;
            v200 = *v198;
            v199 = v198[1];
            v201 = vabdd_f64(v195, *v198);
            v202 = vabdd_f64(v196, v199);
            CGContextMoveToPoint(v2, v195, v196);
            if (v201 < v9 && v202 < v9)
            {
              CGContextAddLineToPoint(v2, v200, v199);
            }

            else
            {
              CGContextAddCurveToPoint(v2, v194[2], v194[3], v194[4], v194[5], v200, v199);
            }

            CGContextSetCTM(v2, &CGAffineTransformIdentity, v204, v205, v206, v207, v208, v209);
            CGContextDrawPath(v2, kCGPathStroke);
            CGContextRestoreGState(v2);
          }

          free(v184);
LABEL_711:
          BytePtr = v659;
          v17 = v648;
        }

        while (v15 || v659 != v648);
LABEL_724:
        v11 = 0;
        v7 = v649;
        if ((v650 & 1) == 0)
        {
          free(v8);
          return;
        }
      }
    }
  }
}
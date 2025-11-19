uint64_t pdf_EndPage(uint64_t a1)
{
  if (a1)
  {
    a1 = *(a1 + 288);
  }

  PDFDocumentEndPage(a1);
  return 0;
}

uint64_t pdf_BeginPage(void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  if (a1)
  {
    a1 = a1[36];
  }

  PDFDocumentBeginPage(a1, a4);
  return 0;
}

uint64_t pdf_DrawDisplayList(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(a1 + 288) + 520);
  if (v8)
  {
    v9 = *(v8 + 72);
    if (v9)
    {
      CGRenderingStateCreateCopy(a2);
      v11 = v10;
      *(v10 + 81) = 1;
      *(v10 + 72) = 0x300000003;
      v18 = copyGState(v8, a3);
      v20 = v19;
      if (*(v9 + 16) == 1129601108)
      {
        v21 = *(v9 + 40);
        if (v21)
        {
          v22 = *(v21 + 128);
          if (v22)
          {
            v22(v18);
          }
        }
      }

      else
      {
        handle_invalid_context("CGContextGetDelegate", v9, v12, v13, v14, v15, v16, v17);
      }

      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v11);
      }

      CGGStateRelease(v20);
    }
  }

  ContentStream = PDFDocumentGetContentStream(*(a1 + 288));
  if (!ContentStream)
  {
    return 1000;
  }

  v24 = ContentStream;
  v25 = *(a2 + 24);
  v26 = *(a2 + 40);
  *(ContentStream + 152) = *(a2 + 56);
  *(ContentStream + 136) = v26;
  *(ContentStream + 120) = v25;
  PDFContentStreamSetRedactionPath(ContentStream, *(*(a1 + 288) + 528));
  if (a4)
  {
    v27 = PDFDocumentAddFormWithDisplayList(*v24, a4);
    v28 = v24[14];
    v29 = *(v28 + 56);
    if (!v29)
    {
      v29 = CGOrderedSetCreate();
      *(v28 + 56) = v29;
    }

    CGOrderedSetAddValue(v29, v27);
    v36 = *(v28 + 8);
    v37 = *(v36 + 632);
    if (v37)
    {
      v38 = *(v27 + 2);
      if (v38)
      {
        v38 = *(v38 + 8);
      }

      if (*(v37 + 16) == 1 && !*(v37 + 32))
      {
        v39 = *(v36 + 640);
        *(v36 + 640) = v39 + 1;
        *(v37 + 32) = v38;
        *(v37 + 40) = v39;
      }

      else
      {
        v39 = -1;
      }

      *(v27 + 10) = v39;
    }

    PDFWriterAnnotate(v24[8], "%s: BEGIN: Draw display list.", v30, v31, v32, v33, v34, v35, "PDFContentStreamDrawDisplayList");
    PDFWriterAnnotate(v24[8], "  Forcing gstate reset:", v40, v41, v42, v43, v44, v45, v99);
    PDFGStateReset(v24[13]);
    PDFWriterAnnotate(v24[8], "  BEGIN: Drawing display list:", v46, v47, v48, v49, v50, v51, v100);
    PDFGStateSetClipStack(v24[13], *(a3 + 112));
    v58 = v24[13];
    v59 = *(*(a3 + 144) + 24);
    if (*(v58 + 200) != v59)
    {
      *(v58 + 200) = v59;
      addEmitFunction(v58, emitNonStrokeOverprintChange);
      v58 = v24[13];
    }

    v60 = *(*(a3 + 120) + 8);
    if (*(v58 + 168) != v60)
    {
      *(v58 + 168) = v60;
      addEmitFunction(v58, emitNonStrokeAlphaChange);
      v58 = v24[13];
    }

    PDFGStateSetOverprintMode(v58, *(*(a3 + 144) + 28), v52, v53, v54, v55, v56, v57);
    PDFGStateSetBlackGeneration(v24[13], *(*(a3 + 144) + 32));
    PDFGStateSetUndercolorRemoval(v24[13], *(*(a3 + 144) + 40));
    PDFGStateSetStyle(v24[13], *(*(a3 + 120) + 16));
    PDFGStateSetSoftMask(v24[13], *(*(a3 + 120) + 40));
    v61 = v24[13];
    v62 = (*(*(a3 + 120) + 4) << 16) >> 24;
    if ((v62 - 13) >= 0xF)
    {
      v62 = 2;
    }

    if (*(v61 + 248) != v62)
    {
      *(v61 + 248) = v62;
      addEmitFunction(v61, emitBlendModeChange);
      v61 = v24[13];
    }

    PDFGStateEmit(v61);
    v69 = *(*v24 + 520);
    if (v69)
    {
      v70 = *(v69 + 48);
      v103 = 0uLL;
      if (v70 && CGCFDictionaryGetPoint(v70, @"DisplayListOrigin", &v103))
      {
        *(v27 + 4) = v103;
      }
    }

    else
    {
      v103 = 0uLL;
    }

    v72 = *(a3 + 56);
    v73 = *(a3 + 40);
    v104[0] = *(a3 + 24);
    v104[1] = v73;
    v105 = v72;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v104[0], xmmword_18439C630), vceqq_f64(v73, xmmword_18439C780))))) & 1) != 0 || *&v105 != 0.0)
    {
      v74 = v24[8];
    }

    else
    {
      v74 = v24[8];
      if (*(&v105 + 1) == 0.0)
      {
        PDFWriterPrintf(v74, "/%s Do", v63, v64, v65, v66, v67, v68, v27 + 40);
LABEL_42:
        PDFWriterAnnotate(v24[8], "  END: Drawing display list:", v75, v76, v77, v78, v79, v80, v101);
        PDFWriterAnnotate(v24[8], "%s: END: Draw display list.", v93, v94, v95, v96, v97, v98, "PDFContentStreamDrawDisplayList");
        return 0;
      }
    }

    PDFWriterPrintf(v74, "q %*m cm", v63, v64, v65, v66, v67, v68, v104);
    PDFWriterPrintf(v24[8], "/%s Do", v81, v82, v83, v84, v85, v86, v27 + 40);
    PDFWriterPrintf(v24[8], "Q", v87, v88, v89, v90, v91, v92, v102);
    goto LABEL_42;
  }

  return 0;
}

uint64_t pdf_DrawShading(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1[36] + 520);
  if (v12)
  {
    v13 = *(v12 + 72);
    if (v13)
    {
      CGRenderingStateCreateCopy(a2);
      v15 = v14;
      *(v14 + 81) = 1;
      *(v14 + 72) = 0x300000003;
      v22 = copyGState(v12, a3);
      v24 = v23;
      if (*(v13 + 16) == 1129601108)
      {
        v25 = *(v13 + 40);
        if (v25)
        {
          v26 = *(v25 + 96);
          if (v26)
          {
            v26(v22);
          }
        }
      }

      else
      {
        handle_invalid_context("CGContextGetDelegate", v13, v16, v17, v18, v19, v20, v21);
      }

      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v15);
      }

      CGGStateRelease(v24);
    }
  }

  v27 = a4[5];
  v28 = v27 > 4;
  v29 = (1 << v27) & 0x16;
  if (v28 || v29 == 0)
  {
    CGShadingDrawInContextDelegate(a4, a1, a2, a3, a5, a6, a7, a8);
    return 0;
  }

  ContentStream = PDFDocumentGetContentStream(a1[36]);
  if (!ContentStream)
  {
    return 1000;
  }

  v32 = ContentStream;
  v33 = *(a2 + 24);
  v34 = *(a2 + 40);
  *(ContentStream + 152) = *(a2 + 56);
  *(ContentStream + 136) = v34;
  *(ContentStream + 120) = v33;
  PDFContentStreamSetRedactionPath(ContentStream, *(a1[36] + 528));
  v35 = PDFDocumentAddShading(*v32, a4);
  v36 = v32[14];
  v37 = *(v36 + 88);
  if (!v37)
  {
    v37 = CGOrderedSetCreate();
    *(v36 + 88) = v37;
  }

  CGOrderedSetAddValue(v37, v35);
  PDFWriterAnnotate(v32[8], "Drawing shading", v38, v39, v40, v41, v42, v43, v82);
  PDFGStateSetClipStack(v32[13], *(a3 + 112));
  v50 = v32[13];
  v51 = *(a3 + 120);
  v52 = *(v51 + 4);
  if (((v52 >> 20) & 0xF) != 0)
  {
    v53 = v52 << 8;
  }

  else
  {
    v53 = v52 << 12;
  }

  if (v53 >> 28)
  {
    v54 = v53 >> 28;
  }

  else
  {
    v54 = 2;
  }

  if (*(v50 + 80) != v54)
  {
    *(v50 + 80) = v54;
    addEmitFunction(v50, emitRenderingIntentChange);
    v50 = v32[13];
    v51 = *(a3 + 120);
  }

  v55 = *(v51 + 8);
  if (*(v50 + 168) != v55)
  {
    *(v50 + 168) = v55;
    addEmitFunction(v50, emitNonStrokeAlphaChange);
    v50 = v32[13];
  }

  v56 = *(a3 + 144);
  v57 = *(v56 + 24);
  if (*(v50 + 200) != v57)
  {
    *(v50 + 200) = v57;
    addEmitFunction(v50, emitNonStrokeOverprintChange);
    v50 = v32[13];
    v56 = *(a3 + 144);
  }

  PDFGStateSetOverprintMode(v50, *(v56 + 28), v44, v45, v46, v47, v48, v49);
  PDFGStateSetBlackGeneration(v32[13], *(*(a3 + 144) + 32));
  PDFGStateSetUndercolorRemoval(v32[13], *(*(a3 + 144) + 40));
  PDFGStateSetStyle(v32[13], *(*(a3 + 120) + 16));
  PDFGStateSetSoftMask(v32[13], *(*(a3 + 120) + 40));
  v58 = v32[13];
  v59 = (*(*(a3 + 120) + 4) << 16) >> 24;
  if ((v59 - 13) >= 0xF)
  {
    v59 = 2;
  }

  if (*(v58 + 248) != v59)
  {
    *(v58 + 248) = v59;
    addEmitFunction(v58, emitBlendModeChange);
    v58 = v32[13];
  }

  PDFGStateEmit(v58);
  v66 = *(a3 + 56);
  v67 = *(a3 + 40);
  v84[0] = *(a3 + 24);
  v84[1] = v67;
  v85 = v66;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v84[0], xmmword_18439C630), vceqq_f64(v67, xmmword_18439C780))))) & 1) != 0 || *&v85 != 0.0)
  {
    v68 = v32[8];
    goto LABEL_41;
  }

  v68 = v32[8];
  if (*(&v85 + 1) != 0.0)
  {
LABEL_41:
    PDFWriterPrintf(v68, "q %*m cm", v60, v61, v62, v63, v64, v65, v84);
    PDFWriterPrintf(v32[8], "/%s sh", v70, v71, v72, v73, v74, v75, (v35 + 4));
    PDFWriterPrintf(v32[8], "Q", v76, v77, v78, v79, v80, v81, v83);
    return 0;
  }

  PDFWriterPrintf(v68, "/%s sh", v60, v61, v62, v63, v64, v65, (v35 + 4));
  return 0;
}

uint64_t pdf_DrawGlyphs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, double *a6, unint64_t a7)
{
  v14 = *(*(a1 + 288) + 520);
  if (v14)
  {
    v15 = *(v14 + 72);
    if (v15)
    {
      CGRenderingStateCreateCopy(a2);
      v17 = v16;
      *(v16 + 81) = 1;
      *(v16 + 72) = 0x300000003;
      v24 = copyGState(v14, a3);
      v26 = v25;
      if (*(v15 + 16) == 1129601108)
      {
        v27 = *(v15 + 40);
        if (v27)
        {
          v28 = *(v27 + 88);
          if (v28)
          {
            v28(v24);
          }
        }
      }

      else
      {
        handle_invalid_context("CGContextGetDelegate", v15, v18, v19, v20, v21, v22, v23);
      }

      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v17);
      }

      CGGStateRelease(v26);
    }
  }

  ContentStream = PDFDocumentGetContentStream(*(a1 + 288));
  if (!ContentStream)
  {
    return 1000;
  }

  v30 = ContentStream;
  result = 0;
  if (a4 && a5 && a6 && a7)
  {
    v32 = *(*(a3 + 136) + 8);
    v43 = "nonmarkingreturn";
    v42 = 0;
    if (v32 && ((*(*(v32 + 16) + 288))(*(v32 + 112), &v43, &v42, 1), (v33 = v42) != 0))
    {
      v41 = a6;
      v34 = 0;
      while (a5[v34] != v42)
      {
        if (a7 == ++v34)
        {
          v35 = 0;
          goto LABEL_30;
        }
      }

      v36 = malloc_type_malloc(2 * a7, 0x1000040BDFB0063uLL);
      v35 = v36;
      if (v36)
      {
        memcpy(v36, a5, 2 * v34);
        if (v34 < a7)
        {
          do
          {
            v37 = a5[v34];
            if (v37 == v33)
            {
              LOWORD(v37) = -1;
            }

            v35[v34++] = v37;
          }

          while (a7 != v34);
        }

        a5 = v35;
      }

LABEL_30:
      a6 = v41;
    }

    else
    {
      v35 = 0;
    }

    v38 = *(a2 + 24);
    v39 = *(a2 + 40);
    *(v30 + 152) = *(a2 + 56);
    *(v30 + 136) = v39;
    *(v30 + 120) = v38;
    PDFContentStreamSetRedactionPath(v30, *(*(a1 + 288) + 528));
    PDFContentStreamDrawGlyphs(v30, a3, a4, a5, a6, a7, v40);
    free(v35);
    return 0;
  }

  return result;
}

uint64_t pdf_DrawPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const CGPath *a5)
{
  v10 = *(*(a1 + 288) + 520);
  if (v10)
  {
    v11 = *(v10 + 72);
    if (v11)
    {
      CGRenderingStateCreateCopy(a2);
      v13 = v12;
      *(v12 + 81) = 1;
      *(v12 + 72) = 0x300000003;
      copyGState(v10, a3);
      v15 = v14;
      v37.a = *(v10 + 80);
      v37.b = 0.0;
      v37.c = 0.0;
      v37.d = v37.a;
      v37.tx = 0.0;
      v37.ty = 0.0;
      v22 = CGPathCreateMutableCopyByTransformingPath(a5, &v37);
      if (*(v11 + 16) == 1129601108)
      {
        v23 = *(v11 + 40);
      }

      else
      {
        handle_invalid_context("CGContextGetDelegate", v11, v16, v17, v18, v19, v20, v21);
        v23 = 0;
      }

      CGContextDelegateDrawPath(v23, v13, v15, a4, v22);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v13);
      }

      CGGStateRelease(v15);
      if (v22)
      {
        CFRelease(v22);
      }
    }
  }

  ContentStream = PDFDocumentGetContentStream(*(a1 + 288));
  if (!ContentStream)
  {
    return 1000;
  }

  v25 = ContentStream;
  v26 = *(a2 + 24);
  v27 = *(a2 + 40);
  *(ContentStream + 152) = *(a2 + 56);
  *(ContentStream + 136) = v27;
  *(ContentStream + 120) = v26;
  PDFContentStreamSetRedactionPath(ContentStream, *(*(a1 + 288) + 528));
  v31 = *(v25 + 200);
  if (v31)
  {
    if (a5)
    {
      result = pathCreateCopyByClippingWithPath(2, a5, 1, v31, 1);
      if (!result)
      {
        return result;
      }

      v36 = result;
      PDFWritePath(v25, *(v25 + 64), a3, a4, result, v33, v34, v35);
      CFRelease(v36);
    }
  }

  else
  {
    PDFWritePath(v25, *(v25 + 64), a3, a4, a5, v28, v29, v30);
  }

  return 0;
}

void pdf_Finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = *(a1 + 288);
  }

  else
  {
    v8 = 0;
  }

  PDFDocumentFinalize(v8, a2, a3, a4, a5, a6, a7, a8);

  PDFDocumentRelease(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t __CGPDFFontDescriptorGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFFontDescriptorGetTypeID_class);
  CGPDFFontDescriptorGetTypeID_id = result;
  return result;
}

void CGPDFFontDescriptorRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef CGPDFFontDescriptorRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

uint64_t CGPDFFontDescriptorGetDictionary(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t CGPDFFontDescriptorGetFlags(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t CGPDFFontDescriptorGetStyle(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 24))
    {
      v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x100004020B92A0BuLL);
      __CFSetLastAllocationEventName();
      if (!v2)
      {
        return 0;
      }

      v18 = 0.0;
      value = 0.0;
      Number = CGPDFDictionaryGetNumber(*(v1 + 32), "StemV", &value);
      v4 = value;
      if (!Number)
      {
        v4 = 0.0;
      }

      *v2 = v4;
      v2[1] = 0.0;
      if (CGPDFDictionaryGetNumber(*(v1 + 32), "ItalicAngle", &v18))
      {
        v5 = v18;
        v2[1] = v18;
        if (fabs(v5) > 20.0)
        {
          v2[1] = -12.0;
        }
      }

      v6 = *(v1 + 40);
      v7 = (v6 >> 6) & 1;
      *(v2 + 16) = (v6 & 0x40) != 0;
      *(v2 + 18) = (v6 & 2) != 0;
      *(v2 + 19) = v6 & 1;
      *(v2 + 20) = BYTE2(v6) & 1;
      *(v2 + 21) = (v6 & 0x20000) != 0;
      *(v2 + 17) = 0;
      v8 = *(v1 + 16);
      if (v8)
      {
        v9 = *(v8 + 200);
        if (v9 == 7 || v9 == 4)
        {
          v10 = *(v8 + 32);
          if (v10)
          {
            v11 = variants;
            v12 = 8;
            while (!font_name_contains_variant(v10, *v11))
            {
              v11 += 3;
              if (!--v12)
              {
                v13 = 0;
                goto LABEL_21;
              }
            }

            v13 = *(v11 + 16);
LABEL_21:
            *(v2 + 16) = v7 | v13 & 1;
            v14 = variants;
            v15 = 8;
            while (!font_name_contains_variant(v10, *v14))
            {
              v14 += 3;
              if (!--v15)
              {
                goto LABEL_24;
              }
            }

            v16 = *(v14 + 17);
          }

          else
          {
LABEL_24:
            v16 = 0;
          }

          *(v2 + 17) = v16 & 1;
        }
      }

      v17 = 0;
      atomic_compare_exchange_strong_explicit((v1 + 24), &v17, v2, memory_order_relaxed, memory_order_relaxed);
      if (v17)
      {
        free(v2);
      }
    }

    return *(v1 + 24);
  }

  return result;
}

void draw_glyph_bitmap_run_with_compositing(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v50 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v12 = 8 * a10;
  if (a10 >> 61)
  {
    v13 = -1;
  }

  else
  {
    v13 = a10;
  }

  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v22 = v44 - v19;
  v23 = v13 - 0x1FFFFFFFFFFFFFFFLL;
  if (v13 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v24 = v44 - v19;
  }

  else
  {
    v24 = 0;
  }

  v47 = v15;
  v48 = v16;
  v46 = v14;
  v49 = v18;
  v25 = v17;
  if (v23 >= v20)
  {
    v24 = malloc_type_malloc(v12, 0x4B05F7DEuLL);
  }

  if (v24)
  {
    v26 = MEMORY[0x1EEE9AC00](4 * a10, v21);
    v44[1] = v44 - v28;
    if (v27 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v30 = v44 - v28;
    }

    else
    {
      v30 = 0;
    }

    v51 = v29;
    if (v27 - 0x3FFFFFFFFFFFFFFFLL >= 0xC000000000000102)
    {
      v30 = malloc_type_malloc(v26, 0x9206B9A0uLL);
    }

    if (v30)
    {
      v44[0] = v22;
      v31 = *(v50 + 136);
      v32 = *(v31 + 16);
      v33 = *(a7 + 32);
      v34 = vmulq_n_f64(*a7, v32);
      v35 = vmulq_n_f64(*(a7 + 16), v32);
      v54[0] = v34;
      v54[1] = v35;
      v54[2] = v33;
      v36 = *(v31 + 88);
      v45 = a6;
      v37 = a6;
      v38 = v30;
      QuantizationLevelWithStyle = CGFontGetQuantizationLevelWithStyle(v54, v37, v36);
      v39 = v49;
      v49 = v38;
      v40.n128_u64[0] = CGFontGetGlyphIdentifiers(v25, a7, v39, a10, &QuantizationLevelWithStyle, v38, v51, v52);
      MEMORY[0x1EEE9AC00](v41, v40);
      if (v13 <= 0x1FFFFFFFFFFFFFFELL)
      {
        v43 = v44 - v42;
      }

      else
      {
        v43 = 0;
      }

      if (v23 >= 0xE000000000000402)
      {
        v43 = malloc_type_malloc(v12, 0xB729050DuLL);
      }

      if (v43)
      {
        CGGlyphBuilderCreate();
      }
    }

    else if (v51 != v22)
    {
      free(v51);
    }
  }
}

uint64_t CGSoftMaskGetTypeID()
{
  if (_block_invoke_once_17414 != -1)
  {
    dispatch_once(&_block_invoke_once_17414, &__block_literal_global_5_17415);
  }

  return CGSoftMaskGetTypeID_soft_mask_type_id;
}

void release_soft_mask(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t draw_soft_mask(uint64_t result)
{
  v1 = *(result + 136);
  if (v1)
  {
    return v1(*(result + 120));
  }

  return result;
}

CFTypeRef CGSoftMaskRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSoftMaskRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGSoftMaskGetIdentifier(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

__n128 CGSoftMaskGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a1 + 24);
  if (!a1)
  {
    v2 = &CGAffineTransformIdentity;
  }

  v3 = *&v2->c;
  *a2 = *&v2->a;
  *(a2 + 16) = v3;
  result = *&v2->tx;
  *(a2 + 32) = result;
  return result;
}

CGFloat CGSoftMaskGetBounds(uint64_t a1)
{
  v1 = &CGRectNull;
  if (a1)
  {
    v1 = (a1 + 72);
  }

  return v1->origin.x;
}

uint64_t CGSoftMaskGetBackground(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t CGSoftMaskGetTransfer(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

_DWORD *CGPDFSecurityHandlerCreate(CGPDFArrayRef *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xE0uLL, 0x1020040514D9E49uLL);
  __CFSetLastAllocationEventName();
  if (!v2)
  {
    return v2;
  }

  v40 = 0.0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  value = 0;
  v34 = 0;
  *(v2 + 92) = 0;
  v2[47] = 0;
  *(v2 + 3) = 0;
  if (CGPDFArrayGetString(*a1, 0, &value))
  {
    *(v2 + 3) = value;
  }

  v3 = a1[1];
  if (!CGPDFDictionaryGetInteger(v3, "V", &v37))
  {
    pdf_error("missing or invalid security handler version.");
LABEL_95:
    free(v2);
    return 0;
  }

  if (v37 > 3)
  {
    if (v37 == 4)
    {
      v4 = 128;
      goto LABEL_17;
    }

    if (v37 != 5)
    {
      goto LABEL_13;
    }

    v5 = 256;
LABEL_15:
    v36 = v5;
    goto LABEL_20;
  }

  if (v37 == 1)
  {
    v5 = 40;
    goto LABEL_15;
  }

  if (v37 != 2)
  {
LABEL_13:
    goto LABEL_95;
  }

  v4 = 40;
LABEL_17:
  v36 = v4;
  Integer = CGPDFDictionaryGetInteger(v3, "Length", &v36);
  v5 = v36;
  if (Integer && ((v36 - 40) > 0x58 || (v36 & 7) != 0))
  {
    goto LABEL_95;
  }

LABEL_20:
  *(v2 + 1) = v5 / 8;
  if (!CGPDFDictionaryGetNumber(v3, "R", &v40))
  {
    pdf_error("missing or invalid security handler revision.");
    goto LABEL_95;
  }

  if (v37 <= 1)
  {
    if (!v37)
    {
      v7 = 2.0;
      goto LABEL_35;
    }

    if (v37 != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if ((v37 - 2) < 2)
  {
LABEL_30:
    if (v40 == 2.0)
    {
      goto LABEL_37;
    }

    v7 = 3.0;
    goto LABEL_35;
  }

  if (v37 != 4)
  {
    if (v37 == 5)
    {
      if (v40 == 5.0)
      {
        goto LABEL_37;
      }

      v7 = 6.0;
      goto LABEL_35;
    }

LABEL_36:
    goto LABEL_95;
  }

  v7 = 4.0;
LABEL_35:
  if (v40 != v7)
  {
    goto LABEL_36;
  }

LABEL_37:
  *v2 = v40;
  if (!CGPDFDictionaryGetString(v3, "O", &v34))
  {
    goto LABEL_95;
  }

  v8 = v34;
  if (!v34)
  {
    if (*v2 >= 5 && (*v2 - 5) >= 2)
    {
      goto LABEL_63;
    }

    goto LABEL_52;
  }

  if (*(v34 + 3))
  {
    decrypt_string(v34);
  }

  v9 = *(v8 + 9);
  if (*v2 < 5)
  {
    if (v9 == 32)
    {
      v10 = v34;
      if (*(v34 + 3))
      {
        decrypt_string(v34);
      }

      v11 = *(v10 + 6);
      *(v2 + 7) = *(v10 + 5);
      *(v2 + 8) = v11;
      goto LABEL_63;
    }

LABEL_52:
    goto LABEL_95;
  }

  if ((*v2 - 5) >= 2)
  {
    goto LABEL_63;
  }

  if (v9 <= 0x2F)
  {
    goto LABEL_52;
  }

  v12 = v34;
  if (*(v34 + 3))
  {
    decrypt_string(v34);
    v13 = *v2;
    v15 = *(v12 + 6);
    v14 = *(v12 + 7);
    *(v2 + 7) = *(v12 + 5);
    *(v2 + 8) = v15;
    *(v2 + 9) = v14;
    if (v13 < 5)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v16 = *(v34 + 5);
    v17 = *(v34 + 7);
    *(v2 + 8) = *(v34 + 6);
    *(v2 + 9) = v17;
    *(v2 + 7) = v16;
  }

  *(v2 + 20) = *(v12 + 14);
  *(v2 + 21) = *(v12 + 15);
LABEL_58:
  if (!CGPDFDictionaryGetString(v3, "OE", v2 + 22))
  {
    goto LABEL_95;
  }

  v18 = *(v2 + 22);
  if (!v18)
  {
    goto LABEL_80;
  }

  if (*(v18 + 24))
  {
    decrypt_string(*(v2 + 22));
  }

  if (*(v18 + 72) != 32)
  {
LABEL_80:
    goto LABEL_95;
  }

LABEL_63:
  if (!CGPDFDictionaryGetString(v3, "U", &v35))
  {
    goto LABEL_95;
  }

  v19 = v35;
  if (v35)
  {
    if (*(v35 + 3))
    {
      decrypt_string(v35);
    }

    v20 = *(v19 + 9);
    if (*v2 < 5)
    {
      if (v20 == 32)
      {
        v21 = v35;
        if (*(v35 + 3))
        {
          decrypt_string(v35);
        }

        v22 = *(v21 + 5);
        *(v2 + 49) = *(v21 + 6);
        *(v2 + 33) = v22;
        goto LABEL_91;
      }

LABEL_78:
      goto LABEL_95;
    }

    if ((*v2 - 5) < 2)
    {
      if (v20 <= 0x2F)
      {
        goto LABEL_78;
      }

      v23 = v35;
      if (*(v35 + 3))
      {
        decrypt_string(v35);
        v24 = *v2;
        v26 = *(v23 + 6);
        v25 = *(v23 + 7);
        *(v2 + 33) = *(v23 + 5);
        *(v2 + 49) = v26;
        *(v2 + 65) = v25;
        if (v24 < 5)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v27 = *(v35 + 5);
        v28 = *(v35 + 6);
        *(v2 + 65) = *(v35 + 7);
        *(v2 + 49) = v28;
        *(v2 + 33) = v27;
      }

      *(v2 + 81) = *(v23 + 14);
      *(v2 + 89) = *(v23 + 15);
LABEL_86:
      if (!CGPDFDictionaryGetString(v3, "UE", v2 + 13))
      {
        goto LABEL_95;
      }

      v29 = *(v2 + 13);
      if (!v29)
      {
        goto LABEL_103;
      }

      if (*(v29 + 24))
      {
        decrypt_string(*(v2 + 13));
      }

      if (*(v29 + 72) != 32)
      {
LABEL_103:
        goto LABEL_95;
      }
    }
  }

  else if (*v2 < 5 || (*v2 - 5) < 2)
  {
    goto LABEL_78;
  }

LABEL_91:
  if (!CGPDFDictionaryGetOffset(v3, "P", &v38))
  {
LABEL_94:
    pdf_error("missing or invalid security handler permissions.");
    goto LABEL_95;
  }

  v2[4] = v38;
  v30 = *v2 - 5;
  String = CGPDFDictionaryGetString(v3, "Perms", 0);
  if (v30 > 1)
  {
    if (String)
    {
      pdf_error("encountered unexpected /Perms entry.");
    }
  }

  else if (!String)
  {
    goto LABEL_94;
  }

  *(v2 + 32) = 1;
  if ((v37 & 0xFFFFFFFFFFFFFFFELL) == 4 && CGPDFDictionaryGetBoolean(v3, "EncryptMetadata", &v39))
  {
    *(v2 + 32) = v39 != 0;
  }

  return v2;
}

uint64_t CGPDFSecurityHandlerAuthenticateUserPassword(uint64_t a1, void *a2, size_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3 = a3;
  if (!a2)
  {
    if (a3)
    {
      return 0;
    }
  }

  v6 = 0;
  v7 = *a1;
  if (*a1 > 4)
  {
    if (v7 == 5)
    {
      memset(&c.hash[6], 0, 72);
      if (a3 >= 0x7F)
      {
        LODWORD(v3) = 127;
      }

      memset(&c, 0, 32);
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, a2, v3);
      CC_SHA256_Update(&c, (a1 + 81), 8u);
      CC_SHA256_Final(md, &c);
      v16 = *md ^ *(a1 + 33) | *&md[8] ^ *(a1 + 41) | v33 ^ *(a1 + 49) | v34 ^ *(a1 + 57);
      v6 = v16 == 0;
      if (v16)
      {
        return v6;
      }

      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, a2, v3);
      CC_SHA256_Update(&c, (a1 + 89), 8u);
      CC_SHA256_Final(md, &c);
    }

    else
    {
      if (v7 != 6)
      {
        return v6;
      }

      hash_password_revision_6(a2, a3, (a1 + 81), 0, &c);
      v11 = *c.count ^ *(a1 + 33) | *c.hash ^ *(a1 + 41) | *&c.hash[2] ^ *(a1 + 49) | *&c.hash[4] ^ *(a1 + 57);
      v6 = v11 == 0;
      if (v11)
      {
        return v6;
      }

      hash_password_revision_6(a2, v3, (a1 + 89), 0, md);
    }

    v17 = pdf_aes_create(md, 32);
    v18 = *(a1 + 104);
    if (v18)
    {
      if (*(v18 + 24))
      {
        decrypt_string(*(a1 + 104));
      }

      v19 = (v18 + 80);
    }

    else
    {
      v19 = 0;
    }

    v30[0] = 0;
    CCCryptorUpdate(v17[7], v19, 0x20uLL, (a1 + 192), 0x20uLL, v30);
    pdf_aes_free(v17);
    return v6;
  }

  if ((v7 - 3) < 2)
  {
    if (get_encryption_key(a1, a2, a3, md))
    {
      v8 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
      CC_MD5_Init(v8);
      if (v8)
      {
        CC_MD5_Update(v8, &pad_17476, 0x20u);
        v10 = (a1 + 24);
        v9 = *(a1 + 24);
        if (!v9)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v10 = (a1 + 24);
        v9 = *(a1 + 24);
        if (!v9)
        {
          goto LABEL_52;
        }
      }

      if (*(v9 + 24))
      {
        decrypt_string(v9);
        v20 = *v10;
        v21 = (v9 + 80);
        if (!v20)
        {
          v22 = 0;
          if (!v8)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        v9 = v20;
      }

      else
      {
        v21 = (v9 + 80);
      }

      if (*(v9 + 24))
      {
        decrypt_string(v9);
      }

      v22 = *(v9 + 72);
      if (!v8)
      {
LABEL_52:
        free(v8);
        RC4 = CGCryptorCreateRC4(md, *(a1 + 8));
        CGCryptorProcessBytes(RC4, &c, 0x10uLL, &c, 0x10uLL, 0);
        CGCryptorRelease(RC4);
        for (i = 1; i != 20; ++i)
        {
          v25 = *(a1 + 8);
          if (v25)
          {
            for (j = 0; j != v25; ++j)
            {
              *(v30 + j) = md[j] ^ i;
            }

            v27 = CGCryptorCreateRC4(v30, v25);
          }

          else
          {
            v27 = 0;
          }

          CGCryptorProcessBytes(v27, &c, 0x10uLL, &c, 0x10uLL, 0);
          CGCryptorRelease(v27);
        }

        if (*c.count != *(a1 + 33) || *c.hash != *(a1 + 41))
        {
          return 0;
        }

LABEL_65:
        memcpy((a1 + 192), md, *(a1 + 8));
        return 1;
      }

LABEL_50:
      md5_update(v8, v21, v22);
LABEL_51:
      CC_MD5_Final(&c, v8);
      goto LABEL_52;
    }

    pdf_error("Failed to generate decryption key.\n");
    return 0;
  }

  if (v7 == 2)
  {
    if (get_encryption_key(a1, a2, a3, md))
    {
      *c.count = pad_17476;
      *&c.hash[2] = unk_18456271C;
      v12 = CGCryptorCreateRC4(md, *(a1 + 8));
      CGCryptorProcessBytes(v12, &c, 0x20uLL, &c, 0x20uLL, 0);
      CGCryptorRelease(v12);
      if (*c.count == *(a1 + 33) && *c.hash == *(a1 + 41) && *&c.hash[2] == *(a1 + 49) && *&c.hash[4] == *(a1 + 57))
      {
        goto LABEL_65;
      }
    }

    else
    {
      pdf_error("Failed to generate file decryption key.\n");
    }

    return 0;
  }

  return v6;
}

uint64_t get_encryption_key(uint64_t a1, char *a2, unint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 0;
  }

  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v10 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v10);
  if (a3 < 0x20)
  {
    if (v10)
    {
      md5_update(v10, a2, a3);
      md5_update(v10, &pad_17476, 32 - a3);
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    CC_MD5_Update(v10, a2, 0x20u);
LABEL_14:
    CC_MD5_Update(v10, (a1 + 112), 0x20u);
    v11 = (a1 + 16);
    v12 = vld1q_dup_f32(v11);
    *v12.i8 = vmovn_s32(vshlq_u32(v12, xmmword_18439CE50));
    data = vuzp1_s8(*v12.i8, *v12.i8).u32[0];
    CC_MD5_Update(v10, &data, 4u);
    goto LABEL_16;
  }

  v13 = (a1 + 16);
  v14 = vld1q_dup_f32(v13);
  *v14.i8 = vmovn_s32(vshlq_u32(v14, xmmword_18439CE50));
  data = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
LABEL_16:
  v15 = *(a1 + 24);
  if (v15)
  {
    if (*(v15 + 24))
    {
      decrypt_string(*(a1 + 24));
      v16 = (v15 + 80);
      if (!*(a1 + 24))
      {
        v17 = 0;
        if (!v10)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v15 = *(a1 + 24);
    }

    else
    {
      v16 = (v15 + 80);
    }

    if (*(v15 + 24))
    {
      decrypt_string(v15);
    }

    v17 = *(v15 + 72);
    if (v10)
    {
LABEL_24:
      md5_update(v10, v16, v17);
    }
  }

LABEL_25:
  if (*a1 < 3 || (*(a1 + 32) & 1) != 0)
  {
    if (!v10)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  data = -1;
  if (v10)
  {
    CC_MD5_Update(v10, &data, 4u);
LABEL_31:
    CC_MD5_Final(md, v10);
  }

LABEL_32:
  free(v10);
  if (*a1 >= 3)
  {
    v18 = 50;
    do
    {
      v19 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
      CC_MD5_Init(v19);
      if (v19)
      {
        md5_update(v19, md, *(a1 + 8));
        CC_MD5_Final(md, v19);
      }

      free(v19);
      --v18;
    }

    while (v18);
  }

  memcpy(a4, md, *(a1 + 8));
  return v5;
}

void hash_password_revision_6(const void *a1, size_t a2, const void *a3, __int128 *a4, _OWORD *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = malloc_type_malloc(0x3BC0uLL, 0x100004077774924uLL);
  *&c.wbuf[14] = 0;
  if (a4)
  {
    v10 = 48;
  }

  else
  {
    v10 = 0;
  }

  memset(&c.wbuf[6], 0, 32);
  if (a2 >= 0x7F)
  {
    a2 = 127;
  }

  memset(&c, 0, 64);
  memset(&v30, 0, sizeof(v30));
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, a1, a2);
  CC_SHA256_Update(&c, a3, 8u);
  if (a4)
  {
    CC_SHA256_Update(&c, a4, 0x30u);
  }

  CC_SHA256_Final(&md, &c);
  v11 = 0;
  v12 = 0;
  v26 = v10 + a2;
  v13 = 32;
  while (v12 < 0x40 || (v12 - 32) < v9[v11 - 1])
  {
    v27 = v12;
    v14 = v26 + v13;
    v15 = v9;
    v16 = 64;
    v17 = v13;
    v18 = a2 + v13;
    do
    {
      memcpy(v15, a1, a2);
      memcpy(&v15[a2], &md, v17);
      if (a4)
      {
        v19 = &v15[v18];
        v20 = *a4;
        v21 = a4[2];
        *(v19 + 1) = a4[1];
        *(v19 + 2) = v21;
        *v19 = v20;
      }

      v15 += v14;
      --v16;
    }

    while (v16);
    v11 = v14 << 6;
    cryptorRef = 0;
    CCCryptorCreate(0, 0, 0, &md, 0x10uLL, v33, &cryptorRef);
    dataOutMoved = 0;
    CCCryptorUpdate(cryptorRef, v9, (v14 << 6), v9, (v14 << 6), &dataOutMoved);
    CCCryptorRelease(cryptorRef);
    v22 = 0;
    v23 = 0;
    do
    {
      v23 = (v23 + v9[v22++] % 3u) % 3;
    }

    while (v22 != 16);
    if (v23)
    {
      if (v23 == 1)
      {
        CC_SHA384_Init(&v30);
        CC_SHA384_Update(&v30, v9, v14 << 6);
        CC_SHA384_Final(&md, &v30);
        v13 = 48;
      }

      else
      {
        CC_SHA512_Init(&v30);
        CC_SHA512_Update(&v30, v9, v14 << 6);
        CC_SHA512_Final(&md, &v30);
        v13 = 64;
      }
    }

    else
    {
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, v9, v14 << 6);
      CC_SHA256_Final(&md, &c);
      v13 = 32;
    }

    v12 = v27 + 1;
  }

  v24 = v33[0];
  *a5 = md;
  a5[1] = v24;
  free(v9);
}

uint64_t CGPDFSecurityHandlerAuthenticateOwnerPassword(uint64_t a1, _OWORD *a2, size_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3 = a3;
  if (!a2)
  {
    if (a3)
    {
      return 0;
    }
  }

  v8 = *a1;
  if ((*a1 - 2) < 3)
  {
    if (a3 > 0x1F)
    {
      v13 = a2[1];
      *c.count = *a2;
      *&c.hash[2] = v13;
    }

    else
    {
      __memcpy_chk();
      memcpy(&c + v3, &pad_17476, 32 - v3);
    }

    CGGetMD5DigestOfBytes(&md, &c, 0x20uLL);
    if (*a1 >= 3)
    {
      v14 = 50;
      do
      {
        CGGetMD5DigestOfBytes(&md, &md, *(a1 + 8));
        --v14;
      }

      while (v14);
    }

    RC4 = *(a1 + 8);
    __memcpy_chk();
    v16 = *(a1 + 128);
    *c.count = *(a1 + 112);
    *&c.hash[2] = v16;
    if ((*a1 - 3) < 2)
    {
      for (i = 0; i != 20; ++i)
      {
        if (RC4)
        {
          for (j = 0; j != RC4; j = (j + 1))
          {
            *(dataOutMoved + j) ^= 19 - i;
          }

          RC4 = CGCryptorCreateRC4(dataOutMoved, RC4);
        }

        CGCryptorProcessBytes(RC4, &c, 0x20uLL, &c, 0x20uLL, 0);
        CGCryptorRelease(RC4);
        RC4 = *(a1 + 8);
        if (RC4)
        {
          v19 = dataOutMoved;
          v20 = *(a1 + 8);
          do
          {
            *v19 ^= 19 - i;
            v19 = (v19 + 1);
            --v20;
          }

          while (v20);
        }
      }

      return CGPDFSecurityHandlerAuthenticateUserPassword(a1, &c, 0x20uLL);
    }

    if (*a1 == 2)
    {
      v21 = CGCryptorCreateRC4(dataOutMoved, RC4);
      CGCryptorProcessBytes(v21, &c, 0x20uLL, &c, 0x20uLL, 0);
      CGCryptorRelease(v21);
      return CGPDFSecurityHandlerAuthenticateUserPassword(a1, &c, 0x20uLL);
    }

    return 0;
  }

  if (v8 != 5)
  {
    if (v8 != 6)
    {
      return 0;
    }

    hash_password_revision_6(a2, a3, (a1 + 160), (a1 + 33), &c);
    v9 = *c.count ^ *(a1 + 112) | *c.hash ^ *(a1 + 120) | *&c.hash[2] ^ *(a1 + 128) | *&c.hash[4] ^ *(a1 + 136);
    v6 = v9 == 0;
    if (v9)
    {
      return v6;
    }

    hash_password_revision_6(a2, v3, (a1 + 168), (a1 + 33), &md);
    v10 = pdf_aes_create(&md, 32);
    v11 = *(a1 + 176);
    if (v11)
    {
      if (*(v11 + 24))
      {
        decrypt_string(*(a1 + 176));
      }

      v12 = (v11 + 80);
    }

    else
    {
      v12 = 0;
    }

    dataOutMoved[0] = 0;
    v24 = v10[7];
    v25 = (a1 + 192);
    v26 = dataOutMoved;
LABEL_45:
    CCCryptorUpdate(v24, v12, 0x20uLL, v25, 0x20uLL, v26);
    pdf_aes_free(v10);
    return v6;
  }

  memset(&c.hash[6], 0, 72);
  if (a3 >= 0x7F)
  {
    LODWORD(v3) = 127;
  }

  memset(&c, 0, 32);
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, a2, v3);
  CC_SHA256_Update(&c, (a1 + 160), 8u);
  CC_SHA256_Update(&c, (a1 + 33), 0x20u);
  CC_SHA256_Update(&c, (a1 + 81), 8u);
  CC_SHA256_Update(&c, (a1 + 89), 8u);
  CC_SHA256_Final(&md, &c);
  v22 = md ^ *(a1 + 112) | *(&md + 1) ^ *(a1 + 120) | v31 ^ *(a1 + 128) | v32 ^ *(a1 + 136);
  v6 = v22 == 0;
  if (!v22)
  {
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, a2, v3);
    CC_SHA256_Update(&c, (a1 + 168), 8u);
    CC_SHA256_Update(&c, (a1 + 33), 0x20u);
    CC_SHA256_Update(&c, (a1 + 81), 8u);
    CC_SHA256_Update(&c, (a1 + 89), 8u);
    CC_SHA256_Final(dataOutMoved, &c);
    v10 = pdf_aes_create(dataOutMoved, 32);
    v23 = *(a1 + 176);
    if (v23)
    {
      if (*(v23 + 24))
      {
        decrypt_string(*(a1 + 176));
      }

      v12 = (v23 + 80);
    }

    else
    {
      v12 = 0;
    }

    v27 = 0;
    v24 = v10[7];
    v25 = (a1 + 192);
    v26 = &v27;
    goto LABEL_45;
  }

  return v6;
}

void CGPDFContextBeginMarkedContentSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 112);
    v10 = *(a1 + 96);
    v13 = @"TagType";
    v14[0] = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a2];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    if (v8)
    {
      v12 = *(v8 + 168);
      if (v12)
      {
        v12(v8, v9, v10, @"BeginMarkedContentSequence", v11);
      }
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextBeginMarkedContentSequence", a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t CGPDFContextBeginStructuralMarkedContentSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 112);
    v10 = *(a1 + 96);
    v14 = 0;
    v15[0] = @"TagType";
    v15[1] = @"MarkedContentItem";
    v16[0] = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a2];
    v16[1] = [MEMORY[0x1E696B098] valueWithPointer:&v14];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    if (v8)
    {
      v12 = *(v8 + 168);
      if (v12)
      {
        v12(v8, v9, v10, @"BeginStructuralMarkedContentSequence", v11);
      }
    }

    return v14;
  }

  else
  {
    handle_invalid_context("CGPDFContextBeginStructuralMarkedContentSequence", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

void CGPDFContextEndMarkedContentSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextEndMarkedContentSequence", a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t CGPDFContextBeginObjectReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 112);
    v10 = *(a1 + 96);
    v14 = 0;
    v15 = @"MarkedContentItem";
    v16[0] = [MEMORY[0x1E696B098] valueWithPointer:&v14];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    if (v8)
    {
      v12 = *(v8 + 168);
      if (v12)
      {
        v12(v8, v9, v10, @"BeginObjectReference", v11);
      }
    }

    return v14;
  }

  else
  {
    handle_invalid_context("CGPDFContextBeginObjectReference", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

void CGPDFContextEndObjectReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextEndObjectReference", a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t CGPDFContextAddStructureTreeRootChild(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 112);
    v10 = *(a1 + 96);
    v14 = @"StructureElement";
    v15[0] = [MEMORY[0x1E696B098] valueWithPointer:a2];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    if (v8)
    {
      v12 = *(v8 + 168);
      if (v12)
      {
        return v12(v8, v9, v10, @"AddStructureTreeRootChild", v11);
      }

      else
      {
        return 1006;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextAddStructureTreeRootChild", a1, a3, a4, a5, a6, a7, a8);
    return 1001;
  }
}

uint64_t JArithmeticDecoder::start(JArithmeticDecoder *this)
{
  if (*(this + 9))
  {
    v2 = *(this + 8);
    v3 = v2 - 1;
    *(this + 8) = v2 - 1;
    if (v2 <= 0)
    {
      v4 = 255;
      *this = 255;
      *(this + 8) = v3 - 1;
LABEL_7:
      v8 = 255;
      goto LABEL_8;
    }
  }

  v4 = (*(**(this + 3) + 32))(*(this + 3));
  v5 = *(this + 9);
  *this = v4;
  if (v5)
  {
    v6 = *(this + 8);
    v7 = __OFSUB__(v6--, 1);
    *(this + 8) = v6;
    if (v6 < 0 != v7)
    {
      goto LABEL_7;
    }
  }

  v8 = (*(**(this + 3) + 32))(*(this + 3));
  v4 = *this;
LABEL_8:
  *(this + 1) = v8;
  *(this + 2) = (v4 << 16) ^ 0xFF0000;
  result = JArithmeticDecoder::byteIn(this);
  v10 = *(this + 4) - 7;
  *(this + 2) <<= 7;
  *(this + 3) = 0x80000000;
  *(this + 4) = v10;
  return result;
}

uint64_t JArithmeticDecoder::byteIn(uint64_t this)
{
  v1 = this;
  v2 = *(this + 4);
  if (*this != 255)
  {
    *this = v2;
    if (*(this + 36) && (v6 = *(this + 32), v4 = __OFSUB__(v6, 1), --v6, *(this + 32) = v6, (v6 < 0) ^ v4))
    {
      v7 = 255;
    }

    else
    {
      this = (*(**(this + 24) + 32))(*(this + 24));
      v7 = this;
      v2 = *v1;
    }

    v8 = v1[2] - (v2 << 8) + 65280;
    v1[1] = v7;
    v1[2] = v8;
    goto LABEL_11;
  }

  if (v2 > 0x8F)
  {
LABEL_11:
    v9 = 8;
    goto LABEL_14;
  }

  *this = v2;
  if (*(this + 36) && (v3 = *(this + 32), v4 = __OFSUB__(v3, 1), --v3, *(this + 32) = v3, (v3 < 0) ^ v4))
  {
    v5 = 255;
  }

  else
  {
    this = (*(**(this + 24) + 32))(*(this + 24));
    v5 = this;
    v2 = *v1;
  }

  v10 = v1[2] - (v2 << 9) + 65024;
  v1[1] = v5;
  v1[2] = v10;
  v9 = 7;
LABEL_14:
  v1[4] = v9;
  return this;
}

uint64_t JArithmeticDecoder::decodeBit(int32x2_t *this, unsigned int a2, uint64_t *a3)
{
  if ((a2 & 0x80000000) != 0 || *(a3 + 2) <= a2)
  {
    return 0;
  }

  v4 = *a3;
  v5 = *(*a3 + a2);
  v6 = v5 >> 1;
  v7 = JArithmeticDecoder::qeTab[v5 >> 1];
  v8 = v5 & 1;
  v9 = this[1].u32[0];
  v10 = this[1].i32[1] - v7;
  this[1].i32[1] = v10;
  v11 = v9 >= v10;
  v12 = v9 - v10;
  if (v11)
  {
    this[1].i32[0] = v12;
    if (v10 >= v7)
    {
      v18 = 2 * JArithmeticDecoder::nlpsTab[v6];
      v19 = v18 | v8;
      v8 = v8 ^ 1;
      v20 = JArithmeticDecoder::switchTab[v6] == 1;
      v17 = v18 | v8;
      if (!v20)
      {
        v17 = v19;
      }
    }

    else
    {
      v17 = v8 | (2 * JArithmeticDecoder::nmpsTab[v6]);
    }

    *(v4 + a2) = v17;
    this[1].i32[1] = v7;
    v21 = this[2].i32[0];
    do
    {
      if (!v21)
      {
        JArithmeticDecoder::byteIn(this);
        v7 = this[1].u32[1];
        v21 = this[2].i32[0];
      }

      v7 *= 2;
      this[1].i32[0] *= 2;
      this[1].i32[1] = v7;
      this[2].i32[0] = --v21;
    }

    while ((v7 & 0x80000000) == 0);
  }

  else if ((v10 & 0x80000000) == 0)
  {
    if (v10 >= v7)
    {
      v15 = v8 | (2 * JArithmeticDecoder::nmpsTab[v6]);
    }

    else
    {
      v13 = 2 * JArithmeticDecoder::nlpsTab[v6];
      v14 = v13 | v8;
      v8 = v8 ^ 1;
      v15 = v13 | v8;
      if (JArithmeticDecoder::switchTab[v6] != 1)
      {
        v15 = v14;
      }
    }

    *(v4 + a2) = v15;
    v22 = this[2].i32[0];
    do
    {
      if (!v22)
      {
        JArithmeticDecoder::byteIn(this);
        v22 = this[2].i32[0];
      }

      v23 = vadd_s32(this[1], this[1]);
      this[1] = v23;
      this[2].i32[0] = --v22;
    }

    while ((v23.i32[1] & 0x80000000) == 0);
  }

  return v8;
}

uint64_t JArithmeticDecoder::decodeInt(int32x2_t *a1, int *a2, uint64_t *a3)
{
  a1[2].i32[1] = 1;
  v6 = JArithmeticDecoder::decodeBit(a1, 1u, a3);
  v7 = a1[2].u32[1];
  if (v7 >= 0x100)
  {
    v8 = v6 | (2 * v7) & 0xFE | 0x100;
  }

  else
  {
    v8 = v6 | (2 * v7);
  }

  a1[2].i32[1] = v8;
  v9 = JArithmeticDecoder::decodeBit(a1, v8, a3);
  v10 = a1[2].u32[1];
  if (v10 >= 0x100)
  {
    v11 = v9 | (2 * v10) & 0xFE | 0x100;
  }

  else
  {
    v11 = v9 | (2 * v10);
  }

  a1[2].i32[1] = v11;
  v12 = JArithmeticDecoder::decodeBit(a1, v11, a3);
  v13 = a1[2].u32[1];
  if (v13 >= 0x100)
  {
    v14 = v12 | (2 * v13) & 0xFE | 0x100;
  }

  else
  {
    v14 = v12 | (2 * v13);
  }

  a1[2].i32[1] = v14;
  v15 = JArithmeticDecoder::decodeBit(a1, v14, a3);
  v16 = v15;
  v17 = a1[2].u32[1];
  if (v17 >= 0x100)
  {
    v18 = v15 | (2 * v17) & 0xFE | 0x100;
  }

  else
  {
    v18 = v15 | (2 * v17);
  }

  a1[2].i32[1] = v18;
  if (v9)
  {
    if (v12)
    {
      if (v15)
      {
        v19 = JArithmeticDecoder::decodeBit(a1, v18, a3);
        v20 = a1[2].u32[1];
        if (v20 >= 0x100)
        {
          v21 = v19 | (2 * v20) & 0xFE | 0x100;
        }

        else
        {
          v21 = v19 | (2 * v20);
        }

        a1[2].i32[1] = v21;
        if (v19)
        {
          v22 = JArithmeticDecoder::decodeBit(a1, v21, a3);
          v23 = a1[2].u32[1];
          if (v23 >= 0x100)
          {
            v24 = v22 | (2 * v23) & 0xFE | 0x100;
          }

          else
          {
            v24 = v22 | (2 * v23);
          }

          a1[2].i32[1] = v24;
          v25 = 0;
          if (v22)
          {
            v26 = 32;
            do
            {
              v27 = JArithmeticDecoder::decodeBit(a1, v24, a3);
              v28 = a1[2].u32[1];
              if (v28 >= 0x100)
              {
                v24 = v27 | (2 * v28) & 0xFE | 0x100;
              }

              else
              {
                v24 = v27 | (2 * v28);
              }

              a1[2].i32[1] = v24;
              v25 = v27 | (2 * v25);
              --v26;
            }

            while (v26);
            v29 = v25 + 4436;
            if (!v6)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v48 = 12;
            do
            {
              v49 = JArithmeticDecoder::decodeBit(a1, v24, a3);
              v50 = a1[2].u32[1];
              if (v50 >= 0x100)
              {
                v24 = v49 | (2 * v50) & 0xFE | 0x100;
              }

              else
              {
                v24 = v49 | (2 * v50);
              }

              a1[2].i32[1] = v24;
              v25 = v49 | (2 * v25);
              --v48;
            }

            while (v48);
            v29 = v25 + 340;
            if (!v6)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          v44 = 0;
          v45 = 8;
          do
          {
            v46 = JArithmeticDecoder::decodeBit(a1, v21, a3);
            v47 = a1[2].u32[1];
            if (v47 >= 0x100)
            {
              v21 = v46 | (2 * v47) & 0xFE | 0x100;
            }

            else
            {
              v21 = v46 | (2 * v47);
            }

            a1[2].i32[1] = v21;
            v44 = v46 | (2 * v44);
            --v45;
          }

          while (v45);
          v29 = v44 + 84;
          if (!v6)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v41 = 6;
        do
        {
          v42 = JArithmeticDecoder::decodeBit(a1, v18, a3);
          v43 = a1[2].u32[1];
          if (v43 >= 0x100)
          {
            v18 = v42 | (2 * v43) & 0xFE | 0x100;
          }

          else
          {
            v18 = v42 | (2 * v43);
          }

          a1[2].i32[1] = v18;
          v16 = v42 | (2 * v16);
          --v41;
        }

        while (v41);
        v29 = v16 + 20;
        if (!v6)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
      v30 = JArithmeticDecoder::decodeBit(a1, v18, a3);
      v31 = a1[2].u32[1];
      if (v31 >= 0x100)
      {
        v32 = v30 | (2 * v31) & 0xFE | 0x100;
      }

      else
      {
        v32 = v30 | (2 * v31);
      }

      a1[2].i32[1] = v32;
      v33 = (2 * v30) | (4 * v16);
      v34 = JArithmeticDecoder::decodeBit(a1, v32, a3);
      v35 = a1[2].u32[1];
      if (v35 >= 0x100)
      {
        v36 = v34 | (2 * v35) & 0xFE | 0x100;
      }

      else
      {
        v36 = v34 | (2 * v35);
      }

      a1[2].i32[1] = v36;
      v37 = v34 | v33;
      v38 = JArithmeticDecoder::decodeBit(a1, v36, a3);
      v39 = a1[2].u32[1];
      if (v39 >= 0x100)
      {
        v40 = v38 | (2 * v39) & 0xFE | 0x100;
      }

      else
      {
        v40 = v38 | (2 * v39);
      }

      a1[2].i32[1] = v40;
      v29 = v38 + 2 * v37 + 4;
      if (!v6)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    v29 = v15 | (2 * v12);
    if (!v6)
    {
      goto LABEL_66;
    }
  }

  if (v29)
  {
    v29 = -v29;
LABEL_66:
    *a2 = v29;
    return 1;
  }

  return 0;
}

uint64_t JArithmeticDecoder::decodeIAID(int32x2_t *this, int a2, uint64_t *a3)
{
  v4 = 1;
  this[2].i32[1] = 1;
  if (a2)
  {
    v7 = a2;
    do
    {
      v4 = JArithmeticDecoder::decodeBit(this, v4, a3) | (2 * this[2].i32[1]);
      this[2].i32[1] = v4;
      --v7;
    }

    while (v7);
  }

  return v4 + (-1 << a2);
}

uint64_t RenderTriangleMesh(double *a1, unsigned int a2, int *a3, int a4, uint64_t a5, uint64_t *a6, CGFloat *a7)
{
  v161[5] = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v13 = a1[1];
  if (a2 >= 2)
  {
    v15 = a2 - 1;
    v16 = a1 + 10;
    v17 = *a1;
    v18 = a1[1];
    while (1)
    {
      v20 = *(v16 - 1);
      v19 = *v16;
      v21 = v20 > v17 ? *(v16 - 1) : v17;
      if (v20 < v14)
      {
        v14 = *(v16 - 1);
      }

      else
      {
        v17 = v21;
      }

      if (v19 < v18)
      {
        break;
      }

      if (v19 <= v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v16 += 9;
      v13 = v19;
      if (!--v15)
      {
        goto LABEL_16;
      }
    }

    v18 = *v16;
LABEL_12:
    v19 = v13;
    goto LABEL_13;
  }

  v18 = a1[1];
  v17 = *a1;
  v19 = v18;
LABEL_16:
  v23 = v17 - v14;
  v24 = v19 - v18;
  v25 = fmin(v17 - v14, v19 - v18);
  v26 = v25 < 0.0;
  if (v25 < 0.0)
  {
    v162.origin.x = v14;
    v162.origin.y = v18;
    v162.size.width = v23;
    v162.size.height = v24;
    CGRectStandardize(v162);
    v163.origin.x = v14;
    v163.origin.y = v18;
    v163.size.width = v23;
    v163.size.height = v24;
    CGRectStandardize(v163);
    v164.origin.x = v14;
    v164.origin.y = v18;
    v164.size.width = v23;
    v164.size.height = v24;
    v165 = CGRectStandardize(v164);
    if (v165.size.width < 0.0)
    {
      return 0;
    }

    if (v26)
    {
      v166.origin.x = v14;
      v166.origin.y = v18;
      v166.size.width = v23;
      v166.size.height = v24;
      v167 = CGRectStandardize(v166);
      if (v167.size.width >= 134217727.0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (v23 >= 134217727.0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v23 < 0.0 || v23 >= 134217727.0)
    {
      return result;
    }
  }

  if (!v26)
  {
    result = 0;
    if (v24 < 0.0 || v24 >= 134217727.0)
    {
      return result;
    }

LABEL_38:
    if (v26)
    {
      goto LABEL_39;
    }

    v27 = v18;
    if (fabs(v14) < 134217727.0)
    {
      goto LABEL_43;
    }

    return 0;
  }

LABEL_28:
  v168.origin.x = v14;
  v168.origin.y = v18;
  v168.size.width = v23;
  v168.size.height = v24;
  v169 = CGRectStandardize(v168);
  if (v169.size.height < 0.0)
  {
    return 0;
  }

  if (!v26)
  {
    if (v24 >= 134217727.0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v170.origin.x = v14;
  v170.origin.y = v18;
  v170.size.width = v23;
  v170.size.height = v24;
  v171 = CGRectStandardize(v170);
  if (v171.size.height >= 134217727.0)
  {
    return 0;
  }

LABEL_39:
  v172.origin.x = v14;
  v172.origin.y = v18;
  v172.size.width = v23;
  v172.size.height = v24;
  if (fabs(COERCE_DOUBLE(CGRectStandardize(v172))) >= 134217727.0)
  {
    return 0;
  }

  v27 = v18;
  if (v26)
  {
    v173.origin.x = v14;
    v173.origin.y = v18;
    v173.size.width = v23;
    v173.size.height = v24;
    *(&v27 - 1) = CGRectStandardize(v173);
  }

LABEL_43:
  if (fabs(v27) >= 134217727.0)
  {
    return 0;
  }

  v174.origin.x = v14;
  v174.origin.y = v18;
  v174.size.width = v23;
  v174.size.height = v24;
  v175 = CGRectIntegral(v174);
  x = v175.origin.x;
  y = v175.origin.y;
  width = v175.size.width;
  height = v175.size.height;
  if (v175.size.width < 0.0 || v175.size.height < 0.0)
  {
    v176 = CGRectStandardize(v175);
    v32 = v176.size.width;
    v176.origin.x = x;
    v176.origin.y = y;
    v176.size.width = width;
    v176.size.height = height;
    v175 = CGRectStandardize(v176);
  }

  else
  {
    v32 = v175.size.width;
  }

  v33 = v175.size.height;
  v34 = !v32 || v33 == 0;
  if (v34 || ((v33 * (v32 * a5)) & 0xFFFFFFFF00000000) != 0)
  {
    return 0;
  }

  v35 = v32 * a5 * v33;
  result = malloc_type_calloc(1uLL, v35, 0x100004077774924uLL);
  if (result)
  {
    v143 = result;
    v155[0] = result;
    v155[1] = result + v35 - 1;
    v142 = v32;
    v155[2] = v32;
    *&v155[3] = x;
    *&v155[4] = y;
    *&v155[5] = width;
    *&v155[6] = height;
    if (a4)
    {
      v37 = 0;
      v141 = floor(y + height);
      v154 = v32 * a5;
      while (1)
      {
        v38 = *a3;
        if (*a3 != -1)
        {
          v39 = a3[1];
          if (v39 != -1)
          {
            v40 = a3[2];
            if (v38 != -13 && v40 != -1)
            {
              break;
            }
          }
        }

LABEL_93:
        ++v37;
        a3 += 4;
        if (v37 == a4)
        {
          goto LABEL_169;
        }
      }

      v42 = &a1[9 * v38];
      v43 = v42[1];
      v44 = &a1[9 * v39];
      v45 = v44[1];
      v46 = &a1[9 * v40];
      v47 = v46[1];
      v48 = v44 + 4;
      if (v43 > v45)
      {
        if (v45 <= v47)
        {
          if (v43 <= v47)
          {
            v49 = v46 + 4;
            v50 = v42 + 4;
            v51 = &a1[9 * v40];
            v52 = v42;
          }

          else
          {
            v49 = v42 + 4;
            v50 = v46 + 4;
            v51 = v42;
            v52 = v46;
          }

          v46 = v44;
        }

        else
        {
          v49 = v42 + 4;
          v50 = v44 + 4;
          v48 = v46 + 4;
          v51 = v42;
          v52 = v44;
        }

        goto LABEL_75;
      }

      if (v47 <= v45)
      {
        if (v47 <= v43)
        {
          v50 = v42 + 4;
          v49 = v44 + 4;
          v48 = v46 + 4;
          v51 = v44;
          v52 = v42;
          goto LABEL_75;
        }

        v50 = v46 + 4;
        v49 = v44 + 4;
        v48 = v42 + 4;
        v51 = v44;
        v52 = v46;
      }

      else
      {
        v49 = v46 + 4;
        v50 = v44 + 4;
        v48 = v42 + 4;
        v51 = &a1[9 * v40];
        v52 = v44;
      }

      v46 = v42;
LABEL_75:
      v150 = v46;
      v151 = v51;
      v53 = v46[1];
      v54 = v51[1];
      *&v36 = v53 - v54;
      if (v53 - v54 != 0.0)
      {
        v55 = *v51;
        v56 = *v46;
        v58 = *v52;
        v57 = v52[1];
        v59 = v57 - v54;
        v60 = *v52 - *v51;
        if (a5)
        {
          v61 = 0;
          do
          {
            *&v161[v61] = (v48[v61] - v49[v61]) / *&v36;
            ++v61;
          }

          while (a5 != v61);
          v62 = 0;
          if (v59 == 0.0)
          {
            v59 = 1.0;
          }

          do
          {
            v160[v62] = (v50[v62] - v49[v62]) / v59;
            ++v62;
          }

          while (a5 != v62);
          v63 = v53 - v57;
          if (v53 - v57 == 0.0)
          {
            v63 = 1.0;
          }

          v64 = v159;
          v65 = v50;
          v66 = a5;
          do
          {
            v67 = *v48++;
            v68 = v67;
            v69 = *v65++;
            *v64++ = (v68 - v69) / v63;
            --v66;
          }

          while (v66);
          v70.f64[0] = v60 / v59;
          v71 = (v56 - v58) / v63;
        }

        else
        {
          if (v59 == 0.0)
          {
            v59 = 1.0;
          }

          v70.f64[0] = v60 / v59;
          v72 = v53 - v57;
          if (v53 - v57 == 0.0)
          {
            v72 = 1.0;
          }

          v71 = (v56 - v58) / v72;
        }

        v147 = v71;
        if (v54 >= y)
        {
          v73 = y + height;
          v74 = v143;
          if (v54 < y + height)
          {
            v73 = floor(v54);
            v74 = v143 + v142 * (v141 - v73) * a5;
          }

          v75 = (v55 - v56) * (v57 - v53) - (v58 - v56) * (v54 - v53);
          *&v36 = (v56 - v55) / *&v36;
          v146 = v36;
          v158 = v74;
          *(&v36 + 1) = 0;
          v156 = 0u;
          memset(v157, 0, sizeof(v157));
          v148 = v52;
          v149 = v50;
          if (v75 >= 0.0)
          {
            if (v75 > 0.0)
            {
              if (v73 <= v57)
              {
LABEL_136:
                if (v73 > v53)
                {
                  v117 = v73 - v57;
                  v156.f64[0] = *v52 + v117 * v147;
                  if (a5)
                  {
                    v118 = 0;
                    do
                    {
                      *(v157 + v118) = v50[v118] + v117 * v159[v118];
                      ++v118;
                    }

                    while (a5 != v118);
                    v119 = &v157[2] + 1;
                    v120 = v73 - v151[1];
                    v121 = *v151 + v120 * *&v146;
                    v156.f64[1] = v121;
                    v122 = v161;
                    v123 = a5;
                    do
                    {
                      v124 = *v49++;
                      v125 = v124;
                      v126 = *v122++;
                      *v119++ = v125 + v120 * v126;
                      --v123;
                    }

                    while (v123);
                  }

                  else
                  {
                    v121 = *v151 + (v73 - v151[1]) * *&v146;
                    v156.f64[1] = v121;
                  }

                  v134 = v53 <= y ? y : v53;
                  if (v73 > v134)
                  {
                    v135 = v156.f64[0];
                    do
                    {
                      RenderGouradTriangleSpan(v155, &v156, a5);
                      v135 = v135 - v147;
                      v121 = v121 - *&v146;
                      v156.f64[0] = v135;
                      v156.f64[1] = v121;
                      if (a5)
                      {
                        v136 = 0;
                        do
                        {
                          *(v157 + v136) = *(v157 + v136) - v159[v136];
                          ++v136;
                        }

                        while (a5 != v136);
                        v137 = v161;
                        v138 = &v157[2] + 1;
                        v139 = a5;
                        do
                        {
                          v140 = *v137++;
                          *v138 = *v138 - v140;
                          ++v138;
                          --v139;
                        }

                        while (v139);
                      }

                      v74 += v154;
                      v158 = v74;
                      v73 = v73 + -1.0;
                    }

                    while (v73 > v134);
                  }
                }
              }

              else
              {
                v102 = v73 - v54;
                v156.f64[0] = v55 + (v73 - v54) * v70.f64[0];
                v156.f64[1] = v55 + (v73 - v54) * *&v146;
                if (a5)
                {
                  v103 = 0;
                  do
                  {
                    *(v157 + v103) = v49[v103] + v102 * v160[v103];
                    ++v103;
                  }

                  while (a5 != v103);
                  v104 = v161;
                  v105 = v49;
                  v106 = &v157[2] + 1;
                  v107 = a5;
                  do
                  {
                    v108 = *v105++;
                    v109 = v108;
                    v110 = *v104++;
                    *v106++ = v109 + v102 * v110;
                    --v107;
                  }

                  while (v107);
                }

                *&v70.f64[1] = v146;
                v111 = v156;
                v145 = v70;
                while (1)
                {
                  v153 = v111;
                  if (v73 <= y)
                  {
                    break;
                  }

                  RenderGouradTriangleSpan(v155, &v156, a5);
                  v52 = v148;
                  v111 = vsubq_f64(v153, v145);
                  v156 = v111;
                  if (a5)
                  {
                    v112 = 0;
                    do
                    {
                      *(v157 + v112) = *(v157 + v112) - v160[v112];
                      ++v112;
                    }

                    while (a5 != v112);
                    v113 = v161;
                    v114 = &v157[2] + 1;
                    v115 = a5;
                    do
                    {
                      v116 = *v113++;
                      *v114 = *v114 - v116;
                      ++v114;
                      --v115;
                    }

                    while (v115);
                  }

                  v74 += v154;
                  v158 = v74;
                  v73 = v73 + -1.0;
                  v57 = v148[1];
                  v50 = v149;
                  if (v73 <= v57)
                  {
                    v53 = v150[1];
                    goto LABEL_136;
                  }
                }
              }
            }
          }

          else if (v73 <= v57)
          {
LABEL_113:
            if (v73 > v53)
            {
              v92 = v73 - v151[1];
              *(&v36 + 1) = *(&v146 + 1);
              v156.f64[0] = *v151 + v92 * *&v146;
              v93 = v73 - v57;
              if (a5)
              {
                v94 = 0;
                do
                {
                  *(v157 + v94) = v49[v94] + v92 * *&v161[v94];
                  ++v94;
                }

                while (a5 != v94);
                v95 = *v52 + v93 * v147;
                v156.f64[1] = v95;
                v96 = v159;
                v97 = &v157[2] + 1;
                v98 = a5;
                do
                {
                  v99 = *v50++;
                  v100 = v99;
                  v101 = *v96++;
                  *v97++ = v100 + v93 * v101;
                  --v98;
                }

                while (v98);
              }

              else
              {
                v95 = *v52 + v93 * v147;
                v156.f64[1] = v95;
              }

              v127 = v53 <= y ? y : v53;
              if (v73 > v127)
              {
                v128 = v156.f64[0];
                do
                {
                  RenderGouradTriangleSpan(v155, &v156, a5);
                  v128 = v128 - *&v146;
                  v95 = v95 - v147;
                  v156.f64[0] = v128;
                  v156.f64[1] = v95;
                  if (a5)
                  {
                    v129 = 0;
                    do
                    {
                      *(v157 + v129) = *(v157 + v129) - *&v161[v129];
                      ++v129;
                    }

                    while (a5 != v129);
                    v130 = v159;
                    v131 = &v157[2] + 1;
                    v132 = a5;
                    do
                    {
                      v133 = *v130++;
                      *v131 = *v131 - v133;
                      ++v131;
                      --v132;
                    }

                    while (v132);
                  }

                  v74 += v154;
                  v158 = v74;
                  v73 = v73 + -1.0;
                }

                while (v73 > v127);
              }
            }
          }

          else
          {
            v76 = v73 - v54;
            v156.f64[0] = v55 + (v73 - v54) * *&v146;
            v156.f64[1] = v55 + (v73 - v54) * v70.f64[0];
            if (a5)
            {
              v77 = 0;
              do
              {
                *(v157 + v77) = v49[v77] + v76 * *&v161[v77];
                ++v77;
              }

              while (a5 != v77);
              v78 = v160;
              v79 = v49;
              v80 = &v157[2] + 1;
              v81 = a5;
              do
              {
                v82 = *v79++;
                v83 = v82;
                v84 = *v78++;
                *v80++ = v83 + v76 * v84;
                --v81;
              }

              while (v81);
            }

            *&v85.f64[0] = v146;
            v85.f64[1] = v70.f64[0];
            v144 = v85;
            v86 = v156;
            while (v73 > y)
            {
              v152 = v86;
              RenderGouradTriangleSpan(v155, &v156, a5);
              v52 = v148;
              v86 = vsubq_f64(v152, v144);
              v156 = v86;
              if (a5)
              {
                v87 = 0;
                do
                {
                  *(v157 + v87) = *(v157 + v87) - *&v161[v87];
                  ++v87;
                }

                while (a5 != v87);
                v88 = v160;
                v89 = &v157[2] + 1;
                v90 = a5;
                do
                {
                  v91 = *v88++;
                  *v89 = *v89 - v91;
                  ++v89;
                  --v90;
                }

                while (v90);
              }

              v74 += v154;
              v158 = v74;
              v73 = v73 + -1.0;
              v57 = v148[1];
              v50 = v149;
              if (v73 <= v57)
              {
                v53 = v150[1];
                goto LABEL_113;
              }
            }
          }
        }
      }

      goto LABEL_93;
    }

LABEL_169:
    *a6 = v143;
    *a7 = x;
    a7[1] = y;
    result = 1;
    a7[2] = width;
    a7[3] = height;
  }

  return result;
}

uint64_t RenderGouradTriangleSpan(uint64_t result, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  if (*a2 > v5)
  {
    ++v5;
  }

  v6 = *(result + 24);
  v7 = v4;
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v4 <= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 >= (v6 + *(result + 40)))
  {
    v8 = (v6 + *(result + 40));
  }

  if (v5 < v8)
  {
    v9 = 1.0;
    if (v4 != v3)
    {
      v9 = 1.0 / (v4 - v3);
    }

    if (a3)
    {
      v10 = (a2 + 56);
      v11 = (a2 + 16);
      v12 = v35;
      v13 = a3;
      do
      {
        *v12++ = v9 * (*v10 - *(v10 - 5));
        ++v10;
        --v13;
      }

      while (v13);
      v14 = v5 - v3;
      v15 = v34;
      v16 = v33;
      v17 = v35;
      v18 = a3;
      do
      {
        v19 = *v11++;
        v20 = v19;
        v21 = *v17++;
        *v16++ = (v21 * 16777215.0);
        *v15++ = ((v20 + v14 * v21) * 16777215.0);
        --v18;
      }

      while (v18);
    }

    v22 = *(a2 + 96);
    if (v22 >= *result)
    {
      v23 = *(result + 8);
      v24 = v23 >= v22;
      v25 = v23 - v22;
      if (v24)
      {
        v26 = (v5 - v6) * a3;
        if (v26 <= v25)
        {
          v27 = (v22 + v26);
          while (!a3)
          {
LABEL_28:
            if (++v5 >= v8)
            {
              return result;
            }
          }

          v28 = v34;
          v29 = v33;
          v30 = a3;
          while (v27 <= *(result + 8))
          {
            v31 = *v29++;
            v32 = *v28;
            *v27++ = BYTE2(*v28);
            *v28++ = v32 + v31;
            if (!--v30)
            {
              goto LABEL_28;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t compareZOrder(id *a1, id *a2)
{
  v3 = [*a1 zOrder];
  v4 = [*a2 zOrder];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 > v4;
  }
}

BOOL CGHasRequiredColorSyncVersion()
{
  if (CGHasRequiredColorSyncVersion_cglibrarypredicate != -1)
  {
    dispatch_once(&CGHasRequiredColorSyncVersion_cglibrarypredicate, &__block_literal_global_17641);
  }

  v0 = CGHasRequiredColorSyncVersion_f();
  if (CGHasRequiredColorSyncVersion_cglibrarypredicate_22 != -1)
  {
    dispatch_once(&CGHasRequiredColorSyncVersion_cglibrarypredicate_22, &__block_literal_global_25_17642);
  }

  return (CGHasRequiredColorSyncVersion_f_21() | (v0 << 32)) > 0xF0000030F000005;
}

uint64_t CGColorTransformGetTypeID()
{
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  return CGColorTransformGetTypeID_type_id;
}

CFStringRef color_transform_copy_format_description(void *a1)
{
  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v3 = Cache[2];
  }

  else
  {
    v3 = 0;
  }

  return CFStringCreateWithFormat(0, 0, @"<CGColorTransform %p -> space:%@ base:%@>", a1, v3, a1[3]);
}

uint64_t color_transform_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 96) == *(a2 + 96))
    {
      v5 = *(a2 + 32);
      if (*(a1 + 32))
      {
        if (v5)
        {
LABEL_7:
          Cache = CGColorTransformGetCache(a1);
          if (Cache)
          {
            v7 = Cache[2];
          }

          else
          {
            v7 = 0;
          }

          v8 = CGColorTransformGetCache(a2);
          if (v8)
          {
            v9 = v8[2];
          }

          else
          {
            v9 = 0;
          }

          result = CFEqual(v7, v9);
          if (result)
          {
            v10 = *(a1 + 32);
            if (!v10)
            {
              return 1;
            }

            v11 = *(a2 + 32);
            if (!v11)
            {
              return 1;
            }

            result = CFEqual(v10, v11);
            if (result)
            {
              return 1;
            }
          }

          return result;
        }
      }

      else if (!v5)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  return result;
}

void *CGColorTransformGetColorSpace(void *a1)
{
  result = CGColorTransformGetCache(a1);
  if (result)
  {
    return result[2];
  }

  return result;
}

CFTypeRef CGColorTransformRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

uint64_t CGColorTransformCreateCopyWithAttribute(uint64_t a1, void *a2)
{
  v2 = a1;
  keys[1] = *MEMORY[0x1E69E9840];
  values = a2;
  keys[0] = @"kCGColorConversionInfoOptions";
  if (a1)
  {
    v3 = *(a1 + 32);
    if (v3 && CFDictionaryGetCount(v3) >= 1)
    {
      Count = CFDictionaryGetCount(*(v2 + 32));
      v6 = 8 * (Count + 1);
      MEMORY[0x1EEE9AC00](Count, v7);
      v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
      if (v6 >= 0x200)
      {
        v9 = 512;
      }

      else
      {
        v9 = 8 * (Count + 1);
      }

      bzero(&v15 - v8, v9);
      MEMORY[0x1EEE9AC00](v10, v11);
      bzero(&v15 - v8, v9);
      CFDictionaryGetKeysAndValues(*(v2 + 32), (&v15 - v8), (&v15 - v8));
      *(&v15 + 8 * Count - v8) = @"kCGColorConversionInfoOptions";
      *(&v15 + 8 * Count - v8) = a2;
      v12 = CFDictionaryCreate(0, (&v15 - v8), (&v15 - v8), Count + 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v12 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    Cache = CGColorTransformGetCache(v2);
    if (Cache)
    {
      Cache = *(Cache + 2);
    }

    v2 = color_transform_create(Cache, v12);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  return v2;
}

uint64_t CGColorTransformGetIdentifier(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGColorTransformUsesCalibratedColor(_BYTE *a1)
{
  v2 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v2 == CGColorTransformGetTypeID_type_id)
  {
    v3 = a1[96];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void CGColorTransformRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *CGColorTransformConvertData(void *a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, int a12)
{
  if (a6 == 16)
  {
    v15 = 2;
  }

  else
  {
    v15 = a6 == 8;
  }

  if (a6 == 32)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  return CGColorTransformConvertComponentData(a1, a2, v16, a3, a4, a5, a7, a7, v18, a9, a10, v19, a12);
}

CFDictionaryRef CGColorTransformCreateResolveReferenceWhiteToneMappingOptions(const __CFDictionary *cf)
{
  v1 = cf;
  keys[1] = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return v1;
  }

  if (CGReferenceWhiteToneMappingGetDefaultOptions_predicate != -1)
  {
    dispatch_once(&CGReferenceWhiteToneMappingGetDefaultOptions_predicate, &__block_literal_global_40);
  }

  v2 = CGReferenceWhiteToneMappingGetDefaultOptions_options;
  v3 = CFGetTypeID(v1);
  if (v3 != CFBooleanGetTypeID())
  {
    v6 = CFGetTypeID(v1);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v2, @"kCGApplyReferenceWhiteToneMapping");
      if (CFEqual(Value, v1) == 1)
      {
        values = v1;
        keys[0] = @"kCGApplyReferenceWhiteToneMapping";
        return CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      if (MutableCopy)
      {
        v9 = MutableCopy;
        v10 = CFDictionaryGetValue(v1, @"kCGRWTMSourcePeak");
        if (!v10)
        {
          goto LABEL_22;
        }

        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 != CFNumberGetTypeID())
        {
          goto LABEL_22;
        }

        v13 = CFGetTypeID(v11);
        TypeID = CFNumberGetTypeID();
        v15 = 0;
        if (v13 == TypeID)
        {
          LODWORD(keys[0]) = 0;
          CFNumberGetValue(v11, kCFNumberFloatType, keys);
          v15 = keys[0];
        }

        LODWORD(keys[0]) = v15;
        v16 = CFNumberCreate(0, kCFNumberFloatType, keys);
        if (v16)
        {
          v17 = v16;
          CFDictionarySetValue(v9, @"kCGRWTMSourcePeak", v16);
          CFRelease(v17);
          v18 = 1;
        }

        else
        {
LABEL_22:
          v18 = 0;
        }

        v19 = CFDictionaryGetValue(v1, @"kCGRWTMSourceReferenceWhite");
        v20 = 0.0;
        if (v19)
        {
          v21 = v19;
          v22 = CFGetTypeID(v19);
          if (v22 == CFNumberGetTypeID())
          {
            v23 = CFGetTypeID(v21);
            if (v23 == CFNumberGetTypeID())
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v21, kCFNumberFloatType, keys);
              v20 = *keys;
            }

            *keys = v20;
            v24 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v24)
            {
              v25 = v24;
              CFDictionarySetValue(v9, @"kCGRWTMSourceReferenceWhite", v24);
              CFRelease(v25);
              v18 = 1;
            }
          }
        }

        v26 = CFDictionaryGetValue(v1, @"kCGRWTMEDRHeadroom");
        if (v26)
        {
          v27 = v26;
          v28 = CFGetTypeID(v26);
          if (v28 == CFNumberGetTypeID())
          {
            v29 = CFGetTypeID(v27);
            v30 = CFNumberGetTypeID();
            v31 = 0;
            if (v29 == v30)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v27, kCFNumberFloatType, keys);
              v31 = keys[0];
            }

            LODWORD(keys[0]) = v31;
            v32 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v32)
            {
              v33 = v32;
              CFDictionarySetValue(v9, @"kCGRWTMEDRHeadroom", v32);
              CFRelease(v33);
              v18 = 1;
            }
          }
        }

        v34 = CFDictionaryGetValue(v1, @"kCGRWTMTargetReferenceWhiteBase");
        if (v34)
        {
          v35 = v34;
          v36 = CFGetTypeID(v34);
          if (v36 == CFNumberGetTypeID())
          {
            v37 = CFGetTypeID(v35);
            v38 = CFNumberGetTypeID();
            v39 = 0;
            if (v37 == v38)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v35, kCFNumberFloatType, keys);
              v39 = keys[0];
            }

            LODWORD(keys[0]) = v39;
            v40 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v40)
            {
              v41 = v40;
              CFDictionarySetValue(v9, @"kCGRWTMTargetReferenceWhiteBase", v40);
              CFRelease(v41);
              v18 = 1;
            }
          }
        }

        v42 = CFDictionaryGetValue(v1, @"kCGRWTMReferenceWhiteThreshold");
        if (v42)
        {
          v43 = v42;
          v44 = CFGetTypeID(v42);
          if (v44 == CFNumberGetTypeID())
          {
            v45 = CFGetTypeID(v43);
            v46 = CFNumberGetTypeID();
            v47 = 0;
            if (v45 == v46)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v43, kCFNumberFloatType, keys);
              v47 = keys[0];
            }

            LODWORD(keys[0]) = v47;
            v48 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v48)
            {
              v49 = v48;
              CFDictionarySetValue(v9, @"kCGRWTMReferenceWhiteThreshold", v48);
              CFRelease(v49);
              v18 = 1;
            }
          }
        }

        v50 = CFDictionaryGetValue(v1, @"kCGRWTMVersion");
        if (v50)
        {
          v51 = v50;
          v52 = CFGetTypeID(v50);
          if (v52 == CFNumberGetTypeID())
          {
            v53 = CFGetTypeID(v51);
            if (v53 == CFNumberGetTypeID())
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v51, kCFNumberIntType, keys);
              v54 = keys[0];
            }

            else
            {
              v54 = 0;
            }

            LODWORD(keys[0]) = v54;
            v55 = CFNumberCreate(0, kCFNumberSInt32Type, keys);
            if (v55)
            {
              v56 = v55;
              CFDictionarySetValue(v9, @"kCGRWTMVersion", v55);
              CFRelease(v56);
              v18 = 1;
            }
          }
        }

        v57 = CFDictionaryGetValue(v1, @"kCGContentEDRStrength");
        if (v57)
        {
          v58 = v57;
          v59 = CFGetTypeID(v57);
          if (v59 == CFNumberGetTypeID())
          {
            v60 = CFGetTypeID(v58);
            v61 = CFNumberGetTypeID();
            v62 = 0;
            if (v60 == v61)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v58, kCFNumberFloatType, keys);
              v62 = keys[0];
            }

            LODWORD(keys[0]) = v62;
            v63 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v63)
            {
              v64 = v63;
              CFDictionarySetValue(v9, @"kCGContentEDRStrength", v63);
              CFRelease(v64);
              v18 = 1;
            }
          }
        }

        v65 = CFDictionaryGetValue(v1, @"kCGContentAverageLightLevel");
        if (v65)
        {
          v66 = v65;
          v67 = CFGetTypeID(v65);
          if (v67 == CFNumberGetTypeID())
          {
            v68 = CFGetTypeID(v66);
            v69 = 0.0;
            if (v68 == CFNumberGetTypeID())
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v66, kCFNumberFloatType, keys);
              v69 = *keys;
            }

            if (v20 == 0.0)
            {
              if (CGImageDefaultReferenceWhite_once != -1)
              {
                dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
              }

              v20 = CGGetFloatValue(CGImageDefaultReferenceWhite_media_white);
            }

            LODWORD(keys[0]) = vcvtas_u32_f32(v69 / v20);
            v70 = CFNumberCreate(0, kCFNumberSInt32Type, keys);
            if (v70)
            {
              v71 = v70;
              CFDictionarySetValue(v9, @"kCGContentAverageLightLevelNits", v70);
              CFRelease(v71);
              v18 = 1;
            }
          }
        }

        v72 = CFDictionaryGetValue(v1, @"kCGContentAverageLightLevelNits");
        if (v72)
        {
          v73 = v72;
          v74 = CFGetTypeID(v72);
          if (v74 == CFNumberGetTypeID())
          {
            v75 = CFGetTypeID(v73);
            if (v75 == CFNumberGetTypeID())
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v73, kCFNumberIntType, keys);
              v76 = keys[0];
            }

            else
            {
              v76 = 0;
            }

            LODWORD(keys[0]) = v76;
            v77 = CFNumberCreate(0, kCFNumberSInt32Type, keys);
            if (v77)
            {
              v78 = v77;
              CFDictionarySetValue(v9, @"kCGContentAverageLightLevelNits", v77);
              CFRelease(v78);
              v18 = 1;
            }
          }
        }

        v79 = CFDictionaryGetValue(v1, @"kCGConstrainedDynamicRange");
        if (v79)
        {
          v80 = v79;
          v81 = CFGetTypeID(v79);
          if (v81 == CFNumberGetTypeID())
          {
            v82 = CFGetTypeID(v80);
            v83 = CFNumberGetTypeID();
            v84 = 0;
            if (v82 == v83)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v80, kCFNumberFloatType, keys);
              v84 = keys[0];
            }

            LODWORD(keys[0]) = v84;
            v85 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v85)
            {
              v86 = v85;
              CFDictionarySetValue(v9, @"kCGConstrainedDynamicRange", v85);
              CFRelease(v86);
              v18 = 1;
            }
          }
        }

        v87 = CFDictionaryGetValue(v1, @"kCGRWTMMinimumSDRExposure");
        if (v87)
        {
          v88 = v87;
          v89 = CFGetTypeID(v87);
          if (v89 == CFNumberGetTypeID())
          {
            v90 = CFGetTypeID(v88);
            v91 = CFNumberGetTypeID();
            v92 = 0;
            if (v90 == v91)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v88, kCFNumberFloatType, keys);
              v92 = keys[0];
            }

            LODWORD(keys[0]) = v92;
            v93 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v93)
            {
              v94 = v93;
              CFDictionarySetValue(v9, @"kCGRWTMMinimumSDRExposure", v93);
              CFRelease(v94);
              v18 = 1;
            }
          }
        }

        v95 = CFDictionaryGetValue(v1, @"kCGRWTMOffsetAnchor");
        if (v95)
        {
          v96 = v95;
          v97 = CFGetTypeID(v95);
          if (v97 == CFNumberGetTypeID())
          {
            v98 = CFGetTypeID(v96);
            v99 = CFNumberGetTypeID();
            v100 = 0;
            if (v98 == v99)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v96, kCFNumberFloatType, keys);
              v100 = keys[0];
            }

            LODWORD(keys[0]) = v100;
            v101 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v101)
            {
              v102 = v101;
              CFDictionarySetValue(v9, @"kCGRWTMOffsetAnchor", v101);
              CFRelease(v102);
              v18 = 1;
            }
          }
        }

        v103 = CFDictionaryGetValue(v1, @"kCGRWTMHighlightsTradeOffRatio");
        if (v103)
        {
          v104 = v103;
          v105 = CFGetTypeID(v103);
          if (v105 == CFNumberGetTypeID())
          {
            v106 = CFGetTypeID(v104);
            v107 = CFNumberGetTypeID();
            v108 = 0;
            if (v106 == v107)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v104, kCFNumberFloatType, keys);
              v108 = keys[0];
            }

            LODWORD(keys[0]) = v108;
            v109 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v109)
            {
              v110 = v109;
              CFDictionarySetValue(v9, @"kCGRWTMHighlightsTradeOffRatio", v109);
              CFRelease(v110);
              v18 = 1;
            }
          }
        }

        v111 = CFDictionaryGetValue(v1, @"kCGRWTMMinimumGammaAdjustment");
        if (v111)
        {
          v112 = v111;
          v113 = CFGetTypeID(v111);
          if (v113 == CFNumberGetTypeID())
          {
            v114 = CFGetTypeID(v112);
            v115 = CFNumberGetTypeID();
            v116 = 0;
            if (v114 == v115)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v112, kCFNumberFloatType, keys);
              v116 = keys[0];
            }

            LODWORD(keys[0]) = v116;
            v117 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v117)
            {
              v118 = v117;
              CFDictionarySetValue(v9, @"kCGRWTMMinimumGammaAdjustment", v117);
              CFRelease(v118);
              v18 = 1;
            }
          }
        }

        v119 = CFDictionaryGetValue(v1, @"kCGRWTMStopAnchor");
        if (v119)
        {
          v120 = v119;
          v121 = CFGetTypeID(v119);
          if (v121 == CFNumberGetTypeID())
          {
            v122 = CFGetTypeID(v120);
            v123 = CFNumberGetTypeID();
            v124 = 0;
            if (v122 == v123)
            {
              LODWORD(keys[0]) = 0;
              CFNumberGetValue(v120, kCFNumberFloatType, keys);
              v124 = keys[0];
            }

            LODWORD(keys[0]) = v124;
            v125 = CFNumberCreate(0, kCFNumberFloatType, keys);
            if (v125)
            {
              v126 = v125;
              CFDictionarySetValue(v9, @"kCGRWTMStopAnchor", v125);
              CFRelease(v126);
              v18 = 1;
            }
          }
        }

        if (CFDictionaryContainsKey(v1, @"kCGRWTMPrimaries") == 1)
        {
          v127 = CFDictionaryGetValue(v1, @"kCGRWTMPrimaries");
          if (v127)
          {
            CFDictionarySetValue(v9, @"kCGRWTMPrimaries", v127);
LABEL_117:
            values = v9;
            keys[0] = @"kCGApplyReferenceWhiteToneMapping";
            v1 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFRelease(v9);
            return v1;
          }
        }

        if (v18)
        {
          goto LABEL_117;
        }
      }
    }

    return 0;
  }

  if (*MEMORY[0x1E695E4D0] != v1 || v2 == 0)
  {
    return 0;
  }

  return CFRetain(v2);
}

CFDictionaryRef create_colorsync_reference_white_tone_mapping_options(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"kCGApplyReferenceWhiteToneMapping");
  ColorSyncToneMappingDetails = CGReferenceWhiteToneMappingCreateColorSyncToneMappingDetails(Value);
  if (!ColorSyncToneMappingDetails)
  {
    return 0;
  }

  v5 = ColorSyncToneMappingDetails;
  v8 = ColorSyncToneMappingDetails;
  keys = @"com.apple.cmm.ApplyReferenceWhiteToneMapping";
  v6 = CFDictionaryCreate(0, &keys, &v8, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v5);
  return v6;
}

CFDictionaryRef CGColorTransformCreateResolveFlexLumaOptions(CFTypeRef cf)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  if (CGFlexLumaToneMappingGetDefaultOptions_predicate != -1)
  {
    dispatch_once(&CGFlexLumaToneMappingGetDefaultOptions_predicate, &__block_literal_global_10);
  }

  v2 = CGFlexLumaToneMappingGetDefaultOptions_options;
  v3 = CFGetTypeID(cf);
  if (v3 != CFBooleanGetTypeID())
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v2, @"kCGApplyFlexLumaScaling");
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      if (MutableCopy)
      {
        v9 = MutableCopy;
        v10 = CFDictionaryGetValue(cf, @"kCGFlexGTCTargetHeadroom");
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 != CFNumberGetTypeID())
        {
          goto LABEL_19;
        }

        v13 = CFGetTypeID(v11);
        TypeID = CFNumberGetTypeID();
        v15 = 0;
        if (v13 == TypeID)
        {
          LODWORD(valuePtr[0]) = 0;
          CFNumberGetValue(v11, kCFNumberFloatType, valuePtr);
          v15 = valuePtr[0];
        }

        LODWORD(valuePtr[0]) = v15;
        v16 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
        if (v16)
        {
          v17 = v16;
          CFDictionarySetValue(v9, @"kCGFlexGTCTargetHeadroom", v16);
          CFRelease(v17);
          v18 = 1;
        }

        else
        {
LABEL_19:
          v18 = 0;
        }

        v19 = CFDictionaryGetValue(cf, @"kCGContentEDRStrength");
        if (v19)
        {
          v20 = v19;
          v21 = CFGetTypeID(v19);
          if (v21 == CFNumberGetTypeID())
          {
            v22 = CFGetTypeID(v20);
            v23 = CFNumberGetTypeID();
            v24 = 0;
            if (v22 == v23)
            {
              LODWORD(valuePtr[0]) = 0;
              CFNumberGetValue(v20, kCFNumberFloatType, valuePtr);
              v24 = valuePtr[0];
            }

            LODWORD(valuePtr[0]) = v24;
            v25 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
            if (v25)
            {
              v26 = v25;
              CFDictionarySetValue(v9, @"kCGContentEDRStrength", v25);
              CFRelease(v26);
              v18 = 1;
            }
          }
        }

        v27 = CFDictionaryGetValue(cf, @"kCGContentAverageLightLevel");
        if (v27)
        {
          v28 = v27;
          v29 = CFGetTypeID(v27);
          if (v29 == CFNumberGetTypeID())
          {
            v30 = CFGetTypeID(v28);
            v31 = 0.0;
            if (v30 == CFNumberGetTypeID())
            {
              LODWORD(valuePtr[0]) = 0;
              CFNumberGetValue(v28, kCFNumberFloatType, valuePtr);
              v31 = *valuePtr;
            }

            if (CGImageDefaultReferenceWhite_once != -1)
            {
              dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
            }

            v32 = CGImageDefaultReferenceWhite_media_white;
            v33 = 0.0;
            if (CGImageDefaultReferenceWhite_media_white)
            {
              v34 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
              if (v34 == CFNumberGetTypeID())
              {
                LODWORD(valuePtr[0]) = 0;
                CFNumberGetValue(v32, kCFNumberFloatType, valuePtr);
                v33 = *valuePtr;
              }
            }

            LODWORD(valuePtr[0]) = vcvtas_u32_f32(v31 / v33);
            v35 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
            if (v35)
            {
              v36 = v35;
              CFDictionarySetValue(v9, @"kCGContentAverageLightLevelNits", v35);
              CFRelease(v36);
              v18 = 1;
            }
          }
        }

        v37 = CFDictionaryGetValue(cf, @"kCGContentAverageLightLevelNits");
        if (v37)
        {
          v38 = v37;
          v39 = CFGetTypeID(v37);
          if (v39 == CFNumberGetTypeID())
          {
            v40 = CFGetTypeID(v38);
            if (v40 == CFNumberGetTypeID())
            {
              LODWORD(valuePtr[0]) = 0;
              CFNumberGetValue(v38, kCFNumberIntType, valuePtr);
              v41 = valuePtr[0];
            }

            else
            {
              v41 = 0;
            }

            LODWORD(valuePtr[0]) = v41;
            v42 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
            if (v42)
            {
              v43 = v42;
              CFDictionarySetValue(v9, @"kCGContentAverageLightLevelNits", v42);
              CFRelease(v43);
              v18 = 1;
            }
          }
        }

        v44 = CFDictionaryGetValue(cf, @"kCGConstrainedDynamicRange");
        if (v44)
        {
          v45 = v44;
          v46 = CFGetTypeID(v44);
          if (v46 == CFNumberGetTypeID())
          {
            v47 = CFGetTypeID(v45);
            v48 = CFNumberGetTypeID();
            v49 = 0;
            if (v47 == v48)
            {
              LODWORD(valuePtr[0]) = 0;
              CFNumberGetValue(v45, kCFNumberFloatType, valuePtr);
              v49 = valuePtr[0];
            }

            LODWORD(valuePtr[0]) = v49;
            v50 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
            if (v50)
            {
              v51 = v50;
              CFDictionarySetValue(v9, @"kCGConstrainedDynamicRange", v50);
              CFRelease(v51);
LABEL_51:
              values = v9;
              valuePtr[0] = @"kCGApplyFlexLumaScaling";
              v52 = CFDictionaryCreate(0, valuePtr, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFRelease(v9);
              return v52;
            }
          }
        }

        if (v18)
        {
          goto LABEL_51;
        }
      }
    }

    return 0;
  }

  if (*MEMORY[0x1E695E4D0] != cf || v2 == 0)
  {
    return 0;
  }

  return CFRetain(v2);
}

CFNumberRef CGColorTransformCreateResolveFlexTRCOptions(CFTypeRef cf)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  if (CGFlexTRCToneMappingGetDefaultOptions_predicate != -1)
  {
    dispatch_once(&CGFlexTRCToneMappingGetDefaultOptions_predicate, &__block_literal_global_129);
  }

  v2 = CGFlexTRCToneMappingGetDefaultOptions_options;
  v3 = CFGetTypeID(cf);
  if (v3 != CFBooleanGetTypeID())
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(cf, @"kCGFlexGTCTargetHeadroom");
      v8 = Value;
      if (Value)
      {
        v9 = CFGetTypeID(Value);
        if (v9 != CFNumberGetTypeID())
        {
          return 0;
        }

        v10 = CFGetTypeID(v8);
        TypeID = CFNumberGetTypeID();
        v12 = 0;
        if (v10 == TypeID)
        {
          LODWORD(valuePtr[0]) = 0;
          CFNumberGetValue(v8, kCFNumberFloatType, valuePtr);
          v12 = valuePtr[0];
        }

        LODWORD(valuePtr[0]) = v12;
        v8 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
        if (!v8)
        {
          return v8;
        }

        v13 = CFDictionaryGetValue(v2, @"kCGApplyFlexTRC");
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v13);
        if (!MutableCopy)
        {
          return 0;
        }

        v15 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"kCGFlexGTCTargetHeadroom", v8);
        CFRelease(v8);
        values = v15;
        valuePtr[0] = @"kCGApplyFlexTRC";
        v8 = CFDictionaryCreate(0, valuePtr, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(v15);
      }

      return v8;
    }

    return 0;
  }

  if (*MEMORY[0x1E695E4D0] != cf || v2 == 0)
  {
    return 0;
  }

  return CFRetain(v2);
}

CFDictionaryRef CGColorTransformCreateResolveExtendedRangeToneMappingOptions(const __CFDictionary *cf)
{
  v1 = cf;
  keys[1] = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return v1;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFStringGetTypeID())
  {
    if (CFEqual(v1, @"kCGApplyEXRToneMappingGamma"))
    {
      if (CGEXRToneMappingGammaGetDefaultOptions_predicate == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_43;
    }

    if (!CFEqual(v1, @"kCGApplyDisplayReferredExtendedRangeToneMapping"))
    {
      if (!CFEqual(v1, @"kCGApplySceneReferredExtendedRangeToneMapping"))
      {
        return 0;
      }

      if (CGColorTransformGetSceneReferredToneMappingDefaultOptions_predicate != -1)
      {
        dispatch_once(&CGColorTransformGetSceneReferredToneMappingDefaultOptions_predicate, &__block_literal_global_54_17812);
      }

      v3 = CGColorTransformGetSceneReferredToneMappingDefaultOptions_sceneReferredToneMappingOptions;
      if (!CGColorTransformGetSceneReferredToneMappingDefaultOptions_sceneReferredToneMappingOptions)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (CGColorTransformGetDisplayReferredToneMappingDefaultOptions_predicate == -1)
    {
LABEL_19:
      v3 = CGColorTransformGetDisplayReferredToneMappingDefaultOptions_displayReferredToneMappingOptions;
      if (!CGColorTransformGetDisplayReferredToneMappingDefaultOptions_displayReferredToneMappingOptions)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_44:
    dispatch_once(&CGColorTransformGetDisplayReferredToneMappingDefaultOptions_predicate, &__block_literal_global_42_17811);
    goto LABEL_19;
  }

  v4 = CFGetTypeID(v1);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  if (CFDictionaryContainsKey(v1, @"kCGApplyEXRToneMappingGamma") != 1)
  {
    if (CFDictionaryContainsKey(v1, @"kCGApplyDisplayReferredExtendedRangeToneMapping") == 1)
    {
      if (CFDictionaryGetValue(v1, @"kCGApplyDisplayReferredExtendedRangeToneMapping") != *MEMORY[0x1E695E4D0])
      {
        Value = CFDictionaryGetValue(v1, @"kCGApplyDisplayReferredExtendedRangeToneMapping");
        v1 = Value;
        if (Value)
        {
          v9 = CFGetTypeID(Value);
          if (v9 != CFDictionaryGetTypeID())
          {
            return 0;
          }

          v10 = CFDictionaryGetValue(v1, @"kCGApplyReferenceWhiteToneMapping");
          ResolveReferenceWhiteToneMappingOptions = CGColorTransformCreateResolveReferenceWhiteToneMappingOptions(v10);
          if (!ResolveReferenceWhiteToneMappingOptions)
          {
            return 0;
          }

          v12 = ResolveReferenceWhiteToneMappingOptions;
          values = ResolveReferenceWhiteToneMappingOptions;
          keys[0] = @"kCGApplyDisplayReferredExtendedRangeToneMapping";
          v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFRelease(v12);
        }

        return v1;
      }

      if (CGColorTransformGetDisplayReferredToneMappingDefaultOptions_predicate == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_44;
    }

    if (CFDictionaryContainsKey(v1, @"kCGApplySceneReferredExtendedRangeToneMapping") != 1 || CFDictionaryGetValue(v1, @"kCGApplySceneReferredExtendedRangeToneMapping") != *MEMORY[0x1E695E4D0])
    {
      return 0;
    }

LABEL_40:
    v3 = v1;
    goto LABEL_31;
  }

  if (CFDictionaryGetValue(v1, @"kCGApplyEXRToneMappingGamma") != *MEMORY[0x1E695E4D0])
  {
    v5 = CFDictionaryGetValue(v1, @"kCGApplyEXRToneMappingGamma");
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 != CFDictionaryGetTypeID() || CFDictionaryContainsKey(v6, @"kCGEXRToneMappingGammaDefog") != 1 && CFDictionaryContainsKey(v6, @"kCGEXRToneMappingGammaExposure") != 1 && CFDictionaryContainsKey(v6, @"kCGEXRToneMappingGammaKneeLow") != 1 && CFDictionaryContainsKey(v6, @"kCGEXRToneMappingGammaKneeHigh") != 1)
    {
      return 0;
    }

    goto LABEL_40;
  }

  if (CGEXRToneMappingGammaGetDefaultOptions_predicate != -1)
  {
LABEL_43:
    dispatch_once(&CGEXRToneMappingGammaGetDefaultOptions_predicate, &__block_literal_global_15336);
  }

LABEL_5:
  v3 = CGEXRToneMappingGammaGetDefaultOptions_exrToneMappingOptions;
  if (!CGEXRToneMappingGammaGetDefaultOptions_exrToneMappingOptions)
  {
    return 0;
  }

LABEL_31:

  return CFRetain(v3);
}

CFDictionaryRef create_colorsync_extended_range_tone_mapping_options(const void *a1)
{
  v70[2] = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  *keys = 0u;
  v66 = 0u;
  *values = 0u;
  v64 = 0u;
  Value = CFDictionaryGetValue(a1, @"kCGApplyEXRToneMappingGamma");
  if (!Value || (v4 = Value, v5 = CFGetTypeID(Value), v5 != CFDictionaryGetTypeID()))
  {
    if (CFDictionaryContainsKey(a1, @"kCGApplyDisplayReferredExtendedRangeToneMapping") == 1)
    {
      v14 = CFDictionaryGetValue(a1, @"kCGApplyDisplayReferredExtendedRangeToneMapping");
      if (v14)
      {
        v15 = v14;
        v16 = CFGetTypeID(v14);
        if (v16 == CFDictionaryGetTypeID())
        {
          v17 = CFDictionaryGetValue(v15, @"kCGApplyReferenceWhiteToneMapping");
          if (v17 && (v18 = CFGetTypeID(v17), v18 == CFDictionaryGetTypeID()))
          {
            v60 = @"com.apple.cmm.ApplyDisplayReferredToneMapping";
            colorsync_reference_white_tone_mapping_options = create_colorsync_reference_white_tone_mapping_options(v15);
          }

          else
          {
            v60 = @"com.apple.cmm.ApplyDisplayReferredToneMapping";
            v48 = CFGetTypeID(v15);
            if (v48 == CFDictionaryGetTypeID())
            {
              valuePtr = 0;
              v70[0] = 0;
              v70[1] = 0;
              v67 = 0;
              v68[0] = 0;
              v68[1] = 0;
              TypeID = CFNumberGetTypeID();
              ValueWithType = CGCFDictionaryGetValueWithType(v15, @"kCGPQEOTFOpticalScale", TypeID);
              if (ValueWithType)
              {
                v51 = v68;
                p_valuePtr = v70;
                valuePtr = @"com.apple.cmm.PQEOTFOpticalScale";
                v67 = ValueWithType;
                colorsync_reference_white_tone_mapping_options = 1;
              }

              else
              {
                colorsync_reference_white_tone_mapping_options = 0;
                p_valuePtr = &valuePtr;
                v51 = &v67;
              }

              v53 = CFNumberGetTypeID();
              v54 = CGCFDictionaryGetValueWithType(v15, @"kCGTargetDisplayWhite", v53);
              if (v54)
              {
                *p_valuePtr = @"com.apple.cmm.TargetDisplayWhite";
                *v51 = v54;
                ++colorsync_reference_white_tone_mapping_options;
              }

              v55 = CFNumberGetTypeID();
              v56 = CGCFDictionaryGetValueWithType(v15, @"kCGEXRReflectanceScale", v55);
              if (v56)
              {
                v70[colorsync_reference_white_tone_mapping_options - 1] = @"com.apple.cmm.XRReflectanceScale";
                v68[colorsync_reference_white_tone_mapping_options++ - 1] = v56;
              }

              else if (!colorsync_reference_white_tone_mapping_options)
              {
                goto LABEL_62;
              }

              v57 = &v67;
              v58 = CFDictionaryCreate(0, &valuePtr, &v67, colorsync_reference_white_tone_mapping_options, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              do
              {
                if (*v57)
                {
                  CFRelease(*v57);
                }

                ++v57;
                --colorsync_reference_white_tone_mapping_options;
              }

              while (colorsync_reference_white_tone_mapping_options);
              v61 = v58;
              v62 = @"com.apple.cmm.ApplyPQEETFToneMapping";
              colorsync_reference_white_tone_mapping_options = CFDictionaryCreate(0, &v62, &v61, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v58)
              {
                CFRelease(v58);
              }

              goto LABEL_62;
            }

            colorsync_reference_white_tone_mapping_options = 0;
          }

LABEL_62:
          valuePtr = colorsync_reference_white_tone_mapping_options;
          goto LABEL_63;
        }
      }

      v20 = CFDictionaryGetValue(a1, @"kCGApplySceneReferredExtendedRangeToneMapping");
      if (v20)
      {
        colorsync_reference_white_tone_mapping_options = v20;
        v21 = CFGetTypeID(v20);
        if (v21 == CFDictionaryGetTypeID())
        {
          _CGHandleAssert("create_colorsync_extended_range_tone_mapping_options", 1294, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransform.c", "0", "custom options not supported for kColorSyncTransformApplySceneReferredToneMapping", v22, v23, v24, v59);
        }

        v25 = *MEMORY[0x1E695E4D0];
        if (colorsync_reference_white_tone_mapping_options == *MEMORY[0x1E695E4D0])
        {
          v60 = @"com.apple.cmm.ApplySceneReferredToneMapping";
          valuePtr = v25;
LABEL_63:
          v47 = 1;
          goto LABEL_64;
        }
      }
    }

    return 0;
  }

  v6 = CFDictionaryGetValue(v4, @"kCGEXRToneMappingGammaDefog");
  v7 = v6;
  if (!v6)
  {
LABEL_21:
    v10 = keys;
    v9 = values;
    goto LABEL_22;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFNumberGetTypeID())
  {
    v7 = 0;
    goto LABEL_21;
  }

  v9 = &values[1];
  v10 = &keys[1];
  v11 = CFGetTypeID(v7);
  v12 = CFNumberGetTypeID();
  v13 = 0;
  if (v11 == v12)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v7, kCFNumberFloatType, &valuePtr);
    v13 = valuePtr;
  }

  keys[0] = @"com.apple.cmm.ToneMappingGammaDefog";
  LODWORD(valuePtr) = v13;
  values[0] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v7 = 1;
LABEL_22:
  v28 = CFDictionaryGetValue(v4, @"kCGEXRToneMappingGammaExposure");
  if (v28)
  {
    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 == CFNumberGetTypeID())
    {
      v31 = CFGetTypeID(v29);
      v32 = CFNumberGetTypeID();
      v33 = 0;
      if (v31 == v32)
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v29, kCFNumberFloatType, &valuePtr);
        v33 = valuePtr;
      }

      *v10 = @"com.apple.cmm.ToneMappingGammaExposure";
      LODWORD(valuePtr) = v33;
      *v9 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      ++v7;
    }
  }

  v34 = CFDictionaryGetValue(v4, @"kCGEXRToneMappingGammaKneeLow");
  if (v34)
  {
    v35 = v34;
    v36 = CFGetTypeID(v34);
    if (v36 == CFNumberGetTypeID())
    {
      v37 = CFGetTypeID(v35);
      v38 = CFNumberGetTypeID();
      v39 = 0;
      if (v37 == v38)
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v35, kCFNumberFloatType, &valuePtr);
        v39 = valuePtr;
      }

      keys[v7] = @"com.apple.cmm.ToneMappingGammaKneeLow";
      LODWORD(valuePtr) = v39;
      values[v7++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    }
  }

  v40 = CFDictionaryGetValue(v4, @"kCGEXRToneMappingGammaKneeHigh");
  if (v40)
  {
    v41 = v40;
    v42 = CFGetTypeID(v40);
    if (v42 == CFNumberGetTypeID())
    {
      v43 = CFGetTypeID(v41);
      v44 = CFNumberGetTypeID();
      v45 = 0;
      if (v43 == v44)
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v41, kCFNumberFloatType, &valuePtr);
        v45 = valuePtr;
      }

      keys[v7] = @"com.apple.cmm.ToneMappingGammaKneeHigh";
      LODWORD(valuePtr) = v45;
      values[v7++] = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      goto LABEL_38;
    }
  }

  if (v7)
  {
LABEL_38:
    v46 = values;
    colorsync_reference_white_tone_mapping_options = CFDictionaryCreate(0, keys, values, v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      if (*v46)
      {
        CFRelease(*v46);
      }

      ++v46;
      --v7;
    }

    while (v7);
    v47 = 1;
    goto LABEL_44;
  }

  v47 = 0;
  colorsync_reference_white_tone_mapping_options = 0;
LABEL_44:
  v60 = @"com.apple.cmm.ApplyEXRToneMappingGamma";
  valuePtr = colorsync_reference_white_tone_mapping_options;
LABEL_64:
  v26 = 0;
  if (v47 && colorsync_reference_white_tone_mapping_options)
  {
    v26 = CFDictionaryCreate(0, &v60, &valuePtr, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(valuePtr);
  }

  return v26;
}

CFDictionaryRef __CGColorTransformGetSceneReferredToneMappingDefaultOptions_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = *MEMORY[0x1E695E4D0];
  keys[0] = @"kCGApplySceneReferredExtendedRangeToneMapping";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGColorTransformGetSceneReferredToneMappingDefaultOptions_sceneReferredToneMappingOptions = result;
  return result;
}

void __CGColorTransformGetDisplayReferredToneMappingDefaultOptions_block_invoke()
{
  v11[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGPQEOTFOpticalScale";
  keys[1] = @"kCGTargetDisplayWhite";
  keys[2] = @"kCGEXRReflectanceScale";
  v11[0] = @"kCGApplyDisplayReferredExtendedRangeToneMapping";
  LODWORD(valuePtr) = 1120403456;
  valuePtr = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v5 = 1120403456;
  cf = CFNumberCreate(0, kCFNumberFloatType, &v5);
  v5 = 1063675494;
  v0 = CFNumberCreate(0, kCFNumberFloatType, &v5);
  v1 = *MEMORY[0x1E695E738];
  v8 = v0;
  v9 = v1;
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &valuePtr, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGColorTransformGetDisplayReferredToneMappingDefaultOptions_displayReferredToneMappingOptions = CFDictionaryCreate(v2, v11, &v9, 1, v3, v4);
  CFRelease(valuePtr);
  CFRelease(cf);
  CFRelease(v8);
  CFRelease(v9);
}

float CGGetFloatValue(const void *a1)
{
  v1 = 0.0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
      return valuePtr;
    }
  }

  return v1;
}

uint64_t W8_sample_Wf(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v87 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v89 = *(result + 88);
  v90 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = v5 + (v12 * v7) + 4 * (v13 - 1);
  v15 = v4 + (v12 * v6) + 4 * v13 - 4;
  v85 = *(result + 188);
  v88 = *(result + 72);
  v86 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v88)
    {
      if (a3 <= v89)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v86;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v89;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_39;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v86;
        v25 = v85 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v88 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v86;
      v25 = v85 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v85;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v90 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v87)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v87;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_39;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v85;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v25 < 0x400000)
  {
    goto LABEL_39;
  }

  v36 = v26 >> 32;
  v37 = v4 + SHIDWORD(v26) * v6;
  v38 = (v31 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = v37 + v38;
  v40 = *(result + 32);
  if (v15 >= v37 + v38)
  {
    v41 = (v37 + v38);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v36 * v7 + v38;
    v43 = *(result + 40);
    if (v14 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v14;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = *v43;
  }

  else
  {
    v42 = 0;
    v45 = 1.0;
  }

  v46 = *v41;
  if (v8)
  {
    v47 = *(v8 + (v32 | v24));
LABEL_75:
    v62 = v47 & 0xF;
    v63 = v47 >> 8;
    v64 = HIBYTE(v47) & 3;
    if (v62 == 1)
    {
      v82 = (v39 + SBYTE1(v47) * v6);
      if (v15 < v82)
      {
        v82 = v15;
      }

      if (v82 < v40)
      {
        v82 = v40;
      }

      v79 = *v82;
      v80 = 1.0;
      if (v5)
      {
        v83 = (v42 + v63 * v7);
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v80 = *v83;
      }
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v65 = v39 + 4 * SBYTE2(v47);
          if (v15 >= v65)
          {
            v66 = (v39 + 4 * SBYTE2(v47));
          }

          else
          {
            v66 = v15;
          }

          if (v66 < v40)
          {
            v66 = v40;
          }

          v67 = *v66;
          v68 = (v65 + SBYTE1(v47) * v6);
          if (v15 < v68)
          {
            v68 = v15;
          }

          if (v68 < v40)
          {
            v68 = v40;
          }

          v69 = *v68;
          v70 = 1.0;
          v71 = 1.0;
          if (v5)
          {
            v72 = v42 + 4 * SBYTE2(v47);
            v73 = *(result + 40);
            if (v14 >= v72)
            {
              v74 = (v42 + 4 * SBYTE2(v47));
            }

            else
            {
              v74 = v14;
            }

            if (v74 < v73)
            {
              v74 = *(result + 40);
            }

            v71 = *v74;
            v75 = (v72 + SBYTE1(v47) * v7);
            if (v14 < v75)
            {
              v75 = v14;
            }

            if (v75 < v73)
            {
              v75 = *(result + 40);
            }

            v70 = *v75;
          }

          v76 = interpolate_waf[2 * v64 + 1];
          v77 = interpolate_waf[2 * ((v47 >> 28) & 3) + 1];
          v46 = (((v46 - (v46 * v76)) + (v67 * v76)) - (((v46 - (v46 * v76)) + (v67 * v76)) * v77)) + (((v67 - (v67 * v76)) + (v69 * v76)) * v77);
          v45 = (((v45 - (v45 * v76)) + (v71 * v76)) - (((v45 - (v45 * v76)) + (v71 * v76)) * v77)) + (((v71 - (v71 * v76)) + (v70 * v76)) * v77);
        }

        goto LABEL_44;
      }

      v78 = (v39 + 4 * SBYTE2(v47));
      if (v15 < v78)
      {
        v78 = v15;
      }

      if (v78 < v40)
      {
        v78 = v40;
      }

      v79 = *v78;
      v80 = 1.0;
      if (v5)
      {
        v81 = (v42 + 4 * SBYTE2(v47));
        if (v14 < v81)
        {
          v81 = v14;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v80 = *v81;
      }

      v64 = (v47 >> 28) & 3;
    }

    v84 = interpolate_waf[2 * v64 + 1];
    v46 = (v46 - (v46 * v84)) + (v79 * v84);
    v45 = (v45 - (v45 * v84)) + (v80 * v84);
  }

LABEL_44:
  v48 = 0;
  v49 = 0;
  v50 = v25 >> 22;
  a3 += v9;
  v51 = v89 - a3;
  a2 += v10;
  v52 = v87 - a2;
  while (1)
  {
    v53 = ((v45 * 255.0) + 0.5);
    if (v45 <= 1.0)
    {
      v54 = v45;
    }

    else
    {
      v53 = 255;
      v54 = 1.0;
    }

    v55 = ((v46 * 255.0) + 0.5);
    if (v46 < 0.0)
    {
      v55 = 0;
    }

    if (v46 > v54)
    {
      v55 = v53;
    }

    v56 = v55 | (v53 << 24);
    if (v45 <= 0.0)
    {
      v56 = 0;
    }

    *(v90 + 4 + 4 * v49) = v56;
    *(v11 + 1 + v49) = v50;
    if (a4 - 1 == v49)
    {
      return result;
    }

    if ((v51 | v52 | (a3 - v88) | (a2 - v86)) < 0)
    {
      v11 += v49 + 1;
      v90 = v90 - v48 + 4;
      a4 += ~v49;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v57 = v4 + SHIDWORD(a3) * v6;
    v58 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = v57 + v58;
    v40 = *(result + 32);
    if (v15 >= v57 + v58)
    {
      v59 = (v57 + v58);
    }

    else
    {
      v59 = v15;
    }

    if (v59 < v40)
    {
      v59 = *(result + 32);
    }

    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + v58;
      v60 = *(result + 40);
      if (v14 >= v42)
      {
        v61 = v42;
      }

      else
      {
        v61 = v14;
      }

      if (v61 >= v60)
      {
        v60 = v61;
      }

      v45 = *v60;
    }

    else
    {
      v45 = 1.0;
    }

    v46 = *v59;
    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v11 += v49 + 1;
        v90 = v90 - v48 + 4;
        a4 += ~v49;
        v25 = -1;
        goto LABEL_75;
      }
    }

    ++v49;
    v48 -= 4;
    a3 += v9;
    v51 -= v9;
    a2 += v10;
    v52 -= v10;
    LOBYTE(v50) = -1;
  }
}

uint64_t W8_sample_WF(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v87 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v89 = *(result + 88);
  v90 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = v5 + (v12 * v7) + 4 * (v13 - 1);
  v15 = v4 + (v12 * v6) + 4 * v13 - 4;
  v85 = *(result + 188);
  v88 = *(result + 72);
  v86 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v88)
    {
      if (a3 <= v89)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v86;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v89;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_39;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v86;
        v25 = v85 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v88 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v86;
      v25 = v85 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v85;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v90 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v87)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v87;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_39;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v85;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v25 < 0x400000)
  {
    goto LABEL_39;
  }

  v36 = v26 >> 32;
  v37 = v4 + SHIDWORD(v26) * v6;
  v38 = (v31 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = v37 + v38;
  v40 = *(result + 32);
  if (v15 >= v37 + v38)
  {
    v41 = (v37 + v38);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v36 * v7 + v38;
    v43 = *(result + 40);
    if (v14 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v14;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = COERCE_FLOAT(bswap32(*v43));
  }

  else
  {
    v42 = 0;
    v45 = 1.0;
  }

  v46 = COERCE_FLOAT(bswap32(*v41));
  if (v8)
  {
    v47 = *(v8 + (v32 | v24));
LABEL_75:
    v62 = v47 & 0xF;
    v63 = v47 >> 8;
    v64 = HIBYTE(v47) & 3;
    if (v62 == 1)
    {
      v82 = (v39 + SBYTE1(v47) * v6);
      if (v15 < v82)
      {
        v82 = v15;
      }

      if (v82 < v40)
      {
        v82 = v40;
      }

      v79 = COERCE_FLOAT(bswap32(*v82));
      v80 = 1.0;
      if (v5)
      {
        v83 = (v42 + v63 * v7);
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v80 = COERCE_FLOAT(bswap32(*v83));
      }
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v65 = v39 + 4 * SBYTE2(v47);
          if (v15 >= v65)
          {
            v66 = (v39 + 4 * SBYTE2(v47));
          }

          else
          {
            v66 = v15;
          }

          if (v66 < v40)
          {
            v66 = v40;
          }

          v67 = COERCE_FLOAT(bswap32(*v66));
          v68 = (v65 + SBYTE1(v47) * v6);
          if (v15 < v68)
          {
            v68 = v15;
          }

          if (v68 < v40)
          {
            v68 = v40;
          }

          v69 = COERCE_FLOAT(bswap32(*v68));
          v70 = 1.0;
          v71 = 1.0;
          if (v5)
          {
            v72 = v42 + 4 * SBYTE2(v47);
            v73 = *(result + 40);
            if (v14 >= v72)
            {
              v74 = (v42 + 4 * SBYTE2(v47));
            }

            else
            {
              v74 = v14;
            }

            if (v74 < v73)
            {
              v74 = *(result + 40);
            }

            v70 = COERCE_FLOAT(bswap32(*v74));
            v75 = (v72 + SBYTE1(v47) * v7);
            if (v14 < v75)
            {
              v75 = v14;
            }

            if (v75 < v73)
            {
              v75 = *(result + 40);
            }

            v71 = COERCE_FLOAT(bswap32(*v75));
          }

          v76 = interpolate_waf[2 * v64 + 1];
          v77 = interpolate_waf[2 * ((v47 >> 28) & 3) + 1];
          v46 = (((v46 - (v46 * v76)) + (v67 * v76)) - (((v46 - (v46 * v76)) + (v67 * v76)) * v77)) + (((v67 - (v67 * v76)) + (v69 * v76)) * v77);
          v45 = (((v45 - (v45 * v76)) + (v70 * v76)) - (((v45 - (v45 * v76)) + (v70 * v76)) * v77)) + (((v70 - (v70 * v76)) + (v71 * v76)) * v77);
        }

        goto LABEL_44;
      }

      v78 = (v39 + 4 * SBYTE2(v47));
      if (v15 < v78)
      {
        v78 = v15;
      }

      if (v78 < v40)
      {
        v78 = v40;
      }

      v79 = COERCE_FLOAT(bswap32(*v78));
      v80 = 1.0;
      if (v5)
      {
        v81 = (v42 + 4 * SBYTE2(v47));
        if (v14 < v81)
        {
          v81 = v14;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v80 = COERCE_FLOAT(bswap32(*v81));
      }

      v64 = (v47 >> 28) & 3;
    }

    v84 = interpolate_waf[2 * v64 + 1];
    v46 = (v46 - (v46 * v84)) + (v79 * v84);
    v45 = (v45 - (v45 * v84)) + (v80 * v84);
  }

LABEL_44:
  v48 = 0;
  v49 = 0;
  v50 = v25 >> 22;
  a3 += v9;
  v51 = v89 - a3;
  a2 += v10;
  v52 = v87 - a2;
  while (1)
  {
    v53 = ((v45 * 255.0) + 0.5);
    if (v45 <= 1.0)
    {
      v54 = v45;
    }

    else
    {
      v53 = 255;
      v54 = 1.0;
    }

    v55 = ((v46 * 255.0) + 0.5);
    if (v46 < 0.0)
    {
      v55 = 0;
    }

    if (v46 > v54)
    {
      v55 = v53;
    }

    v56 = v55 | (v53 << 24);
    if (v45 <= 0.0)
    {
      v56 = 0;
    }

    *(v90 + 4 + 4 * v49) = v56;
    *(v11 + 1 + v49) = v50;
    if (a4 - 1 == v49)
    {
      return result;
    }

    if ((v51 | v52 | (a3 - v88) | (a2 - v86)) < 0)
    {
      v11 += v49 + 1;
      v90 = v90 - v48 + 4;
      a4 += ~v49;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v57 = v4 + SHIDWORD(a3) * v6;
    v58 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = v57 + v58;
    v40 = *(result + 32);
    if (v15 >= v57 + v58)
    {
      v59 = (v57 + v58);
    }

    else
    {
      v59 = v15;
    }

    if (v59 < v40)
    {
      v59 = *(result + 32);
    }

    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + v58;
      v60 = *(result + 40);
      if (v14 >= v42)
      {
        v61 = v42;
      }

      else
      {
        v61 = v14;
      }

      if (v61 >= v60)
      {
        v60 = v61;
      }

      v45 = COERCE_FLOAT(bswap32(*v60));
    }

    else
    {
      v45 = 1.0;
    }

    v46 = COERCE_FLOAT(bswap32(*v59));
    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v11 += v49 + 1;
        v90 = v90 - v48 + 4;
        a4 += ~v49;
        v25 = -1;
        goto LABEL_75;
      }
    }

    ++v49;
    v48 -= 4;
    a3 += v9;
    v51 -= v9;
    a2 += v10;
    v52 -= v10;
    LOBYTE(v50) = -1;
  }
}

uint64_t W8_sample_w16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v89 = *(result + 80);
  v90 = *(result + 64);
  v91 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 260) - 1;
  v14 = *(result + 256);
  v15 = v5 + (v13 * v7) + 2 * (v14 - 1);
  v16 = v4 + (v13 * v6) + 2 * v14 - 2;
  v88 = *(result + 188);
  v92 = *(result + 72);
  while (1)
  {
LABEL_2:
    if (a3 >= v92)
    {
      if (a3 <= v91)
      {
        v25 = (a3 >> 22) & 0x3C0;
        v26 = 0x3FFFFFFF;
        v27 = a3;
        v28 = v90;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v91;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_40;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v28 = v90;
        v26 = v88 | v24;
        v27 = v22 - 0x1000000;
        v25 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v92 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_40;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v28 = v90;
      v26 = v88 | v20;
      v27 = v18 + 0x1000000;
      v25 = 512;
    }

    if (a2 >= v28)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v28 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v26 = ((v26 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v88;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v89)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_26;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v89;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_40;
  }

  if (v36 < v34)
  {
    v26 = ((v26 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v88;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_26:
  if (v26 < 0x400000)
  {
    goto LABEL_40;
  }

  v37 = v27 >> 32;
  v38 = v4 + v37 * v6;
  v39 = (v32 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v16 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v16;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = *v42;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_44;
    }

LABEL_43:
    v47 = *(v8 + (v33 | v25));
LABEL_70:
    v58 = v47 & 0xF;
    v59 = HIBYTE(v47) & 3;
    if (v58 == 1)
    {
      v83 = (v40 + SBYTE1(v47) * v6);
      if (v16 < v83)
      {
        v83 = v16;
      }

      if (v83 < v41)
      {
        v83 = v41;
      }

      v84 = *v83;
      if (v5)
      {
        v85 = (v44 + SBYTE1(v47) * v7);
        if (v15 < v85)
        {
          v85 = v15;
        }

        if (v85 < *(result + 40))
        {
          v85 = *(result + 40);
        }

        v84 |= *v85 << 16;
      }

      v86 = interpolate_1616[v59];
      v87 = v59 + 1;
      v81 = v43 - ((v86 & v43) >> v87);
      v82 = (v86 & v84) >> v87;
    }

    else
    {
      if (v58 != 2)
      {
        if (v58 == 3)
        {
          v60 = (v40 + 2 * SBYTE2(v47));
          if (v16 < v60)
          {
            v60 = v16;
          }

          if (v60 < v41)
          {
            v60 = v41;
          }

          v61 = *v60;
          v62 = (v40 + SBYTE1(v47) * v6);
          if (v16 >= v62)
          {
            v63 = v62;
          }

          else
          {
            v63 = v16;
          }

          if (v63 < v41)
          {
            v63 = v41;
          }

          v64 = *v63;
          v65 = &v62[SBYTE2(v47)];
          if (v16 < v65)
          {
            v65 = v16;
          }

          if (v65 < v41)
          {
            v65 = v41;
          }

          v66 = *v65;
          if (v5)
          {
            v67 = 2 * SBYTE2(v47);
            v68 = (v44 + v67);
            v69 = *(result + 40);
            if (v15 < v44 + v67)
            {
              v68 = v15;
            }

            if (v68 < v69)
            {
              v68 = *(result + 40);
            }

            v61 |= *v68 << 16;
            v70 = v44 + SBYTE1(v47) * v7;
            if (v15 >= v70)
            {
              v71 = (v44 + SBYTE1(v47) * v7);
            }

            else
            {
              v71 = v15;
            }

            if (v71 < v69)
            {
              v71 = *(result + 40);
            }

            v64 |= *v71 << 16;
            v72 = (v70 + v67);
            if (v15 < v72)
            {
              v72 = v15;
            }

            if (v72 < v69)
            {
              v72 = *(result + 40);
            }

            v66 |= *v72 << 16;
          }

          v73 = interpolate_1616[v59];
          v74 = v59 + 1;
          v75 = v43 - ((v73 & v43) >> v74) + ((v73 & v64) >> v74);
          v43 = v75 - ((v75 & interpolate_1616[(v47 >> 28) & 3]) >> (((v47 >> 28) & 3) + 1)) + (((v61 - ((v73 & v61) >> v74) + ((v73 & v66) >> v74)) & interpolate_1616[(v47 >> 28) & 3]) >> (((v47 >> 28) & 3) + 1));
        }

        goto LABEL_44;
      }

      v76 = (v40 + 2 * SBYTE2(v47));
      if (v16 < v76)
      {
        v76 = v16;
      }

      if (v76 < v41)
      {
        v76 = v41;
      }

      v77 = *v76;
      if (v5)
      {
        v78 = (v44 + 2 * SBYTE2(v47));
        if (v15 < v78)
        {
          v78 = v15;
        }

        if (v78 < *(result + 40))
        {
          v78 = *(result + 40);
        }

        v77 |= *v78 << 16;
      }

      v79 = (v47 >> 28) & 3;
      v80 = interpolate_1616[v79];
      LOBYTE(v79) = v79 + 1;
      v81 = v43 - ((v80 & v43) >> v79);
      v82 = (v80 & v77) >> v79;
    }

    v43 = v81 + v82;
    goto LABEL_44;
  }

  v44 = v5 + v37 * v7 + v39;
  v45 = *(result + 40);
  if (v15 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v15;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= *v45 << 16;
  if (v8)
  {
    goto LABEL_43;
  }

LABEL_44:
  v48 = v43 & 0xFF000000;
  if (!v5)
  {
    v48 = -16777216;
  }

  *(v11 + 4) = v48 & 0xFFFFFF00 | BYTE1(v43);
  *(v12 + 1) = v26 >> 22;
  if (a4 != 1)
  {
    v49 = 0;
    a2 += v10;
    v50 = v89 - a2;
    a3 += v9;
    v51 = v91 - a3;
    v52 = -4;
    while (((v51 | v50 | (a3 - v92) | (a2 - v90)) & 0x8000000000000000) == 0)
    {
      v53 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v40 = v4 + SHIDWORD(a3) * v6 + v53;
      v41 = *(result + 32);
      if (v16 >= v40)
      {
        v54 = (v4 + SHIDWORD(a3) * v6 + v53);
      }

      else
      {
        v54 = v16;
      }

      if (v54 < v41)
      {
        v54 = *(result + 32);
      }

      v43 = *v54;
      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + v53;
        v55 = *(result + 40);
        if (v15 >= v44)
        {
          v56 = (v5 + SHIDWORD(a3) * v7 + v53);
        }

        else
        {
          v56 = v15;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v43 |= *v55 << 16;
      }

      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v49 + 1;
          v11 -= v52;
          a4 += ~v49;
          v26 = -1;
          goto LABEL_70;
        }
      }

      v57 = v43 & 0xFF000000;
      if (!v5)
      {
        v57 = -16777216;
      }

      *(v11 + 4 * v49 + 8) = v57 & 0xFFFFFF00 | BYTE1(v43);
      *(v12 + v49++ + 2) = -1;
      v52 -= 4;
      a2 += v10;
      v50 -= v10;
      a3 += v9;
      v51 -= v9;
      if (a4 - 1 == v49)
      {
        return result;
      }
    }

    v12 += v49 + 1;
    v11 -= v52;
    a4 += ~v49;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t W8_sample_W16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v82 = *(result + 80);
  v83 = *(result + 64);
  v84 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 260) - 1;
  v14 = *(result + 256);
  v15 = v5 + (v13 * v7) + 2 * (v14 - 1);
  v16 = v4 + (v13 * v6) + 2 * v14 - 2;
  v81 = *(result + 188);
  v85 = *(result + 72);
  while (1)
  {
LABEL_2:
    if (a3 >= v85)
    {
      if (a3 <= v84)
      {
        v25 = (a3 >> 22) & 0x3C0;
        v26 = 0x3FFFFFFF;
        v27 = a3;
        v28 = v83;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v84;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_40;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v28 = v83;
        v26 = v81 | v24;
        v27 = v22 - 0x1000000;
        v25 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v85 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_40;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v28 = v83;
      v26 = v81 | v20;
      v27 = v18 + 0x1000000;
      v25 = 512;
    }

    if (a2 >= v28)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v28 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v26 = ((v26 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v81;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v82)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_26;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v82;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_40;
  }

  if (v36 < v34)
  {
    v26 = ((v26 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v81;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_26:
  if (v26 < 0x400000)
  {
    goto LABEL_40;
  }

  v37 = v27 >> 32;
  v38 = v4 + v37 * v6;
  v39 = (v32 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v16 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v16;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = bswap32(*v42) >> 16;
  if (v5)
  {
    v44 = v5 + v37 * v7 + v39;
    v45 = *(result + 40);
    if (v15 >= v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = v15;
    }

    if (v46 >= v45)
    {
      v45 = v46;
    }

    v43 |= bswap32(*v45) & 0xFFFF0000;
    if (!v8)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_44;
    }
  }

  v47 = *(v8 + (v33 | v25));
LABEL_70:
  v58 = v47 & 0xF;
  switch(v58)
  {
    case 1:
      v77 = (v40 + SBYTE1(v47) * v6);
      if (v16 < v77)
      {
        v77 = v16;
      }

      if (v77 < v41)
      {
        v77 = v41;
      }

      v78 = bswap32(*v77) >> 16;
      if (v5)
      {
        v79 = (v44 + SBYTE1(v47) * v7);
        if (v15 < v79)
        {
          v79 = v15;
        }

        if (v79 < *(result + 40))
        {
          v79 = *(result + 40);
        }

        v78 |= bswap32(*v79) & 0xFFFF0000;
      }

      v43 = v43 - ((interpolate_1616[HIBYTE(v47) & 3] & v43) >> ((HIBYTE(v47) & 3) + 1)) + ((interpolate_1616[HIBYTE(v47) & 3] & v78) >> ((HIBYTE(v47) & 3) + 1));
      break;
    case 2:
      v74 = (v40 + 2 * SBYTE2(v47));
      if (v16 < v74)
      {
        v74 = v16;
      }

      if (v74 < v41)
      {
        v74 = v41;
      }

      v75 = bswap32(*v74) >> 16;
      if (v5)
      {
        v76 = (v44 + 2 * SBYTE2(v47));
        if (v15 < v76)
        {
          v76 = v15;
        }

        if (v76 < *(result + 40))
        {
          v76 = *(result + 40);
        }

        v75 |= bswap32(*v76) & 0xFFFF0000;
      }

      v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v75) >> (((v47 >> 28) & 3) + 1));
      break;
    case 3:
      v80 = HIBYTE(v47) & 3;
      v59 = (v40 + 2 * SBYTE2(v47));
      if (v16 < v59)
      {
        v59 = v16;
      }

      if (v59 < v41)
      {
        v59 = v41;
      }

      v60 = bswap32(*v59) >> 16;
      v61 = (v40 + SBYTE1(v47) * v6);
      if (v16 >= v61)
      {
        v62 = v61;
      }

      else
      {
        v62 = v16;
      }

      if (v62 < v41)
      {
        v62 = v41;
      }

      v63 = bswap32(*v62) >> 16;
      v64 = &v61[SBYTE2(v47)];
      if (v16 < v64)
      {
        v64 = v16;
      }

      if (v64 < v41)
      {
        v64 = v41;
      }

      v65 = bswap32(*v64) >> 16;
      if (v5)
      {
        v66 = 2 * SBYTE2(v47);
        v67 = (v44 + v66);
        v68 = *(result + 40);
        if (v15 < v44 + v66)
        {
          v67 = v15;
        }

        if (v67 < v68)
        {
          v67 = *(result + 40);
        }

        v60 |= bswap32(*v67) & 0xFFFF0000;
        v69 = v44 + SBYTE1(v47) * v7;
        if (v15 >= v69)
        {
          v70 = (v44 + SBYTE1(v47) * v7);
        }

        else
        {
          v70 = v15;
        }

        if (v70 < v68)
        {
          v70 = *(result + 40);
        }

        v63 |= bswap32(*v70) & 0xFFFF0000;
        v71 = (v69 + v66);
        if (v15 < v69 + v66)
        {
          v71 = v15;
        }

        if (v71 < v68)
        {
          v71 = *(result + 40);
        }

        v65 |= bswap32(*v71) & 0xFFFF0000;
      }

      v72 = interpolate_1616[v80];
      v73 = v43 - ((v72 & v43) >> (v80 + 1)) + ((v72 & v63) >> (v80 + 1));
      v43 = v73 - ((v73 & interpolate_1616[(v47 >> 28) & 3]) >> (((v47 >> 28) & 3) + 1)) + (((v60 - ((v72 & v60) >> (v80 + 1)) + ((v72 & v65) >> (v80 + 1))) & interpolate_1616[(v47 >> 28) & 3]) >> (((v47 >> 28) & 3) + 1));
      break;
  }

LABEL_44:
  v48 = v43 & 0xFF000000;
  if (!v5)
  {
    v48 = -16777216;
  }

  *(v11 + 4) = v48 & 0xFFFFFF00 | BYTE1(v43);
  *(v12 + 1) = v26 >> 22;
  if (a4 != 1)
  {
    v49 = 0;
    a2 += v10;
    v50 = v82 - a2;
    a3 += v9;
    v51 = v84 - a3;
    v52 = -4;
    while (((v51 | v50 | (a3 - v85) | (a2 - v83)) & 0x8000000000000000) == 0)
    {
      v53 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v40 = v4 + SHIDWORD(a3) * v6 + v53;
      v41 = *(result + 32);
      if (v16 >= v40)
      {
        v54 = (v4 + SHIDWORD(a3) * v6 + v53);
      }

      else
      {
        v54 = v16;
      }

      if (v54 < v41)
      {
        v54 = *(result + 32);
      }

      v43 = bswap32(*v54) >> 16;
      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + v53;
        v55 = *(result + 40);
        if (v15 >= v44)
        {
          v56 = (v5 + SHIDWORD(a3) * v7 + v53);
        }

        else
        {
          v56 = v15;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v43 |= bswap32(*v55) & 0xFFFF0000;
      }

      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v49 + 1;
          v11 -= v52;
          a4 += ~v49;
          v26 = -1;
          goto LABEL_70;
        }
      }

      v57 = v43 & 0xFF000000;
      if (!v5)
      {
        v57 = -16777216;
      }

      *(v11 + 4 * v49 + 8) = v57 & 0xFFFFFF00 | BYTE1(v43);
      *(v12 + v49++ + 2) = -1;
      v52 -= 4;
      a2 += v10;
      v50 -= v10;
      a3 += v9;
      v51 -= v9;
      if (a4 - 1 == v49)
      {
        return result;
      }
    }

    v12 += v49 + 1;
    v11 -= v52;
    a4 += ~v49;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t W8_sample_cmyk32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 4);
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
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 8;
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

        v23 = v87 | v21;
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

      v23 = v87 | v17;
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
    ++v8;
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
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32_18013(v8, v38 | v96);
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
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

unsigned int *CMYK32_18013(unsigned int *result, uint64_t a2)
{
  v2 = BYTE4(a2) - (BYTE3(a2) + a2);
  v3 = BYTE4(a2) - (BYTE2(a2) + a2);
  *result = (((v3 & ~(v3 >> 31)) + 2 * (v2 & ~(v2 >> 31)) + ((BYTE4(a2) - (BYTE1(a2) + a2)) & ~((BYTE4(a2) - (BYTE1(a2) + a2)) >> 31)) + 4 * (v3 & ~(v3 >> 31))) >> 3) | (HIDWORD(a2) << 24);
  return result;
}

uint64_t W8_sample_CMYK32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 4);
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
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 8;
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

        v23 = v87 | v21;
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

      v23 = v87 | v17;
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
    ++v8;
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
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32_18013(v8, v38 | v96);
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
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

uint64_t W8_sample_argb32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v75 = *(result + 80);
  v76 = *(result + 88);
  v7 = *(result + 112);
  v8 = *(result + 120);
  v9 = *(result + 152) - 4;
  v10 = *(result + 144) - 1;
  v12 = *(result + 32);
  v11 = *(result + 40);
  v73 = *(result + 188);
  v13 = v12 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v74 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v6)
    {
      if (a3 <= v76)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v76;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v73 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v6 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v23 = v73 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v74)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v74 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v73;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v7;
    a3 += v8;
    v9 += 4;
    *++v10 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v75;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v73;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v12 + SHIDWORD(v24) * v4;
  v34 = v28 >> 32;
  v35 = v33 + 4 * v34;
  v36 = *(result + 32);
  if (v13 >= v35)
  {
    v37 = (v33 + 4 * v34);
  }

  else
  {
    v37 = v13;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (!v5)
  {
    goto LABEL_36;
  }

  v39 = *(v5 + (v29 | v22));
LABEL_52:
  v48 = v39 & 0xF;
  v49 = HIBYTE(v39) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v35 + SBYTE1(v39) * v4);
      if (v13 < v70)
      {
        v70 = v13;
      }

      if (v70 < v36)
      {
        v70 = v36;
      }

      v71 = interpolate_8888_21865[v49];
      v72 = v49 + 1;
      v64 = v38 - ((v71 & v38) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_80:
      v38 = v64 + v69;
      break;
    case 2:
      v66 = (v35 + ((HIWORD(v39) << 56) >> 54));
      if (v13 < v66)
      {
        v66 = v13;
      }

      if (v66 < v36)
      {
        v66 = v36;
      }

      v67 = (v39 >> 28) & 3;
      v68 = interpolate_8888_21865[v67];
      v63 = v67 + 1;
      v64 = v38 - ((v68 & v38) >> v63);
      v65 = v68 & *v66;
LABEL_74:
      v69 = v65 >> v63;
      goto LABEL_80;
    case 3:
      v50 = HIWORD(v39) << 56;
      v51 = (v35 + (v50 >> 54));
      if (v13 < v51)
      {
        v51 = v13;
      }

      if (v51 < v36)
      {
        v51 = v36;
      }

      v52 = *v51;
      v53 = v35 + SBYTE1(v39) * v4;
      if (v13 >= v53)
      {
        v54 = (v35 + SBYTE1(v39) * v4);
      }

      else
      {
        v54 = v13;
      }

      if (v54 < v36)
      {
        v54 = v36;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 54));
      if (v13 < v56)
      {
        v56 = v13;
      }

      if (v56 < v36)
      {
        v56 = v36;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v59 = v38 - ((v57 & v38) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v39 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_74;
  }

LABEL_36:
  v40 = 0;
  v41 = 0;
  v42 = v23 >> 22;
  a3 += v8;
  v43 = v76 - a3;
  a2 += v7;
  v44 = v75 - a2;
  while (1)
  {
    v45 = v38 & 0xFF000000;
    if (!v11)
    {
      v45 = -16777216;
    }

    *(v9 + 4 + 4 * v41) = v45 | ((((v38 & 0xFF00) >> 6) + v38 + ((v38 >> 15) & 0x1FE) + ((v38 & 0xFF00) >> 8)) >> 3);
    *(v10 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v43 | v44 | (a3 - v6) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v10 += v41 + 1;
      v9 = v9 - v40 + 4;
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v35 = v46 + 4 * (a2 >> 32);
    v36 = *(result + 32);
    if (v13 >= v35)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v13;
    }

    if (v47 < v36)
    {
      v47 = *(result + 32);
    }

    v38 = *v47;
    if (v5)
    {
      v39 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v10 += v41 + 1;
        v9 = v9 - v40 + 4;
        a4 += ~v41;
        v23 = -1;
        goto LABEL_52;
      }
    }

    ++v41;
    v40 -= 4;
    a3 += v8;
    v43 -= v8;
    a2 += v7;
    v44 -= v7;
    LOBYTE(v42) = -1;
  }
}

uint64_t W8_sample_ARGB32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v73 = *(result + 80);
  v74 = *(result + 88);
  v7 = *(result + 112);
  v8 = *(result + 120);
  v9 = *(result + 152) - 4;
  v10 = *(result + 144) - 1;
  v12 = *(result + 32);
  v11 = *(result + 40);
  v71 = *(result + 188);
  v13 = v12 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v72 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v6)
    {
      if (a3 <= v74)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v74;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v71 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v6 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v23 = v71 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v72)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v72 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v71;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v7;
    a3 += v8;
    v9 += 4;
    *++v10 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v73)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v73;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v71;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v12 + SHIDWORD(v24) * v4;
  v34 = v28 >> 32;
  v35 = v33 + 4 * v34;
  v36 = *(result + 32);
  if (v13 >= v35)
  {
    v37 = (v33 + 4 * v34);
  }

  else
  {
    v37 = v13;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37);
  if (!v5)
  {
    goto LABEL_36;
  }

  v39 = *(v5 + (v29 | v22));
LABEL_52:
  v48 = v39 & 0xF;
  v49 = HIBYTE(v39) & 3;
  switch(v48)
  {
    case 1:
      v68 = (v35 + SBYTE1(v39) * v4);
      if (v13 < v68)
      {
        v68 = v13;
      }

      if (v68 < v36)
      {
        v68 = v36;
      }

      v69 = interpolate_8888_21865[v49];
      v70 = v49 + 1;
      v64 = v38 - ((v69 & v38) >> v70);
      v67 = (bswap32(*v68) & v69) >> v70;
LABEL_80:
      v38 = v64 + v67;
      break;
    case 2:
      v65 = (v35 + ((HIWORD(v39) << 56) >> 54));
      if (v13 < v65)
      {
        v65 = v13;
      }

      if (v65 < v36)
      {
        v65 = v36;
      }

      v60 = bswap32(*v65);
      v66 = (v39 >> 28) & 3;
      v62 = interpolate_8888_21865[v66];
      v63 = v66 + 1;
      v64 = v38 - ((v62 & v38) >> v63);
LABEL_74:
      v67 = (v60 & v62) >> v63;
      goto LABEL_80;
    case 3:
      v50 = HIWORD(v39) << 56;
      v51 = (v35 + (v50 >> 54));
      if (v13 < v51)
      {
        v51 = v13;
      }

      if (v51 < v36)
      {
        v51 = v36;
      }

      v52 = bswap32(*v51);
      v53 = v35 + SBYTE1(v39) * v4;
      if (v13 >= v53)
      {
        v54 = (v35 + SBYTE1(v39) * v4);
      }

      else
      {
        v54 = v13;
      }

      if (v54 < v36)
      {
        v54 = v36;
      }

      v55 = bswap32(*v54);
      v56 = (v53 + (v50 >> 54));
      if (v13 < v56)
      {
        v56 = v13;
      }

      if (v56 < v36)
      {
        v56 = v36;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v59 = v38 - ((v57 & v38) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((bswap32(*v56) & v57) >> v58);
      v61 = (v39 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      goto LABEL_74;
  }

LABEL_36:
  v40 = 0;
  v41 = 0;
  v42 = v23 >> 22;
  a3 += v8;
  v43 = v74 - a3;
  a2 += v7;
  v44 = v73 - a2;
  while (1)
  {
    v45 = v38 & 0xFF000000;
    if (!v11)
    {
      v45 = -16777216;
    }

    *(v9 + 4 + 4 * v41) = v45 | ((((v38 & 0xFF00) >> 6) + v38 + ((v38 >> 15) & 0x1FE) + ((v38 & 0xFF00) >> 8)) >> 3);
    *(v10 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v43 | v44 | (a3 - v6) | (a2 - v72)) & 0x8000000000000000) != 0)
    {
      v10 += v41 + 1;
      v9 = v9 - v40 + 4;
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v35 = v46 + 4 * (a2 >> 32);
    v36 = *(result + 32);
    if (v13 >= v35)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v13;
    }

    if (v47 < v36)
    {
      v47 = *(result + 32);
    }

    v38 = bswap32(*v47);
    if (v5)
    {
      v39 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v10 += v41 + 1;
        v9 = v9 - v40 + 4;
        a4 += ~v41;
        v23 = -1;
        goto LABEL_52;
      }
    }

    ++v41;
    v40 -= 4;
    a3 += v8;
    v43 -= v8;
    a2 += v7;
    v44 -= v7;
    LOBYTE(v42) = -1;
  }
}

uint64_t W8_sample_rgba32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v75 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v73 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 255;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v74 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v73 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v73 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v74)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v74 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v73;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v75;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v73;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 4 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 4 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38;
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v70)
      {
        v70 = v14;
      }

      if (v70 < v37)
      {
        v70 = v37;
      }

      v71 = interpolate_8888_21865[v49];
      v72 = v49 + 1;
      v64 = v39 - ((v71 & v39) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_81:
      v39 = v64 + v69;
      break;
    case 2:
      v66 = (v36 + ((HIWORD(v40) << 56) >> 54));
      if (v14 < v66)
      {
        v66 = v14;
      }

      if (v66 < v37)
      {
        v66 = v37;
      }

      v67 = (v40 >> 28) & 3;
      v68 = interpolate_8888_21865[v67];
      v63 = v67 + 1;
      v64 = v39 - ((v68 & v39) >> v63);
      v65 = v68 & *v66;
LABEL_75:
      v69 = v65 >> v63;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 54));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = *v51;
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 54));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v75 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = ((((v39 >> 23) & 0x1FE) + BYTE1(v39) + (((v39 >> 8) & 0xFF00) >> 6) + (((v39 >> 8) & 0xFF00) >> 8)) >> 3) | ((v39 | v13) << 24);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 4 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = *v47;
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t W8_sample_RGBA32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v72 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v70 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 255;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v71 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v70 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v70 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v71)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v71 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v70;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v72;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v70;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 4 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 4 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = bswap32(*v38);
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v67 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v67)
      {
        v67 = v14;
      }

      if (v67 < v37)
      {
        v67 = v37;
      }

      v68 = interpolate_8888_21865[v49];
      v69 = v49 + 1;
      v65 = v39 - ((v68 & v39) >> v69);
      v66 = (bswap32(*v67) & v68) >> v69;
LABEL_81:
      v39 = v65 + v66;
      break;
    case 2:
      v63 = (v36 + ((HIWORD(v40) << 56) >> 54));
      if (v14 < v63)
      {
        v63 = v14;
      }

      if (v63 < v37)
      {
        v63 = v37;
      }

      v59 = bswap32(*v63);
      v60 = (v40 >> 28) & 3;
      v61 = interpolate_8888_21865[v60];
      v62 = v61 & v39;
LABEL_75:
      v64 = v60 + 1;
      v65 = v39 - (v62 >> v64);
      v66 = (v59 & v61) >> v64;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 54));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = bswap32(*v51);
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = bswap32(*v54);
      v56 = (v53 + (v50 >> 54));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v39 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v59 = v52 - ((v57 & v52) >> v58) + ((bswap32(*v56) & v57) >> v58);
      v60 = (v40 >> 28) & 3;
      v61 = interpolate_8888_21865[v60];
      v62 = v39 & v61;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v72 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = ((((v39 >> 23) & 0x1FE) + BYTE1(v39) + (((v39 >> 8) & 0xFF00) >> 6) + (((v39 >> 8) & 0xFF00) >> 8)) >> 3) | ((v39 | v13) << 24);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v71)) & 0x8000000000000000) != 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 4 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = bswap32(*v47);
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t W8_sample_RGB24(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v9 = *(result + 88);
  v72 = *(result + 80);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  v71 = *(result + 188);
  v14 = v4 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 3;
  while (1)
  {
LABEL_2:
    if (a3 >= v8)
    {
      if (a3 <= v9)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v9;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v71 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v8 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v71 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v7)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v7 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v71;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v72;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v71;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v4 + SHIDWORD(v25) * v5;
  v35 = 3 * (v29 >> 32);
  v36 = v34 + v35;
  v37 = *(result + 32);
  if (v14 >= v34 + v35)
  {
    v38 = (v34 + v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = (v38[1] << 16) | (*v38 << 24) | (v38[2] << 8) | 0xFF;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v23));
LABEL_50:
  v49 = v40 & 0xF;
  v50 = HIBYTE(v40) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v36 + SBYTE1(v40) * v5);
      if (v14 < v68)
      {
        v68 = v14;
      }

      if (v68 < v37)
      {
        v68 = v37;
      }

      v69 = interpolate_8888_21865[v50];
      v70 = v50 + 1;
      v66 = v39 - ((v69 & v39) >> v70);
      v67 = (((v68[1] << 16) | (*v68 << 24) | (v68[2] << 8) | 0xFF) & v69) >> v70;
LABEL_78:
      v39 = v66 + v67;
      break;
    case 2:
      v64 = (v36 + 3 * SBYTE2(v40));
      if (v14 < v64)
      {
        v64 = v14;
      }

      if (v64 < v37)
      {
        v64 = v37;
      }

      v60 = (v64[1] << 16) | (*v64 << 24) | (v64[2] << 8) | 0xFF;
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v62 & v39;
LABEL_72:
      v65 = v61 + 1;
      v66 = v39 - (v63 >> v65);
      v67 = (v60 & v62) >> v65;
      goto LABEL_78;
    case 3:
      v51 = 3 * SBYTE2(v40);
      v52 = (v36 + v51);
      if (v14 < v36 + v51)
      {
        v52 = v14;
      }

      if (v52 < v37)
      {
        v52 = v37;
      }

      v53 = (v52[1] << 16) | (*v52 << 24) | (v52[2] << 8) | 0xFF;
      v54 = v36 + SBYTE1(v40) * v5;
      if (v14 >= v54)
      {
        v55 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v55 = v14;
      }

      if (v55 < v37)
      {
        v55 = v37;
      }

      v56 = (v55[1] << 16) | (*v55 << 24) | (v55[2] << 8) | 0xFF;
      v57 = (v54 + v51);
      if (v14 < v57)
      {
        v57 = v14;
      }

      if (v57 < v37)
      {
        v57 = v37;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v39 = v39 - ((v58 & v39) >> v59) + ((v56 & v58) >> v59);
      v60 = v53 - ((v58 & v53) >> v59) + ((((v57[1] << 16) | (*v57 << 24) | (v57[2] << 8) | 0xFF) & v58) >> v59);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v39 & v62;
      goto LABEL_72;
  }

LABEL_36:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v11;
  v44 = v9 - a3;
  a2 += v10;
  v45 = v72 - a2;
  while (1)
  {
    *(v12 + 4 + 4 * v42) = ((((v39 >> 23) & 0x1FE) + BYTE1(v39) + (((v39 >> 8) & 0xFF00) >> 6) + (((v39 >> 8) & 0xFF00) >> 8)) >> 3) | (v39 << 24);
    *(v13 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) != 0)
    {
      v13 += v42 + 1;
      v12 = v12 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v46 = v4 + SHIDWORD(a3) * v5;
    v47 = 3 * (a2 >> 32);
    v36 = v46 + v47;
    v37 = *(result + 32);
    if (v14 >= v46 + v47)
    {
      v48 = (v46 + v47);
    }

    else
    {
      v48 = v14;
    }

    if (v48 < v37)
    {
      v48 = *(result + 32);
    }

    v39 = (v48[1] << 16) | (*v48 << 24) | (v48[2] << 8) | 0xFF;
    if (v6)
    {
      v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v13 += v42 + 1;
        v12 = v12 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_50;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v11;
    v44 -= v11;
    a2 += v10;
    v45 -= v10;
    LOBYTE(v43) = -1;
  }
}

uint64_t W8_sample_rgb555(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v92 = *(result + 152) - 4;
  v90 = *(result + 88);
  v91 = *(result + 144) - 1;
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = -16777216;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v86 = *(result + 188);
  v14 = (v5 + (v13 - 1) + (v12 * v7));
  v15 = v4 + (v12 * v6) + 2 * v13 - 4;
  v89 = *(result + 72);
  v87 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v89)
    {
      if (a3 <= v90)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v87;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v90;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_43;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v87;
        v25 = v86 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v89 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_43;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v87;
      v25 = v86 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v86;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    *++v91 = 0;
    v92 += 4;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_29;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v88;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_43;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v86;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_43;
  }

  v36 = v26 >> 32;
  v37 = v31 >> 32;
  v38 = v4 + v36 * v6;
  v39 = v38 + 2 * v37;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = (v38 + 2 * v37);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  v42 = *v41;
  if (!v5)
  {
    v43 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v46 = *(v8 + (v32 | v24));
LABEL_68:
    v56 = v46 & 0xF;
    v57 = HIBYTE(v46) & 3;
    if (v56 == 1)
    {
      v81 = (v39 + SBYTE1(v46) * v6);
      if (v15 < v81)
      {
        v81 = v15;
      }

      if (v81 < v40)
      {
        v81 = v40;
      }

      v82 = *v81;
      if (v5)
      {
        v83 = (v43 + SBYTE1(v46) * v7);
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v82 |= *v83 << 24;
      }

      v84 = interpolate_8555_21866[v57];
      v85 = v57 + 1;
      v79 = v42 - ((v84 & v42) >> v85);
      v80 = (v84 & v82) >> v85;
    }

    else
    {
      if (v56 != 2)
      {
        if (v56 == 3)
        {
          v58 = HIWORD(v46) << 56;
          v59 = (v39 + (v58 >> 55));
          if (v15 < v59)
          {
            v59 = v15;
          }

          if (v59 < v40)
          {
            v59 = v40;
          }

          v60 = *v59;
          v61 = v39 + SBYTE1(v46) * v6;
          if (v15 >= v61)
          {
            v62 = (v39 + SBYTE1(v46) * v6);
          }

          else
          {
            v62 = v15;
          }

          if (v62 < v40)
          {
            v62 = v40;
          }

          v63 = *v62;
          v64 = (v61 + (v58 >> 55));
          if (v15 < v64)
          {
            v64 = v15;
          }

          if (v64 < v40)
          {
            v64 = v40;
          }

          v65 = *v64;
          if (v5)
          {
            v66 = (v43 + SBYTE2(v46));
            v67 = *(result + 40);
            if (v14 < v66)
            {
              v66 = v14;
            }

            if (v66 < v67)
            {
              v66 = *(result + 40);
            }

            v60 |= *v66 << 24;
            v68 = v43 + SBYTE1(v46) * v7;
            if (v14 >= v68)
            {
              v69 = (v43 + SBYTE1(v46) * v7);
            }

            else
            {
              v69 = v14;
            }

            if (v69 < v67)
            {
              v69 = *(result + 40);
            }

            v63 |= *v69 << 24;
            v70 = (v68 + SBYTE2(v46));
            if (v14 < v70)
            {
              v70 = v14;
            }

            if (v70 < v67)
            {
              v70 = *(result + 40);
            }

            v65 |= *v70 << 24;
          }

          v71 = interpolate_8555_21866[v57];
          v72 = v57 + 1;
          v73 = v42 - ((v71 & v42) >> v72) + ((v71 & v63) >> v72);
          v42 = v73 - ((v73 & interpolate_8555_21866[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1)) + (((v60 - ((v71 & v60) >> v72) + ((v71 & v65) >> v72)) & interpolate_8555_21866[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1));
        }

        goto LABEL_47;
      }

      v74 = (v39 + ((HIWORD(v46) << 56) >> 55));
      if (v15 < v74)
      {
        v74 = v15;
      }

      if (v74 < v40)
      {
        v74 = v40;
      }

      v75 = *v74;
      if (v5)
      {
        v76 = (v43 + SBYTE2(v46));
        if (v14 < v76)
        {
          v76 = v14;
        }

        if (v76 < *(result + 40))
        {
          v76 = *(result + 40);
        }

        v75 |= *v76 << 24;
      }

      v77 = (v46 >> 28) & 3;
      v78 = interpolate_8555_21866[v77];
      LOBYTE(v77) = v77 + 1;
      v79 = v42 - ((v78 & v42) >> v77);
      v80 = (v78 & v75) >> v77;
    }

    v42 = v79 + v80;
    goto LABEL_47;
  }

  v43 = v5 + v36 * v7 + v37;
  v44 = *(result + 40);
  if (v14 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v14;
  }

  if (v45 >= v44)
  {
    v44 = v45;
  }

  v42 |= *v44 << 24;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v47 = 0;
  v48 = 0;
  v49 = v25 >> 22;
  a3 += v9;
  v50 = v90 - a3;
  a2 += v10;
  v51 = v88 - a2;
  while (1)
  {
    v52 = (v42 & 0x1F) + ((v42 & 0x3E0) >> 3) + ((v42 >> 9) & 0x3E) + ((v42 & 0x3E0) >> 5);
    *(v92 + 4 + 4 * v48) = v52 & 0xF8 | (v11 | (v42 >> 5) | v42) & 0xFF000000 | (v52 >> 5);
    *(v91 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v50 | v51 | (a3 - v89) | (a2 - v87)) < 0)
    {
      v91 += v48 + 1;
      v92 = v92 - v47 + 4;
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 2 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v53 = (v4 + SHIDWORD(a3) * v6 + 2 * (a2 >> 32));
    }

    else
    {
      v53 = v15;
    }

    if (v53 < v40)
    {
      v53 = *(result + 32);
    }

    v42 = *v53;
    if (v5)
    {
      v43 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
      v54 = *(result + 40);
      if (v14 >= v43)
      {
        v55 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
      }

      else
      {
        v55 = v14;
      }

      if (v55 >= v54)
      {
        v54 = v55;
      }

      v42 |= *v54 << 24;
    }

    if (v8)
    {
      v46 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v46 & 0xF) != 0)
      {
        v91 += v48 + 1;
        v92 = v92 - v47 + 4;
        a4 += ~v48;
        v25 = -1;
        goto LABEL_68;
      }
    }

    ++v48;
    v47 -= 4;
    a3 += v9;
    v50 -= v9;
    a2 += v10;
    v51 -= v10;
    LOBYTE(v49) = -1;
  }
}
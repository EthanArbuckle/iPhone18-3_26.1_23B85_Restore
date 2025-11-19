void op_BMC_8070(CGPDFScanner *a1)
{
  value = 0;
  if (CGPDFScannerPopName(a1, &value))
  {
    if (!strcmp(value, "AAPL:StyleContent"))
    {
      if (a1)
      {
        v6 = *(a1 + 12);
        v7 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v7 = v6;
        v7[1] = 2;
        *(a1 + 12) = v7;
      }

      v8 = *(a1 + 17);
      v9 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
      *v9 = v8;
      v9[1] = 1;
      *(a1 + 17) = v9;
      v10 = CGPDFOperatorTableCreate();
      if (v10)
      {
        v11 = v10;
        CGPDFOperatorTableSetCallback(v10, "BMC", op_BMC_8070);
        CGPDFOperatorTableSetCallback(v11, "BDC", op_BDC_8072);
        CGPDFOperatorTableSetCallback(v11, "EMC", op_EMC_8069);
        CGPDFScannerPushTable(a1, v11);
        CFRelease(v11);
      }
    }

    else
    {
      if (a1)
      {
        v2 = *(a1 + 12);
        v3 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v3 = v2;
        v3[1] = 0;
        *(a1 + 12) = v3;
      }

      v4 = *(a1 + 17);
      v5 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
      *v5 = v4;
      v5[1] = 1;
      *(a1 + 17) = v5;
    }
  }
}

void op_BDC_8072(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 > 0)
  {
    valuePtr[7] = v2;
    valuePtr[8] = v3;
    v7 = *(a1 + 80) + 40 * v4;
    v41 = (v7 - 40);
    value = 0;
    *(a1 + 72) = v4 - 1;
    if (!CGPDFScannerPopName(a1, &value))
    {
      return;
    }

    if (v7 != 40)
    {
      v8 = *(v7 - 32);
      if (v8 == 5)
      {
        v11 = *(v7 - 8);
        if (v11)
        {
          Resource = CGPDFContentStreamGetResource(*a2, "Properties", v11);
          if (!Resource || *(Resource + 2) != 8)
          {
            v14 = 0;
            v15 = -1;
            goto LABEL_19;
          }

          v9 = (Resource + 32);
          goto LABEL_7;
        }
      }

      else if (v8 == 8)
      {
        v9 = (v7 - 8);
LABEL_7:
        v10 = *v9;
        goto LABEL_16;
      }
    }

    v10 = 0;
LABEL_16:
    valuePtr[0] = -1;
    Integer = CGPDFDictionaryGetInteger(v10, "MCID", valuePtr);
    v14 = Integer && valuePtr[0] >= 0;
    if (v14)
    {
      v15 = valuePtr[0];
    }

    else
    {
      v15 = -1;
    }

LABEL_19:
    if (*value == 79 && value[1] == 67 && !value[2])
    {
      if (v7 == 40)
      {
        CGPDFDrawingContextSaveGState(a2);
        goto LABEL_50;
      }

      if (*(v7 - 32) == 5)
      {
        PropertyList = CGPDFContentStreamGetPropertyList(*(a1 + 56), *(v7 - 8));
        if (PropertyList)
        {
          ShouldDrawOCG = CGPDFDrawingContextShouldDrawOCG(a2, PropertyList[3], PropertyList[4]);
          v33 = *(a1 + 96);
          v34 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
          *v34 = v33;
          v34[1] = 0;
          *(a1 + 96) = v34;
          v35 = *(a1 + 136);
          v36 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
          *v36 = v35;
          v36[1] = ShouldDrawOCG;
LABEL_52:
          *(a1 + 136) = v36;
          return;
        }
      }

      CGPDFDrawingContextSaveGState(a2);
    }

    else
    {
      if (v14)
      {
        v16 = *(a1 + 96);
        v17 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v17 = v16;
        v17[1] = 3;
        *(a1 + 96) = v17;
        v24 = *(a2 + 96);
        if (v24)
        {
          v25 = *(a2 + 88);
          valuePtr[0] = v15;
          if (v25 && *(v25 + 16) == 1129601108 && *(v25 + 24) == 1)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFDictionarySetValue(Mutable, @"PageProperties", v24);
            CGCFDictionarySetNumber(Mutable, @"MCID", kCFNumberSInt64Type, valuePtr);
            v27 = *(v25 + 40);
            if (v27)
            {
              v28 = *(v27 + 168);
              if (v28)
              {
                v28();
              }
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }

          else
          {
            handle_invalid_context("CGPDFContextBeginTagWithMCID", v25, v18, v19, v20, v21, v22, v23);
          }
        }

        return;
      }

      if (strcmp(value, "AAPL:Style"))
      {
        v29 = *(a1 + 96);
        v30 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        v30[1] = 0;
LABEL_51:
        *v30 = v29;
        *(a1 + 96) = v30;
        v40 = *(a1 + 136);
        v36 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v36 = v40;
        v36[1] = 1;
        goto LABEL_52;
      }

      CGPDFDrawingContextSaveGState(a2);
      if (v7 == 40)
      {
LABEL_50:
        CGPDFDrawingContextSaveGState(a2);
        v29 = *(a1 + 96);
        v30 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        v30[1] = 1;
        goto LABEL_51;
      }
    }

    if (*(v7 - 32) == 5)
    {
      v37 = *(v7 - 8);
      value = v37;
      v38 = a2 ? *a2 : 0;
      v39 = CGPDFContentStreamGetPropertyList(v38, v37);
      if (CGPDFDictionaryGetObject(v39, "Style", &v41))
      {
        set_style(a2, v41);
      }
    }

    goto LABEL_50;
  }

  pdf_error("stack underflow.");
}

void set_style(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (get_shadow_style(a2, &cf))
  {
    v3 = *(a1 + 32);
    v4 = cf;
    CGPDFGStateSetShadowStyle(v3, cf);
    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {

    pdf_error("invalid shadow style.");
  }
}

CGColorSpaceRef get_shadow_style(uint64_t a1, unint64_t *a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v28 = a1;
  if (!a1)
  {
LABEL_7:
    *a2 = 0;
    return 1;
  }

  v26 = 0.0;
  value = 0;
  v3 = *(a1 + 8);
  if (v3 != 8)
  {
    if (v3 != 5)
    {
      return 0;
    }

    v4 = *(a1 + 32);
    if (strcmp(v4, "Default") && strcmp(v4, "None"))
    {
      return 0;
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 32);
  result = CGPDFDictionaryGetName(v6, "Subtype", &value);
  if (!result)
  {
    return result;
  }

  if (strcmp(value, "Shadow"))
  {
    return 0;
  }

  result = CGPDFDictionaryGetNumbers(v6, "Offset", v29, 2);
  if (result)
  {
    v7 = *v29;
    v8 = *&v29[1];
    if (!CGPDFDictionaryGetNumber(v6, "Radius", &v26))
    {
      v26 = 0.0;
    }

    if (!CGPDFDictionaryGetObject(v6, "ColorSpace", &v28))
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v17 = CGColorCreate(DeviceRGB, get_shadow_style_default_components);
      CGColorSpaceRelease(DeviceRGB);
LABEL_29:
      *a2 = CGStyleCreateShadow2(v17, v18, v19, v20, v21, v22, v23, v24, v7, v8, v26);
      if (v17)
      {
        CFRelease(v17);
      }

      return 1;
    }

    result = CGPDFCreateColorSpace(v28);
    if (result)
    {
      v10 = result;
      v11 = *(*(result + 3) + 48) + 1;
      v12 = MEMORY[0x1EEE9AC00](8 * v11, v9);
      v15 = &v26 - v14;
      if (v13 <= 0x1FFFFFFFFFFFFFFELL)
      {
        v16 = &v26 - v14;
      }

      else
      {
        v16 = 0;
      }

      if (v13 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000000ELL)
      {
        v16 = malloc_type_malloc(v12, 0xDA977817uLL);
      }

      if (!v16)
      {
        return 0;
      }

      if (!CGPDFDictionaryGetNumbers(v6, "Color", v16, v11))
      {
        if (v16 != v15)
        {
          free(v16);
        }

        return 0;
      }

      v17 = CGColorCreate(v10, v16);
      if (v16 != v15)
      {
        free(v16);
      }

      CGColorSpaceRelease(v10);
      goto LABEL_29;
    }
  }

  return result;
}

void op_gs_8087(CGPDFScanner *a1, uint64_t a2)
{
  v97 = 0.0;
  v96 = 0;
  value = 0;
  v95 = 0;
  v92 = 0;
  array = 0;
  if (!CGPDFScannerPopName(a1, &value))
  {
    return;
  }

  v3 = a2 ? *a2 : 0;
  ExtGState = CGPDFContentStreamGetExtGState(v3, value);
  if (!ExtGState)
  {
    return;
  }

  v5 = ExtGState;
  if (CGPDFDictionaryGetNumber(ExtGState, "LW", &v97))
  {
    if (v97 >= 0.0)
    {
      v6 = *(a2 + 32);
      if (v6)
      {
        *(v6 + 160) = v97;
      }
    }

    else
    {
      pdf_error("invalid line width: %g.", v97);
    }
  }

  if (CGPDFDictionaryGetInteger(v5, "LC", &v95))
  {
    if (v95 >= 3)
    {
      pdf_error("invalid line cap: %ld.", v95);
    }

    else
    {
      v7 = *(a2 + 32);
      if (v7)
      {
        *(v7 + 168) = v95;
      }
    }
  }

  if (CGPDFDictionaryGetInteger(v5, "LJ", &v95))
  {
    if (v95 >= 3)
    {
      pdf_error("invalid line join: %ld.", v95);
    }

    else
    {
      v8 = *(a2 + 32);
      if (v8)
      {
        *(v8 + 172) = v95;
      }
    }
  }

  if (CGPDFDictionaryGetNumber(v5, "ML", &v97))
  {
    if (v97 >= 1.0)
    {
      v9 = *(a2 + 32);
      if (v9)
      {
        *(v9 + 176) = v97;
      }
    }

    else
    {
      pdf_error("invalid miter limit: %g.", v97);
    }
  }

  if (CGPDFDictionaryGetArray(v5, "D", &array) && CGPDFArrayGetNumber(array, 0, &v97) && CGPDFArrayGetArray(array, 1uLL, &array))
  {
    v10.n128_f64[0] = v97;
    set_line_dash(a2, array, v10);
  }

  if (CGPDFDictionaryGetName(v5, "RI", &value))
  {
    set_rendering_intent(a2, value);
  }

  if (CGPDFDictionaryGetBoolean(v5, "OP", &v96))
  {
    v11 = *(a2 + 32);
    if (v11)
    {
      v12 = v96 != 0;
      *(v11 + 234) = v96 != 0;
      *(v11 + 233) = v12;
    }
  }

  if (CGPDFDictionaryGetBoolean(v5, "op", &v96))
  {
    v13 = *(a2 + 32);
    if (v13)
    {
      *(v13 + 233) = v96 != 0;
    }
  }

  if (CGPDFDictionaryGetInteger(v5, "OPM", &v95))
  {
    v14 = *(a2 + 32);
    if (v14)
    {
      *(v14 + 236) = v95;
    }
  }

  if (CGPDFDictionaryGetArray(v5, "Font", &array))
  {
    v15 = array;
    v99 = 0;
    v100[0] = 0.0;
    if (CGPDFArrayGetDictionary(array, 0, &v99) && CGPDFArrayGetNumber(v15, 1uLL, v100))
    {
      v16 = CGPDFFontCreate(v99);
      CGPDFGStateSetFont(*(a2 + 32), v16);
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = *(a2 + 32);
      if (v17)
      {
        v18 = v100[0];
        *(v17 + 144) = v100[0];
        v19 = *(v17 + 288);
        if (v19)
        {
          *(v19 + 56) = v18;
        }
      }
    }
  }

  if (CGPDFDictionaryGetObject(v5, "BG2", &v92))
  {
    v20 = v92;
    v21 = a2;
    v22 = 1;
  }

  else
  {
    if (!CGPDFDictionaryGetObject(v5, "BG", &v92))
    {
      goto LABEL_54;
    }

    v20 = v92;
    v21 = a2;
    v22 = 0;
  }

  set_black_generation(v21, v20, v22);
LABEL_54:
  if (CGPDFDictionaryGetObject(v5, "UCR2", &v92))
  {
    v23 = v92;
    v24 = a2;
    v25 = 1;
  }

  else
  {
    if (!CGPDFDictionaryGetObject(v5, "UCR", &v92))
    {
      goto LABEL_59;
    }

    v23 = v92;
    v24 = a2;
    v25 = 0;
  }

  set_undercolor_removal(v24, v23, v25);
LABEL_59:
  if (CGPDFDictionaryGetObject(v5, "TR2", &v92))
  {
    v26 = v92;
    v27 = a2;
    v28 = 1;
  }

  else
  {
    if (!CGPDFDictionaryGetObject(v5, "TR", &v92))
    {
      goto LABEL_64;
    }

    v26 = v92;
    v27 = a2;
    v28 = 0;
  }

  set_transfer(v27, v26, v28);
LABEL_64:
  CGPDFDictionaryGetObject(v5, "HT", &v92);
  if (CGPDFDictionaryGetNumber(v5, "FL", &v97))
  {
    v29 = *(a2 + 32);
    if (v29)
    {
      *(v29 + 264) = v97;
    }
  }

  if (CGPDFDictionaryGetNumber(v5, "SM", &v97))
  {
    v30 = *(a2 + 32);
    if (v30)
    {
      *(v30 + 272) = v97;
    }
  }

  if (CGPDFDictionaryGetBoolean(v5, "SA", &v96))
  {
    v31 = *(a2 + 32);
    if (v31)
    {
      *(v31 + 196) = v96 != 0;
    }
  }

  if (CGPDFDictionaryGetObject(v5, "BM", &v92))
  {
    v32 = *(a2 + 32);
    if (v32)
    {
      v33 = CGPDFBlendModeFromCGPDFObject(v92);
      if (v33 != -1)
      {
        *(v32 + 200) = v33;
      }
    }
  }

  if (!CGPDFDictionaryGetObject(v5, "SMask", &v92))
  {
    goto LABEL_91;
  }

  if (v92)
  {
    v34 = *(v92 + 2);
    if (v34 == 5)
    {
      if (!strcmp(*(v92 + 4), "None"))
      {
        v56 = *(a2 + 32);
        if (v56)
        {
          v57 = *(v56 + 208);
          if (v57)
          {
            CFRelease(v57);
            *(v56 + 208) = 0;
          }
        }
      }

      else
      {
      }

      goto LABEL_91;
    }

    if (v34 == 8)
    {
      v35 = *(v92 + 4);
      v36 = CGPDFDictionaryCopyAssociation(v35, "SoftMask");
      if (v36)
      {
        v43 = v36;
        goto LABEL_83;
      }

      if (CGPDFSoftMaskGetTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFSoftMaskGetTypeID_onceToken, &__block_literal_global_3846);
      }

      cftype = pdf_create_cftype();
      if (!cftype)
      {
        goto LABEL_171;
      }

      v54 = cftype;
      v99 = 0;
      v100[0] = 0.0;
      v98 = 0;
      *(cftype + 16) = v35;
      if (!CGPDFDictionaryGetName(v35, "S", v100))
      {
        goto LABEL_170;
      }

      v55 = v100[0];
      if (!strcmp(*&v100[0], "Alpha"))
      {
        v58 = 0;
      }

      else
      {
        if (strcmp(*&v55, "Luminosity"))
        {
LABEL_170:
          CFRelease(v54);
LABEL_171:
          CGPDFGStateSetSoftMask(*(a2 + 32), 0);
          goto LABEL_91;
        }

        v58 = 1;
      }

      *(v54 + 24) = v58;
      if (!CGPDFDictionaryGetStream(v35, "G", &v98))
      {
        goto LABEL_170;
      }

      v81 = CGPDFGroupCreate(v98);
      *(v54 + 32) = v81;
      if (v81)
      {
        if (*(v54 + 24) != 1)
        {
          goto LABEL_160;
        }

        v82 = *(v81 + 12);
        if (v82)
        {
          v83 = *(*(v82 + 3) + 48);
          v84 = malloc_type_calloc(1uLL, 8 * v83 + 8, 0x100004000313F17uLL);
          if (!v84)
          {
            goto LABEL_170;
          }

          v85 = v84;
          if (CGPDFDictionaryGetNumbers(v35, "BC", v84, v83))
          {
            v85[v83] = 1.0;
            v86 = CGColorCreate(v82, v85);
          }

          else
          {
            v86 = CGColorSpaceCopyDefaultColor(v82);
          }

          *(v54 + 40) = v86;
          free(v85);
LABEL_160:
          if (CGPDFDictionaryGetName(v35, "TR", v100))
          {
            if (strcmp(*&v100[0], "Identity"))
            {
              goto LABEL_170;
            }
          }

          else if (CGPDFDictionaryGetObject(v35, "TR", &v99))
          {
            Function = CGPDFFunctionCreateFunction(v99);
            *(v54 + 48) = Function;
            if (!Function)
            {
              goto LABEL_170;
            }

            if (*(Function + 4) != 1 || *(Function + 6) != 1)
            {
              goto LABEL_170;
            }
          }

          v43 = CGPDFDictionarySetAssociation(v35, v54, "SoftMask");
          if (v43)
          {
LABEL_83:
            v44 = *(v43 + 32);
            if (v44)
            {
              v45 = 0;
              x = v44[1];
              if (x == INFINITY || (y = v44[2], y == INFINITY) || (v45 = 0, width = v44[3], width == 0.0) || (height = v44[4], height == 0.0))
              {
LABEL_146:
                CFRelease(v43);
                CGPDFGStateSetSoftMask(*(a2 + 32), v45);
                if (v45)
                {
                  CFRelease(v45);
                }

                goto LABEL_91;
              }

              if (a2)
              {
                v50 = *a2;
              }

              else
              {
                v50 = 0;
              }

              v45 = 0;
              v59 = *(v43 + 24);
              if (v59)
              {
                if (v59 != 1)
                {
                  goto LABEL_146;
                }

                ResolvedColor = CGPDFContentStreamCreateResolvedColor(v50, *(v43 + 40), v37, v38, v39, v40, v41, v42);
                if (!ResolvedColor)
                {
                  goto LABEL_145;
                }
              }

              else
              {
                ResolvedColor = 0;
              }

              if (v50 && (v61 = *(v50 + 16)) != 0)
              {
                v103.origin.x = pdf_page_get_box_rect(*(v50 + 16), 0);
                v105.origin.x = x;
                v105.origin.y = y;
                v105.size.width = width;
                v105.size.height = height;
                v104 = CGRectIntersection(v103, v105);
                x = v104.origin.x;
                if (v104.origin.x != INFINITY)
                {
                  y = v104.origin.y;
                  if (v104.origin.y != INFINITY)
                  {
                    width = v104.size.width;
                    if (v104.size.width != 0.0)
                    {
                      height = v104.size.height;
                      if (v104.size.height != 0.0)
                      {
                        v62 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
                        if (v62)
                        {
                          v63 = v62;
                          v64 = *v61;
                          if (v64)
                          {
                            CFRetain(v64);
                          }

                          goto LABEL_135;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v65 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
                if (v65)
                {
                  v63 = v65;
                  v64 = 0;
LABEL_135:
                  *(v63 + 8) = v64;
                  CFRetain(v43);
                  *v63 = v43;
                  v72 = *a2;
                  if (*a2)
                  {
                    CFRetain(*a2);
                  }

                  *(v63 + 16) = v72;
                  v73 = *(a2 + 32);
                  if (!v73)
                  {
                    v73 = &CGAffineTransformIdentity;
                  }

                  v74 = *&v73->c;
                  v90 = vmlaq_n_f64(vmulq_n_f64(v74, v44[8]), *&v73->a, v44[7]);
                  v91 = vmlaq_n_f64(vmulq_n_f64(v74, v44[6]), *&v73->a, v44[5]);
                  v89 = vaddq_f64(*&v73->tx, vmlaq_n_f64(vmulq_n_f64(v74, v44[10]), *&v73->a, v44[9]));
                  CGContextGetBaseCTM(*(a2 + 88), v66, v67, v68, v69, v70, v71, v100);
                  v75 = vmlaq_n_f64(vmulq_laneq_f64(v101, v90, 1), *v100, v90.f64[0]);
                  v76 = *(v43 + 48);
                  v77 = vaddq_f64(v102, vmlaq_n_f64(vmulq_laneq_f64(v101, v89, 1), *v100, v89.f64[0]));
                  *v100 = vmlaq_n_f64(vmulq_laneq_f64(v101, v91, 1), *v100, v91.f64[0]);
                  v101 = v75;
                  v102 = v77;
                  v45 = CGSoftMaskCreate(v63, v100, ResolvedColor, v76, &pdf_softmask_callbacks, v78, v79, v80, x, y, width, height);
                  if (ResolvedColor)
                  {
                    CFRelease(ResolvedColor);
                  }

                  if (!v45)
                  {
                    pdf_softmask_release_info(v63);
                  }

                  goto LABEL_146;
                }
              }

              if (ResolvedColor)
              {
                CFRelease(ResolvedColor);
              }
            }

LABEL_145:
            v45 = 0;
            goto LABEL_146;
          }

          goto LABEL_171;
        }
      }

      goto LABEL_170;
    }
  }

  pdf_error("invalid soft mask.");
LABEL_91:
  if (CGPDFDictionaryGetNumber(v5, "CA", &v97))
  {
    CGPDFGStateSetStrokeAlpha(*(a2 + 32), v97);
  }

  if (CGPDFDictionaryGetNumber(v5, "ca", &v97))
  {
    CGPDFGStateSetFillAlpha(*(a2 + 32), v97);
  }

  if (CGPDFDictionaryGetBoolean(v5, "AIS", &v96))
  {
    v51 = *(a2 + 32);
    if (v51)
    {
      *(v51 + 232) = v96 != 0;
    }
  }

  if (CGPDFDictionaryGetBoolean(v5, "TK", &v96))
  {
    v52 = *(a2 + 32);
    if (v52)
    {
      *(v52 + 152) = v96 != 0;
    }
  }

  if (CGPDFDictionaryGetObject(v5, "AAPL:ST", &v92))
  {
    set_style(a2, v92);
  }
}

void set_line_dash(uint64_t a1, uint64_t a2, __n128 a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!a2 || (v6 = *(a2 + 16), v5 = *(a2 + 24), v7 = v5 - v6, v5 == v6))
  {
    v17 = *(a1 + 32);

    CGPDFGStateSetDash(v17, 0);
  }

  else
  {
    v8 = a3.n128_u64[0];
    v9 = v7 >> 3;
    MEMORY[0x1EEE9AC00](a1, a3);
    v12 = v19 - v11;
    if (v10 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v13 = v19 - v11;
    }

    else
    {
      v13 = 0;
    }

    if (v10 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000016)
    {
      v13 = malloc_type_malloc(v7, 0x8AB0A669uLL);
    }

    if (v13)
    {
      if (CGPDFArrayGetNumbers(a2, v13, v7 >> 3))
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v16 = *&v13[8 * v14];
          if (v16 < 0.0)
          {
            pdf_error("invalid dash array: lengths may not be negative.");
            goto LABEL_20;
          }

          v15 = v15 + v16;
          ++v14;
        }

        while (v9 != v14);
        if (v15 == 0.0)
        {
          pdf_error("invalid dash array: at least one length must be greater than zero.");
          goto LABEL_20;
        }

        v18 = malloc_type_calloc(1uLL, v7 + 24, 0x1000040D315E998uLL);
        *v18 = 1;
        *(v18 + 1) = v8;
        *(v18 + 2) = v9;
        memcpy(v18 + 6, v13, v7);
        if (v13 != v12)
        {
          free(v13);
        }

        CGPDFGStateSetDash(*(a1 + 32), v18);
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFF, memory_order_relaxed) == 1)
        {
          free(v18);
        }
      }

      else
      {
        pdf_error("invalid dash array.");
LABEL_20:
        if (v13 != v12)
        {
          free(v13);
        }
      }
    }
  }
}

void set_rendering_intent(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "AbsoluteColorimetric"))
  {
    v4 = 1;
  }

  else
  {
    if (!strcmp(__s1, "RelativeColorimetric"))
    {
LABEL_6:
      v4 = 2;
      goto LABEL_10;
    }

    if (!strcmp(__s1, "Saturation"))
    {
      v4 = 4;
    }

    else
    {
      if (strcmp(__s1, "Perceptual"))
      {
        goto LABEL_6;
      }

      v4 = 3;
    }
  }

LABEL_10:
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 192) = v4;
  }
}

void set_black_generation(uint64_t a1, uint64_t a2, int a3)
{
  cf = 0;
  if (build_function(a2, a3, &cf))
  {
    v4 = *(a1 + 32);
    v5 = cf;
    CGPDFGStateSetBlackGeneration(v4, cf);
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void set_undercolor_removal(uint64_t a1, uint64_t a2, int a3)
{
  cf = 0;
  if (build_function(a2, a3, &cf))
  {
    v4 = *(a1 + 32);
    v5 = cf;
    CGPDFGStateSetUndercolorRemoval(v4, cf);
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void set_transfer(uint64_t a1, uint64_t a2, int a3)
{
  value = a2;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    v13 = 0;
    if (a2 && *(a2 + 8) == 7)
    {
      v8 = *(a2 + 32);
      if (v8 && *(v8 + 3) - *(v8 + 2) == 32)
      {
        v9 = 0;
        while (1)
        {
          CGPDFArrayGetObject(v8, v9, &value);
          if (!build_transfer_function(value, a3, &v13))
          {
            break;
          }

          v10 = v13;
          CFArrayAppendValue(v7, v13);
          CFRelease(v10);
          if (++v9 == 4)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        pdf_error("invalid transfer array.", v13);
      }
    }

    else if (build_transfer_function(a2, a3, &v13))
    {
      v11 = v13;
      v12 = 4;
      do
      {
        CFArrayAppendValue(v7, v11);
        --v12;
      }

      while (v12);
      CFRelease(v11);
LABEL_14:
      CGPDFGStateSetTransferFunctions(*(a1 + 32), v7);
    }

    CFRelease(v7);
  }
}

uint64_t build_transfer_function(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1 && *(a1 + 8) == 5)
  {
    v4 = *(a1 + 32);
    if (a2 && !strcmp(*(a1 + 32), "Default"))
    {
      *a3 = *MEMORY[0x1E695E738];
      return 1;
    }

    if (strcmp(v4, "Identity"))
    {
      return 0;
    }

    result = CGFunctionCreateIdentity();
  }

  else
  {
    result = CGPDFFunctionCreateFunction(a1);
    if (!result)
    {
      return result;
    }
  }

  *a3 = result;
  return 1;
}

uint64_t build_function(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1 && *(a1 + 8) == 5)
  {
    v4 = *(a1 + 32);
    if (a2 && !strcmp(*(a1 + 32), "Default"))
    {
      result = 0;
    }

    else
    {
      if (strcmp(v4, "Identity"))
      {
        return 0;
      }

      result = CGFunctionCreateIdentity();
    }
  }

  else
  {
    result = CGPDFFunctionCreateFunction(a1);
    if (!result)
    {
      return result;
    }
  }

  *a3 = result;
  return 1;
}

void op_d1_8132(CGPDFScanner *a1, uint64_t a2)
{
  v17 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  value = 0.0;
  v14 = 0.0;
  v12 = 0;
  if (CGPDFScannerPopNumber(a1, &v12) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v14) && CGPDFScannerPopNumber(a1, &v15) && CGPDFScannerPopNumber(a1, &v16) && CGPDFScannerPopNumber(a1, &v17))
  {
    FillColorAsColor = CGContextGetFillColorAsColor(*(a2 + 88), v4, v5, v6, v7, v8, v9, v10);
    CGContextSetStrokeColorWithColor(*(a2 + 88), FillColorAsColor);
  }
}

void op_EI_8133(uint64_t *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopStream(a1, &value))
  {
    Inline = CGPDFImageCreateInline(a1[7], value);
    if (Inline)
    {
      v11 = Inline;
      CGPDFDrawingContextDrawImage(a2, Inline, v5, v6, v7, v8, v9, v10);
      CFRelease(v11);
    }
  }
}

void op_sh_8134(CGPDFScanner *a1, uint64_t *a2)
{
  value = 0;
  v3 = CGPDFScannerPopName(a1, &value);
  if (a2)
  {
    if (v3)
    {
      v4 = *a2;
      if (*a2)
      {
        v5 = value;
        while (1)
        {
          Shading = CGPDFResourcesGetShading(*(v4 + 32), v5);
          if (Shading)
          {
            break;
          }

          v4 = *(v4 + 40);
          if (!v4)
          {
            return;
          }
        }

        v7 = CGPDFShadingGetShading(Shading);
        if (v7)
        {
          v8 = v7;
          CGPDFGStateSynchronizeForImages(a2[4], a2[11]);
          CGContextDrawShading(a2[11], v8);
        }
      }
    }
  }
}

void op_Do_8135(CGPDFScanner *a1, uint64_t a2)
{
  v103 = 0;
  v3 = CGPDFScannerPopName(a1, &v103);
  if (!a2)
  {
    return;
  }

  if (!v3)
  {
    return;
  }

  v4 = *a2;
  if (!*a2)
  {
    return;
  }

  v5 = v103;
  while (1)
  {
    v6 = CGPDFResourcesCopyXObject(*(v4 + 32), v5);
    if (v6)
    {
      break;
    }

    v4 = *(v4 + 40);
    if (!v4)
    {
      return;
    }
  }

  v7 = v6;
  v8 = v6[26];
  if (!v8)
  {
    value.a = 0.0;
    v9 = *(v6 + 3);
    if (v9)
    {
      v10 = *(v9 + 48);
    }

    else
    {
      v10 = 0;
    }

    if (!CGPDFDictionaryGetDictionary(v10, "OC", &value))
    {
      v8 = 1;
      v7[26] = 1;
      goto LABEL_38;
    }

    if (*(a2 + 112))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v7[26] = v11;
    __s1 = 0;
    if (!CGPDFDictionaryGetName(*&value.a, "Type", &__s1))
    {
      goto LABEL_37;
    }

    if (strcmp(__s1, "OCMD"))
    {
      goto LABEL_37;
    }

    v105 = 0;
    if (!CGPDFDictionaryGetObject(*&value.a, "OCGs", &v105) || !v105)
    {
      goto LABEL_37;
    }

    v12 = *(v105 + 2);
    if (v12 == 7)
    {
      v15 = *(v105 + 4);
      if (!v15 || (v16 = *(v15 + 3) - *(v15 + 2)) == 0)
      {
        v14 = 2;
LABEL_36:
        v7[26] = v14;
        goto LABEL_37;
      }

      v17 = v16 >> 3;
      v18 = 1;
      do
      {
        v104 = 0;
        Object = CGPDFArrayGetObject(v15, v18 - 1, &v104);
        if (Object)
        {
          Object = CGPDFDrawingContextShouldDrawOCG(a2, *(v104 + 2), *(v104 + 3));
        }

        if (v18 >= v17)
        {
          break;
        }

        ++v18;
      }

      while ((Object & 1) == 0);
    }

    else
    {
      if (v12 != 8)
      {
LABEL_37:
        v8 = v7[26];
        goto LABEL_38;
      }

      Object = CGPDFDrawingContextShouldDrawOCG(a2, *(v105 + 2), *(v105 + 3));
    }

    if (Object)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    goto LABEL_36;
  }

LABEL_38:
  if (v8 == 1)
  {
    v19 = v7[4];
    if (v19 == 2)
    {
      v53 = CGPDFXObjectGetValue(v7);
      if (v53)
      {
        v54 = v53;
        if (*(v53 + 105) == 1)
        {
          pdf_log("knockout groups aren't supported.");
        }

        if ((*(v54 + 104) & 1) == 0)
        {
          pdf_log("non-isolated groups aren't supported.");
        }

        v55 = *(a2 + 32);
        if (v55)
        {
          v56 = *(a2 + 88);
          if (v56)
          {
            CGContextSetAlpha(*(a2 + 88), *(v55 + 216));
            CGPDFGStateSynchronizeColorRendering(v55, v56);
            CGPDFGStateSynchronizeRendering(v55, v56, v57, v58, v59, v60, v61, v62);
          }
        }

        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v64 = *(v54 + 96);
        if (v64 || (v64 = *(a2 + 16)) != 0)
        {
          ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(*a2, v64);
          v66 = ResolvedColorSpace;
          if (Mutable && ResolvedColorSpace)
          {
            CFDictionarySetValue(Mutable, @"kCGContextColorSpace", ResolvedColorSpace);
          }

          CGColorSpaceRelease(v66);
        }

        CGCFDictionarySetRect(Mutable, @"kCGContextBoundingBox", *(v54 + 8), *(v54 + 16), *(v54 + 24), *(v54 + 32));
        v67 = *(a2 + 88);
        CGContextSaveGState(v67);
        v68 = *(v54 + 56);
        *&value.a = *(v54 + 40);
        *&value.c = v68;
        *&value.tx = *(v54 + 72);
        CGContextConcatCTM(v67, &value);
        v69 = *v54;
        v70 = *(v54 + 88);
        if (!CGContextIsEmptyClipBoundingBox(v67, v71, v72, v73, v74, v75, v76, v77))
        {
          v78 = CGPDFDrawingContextCreateWithStream(v69, v70, a2);
          if (v78)
          {
            v79 = v78;
            *&value.a = CGRectNull.origin;
            *&value.c = CGRectNull.size;
            if (Mutable)
            {
              if (kCGColorSpace_block_invoke_once != -1)
              {
                dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
              }

              CGCFDictionaryGetCFTypeRef(Mutable, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, v79 + 2);
              CGCFDictionaryGetRect(Mutable, @"kCGContextBoundingBox", &value);
            }

            set_initial_group_gstate(v79[4]);
            set_initial_group_gstate(v79[3]);
            CGContextBeginTransparencyLayer(v67, Mutable);
            a = value.a;
            if (value.a != INFINITY)
            {
              b = value.b;
              if (value.b != INFINITY)
              {
                v82 = *&value.c;
                CGContextClipToRect(v67, *&a);
              }
            }

            v79[11] = v67;
            if (CGPDFDrawingContextGetOperatorTable_predicate != -1)
            {
              dispatch_once(&CGPDFDrawingContextGetOperatorTable_predicate, &__block_literal_global_7936);
            }

            v83 = CGPDFScannerCreate(*v79, CGPDFDrawingContextGetOperatorTable_operator_table, v79);
            CGPDFScannerScan(v83);
            if (v83)
            {
              CFRelease(v83);
            }

            CGContextEndTransparencyLayer(v67);
            CGPDFDrawingContextRelease(v79);
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        CGContextRestoreGState(v67);
      }
    }

    else if (v19 == 1)
    {
      v27 = CGPDFXObjectGetValue(v7);
      v28 = *(a2 + 88);
      CGContextGetBaseCTM(v28, v29, v30, v31, v32, v33, v34, v107);
      GStateMark = CGContextGetGStateMark(v28, v35, v36, v37, v38, v39, v40, v41);
      v43 = (v27 + 56);
      if (!v27)
      {
        v43 = &CGAffineTransformIdentity;
      }

      v44 = *&v43->c;
      *&value.a = *&v43->a;
      *&value.c = v44;
      *&value.tx = *&v43->tx;
      CGContextConcatCTM(v28, &value);
      CGContextGetCTM(&value, v28);
      CGContextSetBaseCTM(v28, &value, v45, v46, v47, v48, v49, v50);
      if (v27)
      {
        CGContextClipToRect(v28, *(v27 + 24));
        v51 = *(v27 + 16);
        v52 = *(v27 + 104);
      }

      else
      {
        v109.origin.x = INFINITY;
        v109.size.width = 0.0;
        v109.size.height = 0.0;
        v109.origin.y = INFINITY;
        CGContextClipToRect(v28, v109);
        v51 = 0;
        v52 = 0;
      }

      v84 = CGPDFDrawingContextCreateWithStream(v51, v52, a2);
      CGPDFDrawingContextDraw(v84, v28, v85, v86, v87, v88, v89, v90);
      CGPDFDrawingContextRelease(v84);
      CGContextRestoreToGStateMark(v28, GStateMark, v91, v92, v93, v94, v95, v96);
      CGContextSetBaseCTM(v28, v107, v97, v98, v99, v100, v101, v102);
    }

    else if (v19)
    {
      pdf_error("unrecognized or unsupported XObject subtype.");
    }

    else
    {
      v20 = CGPDFXObjectGetValue(v7);
      CGPDFDrawingContextDrawImage(a2, v20, v21, v22, v23, v24, v25, v26);
    }

    CFRelease(v7);
  }
}

void op_TJ_8137(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopArray(a1, &value))
  {
    if (*(a2 + 80))
    {
      if (value)
      {
        TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
        if (TextObject)
        {
          v4 = TextObject;
          CGPDFTextObjectAppendStrings(TextObject, value);
          CGPDFDrawingContextDrawText(a2, v4);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void op_doublequote(CGPDFScanner *a1, uint64_t a2)
{
  v13 = 0.0;
  value = 0;
  v12 = 0.0;
  if (CGPDFScannerPopString(a1, &value) && CGPDFScannerPopNumber(a1, &v13) && CGPDFScannerPopNumber(a1, &v12))
  {
    if (*(a2 + 80))
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        v5 = v13;
        *(v4 + 88) = v13;
        v6 = *(v4 + 288);
        if (v6)
        {
          *v6 = v5;
          v7 = v12;
          *(v4 + 96) = v12;
          v6[1] = v7;
        }

        else
        {
          *(v4 + 96) = v12;
        }
      }

      TextObject = CGPDFGStateGetTextObject(v4);
      v9 = TextObject;
      v10 = *(a2 + 32);
      if (v10)
      {
        v11 = *(v10 + 112);
      }

      else
      {
        v11 = 0.0;
      }

      CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v11);
      CGPDFTextObjectAppendString(v9, value);
      CGPDFDrawingContextDrawText(a2, v9);
    }

    else
    {
    }
  }
}

void op_singlequote(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopString(a1, &value))
  {
    if (*(a2 + 80))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
      v4 = TextObject;
      v5 = *(a2 + 32);
      if (v5)
      {
        v6 = *(v5 + 112);
      }

      else
      {
        v6 = 0.0;
      }

      CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v6);
      CGPDFTextObjectAppendString(v4, value);
      CGPDFDrawingContextDrawText(a2, v4);
    }

    else
    {
    }
  }
}

void op_Tj_8142(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopString(a1, &value))
  {
    if (*(a2 + 80))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
      CGPDFTextObjectAppendString(TextObject, value);
      CGPDFDrawingContextDrawText(a2, TextObject);
    }

    else
    {
    }
  }
}

double op_Tstar_8144(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80))
  {
    TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
    v5 = *(a2 + 32);
    if (v5)
    {
      v6 = *(v5 + 112);
    }

    else
    {
      v6 = 0.0;
    }

    *&result = CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v6).n128_u64[0];
  }

  else
  {
  }

  return result;
}

void op_Tm_8146(CGPDFScanner *a1, uint64_t a2)
{
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v11 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v11) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v13) && CGPDFScannerPopNumber(a1, &v14) && CGPDFScannerPopNumber(a1, &v15) && CGPDFScannerPopNumber(a1, &v16))
  {
    if (*(a2 + 80))
    {
      v4 = v11;
      v5 = value;
      v6 = v13;
      v7 = v14;
      v8 = v15;
      v9 = v16;
      TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
      *(TextObject + 9) = v9;
      *(TextObject + 10) = v8;
      *(TextObject + 11) = v7;
      *(TextObject + 12) = v6;
      *(TextObject + 13) = v5;
      *(TextObject + 14) = v4;
      *(TextObject + 15) = v9;
      *(TextObject + 16) = v8;
      *(TextObject + 17) = v7;
      *(TextObject + 18) = v6;
      *(TextObject + 19) = v5;
      *(TextObject + 20) = v4;
    }

    else
    {
    }
  }
}

void op_TD_8148(CGPDFScanner *a1, uint64_t a2)
{
  v8 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v8) && CGPDFScannerPopNumber(a1, &value))
  {
    if (*(a2 + 80))
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        v5 = -v8;
        *(v4 + 112) = -v8;
        v6 = *(v4 + 288);
        if (v6)
        {
          *(v6 + 24) = v5;
        }
      }

      TextObject = CGPDFGStateGetTextObject(v4);
      CGPDFTextObjectMoveToNextLine(TextObject, value, v8);
    }

    else
    {
    }
  }
}

void op_Td_8150(CGPDFScanner *a1, uint64_t a2)
{
  v5 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v5) && CGPDFScannerPopNumber(a1, &value))
  {
    if (*(a2 + 80))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
      CGPDFTextObjectMoveToNextLine(TextObject, value, v5);
    }

    else
    {
    }
  }
}

void op_ET_8152(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80))
  {
    v4 = *(CGPDFGStateGetTextObject(*(a2 + 32)) + 22);
    if (v4)
    {
      v5 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
      *v5 = 1;
      v5[1] = 0;
      v5[2] = 0;
      CGPDFTextLayoutDrawGlyphs(v4, clip_to_glyphs_22614, v5, v6);
      CGPDFGStateSynchronizeContextForText(*(a2 + 32), *(a2 + 88));
      CGContextClipToTextClipping(*(a2 + 88), v5, v7, v8, v9, v10, v11, v12);
      CGTextClippingRelease(v5);
    }

    *(a2 + 80) = 0;
  }

  else
  {
  }
}

CGFloat op_BT_8154(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {

    pdf_error("warning: already in a text object.");
  }

  else
  {
    *(a2 + 80) = 1;
    TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
    result = CGAffineTransformIdentity.a;
    *(TextObject + 72) = CGAffineTransformIdentity;
    *(TextObject + 120) = CGAffineTransformIdentity;
  }

  return result;
}

BOOL op_Ts_8156(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 120) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 32) = v5;
      }
    }
  }

  return result;
}

void op_Tr_8157(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (!CGPDFScannerPopInteger(a1, &value))
  {
    return;
  }

  if (value > 3)
  {
    if (value > 5)
    {
      if (value == 6)
      {
        v3 = 6;
      }

      else
      {
        if (value != 7)
        {
          goto LABEL_24;
        }

        v3 = 7;
      }
    }

    else if (value == 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }
  }

  else if (value > 1)
  {
    if (value == 2)
    {
      v3 = 2;
    }

    else if (*(a2 + 176))
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    if (value)
    {
      if (value == 1)
      {
        v3 = 1;
        goto LABEL_21;
      }

LABEL_24:
      pdf_error("invalid text drawing mode: %ld.", value);
      return;
    }

    v3 = 0;
  }

LABEL_21:
  v4 = *(a2 + 32);
  if (v4)
  {
    *(v4 + 128) = v3;
    v5 = *(v4 + 288);
    if (v5)
    {
      CGPDFTextObjectSetTextDrawingMode(v5, v3);
    }
  }
}

void op_Tf_8159(CGPDFScanner *a1, uint64_t *a2)
{
  v9 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopName(a1, &v9))
  {
    if (a2)
    {
      v4 = *a2;
    }

    else
    {
      v4 = 0;
    }

    Font = CGPDFContentStreamGetFont(v4, v9);
    if (Font)
    {
      CGPDFGStateSetFont(a2[4], Font);
      v6 = a2[4];
      if (v6)
      {
        v7 = value;
        *(v6 + 144) = value;
        v8 = *(v6 + 288);
        if (v8)
        {
          *(v8 + 56) = v7;
        }
      }
    }

    else
    {
    }
  }
}

BOOL op_TL_8161(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 112) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 24) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tz_8162(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 104) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 16) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tw_8163(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 96) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 8) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tc_8164(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 88) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *v6 = v5;
      }
    }
  }

  return result;
}

void op_Wstar_8165(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *(v2 + 48) = 256;
  }
}

void op_W_8166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *(v2 + 48) = 1;
  }
}

void op_n_8175(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v3 = copy_clip_path(a2, &v10);
  CGContextBeginPath(*(a2 + 88));
  if (v3)
  {
    CGContextAddPath(*(a2 + 88), v3);
    clip(*(a2 + 88), v10, v4, v5, v6, v7, v8, v9);

    CFRelease(v3);
  }
}

void op_re_8176(CGPDFScanner *a1, uint64_t a2)
{
  v11 = 0.0;
  x = 0.0;
  v9 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v9) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v11) && CGPDFScannerPopNumber(a1, &x))
  {
    v5 = value;
    v4 = v11;
    v6 = *(a2 + 88);
    v7 = x;
    if (value < 0.0 || (v8 = v9, v9 < 0.0))
    {
      CGContextMoveToPoint(v6, x, v11);
      CGContextAddLineToPoint(*(a2 + 88), x + value, v11);
      CGContextAddLineToPoint(*(a2 + 88), x + value, v11 + v9);
      CGContextAddLineToPoint(*(a2 + 88), x, v11 + v9);
      CGContextClosePath(*(a2 + 88));
    }

    else
    {
      CGContextAddRect(v6, *&v7);
    }

    *(a2 + 168) += 4;
  }
}

void op_y_8178(CGPDFScanner *a1, uint64_t a2)
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v4) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v6) && CGPDFScannerPopNumber(a1, &v7))
  {
    CGContextAddCurveToPoint(*(a2 + 88), v7, v6, value, v4, value, v4);
    *(a2 + 168) += 6;
  }
}

void op_v_8179(CGPDFScanner *a1, uint64_t a2)
{
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v5) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v7) && CGPDFScannerPopNumber(a1, &v8))
  {
    PathCurrentPoint = CGContextGetPathCurrentPoint(*(a2 + 88));
    CGContextAddCurveToPoint(*(a2 + 88), PathCurrentPoint.x, PathCurrentPoint.y, v8, v7, value, v5);
    *(a2 + 168) += 6;
  }
}

void op_c_8180(CGPDFScanner *a1, uint64_t a2)
{
  v9 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  value = 0.0;
  v6 = 0.0;
  y = 0.0;
  if (CGPDFScannerPopNumber(a1, &y) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v6) && CGPDFScannerPopNumber(a1, &v7) && CGPDFScannerPopNumber(a1, &v8) && CGPDFScannerPopNumber(a1, &v9))
  {
    CGContextAddCurveToPoint(*(a2 + 88), v9, v8, v7, v6, value, y);
    *(a2 + 168) += 6;
  }
}

void op_l_8181(CGPDFScanner *a1, uint64_t a2)
{
  v4 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v4) && CGPDFScannerPopNumber(a1, &value))
  {
    CGContextAddLineToPoint(*(a2 + 88), value, v4);
    ++*(a2 + 168);
  }
}

void op_m_8182(CGPDFScanner *a1, uint64_t a2)
{
  v4 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v4) && CGPDFScannerPopNumber(a1, &value))
  {
    CGContextMoveToPoint(*(a2 + 88), value, v4);
    ++*(a2 + 168);
  }
}

void op_ri_8183(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopName(a1, &value))
  {
    set_rendering_intent(a2, value);
  }
}

void op_SCN_8184(CGPDFScanner *a1, uint64_t *a2)
{
  StrokeColor = CGPDFGStateGetStrokeColor(a2[4]);
  if (StrokeColor)
  {
    if ((StrokeColor & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(StrokeColor, v5, v6, v7, v8, v9, v10, v11);
    }

    else
    {
      ColorSpace = *(StrokeColor + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelPattern)
  {

    set_pattern(a1, a2, ColorSpace, 0);
  }

  else
  {

    set_color(a1, a2, ColorSpace, 0, v13);
  }
}

void set_pattern(CGPDFScanner *a1, uint64_t *a2, CGColorSpace *a3, int a4)
{
  v77 = *MEMORY[0x1E69E9840];
  value = 0;
  v74 = 0.0;
  v8 = CGPDFScannerPopName(a1, &value);
  if (!a2)
  {
    return;
  }

  if (!v8)
  {
    return;
  }

  v9 = *a2;
  if (!*a2)
  {
    return;
  }

  v10 = value;
  while (1)
  {
    Pattern = CGPDFResourcesGetPattern(*(v9 + 32), v10);
    if (Pattern)
    {
      break;
    }

    v9 = *(v9 + 40);
    if (!v9)
    {
      return;
    }
  }

  v13 = Pattern;
  if (a3)
  {
    v14 = *(*(a3 + 3) + 48);
  }

  else
  {
    v14 = 0;
  }

  if (Pattern[4] != 1 || (*(Pattern + 32) == 1 ? (v15 = v14 == 0) : (v15 = 1), v15))
  {
    v16 = 0;
  }

  else
  {
    v16 = CGColorSpaceCreatePattern(0);
    v14 = 0;
    a3 = v16;
  }

  v17 = MEMORY[0x1EEE9AC00](8 * (v14 + 1), v12);
  v20 = &v69 - v19;
  if (v18 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v21 = &v69 - v19;
  }

  else
  {
    v21 = 0;
  }

  if (v18 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000000ELL)
  {
    v21 = malloc_type_malloc(v17, 0x422C9E0CuLL);
  }

  if (!v21)
  {
    goto LABEL_35;
  }

  v72 = &v69;
  if (v14)
  {
    v22 = v14 - 1;
    while (CGPDFScannerPopNumber(a1, &v74))
    {
      *&v21[8 * v22--] = v74;
      if (v22 == -1)
      {
        goto LABEL_28;
      }
    }

    if (v21 != v20)
    {
      free(v21);
    }

LABEL_35:
    CGColorSpaceRelease(v16);
    return;
  }

LABEL_28:
  v23 = a2[4];
  if (v23)
  {
    v24 = 224;
    if (a4)
    {
      v24 = 216;
    }

    v25 = *(v23 + v24);
  }

  else
  {
    v25 = 1.0;
  }

  *&v21[8 * v14] = v25;
  Mutable = a2[8];
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (a2[8] = Mutable) != 0))
  {
    v27 = CFDictionaryGetValue(Mutable, v13);
    if (!v27)
    {
      v28 = *a2;
      v71 = v16;
      if (v28 && (v29 = *(v28 + 16)) != 0)
      {
        v30 = *v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = a2[3];
      if (v31)
      {
        *&callbacks.version = 0;
        v32 = v13[4];
        if (v32 == 2)
        {
          Shading = CGPDFShadingGetShading(*(v13 + 18));
          v53 = *(v13 + 7);
          *&matrix.a = *(v13 + 6);
          *&matrix.c = v53;
          *&matrix.tx = *(v13 + 8);
          if (Shading)
          {
            v54 = Shading;
            if (kCGPatternWillDeallocate_block_invoke_once != -1)
            {
              dispatch_once(&kCGPatternWillDeallocate_block_invoke_once, &__block_literal_global_6_18603);
            }

            Instance = CGTypeCreateInstance(CGPatternGetTypeID_pattern_type_id, 176, v47, v48, v49, v50, v51, v52);
            if (Instance)
            {
              v27 = Instance;
              *(Instance + 16) = atomic_fetch_add_explicit(identifier_18604, 1u, memory_order_relaxed) + 1;
              *(Instance + 20) = 1;
              v56 = *&matrix.c;
              *(Instance + 24) = *&matrix.a;
              *(Instance + 40) = v56;
              *(Instance + 56) = *&matrix.tx;
              *(Instance + 72) = 1;
              *(Instance + 184) = 0;
              CFRetain(v54);
              *(v27 + 10) = v54;
              if (v54[40] == 1)
              {
                v57 = (v54 + 48);
                p_y = (v54 + 56);
                p_size = (v54 + 64);
                p_height = (v54 + 72);
              }

              else
              {
                v57 = &CGRectInfinite;
                p_height = &CGRectInfinite.size.height;
                p_y = &CGRectInfinite.origin.y;
                p_size = &CGRectInfinite.size;
              }

              v66 = *p_height;
              v67 = *p_y;
              width = p_size->width;
              *(v27 + 13) = *&v57->origin.x;
              *(v27 + 14) = v67;
              *(v27 + 15) = width;
              *(v27 + 16) = v66;
              *(v27 + 17) = 0;
              *(v27 + 18) = 0;
              *(v27 + 185) = 1;
              *(v27 + 10) = shading_callbacks;
              *(v27 + 22) = off_1EF2410D8;
              *(v27 + 11) = 0;
LABEL_78:
              v16 = v71;
              CFDictionarySetValue(a2[8], v13, v27);
              CFRelease(v27);
              goto LABEL_68;
            }
          }
        }

        else if (v32 == 1)
        {
          v33 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
          __CFSetLastAllocationEventName();
          if (v33)
          {
            v70 = v33;
            *v33 = v13;
            if (v30)
            {
              CFRetain(v30);
            }

            v34 = v70;
            v70[1] = v30;
            v35 = v34;
            v34[2] = CGPDFGStateCreateCopy(v31);
            if (v13[4] == 1)
            {
              v36 = type1_draw_uncolored_pattern;
              if (*(v13 + 32))
              {
                v36 = type1_draw_colored_pattern;
              }

              callbacks.drawPattern = v36;
              callbacks.releaseInfo = type1_release_info;
              v37 = *(v13 + 5);
              v38 = *(v13 + 6);
              v39 = *(v13 + 7);
              v40 = *(v13 + 8);
              v41 = *(v13 + 7);
              *&matrix.a = *(v13 + 6);
              *&matrix.c = v41;
              *&matrix.tx = *(v13 + 8);
              v42 = *(v13 + 9);
              v43 = *(v13 + 10);
              v44 = v13[9];
              v45 = *(v13 + 32);
            }

            else
            {
              v45 = 0;
              callbacks.drawPattern = type1_draw_uncolored_pattern;
              callbacks.releaseInfo = type1_release_info;
              v37 = 0x7FF0000000000000;
              v38 = 0x7FF0000000000000;
              v39 = 0;
              v40 = 0;
              v61 = *(v13 + 7);
              *&matrix.a = *(v13 + 6);
              *&matrix.c = v61;
              *&matrix.tx = *(v13 + 8);
              v42 = 0.0;
              v44 = kCGPatternTilingConstantSpacingMinimalDistortion;
              v43 = 0.0;
            }

            v62 = CGPatternCreate(v35, *&v37, &matrix, v42, v43, v44, v45 & 1, &callbacks);
            if (v62)
            {
              v27 = v62;
              v63 = *(v62 + 12);
              if (v63 != v13)
              {
                if (v63)
                {
                  CFRelease(v63);
                }

                CFRetain(v13);
                *(v27 + 12) = v13;
              }

              goto LABEL_78;
            }
          }
        }
      }

      v27 = 0;
      v16 = v71;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_68:
  v64 = CGColorCreateWithPattern(a3, v27, v21);
  v65 = a2[4];
  if (a4)
  {
    CGPDFGStateSetFillColor(v65, v64);
  }

  else
  {
    CGPDFGStateSetStrokeColor(v65, v64);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  CGColorSpaceRelease(v16);
  if (v21 != v20)
  {
    free(v21);
  }
}

void op_scn_8186(CGPDFScanner *a1, uint64_t *a2)
{
  FillColor = CGPDFGStateGetFillColor(a2[4]);
  if (FillColor)
  {
    if ((FillColor & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(FillColor, v5, v6, v7, v8, v9, v10, v11);
    }

    else
    {
      ColorSpace = *(FillColor + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelPattern)
  {

    set_pattern(a1, a2, ColorSpace, 1);
  }

  else
  {

    set_color(a1, a2, ColorSpace, 1, v13);
  }
}

void op_CS_8189(CGPDFScanner *a1, uint64_t *a2)
{
  value = 0;
  if (!CGPDFScannerPopName(a1, &value))
  {
    return;
  }

  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = value;
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), v4);
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      v7 = ColorSpace;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v3, v7);
  if (ResolvedColorSpace)
  {
    v9 = ResolvedColorSpace;
    v10 = CGColorSpaceCopyDefaultColor(ResolvedColorSpace);
    CGPDFGStateSetStrokeColor(a2[4], v10);
    CGColorSpaceRelease(v9);
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void op_cs_8190(CGPDFScanner *a1, uint64_t *a2)
{
  value = 0;
  if (!CGPDFScannerPopName(a1, &value))
  {
    return;
  }

  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = value;
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), v4);
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      v7 = ColorSpace;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v3, v7);
  if (ResolvedColorSpace)
  {
    v9 = ResolvedColorSpace;
    v10 = CGColorSpaceCopyDefaultColor(ResolvedColorSpace);
    CGPDFGStateSetFillColor(a2[4], v10);
    CGColorSpaceRelease(v9);
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void op_RG_8191(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceRGB");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 0, v8);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_rg_8193(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceRGB");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 1, v8);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_K_8194(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceCMYK");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 0, v8);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_k_8196(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceCMYK");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 1, v8);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_G_8197(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceGray");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 0, v8);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_g_8199(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceGray");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 1, v8);

  CGColorSpaceRelease(ResolvedColorSpace);
}

CGPDFReal op_i_8200(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value))
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      result = value;
      *(v4 + 264) = value;
    }
  }

  return result;
}

void op_M_8201(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value))
  {
    if (value >= 1.0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(v3 + 176) = value;
      }
    }

    else
    {
      pdf_error("invalid miter limit: %g.", value);
    }
  }
}

void op_d_8202(CGPDFScanner *a1, uint64_t a2)
{
  v5 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopArray(a1, &v5))
  {
    v4.n128_f64[0] = value;
    set_line_dash(a2, v5, v4);
  }
}

void op_w_8203(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value))
  {
    if (value >= 0.0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(v3 + 160) = value;
      }
    }

    else
    {
      pdf_error("invalid line width: %g.", value);
    }
  }
}

void op_J_8204(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopInteger(a1, &value))
  {
    if (value >= 3)
    {
      pdf_error("invalid line cap: %ld.", value);
    }

    else
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(v3 + 168) = value;
      }
    }
  }
}

void op_j_8205(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopInteger(a1, &value))
  {
    if (value >= 3)
    {
      pdf_error("invalid line join: %ld.", value);
    }

    else
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(v3 + 172) = value;
      }
    }
  }
}

void op_cm_8206(CGPDFScanner *a1, uint64_t a2)
{
  v18 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v14) && CGPDFScannerPopNumber(a1, &v15) && CGPDFScannerPopNumber(a1, &v16) && CGPDFScannerPopNumber(a1, &v17) && CGPDFScannerPopNumber(a1, &v18))
  {
    v4 = v18;
    v6 = v16;
    v5 = v17;
    v8 = v14;
    v7 = v15;
    v9 = value;
    v10 = *(a2 + 32);
    v12.a = v18;
    v12.b = v17;
    v12.c = v16;
    v12.d = v15;
    v12.tx = v14;
    v12.ty = value;
    CGPDFGStateConcatCTM(v10, &v12.a);
    v11 = *(a2 + 88);
    if (v11)
    {
      v12.a = v4;
      v12.b = v5;
      v12.c = v6;
      v12.d = v7;
      v12.tx = v8;
      v12.ty = v9;
      CGContextConcatCTM(v11, &v12);
    }
  }
}

void op_Q_8207(uint64_t a1, uint64_t a2)
{
  if ((CGPDFDrawingContextRestoreGState(a2) & 1) == 0)
  {

    pdf_error("gstate stack underflow.");
  }
}

CGPDFOperatorTable *CGPDFDrawingContextCreateContentTypesTable(char a1)
{
  v2 = CGPDFOperatorTableCreate();
  if ((a1 & 2) != 0)
  {
    v3 = &off_1EF23CBF8;
    v4 = 9;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v3 - 1), *v3);
      v3 += 2;
      --v4;
    }

    while (v4);
    CGPDFOperatorTableSetCallback(v2, "gs", op_gs_8087);
  }

  if ((a1 & 4) != 0)
  {
    v5 = &off_1EF23CC88;
    v6 = 13;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v5 - 1), *v5);
      v5 += 2;
      --v6;
    }

    while (v6);
  }

  if ((a1 & 8) != 0)
  {
    v7 = &off_1EF23CD58;
    v8 = 19;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v7 - 1), *v7);
      v7 += 2;
      --v8;
    }

    while (v8);
  }

  if ((a1 & 0x10) != 0)
  {
    v9 = &off_1EF23CE88;
    v10 = 17;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v9 - 1), *v9);
      v9 += 2;
      --v10;
    }

    while (v10);
  }

  if ((a1 & 0x20) != 0)
  {
    v11 = &off_1EF23CF98;
    v12 = 3;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v11 - 1), *v11);
      v11 += 2;
      --v12;
    }

    while (v12);
  }

  if ((a1 & 0x40) != 0)
  {
    CGPDFOperatorTableSetCallback(v2, "d1", op_d1_8132);
    v13 = &off_1EF23CFE8;
    v14 = 3;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v13 - 1), *v13);
      v13 += 2;
      --v14;
    }

    while (v14);
  }

  return v2;
}

const void *CGPDFResourcesGetPattern(uint64_t a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a2, 0x600u, *MEMORY[0x1E695E498]);
    v6 = *(a1 + 48);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v2 = CFDictionaryGetValue(v6, v5);
      if (v2)
      {
        goto LABEL_43;
      }
    }

    resource = get_resource(a1, "Pattern", a2);
    if (!resource)
    {
      goto LABEL_42;
    }

    v9 = resource;
    v10 = CGPDFObjectCopyAssociation(resource, "Pattern");
    if (v10)
    {
      v11 = v10;
      goto LABEL_11;
    }

    value = 0;
    v13 = *(v9 + 8);
    if (v13 == 9)
    {
      v15 = *(v9 + 32);
      if (!v15)
      {
        v16 = 0;
LABEL_19:
        if (!CGPDFDictionaryGetInteger(v16, "PatternType", &value))
        {
          goto LABEL_42;
        }

        if (value != 2)
        {
          if (value != 1)
          {
            goto LABEL_42;
          }

          if (CGPDFPatternGetTypeID_onceToken != -1)
          {
            dispatch_once(&CGPDFPatternGetTypeID_onceToken, &__block_literal_global_8375);
          }

          cftype = pdf_create_cftype();
          v18 = cftype;
          if (!cftype)
          {
            goto LABEL_70;
          }

          v29 = 0;
          v30 = 0;
          *(cftype + 16) = 1;
          if (*(v9 + 8) == 9)
          {
            v19 = *(v9 + 32);
            *(cftype + 24) = v19;
            if (v19)
            {
              v20 = *(v19 + 48);
            }

            else
            {
              v20 = 0;
            }

            if (CGPDFDictionaryGetInteger(v20, "PaintType", &v30))
            {
              v26 = v30;
              if (v30 != 1)
              {
                if (v30 != 2)
                {
                  goto LABEL_69;
                }

                v26 = 0;
              }

              *(v18 + 32) = v26;
              if (CGPDFDictionaryGetInteger(v20, "TilingType", &v29))
              {
                if ((v29 - 1) >= 3)
                {
                }

                else
                {
                  *(v18 + 36) = dword_1844DF808[v29 - 1];
                  if (CGPDFDictionaryGetRect(v20, "BBox", (v18 + 40)))
                  {
                    if (CGPDFDictionaryGetNumber(v20, "XStep", (v18 + 72)))
                    {
                      if (CGPDFDictionaryGetNumber(v20, "YStep", (v18 + 80)))
                      {
                        CGPDFDictionaryGetMatrix(v20, "Matrix", (v18 + 96));
                        if ((v27 & 1) == 0)
                        {
                          *(v18 + 96) = CGAffineTransformIdentity;
                        }

                        if (!CGPDFDictionaryGetDictionary(v20, "Resources", (v18 + 88)))
                        {
                          *(v18 + 88) = 0;
                        }

                        goto LABEL_70;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
            pdf_error("invalid Type 1 pattern: not a stream.");
          }

          goto LABEL_69;
        }

        v30 = v9;
        if (CGPDFPatternGetTypeID_onceToken != -1)
        {
          dispatch_once(&CGPDFPatternGetTypeID_onceToken, &__block_literal_global_8375);
        }

        v21 = pdf_create_cftype();
        v18 = v21;
        if (v21)
        {
          *(v21 + 16) = 2;
          if (*(v9 + 8) != 8)
          {
            pdf_error("invalid Type 2 pattern: not a dictionary.");
            goto LABEL_69;
          }

          v22 = *(v9 + 32);
          if (!CGPDFDictionaryGetObject(v22, "Shading", &v30))
          {
            goto LABEL_69;
          }

          v23 = CGPDFShadingCreateWithObject(v30);
          *(v18 + 144) = v23;
          if (!v23)
          {
LABEL_69:
            CFRelease(v18);
            v18 = 0;
            goto LABEL_70;
          }

          CGPDFDictionaryGetMatrix(v22, "Matrix", (v18 + 96));
          if ((v24 & 1) == 0)
          {
            *(v18 + 96) = CGAffineTransformIdentity;
          }

          if (!CGPDFDictionaryGetDictionary(v22, "ExtGState", (v18 + 152)))
          {
            *(v18 + 152) = 0;
          }
        }

LABEL_70:
        v11 = CGPDFObjectSetAssociation(v9, v18, "Pattern");
        if (v11)
        {
LABEL_11:
          v12 = table_set_value((a1 + 48), v5, v11);
          v2 = v12;
          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_43;
        }

LABEL_42:
        v2 = 0;
LABEL_43:
        CFRelease(v5);
        os_unfair_lock_unlock((a1 + 80));
        return v2;
      }

      v14 = (v15 + 48);
    }

    else
    {
      if (v13 != 8)
      {
        pdf_error("invalid pattern: not a dictionary or stream.");
        goto LABEL_42;
      }

      v14 = (v9 + 32);
    }

    v16 = *v14;
    goto LABEL_19;
  }

  return v2;
}

const void *CGPDFResourcesGetShading(uint64_t a1, const char *a2)
{
  Value = 0;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a2, 0x600u, *MEMORY[0x1E695E498]);
    v6 = *(a1 + 56);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || (Value = CFDictionaryGetValue(v6, v5)) == 0)
    {
      resource = get_resource(a1, "Shading", a2);
      v9 = CGPDFShadingCreateWithObject(resource);
      if (v9)
      {
        v10 = table_set_value((a1 + 56), v5, v9);
        Value = v10;
        if (v10)
        {
          CFRelease(v10);
        }
      }

      else
      {
        Value = 0;
      }
    }

    CFRelease(v5);
    os_unfair_lock_unlock((a1 + 80));
  }

  return Value;
}

void __CGPDFResourcesPurgeXObjects_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    Value = CGPDFXObjectGetValue(a3);
    if (Value)
    {
      v4 = Value;
      v5 = *(Value + 24);
      if (v5)
      {
        v6 = *(v5 + 48);
        if (v6)
        {
          pthread_mutex_lock((v6 + 88));
          v7 = *(v6 + 40);
          if (v7 && *v7 == v4)
          {
            *(v6 + 40) = 0;
            CGPDFAssociationRelease(v7);
          }

          pthread_mutex_unlock((v6 + 88));
        }
      }
    }
  }
}

void traverseBoundary(uint64_t a1, int *a2)
{
  if (*(a1 + 31) != 1)
  {
    return;
  }

  v3 = *a2;
  v4 = (*a2 - 1);
  if (v4 < 3)
  {
    if (*(a1 + 29) != 1)
    {
      *(a1 + 28) = 1;
      v5 = v4 + 1;
LABEL_5:
      v53 = v5;
      v6 = *(a1 + 20);
      v7 = *(a1 + 22);
      v8 = *a1;
      v9 = *(a1 + 21);
      v10 = *(a1 + 23);
      v11 = (*(a2 + 1) + 8);
      v12 = 1;
      while (1)
      {
        v55 = v5;
        *(a1 + 24) = v6;
        *(a1 + 25) = v9;
        *(a1 + 26) = v7;
        *(a1 + 27) = v10;
        *(a1 + 20) = 0;
        v13 = *(v11 - 1);
        v14 = *v8;
        v15 = v8[2];
        v16 = v8[3];
        if (v15 < 0.0 || v16 < 0.0)
        {
          v17 = *(v8 + 1);
          *&v14 = CGRectStandardize(*&v14);
        }

        v18 = vabdd_f64(v13, v14);
        v19 = v18 < 0.015;
        *(a1 + 21) = v19;
        v20 = *v8;
        v21 = v8[2];
        v22 = v8[3];
        if (v21 < 0.0 || v22 < 0.0)
        {
          v23 = *(v8 + 1);
          *&v20 = CGRectStandardize(*&v20);
        }

        v24 = vabdd_f64(v13, v20 + v21);
        v25 = v24 < 0.015;
        *(a1 + 23) = v25;
        v26 = *v11;
        v27 = v8[1];
        v28 = v8[2];
        v29 = v8[3];
        v54 = v11;
        if (v28 < 0.0 || v29 < 0.0)
        {
          v30 = *v8;
          *(&v27 - 1) = CGRectStandardize(*(&v27 - 1));
        }

        v31 = vabdd_f64(v26, v27);
        v32 = v31 < 0.015;
        *(a1 + 20) = v32;
        v33 = v8[1];
        v34 = v8[2];
        v35 = v8[3];
        if (v34 < 0.0 || v35 < 0.0)
        {
          v36 = *v8;
          *(&v33 - 1) = CGRectStandardize(*(&v33 - 1));
        }

        v37 = vabdd_f64(v26, v33 + v35);
        v38 = v37 < 0.015;
        *(a1 + 22) = v38;
        if (v12 >= v53)
        {
          break;
        }

        v39 = v31 < 0.015;
        v40 = v24 < 0.015;
        v41 = v18 < 0.015;
        v19 = v41 & v9;
        *(a1 + 21) = v41 & v9;
        v25 = v40 & v10;
        *(a1 + 23) = v40 & v10;
        v32 = v39 & v6;
        *(a1 + 20) = v39 & v6;
        v38 = (v37 < 0.015) & v7;
        *(a1 + 22) = (v37 < 0.015) & v7;
        if ((v39 & v6) != 0 || (v19 & 1) != 0 || ((v37 < 0.015) & v7) != 0)
        {
          goto LABEL_122;
        }

        v42 = v55;
        if ((v25 & 1) == 0)
        {
          break;
        }

LABEL_123:
        ++v12;
        v10 = v25;
        v9 = v19;
        v7 = v38;
        v6 = v32;
        v11 = v54 + 2;
        v5 = v42 - 1;
        if (!v5)
        {
          return;
        }
      }

      if ((v32 & 1) == 0 && (v19 & 1) == 0 && (v38 & 1) == 0 && (v25 & 1) == 0)
      {
        goto LABEL_130;
      }

      if (*(a1 + 8) == 1)
      {
        if ((v6 & 1) != 0 && ((v19 & 1) != 0 || v32 && !v25) || (v9 & 1) != 0 && (!v38 ? (v43 = (v32 | v19 ^ 1) == 0) : (v43 = 1), v43) || (v7 & 1) != 0 && ((v25 & 1) != 0 || (v38 ? (v45 = v19 == 0) : (v45 = 0), v45)))
        {
          v44 = 1;
        }

        else
        {
          v44 = v10;
          if (v32 & 1) == 0 && (v10)
          {
            v44 = v38 ^ 1;
            if (!v25)
            {
              v44 = 0;
            }
          }
        }
      }

      else
      {
        v44 = 0;
      }

      *(a1 + 8) = v44 & 1;
      if (*(a1 + 9) != 1)
      {
        goto LABEL_72;
      }

      if (v6)
      {
        if (v25)
        {
LABEL_71:
          v47 = 1;
          *(a1 + 9) = 1;
          goto LABEL_74;
        }

        if (v32)
        {
          if (v19 & 1) == 0 || (v9)
          {
            goto LABEL_71;
          }

LABEL_63:
          if (v7)
          {
            if (v19)
            {
              goto LABEL_71;
            }

            if (v38 && v25 == 0)
            {
              goto LABEL_71;
            }
          }

          if (v10)
          {
            if (v38)
            {
              goto LABEL_71;
            }

            v47 = v25 & ~v32;
LABEL_73:
            *(a1 + 9) = v47;
            if (((v44 | v47) & 1) == 0)
            {
              goto LABEL_130;
            }

LABEL_74:
            v48 = *(a1 + 12);
            if (v48)
            {
              v49 = *(a1 + 16);
              if (v49 > 2)
              {
                if (v49 != 3)
                {
                  if (v49 != 4)
                  {
                    goto LABEL_130;
                  }

                  if ((v44 & v32) == 1 && v19)
                  {
LABEL_91:
                    v50 = v48 + 1;
                    goto LABEL_92;
                  }

                  if (!v47 || !v38 || !v25)
                  {
                    goto LABEL_122;
                  }

LABEL_115:
                  v50 = v48 + 1;
                  v51 = 3;
                  goto LABEL_121;
                }

                if ((v44 & v32) != 1 || !v25)
                {
                  if (!v47 || !v38 || !v19)
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_111;
                }
              }

              else
              {
                if (v49 != 1)
                {
                  if (v49 != 2)
                  {
                    goto LABEL_130;
                  }

                  if ((v44 & 1) == 0 || !v38 || !v25)
                  {
                    if ((v47 & v32) != 1 || !v19)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_91;
                  }

                  goto LABEL_115;
                }

                if ((v44 & 1) != 0 && v38 && v19 != 0)
                {
LABEL_111:
                  v50 = v48 + 1;
                  v51 = 2;
                  goto LABEL_121;
                }

                if ((v47 & v32) != 1 || !v25)
                {
                  goto LABEL_122;
                }
              }

              v50 = v48 + 1;
              v51 = 4;
              goto LABEL_121;
            }

            if (v32)
            {
              if (v19)
              {
                v50 = 1;
LABEL_92:
                v51 = 1;
LABEL_121:
                *(a1 + 12) = v50;
                *(a1 + 16) = v51;
                goto LABEL_122;
              }

              if (v25)
              {
                v51 = 4;
                goto LABEL_120;
              }
            }

            else if (v38)
            {
              if (v19)
              {
                v51 = 2;
LABEL_120:
                v50 = 1;
                goto LABEL_121;
              }

              if (v25)
              {
                v51 = 3;
                goto LABEL_120;
              }
            }

LABEL_122:
            v42 = v55;
            goto LABEL_123;
          }

LABEL_72:
          v47 = 0;
          goto LABEL_73;
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_63;
        }

        if (v32)
        {
          goto LABEL_71;
        }
      }

      if (v19 && !v38)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    }

    goto LABEL_130;
  }

  if (!v3)
  {
    if ((*(a1 + 28) & 1) == 0)
    {
      if (*(a1 + 30) == 1)
      {
        *(a1 + 12) = 0;
        *(a1 + 16) = 0;
        *(a1 + 20) = 16843009;
      }

      v5 = 1;
      *(a1 + 30) = 1;
      if ((*(a1 + 29) & 1) == 0)
      {
        goto LABEL_5;
      }

      return;
    }

    *(a1 + 30) = 1;
LABEL_133:
    *(a1 + 29) = 1;
    return;
  }

  if (v3 != 4)
  {
LABEL_130:
    *(a1 + 31) = 0;
    return;
  }

  if (*(a1 + 28))
  {
    goto LABEL_133;
  }
}

const CGPath *CGPathIsCongruentToARect(const CGPath *result)
{
  if (result)
  {
    v1 = result;
    if (CGPathIsEmpty(result))
    {
      return 0;
    }

    else
    {
      PathBoundingBox = CGPathGetPathBoundingBox(v1);
      info = &PathBoundingBox;
      v4 = 257;
      v5 = 0;
      v6 = 0x101010101010101;
      v7 = 0x1000000;
      CGPathApply(v1, &info, traverseBoundary);
      if (HIDWORD(v4) > 3)
      {
        return HIBYTE(v7);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 checkRectilinear(uint64_t a1, uint64_t a2, __n128 result)
{
  if (*(a1 + 41) == 1)
  {
    v3 = (a1 + 24);
    v4 = *(a1 + 24);
    result.n128_u64[0] = *a1;
    v5 = *(a1 + 32);
    v6 = *a2;
    if ((*a2 - 1) >= 3)
    {
      v7 = (a1 + 8);
      if (v6 != 4)
      {
        if (!v6)
        {
          v8 = *(a2 + 8);
          *v7 = *v8;
          result = *v8;
          *v3 = *v8;
        }

        return result;
      }

      v6 = 1;
    }

    else
    {
      *(a1 + 40) = 1;
      v7 = *(a2 + 8);
    }

    v9 = v6;
    v10 = v7;
    while (vabdd_f64(*v10, v4) < result.n128_f64[0])
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    v11 = v7 + 1;
    v12 = v6;
    while (vabdd_f64(*v11, v5) < result.n128_f64[0])
    {
      v11 += 2;
      if (!--v12)
      {
        goto LABEL_17;
      }
    }

    *(a1 + 41) = 0;
LABEL_17:
    result = *&v7[2 * v6 - 2];
    *v3 = result;
  }

  return result;
}

_BYTE *elementIsFlat(_BYTE *result, _DWORD *a2)
{
  if (*result == 1 && (*a2 > 4u || ((1 << *a2) & 0x13) == 0))
  {
    *result = 0;
  }

  return result;
}

void CGPathAddFlattenedCurve(const CGPath *a1, float64_t a2, float64_t a3, float64_t a4, float64_t a5, CGFloat a6, CGFloat a7, double a8)
{
  CurrentPoint = CGPathGetCurrentPoint(a1);
  v11.f64[0] = a2;
  v11.f64[1] = a3;
  v12 = vsubq_f64(v11, CurrentPoint);
  v13 = v11;
  v14.f64[0] = a4;
  v14.f64[1] = a5;
  v11.f64[0] = a6;
  v11.f64[1] = a7;
  v15 = vsubq_f64(v14, v13);
  v16 = vsubq_f64(v11, v14);
  v17 = vsubq_f64(v15, v12);
  v18 = vsubq_f64(v16, v15);
  v19 = vzip2q_s64(v17, v18);
  v20 = vmulq_f64(v19, v19);
  v21 = vzip1q_s64(v17, v18);
  v22 = vmlaq_f64(v20, v21, v21);
  if (v22.f64[0] <= v22.f64[1])
  {
    v22.f64[0] = v22.f64[1];
  }

  v23 = v22.f64[0] * 9.0 * 0.0625;
  if (v23 > a8 * a8)
  {
    v24 = vsubq_f64(v18, v17);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v31 = vmulq_f64(v24, _Q6);
    v32 = vmlaq_f64(v24, _Q5, vaddq_f64(v12, v17));
    v33 = vmulq_f64(vaddq_f64(v17, v24), _Q6);
    v34 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v31 = vmulq_f64(v31, _Q2);
      v33 = vsubq_f64(vmulq_f64(v33, _Q3), v31);
      v32 = vsubq_f64(vmulq_f64(v32, _Q4), vmulq_f64(v33, _Q4));
      v34 *= 2;
      v23 = v23 * 0.0625;
    }

    while (v23 > a8 * a8 && v34 <= 0x10000);
    if (v34 >= 2)
    {
      v38 = v34 + 1;
      do
      {
        v46 = v31;
        v48 = vaddq_f64(CurrentPoint, v32);
        v42 = vaddq_f64(v31, v33);
        v44 = vaddq_f64(v32, v33);
        CGPathAddLineToPoint(a1, 0, v48.f64[0], v48.f64[1]);
        v33 = v42;
        v32 = v44;
        v31 = v46;
        CurrentPoint = v48;
        --v38;
      }

      while (v38 > 2);
    }
  }

  CGPathAddLineToPoint(a1, 0, a6, a7);
}

void addFlattenedElement(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 == 2)
    {
      v9 = *a1;
      v10 = *(a2 + 8);
      v11 = *(a1 + 1);
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      CurrentPoint = CGPathGetCurrentPoint(*a1);
      v17 = (CurrentPoint.x + v12 * 2.0) / 3.0;
      v18 = (CurrentPoint.y + v13 * 2.0) / 3.0;
      v19 = (v14 + v12 * 2.0) / 3.0;
      v20 = (v15 + v13 * 2.0) / 3.0;
      v21 = v9;
      v22 = v14;
      v23 = v15;
      v24 = v11;
    }

    else
    {
      if (v3 != 3)
      {
        if (v3 == 4)
        {
          v4 = *a1;

          CGPathCloseSubpath(v4);
        }

        return;
      }

      v25 = *(a2 + 8);
      v24 = *(a1 + 1);
      v17 = *v25;
      v18 = v25[1];
      v19 = v25[2];
      v20 = v25[3];
      v22 = v25[4];
      v23 = v25[5];
      v21 = *a1;
    }

    CGPathAddFlattenedCurve(v21, v17, v18, v19, v20, v22, v23, v24);
    return;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = *a1;
      v6 = *(a2 + 8);
      v7 = *v6;
      v8 = v6[1];

      CGPathAddLineToPoint(v5, 0, v7, v8);
    }
  }

  else
  {
    v26 = *a1;
    v27 = *(a2 + 8);
    v28 = *v27;
    v29 = v27[1];

    CGPathMoveToPoint(v26, 0, v28, v29);
  }
}

void CGPathAddIntersection(CGPath *a1, const CGPath **a2, unsigned int a3)
{
  v4 = a2;
  PolygonFromPath = createPolygonFromPath(*a2);
  v274 = a3;
  v7 = 1;
  v268 = v4;
  v269 = a1;
  do
  {
    v8 = createPolygonFromPath(v4[v7]);
    v9 = malloc_type_malloc(0x18uLL, 0x1030040B05087B7uLL);
    v10 = PolygonFromPath;
    PolygonFromPath = v9;
    v294 = 0;
    v292 = 0;
    v293 = 0;
    v290 = 0;
    v291 = 0;
    v289 = 0;
    v11 = *v10;
    if (!*v10 || !*v8)
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      goto LABEL_442;
    }

    v12 = v11 < 1 || *v8 < 1;
    v276 = v10;
    if (!v12)
    {
      contour_bboxes = create_contour_bboxes(v10);
      v14 = create_contour_bboxes(v8);
      v15 = v276;
      v16 = v14;
      v17 = *v276;
      LODWORD(v18) = *v8;
      v19 = *v8 * *v276;
      if (v19)
      {
        v20 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
        v15 = v276;
        v21 = v20;
        v17 = *v276;
        LODWORD(v18) = *v8;
      }

      else
      {
        v21 = 0;
      }

      if (v17 >= 1)
      {
        for (i = 0; i < v17; ++i)
        {
          if (v18 >= 1)
          {
            v23 = 0;
            v24 = &contour_bboxes[32 * i];
            v25 = v24[2];
            v26 = v16 + 2;
            do
            {
              v27 = v25 >= *(v26 - 2) && *v24 <= *v26 && v24[3] >= *(v26 - 1) && v24[1] <= v26[1];
              v21[i + *v15 * v23++] = v27;
              v18 = *v8;
              v26 += 4;
            }

            while (v23 < v18);
            v17 = *v15;
          }
        }
      }

      if (v18 >= 1)
      {
        v28 = 0;
        v29 = v21;
        do
        {
          v30 = v17 & ~(v17 >> 31);
          v31 = v29;
          while (v30)
          {
            v32 = *v31++;
            --v30;
            if (v32)
            {
              goto LABEL_31;
            }
          }

          *(*(v8 + 2) + 16 * v28) = -*(*(v8 + 2) + 16 * v28);
LABEL_31:
          ++v28;
          v29 += v17;
        }

        while (v28 != v18);
      }

      if (v17 >= 1)
      {
        v33 = 0;
        v34 = v17;
        v35 = v18 & ~(v18 >> 31);
        v36 = 4 * v17;
        v37 = v35 + 1;
        v38 = v21;
        do
        {
          v39 = v37;
          v40 = v38;
          while (--v39)
          {
            v41 = *v40;
            v40 = (v40 + v36);
            if (v41)
            {
              goto LABEL_39;
            }
          }

          *(*(v15 + 2) + 16 * v33) = -*(*(v15 + 2) + 16 * v33);
LABEL_39:
          ++v33;
          ++v38;
        }

        while (v33 != v34);
      }

      if (contour_bboxes)
      {
        free(contour_bboxes);
      }

      if (v16)
      {
        free(v16);
      }

      if (v21)
      {
        free(v21);
      }

      v10 = v276;
      v11 = *v276;
    }

    if (v11 < 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = build_lmt(&v291, &v294, &v289, v10, 1);
    }

    if (*v8 < 1)
    {
      v43 = 0;
    }

    else
    {
      v43 = build_lmt(&v291, &v294, &v289, v8, 0);
    }

    v10 = v276;
    if (!v291)
    {
      *PolygonFromPath = 0;
      *(PolygonFromPath + 1) = 0;
      *(PolygonFromPath + 2) = 0;
      if (v42)
      {
        v46 = v43;
        free(v42);
        v43 = v46;
        v10 = v276;
      }

      goto LABEL_440;
    }

    v280 = v291;
    v271 = v43;
    if (v289)
    {
      v44 = v289;
      v45 = malloc_type_malloc(8 * v289, 0x100004000313F17uLL);
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v277 = v45;
    build_sbt(&v289 + 1, v45, v294);
    free_sbtree(&v294);
    if (v276 == PolygonFromPath)
    {
      gpc_free_polygon(v276);
    }

    if (v8 == PolygonFromPath)
    {
      gpc_free_polygon(v8);
    }

    v47 = v44;
    v272 = v42;
    v273 = v7;
    if (v44 < 1)
    {
      *(PolygonFromPath + 1) = 0;
      *(PolygonFromPath + 2) = 0;
LABEL_419:
      *PolygonFromPath = 0;
      goto LABEL_431;
    }

    v275 = v8;
    v270 = PolygonFromPath;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v281 = 0;
    v52 = 0.0;
    v53 = 0.0;
    do
    {
      v54 = v49 + 1;
      HIDWORD(v289) = v54;
      v55 = v277[v49];
      if (v54 < v47)
      {
        v53 = v277[v54];
        v52 = v53 - v55;
      }

      v56 = v280;
      if (v280 && *v280 == v55)
      {
        v57 = *(v280 + 1);
        if (v57)
        {
          do
          {
            v58 = v292;
            if (v292)
            {
              v59 = 0;
              v60 = *(v57 + 48);
              v61 = &v292;
              while (1)
              {
                v62 = *(v58 + 48);
                if (v60 < v62)
                {
                  break;
                }

                v63 = v58;
                if (v60 == v62 && *(v57 + 64) < *(v58 + 64))
                {
                  break;
                }

                v61 = (v58 + 136);
                v58 = *(v58 + 136);
                v59 = v63;
                if (!v58)
                {
                  goto LABEL_79;
                }
              }

              *(v57 + 128) = v59;
              v64 = *v61;
              *(v57 + 136) = *v61;
              *(v64 + 128) = v57;
              *v61 = v57;
            }

            else
            {
              v63 = 0;
              v61 = &v292;
LABEL_79:
              *v61 = v57;
              *(v57 + 128) = v63;
              *(v57 + 136) = 0;
            }

            v57 = *(v57 + 160);
          }

          while (v57);
          v48 = v292;
        }

        v56 = *(v280 + 2);
      }

      v280 = v56;
      if (!v48)
      {
        goto LABEL_238;
      }

      *(v48 + 76 + 4 * *(v48 + 72)) = *(v48 + 40) != v55;
      *(v48 + 76 + 4 * (*(v48 + 72) == 0)) = 0;
      *(v48 + 100) = 0;
      v65 = *(v48 + 136);
      for (j = v48; v65; j = v70)
      {
        v67 = v65 + 76;
        *(v65 + 76 + 4 * *(v65 + 72)) = *(v65 + 40) != v55;
        v68 = *(v65 + 72);
        *(v65 + 76 + 4 * (*(v65 + 72) == 0)) = 0;
        *(v65 + 100) = 0;
        v69 = *(v65 + 76 + 4 * v68);
        if (v69)
        {
          v70 = v65;
          if (vabdd_f64(*(j + 48), *(v65 + 48)) <= 2.22044605e-16)
          {
            v70 = v65;
            if (vabdd_f64(*(j + 64), *(v65 + 64)) <= 2.22044605e-16)
            {
              v70 = v65;
              if (*(j + 40) != v55)
              {
                *(v67 + 4 * v68) = *(j + 76 + 4 * v68) ^ v69;
                v71 = *(v65 + 72) == 0;
                v72 = *(j + 76 + 4 * (*(v65 + 72) == 0));
                *(v65 + 100) = 1;
                *(v67 + 4 * v71) = v72;
                *(j + 76) = 0;
                *(j + 80) = 0;
                *(j + 100) = 2;
                v70 = v65;
              }
            }
          }
        }

        else
        {
          v70 = j;
        }

        v65 = *(v65 + 136);
      }

      v73 = 0;
      v74 = 0;
      v75 = -1.79769313e308;
      do
      {
        v77 = *(v48 + 76);
        v76 = *(v48 + 80);
        v79 = *(v48 + 84);
        v78 = *(v48 + 88);
        v80 = v77 + 2 * v79;
        v81 = v76 + 2 * v78;
        if (!(v80 | v81))
        {
          goto LABEL_150;
        }

        *(v48 + 92) = v51;
        *(v48 + 96) = v50;
        if (v80)
        {
          if (v50)
          {
            v82 = 0;
          }

          else
          {
            v82 = v74 == 0;
          }

          v83 = v82;
          if (!v82 || !v81)
          {
            goto LABEL_121;
          }
        }

        else if (!v81)
        {
          v83 = 1;
          goto LABEL_121;
        }

        if (v80)
        {
          v84 = v81 == 0;
        }

        else
        {
          v84 = 1;
        }

        v83 = v84 || v50 != 0;
        if (v73)
        {
          v83 = 0;
        }

        if (v51)
        {
          v83 = 0;
        }

LABEL_121:
        if (v51)
        {
          v86 = v50 == 0;
        }

        else
        {
          v86 = 1;
        }

        v87 = !v86;
        v89 = v51 != v77 && v50 != v76;
        v90 = v73 != 0;
        v91 = v74 != 0;
        v93 = v51 != v90 && v50 != v91;
        v94 = v78 ^ v91;
        v96 = (v79 ^ v90) != v51 && v94 != v50;
        v51 ^= v77;
        if (v80)
        {
          v73 = next_h_state[6 * v73 - 2 + 2 * v80 + v51];
        }

        v50 ^= v76;
        if (v81)
        {
          v74 = next_h_state[6 * v74 - 2 + 2 * v81 + v50];
        }

        if (v83)
        {
          goto LABEL_150;
        }

        if (v96)
        {
          v98 = 2;
        }

        else
        {
          v98 = 0;
        }

        if (v87)
        {
          v99 = 4;
        }

        else
        {
          v99 = 0;
        }

        if (v89)
        {
          v100 = 8;
        }

        else
        {
          v100 = 0;
        }

        v101 = v99 | v100 | v98 | v93;
        v97 = *(v48 + 48);
        if (v101 <= 6)
        {
          if (v101 <= 3)
          {
            if (v101 == 1)
            {
              v115 = v281;
              if (v97 != v75)
              {
                if (v281)
                {
                  v116 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v116 = v97;
                  v116[1] = v55;
                  v117 = *(v281 + 32);
                  v116[2] = *(v117 + 8);
                  *(v117 + 8) = v116;
                  v115 = v281;
                }

                v75 = v97;
              }

              merge_right(v115, *(v48 + 120), v290);
              v281 = 0;
              goto LABEL_150;
            }

            if (v101 != 2)
            {
              goto LABEL_150;
            }

            v111 = *(v48 + 120);
            if (v111)
            {
              v112 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
              *v112 = v97;
              v112[1] = v55;
              v113 = *(v111 + 32);
              v112[2] = *(v113 + 8);
              *(v113 + 8) = v112;
              v114 = *(v48 + 120);
LABEL_190:
              v281 = v114;
              goto LABEL_151;
            }

            goto LABEL_210;
          }

          if (v101 == 4)
          {
            v121 = v281;
            if (v97 != v75)
            {
              if (v281)
              {
                v122 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v122 = v97;
                v122[1] = v55;
                v122[2] = 0.0;
                v123 = *(v281 + 32);
                *(*(v123 + 16) + 16) = v122;
                *(v123 + 16) = v122;
                goto LABEL_207;
              }

LABEL_208:
              v75 = v97;
            }

LABEL_209:
            *(v48 + 112) = v121;
            v97 = v75;
LABEL_210:
            v281 = 0;
            goto LABEL_151;
          }

          if (v101 != 5)
          {
            v105 = v281;
            if (v97 != v75)
            {
              v75 = *(v48 + 48);
              if (v281)
              {
                v106 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v106 = v97;
                v106[1] = v55;
                v106[2] = 0.0;
                v107 = *(v281 + 32);
                *(*(v107 + 16) + 16) = v106;
                *(v107 + 16) = v106;
                v105 = v281;
                v75 = v97;
              }
            }

            merge_left(v105, *(v48 + 120), v290);
            goto LABEL_200;
          }

          if (*(v48 + 24) == v55)
          {
            v126 = *(v48 + 120);
            if (v126)
            {
              v127 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
              *v127 = v97;
              v127[1] = v55;
              v127[2] = 0.0;
              v128 = *(v126 + 32);
              *(*(v128 + 16) + 16) = v127;
              *(v128 + 16) = v127;
            }
          }

          goto LABEL_214;
        }

        if (v101 <= 10)
        {
          if ((v101 - 7) < 2)
          {
            add_local_min(&v290, v48, *(v48 + 48), v55);
            v114 = *(v48 + 112);
            goto LABEL_190;
          }

          if (v101 == 9)
          {
            v118 = v281;
            if (v97 != v75)
            {
              v75 = *(v48 + 48);
              if (v281)
              {
                v119 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v119 = v97;
                v119[1] = v55;
                v120 = *(v281 + 32);
                v119[2] = *(v120 + 8);
                *(v120 + 8) = v119;
                v118 = v281;
                v75 = v97;
              }
            }

            merge_right(v118, *(v48 + 120), v290);
LABEL_200:
            *(v48 + 120) = 0;
            add_local_min(&v290, v48, v97, v55);
            v281 = *(v48 + 112);
LABEL_150:
            v97 = v75;
            goto LABEL_151;
          }

          if (v101 != 10)
          {
            goto LABEL_150;
          }

          if (*(v48 + 24) == v55)
          {
            v102 = *(v48 + 120);
            if (v102)
            {
              v103 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
              *v103 = v97;
              v103[1] = v55;
              v104 = *(v102 + 32);
              v103[2] = *(v104 + 8);
              *(v104 + 8) = v103;
            }
          }

LABEL_214:
          *(v48 + 112) = *(v48 + 120);
          goto LABEL_151;
        }

        if (v101 == 11)
        {
          v121 = v281;
          if (v97 != v75)
          {
            if (v281)
            {
              v124 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
              *v124 = v97;
              v124[1] = v55;
              v125 = *(v281 + 32);
              v124[2] = *(v125 + 8);
              *(v125 + 8) = v124;
LABEL_207:
              v121 = v281;
            }

            goto LABEL_208;
          }

          goto LABEL_209;
        }

        if (v101 != 13)
        {
          if (v101 == 14)
          {
            v108 = v281;
            if (v97 != v75)
            {
              if (v281)
              {
                v109 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v109 = v97;
                v109[1] = v55;
                v109[2] = 0.0;
                v110 = *(v281 + 32);
                *(*(v110 + 16) + 16) = v109;
                *(v110 + 16) = v109;
                v108 = v281;
              }

              v75 = v97;
            }

            merge_left(v108, *(v48 + 120), v290);
            v281 = 0;
            *(v48 + 120) = 0;
          }

          goto LABEL_150;
        }

        v129 = *(v48 + 120);
        if (v129)
        {
          v130 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
          *v130 = v97;
          v130[1] = v55;
          v130[2] = 0.0;
          v131 = *(v129 + 32);
          *(*(v131 + 16) + 16) = v130;
          *(v131 + 16) = v130;
          v281 = *(v48 + 120);
        }

        else
        {
          v281 = 0;
        }

        *(v48 + 120) = 0;
LABEL_151:
        v48 = *(v48 + 136);
        v75 = v97;
      }

      while (v48);
      v48 = v292;
      v132 = v292;
      if (v292)
      {
        do
        {
          v133 = *(v132 + 40);
          if (v133 == v55)
          {
            v134 = *(v132 + 128);
            v135 = *(v132 + 136);
            v136 = v135;
            if (v134)
            {
              *(v134 + 136) = v135;
              v136 = v48;
            }

            if (v135)
            {
              *(v135 + 128) = v134;
            }

            if (v134)
            {
              if (*(v132 + 104) == 1 && *(v134 + 104) == 2)
              {
                *(v134 + 120) = *(v132 + 120);
                *(v134 + 104) = 0;
                v137 = *(v134 + 128);
                if (v137)
                {
                  if (*(v137 + 104) == 2)
                  {
                    *(v134 + 104) = 1;
                  }
                }
              }
            }

            v48 = v136;
          }

          else
          {
            if (v133 == v53)
            {
              v138 = *(v132 + 32);
            }

            else
            {
              v138 = *(v132 + 16) + *(v132 + 64) * (v53 - *(v132 + 24));
            }

            *(v132 + 56) = v138;
          }

          v132 = *(v132 + 136);
        }

        while (v132);
        v292 = v48;
      }

LABEL_238:
      if (SHIDWORD(v289) >= v289)
      {
        break;
      }

      v278 = HIDWORD(v289);
      v279 = v289;
      v139 = v293;
      if (v293)
      {
        do
        {
          v140 = v139[4];
          free(v139);
          v139 = v140;
        }

        while (v140);
        v293 = 0;
      }

      v295[0] = 0;
      if (v48)
      {
        v141 = v48;
        do
        {
          if (*(v141 + 100) == 1 || *(v141 + 76) || *(v141 + 80))
          {
            v142 = v295[0];
            if (v295[0])
            {
              v143 = (v141 + 64);
              v144 = v295;
              while (1)
              {
                v145 = v142[2];
                v146 = *(v141 + 56);
                if (v146 >= v145)
                {
                  break;
                }

                v147 = v142[1];
                v148 = v145 - v147;
                v149 = *(v141 + 48);
                v150 = v148 - (v146 - v149);
                v151 = fabs(v150);
                if (*v143 == v142[3] || v151 <= 2.22044605e-16)
                {
                  break;
                }

                v153 = (v149 - v147) / v150;
                v154 = v153 * v52;
                v155 = v293;
                if (v293 && *(v293 + 3) <= v154)
                {
                  do
                  {
                    v157 = v155;
                    v155 = v155[4];
                  }

                  while (v155 && *(v155 + 3) <= v154);
                  v156 = (v157 + 4);
                }

                else
                {
                  v156 = &v293;
                }

                v158 = v147 + v153 * v148;
                v159 = *v142;
                v160 = malloc_type_malloc(0x28uLL, 0x1020040D4280EFAuLL);
                *v156 = v160;
                *v160 = v159;
                *(*v156 + 1) = v141;
                v161 = *v156;
                v161[2] = v158;
                v161[3] = v154;
                *(v161 + 4) = v155;
                v162 = *v144;
                v163 = *(v162 + 32);
                v144 = (v162 + 32);
                v142 = v163;
                if (!v163)
                {
                  goto LABEL_265;
                }
              }

              v164 = malloc_type_malloc(0x28uLL, 0x102004060DBCA02uLL);
              *v144 = v164;
              *v164 = v141;
              v165 = *v144;
              *(*v144 + 8) = *(v141 + 48);
            }

            else
            {
              v144 = v295;
LABEL_265:
              v166 = malloc_type_malloc(0x28uLL, 0x102004060DBCA02uLL);
              v142 = 0;
              *v144 = v166;
              *v166 = v141;
              v165 = *v144;
              *(*v144 + 8) = *(v141 + 48);
              v143 = (v141 + 64);
            }

            *(v165 + 24) = *v143;
            *(v165 + 32) = v142;
          }

          v141 = *(v141 + 136);
        }

        while (v141);
        v167 = v295[0];
        if (v295[0])
        {
          do
          {
            v168 = v167[4];
            free(v167);
            v167 = v168;
          }

          while (v168);
        }
      }

      v169 = v293;
      if (v293)
      {
        while (2)
        {
          v170 = *v169;
          v171 = v169[1];
          v172 = *(*v169 + 76);
          if (!v172)
          {
            if (!*(v170 + 80))
            {
              goto LABEL_359;
            }

            v173 = *(v171 + 76);
            if (v173)
            {
              v175 = (v170 + 112);
              v174 = *(v170 + 112);
              v177 = (v171 + 112);
              v176 = *(v171 + 112);
              v178 = *(v169 + 1);
              v179 = *(v171 + 92);
            }

            else
            {
              if (!*(v171 + 80))
              {
                goto LABEL_359;
              }

              v175 = (v170 + 112);
              v174 = *(v170 + 112);
              v177 = (v171 + 112);
              v176 = *(v171 + 112);
              v178 = *(v169 + 1);
              v173 = *(v170 + 92);
              if (!v173)
              {
                v180 = 0;
                goto LABEL_282;
              }

              v173 = 0;
LABEL_274:
              v179 = *(v171 + 92);
            }

            v180 = v179 != 0;
            goto LABEL_282;
          }

          v173 = *(v171 + 76);
          if (!v173)
          {
            if (*(v171 + 80))
            {
              v173 = 0;
              v175 = (v170 + 112);
              v174 = *(v170 + 112);
              v177 = (v171 + 112);
              v176 = *(v171 + 112);
              v178 = *(v169 + 1);
              v180 = *(v170 + 92) == 0;
              goto LABEL_282;
            }

            goto LABEL_359;
          }

          v175 = (v170 + 112);
          v174 = *(v170 + 112);
          v177 = (v171 + 112);
          v176 = *(v171 + 112);
          v178 = *(v169 + 1);
          if (*(v170 + 92))
          {
            goto LABEL_274;
          }

          v180 = 1;
LABEL_282:
          v181 = *(v170 + 80);
          if (v181)
          {
            if (!*(v170 + 96))
            {
              v182 = 1;
              goto LABEL_290;
            }

            v182 = *(v171 + 80);
            if (!v182)
            {
LABEL_290:
              if (v173 == v180)
              {
                v183 = 0;
              }

              else
              {
                v183 = 2 * (*(v171 + 80) != v182);
              }

              v185 = v172 != v180 && v181 != v182;
              if ((v173 ^ v172) == v180)
              {
                v186 = 0;
              }

              else
              {
                v186 = 8 * ((*(v171 + 80) ^ v181) != v182);
              }

              v187 = v55 + *(&v178 + 1);
              v188 = v180 & v182;
              if (v185)
              {
                v189 = 4;
              }

              else
              {
                v189 = 0;
              }

              v190 = v189 | v186 | v183 | v188;
              if (v190 <= 7)
              {
                if (v190 > 3)
                {
                  if (v190 != 4)
                  {
                    if (v190 != 6)
                    {
                      if (v190 != 7)
                      {
                        goto LABEL_359;
                      }

LABEL_337:
                      v202 = *v169;
LABEL_354:
                      add_local_min(&v290, v202, *&v178, v187);
                      *v177 = *(v170 + 112);
                      goto LABEL_359;
                    }

                    if (v174 && v176)
                    {
                      v284 = v178;
                      v209 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                      *v209 = v284;
                      v209[1] = v187;
                      v209[2] = 0.0;
                      v210 = *(v174 + 32);
                      *(*(v210 + 16) + 16) = v209;
                      *(v210 + 16) = v209;
                      merge_left(v174, v176, v290);
                      goto LABEL_353;
                    }

                    goto LABEL_359;
                  }

                  if (!v174)
                  {
                    goto LABEL_359;
                  }

                  v286 = v178;
                  v205 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v205 = v286;
                  v205[1] = v187;
                  v205[2] = 0.0;
                  v206 = *(v174 + 32);
                  *(*(v206 + 16) + 16) = v205;
                  *(v206 + 16) = v205;
LABEL_349:
                  *v177 = v174;
                  *v175 = 0;
                  goto LABEL_359;
                }

                if (v190 != 1)
                {
                  if (v190 != 2 || v176 == 0)
                  {
                    goto LABEL_359;
                  }

                  v283 = v178;
                  v196 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v196 = v283;
                  v196[1] = v187;
                  v197 = *(v176 + 32);
                  v196[2] = *(v197 + 8);
                  *(v197 + 8) = v196;
LABEL_357:
                  *v175 = v176;
LABEL_358:
                  *v177 = 0;
                  goto LABEL_359;
                }

                if (!v174 || !v176)
                {
                  goto LABEL_359;
                }

                v285 = v178;
                v203 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v203 = v285;
                v203[1] = v187;
                v204 = *(v174 + 32);
                v203[2] = *(v204 + 8);
                *(v204 + 8) = v203;
                merge_right(v174, v176, v290);
LABEL_344:
                *v175 = 0;
                goto LABEL_358;
              }

              if (v190 > 10)
              {
                if (v190 == 11)
                {
                  if (!v174)
                  {
                    goto LABEL_359;
                  }

                  v287 = v178;
                  v207 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v207 = v287;
                  v207[1] = v187;
                  v208 = *(v174 + 32);
                  v207[2] = *(v208 + 8);
                  *(v208 + 8) = v207;
                  goto LABEL_349;
                }

                if (v190 == 13)
                {
                  if (!v176)
                  {
                    goto LABEL_359;
                  }

                  v288 = v178;
                  v211 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v211 = v288;
                  v211[1] = v187;
                  v211[2] = 0.0;
                  v212 = *(v176 + 32);
                  *(*(v212 + 16) + 16) = v211;
                  *(v212 + 16) = v211;
                  goto LABEL_357;
                }

                if (v190 != 14 || v174 == 0 || v176 == 0)
                {
                  goto LABEL_359;
                }

                v282 = v178;
                v193 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v193 = v282;
                v193[1] = v187;
                v193[2] = 0.0;
                v194 = *(v174 + 32);
                *(*(v194 + 16) + 16) = v193;
                *(v194 + 16) = v193;
                merge_left(v174, v176, v290);
                goto LABEL_344;
              }

              if (v190 == 8)
              {
                goto LABEL_337;
              }

              if (v190 == 9 && v174 != 0 && v176 != 0)
              {
                v284 = v178;
                v200 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v200 = v284;
                v200[1] = v187;
                v201 = *(v174 + 32);
                v200[2] = *(v201 + 8);
                *(v201 + 8) = v200;
                merge_right(v174, v176, v290);
LABEL_353:
                v202 = v170;
                *&v178 = v284;
                goto LABEL_354;
              }

LABEL_359:
              if (*(v170 + 76))
              {
                *(v171 + 92) = *(v171 + 92) == 0;
              }

              if (*(v171 + 76))
              {
                *(v170 + 92) = *(v170 + 92) == 0;
              }

              if (*(v170 + 80))
              {
                *(v171 + 96) = *(v171 + 96) == 0;
              }

              if (*(v171 + 80))
              {
                *(v170 + 96) = *(v170 + 96) == 0;
              }

              v213 = *(v170 + 128);
              v214 = *(v171 + 136);
              if (v214)
              {
                *(v214 + 128) = v170;
              }

              if (*(v170 + 100) == 1)
              {
                while (1)
                {
                  v213 = *(v213 + 128);
                  if (!v213)
                  {
                    break;
                  }

                  if (*(v213 + 100) != 2)
                  {
                    goto LABEL_374;
                  }
                }

LABEL_382:
                v213 = 0;
                *(v48 + 128) = v171;
                *(v171 + 136) = v48;
                v216 = *(v170 + 136);
                v48 = v216;
                if (!v216)
                {
                  goto LABEL_378;
                }
              }

              else
              {
                if (!v213)
                {
                  goto LABEL_382;
                }

LABEL_374:
                v215 = *(v213 + 136);
                if (!v215)
                {
                  MEMORY[0x80] = v171;
                }

                *(v171 + 136) = v215;
                v216 = *(v170 + 136);
                *(v213 + 136) = v216;
                if (!v216)
                {
LABEL_378:
                  v217 = *(v171 + 136);
                  if (v217)
                  {
                    *(v217 + 128) = v171;
                  }

                  *(v170 + 136) = v214;
                  v169 = v169[4];
                  if (!v169)
                  {
                    goto LABEL_385;
                  }

                  continue;
                }
              }

              *(v216 + 128) = v213;
              goto LABEL_378;
            }
          }

          else if (!*(v171 + 80))
          {
            v182 = *(v170 + 96);
            if (!v182)
            {
              goto LABEL_290;
            }
          }

          break;
        }

        v182 = *(v171 + 96) != 0;
        goto LABEL_290;
      }

LABEL_385:
      if (v48)
      {
        v218 = v48;
        v49 = v278;
        do
        {
          v219 = *(v48 + 136);
          v220 = *(v48 + 152);
          v221 = *(v48 + 112);
          if (*(v48 + 40) != v53 || v220 == 0)
          {
            *(v48 + 120) = v221;
            *(v48 + 104) = *(v48 + 100);
            *(v48 + 84) = *(v48 + 76);
            *(v48 + 48) = *(v48 + 56);
            v223 = v218;
          }

          else
          {
            *(v220 + 120) = v221;
            *(v220 + 104) = *(v48 + 100);
            *(v220 + 84) = *(v48 + 76);
            *(v220 + 88) = *(v48 + 80);
            v224 = *(v48 + 128);
            v223 = v220;
            if (v224)
            {
              *(v224 + 136) = v220;
              v223 = v218;
            }

            if (v219)
            {
              *(v219 + 128) = v220;
            }

            *(v220 + 128) = v224;
            *(v220 + 136) = v219;
            v218 = v223;
          }

          *(v48 + 112) = 0;
          v48 = v219;
        }

        while (v219);
      }

      else
      {
        v223 = 0;
        v49 = v278;
      }

      v292 = v223;
      v48 = v223;
      v47 = v279;
    }

    while (v49 < v279);
    v225 = v290;
    a1 = v269;
    PolygonFromPath = v270;
    *(v270 + 1) = 0;
    *(v270 + 2) = 0;
    v4 = v268;
    v8 = v275;
    if (!v225)
    {
      goto LABEL_419;
    }

    v226 = 0;
    v227 = v225;
    while (2)
    {
      if (*v227)
      {
        v228 = v227[4];
        v229 = *(v228 + 8);
        if (v229)
        {
          v230 = -1;
          v231 = *(v228 + 8);
          do
          {
            v232 = v230;
            v231 = *(v231 + 16);
            ++v230;
          }

          while (v231);
          if (v230 > 1)
          {
            *v227 = v232 + 2;
            ++v226;
            goto LABEL_412;
          }

          do
          {
            v233 = v229[2];
            free(v229);
            v229 = v233;
          }

          while (v233);
        }

        *v227 = 0;
      }

LABEL_412:
      v227 = v227[3];
      if (v227)
      {
        continue;
      }

      break;
    }

    *v270 = v226;
    if (v226 <= 0)
    {
      do
      {
        v236 = v225[3];
        free(v225);
        v225 = v236;
      }

      while (v236);
    }

    else
    {
      *(v270 + 1) = malloc_type_malloc(4 * v226, 0x100004052888210uLL);
      v234 = *v270;
      if (v234)
      {
        v235 = malloc_type_malloc(16 * v234, 0x1020040D5A9D86FuLL);
      }

      else
      {
        v235 = 0;
      }

      v237 = 0;
      *(v270 + 2) = v235;
      do
      {
        v238 = v225[3];
        if (*v225)
        {
          v239 = v225[4];
          v240 = *(v270 + 2);
          *(*(v270 + 1) + 4 * v237) = *(v239 + 4);
          v241 = *v225;
          *(v240 + 16 * v237) = v241;
          if (v241)
          {
            v242 = malloc_type_malloc(16 * v241, 0x1000040451B5BE8uLL);
            v243 = (*(v270 + 2) + 16 * v237);
            *(v243 + 1) = v242;
            v244 = *v243;
            v239 = v225[4];
          }

          else
          {
            v244 = 0;
            *(v240 + 16 * v237 + 8) = 0;
          }

          v245 = *(v239 + 8);
          if (v245)
          {
            v246 = 16 * v244 - 16;
            do
            {
              v247 = v245[2];
              *(*(*(v270 + 2) + 16 * v237 + 8) + v246) = *v245;
              free(v245);
              v246 -= 16;
              v245 = v247;
            }

            while (v247);
          }

          ++v237;
          v8 = v275;
        }

        free(v225);
        v225 = v238;
      }

      while (v238);
    }

LABEL_431:
    v248 = v293;
    if (v293)
    {
      do
      {
        v249 = v248[4];
        free(v248);
        v248 = v249;
      }

      while (v249);
    }

    v250 = v291;
    v7 = v273;
    if (v291)
    {
      do
      {
        v251 = v250[2];
        free(v250);
        v250 = v251;
      }

      while (v251);
    }

    if (v271)
    {
      free(v271);
    }

    if (v272)
    {
      free(v272);
    }

    v10 = v276;
    v43 = v277;
LABEL_440:
    if (v43)
    {
      free(v43);
      v10 = v276;
    }

LABEL_442:
    v252 = v10;
    gpc_free_polygon(v10);
    free(v252);
    gpc_free_polygon(v8);
    free(v8);
    ++v7;
  }

  while (v7 != v274);
  v253 = *PolygonFromPath;
  if (v253)
  {
    for (k = 0; k < v253; ++k)
    {
      v255 = *(PolygonFromPath + 2);
      v256 = (v255 + 16 * k);
      v257 = 0uLL;
      if (v255)
      {
        v258 = *v256;
        if (v258)
        {
          v259 = *(v256 + 1);
          v260 = *v259;
          if (v258 == 1)
          {
            v261 = *v259;
          }

          else
          {
            v262 = v258 - 1;
            v263 = v259 + 1;
            v261 = v260;
            do
            {
              v264 = *v263++;
              v261 = vbslq_s8(vcgtq_f64(v261, v264), v264, v261);
              v260 = vbslq_s8(vcgtq_f64(v264, v260), v264, v260);
              --v262;
            }

            while (v262);
          }

          v257 = vsubq_f64(v260, v261);
        }
      }

      if (v257.f64[0] > 0.01 || v257.f64[1] > 0.01)
      {
        v265 = *v256;
        if (*v256 >= 1)
        {
          CGPathMoveToPoint(a1, 0, **(v256 + 1), *(*(v256 + 1) + 8));
          v265 = *v256;
        }

        if (v265 >= 2)
        {
          v266 = 0;
          v267 = 1;
          do
          {
            CGPathAddLineToPoint(a1, 0, *(*(v256 + 1) + v266 + 16), *(*(v256 + 1) + v266 + 24));
            ++v267;
            v266 += 16;
          }

          while (v267 < *v256);
        }

        CGPathCloseSubpath(a1);
        v253 = *PolygonFromPath;
      }
    }
  }

  gpc_free_polygon(PolygonFromPath);

  free(PolygonFromPath);
}

int *createPolygonFromPath(const CGPath *a1)
{
  LOBYTE(info) = 1;
  if (a1)
  {
    CGPathApply(a1, &info, elementIsFlat);
    if (info)
    {
      CFRetain(a1);
      Mutable = a1;
    }

    else
    {
      Mutable = CGPathCreateMutable();
      info = Mutable;
      v11 = 0x3FE3333333333333;
      CGPathApply(a1, &info, addFlattenedElement);
      if (!Mutable)
      {
        goto LABEL_9;
      }
    }

    LODWORD(info) = 0;
    CGPathApply(Mutable, &info, countElements);
    v3 = info;
    if (info < 0x2711)
    {
      goto LABEL_10;
    }

    CFRelease(Mutable);
    PathBoundingBox = CGPathGetPathBoundingBox(a1);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    Mutable = CGPathCreateMutable();
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    CGPathAddRect(Mutable, 0, v14);
    if (Mutable)
    {
      LODWORD(info) = 0;
      CGPathApply(Mutable, &info, countElements);
      v3 = info;
      goto LABEL_10;
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_9:
  v3 = 0;
LABEL_10:
  info = 0;
  v11 = 0;
  v8 = malloc_type_malloc(0x18uLL, 0x1030040B05087B7uLL);
  v12 = v8;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  if (v3)
  {
    LODWORD(info) = 0;
    v11 = malloc_type_calloc(v3, 0x10uLL, 0x1000040451B5BE8uLL);
    CGPathApply(Mutable, &info, addVertex);
    if (info >= 2)
    {
      gpc_add_contour(v12, &info);
    }

    free(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

void addVertex(int *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (!v4)
    {
      if (*a1 >= 2)
      {
        gpc_add_contour(*(a1 + 2), a1);
      }

      **(a1 + 1) = **(a2 + 8);
      goto LABEL_16;
    }

    if (v4 != 1)
    {
      return;
    }

    v5 = *(a1 + 1);
    v6 = *a1;
    *a1 = v6 + 1;
    v7 = **(a2 + 8);
LABEL_12:
    *(v5 + 16 * v6) = v7;
    return;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    v6 = *a1;
    *a1 = v6 + 1;
    v7 = *(*(a2 + 8) + 16);
    goto LABEL_12;
  }

  if (v4 == 3)
  {
    v5 = *(a1 + 1);
    v6 = *a1;
    *a1 = v6 + 1;
    v7 = *(*(a2 + 8) + 32);
    goto LABEL_12;
  }

  if (v4 == 4 && *a1 >= 2)
  {
    gpc_add_contour(*(a1 + 2), a1);
LABEL_16:
    *a1 = 1;
  }
}

uint64_t countSubpaths(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 4) == 4)
  {
    *(result + 4) = 1;
  }

  else if (*(result + 4) == 1)
  {
    ++*result;
    *(result + 4) = 0;
  }

  return result;
}

void createSubpaths(uint64_t a1, int *a2)
{
  if (*a2 == 4)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v4 = *(a1 + 28);
      if (v4 <= *(a1 + 24))
      {
        CGPathCloseSubpath(*(*a1 + 8 * (v4 - 1)));
      }

      goto LABEL_4;
    }
  }

  else
  {
    if (!*a2)
    {
      *(a1 + 8) = **(a2 + 1);
LABEL_4:
      *(a1 + 32) = 1;
      return;
    }

    LODWORD(v5) = *(a1 + 28);
    if (*(a1 + 32) == 1)
    {
      if (v5 < *(a1 + 24))
      {
        Mutable = CGPathCreateMutable();
        CGPathMoveToPoint(Mutable, 0, *(a1 + 8), *(a1 + 16));
        v5 = *(a1 + 28);
        *(*a1 + 8 * v5) = Mutable;
      }

      LODWORD(v5) = v5 + 1;
      *(a1 + 28) = v5;
      *(a1 + 32) = 0;
    }

    if (v5 <= *(a1 + 24))
    {
      v7 = *a2;
      if (*a2 == 3)
      {
        v18 = *(*a1 + 8 * (v5 - 1));
        v19 = *(a2 + 1);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = v19[5];

        CGPathAddCurveToPoint(v18, 0, v20, v21, v22, v23, v24, v25);
      }

      else if (v7 == 2)
      {
        v12 = *(*a1 + 8 * (v5 - 1));
        v13 = *(a2 + 1);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];

        CGPathAddQuadCurveToPoint(v12, 0, v14, v15, v16, v17);
      }

      else if (v7 == 1)
      {
        v8 = *(*a1 + 8 * (v5 - 1));
        v9 = *(a2 + 1);
        v10 = *v9;
        v11 = v9[1];

        CGPathAddLineToPoint(v8, 0, v10, v11);
      }
    }
  }
}

char *CGClipStrokeCreate(const CGAffineTransform *a1, unsigned __int8 a2, __int16 a3, char a4, char a5, atomic_uint *a6, double a7, double a8, double a9)
{
  result = malloc_type_malloc(0x60uLL, 0x102004028655EABuLL);
  *result = 1;
  v19 = &CGAffineTransformIdentity;
  if (a1)
  {
    v19 = a1;
  }

  v21 = *&v19->c;
  v20 = *&v19->tx;
  *(result + 8) = *&v19->a;
  *(result + 24) = v21;
  *(result + 40) = v20;
  *(result + 7) = a7;
  *(result + 32) = a2 | (a3 << 8);
  *(result + 9) = a8;
  result[66] = a4;
  result[67] = a5;
  if (a6)
  {
    atomic_fetch_add_explicit(a6, 1u, memory_order_relaxed);
  }

  *(result + 10) = a6;
  *(result + 11) = a9;
  return result;
}

atomic_uint *CGClipStrokeCreateCopy(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *CGClipStrokeRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGClipStrokeRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[10];
    if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v2);
    }

    free(a1);
  }
}

BOOL CGClipStrokeEqualToClipStroke(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    v2 = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) != 0 && *(a1 + 48) == *(a2 + 48))
    {
      if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 66) == *(a2 + 66) && *(a1 + 67) == *(a2 + 67) && *(a1 + 88) == *(a2 + 88))
      {
        return !CGDashEqualToDash(*(a1 + 80), *(a2 + 80));
      }

      return 0;
    }
  }

  return v2;
}

__n128 CGClipStrokeGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a1 + 8);
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

double CGClipStrokeGetLineWidth(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGClipStrokeGetLineCap(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t CGClipStrokeGetLineJoin(uint64_t result)
{
  if (result)
  {
    return *(result + 65);
  }

  return result;
}

double CGClipStrokeGetMiterLimit(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGClipStrokeGetStrokeAdjust(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 66);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGClipStrokeGetShouldAntialias(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 67);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGClipStrokeGetDash(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

double CGClipStrokeGetFlatness(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGClipStrokeCreateStrokedPath(uint64_t a1, char *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v10 = CFGetTypeID(cf);
    if (v10 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  v11 = *(a1 + 80);
  DashedPath = cf;
  if (v11)
  {
    DashedPath = CGPathCreateDashedPath(cf, (a1 + 8), (v11 + 24), *(v11 + 16), a5, a6, a7, a8, *(v11 + 8));
  }

  StrokedPath = CGPathCreateStrokedPath(DashedPath, (a1 + 8), *(a1 + 64), (*(a1 + 64) >> 8), a5, a6, a7, a8, *(a1 + 56), *(a1 + 72), *(a1 + 88));
  if (DashedPath != cf && DashedPath)
  {
    CFRelease(DashedPath);
  }

  return StrokedPath;
}

uint64_t CGPDFDocumentGetXRef(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return **(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFXRefGetEntry(uint64_t result, unint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  if (!result)
  {
    return result;
  }

  if (!a4)
  {
    pdf_error("Output parameter is NULL\n");
    return 0;
  }

  v7 = *(result + 16);
  if (!v7)
  {
    result = *(result + 8);
    if (result)
    {

      return CGPDFXRefStreamGetEntry(result, a2, a3, a4);
    }

    return result;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = v8[1];
    object_offset = xref_table_get_object_offset(*(v9 + 40), a2, a3);
    if (object_offset)
    {
      *a4 = 0;
      *(a4 + 8) = object_offset;
      *(a4 + 24) = 1;
      *(a4 + 26) = a3;
    }

    v11 = *(v9 + 32);
    if (v11)
    {
      if (CGPDFXRefStreamGetEntry(v11, a2, a3, a4))
      {
        break;
      }
    }

    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CGPDFXRefPrint(uint64_t a1, FILE *__stream)
{
  fwrite("xref\n", 5uLL, 1uLL, __stream);
  v4 = *(a1 + 16);
  v16 = __stream;
  if (v4)
  {
    if (__stream)
    {
      v5 = __stream;
    }

    else
    {
      v5 = *MEMORY[0x1E69E9858];
    }

    v6 = *(v4 + 8);
    if (v6)
    {
      do
      {
        v18 = v6;
        v7 = v6[1];
        fprintf(v5, "xref table @ offset %lld:\n", *(v7 + 8));
        v17 = v7;
        for (i = *(v7 + 40); i; i = *i)
        {
          v9 = i[1];
          fprintf(v5, "  %ld %ld\n", *v9, v9[1]);
          if (v9[1] >= 1)
          {
            v10 = 0;
            v11 = v9 + 3;
            do
            {
              fprintf(v5, "    %.10lld ", v11[v10]);
              v12 = v9[2];
              if (v12)
              {
                LODWORD(v12) = *(v12 + 2 * v10);
              }

              fprintf(v5, "%.5hu ", v12);
              if (v11[v10])
              {
                v13 = 110;
              }

              else
              {
                v13 = 102;
              }

              fprintf(v5, "%c \n", v13);
              ++v10;
            }

            while (v10 < v9[1]);
          }
        }

        CGPDFDictionaryPrintWithIndent(*(v17 + 16), v5, 0);
        fputc(10, v5);
        v14 = *(v17 + 32);
        if (v14)
        {
          CGPDFXRefStreamPrint(v14, v5);
        }

        v6 = *v18;
      }

      while (*v18);
    }
  }

  else
  {
    CGPDFXRefStreamPrint(*(a1 + 8), __stream);
  }

  return fputc(10, v16);
}

uint64_t CGPDFXRefEntryPrint(_DWORD *a1, FILE *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *MEMORY[0x1E69E9858];
  }

  fprintf(v3, "CGPDFXRefEntry (%p)\n", a1);
  if (*a1)
  {
    v4 = "kCGPDFXRefEntryKindStream";
  }

  else
  {
    v4 = "kCGPDFXRefEntryKindOffset";
  }

  fprintf(v3, "  kind: %s\n", v4);
  if (*a1 == 1)
  {
    fprintf(v3, "  object_number = %lu, index = %ld\n");
  }

  else
  {
    fprintf(v3, "  offset = %lld\n");
  }

  v5 = "false";
  if (*(a1 + 24))
  {
    v5 = "true";
  }

  return fprintf(v3, "  used = %s, generation = %hu\n", v5, *(a1 + 13));
}

uint64_t rips_s_BltShade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  v80 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 12);
  if ((v14 & 0x80) == 0)
  {
    if ((v14 & 0x1000) == 0)
    {

      return RIPLayerBltShade(a2, a3, a4, a5, a6, a8, a7, a8);
    }

    return 1;
  }

  v71 = 0uLL;
  v70[1] = 0;
  v70[0] = 0;
  v69[1] = 0;
  v69[0] = 0;
  v17 = *(a8 + 48);
  v18 = *(a1 + 120);
  if (!a3 || (v71 = vaddq_s32(*(a1 + 104), *a5), CGSBoundsIntersection((a3 + 12), v71.i32, v70)))
  {
    v19 = v17;
    if ((v18 * v19) <= 0.0039062)
    {
      goto LABEL_55;
    }

    if (!v11)
    {
      v11 = v69;
      result = CGSBoundsIntersection((a2 + 12), a5->i32, v69);
      if (!result)
      {
        return result;
      }
    }

    v20 = RIPLayerCreate(RIPLayer_ripl_class, v11, 0, 0, *(a2 + 52), a6, a7, a8);
    if (!v20)
    {
LABEL_55:
      if (!a3)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    v21 = v20;
    v22 = *(a8 + 16);
    v77[0] = *a8;
    v77[1] = v22;
    v23 = *(a8 + 48);
    v77[2] = *(a8 + 32);
    v78 = v23;
    v24 = *(a8 + 64);
    LODWORD(v77[0]) = 1;
    v79 = v24;
    *&v78 = 0x3FF0000000000000;
    RIPLayerBltShade(v20, 0, v11, a5, a6, v77, a7, a8);
    v31 = *(a1 + 124);
    if (v31 >= 0.5)
    {
      v32 = RIPLayerGaussianBlur(v21, *(a2 + 52), v25, v26, v27, v28, v29, v30, v31);
    }

    else
    {
      v32 = RIPLayerCreateWithLayer(*v21, (v21 + 12), v21, *(a2 + 52));
    }

    v33 = v32;
    if (!v32)
    {
LABEL_54:
      (*(*v21 + 24))(v21);
      goto LABEL_55;
    }

    v34 = (v32 + 12);
    *(v32 + 12) = vadd_s32(*(v32 + 12), *(a1 + 96));
    if (a3)
    {
      v35 = (a3 + 12);
    }

    else
    {
      v35 = (v32 + 12);
    }

    if (!CGSBoundsIntersection(v35, v34, &v71))
    {
LABEL_53:
      (*(*v33 + 24))(v33);
      goto LABEL_54;
    }

    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v72 = 0u;
    if (*(a1 + 128) != 0.0 || *(a1 + 132) != 1.0)
    {
      RIPLayerResample(v33, (a1 + 128), v36, v37, v38, v39, v40, v41);
    }

    if (v19 >= 0.99609 && !*(a5[3].i64[1] + 72) && (*(a1 + 13) & 0x10) == 0 && *a8 <= 2 && (!a3 || !*(a3 + 56)))
    {
      RIPLayerMask(v33, v21, v36, v37, v38, v39, v40, v41);
    }

    v42 = *(a1 + 88);
    if (!v42)
    {
      if (default_shadow_color_predicate != -1)
      {
        dispatch_once(&default_shadow_color_predicate, &__block_literal_global_3);
      }

      v42 = default_shadow_color_shadow_color;
    }

    Cache = CGColorTransformGetCache(*(a8 + 16));
    v68 = v33;
    if (Cache)
    {
      v45 = Cache[2];
      if (v45)
      {
        v46 = *(*(v45 + 24) + 48);
        if (v46 >> 61)
        {
          v65 = *(*(v45 + 24) + 48);
          v67 = &v65;
          MEMORY[0x1EEE9AC00](Cache, v44);
          v66 = &v64;
          v47 = 0;
LABEL_45:
          v51 = (*(*a1 + 88))(a1);
          if (RIPColorConvertColorComponents(*(a8 + 16), v47, v42, v51))
          {
            RIPColorCreateWithColor(*(a8 + 24), v47, v65, 1.0);
            v59 = v58;
          }

          else
          {
            v59 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
            *v59 = &ripc_class;
            v59[1] = 0;
            v59[2] = 0;
            v59[3] = 0;
            *(v59 + 39) = 1065353216;
          }

          if (v47 != v66)
          {
            free(v47);
          }

          v60 = *(a8 + 48);
          v74 = *(a8 + 32);
          v75 = v60;
          v76 = *(a8 + 64);
          v61 = *a8;
          v73 = *(a8 + 16);
          v72 = v61;
          *&v75 = (v18 * v19);
          if ((*(a1 + 13) & 0x10) != 0)
          {
            RIPLayerDefine(a2, &v71, v52, v53, v54, v55, v56, v57);
          }

          v33 = v68;
          RIPLayerBltShape(a2, a3, v71.i32, v68, v59, 0, &v72, v57);
          free(v59);
          goto LABEL_53;
        }

        Cache = (8 * v46);
      }

      else
      {
        Cache = 0;
      }
    }

    v67 = &v65;
    v48 = MEMORY[0x1EEE9AC00](Cache, v44);
    v65 = v50;
    v66 = (&v65 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v50 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v47 = (&v65 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    }

    else
    {
      v47 = 0;
    }

    if (v50 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
    {
      v47 = malloc_type_malloc(v48, 0xC7305A80uLL);
    }

    goto LABEL_45;
  }

LABEL_56:
  if (v11)
  {
    v62 = v11;
  }

  else
  {
    v62 = a5;
  }

  if (!CGSBoundsIntersection((a3 + 12), v62, v70))
  {
    return 1;
  }

LABEL_60:
  if ((*(a1 + 13) & 0x10) != 0)
  {
    return 1;
  }

  if (a3)
  {
    v63 = v70;
  }

  else
  {
    v63 = v11;
  }

  return RIPLayerBltShade(a2, a3, v63, a5, a6, a8, a7, a8);
}

void __default_shadow_color_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v1 = xmmword_1844DF970;
  default_shadow_color_shadow_color = CGColorCreate(DeviceGray, &v1);
  CGColorSpaceRelease(DeviceGray);
}

uint64_t rips_s_BltImage(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = *MEMORY[0x1E69E9840];
  v14 = a2;
  if (a2 || (v14 = a3) != 0)
  {
    v15 = *(v14 + 52);
  }

  else
  {
    v15 = 3;
  }

  v16 = *(a1 + 12);
  if ((v16 & 0x40) == 0)
  {
    if ((v16 & 0x1000) == 0)
    {

      return RIPLayerBltImage(a2, a3, a4, a5, a8, a6, a7, a8);
    }

    return 1;
  }

  v75 = 0uLL;
  v74[1] = 0;
  v74[0] = 0;
  v18 = *(a8 + 48);
  v19 = *(a1 + 120);
  if (!a3 || (v75 = vaddq_s32(*(a1 + 104), *a5), CGSBoundsIntersection((a3 + 12), v75.i32, v74)))
  {
    v20 = v18;
    if ((v19 * v20) <= 0.0039062 || (a4 ? (v21 = a4) : (v21 = a5), (v22 = RIPLayerCreate(RIPLayer_ripl_class, v21, 0, 0, v15, a6, a7, a8)) == 0))
    {
LABEL_68:
      if (!a3)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

    v23 = v22;
    v24 = *(a8 + 16);
    v81[0] = *a8;
    v81[1] = v24;
    v25 = *(a8 + 48);
    v81[2] = *(a8 + 32);
    v82 = v25;
    v26 = *(a8 + 64);
    LODWORD(v81[0]) = 1;
    v83 = v26;
    *&v82 = 0x3FF0000000000000;
    RIPLayerBltImage(v22, 0, a4, a5, v81, a6, a7, a8);
    v33 = *(a1 + 124);
    if (v33 >= 0.5)
    {
      v34 = RIPLayerGaussianBlur(v23, v15, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
      v34 = RIPLayerCreateWithLayer(*v23, (v23 + 12), v23, v15);
    }

    v35 = v34;
    if (!v34)
    {
LABEL_67:
      (*(*v23 + 24))(v23);
      goto LABEL_68;
    }

    v36 = (v34 + 12);
    v37 = *(v34 + 3);
    v38 = *(a1 + 96);
    if (v37 < 0)
    {
      if ((0x80000000 - v37) > v38)
      {
LABEL_27:
        (*(*v34 + 24))(v34, v36);
        return 0;
      }
    }

    else if ((v37 ^ 0x7FFFFFFF) < v38)
    {
      goto LABEL_27;
    }

    v39 = *(v34 + 4);
    v40 = *(a1 + 100);
    if (v39 < 0)
    {
      if ((0x80000000 - v39) > v40)
      {
        goto LABEL_27;
      }
    }

    else if ((v39 ^ 0x7FFFFFFF) < v40)
    {
      goto LABEL_27;
    }

    *(v34 + 3) = v38 + v37;
    *(v34 + 4) = v40 + v39;
    if (a3)
    {
      v41 = (a3 + 12);
    }

    else
    {
      v41 = (v34 + 12);
    }

    if (!CGSBoundsIntersection(v41, v36, &v75))
    {
LABEL_66:
      (*(*v35 + 24))(v35);
      goto LABEL_67;
    }

    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    v76 = 0u;
    if (*(a1 + 128) != 0.0 || *(a1 + 132) != 1.0)
    {
      RIPLayerResample(v35, (a1 + 128), v42, v43, v44, v45, v46, v47);
    }

    if (v20 >= 0.99609 && !*(a5[1].i64[0] + 88) && (*(a1 + 13) & 0x10) == 0 && *a8 <= 2 && (!a3 || !*(a3 + 56)))
    {
      RIPLayerMask(v35, v23, v42, v43, v44, v45, v46, v47);
    }

    v48 = *(a1 + 88);
    if (!v48)
    {
      if (default_shadow_color_predicate != -1)
      {
        dispatch_once(&default_shadow_color_predicate, &__block_literal_global_3);
      }

      v48 = default_shadow_color_shadow_color;
    }

    v72 = v48;
    Cache = CGColorTransformGetCache(*(a8 + 16));
    if (Cache)
    {
      v51 = Cache[2];
      if (v51)
      {
        v52 = *(*(v51 + 24) + 48);
        if (v52 >> 61)
        {
          v73 = &v70;
          MEMORY[0x1EEE9AC00](Cache, v50);
          v71 = &v69;
          v53 = 0;
LABEL_58:
          v56 = (*(*a1 + 88))(a1);
          if (RIPColorConvertColorComponents(*(a8 + 16), v53, v72, v56))
          {
            RIPColorCreateWithColor(*(a8 + 24), v53, v52, 1.0);
            v64 = v63;
          }

          else
          {
            v64 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
            *v64 = &ripc_class;
            v64[1] = 0;
            v64[2] = 0;
            v64[3] = 0;
            *(v64 + 39) = 1065353216;
          }

          if (v53 != v71)
          {
            free(v53);
          }

          v65 = *(a8 + 48);
          v78 = *(a8 + 32);
          v79 = v65;
          v80 = *(a8 + 64);
          v66 = *a8;
          v77 = *(a8 + 16);
          v76 = v66;
          *&v79 = (v19 * v20);
          if ((*(a1 + 13) & 0x10) != 0)
          {
            RIPLayerDefine(a2, &v75, v57, v58, v59, v60, v61, v62);
          }

          RIPLayerBltShape(a2, a3, v75.i32, v35, v64, 0, &v76, v62);
          free(v64);
          goto LABEL_66;
        }

        Cache = (8 * v52);
      }

      else
      {
        v52 = 0;
        Cache = 0;
      }
    }

    else
    {
      v52 = 0;
    }

    v73 = &v70;
    v54 = MEMORY[0x1EEE9AC00](Cache, v50);
    v71 = (&v70 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v52 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v53 = (&v70 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    }

    else
    {
      v53 = 0;
    }

    if (v52 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
    {
      v53 = malloc_type_malloc(v54, 0xD68DC346uLL);
    }

    goto LABEL_58;
  }

LABEL_69:
  if (a4)
  {
    v67 = a4;
  }

  else
  {
    v67 = a5;
  }

  if (!CGSBoundsIntersection((a3 + 12), v67, v74))
  {
    return 1;
  }

LABEL_73:
  if ((*(a1 + 13) & 0x10) != 0)
  {
    return 1;
  }

  if (a3)
  {
    v68 = v74;
  }

  else
  {
    v68 = a4;
  }

  return RIPLayerBltImage(a2, a3, v68, a5, a8, a6, a7, a8);
}

CGColorSpaceRef rips_s_ColorSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 88);
  if (!v8)
  {
    return rips_s_cs;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    return CGTaggedColorGetColorSpace(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(v8 + 24);
}

uint64_t __CGPDFPatternGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFPatternGetTypeID_class);
  CGPDFPatternGetTypeID_id = result;
  return result;
}

void CGPDFPatternFinalize(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    CFRelease(v1);
  }
}

void path_iterator_dilator_create(double a1, double a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x10000408E5DAE1CuLL);
  v5 = a1;
  *v4 = v5;
  v6 = a2;
  v4[3] = v6;
  v4[1] = 0.0;
  v4[4] = 0.0;
  *(v4 + 28) = 1;
  v4[6] = 0.0;
  operator new();
}

void path_dilator_end(uint64_t a1, void *a2)
{
  addClosepath(a1, a2);
  if (a2)
  {
    v3 = a2[4];
    if (v3)
    {
      v4 = a2[1];
      v5 = a2[6];

      v3(v4, v5);
    }
  }
}

void addClosepath(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 1) == 0)
  {
    v4 = addLine(a1, a2, *(a1 + 8), *(a1 + 20));
    if (a2)
    {
      (*(a2 + 24))(*(a2 + 8), 4, 0, *(a2 + 48), v4);
    }

    *(a1 + 28) = 1;
  }
}

float addLine(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a1 + 4);
  v9 = a3 - v8;
  v10 = *(a1 + 16);
  v11 = a4 - v10;
  if (v11 >= 0.0)
  {
    v12 = 0.0;
    if (v11 > 0.0)
    {
      v12 = *a1;
    }
  }

  else
  {
    v12 = -*a1;
  }

  v13 = v9 <= 0.0;
  if (v9 >= 0.0)
  {
    v14 = *(a1 + 12);
    v15 = 0.0;
    if (!v13)
    {
      v15 = -v14;
    }
  }

  else
  {
    v14 = *(a1 + 12);
    v15 = v14;
  }

  v16 = ((v8 + v12) + *(a1 + 24));
  v17 = ((v10 + v15) + v14);
  if (*(a1 + 28) == 1)
  {
    v21 = v16;
    v22 = v17;
    if (a2)
    {
      (*(a2 + 24))(*(a2 + 8), 0, &v21, *(a2 + 48));
    }

    *(a1 + 28) = 0;
  }

  else
  {
    v21 = v16;
    v22 = v17;
    if (a2)
    {
      (*(a2 + 24))(*(a2 + 8), 1, &v21, *(a2 + 48));
    }
  }

  v18 = v15 + a4 + *(a1 + 12);
  v21 = v12 + a3 + *(a1 + 24);
  v22 = v18;
  if (a2)
  {
    (*(a2 + 24))(*(a2 + 8), 1, &v21, *(a2 + 48));
  }

  v19 = a3;
  *(a1 + 4) = v19;
  result = a4;
  *(a1 + 16) = result;
  return result;
}

float path_dilator_iterate(uint64_t a1, int a2, double *a3, uint64_t a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_21;
      }

      v6 = *a3;
      v7 = a3[1];

      return addLine(a1, a4, v6, v7);
    }

    else
    {
      v17 = *a3;
      v16 = a3[1];
      if ((*(a1 + 28) & 1) == 0)
      {
        addClosepath(a1, a4);
      }

      result = v17;
      v18 = v16;
      *(a1 + 4) = result;
      *(a1 + 8) = result;
      *(a1 + 16) = v18;
      *(a1 + 20) = v18;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v8 = (*a3 + *a3) / 3.0;
        v9 = a3[2];
        v10 = a3[3];
        v11 = v9 / 3.0 + v8;
        v12 = (a3[1] + a3[1]) / 3.0;
        v13 = ((*(a1 + 4) / 3.0) + v8);
        v14 = ((*(a1 + 16) / 3.0) + v12);
        v15 = v10 / 3.0 + v12;
        break;
      case 3:
        v13 = *a3;
        v14 = a3[1];
        v11 = a3[2];
        v15 = a3[3];
        v9 = a3[4];
        v10 = a3[5];
        break;
      case 4:

        addClosepath(a1, a4);
        return result;
      default:
LABEL_21:
        abort();
    }

    addCube(a1, a4, v13, v14, v11, v15, v9, v10);
  }

  return result;
}

uint64_t addCube(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v12 = *(a1 + 4);
  v13 = (a3 - a5) * a3 + a5 * (a5 - v12) + a7 * (v12 - a3);
  if (v13 >= 0.0)
  {
    v14 = *(a1 + 16);
    v15 = a7 - v12 + (a3 - a5) * 3.0;
    v16 = v12 + a5 + a3 * -2.0;
    if (v15 == 0.0)
    {
      if (v16 == 0.0)
      {
        goto LABEL_22;
      }

      v17 = 2.0;
      v18 = (v12 - a3) * 0.5 / v16;
    }

    else if (v16 != 0.0 || (v17 = 0.0, v18 = 0.0, v13 != 0.0))
    {
      v19 = 1.0;
      if (v16 < 0.0)
      {
        v19 = -1.0;
      }

      v20 = -(v16 + v19 * sqrt(v13));
      v21 = v20 / v15;
      v22 = (a4 - v14) / v20;
      if (v21 >= v22)
      {
        v18 = v22;
      }

      else
      {
        v18 = v21;
      }

      if (v21 <= v22)
      {
        v17 = v22;
      }

      else
      {
        v17 = v21;
      }
    }

    v23 = 2.0;
    if (v18 < 1.0e-10)
    {
      v24 = v17;
    }

    else
    {
      v23 = v17;
      v24 = v18;
    }

    if (v24 >= 1.0e-10 && v24 <= 1.0)
    {
      if (1.0 - v23 >= 1.0e-10)
      {
        v40 = (v23 - v24) / (1.0 - v24);
        v41 = v12 + a3 * -2.0 + a5;
        v42 = v14 + a4 * -2.0 + a6;
        v43 = v12 + (v24 * ((a7 + (a5 - a3) * -3.0 - v12) * v24 + v41 * 3.0) + (a3 - v12) * 3.0) * v24;
        v44 = v14 + (v24 * ((a8 + (a6 - a4) * -3.0 - v14) * v24 + v42 * 3.0) + (a4 - v14) * 3.0) * v24;
        v51 = a7 + ((a7 + a5 * -2.0 + a3) * (1.0 - v24) + (a7 - a5) * -2.0) * (1.0 - v24);
        v45 = a8 + ((a8 + a6 * -2.0 + a4) * (1.0 - v24) + (a8 - a6) * -2.0) * (1.0 - v24);
        v46 = a7 - (a7 - a5) * (1.0 - v24);
        v47 = a8 - (a8 - a6) * (1.0 - v24);
        addCubeMonotonicX(a1, a2, v12 + (a3 - v12) * v24, v14 + (a4 - v14) * v24, v12 + (v41 * v24 + (a3 - v12) * 2.0) * v24, v14 + (v42 * v24 + (a4 - v14) * 2.0) * v24, v43, v44);
        v48 = a8 - v47;
        v35 = v43 + (v51 - v43) * v40;
        v36 = v44 + (v45 - v44) * v40;
        v49 = v46 + v43 + v51 * -2.0;
        v37 = v43 + (v40 * v49 + (v51 - v43) * 2.0) * v40;
        v50 = v47 + v44 + v45 * -2.0;
        v38 = v44 + (v40 * v50 + (v45 - v44) * 2.0) * v40;
        v29 = v43 + (v40 * (v40 * (a7 + (v46 - v51) * -3.0 - v43) + v49 * 3.0) + (v51 - v43) * 3.0) * v40;
        v30 = v44 + (v40 * (v40 * (a8 + (v47 - v45) * -3.0 - v44) + v50 * 3.0) + (v45 - v44) * 3.0) * v40;
        v31 = a7 + ((1.0 - v40) * (a7 + v46 * -2.0 + v51) + (a7 - v46) * -2.0) * (1.0 - v40);
        v32 = a8 + ((1.0 - v40) * (a8 + v47 * -2.0 + v45) + (a8 - v47) * -2.0) * (1.0 - v40);
        v33 = a7 - (a7 - v46) * (1.0 - v40);
        v34 = a8 - v48 * (1.0 - v40);
        a1 = v11;
      }

      else
      {
        v25 = v12 + a3 * -2.0 + a5;
        v26 = v12 + (v25 * v24 + (a3 - v12) * 2.0) * v24;
        v27 = v14 + a4 * -2.0 + a6;
        v28 = v14 + (v27 * v24 + (a4 - v14) * 2.0) * v24;
        v29 = v12 + (v24 * ((a7 + (a5 - a3) * -3.0 - v12) * v24 + v25 * 3.0) + (a3 - v12) * 3.0) * v24;
        v30 = v14 + (v24 * ((a8 + (a6 - a4) * -3.0 - v14) * v24 + v27 * 3.0) + (a4 - v14) * 3.0) * v24;
        v31 = a7 + ((a7 + a5 * -2.0 + a3) * (1.0 - v24) + (a7 - a5) * -2.0) * (1.0 - v24);
        v32 = a8 + ((a8 + a6 * -2.0 + a4) * (1.0 - v24) + (a8 - a6) * -2.0) * (1.0 - v24);
        v33 = a7 - (a7 - a5) * (1.0 - v24);
        v34 = a8 - (a8 - a6) * (1.0 - v24);
        v35 = v12 + (a3 - v12) * v24;
        v36 = v14 + (a4 - v14) * v24;
        v37 = v26;
        v38 = v28;
      }

      addCubeMonotonicX(a1, a2, v35, v36, v37, v38, v29, v30);
      a1 = v11;
      a3 = v31;
      a4 = v32;
      a5 = v33;
      a6 = v34;
    }
  }

LABEL_22:

  return addCubeMonotonicX(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t addCubeMonotonicX(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v12 = *(a1 + 16);
  v13 = (a4 - a6) * a4 + a6 * (a6 - v12) + a8 * (v12 - a4);
  if (v13 >= 0.0)
  {
    v14 = a8 - v12 + (a4 - a6) * 3.0;
    v15 = v12 + a6 + a4 * -2.0;
    if (v14 == 0.0)
    {
      if (v15 == 0.0)
      {
        goto LABEL_22;
      }

      v16 = 2.0;
      v17 = (v12 - a4) * 0.5 / v15;
    }

    else if (v15 != 0.0 || (v16 = 0.0, v17 = 0.0, v13 != 0.0))
    {
      v18 = 1.0;
      if (v15 < 0.0)
      {
        v18 = -1.0;
      }

      v19 = -(v15 + v18 * sqrt(v13));
      v20 = v19 / v14;
      v21 = (a4 - v12) / v19;
      if (v20 >= v21)
      {
        v17 = v21;
      }

      else
      {
        v17 = v20;
      }

      if (v20 <= v21)
      {
        v16 = v21;
      }

      else
      {
        v16 = v20;
      }
    }

    v22 = 2.0;
    if (v17 < 1.0e-10)
    {
      v23 = v16;
    }

    else
    {
      v22 = v16;
      v23 = v17;
    }

    if (v23 >= 1.0e-10 && v23 <= 1.0)
    {
      v24 = *(a1 + 4);
      if (1.0 - v22 >= 1.0e-10)
      {
        v40 = (v22 - v23) / (1.0 - v23);
        v41 = v24 + a3 * -2.0 + a5;
        v42 = v12 + a4 * -2.0 + a6;
        v43 = v24 + (v23 * ((a7 + (a5 - a3) * -3.0 - v24) * v23 + v41 * 3.0) + (a3 - v24) * 3.0) * v23;
        v44 = v12 + (v23 * ((a8 + (a6 - a4) * -3.0 - v12) * v23 + v42 * 3.0) + (a4 - v12) * 3.0) * v23;
        v51 = a7 + ((a7 + a5 * -2.0 + a3) * (1.0 - v23) + (a7 - a5) * -2.0) * (1.0 - v23);
        v45 = a8 + ((a8 + a6 * -2.0 + a4) * (1.0 - v23) + (a8 - a6) * -2.0) * (1.0 - v23);
        v46 = a7 - (a7 - a5) * (1.0 - v23);
        v47 = a8 - (a8 - a6) * (1.0 - v23);
        addCubeMonotonic(a1, a2, v24 + (a3 - v24) * v23, v12 + (a4 - v12) * v23, v24 + (v41 * v23 + (a3 - v24) * 2.0) * v23, v12 + (v42 * v23 + (a4 - v12) * 2.0) * v23, v43, v44);
        v48 = a8 - v47;
        v35 = v43 + (v51 - v43) * v40;
        v36 = v44 + (v45 - v44) * v40;
        v49 = v46 + v43 + v51 * -2.0;
        v37 = v43 + (v40 * v49 + (v51 - v43) * 2.0) * v40;
        v50 = v47 + v44 + v45 * -2.0;
        v38 = v44 + (v40 * v50 + (v45 - v44) * 2.0) * v40;
        v29 = v43 + (v40 * (v40 * (a7 + (v46 - v51) * -3.0 - v43) + v49 * 3.0) + (v51 - v43) * 3.0) * v40;
        v30 = v44 + (v40 * (v40 * (a8 + (v47 - v45) * -3.0 - v44) + v50 * 3.0) + (v45 - v44) * 3.0) * v40;
        v31 = a7 + ((1.0 - v40) * (a7 + v46 * -2.0 + v51) + (a7 - v46) * -2.0) * (1.0 - v40);
        v32 = a8 + ((1.0 - v40) * (a8 + v47 * -2.0 + v45) + (a8 - v47) * -2.0) * (1.0 - v40);
        v33 = a7 - (a7 - v46) * (1.0 - v40);
        v34 = a8 - v48 * (1.0 - v40);
        a1 = v11;
      }

      else
      {
        v25 = v24 + a3 * -2.0 + a5;
        v26 = v24 + (v25 * v23 + (a3 - v24) * 2.0) * v23;
        v27 = v12 + a4 * -2.0 + a6;
        v28 = v12 + (v27 * v23 + (a4 - v12) * 2.0) * v23;
        v29 = v24 + (v23 * ((a7 + (a5 - a3) * -3.0 - v24) * v23 + v25 * 3.0) + (a3 - v24) * 3.0) * v23;
        v30 = v12 + (v23 * ((a8 + (a6 - a4) * -3.0 - v12) * v23 + v27 * 3.0) + (a4 - v12) * 3.0) * v23;
        v31 = a7 + ((a7 + a5 * -2.0 + a3) * (1.0 - v23) + (a7 - a5) * -2.0) * (1.0 - v23);
        v32 = a8 + ((a8 + a6 * -2.0 + a4) * (1.0 - v23) + (a8 - a6) * -2.0) * (1.0 - v23);
        v33 = a7 - (a7 - a5) * (1.0 - v23);
        v34 = a8 - (a8 - a6) * (1.0 - v23);
        v35 = v24 + (a3 - v24) * v23;
        v36 = v12 + (a4 - v12) * v23;
        v37 = v26;
        v38 = v28;
      }

      addCubeMonotonic(a1, a2, v35, v36, v37, v38, v29, v30);
      a1 = v11;
      a3 = v31;
      a4 = v32;
      a5 = v33;
      a6 = v34;
    }
  }

LABEL_22:

  return addCubeMonotonic(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t addCubeMonotonic(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = result;
  v36 = *MEMORY[0x1E69E9840];
  v16 = *(result + 4);
  v17 = a7 - v16;
  v18 = *(result + 16);
  v19 = a8 - v18;
  if (v19 >= 0.0)
  {
    v20 = 0.0;
    if (v19 > 0.0)
    {
      v20 = *result;
    }
  }

  else
  {
    v20 = -*result;
  }

  v21 = v17 <= 0.0;
  if (v17 >= 0.0)
  {
    v22 = *(result + 12);
    v23 = 0.0;
    if (!v21)
    {
      v23 = -v22;
    }
  }

  else
  {
    v22 = *(result + 12);
    v23 = v22;
  }

  v24 = ((v16 + v20) + *(result + 24));
  v25 = ((v18 + v23) + v22);
  if (*(result + 28) == 1)
  {
    v30 = v24;
    v31 = v25;
    if (a2)
    {
      result = (*(a2 + 24))(*(a2 + 8), 0, &v30, *(a2 + 48));
    }

    *(v15 + 28) = 0;
  }

  else
  {
    v30 = v24;
    v31 = v25;
    if (a2)
    {
      result = (*(a2 + 24))(*(a2 + 8), 1, &v30, *(a2 + 48));
    }
  }

  if (a2)
  {
    v26 = *(v15 + 12);
    v27 = *(v15 + 24);
    v30 = v20 + a3 + v27;
    v31 = v23 + a4 + v26;
    v32 = v20 + a5 + v27;
    v33 = v23 + a6 + v26;
    v34 = v20 + a7 + v27;
    v35 = v23 + a8 + v26;
    result = (*(a2 + 24))(*(a2 + 8), 3, &v30, *(a2 + 48));
  }

  v28 = a7;
  *(v15 + 4) = v28;
  v29 = a8;
  *(v15 + 16) = v29;
  return result;
}

uint64_t path_dilator_begin(uint64_t result, uint64_t a2, void *a3)
{
  *(result + 28) = 1;
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

void path_iterator_orientation_create()
{
  v0 = malloc_type_malloc(0x38uLL, 0x10200402A56628AuLL);
  v1 = malloc_type_malloc(0x200uLL, 0x1030040004372B3uLL);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = v1 + 64;
  v1[3] = (v1 + 55) & 0xFFFFFFFFFFFFFFF8;
  v1[4] = 0;
  v1[5] = 464;
  *v0 = v1;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  v0[48] = 1;
  operator new();
}

void path_orientation_release_info(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    path_free(v2);
  }

  free(a1);
}

void path_orientation_end(uint64_t a1, void *a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    *(a1 + 40) = *(a1 + 40) + (*(a1 + 8) - *(a1 + 24)) * (*(a1 + 32) + *(a1 + 16)) * 0.5;
  }

  if (*a1)
  {
    if (*(a1 + 40) > 0.0)
    {
      v4 = malloc_type_malloc(0x20uLL, 0x10200403F01EE60uLL);
      v5 = malloc_type_malloc(0x200uLL, 0x1030040004372B3uLL);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = v5 + 64;
      v5[3] = (v5 + 55) & 0xFFFFFFFFFFFFFFF8;
      v5[4] = 0;
      v5[5] = 464;
      v4[3] = v5;
      operator new();
    }

    path_iterator_iterate(a2, *a1);
    path_free(*a1);
    *a1 = 0;
  }

  if (a2)
  {
    v6 = a2[4];
    if (v6)
    {
      v7 = a2[1];
      v8 = a2[6];

      v6(v7, v8);
    }
  }
}

__n128 path_orientation_iterate(uint64_t a1, signed int a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_17;
      }

      *(a1 + 40) = *(a1 + 40) + (*a3 - *(a1 + 24)) * (*(a1 + 32) + a3[1]) * 0.5;
      *(a1 + 24) = *a3;
      *(a1 + 48) = 0;
    }

    else
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        *(a1 + 40) = *(a1 + 40) + (*(a1 + 8) - *(a1 + 24)) * (*(a1 + 32) + *(a1 + 16)) * 0.5;
      }

      *(a1 + 8) = *a3;
      *(a1 + 24) = *a3;
      *(a1 + 48) = 1;
      a2 = 0;
    }

    v25 = path_add(a1, a2, a3, a4, a5, a6, a7, a8);
    result = *a3;
    *v25 = *a3;
    return result;
  }

  if (a2 == 2)
  {
    orientation_cubic_segment(a1, *(a1 + 24), *(a1 + 32), (*(a1 + 24) + *a3 * 2.0) / 3.0, (*(a1 + 32) + a3[1] * 2.0) / 3.0, (a3[2] + *a3 * 2.0) / 3.0, (a3[3] + a3[1] * 2.0) / 3.0, a3[2], a3[3]);
    *(a1 + 24) = *(a3 + 1);
    *(a1 + 48) = 0;
    v17 = path_add(a1, 2u, v11, v12, v13, v14, v15, v16);
    *v17 = *a3;
    result = *(a3 + 2);
    *(v17 + 16) = result;
    return result;
  }

  if (a2 == 3)
  {
    orientation_cubic_segment(a1, *(a1 + 24), *(a1 + 32), *a3, a3[1], a3[2], a3[3], a3[4], a3[5]);
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 48) = 0;
    v24 = path_add(a1, 3u, v18, v19, v20, v21, v22, v23);
    *v24 = *a3;
    *(v24 + 16) = *(a3 + 1);
    result = *(a3 + 4);
    *(v24 + 32) = result;
    return result;
  }

  if (a2 != 4)
  {
LABEL_17:
    abort();
  }

  *(a1 + 40) = *(a1 + 40) + (*(a1 + 8) - *(a1 + 24)) * (*(a1 + 32) + *(a1 + 16)) * 0.5;
  *(a1 + 24) = *(a1 + 8);
  *(a1 + 48) = 1;

  path_add(a1, 4u, a3, a4, a5, a6, a7, a8);
  return result;
}

double orientation_cubic_segment(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a2 == a4 && a3 == a5)
  {
    v14 = a2 == a6 && a3 == a7;
    if (v14 || a6 == a8 && a7 == a9)
    {
      *(a1 + 40) = (a8 - a2) * (a3 + a9) * 0.5 + *(a1 + 40);
    }

    goto LABEL_24;
  }

  if (a4 != a8 || a5 != a9 || a6 != a8 || a7 != a9)
  {
LABEL_24:
    v13 = (a8 * (a3 + a7 * 6.0 + a9 * 10.0 + a5 * 3.0) - a2 * (a9 + a5 * 6.0 + a3 * 10.0 + a7 * 3.0) + a4 * 3.0 * (-(a7 - a3 * 2.0) - a9) + a6 * -3.0 * (-(a5 - a9 * 2.0) - a3)) / 20.0;
    goto LABEL_25;
  }

  v13 = (a8 - a2) * (a3 + a9) * 0.5;
LABEL_25:
  result = v13 + *(a1 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t path_orientation_begin(uint64_t result, uint64_t a2, void *a3)
{
  *(result + 40) = 0;
  *(result + 48) = 1;
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

double *CGDashCreate(const void *a1, uint64_t a2, double a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v3 = malloc_type_calloc(1uLL, 8 * a2 + 24, 0x1000040D315E998uLL);
    *v3 = 1;
    v3[1] = a3;
    *(v3 + 2) = a2;
    memcpy(v3 + 3, a1, 8 * a2);
  }

  return v3;
}

atomic_uint *CGDashRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGDashRelease(void *a1)
{
  if (a1)
  {
    if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(a1);
    }
  }
}

uint64_t CGDashGetPattern(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    if (a1)
    {
      v3 = *(a1 + 8);
    }

    else
    {
      v3 = 0;
    }

    *a2 = v3;
  }

  if (a3)
  {
    if (a1)
    {
      v4 = *(a1 + 16);
    }

    else
    {
      v4 = 0;
    }

    *a3 = v4;
  }

  if (a1)
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

float16x4_t *CMYKf16_pattern(uint64_t a1, float16x4_t *a2, unsigned int a3, int a4, float32x4_t *a5, float a6, double a7, double a8, int32x4_t a9, double a10, double a11)
{
  v14 = *(*a1 + 64);
  a9.i32[0] = *v14;
  LODWORD(a11) = v14[1];
  if (a2 && a3 > 9 || (v30 = a9, v31 = a11, v15 = malloc_type_malloc(0x3AuLL, 0x1080040E00A32E4uLL), a9 = v30, a11 = v31, (a2 = v15) != 0))
  {
    if (*a9.i32 <= a6)
    {
      _S0 = a6;
    }

    else
    {
      _S0 = *a9.i32;
    }

    if (*&a11 < a6)
    {
      _S0 = *&a11;
    }

    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v22 = a9;
        *&v22.i32[1] = _S0 * (*&a11 - a5->f32[0]);
        v21 = vzip1q_s32(v22, v22);
        v21.i32[2] = a9.i32[0];
        break;
      case 4:
        v21 = vmulq_n_f32(*a5, _S0);
        break;
      case 3:
        v18 = _S0 * (*&a11 - a5->f32[2]);
        v20 = vdup_lane_s32(*&a11, 0);
        v19 = vmul_n_f32(vsub_f32(v20, *a5->f32), _S0);
        v20.i32[0] = v19.i32[1];
        if (v19.f32[0] < v19.f32[1])
        {
          v20.f32[0] = v19.f32[0];
        }

        if (v18 < v20.f32[0])
        {
          v20.f32[0] = _S0 * (*&a11 - a5->f32[2]);
        }

        *v21.f32 = vsub_f32(v19, vdup_lane_s32(v20, 0));
        v21.f32[2] = v18 - v20.f32[0];
        v21.i32[3] = v20.i32[0];
        break;
      default:
        v21 = vdupq_lane_s32(*a9.i8, 0);
        break;
    }

    *a2->i8 = xmmword_18439CB50;
    a2[3].i32[0] = 0;
    a2[2] = 1;
    a2[6] = vcvt_f16_f32(v21);
    __asm { FCVT            H0, S0 }

    a2[7].i16[0] = _H0;
    v28 = a2 + 7;
    if (!_NF)
    {
      v28 = 0;
    }

    a2[4] = &a2[6];
    a2[5] = v28;
  }

  return a2;
}

uint64_t CMYKf16_mark_inner(uint64_t a1, __n128 a2)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v881 = *MEMORY[0x1E69E9840];
  v21 = *(v6 + 96);
  v22 = *(v6 + 48);
  v23 = *(v5 + 16 * *v6 + 8 * (v21 == 0) + 4 * (v22 == 0));
  if (v23 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = v6;
  v26 = *(v6 + 4);
  v27 = v26 - 1;
  if (v26 < 1)
  {
    return 0;
  }

  v28 = *(v6 + 8);
  v29 = (v28 - 1);
  if (v28 < 1)
  {
    return 0;
  }

  v30 = *(v6 + 136);
  v821 = v6;
  if ((*v6 & 0xFF0000) == 0x50000 || !v30)
  {
    v32 = *v6 & 0xFF00;
    v824 = *(v5 + 16 * *v6 + 8 * (v21 == 0) + 4 * (v22 == 0));
    if (v32 == 1024)
    {
      v880[0] = *(v6 + 4);
      v870[0] = v28;
      if (v21)
      {
        _Q5.i16[0] = *v21;
      }

      else
      {
        _Q5.i16[0] = COERCE_UNSIGNED_INT(1.0);
      }

      __asm { FCVT            S17, H5 }

      v50 = *(v6 + 28) >> 3;
      v51 = *(v6 + 12);
      v52 = *(v6 + 16);
      if (v22)
      {
        v53 = *(v6 + 32) >> 1;
        v860 = v22 + 2 * v53 * v52 + 2 * v51;
        v856 = 1;
      }

      else
      {
        v860 = 0;
        v53 = 0;
        v856 = 0;
      }

      v58 = **(v6 + 88);
      _Q0.n128_f32[0] = 1.0 - *_D17.i32;
      v850 = _Q0.n128_u64[0];
      v59 = *(v6 + 40) + 8 * v52 * v50 + 8 * v51;
      v863 = _Q5;
      v865 = v58;
      v867 = _D17;
      v852 = v53;
      v855 = *(v6 + 28) >> 3;
      v858 = v59;
      if (v30)
      {
        shape_enum_clip_alloc(v5, v6, v30, 1, 1, 1, *(v6 + 104), *(v6 + 108), v26, v28);
        v44 = v60;
        v61 = v860;
        v62 = v53;
        if (v60)
        {
          goto LABEL_408;
        }

        return 1;
      }

      v44 = 0;
      if (v22)
      {
        v63 = v26;
      }

      else
      {
        v63 = 0;
      }

      v64 = v26;
      v62 = v53 - v63;
      v61 = v860;
      v65 = v59;
      v66 = v64;
      v67 = v64;
LABEL_66:
      v59 = v50 - v67;
      switch(v23)
      {
        case 0:
          v103 = v59 + v66;
          v104 = v870[0];
          v105 = v870[0] - 1;
          v106 = &v65[(v103 * v105) & (v103 >> 63)];
          if (v103 < 0)
          {
            v103 = -v103;
          }

          CGBlt_fillBytes(8 * v66, v870[0], 0, v106, 8 * v103);
          if (!v22)
          {
            goto LABEL_400;
          }

          v107 = v62 + v66;
          v61 += 2 * ((v107 * v105) & (v107 >> 63));
          if (v107 >= 0)
          {
            v62 += v66;
          }

          else
          {
            v62 = -v107;
          }

          v108 = 2 * v66;
          v109 = 2 * v62;
          v110 = v104;
          v111 = 0;
          goto LABEL_399;
        case 1:
          v219 = v59 + v66;
          if (v219 < 0)
          {
            v65 += v219 * (v870[0] - 1);
            v219 = -v219;
          }

          v220 = *(v821 + 88);
          v221 = v870[0];
          if (v220)
          {
            CGSFillDRAM64(v65, 8 * v219, 8 * v66, v870[0], v220, 8, 8, 1, 0, 0);
          }

          else
          {
            CGBlt_fillBytes(8 * v66, v870[0], 0, v65, 8 * v219);
          }

          if (v22)
          {
            v302 = *(v821 + 96);
            if (!v302)
            {
              v302 = &_CMYK_float_alpha;
            }

            v61 += 2 * (((v62 + v66) * (v221 - 1)) & ((v62 + v66) >> 63));
            if ((v62 + v66) >= 0)
            {
              v62 += v66;
            }

            else
            {
              v62 = -(v62 + v66);
            }

            v111 = *v302;
            v108 = 2 * v66;
            v109 = 2 * v62;
            v110 = v221;
LABEL_399:
            CGBlt_fillBytes(v108, v110, v111, v61, v109);
          }

LABEL_400:
          LODWORD(v23) = v824;
          goto LABEL_405;
        case 2:
          v183 = v870[0];
          v184 = v66 >> 2;
          v185 = vcvtq_f32_f16(*&v58);
          v186 = 8 * v856;
          v187 = 2 * v856;
          if (v22)
          {
            v188 = vdupq_lane_s32(v850, 0);
            v189 = v184 + 1;
            do
            {
              v190 = v66;
              if (v66 >= 4)
              {
                v191 = v189;
                do
                {
                  *v65 = vcvt_f16_f32(vmlaq_f32(v185, v188, vcvtq_f32_f16(*v65)));
                  _H2 = *v61;
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v850.i32);
                  __asm { FCVT            H2, S2 }

                  *v61 = LOWORD(_S2);
                  v65[1] = vcvt_f16_f32(vmlaq_f32(v185, v188, vcvtq_f32_f16(v65[1])));
                  LOWORD(_S2) = *(v61 + 2);
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v850.i32);
                  __asm { FCVT            H2, S2 }

                  *(v61 + 2) = LOWORD(_S2);
                  v65[2] = vcvt_f16_f32(vmlaq_f32(v185, v188, vcvtq_f32_f16(v65[2])));
                  LOWORD(_S2) = *(v61 + 4);
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v850.i32);
                  __asm { FCVT            H2, S2 }

                  *(v61 + 4) = LOWORD(_S2);
                  v65[3] = vcvt_f16_f32(vmlaq_f32(v185, v188, vcvtq_f32_f16(v65[3])));
                  LOWORD(_S2) = *(v61 + 6);
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v850.i32);
                  __asm { FCVT            H2, S2 }

                  *(v61 + 6) = LOWORD(_S2);
                  v65 += 4;
                  --v191;
                  v61 += v186;
                }

                while (v191 > 1);
                v190 = v66 & 3;
              }

              if (v190 >= 1)
              {
                v201 = v190 + 1;
                do
                {
                  *v65 = vcvt_f16_f32(vmlaq_f32(v185, v188, vcvtq_f32_f16(*v65)));
                  ++v65;
                  _H2 = *v61;
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v850.i32);
                  __asm { FCVT            H2, S2 }

                  *v61 = LOWORD(_S2);
                  v61 += v187;
                  --v201;
                }

                while (v201 > 1);
              }

              v65 += v59;
              v61 += 2 * v62;
              --v183;
            }

            while (v183);
          }

          else
          {
            v296 = vdupq_lane_s32(v850, 0);
            v297 = v184 + 1;
            do
            {
              v298 = v66;
              if (v66 >= 4)
              {
                v299 = v297;
                do
                {
                  v300 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(v185, v296, vcvtq_f32_f16(v65[2]))), vmlaq_f32(v185, v296, vcvt_hight_f32_f16(*v65[2].i8)));
                  *v65->i8 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(v185, v296, vcvtq_f32_f16(*v65))), vmlaq_f32(v185, v296, vcvt_hight_f32_f16(*v65->i8)));
                  *v65[2].i8 = v300;
                  v65 += 4;
                  --v299;
                  v61 += v186;
                }

                while (v299 > 1);
                v298 = v66 & 3;
              }

              if (v298 >= 1)
              {
                v301 = v298 + 1;
                do
                {
                  *v65 = vcvt_f16_f32(vmlaq_f32(v185, v296, vcvtq_f32_f16(*v65)));
                  ++v65;
                  v61 += v187;
                  --v301;
                }

                while (v301 > 1);
              }

              v65 += v59;
              v61 += 2 * v62;
              --v183;
            }

            while (v183);
          }

          goto LABEL_404;
        case 3:
          v211 = v870[0];
          do
          {
            v212 = v66;
            do
            {
              __asm { FCMP            H1, #0 }

              if (!_ZF & _CF)
              {
                if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  *v65 = v58;
                  v214 = *_Q5.i16;
                }

                else
                {
                  *v65 = vmul_n_f16(*&v58, _H1);
                  v214 = *_Q5.i16 * _H1;
                }
              }

              else
              {
                *v65 = 0;
                LOWORD(v214) = 0;
              }

              *v61 = v214;
              ++v65;
              v61 += 2 * v856;
              --v212;
            }

            while (v212);
            v65 += v59;
            v61 += 2 * v62;
            --v211;
          }

          while (v211);
          goto LABEL_404;
        case 4:
          v150 = vcvtq_f32_f16(*&v58);
          v151 = v870[0];
          do
          {
            v152 = v66;
            do
            {
              _H2 = *v61;
              __asm { FCVT            S2, H2 }

              v155 = 1.0 - _S2;
              if (v155 <= 0.0)
              {
                *v65 = 0;
                _H2 = 0;
              }

              else if (v155 >= 1.0)
              {
                *v65 = v58;
                _H2 = _Q5.i16[0];
              }

              else
              {
                *v65 = vcvt_f16_f32(vmulq_n_f32(v150, v155));
                _S2 = v155 * *_D17.i32;
                __asm { FCVT            H2, S2 }
              }

              *v61 = _H2;
              ++v65;
              v61 += 2 * v856;
              --v152;
            }

            while (v152);
            v65 += v59;
            v61 += 2 * v62;
            --v151;
          }

          while (v151);
          goto LABEL_404;
        case 5:
          v232 = vcvtq_f32_f16(*&v58);
          v233 = v870[0];
          do
          {
            v234 = v66;
            do
            {
              _H1 = *v61;
              __asm { FCVT            S1, H1 }

              *v65 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v65), *v850.i32), v232, _S1));
              ++v65;
              _S1 = (*v850.i32 * _S1) + (*_D17.i32 * _S1);
              __asm { FCVT            H1, S1 }

              *v61 = LOWORD(_S1);
              v61 += 2 * v856;
              --v234;
            }

            while (v234);
            v65 += v59;
            v61 += 2 * v62;
            --v233;
          }

          while (v233);
          goto LABEL_404;
        case 6:
          v249 = vcvtq_f32_f16(*&v58);
          v250 = v870[0];
          while (1)
          {
            v251 = v66;
            do
            {
              _H2 = *v61;
              __asm { FCVT            S2, H2 }

              v254 = 1.0 - _S2;
              if ((1.0 - _S2) >= 1.0)
              {
                *v65 = v58;
                _H2 = _Q5.i16[0];
              }

              else
              {
                if (v254 <= 0.0)
                {
                  goto LABEL_293;
                }

                *v65 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v65), v249, v254));
                _S2 = _S2 + (*_D17.i32 * v254);
                __asm { FCVT            H2, S2 }
              }

              *v61 = _H2;
LABEL_293:
              ++v65;
              v61 += 2 * v856;
              --v251;
            }

            while (v251);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v250)
            {
LABEL_404:
              v870[0] = 0;
              goto LABEL_405;
            }
          }

        case 7:
          v215 = v870[0];
          v216 = 2 * v856;
          if (v22)
          {
            do
            {
              v217 = v66;
              do
              {
                *v65 = vmul_n_f16(*v65, *_Q5.i16);
                ++v65;
                *v61 = *_Q5.i16 * *v61;
                v61 += v216;
                --v217;
              }

              while (v217);
              v65 += v59;
              v61 += 2 * v62;
              --v215;
            }

            while (v215);
          }

          else
          {
            do
            {
              v218 = v66;
              do
              {
                *v65 = vmul_n_f16(*v65, *_Q5.i16);
                ++v65;
                v61 += v216;
                --v218;
              }

              while (v218);
              v65 += v59;
              v61 += 2 * v62;
              --v215;
            }

            while (v215);
          }

          goto LABEL_404;
        case 8:
          v269 = v870[0];
          v270 = 2 * v856;
          if (v22)
          {
            do
            {
              v271 = v66;
              do
              {
                *v65 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v65), *v850.i32));
                ++v65;
                _H0 = *v61;
                __asm { FCVT            S0, H0 }

                _S0 = *v850.i32 * _S0;
                __asm { FCVT            H0, S0 }

                *v61 = LOWORD(_S0);
                v61 += v270;
                --v271;
              }

              while (v271);
              v65 += v59;
              v61 += 2 * v62;
              --v269;
            }

            while (v269);
          }

          else
          {
            do
            {
              v303 = v66;
              do
              {
                *v65 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v65), *v850.i32));
                ++v65;
                v61 += v270;
                --v303;
              }

              while (v303);
              v65 += v59;
              v61 += 2 * v62;
              --v269;
            }

            while (v269);
          }

          goto LABEL_404;
        case 9:
          v167 = vcvtq_f32_f16(*&v58);
          v168 = v870[0];
          do
          {
            v169 = v66;
            do
            {
              _H2 = *v61;
              __asm { FCVT            S2, H2 }

              *v65 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v65), *_D17.i32), v167, 1.0 - _S2));
              ++v65;
              _S2 = (*_D17.i32 * _S2) + (*_D17.i32 * (1.0 - _S2));
              __asm { FCVT            H2, S2 }

              *v61 = LOWORD(_S2);
              v61 += 2 * v856;
              --v169;
            }

            while (v169);
            v65 += v59;
            v61 += 2 * v62;
            --v168;
          }

          while (v168);
          goto LABEL_404;
        case 10:
          v263 = vcvtq_f32_f16(*&v58);
          v264 = v870[0];
          do
          {
            v265 = v66;
            do
            {
              _H2 = *v61;
              __asm { FCVT            S2, H2 }

              *v65 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v65), *v850.i32), v263, 1.0 - _S2));
              ++v65;
              _S2 = (*v850.i32 * _S2) + (*_D17.i32 * (1.0 - _S2));
              __asm { FCVT            H2, S2 }

              *v61 = LOWORD(_S2);
              v61 += 2 * v856;
              --v265;
            }

            while (v265);
            v65 += v59;
            v61 += 2 * v62;
            --v264;
          }

          while (v264);
          goto LABEL_404;
        case 11:
          v128 = vsubq_f32(vdupq_lane_s32(_D17, 0), vcvtq_f32_f16(*&v58));
          v129 = v870[0];
          v130 = 2 * v856;
          if (v22)
          {
            do
            {
              v131 = v66;
              do
              {
                _H5 = *v61;
                __asm { FCVT            S5, H5 }

                _S6 = *_D17.i32 + _S5;
                _H7 = v65->i16[0];
                __asm { FCVT            S7, H7 }

                v137 = v128.f32[0] + (_S5 - _S7);
                if ((*_D17.i32 + _S5) > 1.0)
                {
                  _S6 = 1.0;
                }

                _H16 = v65->i16[1];
                __asm { FCVT            S16, H16 }

                v140 = v128.f32[1] + (_S5 - _S16);
                _S7 = _S6 - v137;
                __asm { FCVT            H7, S7 }

                v65->i16[0] = LOWORD(_S7);
                LOWORD(_S7) = *v61;
                __asm { FCVT            S7, H7 }

                LOWORD(_S16) = v65->i16[2];
                __asm { FCVT            S16, H16 }

                v144 = v128.f32[2] + (_S7 - _S16);
                _S5 = _S6 - v140;
                __asm { FCVT            H5, S5 }

                v65->i16[1] = LOWORD(_S5);
                LOWORD(_S5) = *v61;
                __asm { FCVT            S5, H5 }

                LOWORD(_S16) = v65->i16[3];
                __asm { FCVT            S16, H16 }

                _S7 = _S6 - v144;
                __asm { FCVT            H7, S7 }

                v65->i16[2] = LOWORD(_S7);
                __asm { FCVT            H7, S6 }

                *v61 = LOWORD(_S7);
                _S5 = _S6 - (v128.f32[3] + (_S5 - _S16));
                __asm { FCVT            H5, S5 }

                v65->i16[3] = LOWORD(_S5);
                ++v65;
                v61 += v130;
                --v131;
              }

              while (v131);
              v65 += v59;
              v61 += 2 * v62;
              --v129;
            }

            while (v129);
          }

          else
          {
            __asm { FMOV            V1.4S, #1.0 }

            do
            {
              v295 = v66;
              do
              {
                *v65 = vcvt_f16_f32(vsubq_f32(_Q1, vaddq_f32(v128, vsubq_f32(_Q1, vcvtq_f32_f16(*v65)))));
                ++v65;
                v61 += v130;
                --v295;
              }

              while (v295);
              v65 += v59;
              v61 += 2 * v62;
              --v129;
            }

            while (v129);
          }

          goto LABEL_404;
        case 12:
          v158 = v870[0];
          v159 = 2 * v856;
          if (v22)
          {
            do
            {
              v160 = v66;
              do
              {
                _H1 = *v61;
                __asm { FCVT            S1, H1 }

                _S1 = *_D17.i32 + _S1;
                if (_S1 > 1.0)
                {
                  _S1 = 1.0;
                }

                __asm { FCVT            H1, S1 }

                v165.i32[0] = v65->i32[0];
                *v61 = _H1;
                v165.i32[1] = v65->i32[1];
                *v65++ = vadd_f16(*&v58, v165);
                v61 += v159;
                --v160;
              }

              while (v160);
              v65 += v59;
              v61 += 2 * v62;
              --v158;
            }

            while (v158);
          }

          else
          {
            do
            {
              v166 = v66;
              do
              {
                *v65 = vadd_f16(*&v58, *v65);
                ++v65;
                v61 += v159;
                --v166;
              }

              while (v166);
              v65 += v59;
              v61 += 2 * v62;
              --v158;
            }

            while (v158);
          }

          goto LABEL_404;
        case 13:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 13 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v244 = WORD1(v58);
          v245 = HIDWORD(v58);
          v246 = v870[0];
          while (1)
          {
            v247 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0.n128_u64[0] = v863.i64[0];
                  *v61 = v863.i16[0];
                  goto LABEL_283;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v817.i32[1] = v245;
              v817.i16[1] = v244;
              v817.i16[0] = LOWORD(v58);
              v5 = PDAmultiplyPDA(_Q0.n128_u64[0], v13, v14, v15, _Q4, _Q5, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, v817, *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_283:
              ++v65;
              v61 += 2 * v856;
              --v247;
            }

            while (v247);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v246)
            {
              goto LABEL_375;
            }
          }

        case 14:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 14 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v123 = WORD1(v58);
          v124 = HIDWORD(v58);
          v125 = v870[0];
          while (1)
          {
            v126 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_113;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAscreenPDA(_Q0, v13, v14, v15.n128_u64[0], *_Q4.i64, *_Q5.f32, v58, *&v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v123, v124, SHIWORD(v124), *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_113:
              ++v65;
              v61 += 2 * v856;
              --v126;
            }

            while (v126);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v125)
            {
              goto LABEL_375;
            }
          }

        case 15:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 15 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v205 = WORD1(v58);
          v206 = HIDWORD(v58);
          v207 = v870[0];
          while (1)
          {
            v208 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_199;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _S4 = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAoverlayPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v205, v206, SHIWORD(v206), *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_199:
              ++v65;
              v61 += 2 * v856;
              --v208;
            }

            while (v208);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v207)
            {
              goto LABEL_375;
            }
          }

        case 16:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 16 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v118 = WORD1(v58);
          v119 = HIDWORD(v58);
          v120 = v870[0];
          while (1)
          {
            v121 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0.n128_u64[0] = v863.i64[0];
                  *v61 = v863.i16[0];
                  goto LABEL_99;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v814.i32[1] = v119;
              v814.i16[1] = v118;
              v814.i16[0] = LOWORD(v58);
              v5 = PDAdarkenPDA(_Q0.n128_u64[0], v13, v14, v15, _Q4, _Q5, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, v814, *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_99:
              ++v65;
              v61 += 2 * v856;
              --v121;
            }

            while (v121);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v120)
            {
              goto LABEL_375;
            }
          }

        case 17:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 17 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v222 = WORD1(v58);
          v223 = HIDWORD(v58);
          v224 = v870[0];
          while (1)
          {
            v225 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0.n128_u64[0] = v863.i64[0];
                  *v61 = v863.i16[0];
                  goto LABEL_236;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v815.i32[1] = v223;
              v815.i16[1] = v222;
              v815.i16[0] = LOWORD(v58);
              v5 = PDAlightenPDA(_Q0.n128_u64[0], v13, v14, v15, _Q4, _Q5, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, v815, *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_236:
              ++v65;
              v61 += 2 * v856;
              --v225;
            }

            while (v225);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v224)
            {
              goto LABEL_375;
            }
          }

        case 18:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 18 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v257 = WORD1(v58);
          v258 = HIDWORD(v58);
          v259 = v870[0];
          while (1)
          {
            v260 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_307;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _S4 = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAcolordodgePDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v257, v258, SHIWORD(v258), *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_307:
              ++v65;
              v61 += 2 * v856;
              --v260;
            }

            while (v260);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v259)
            {
              goto LABEL_375;
            }
          }

        case 19:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 19 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v280 = WORD1(v58);
          v281 = HIDWORD(v58);
          v282 = v870[0];
          while (1)
          {
            v283 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_345;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _S4 = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAcolorburnPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v280, v281, SHIWORD(v281), *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_345:
              ++v65;
              v61 += 2 * v856;
              --v283;
            }

            while (v283);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v282)
            {
              goto LABEL_375;
            }
          }

        case 20:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 20 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v227 = WORD1(v58);
          v228 = HIDWORD(v58);
          v229 = v870[0];
          while (1)
          {
            v230 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0.n128_u64[0] = v863.i64[0];
                  *v61 = v863.i16[0];
                  goto LABEL_250;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              HIWORD(v816) = v227;
              LOWORD(v816) = LOWORD(v58);
              v5 = PDAsoftlightPDA(_Q0.n128_u64[0], v13, v14, v15.n128_u64[0], *_Q4.i64, *_Q5.f32, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, v816, v228, SHIWORD(v228), *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_250:
              ++v65;
              v61 += 2 * v856;
              --v230;
            }

            while (v230);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v229)
            {
              goto LABEL_375;
            }
          }

        case 21:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 21 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v238 = WORD1(v58);
          v239 = HIDWORD(v58);
          v240 = v870[0];
          while (1)
          {
            v241 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_269;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _S4 = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAhardlightPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v238, v239, SHIWORD(v239), *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_269:
              ++v65;
              v61 += 2 * v856;
              --v241;
            }

            while (v241);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v240)
            {
              goto LABEL_375;
            }
          }

        case 22:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 22 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v275 = WORD1(v58);
          v276 = HIDWORD(v58);
          v277 = v870[0];
          while (1)
          {
            v278 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_331;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAdifferencePDA(_Q0, v13, v14, v15.n128_u64[0], *_Q4.i64, *_Q5.f32, *&v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v275, v276, SHIWORD(v276), *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_331:
              ++v65;
              v61 += 2 * v856;
              --v278;
            }

            while (v278);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v277)
            {
              goto LABEL_375;
            }
          }

        case 23:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 23 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v286 = WORD1(v58);
          v287 = HIDWORD(v58);
          v288 = v870[0];
          while (1)
          {
            v289 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_359;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAexclusionPDA(_Q0, v13, v14, v15.n128_u64[0], *_Q4.i64, *_Q5.f32, v58, *&v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v286, v287, SHIWORD(v287), *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_359:
              ++v65;
              v61 += 2 * v856;
              --v289;
            }

            while (v289);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v288)
            {
              goto LABEL_375;
            }
          }

        case 24:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 24 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v178 = WORD1(v58);
          v179 = HIDWORD(v58);
          v180 = v870[0];
          while (1)
          {
            v181 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_174;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAhuePDA(_Q0, v13, v14.n128_u64[0], v15, *_Q4.i64, *_Q5.f32, *&v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v178, v179, *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_174:
              ++v65;
              v61 += 2 * v856;
              --v181;
            }

            while (v181);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v180)
            {
              goto LABEL_375;
            }
          }

        case 25:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 25 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v173 = WORD1(v58);
          v174 = HIDWORD(v58);
          v175 = v870[0];
          while (1)
          {
            v176 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_160;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v65->i16[0];
              v13.n128_u16[0] = v65->u16[1];
              v14.n128_u16[0] = v65->u16[2];
              v15.n128_u16[0] = v65->u16[3];
              v5 = PDAsaturationPDA(_Q0, v13, v14.n128_u64[0], v15, *_Q4.i64, *_Q5.f32, *&v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v173, v174, *_D17.i32);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_160:
              ++v65;
              v61 += 2 * v856;
              --v176;
            }

            while (v176);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v175)
            {
              goto LABEL_375;
            }
          }

        case 26:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 26 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          LOWORD(v2) = WORD1(v58);
          LOWORD(v4) = HIWORD(v58);
          LOWORD(v3) = WORD2(v58);
          v291 = v870[0];
          while (1)
          {
            v292 = v66;
            do
            {
              if (v22)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v65 = v58;
                  _Q0 = v863;
                  *v61 = v863.i16[0];
                  goto LABEL_373;
                }

                __asm { FCVT            S0, H0 }
              }

              else
              {
                _Q0.n128_u32[0] = 1.0;
              }

              v818 = _Q0.n128_f32[0];
              _Q0.n128_u32[0] = LODWORD(v58);
              v13.n128_u32[0] = v2;
              v14.n128_u32[0] = v3;
              v15.n128_u32[0] = v4;
              v5 = PDAluminosityPDA(_Q0, v13, v14, v15, *_D17.i32, *_Q5.i64, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, v65->i32[0], HIWORD(v65->i32[0]), v65->i32[1], HIWORD(v65->i32[1]), v818);
              *v65 = v5;
              if (v22)
              {
                *v61 = v6;
              }

              v58 = v865;
              _D17.i32[0] = v867.i32[0];
LABEL_373:
              ++v65;
              v61 += 2 * v856;
              --v292;
            }

            while (v292);
            v65 += v59;
            v61 += 2 * v62;
            if (!--v291)
            {
LABEL_375:
              v870[0] = 0;
              LODWORD(v23) = v824;
              v53 = v852;
              v50 = v855;
LABEL_405:
              v59 = v858;
LABEL_406:
              if (!v44)
              {
                return 1;
              }

              v869 = 0;
LABEL_408:
              v5 = shape_enum_clip_next(v44, &v869 + 1, &v869, v880, v870);
              if (!v5)
              {
                goto LABEL_412;
              }

              v65 = (v59 + 8 * v50 * v869 + 8 * SHIDWORD(v869));
              v67 = v880[0];
              if (v22)
              {
                v61 = v860 + 2 * v53 * v869 + 2 * SHIDWORD(v869);
                v62 = v53 - v880[0];
              }

              v66 = v880[0];
              _Q5 = v863;
              v58 = v865;
              _D17 = v867;
              goto LABEL_66;
            }
          }

        case 27:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 27 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v112 = WORD1(v58);
          v113 = HIDWORD(v58);
          v114 = v870[0];
          break;
        default:
          goto LABEL_406;
      }

LABEL_76:
      v115 = v66;
      while (v22)
      {
        __asm { FCMP            H0, #0 }

        if (!_ZF & _CF)
        {
          __asm { FCVT            S4, H0 }

LABEL_82:
          _Q0.n128_u16[0] = v65->i16[0];
          v13.n128_u16[0] = v65->u16[1];
          v14.n128_u16[0] = v65->u16[2];
          v15.n128_u16[0] = v65->u16[3];
          v5 = PDAluminosityPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v58, v19, v5, v6, v30, v7, v8, v9, v10, v11, SLOWORD(v58), v112, v113, SHIWORD(v113), *_D17.i32);
          *v65 = v5;
          if (v22)
          {
            *v61 = v6;
          }

          v58 = v865;
          _D17.i32[0] = v867.i32[0];
          goto LABEL_85;
        }

        *v65 = v58;
        _Q0 = v863;
        *v61 = v863.i16[0];
LABEL_85:
        ++v65;
        v61 += 2 * v856;
        if (!--v115)
        {
          v65 += v59;
          v61 += 2 * v62;
          if (!--v114)
          {
            goto LABEL_375;
          }

          goto LABEL_76;
        }
      }

      _S4 = 1.0;
      goto LABEL_82;
    }

    v880[0] = *(v6 + 4);
    v870[0] = v28;
    v33 = *(v6 + 88);
    v34 = *(v6 + 12);
    v35 = *(v6 + 16);
    v36 = *(v6 + 28) >> 3;
    if (v22)
    {
      v37 = *(v6 + 32) >> 1;
      v832 = v22 + 2 * v37 * v35 + 2 * v34;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      v832 = 0;
      v37 = 0;
      v38 = 0;
    }

    v825 = *(v6 + 40) + 8 * v35 * v36 + 8 * v34;
    v54 = *(v6 + 104);
    v55 = *(v6 + 56);
    v56 = *(v6 + 60);
    v854 = *(v6 + 76) >> 3;
    if (v32 == 256)
    {
      if (v21)
      {
        v857 = *(v6 + 80) >> 1;
        v21 += 2 * v857 * v56 + 2 * v55;
        v57 = 0xFFFFFFFFLL;
      }

      else
      {
        v857 = 0;
        v57 = 0;
      }

      v33 += v56 * v854 + v55;
      if (v854 == v36)
      {
        v86 = (v825 - v33) >> 3;
        if (v86 >= 1)
        {
          if (v86 <= v26)
          {
            v825 += 8 * v27;
            v33 += v27;
            v832 += 2 * (v38 & v27);
            v7 = 0xFFFFFFFFLL;
            v854 = *(v6 + 28) >> 3;
            v21 += 2 * (v57 & v27);
            goto LABEL_49;
          }

          v87 = &v33[v36 * v29];
          if (v825 <= &v87[v26 - 1])
          {
            v825 += 8 * v36 * v29;
            v36 = -v36;
            v832 += 2 * v37 * v29;
            v37 = -v37;
            v21 += 2 * v857 * v29;
            v38 &= 1u;
            v854 = v36;
            v857 = -v857;
            v57 &= 1u;
            v7 = 1;
            v33 = v87;
            goto LABEL_49;
          }
        }
      }

      v38 &= 1u;
      v57 &= 1u;
      v7 = 1;
LABEL_49:
      v819 = *(v6 + 60);
      v820 = *(v6 + 56);
      if (v30)
      {
        v866 = v57;
        v868 = v38;
        v853 = 0;
        v851 = 0;
        v88 = -1;
        v828 = v854;
        v827 = v857;
        goto LABEL_54;
      }

      v94 = v7 * v26;
      v864 = v37 - v38 * v26;
      v95 = -1;
      v96 = v857;
      v826 = v7;
      v827 = v857;
      v97 = v854;
      v828 = v854;
LABEL_62:
      v101 = v832;
      v851 = 0;
      v829 = 0;
      v830 = v33;
      v853 = 0;
      v854 = v97 - v94;
      v857 = v96 - v57 * v26;
      v859 = v21;
      v92 = v21;
      v93 = v832;
      v102 = v825;
      goto LABEL_413;
    }

    v828 = *(v6 + 64);
    v827 = *(v6 + 68);
    if (v21)
    {
      v857 = *(v6 + 80) >> 1;
      v57 = 1;
    }

    else
    {
      v857 = 0;
      v57 = 0;
    }

    v851 = &v33[v854 * v827];
    v38 &= 1u;
    if (v30)
    {
      v819 = *(v6 + 60);
      v820 = *(v6 + 56);
      v866 = v57;
      v868 = v38;
      LODWORD(v7) = 1;
      v853 = *(v6 + 88);
      v88 = v853;
LABEL_54:
      v826 = v7;
      v831 = v36;
      shape_enum_clip_alloc(v5, v6, v30, v7, v36, 1, v54, *(v6 + 108), v26, v28);
      v90 = v89;
      v91 = v21;
      v92 = v21;
      v93 = v832;
      v864 = v37;
      if (!v89)
      {
        return 1;
      }

      goto LABEL_1230;
    }

    v864 = v37 - (v38 * v26);
    if (!v33)
    {
      v819 = *(v6 + 60);
      v820 = *(v6 + 56);
      v95 = 0;
      v826 = 1;
      v94 = v26;
      v97 = *(v6 + 76) >> 3;
      v96 = v857;
      goto LABEL_62;
    }

    v98 = v56 % v827;
    v819 = v56 % v827;
    v830 = *(v6 + 88);
    v99 = &v33[v854 * v98];
    v100 = v55 % v828;
    v33 = &v99[v100];
    v95 = &v99[v828];
    v101 = v832;
    v820 = v100;
    v853 = v33;
    v829 = 0;
    if (v21)
    {
      v92 = &v21[2 * v857 * v98 + 2 * v100];
      v826 = 1;
      v57 = 1;
      v859 = v92;
    }

    else
    {
      v859 = 0;
      v92 = 0;
      v826 = 1;
    }

    v93 = v832;
    v102 = v825;
    v94 = v26;
LABEL_413:
    v868 = v38;
    v866 = v57;
    v831 = v36;
    v832 = v101;
    v861 = v36 - v94;
    v849 = v26;
    switch(v23)
    {
      case 0:
        v833 = v95;
        v305 = v861 - v26;
        v306 = &v102[-v26 + 1];
        if (v826 >= 0)
        {
          v306 = v102;
          v305 = v861 + v26;
        }

        v307 = v870[0];
        v308 = v870[0] - 1;
        v309 = (v306 + 8 * ((v305 * v308) & (v305 >> 63)));
        if (v305 < 0)
        {
          v305 = -v305;
        }

        CGBlt_fillBytes(8 * v26, v870[0], 0, v309, 8 * v305);
        if (v38)
        {
          if (v826 < 0)
          {
            v310 = v864 - v26;
            v93 = &v93[-2 * v26 + 2];
          }

          else
          {
            v310 = v864 + v26;
          }

          v93 += 2 * ((v310 * v308) & (v310 >> 63));
          if (v310 < 0)
          {
            v310 = -v310;
          }

          v864 = v310;
          CGBlt_fillBytes(2 * v26, v307, 0, v93, 2 * v310);
        }

        goto LABEL_1208;
      case 1:
        v512 = *(v25 + 1);
        if (v512 == 2)
        {
          if (v26 >= 4 && (8 * v828) <= 0x40)
          {
            _Q0.n128_u32[0] = 8 * v828;
            v763 = vcnt_s8(_Q0.n128_u64[0]);
            v763.i16[0] = vaddlv_u8(v763);
            if (v763.i32[0] <= 1u)
            {
              v833 = v95;
              v764 = v870[0];
              v33 = v830;
              CGSFillDRAM64(v102, 8 * (v26 + v861), 8 * v26, v870[0], v830, 8 * v854, 8 * v828, v827, 8 * v820, v819);
              if (v38)
              {
                v90 = v829;
                if (v866)
                {
                  CGSFillDRAM64(v93, 2 * (v26 + v864), 2 * v26, v764, v21, 2 * v857, 2 * v828, v827, 2 * v820, v819);
                }

                else
                {
                  CGBlt_fillBytes(2 * v26, v764, 1065353216, v93, 2 * (v26 + v864));
                }

                goto LABEL_1210;
              }

LABEL_1209:
              v90 = v829;
LABEL_1210:
              v95 = v833;
              goto LABEL_1049;
            }
          }
        }

        else if (v512 == 1)
        {
          v833 = v95;
          if (v826 < 0)
          {
            v513 = v854 - v26;
            v798 = 8 * v26 - 8;
            v33 = (v33 - v798);
            v514 = v861 - v26;
            v102 = (v102 - v798);
          }

          else
          {
            v513 = v854 + v26;
            v514 = v861 + v26;
          }

          v799 = v870[0] - 1;
          v800 = &v33[(v513 * v799) & (v513 >> 63)];
          if (v513 >= 0)
          {
            v801 = v513;
          }

          else
          {
            v801 = -v513;
          }

          if (v514 >= 0)
          {
            LODWORD(v802) = v514;
          }

          else
          {
            v802 = -v514;
          }

          v854 = v801;
          v862 = v870[0];
          CGBlt_copyBytes(8 * v26, v870[0], v800, &v102[(v514 * v799) & (v514 >> 63)], 8 * v801, 8 * v802);
          if (v38)
          {
            v803 = 2 * v26;
            v90 = v829;
            v33 = v830;
            if (v866)
            {
              v804 = v857 - v26;
              v805 = 2 * v26 - 2;
              v806 = &v92[-v805];
              v807 = v864 - v26;
              v808 = &v93[-v805];
              if (v826 >= 0)
              {
                v806 = v92;
                v808 = v93;
                v804 = v857 + v26;
                v807 = v864 + v26;
              }

              v92 = &v806[2 * ((v804 * v799) & (v804 >> 63))];
              if (v804 >= 0)
              {
                v809 = v804;
              }

              else
              {
                v809 = -v804;
              }

              v93 = &v808[2 * ((v807 * v799) & (v807 >> 63))];
              if (v807 >= 0)
              {
                v810 = v807;
              }

              else
              {
                v810 = -v807;
              }

              v857 = v809;
              v864 = v810;
              CGBlt_copyBytes(v803, v862, v92, v93, 2 * v809, 2 * v810);
            }

            else
            {
              v811 = v864 - v26;
              v812 = &v93[-2 * v26 + 2];
              if (v826 >= 0)
              {
                v812 = v93;
                v811 = v864 + v26;
              }

              v813 = (v811 * v799) & (v811 >> 63);
              v93 = (v812 + 2 * v813);
              if (v811 < 0)
              {
                v811 = -v811;
              }

              v864 = v811;
              CGBlt_fillBytes(v803, v862, 1065353216, (v812 + 2 * v813), 2 * v811);
            }

            LODWORD(v23) = v824;
            goto LABEL_1210;
          }

LABEL_1208:
          LODWORD(v23) = v824;
          v33 = v830;
          goto LABEL_1209;
        }

        if (v38)
        {
          if (v57)
          {
            v765 = v870[0];
            v91 = v859;
            v350 = v853;
            do
            {
              v766 = v26;
              do
              {
                *v102 = *v33;
                *v93 = *v92;
                v767 = &v33[v826];
                if (v767 >= v95)
                {
                  v768 = -v828;
                }

                else
                {
                  v768 = 0;
                }

                v92 += 2 * v57 + 2 * v768;
                v33 = &v767[v768];
                v93 += 2 * v38;
                v102 += v826;
                --v766;
              }

              while (v766);
              if (v851)
              {
                v769 = &v350[v854];
                if (v769 >= v851)
                {
                  v770 = -(v857 * v827);
                }

                else
                {
                  v770 = 0;
                }

                v91 += 2 * v857 + 2 * v770;
                if (v769 >= v851)
                {
                  v771 = -(v854 * v827);
                }

                else
                {
                  v771 = 0;
                }

                v350 = &v769[v771];
                v95 += 8 * v771 + 8 * v854;
                v92 = v91;
                v33 = v350;
              }

              else
              {
                v33 += v854;
                v92 += 2 * v857;
              }

              v102 += v861;
              v93 += 2 * v864;
              --v765;
            }

            while (v765);
LABEL_1203:
            v853 = v350;
          }

          else
          {
            v791 = v870[0];
            v91 = v859;
            v683 = v853;
            do
            {
              v792 = v26;
              do
              {
                *v102 = *v33;
                *v93 = COERCE_UNSIGNED_INT(1.0);
                v793 = &v33[v826];
                if (v793 >= v95)
                {
                  v794 = -v828;
                }

                else
                {
                  v794 = 0;
                }

                v92 += 2 * v794;
                v33 = &v793[v794];
                v93 += 2 * v38;
                v102 += v826;
                --v792;
              }

              while (v792);
              if (v851)
              {
                v795 = &v683[v854];
                if (v795 >= v851)
                {
                  v796 = -(v857 * v827);
                }

                else
                {
                  v796 = 0;
                }

                v91 += 2 * v857 + 2 * v796;
                if (v795 >= v851)
                {
                  v797 = -(v854 * v827);
                }

                else
                {
                  v797 = 0;
                }

                v683 = &v795[v797];
                v95 += 8 * v797 + 8 * v854;
                v92 = v91;
                v33 = v683;
              }

              else
              {
                v33 += v854;
                v92 += 2 * v857;
              }

              v102 += v861;
              v93 += 2 * v864;
              --v791;
            }

            while (v791);
LABEL_1272:
            v853 = v683;
          }

LABEL_1228:
          v870[0] = 0;
          v90 = v829;
          v33 = v830;
          if (!v829)
          {
            return 1;
          }

          goto LABEL_1229;
        }

        v772 = v57;
        v773 = v870[0];
        v91 = v859;
        v426 = v853;
        do
        {
          v774 = v26;
          do
          {
            *v102 = *v33;
            v775 = &v33[v826];
            if (v775 >= v95)
            {
              v776 = -v828;
            }

            else
            {
              v776 = 0;
            }

            v92 += 2 * v772 + 2 * v776;
            v33 = &v775[v776];
            v102 += v826;
            --v774;
          }

          while (v774);
          if (v851)
          {
            v777 = &v426[v854];
            if (v777 >= v851)
            {
              v778 = -(v857 * v827);
            }

            else
            {
              v778 = 0;
            }

            v91 += 2 * v857 + 2 * v778;
            if (v777 >= v851)
            {
              v779 = -(v854 * v827);
            }

            else
            {
              v779 = 0;
            }

            v426 = &v777[v779];
            v95 += 8 * v779 + 8 * v854;
            v92 = v91;
            v33 = v426;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v773;
        }

        while (v773);
        goto LABEL_1227;
      case 2:
        v462 = 8 * v826;
        v463 = v57;
        if (v38)
        {
          v464 = v870[0];
          v91 = v859;
          v350 = v853;
          while (1)
          {
            v465 = v26;
            do
            {
              if (*v92 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v102 = *v33;
                _H2 = *v92;
              }

              else
              {
                __asm { FCMP            H2, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_649;
                }

                __asm { FCVT            S2, H2 }

                *v102 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v33), vcvtq_f32_f16(*v102), 1.0 - _S2));
                _H4 = *v93;
                __asm { FCVT            S4, H4 }

                _S2 = _S2 + (_S4 * (1.0 - _S2));
                __asm { FCVT            H2, S2 }
              }

              *v93 = _H2;
LABEL_649:
              v472 = &v33[v826];
              if (v472 >= v95)
              {
                v473 = -v828;
              }

              else
              {
                v473 = 0;
              }

              v92 += 2 * v57 + 2 * v473;
              v33 = &v472[v473];
              v93 += 2 * v38;
              v102 = (v102 + v462);
              --v465;
            }

            while (v465);
            if (v851)
            {
              v474 = &v350[v854];
              if (v474 >= v851)
              {
                v475 = -(v857 * v827);
              }

              else
              {
                v475 = 0;
              }

              v91 += 2 * v857 + 2 * v475;
              if (v474 >= v851)
              {
                v476 = -(v854 * v827);
              }

              else
              {
                v476 = 0;
              }

              v350 = &v474[v476];
              v95 += 8 * v476 + 8 * v854;
              v92 = v91;
              v33 = v350;
            }

            else
            {
              v33 += v854;
              v92 += 2 * v857;
            }

            v102 += v861;
            v93 += 2 * v864;
            if (!--v464)
            {
              goto LABEL_1203;
            }
          }
        }

        v726 = v870[0];
        v91 = v859;
        v426 = v853;
LABEL_1094:
        v727 = v26;
        while (*v92 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          __asm { FCMP            H2, #0 }

          if (!(_NF ^ _VF | _ZF))
          {
            __asm { FCVT            S2, H2 }

            v730 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v33), vcvtq_f32_f16(*v102), 1.0 - _S2));
LABEL_1099:
            *v102 = v730;
          }

          v731 = &v33[v826];
          if (v731 >= v95)
          {
            v732 = -v828;
          }

          else
          {
            v732 = 0;
          }

          v92 += 2 * v463 + 2 * v732;
          v33 = &v731[v732];
          v102 = (v102 + v462);
          if (!--v727)
          {
            if (v851)
            {
              v733 = &v426[v854];
              if (v733 >= v851)
              {
                v734 = -(v857 * v827);
              }

              else
              {
                v734 = 0;
              }

              v91 += 2 * v857 + 2 * v734;
              if (v733 >= v851)
              {
                v735 = -(v854 * v827);
              }

              else
              {
                v735 = 0;
              }

              v426 = &v733[v735];
              v95 += 8 * v735 + 8 * v854;
              v92 = v91;
              v33 = v426;
            }

            else
            {
              v33 += v854;
              v92 += 2 * v857;
            }

            v102 += v861;
            v93 += 2 * v864;
            if (!--v726)
            {
              goto LABEL_1227;
            }

            goto LABEL_1094;
          }
        }

        v730 = *v33;
        goto LABEL_1099;
      case 3:
        v490 = 2 * v38;
        v491 = 8 * v826;
        if (v57)
        {
          v492 = v870[0];
          v91 = v859;
          v350 = v853;
          do
          {
            v493 = v26;
            do
            {
              __asm { FCMP            H1, #0 }

              if (!_ZF & _CF)
              {
                v495 = *v33;
                if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  *v102 = v495;
                  v496 = *v92;
                }

                else
                {
                  *v102 = vmul_n_f16(v495, _H1);
                  v496 = _H1 * *v92;
                }
              }

              else
              {
                *v102 = 0;
                LOWORD(v496) = 0;
              }

              *v93 = v496;
              v497 = &v33[v826];
              if (v497 >= v95)
              {
                v498 = -v828;
              }

              else
              {
                v498 = 0;
              }

              v92 += 2 * v57 + 2 * v498;
              v33 = &v497[v498];
              v93 += v490;
              v102 = (v102 + v491);
              --v493;
            }

            while (v493);
            if (v851)
            {
              v499 = &v350[v854];
              if (v499 >= v851)
              {
                v500 = -(v857 * v827);
              }

              else
              {
                v500 = 0;
              }

              v91 += 2 * v857 + 2 * v500;
              if (v499 >= v851)
              {
                v501 = -(v854 * v827);
              }

              else
              {
                v501 = 0;
              }

              v350 = &v499[v501];
              v95 += 8 * v501 + 8 * v854;
              v92 = v91;
              v33 = v350;
            }

            else
            {
              v33 += v854;
              v92 += 2 * v857;
            }

            v102 += v861;
            v93 += 2 * v864;
            --v492;
          }

          while (v492);
          goto LABEL_1203;
        }

        v736 = v870[0];
        v91 = v859;
        v683 = v853;
        do
        {
          v737 = v26;
          do
          {
            __asm { FCMP            H1, #0 }

            if (!_ZF & _CF)
            {
              v739 = *v33;
              if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v102 = v739;
              }

              else
              {
                *v102 = vmul_n_f16(v739, _H1);
              }
            }

            else
            {
              *v102 = 0;
            }

            v740 = &v33[v826];
            if (v740 >= v95)
            {
              v741 = -v828;
            }

            else
            {
              v741 = 0;
            }

            v92 += 2 * v741;
            v33 = &v740[v741];
            v93 += v490;
            v102 = (v102 + v491);
            --v737;
          }

          while (v737);
          if (v851)
          {
            v742 = &v683[v854];
            if (v742 >= v851)
            {
              v743 = -(v857 * v827);
            }

            else
            {
              v743 = 0;
            }

            v91 += 2 * v857 + 2 * v743;
            if (v742 >= v851)
            {
              v744 = -(v854 * v827);
            }

            else
            {
              v744 = 0;
            }

            v683 = &v742[v744];
            v95 += 8 * v744 + 8 * v854;
            v92 = v91;
            v33 = v683;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v736;
        }

        while (v736);
        goto LABEL_1272;
      case 4:
        v395 = v870[0];
        v91 = v859;
        v350 = v853;
        do
        {
          v396 = v26;
          do
          {
            _H1 = *v93;
            __asm { FCVT            S1, H1 }

            v399 = 1.0 - _S1;
            if (v399 <= 0.0)
            {
              *v102 = 0;
              LOWORD(_H1) = 0;
            }

            else if (v399 >= 1.0)
            {
              if (v57)
              {
                _H1 = *v92;
              }

              else
              {
                LOWORD(_H1) = COERCE_UNSIGNED_INT(1.0);
              }
            }

            else
            {
              *v102 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v33), v399));
              if (v57)
              {
                _H2 = *v92;
                __asm { FCVT            S2, H2 }
              }

              else
              {
                _S2 = 1.0;
              }

              _S1 = v399 * _S2;
              __asm { FCVT            H1, S1 }
            }

            *v93 = _H1;
            v404 = &v33[v826];
            if (v404 >= v95)
            {
              v405 = -v828;
            }

            else
            {
              v405 = 0;
            }

            v92 += 2 * v57 + 2 * v405;
            v33 = &v404[v405];
            v93 += 2 * v38;
            v102 += v826;
            --v396;
          }

          while (v396);
          if (v851)
          {
            v406 = &v350[v854];
            if (v406 >= v851)
            {
              v407 = -(v857 * v827);
            }

            else
            {
              v407 = 0;
            }

            v91 += 2 * v857 + 2 * v407;
            if (v406 >= v851)
            {
              v408 = -(v854 * v827);
            }

            else
            {
              v408 = 0;
            }

            v350 = &v406[v408];
            v95 += 8 * v408 + 8 * v854;
            v92 = v91;
            v33 = v350;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v395;
        }

        while (v395);
        goto LABEL_1203;
      case 5:
        v539 = v57;
        v540 = v870[0];
        v91 = v859;
        v426 = v853;
        do
        {
          v541 = v26;
          do
          {
            _H1 = *v93;
            __asm { FCVT            S1, H1 }

            _H2 = *v92;
            __asm { FCVT            S2, H2 }

            *v102 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v102), 1.0 - _S2), vcvtq_f32_f16(*v33), _S1));
            _S1 = ((1.0 - _S2) * _S1) + (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v93 = LOWORD(_S1);
            v547 = &v33[v826];
            if (v547 >= v95)
            {
              v548 = -v828;
            }

            else
            {
              v548 = 0;
            }

            v92 += 2 * v539 + 2 * v548;
            v33 = &v547[v548];
            v93 += 2 * v38;
            v102 += v826;
            --v541;
          }

          while (v541);
          if (v851)
          {
            v549 = &v426[v854];
            if (v549 >= v851)
            {
              v550 = -(v857 * v827);
            }

            else
            {
              v550 = 0;
            }

            v91 += 2 * v857 + 2 * v550;
            if (v549 >= v851)
            {
              v551 = -(v854 * v827);
            }

            else
            {
              v551 = 0;
            }

            v426 = &v549[v551];
            v95 += 8 * v551 + 8 * v854;
            v92 = v91;
            v33 = v426;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v540;
        }

        while (v540);
        goto LABEL_1227;
      case 6:
        v577 = v870[0];
        v91 = v859;
        v350 = v853;
        while (1)
        {
          v578 = v26;
          do
          {
            _H1 = *v93;
            __asm { FCVT            S1, H1 }

            v581 = 1.0 - _S1;
            if ((1.0 - _S1) >= 1.0)
            {
              *v102 = *v33;
              if (v57)
              {
                _H1 = *v92;
              }

              else
              {
                LOWORD(_H1) = COERCE_UNSIGNED_INT(1.0);
              }
            }

            else
            {
              if (v581 <= 0.0)
              {
                goto LABEL_868;
              }

              *v102 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v102), vcvtq_f32_f16(*v33), v581));
              if (v57)
              {
                _H3 = *v92;
                __asm { FCVT            S3, H3 }
              }

              else
              {
                _S3 = 1.0;
              }

              _S1 = _S1 + (_S3 * v581);
              __asm { FCVT            H1, S1 }
            }

            *v93 = _H1;
LABEL_868:
            v586 = &v33[v826];
            if (v586 >= v95)
            {
              v587 = -v828;
            }

            else
            {
              v587 = 0;
            }

            v92 += 2 * v57 + 2 * v587;
            v33 = &v586[v587];
            v93 += 2 * v38;
            v102 += v826;
            --v578;
          }

          while (v578);
          if (v851)
          {
            v588 = &v350[v854];
            if (v588 >= v851)
            {
              v589 = -(v857 * v827);
            }

            else
            {
              v589 = 0;
            }

            v91 += 2 * v857 + 2 * v589;
            if (v588 >= v851)
            {
              v590 = -(v854 * v827);
            }

            else
            {
              v590 = 0;
            }

            v350 = &v588[v590];
            v95 += 8 * v590 + 8 * v854;
            v92 = v91;
            v33 = v350;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          if (!--v577)
          {
            goto LABEL_1203;
          }
        }

      case 7:
        v502 = v57;
        if (v38)
        {
          v503 = v870[0];
          v91 = v859;
          v350 = v853;
          while (1)
          {
            v504 = v26;
            do
            {
              __asm { FCMP            H1, #0 }

              if (!_ZF & _CF)
              {
                if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  goto LABEL_720;
                }

                *v102 = vmul_n_f16(*v102, _H1);
                v506 = _H1 * *v93;
              }

              else
              {
                *v102 = 0;
                LOWORD(v506) = 0;
              }

              *v93 = v506;
LABEL_720:
              v507 = &v33[v826];
              if (v507 >= v95)
              {
                v508 = -v828;
              }

              else
              {
                v508 = 0;
              }

              v92 += 2 * v57 + 2 * v508;
              v33 = &v507[v508];
              v93 += 2 * v38;
              v102 += v826;
              --v504;
            }

            while (v504);
            if (v851)
            {
              v509 = &v350[v854];
              if (v509 >= v851)
              {
                v510 = -(v857 * v827);
              }

              else
              {
                v510 = 0;
              }

              v91 += 2 * v857 + 2 * v510;
              if (v509 >= v851)
              {
                v511 = -(v854 * v827);
              }

              else
              {
                v511 = 0;
              }

              v350 = &v509[v511];
              v95 += 8 * v511 + 8 * v854;
              v92 = v91;
              v33 = v350;
            }

            else
            {
              v33 += v854;
              v92 += 2 * v857;
            }

            v102 += v861;
            v93 += 2 * v864;
            if (!--v503)
            {
              goto LABEL_1203;
            }
          }
        }

        v745 = v870[0];
        v91 = v859;
        v426 = v853;
        do
        {
          v746 = v26;
          do
          {
            __asm { FCMP            H1, #0 }

            if (!_ZF & _CF)
            {
              if (_H1 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v102 = vmul_n_f16(*v102, _H1);
              }
            }

            else
            {
              *v102 = 0;
            }

            v748 = &v33[v826];
            if (v748 >= v95)
            {
              v749 = -v828;
            }

            else
            {
              v749 = 0;
            }

            v92 += 2 * v502 + 2 * v749;
            v33 = &v748[v749];
            v102 += v826;
            --v746;
          }

          while (v746);
          if (v851)
          {
            v750 = &v426[v854];
            if (v750 >= v851)
            {
              v751 = -(v857 * v827);
            }

            else
            {
              v751 = 0;
            }

            v91 += 2 * v857 + 2 * v751;
            if (v750 >= v851)
            {
              v752 = -(v854 * v827);
            }

            else
            {
              v752 = 0;
            }

            v426 = &v750[v752];
            v95 += 8 * v752 + 8 * v854;
            v92 = v91;
            v33 = v426;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v745;
        }

        while (v745);
        goto LABEL_1227;
      case 8:
        v617 = v57;
        if (!v38)
        {
          v753 = v870[0];
          v91 = v859;
          v426 = v853;
          do
          {
            v754 = v26;
            do
            {
              _H1 = *v92;
              __asm { FCVT            S1, H1 }

              v757 = 1.0 - _S1;
              if (v757 <= 0.0)
              {
                *v102 = 0;
              }

              else if (v757 < 1.0)
              {
                *v102 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v102), v757));
              }

              v758 = &v33[v826];
              if (v758 >= v95)
              {
                v759 = -v828;
              }

              else
              {
                v759 = 0;
              }

              v92 += 2 * v617 + 2 * v759;
              v33 = &v758[v759];
              v102 += v826;
              --v754;
            }

            while (v754);
            if (v851)
            {
              v760 = &v426[v854];
              if (v760 >= v851)
              {
                v761 = -(v857 * v827);
              }

              else
              {
                v761 = 0;
              }

              v91 += 2 * v857 + 2 * v761;
              if (v760 >= v851)
              {
                v762 = -(v854 * v827);
              }

              else
              {
                v762 = 0;
              }

              v426 = &v760[v762];
              v95 += 8 * v762 + 8 * v854;
              v92 = v91;
              v33 = v426;
            }

            else
            {
              v33 += v854;
              v92 += 2 * v857;
            }

            v102 += v861;
            v93 += 2 * v864;
            --v753;
          }

          while (v753);
LABEL_1227:
          v853 = v426;
          goto LABEL_1228;
        }

        v618 = v870[0];
        v91 = v859;
        v350 = v853;
LABEL_927:
        v619 = v26;
        while (1)
        {
          _H1 = *v92;
          __asm { FCVT            S1, H1 }

          v622 = 1.0 - _S1;
          if (v622 <= 0.0)
          {
            break;
          }

          if (v622 < 1.0)
          {
            *v102 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v102), v622));
            _H2 = *v93;
            __asm { FCVT            S2, H2 }

            _S1 = v622 * _S2;
            __asm { FCVT            H1, S1 }

LABEL_932:
            *v93 = _H1;
          }

          v627 = &v33[v826];
          if (v627 >= v95)
          {
            v628 = -v828;
          }

          else
          {
            v628 = 0;
          }

          v92 += 2 * v57 + 2 * v628;
          v33 = &v627[v628];
          v93 += 2 * v38;
          v102 += v826;
          if (!--v619)
          {
            if (v851)
            {
              v629 = &v350[v854];
              if (v629 >= v851)
              {
                v630 = -(v857 * v827);
              }

              else
              {
                v630 = 0;
              }

              v91 += 2 * v857 + 2 * v630;
              if (v629 >= v851)
              {
                v631 = -(v854 * v827);
              }

              else
              {
                v631 = 0;
              }

              v350 = &v629[v631];
              v95 += 8 * v631 + 8 * v854;
              v92 = v91;
              v33 = v350;
            }

            else
            {
              v33 += v854;
              v92 += 2 * v857;
            }

            v102 += v861;
            v93 += 2 * v864;
            if (!--v618)
            {
              goto LABEL_1203;
            }

            goto LABEL_927;
          }
        }

        *v102 = 0;
        _H1 = 0;
        goto LABEL_932;
      case 9:
        v424 = v57;
        v425 = v870[0];
        v91 = v859;
        v426 = v853;
        do
        {
          v427 = v26;
          do
          {
            _H1 = *v93;
            __asm { FCVT            S1, H1 }

            _H2 = *v92;
            __asm { FCVT            S2, H2 }

            *v102 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v102), _S2), vcvtq_f32_f16(*v33), 1.0 - _S1));
            _S1 = (_S1 * _S2) + (_S2 * (1.0 - _S1));
            __asm { FCVT            H1, S1 }

            *v93 = LOWORD(_S1);
            v433 = &v33[v826];
            if (v433 >= v95)
            {
              v434 = -v828;
            }

            else
            {
              v434 = 0;
            }

            v92 += 2 * v424 + 2 * v434;
            v33 = &v433[v434];
            v93 += 2 * v38;
            v102 += v826;
            --v427;
          }

          while (v427);
          if (v851)
          {
            v435 = &v426[v854];
            if (v435 >= v851)
            {
              v436 = -(v857 * v827);
            }

            else
            {
              v436 = 0;
            }

            v91 += 2 * v857 + 2 * v436;
            if (v435 >= v851)
            {
              v437 = -(v854 * v827);
            }

            else
            {
              v437 = 0;
            }

            v426 = &v435[v437];
            v95 += 8 * v437 + 8 * v854;
            v92 = v91;
            v33 = v426;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v425;
        }

        while (v425);
        goto LABEL_1227;
      case 10:
        v604 = v57;
        v605 = v870[0];
        v91 = v859;
        v426 = v853;
        do
        {
          v606 = v26;
          do
          {
            _H1 = *v93;
            __asm { FCVT            S1, H1 }

            _H2 = *v92;
            __asm { FCVT            S2, H2 }

            *v102 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v102), 1.0 - _S2), vcvtq_f32_f16(*v33), 1.0 - _S1));
            _S1 = ((1.0 - _S2) * _S1) + (_S2 * (1.0 - _S1));
            __asm { FCVT            H1, S1 }

            *v93 = LOWORD(_S1);
            v612 = &v33[v826];
            if (v612 >= v95)
            {
              v613 = -v828;
            }

            else
            {
              v613 = 0;
            }

            v92 += 2 * v604 + 2 * v613;
            v33 = &v612[v613];
            v93 += 2 * v38;
            v102 += v826;
            --v606;
          }

          while (v606);
          if (v851)
          {
            v614 = &v426[v854];
            if (v614 >= v851)
            {
              v615 = -(v857 * v827);
            }

            else
            {
              v615 = 0;
            }

            v91 += 2 * v857 + 2 * v615;
            if (v614 >= v851)
            {
              v616 = -(v854 * v827);
            }

            else
            {
              v616 = 0;
            }

            v426 = &v614[v616];
            v95 += 8 * v616 + 8 * v854;
            v92 = v91;
            v33 = v426;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v605;
        }

        while (v605);
        goto LABEL_1227;
      case 11:
        v348 = 8 * v826;
        if (v38)
        {
          v349 = v870[0];
          v91 = v859;
          v350 = v853;
          do
          {
            v351 = v26;
            do
            {
              _S1 = 1.0;
              _S2 = 1.0;
              if (v57)
              {
                _H0 = *v92;
                __asm { FCVT            S2, H0 }
              }

              _H0 = *v93;
              __asm { FCVT            S3, H0 }

              _S0 = _S2 + _S3;
              if ((_S2 + _S3) > 1.0)
              {
                _S0 = 1.0;
              }

              if (v57)
              {
                _H1 = *v92;
                __asm { FCVT            S1, H1 }
              }

              _H4 = v102->i16[0];
              __asm { FCVT            S4, H4 }

              _H5 = v33->i16[0];
              __asm { FCVT            S5, H5 }

              v363 = (_S3 - _S4) + (_S2 - _S5);
              _H6 = v102->i16[1];
              _H5 = v33->i16[1];
              _S2 = _S0 - v363;
              __asm { FCVT            H2, S2 }

              v102->i16[0] = LOWORD(_S2);
              _S2 = 1.0;
              _S4 = 1.0;
              if (v57)
              {
                _H4 = *v92;
                __asm { FCVT            S4, H4 }
              }

              __asm
              {
                FCVT            S6, H6
                FCVT            S5, H5
              }

              v372 = (_S3 - _S6) + (_S1 - _S5);
              _H3 = *v93;
              _H5 = v102->i16[2];
              _H1 = v33->i16[2];
              _S6 = _S0 - v372;
              __asm { FCVT            H6, S6 }

              v102->i16[1] = LOWORD(_S6);
              _H6 = *v93;
              if (v57)
              {
                _H2 = *v92;
                __asm { FCVT            S2, H2 }
              }

              __asm
              {
                FCVT            S3, H3
                FCVT            S5, H5
                FCVT            S1, H1
              }

              v382 = (_S3 - _S5) + (_S4 - _S1);
              __asm { FCVT            S3, H6 }

              _H4 = v102->i16[3];
              __asm { FCVT            S4, H4 }

              v386 = _S3 - _S4;
              LOWORD(_S4) = v33->i16[3];
              __asm { FCVT            S4, H4 }

              _S1 = _S0 - v382;
              __asm { FCVT            H1, S1 }

              v102->i16[2] = LOWORD(_S1);
              __asm { FCVT            H1, S0 }

              *v93 = LOWORD(_S1);
              _S0 = _S0 - (v386 + (_S2 - _S4));
              __asm { FCVT            H0, S0 }

              v102->i16[3] = LOWORD(_S0);
              v390 = &v33[v826];
              if (v390 >= v95)
              {
                v391 = -v828;
              }

              else
              {
                v391 = 0;
              }

              v92 += 2 * v57 + 2 * v391;
              v33 = &v390[v391];
              v93 += 2 * v38;
              v102 = (v102 + v348);
              --v351;
            }

            while (v351);
            if (v851)
            {
              v392 = &v350[v854];
              if (v392 >= v851)
              {
                v393 = -(v857 * v827);
              }

              else
              {
                v393 = 0;
              }

              v91 += 2 * v857 + 2 * v393;
              if (v392 >= v851)
              {
                v394 = -(v854 * v827);
              }

              else
              {
                v394 = 0;
              }

              v350 = &v392[v394];
              v95 += 8 * v394 + 8 * v854;
              v92 = v91;
              v33 = v350;
            }

            else
            {
              v33 += v854;
              v92 += 2 * v857;
            }

            v102 += v861;
            v93 += 2 * v864;
            --v349;
          }

          while (v349);
          goto LABEL_1203;
        }

        v682 = v870[0];
        v91 = v859;
        v683 = v853;
        do
        {
          v684 = v26;
          do
          {
            _S2 = 1.0;
            if (v57)
            {
              _H2 = *v92;
              __asm { FCVT            S2, H2 }
            }

            _S3 = 1.0;
            if (v57)
            {
              _H3 = *v92;
              __asm { FCVT            S3, H3 }
            }

            _H4 = v102->i16[0];
            __asm { FCVT            S4, H4 }

            _H5 = v33->i16[0];
            __asm { FCVT            S5, H5 }

            v693 = (1.0 - _S4) + (_S2 - _S5);
            LOWORD(_S4) = v102->i16[1];
            __asm { FCVT            S4, H4 }

            v695 = 1.0 - _S4;
            LOWORD(_S4) = v33->i16[1];
            __asm { FCVT            S4, H4 }

            _S2 = 1.0 - v693;
            __asm { FCVT            H2, S2 }

            v102->i16[0] = LOWORD(_S2);
            _S2 = 1.0 - (v695 + (_S3 - _S4));
            __asm { FCVT            H2, S2 }

            v102->i16[1] = LOWORD(_S2);
            _S2 = 1.0;
            if (v57)
            {
              _H2 = *v92;
              __asm { FCVT            S2, H2 }
            }

            _H4 = v33->i16[2];
            _S3 = 1.0;
            if (v57)
            {
              _H3 = *v92;
              __asm { FCVT            S3, H3 }
            }

            _H5 = v102->i16[2];
            __asm
            {
              FCVT            S5, H5
              FCVT            S4, H4
            }

            v707 = (1.0 - _S5) + (_S2 - _S4);
            LOWORD(_S4) = v102->i16[3];
            __asm { FCVT            S4, H4 }

            v709 = 1.0 - _S4;
            LOWORD(_S4) = v33->i16[3];
            __asm { FCVT            S4, H4 }

            _S2 = 1.0 - v707;
            __asm { FCVT            H2, S2 }

            v102->i16[2] = LOWORD(_S2);
            _S1 = 1.0 - (v709 + (_S3 - _S4));
            __asm { FCVT            H1, S1 }

            v102->i16[3] = LOWORD(_S1);
            v713 = &v33[v826];
            if (v713 >= v95)
            {
              v714 = -v828;
            }

            else
            {
              v714 = 0;
            }

            v92 += 2 * v57 + 2 * v714;
            v33 = &v713[v714];
            v102 = (v102 + v348);
            --v684;
          }

          while (v684);
          if (v851)
          {
            v715 = &v683[v854];
            if (v715 >= v851)
            {
              v716 = -(v857 * v827);
            }

            else
            {
              v716 = 0;
            }

            v91 += 2 * v857 + 2 * v716;
            if (v715 >= v851)
            {
              v717 = -(v854 * v827);
            }

            else
            {
              v717 = 0;
            }

            v683 = &v715[v717];
            v95 += 8 * v717 + 8 * v854;
            v92 = v91;
            v33 = v683;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v682;
        }

        while (v682);
        goto LABEL_1272;
      case 12:
        if (!v38)
        {
          v718 = v57;
          v719 = v870[0];
          v91 = v859;
          v426 = v853;
          do
          {
            v720 = v26;
            do
            {
              *v102 = vadd_f16(*v102, *v33);
              v721 = &v33[v826];
              if (v721 >= v95)
              {
                v722 = -v828;
              }

              else
              {
                v722 = 0;
              }

              v92 += 2 * v718 + 2 * v722;
              v33 = &v721[v722];
              v102 += v826;
              --v720;
            }

            while (v720);
            if (v851)
            {
              v723 = &v426[v854];
              if (v723 >= v851)
              {
                v724 = -(v857 * v827);
              }

              else
              {
                v724 = 0;
              }

              v91 += 2 * v857 + 2 * v724;
              if (v723 >= v851)
              {
                v725 = -(v854 * v827);
              }

              else
              {
                v725 = 0;
              }

              v426 = &v723[v725];
              v95 += 8 * v725 + 8 * v854;
              v92 = v91;
              v33 = v426;
            }

            else
            {
              v33 += v854;
              v92 += 2 * v857;
            }

            v102 += v861;
            v93 += 2 * v864;
            --v719;
          }

          while (v719);
          goto LABEL_1227;
        }

        v409 = v870[0];
        v91 = v859;
        v350 = v853;
        do
        {
          v410 = v26;
          do
          {
            if (v57)
            {
              _H1 = *v92;
              __asm { FCVT            S1, H1 }
            }

            else
            {
              _S1 = 1.0;
            }

            _H2 = *v93;
            __asm { FCVT            S2, H2 }

            _S1 = _S1 + _S2;
            if (_S1 > 1.0)
            {
              _S1 = 1.0;
            }

            __asm { FCVT            H1, S1 }

            v417.i32[0] = v102->i32[0];
            v418.i32[0] = v33->i32[0];
            *v93 = _H1;
            v417.i32[1] = v102->i32[1];
            v418.i32[1] = v33->i32[1];
            *v102 = vadd_f16(v417, v418);
            v419 = &v33[v826];
            if (v419 >= v95)
            {
              v420 = -v828;
            }

            else
            {
              v420 = 0;
            }

            v92 += 2 * v57 + 2 * v420;
            v33 = &v419[v420];
            v93 += 2 * v38;
            v102 += v826;
            --v410;
          }

          while (v410);
          if (v851)
          {
            v421 = &v350[v854];
            if (v421 >= v851)
            {
              v422 = -(v857 * v827);
            }

            else
            {
              v422 = 0;
            }

            v91 += 2 * v857 + 2 * v422;
            if (v421 >= v851)
            {
              v423 = -(v854 * v827);
            }

            else
            {
              v423 = 0;
            }

            v350 = &v421[v423];
            v95 += 8 * v423 + 8 * v854;
            v92 = v91;
            v33 = v350;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          v102 += v861;
          v93 += 2 * v864;
          --v409;
        }

        while (v409);
        goto LABEL_1203;
      case 13:
        v822 = v37;
        v823 = v21;
        v565 = v57;
        v566 = 2 * v38;
        v567 = v870[0];
        v568 = -v828;
        while (1)
        {
          v843 = v567;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_843;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_843;
              }

              __asm { FCVT            S4, H0 }
            }

            v571 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAmultiplyPDA(_Q0.n128_u64[0], v13, v14, v15, _Q4, _Q5, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, *v33, _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v571;
            v568 = -v828;
LABEL_843:
            v572 = &v33[v826];
            if (v572 >= v95)
            {
              v573 = v568;
            }

            else
            {
              v573 = 0;
            }

            v92 += 2 * v565 + 2 * v573;
            v33 = &v572[v573];
            v93 += v566;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v574 = &v853[v854];
            v575 = -(v857 * v827);
            if (v574 < v851)
            {
              v575 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v575];
            v576 = -(v854 * v827);
            if (v574 < v851)
            {
              v576 = 0;
            }

            v33 = &v574[v576];
            v95 += 8 * v576 + 8 * v854;
            v859 += 2 * v857 + 2 * v575;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v567 = v843 - 1;
          if (v843 == 1)
          {
LABEL_1047:
            v870[0] = 0;
            v21 = v823;
            LODWORD(v23) = v824;
            v25 = v821;
            v37 = v822;
LABEL_1048:
            v90 = v829;
            v33 = v830;
LABEL_1049:
            v91 = v859;
            if (!v90)
            {
              return 1;
            }

LABEL_1229:
            v88 = v95;
            v869 = 0;
LABEL_1230:
            v859 = v91;
            if (!shape_enum_clip_next(v90, &v869 + 1, &v869, v880, v870))
            {
              v304 = v90;
              goto LABEL_1254;
            }

            v829 = v90;
            v830 = v33;
            if (v851)
            {
              v36 = v831;
              v102 = (v825 + 8 * v831 * v869 + 8 * SHIDWORD(v869));
              v780 = (v869 + *(v25 + 60)) % v827;
              v94 = v880[0];
              v781 = (HIDWORD(v869) + *(v25 + 56)) % v828;
              v782 = &v33[v854 * v780];
              v33 = &v782[v781];
              v95 = &v782[v828];
              v101 = v832;
              v38 = v868;
              if (v868)
              {
                v93 = (v832 + 2 * v37 * v869 + 2 * SHIDWORD(v869));
              }

              v783 = v864;
              if (v868)
              {
                v783 = v37 - v880[0];
              }

              v864 = v783;
              if (v866)
              {
                v57 = v866;
              }

              else
              {
                v57 = 0;
              }

              v784 = v859;
              if (v866)
              {
                v784 = &v21[2 * v857 * v780 + 2 * v781];
              }

              v859 = v784;
              if (v866)
              {
                v92 = &v21[2 * v857 * v780 + 2 * v781];
              }

              LODWORD(v26) = v880[0];
              v853 = &v782[v781];
              v819 = (v869 + *(v25 + 60)) % v827;
              v820 = (HIDWORD(v869) + *(v25 + 56)) % v828;
            }

            else
            {
              v851 = 0;
              v785 = HIDWORD(v869) * v826;
              LODWORD(v26) = v880[0];
              v786 = v880[0] * v826;
              v36 = v831;
              v101 = v832;
              v102 = (v825 + 8 * v831 * v869 + 8 * HIDWORD(v869) * v826);
              v94 = v880[0] * v826;
              v33 += v869 * v828 + HIDWORD(v869) * v826;
              v854 = v828 - v880[0] * v826;
              v38 = v868;
              if (v868)
              {
                v93 = (v832 + 2 * v37 * v869 + 2 * v785);
              }

              v787 = v864;
              if (v868)
              {
                v787 = v37 - v786;
              }

              v864 = v787;
              v788 = &v21[2 * v869 * v827 + 2 * v785];
              v789 = v827 - v786;
              v57 = v866;
              if (v866)
              {
                v92 = v788;
              }

              v790 = v857;
              if (v866)
              {
                v790 = v789;
              }

              v857 = v790;
              v95 = v88;
            }

            goto LABEL_413;
          }
        }

      case 14:
        v822 = v37;
        v823 = v21;
        v336 = v57;
        v337 = 2 * v38;
        v338 = v870[0];
        v339 = -v828;
        while (1)
        {
          v836 = v338;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_483;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_483;
              }

              __asm { FCVT            S4, H0 }
            }

            v342 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAscreenPDA(_Q0, v13, v14, v15.n128_u64[0], *_Q4.i64, *_Q5.f32, v18, *&v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v342;
            v339 = -v828;
LABEL_483:
            v343 = &v33[v826];
            if (v343 >= v95)
            {
              v344 = v339;
            }

            else
            {
              v344 = 0;
            }

            v92 += 2 * v336 + 2 * v344;
            v33 = &v343[v344];
            v93 += v337;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v345 = &v853[v854];
            v346 = -(v857 * v827);
            if (v345 < v851)
            {
              v346 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v346];
            v347 = -(v854 * v827);
            if (v345 < v851)
            {
              v347 = 0;
            }

            v33 = &v345[v347];
            v95 += 8 * v347 + 8 * v854;
            v859 += 2 * v857 + 2 * v346;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v338 = v836 - 1;
          if (v836 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 15:
        v822 = v37;
        v823 = v21;
        v477 = v57;
        v478 = 2 * v38;
        v479 = v870[0];
        v480 = -v828;
        while (1)
        {
          v839 = v479;
          do
          {
            _S4 = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_676;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_676;
              }

              __asm { FCVT            S4, H0 }
            }

            v484 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAoverlayPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v484;
            v480 = -v828;
LABEL_676:
            v485 = &v33[v826];
            if (v485 >= v95)
            {
              v486 = v480;
            }

            else
            {
              v486 = 0;
            }

            v92 += 2 * v477 + 2 * v486;
            v33 = &v485[v486];
            v93 += v478;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v487 = &v853[v854];
            v488 = -(v857 * v827);
            if (v487 < v851)
            {
              v488 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v488];
            v489 = -(v854 * v827);
            if (v487 < v851)
            {
              v489 = 0;
            }

            v33 = &v487[v489];
            v95 += 8 * v489 + 8 * v854;
            v859 += 2 * v857 + 2 * v488;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v479 = v839 - 1;
          if (v839 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 16:
        v822 = v37;
        v823 = v21;
        v324 = v57;
        v325 = 2 * v38;
        v326 = v870[0];
        v327 = -v828;
        while (1)
        {
          v835 = v326;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_458;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_458;
              }

              __asm { FCVT            S4, H0 }
            }

            v330 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAdarkenPDA(_Q0.n128_u64[0], v13, v14, v15, _Q4, _Q5, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, *v33, _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v330;
            v327 = -v828;
LABEL_458:
            v331 = &v33[v826];
            if (v331 >= v95)
            {
              v332 = v327;
            }

            else
            {
              v332 = 0;
            }

            v92 += 2 * v324 + 2 * v332;
            v33 = &v331[v332];
            v93 += v325;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v333 = &v853[v854];
            v334 = -(v857 * v827);
            if (v333 < v851)
            {
              v334 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v334];
            v335 = -(v854 * v827);
            if (v333 < v851)
            {
              v335 = 0;
            }

            v33 = &v333[v335];
            v95 += 8 * v335 + 8 * v854;
            v859 += 2 * v857 + 2 * v334;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v326 = v835 - 1;
          if (v835 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 17:
        v822 = v37;
        v823 = v21;
        v515 = v57;
        v516 = 2 * v38;
        v517 = v870[0];
        v518 = -v828;
        while (1)
        {
          v840 = v517;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_751;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_751;
              }

              __asm { FCVT            S4, H0 }
            }

            v521 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAlightenPDA(_Q0.n128_u64[0], v13, v14, v15, _Q4, _Q5, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, *v33, _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v521;
            v518 = -v828;
LABEL_751:
            v522 = &v33[v826];
            if (v522 >= v95)
            {
              v523 = v518;
            }

            else
            {
              v523 = 0;
            }

            v92 += 2 * v515 + 2 * v523;
            v33 = &v522[v523];
            v93 += v516;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v524 = &v853[v854];
            v525 = -(v857 * v827);
            if (v524 < v851)
            {
              v525 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v525];
            v526 = -(v854 * v827);
            if (v524 < v851)
            {
              v526 = 0;
            }

            v33 = &v524[v526];
            v95 += 8 * v526 + 8 * v854;
            v859 += 2 * v857 + 2 * v525;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v517 = v840 - 1;
          if (v840 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 18:
        v822 = v37;
        v823 = v21;
        v591 = v57;
        v592 = 2 * v38;
        v593 = v870[0];
        v594 = -v828;
        while (1)
        {
          v844 = v593;
          do
          {
            _S4 = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_895;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_895;
              }

              __asm { FCVT            S4, H0 }
            }

            v598 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAcolordodgePDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v598;
            v594 = -v828;
LABEL_895:
            v599 = &v33[v826];
            if (v599 >= v95)
            {
              v600 = v594;
            }

            else
            {
              v600 = 0;
            }

            v92 += 2 * v591 + 2 * v600;
            v33 = &v599[v600];
            v93 += v592;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v601 = &v853[v854];
            v602 = -(v857 * v827);
            if (v601 < v851)
            {
              v602 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v602];
            v603 = -(v854 * v827);
            if (v601 < v851)
            {
              v603 = 0;
            }

            v33 = &v601[v603];
            v95 += 8 * v603 + 8 * v854;
            v859 += 2 * v857 + 2 * v602;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v593 = v844 - 1;
          if (v844 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 19:
        v822 = v37;
        v823 = v21;
        v644 = v57;
        v645 = 2 * v38;
        v646 = v870[0];
        v647 = -v828;
        while (1)
        {
          v846 = v646;
          do
          {
            _S4 = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_985;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_985;
              }

              __asm { FCVT            S4, H0 }
            }

            v651 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAcolorburnPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v651;
            v647 = -v828;
LABEL_985:
            v652 = &v33[v826];
            if (v652 >= v95)
            {
              v653 = v647;
            }

            else
            {
              v653 = 0;
            }

            v92 += 2 * v644 + 2 * v653;
            v33 = &v652[v653];
            v93 += v645;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v654 = &v853[v854];
            v655 = -(v857 * v827);
            if (v654 < v851)
            {
              v655 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v655];
            v656 = -(v854 * v827);
            if (v654 < v851)
            {
              v656 = 0;
            }

            v33 = &v654[v656];
            v95 += 8 * v656 + 8 * v854;
            v859 += 2 * v857 + 2 * v655;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v646 = v846 - 1;
          if (v846 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 20:
        v822 = v37;
        v823 = v21;
        v527 = v57;
        v528 = 2 * v38;
        v529 = v870[0];
        v530 = -v828;
        while (1)
        {
          v841 = v529;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_776;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_776;
              }

              __asm { FCVT            S4, H0 }
            }

            v533 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAsoftlightPDA(_Q0.n128_u64[0], v13, v14, v15.n128_u64[0], *_Q4.i64, *_Q5.f32, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v533;
            v530 = -v828;
LABEL_776:
            v534 = &v33[v826];
            if (v534 >= v95)
            {
              v535 = v530;
            }

            else
            {
              v535 = 0;
            }

            v92 += 2 * v527 + 2 * v535;
            v33 = &v534[v535];
            v93 += v528;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v536 = &v853[v854];
            v537 = -(v857 * v827);
            if (v536 < v851)
            {
              v537 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v537];
            v538 = -(v854 * v827);
            if (v536 < v851)
            {
              v538 = 0;
            }

            v33 = &v536[v538];
            v95 += 8 * v538 + 8 * v854;
            v859 += 2 * v857 + 2 * v537;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v529 = v841 - 1;
          if (v841 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 21:
        v822 = v37;
        v823 = v21;
        v552 = v57;
        v553 = 2 * v38;
        v554 = v870[0];
        v555 = -v828;
        while (1)
        {
          v842 = v554;
          do
          {
            _S4 = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_818;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_818;
              }

              __asm { FCVT            S4, H0 }
            }

            v559 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAhardlightPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v559;
            v555 = -v828;
LABEL_818:
            v560 = &v33[v826];
            if (v560 >= v95)
            {
              v561 = v555;
            }

            else
            {
              v561 = 0;
            }

            v92 += 2 * v552 + 2 * v561;
            v33 = &v560[v561];
            v93 += v553;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v562 = &v853[v854];
            v563 = -(v857 * v827);
            if (v562 < v851)
            {
              v563 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v563];
            v564 = -(v854 * v827);
            if (v562 < v851)
            {
              v564 = 0;
            }

            v33 = &v562[v564];
            v95 += 8 * v564 + 8 * v854;
            v859 += 2 * v857 + 2 * v563;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v554 = v842 - 1;
          if (v842 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 22:
        v822 = v37;
        v823 = v21;
        v632 = v57;
        v633 = 2 * v38;
        v634 = v870[0];
        v635 = -v828;
        while (1)
        {
          v845 = v634;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_960;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_960;
              }

              __asm { FCVT            S4, H0 }
            }

            v638 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAdifferencePDA(_Q0, v13, v14, v15.n128_u64[0], *_Q4.i64, *_Q5.f32, *&v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v638;
            v635 = -v828;
LABEL_960:
            v639 = &v33[v826];
            if (v639 >= v95)
            {
              v640 = v635;
            }

            else
            {
              v640 = 0;
            }

            v92 += 2 * v632 + 2 * v640;
            v33 = &v639[v640];
            v93 += v633;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v641 = &v853[v854];
            v642 = -(v857 * v827);
            if (v641 < v851)
            {
              v642 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v642];
            v643 = -(v854 * v827);
            if (v641 < v851)
            {
              v643 = 0;
            }

            v33 = &v641[v643];
            v95 += 8 * v643 + 8 * v854;
            v859 += 2 * v857 + 2 * v642;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v634 = v845 - 1;
          if (v845 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 23:
        v822 = v37;
        v823 = v21;
        v657 = v57;
        v658 = 2 * v38;
        v659 = v870[0];
        v660 = -v828;
        while (1)
        {
          v847 = v659;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_1010;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_1010;
              }

              __asm { FCVT            S4, H0 }
            }

            v663 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAexclusionPDA(_Q0, v13, v14, v15.n128_u64[0], *_Q4.i64, *_Q5.f32, v18, *&v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v663;
            v660 = -v828;
LABEL_1010:
            v664 = &v33[v826];
            if (v664 >= v95)
            {
              v665 = v660;
            }

            else
            {
              v665 = 0;
            }

            v92 += 2 * v657 + 2 * v665;
            v33 = &v664[v665];
            v93 += v658;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v666 = &v853[v854];
            v667 = -(v857 * v827);
            if (v666 < v851)
            {
              v667 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v667];
            v668 = -(v854 * v827);
            if (v666 < v851)
            {
              v668 = 0;
            }

            v33 = &v666[v668];
            v95 += 8 * v668 + 8 * v854;
            v859 += 2 * v857 + 2 * v667;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v659 = v847 - 1;
          if (v847 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 24:
        v822 = v37;
        v823 = v21;
        v450 = v57;
        v451 = 2 * v38;
        v452 = v870[0];
        v453 = -v828;
        while (1)
        {
          v838 = v452;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_628;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_628;
              }

              __asm { FCVT            S4, H0 }
            }

            v456 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAhuePDA(_Q0, v13, v14.n128_u64[0], v15, *_Q4.i64, *_Q5.f32, *&v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v456;
            v453 = -v828;
LABEL_628:
            v457 = &v33[v826];
            if (v457 >= v95)
            {
              v458 = v453;
            }

            else
            {
              v458 = 0;
            }

            v92 += 2 * v450 + 2 * v458;
            v33 = &v457[v458];
            v93 += v451;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v459 = &v853[v854];
            v460 = -(v857 * v827);
            if (v459 < v851)
            {
              v460 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v460];
            v461 = -(v854 * v827);
            if (v459 < v851)
            {
              v461 = 0;
            }

            v33 = &v459[v461];
            v95 += 8 * v461 + 8 * v854;
            v859 += 2 * v857 + 2 * v460;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v452 = v838 - 1;
          if (v838 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 25:
        v822 = v37;
        v823 = v21;
        v438 = v57;
        v439 = 2 * v38;
        v440 = v870[0];
        v441 = -v828;
        while (1)
        {
          v837 = v440;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_603;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S5 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_603;
              }

              __asm { FCVT            S4, H0 }
            }

            v444 = v95;
            _Q0.n128_u16[0] = v102->i16[0];
            v13.n128_u16[0] = v102->u16[1];
            v14.n128_u16[0] = v102->u16[2];
            v15.n128_u16[0] = v102->u16[3];
            v101 = PDAsaturationPDA(_Q0, v13, v14.n128_u64[0], v15, *_Q4.i64, *_Q5.f32, *&v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v444;
            v441 = -v828;
LABEL_603:
            v445 = &v33[v826];
            if (v445 >= v95)
            {
              v446 = v441;
            }

            else
            {
              v446 = 0;
            }

            v92 += 2 * v438 + 2 * v446;
            v33 = &v445[v446];
            v93 += v439;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v447 = &v853[v854];
            v448 = -(v857 * v827);
            if (v447 < v851)
            {
              v448 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v448];
            v449 = -(v854 * v827);
            if (v447 < v851)
            {
              v449 = 0;
            }

            v33 = &v447[v449];
            v95 += 8 * v449 + 8 * v854;
            v859 += 2 * v857 + 2 * v448;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v440 = v837 - 1;
          if (v837 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 26:
        v822 = v37;
        v823 = v21;
        v669 = v57;
        v670 = 2 * v38;
        v671 = v870[0];
        v672 = -v828;
        while (1)
        {
          v848 = v671;
          do
          {
            _Q5.i32[0] = 1.0;
            _S4 = 1.0;
            if (v57)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_1035;
              }

              __asm { FCVT            S4, H0 }
            }

            if (v38)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v33;
                *v102 = *v33;
                __asm { FCVT            H0, S4 }

                *v93 = _Q0.n128_u16[0];
                goto LABEL_1035;
              }

              __asm { FCVT            S5, H0 }
            }

            v676 = v95;
            _Q0.n128_u16[0] = v33->i16[0];
            v13.n128_u16[0] = v33->u16[1];
            v14.n128_u16[0] = v33->u16[2];
            v15.n128_u16[0] = v33->u16[3];
            v101 = PDAluminosityPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v102->i32[0], HIWORD(v102->i32[0]), v102->i32[1], HIWORD(v102->i32[1]), _Q5.f32[0]);
            LODWORD(v38) = v868;
            *v102 = v101;
            if (v868)
            {
              *v93 = v6;
            }

            v57 = v866;
            v95 = v676;
            v672 = -v828;
LABEL_1035:
            v677 = &v33[v826];
            if (v677 >= v95)
            {
              v678 = v672;
            }

            else
            {
              v678 = 0;
            }

            v92 += 2 * v669 + 2 * v678;
            v33 = &v677[v678];
            v93 += v670;
            v102 += v826;
            LODWORD(v26) = v26 - 1;
          }

          while (v26);
          if (v851)
          {
            v679 = &v853[v854];
            v680 = -(v857 * v827);
            if (v679 < v851)
            {
              v680 = 0;
            }

            v92 = &v859[2 * v857 + 2 * v680];
            v681 = -(v854 * v827);
            if (v679 < v851)
            {
              v681 = 0;
            }

            v33 = &v679[v681];
            v95 += 8 * v681 + 8 * v854;
            v859 += 2 * v857 + 2 * v680;
            v853 = v33;
          }

          else
          {
            v33 += v854;
            v92 += 2 * v857;
          }

          LODWORD(v26) = v849;
          v102 += v861;
          v93 += 2 * v864;
          v671 = v848 - 1;
          if (v848 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 27:
        v822 = v37;
        v823 = v21;
        v311 = v57;
        v312 = 2 * v38;
        v313 = v870[0];
        v314 = -v828;
        break;
      default:
        goto LABEL_1048;
    }

LABEL_422:
    v834 = v313;
    while (1)
    {
      _S4 = 1.0;
      _Q5.i32[0] = 1.0;
      if (v57)
      {
        __asm { FCMP            H0, #0 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_433;
        }

        __asm { FCVT            S5, H0 }
      }

      if (!v38)
      {
        goto LABEL_430;
      }

      __asm { FCMP            H0, #0 }

      if (!_ZF & _CF)
      {
        __asm { FCVT            S4, H0 }

LABEL_430:
        v318 = v95;
        _Q0.n128_u16[0] = v102->i16[0];
        v13.n128_u16[0] = v102->u16[1];
        v14.n128_u16[0] = v102->u16[2];
        v15.n128_u16[0] = v102->u16[3];
        v101 = PDAluminosityPDA(_Q0, v13, v14, v15, _S4, *_Q5.i64, v18, v19, v101, v6, v30, v7, v36, v57, v54, v95, v33->i32[0], HIWORD(v33->i32[0]), v33->i32[1], HIWORD(v33->i32[1]), _Q5.f32[0]);
        LODWORD(v38) = v868;
        *v102 = v101;
        if (v868)
        {
          *v93 = v6;
        }

        v57 = v866;
        v95 = v318;
        v314 = -v828;
        goto LABEL_433;
      }

      _Q0.n128_u64[0] = *v33;
      *v102 = *v33;
      __asm { FCVT            H0, S5 }

      *v93 = _Q0.n128_u16[0];
LABEL_433:
      v319 = &v33[v826];
      if (v319 >= v95)
      {
        v320 = v314;
      }

      else
      {
        v320 = 0;
      }

      v92 += 2 * v311 + 2 * v320;
      v33 = &v319[v320];
      v93 += v312;
      v102 += v826;
      LODWORD(v26) = v26 - 1;
      if (!v26)
      {
        if (v851)
        {
          v321 = &v853[v854];
          v322 = -(v857 * v827);
          if (v321 < v851)
          {
            v322 = 0;
          }

          v92 = &v859[2 * v857 + 2 * v322];
          v323 = -(v854 * v827);
          if (v321 < v851)
          {
            v323 = 0;
          }

          v33 = &v321[v323];
          v95 += 8 * v323 + 8 * v854;
          v859 += 2 * v857 + 2 * v322;
          v853 = v33;
        }

        else
        {
          v33 += v854;
          v92 += 2 * v857;
        }

        LODWORD(v26) = v849;
        v102 += v861;
        v93 += 2 * v864;
        v313 = v834 - 1;
        if (v834 == 1)
        {
          goto LABEL_1047;
        }

        goto LABEL_422;
      }
    }
  }

  v31 = *(v6 + 128);
  if ((v31 | 8) == 8)
  {
    if ((*v6 & 0xFF00) == 0x400)
    {
      CMYKf16_mark_constmask(v6, v23, _Q0.n128_f64[0], v13, v14.n128_f64[0], v15, _Q4, _Q5, v18, v19, v30, v7, v8, v9, v31, v11);
    }

    else
    {
      CMYKf16_mark_pixelmask(v6, v23, _Q0.n128_f64[0], v13, v14.n128_f64[0], v15, _Q4, _Q5, v18, v19, v30, v7, v8, v9, v31, v11);
    }

    return 1;
  }

  v39 = *(v6 + 112);
  v40 = *(v6 + 116);
  v41 = (v39 + 15) & 0xFFFFFFF0;
  v42 = v41 * v40;
  if (v42 <= 4096)
  {
    v44 = v880;
    v45 = v6;
  }

  else
  {
    v43 = malloc_type_malloc(v42, 0x100004077774924uLL);
    if (!v43)
    {
      return 1;
    }

    v44 = v43;
    v45 = v821;
    v30 = *(v821 + 136);
    LODWORD(v31) = *(v821 + 128);
  }

  CGSConvertBitsToMask(v30, *(v45 + 124), v44, v41, v39, v40, v31);
  v80 = *(v45 + 112);
  v876 = *(v45 + 96);
  v877 = v80;
  v81 = *(v45 + 144);
  v878 = *(v45 + 128);
  v879 = v81;
  v82 = *(v45 + 48);
  v872 = *(v45 + 32);
  v873 = v82;
  v83 = *(v45 + 80);
  v874 = *(v45 + 64);
  v875 = v83;
  v84 = *v45;
  v85 = *(v45 + 16);
  *v870 = *v45;
  v871 = v85;
  HIDWORD(v877) = (v39 + 15) & 0xFFFFFFF0;
  *(&v878 + 1) = v44;
  if (BYTE1(v870[0]) << 8 == 1024)
  {
    CMYKf16_mark_constmask(v870, v23, *&v84, v85, v74, v75, v76, v77, v78, v79, v68, v69, v70, v71, v72, v73);
  }

  else
  {
    CMYKf16_mark_pixelmask(v870, v23, *&v84, v85, v74, v75, v76, v77, v78, v79, v68, v69, v70, v71, v72, v73);
  }

  if (v44 != v880)
  {
LABEL_412:
    v304 = v44;
LABEL_1254:
    free(v304);
  }

  return 1;
}
uint64_t CGPDFFontGetMutator(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 136));
  if ((*(a1 + 280) & 1) == 0)
  {
    load_font(a1);
  }

  v2 = *(a1 + 296);
  pthread_mutex_unlock((a1 + 136));
  return v2;
}

void *CGPDFFontGetProcedures(uint64_t a1)
{
  if (!a1 || *(a1 + 200) != 5)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 136));
  v2 = *(a1 + 272);
  if (!v2)
  {
    v3 = *(a1 + 16);
    value = 0;
    if (CGPDFDictionaryGetDictionary(v3, "CharProcs", &value))
    {
      Encoding = CGPDFFontGetEncoding(a1);
      if (Encoding)
      {
        v5 = Encoding;
        v2 = malloc_type_calloc(1uLL, 0x800uLL, 0x2004093837F09uLL);
        __CFSetLastAllocationEventName();
        if (v2)
        {
          for (i = 0; i != 256; ++i)
          {
            NameForIndex = CGPDFEncodingGetNameForIndex(v5, i);
            v9 = 0;
            if (NameForIndex && CGPDFDictionaryGetStream(value, NameForIndex, &v9))
            {
              v2[i] = v9;
            }
          }

          *(a1 + 272) = v2;
          goto LABEL_4;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    pthread_mutex_unlock((a1 + 136));
    return 0;
  }

LABEL_4:
  pthread_mutex_unlock((a1 + 136));
  return v2;
}

void *PDFFunctionSetCreate(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    *v2 = a1;
  }

  return v2;
}

void *PDFFunctionSetAddFunctionWithRange(uint64_t *a1, uint64_t a2, unint64_t a3, char a4)
{
  result = 0;
  if (a1 && a2)
  {
    if (!a1[1])
    {
      a1[1] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_4163);
    }

    if (*(a2 + 48) > a3 && (v9 = *a1, v10 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040046EDCE1uLL), __CFSetLastAllocationEventName(), v10))
    {
      *v10 = 1;
      v10[1] = v9;
      *(v10 + 6) = *(a2 + 16);
      v10[4] = 0;
      v10[5] = a3;
      *(v10 + 56) = a4;
      v11 = *(a2 + 88);
      if (v11 && (v12 = v11(*(a2 + 24))) != 0)
      {
        v13 = v12;
        if (v9)
        {
          v14 = *(v9 + 40);
        }

        else
        {
          v14 = 0;
        }

        v10[6] = PDFMetaSetAddDictionary(v14, v13);
        CFRelease(v13);
        v10[2] = 0;
        *(v10 + 57) = 1;
      }

      else
      {
        CFRetain(a2);
        v10[2] = a2;
        v10[6] = PDFXRefTableAddObject(*(v10[1] + 504));
      }

      value = 0;
      if (!CFSetGetValueIfPresent(a1[1], v10, &value))
      {
        CFSetAddValue(a1[1], v10);
        value = v10;
      }

      PDFShadingRelease(v10);
      v15 = a1[2];
      if (!v15)
      {
        v15 = CGOrderedSetCreate();
        a1[2] = v15;
      }

      CGOrderedSetAddValue(v15, value);
      return value;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL function_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 56) == *(a2 + 56);
  }

  return 0;
}

_DWORD *function_retain(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

uint64_t PDFFunctionSetEmitDefinitions(uint64_t a1)
{
  context = 0;
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    do
    {
      *(a1 + 16) = 0;
      v3 = *(v2 + 8);
      v7.length = CFArrayGetCount(v3);
      v7.location = 0;
      CFArrayApplyFunction(v3, v7, emit_function_definition, &context);
      CGOrderedSetRelease(v2);
      v2 = *(a1 + 16);
    }

    while (v2);
    v4 = context;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void emit_function_definition(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 57))
  {
    goto LABEL_45;
  }

  v98 = a2;
  v3 = PDFStreamCreateWithObjectNumber(*(a1 + 8), *(a1 + 48));
  PDFDocumentBeginObject(*v3, v3[1], v4, v5, v6, v7, v8, v9);
  PDFDocumentPrintf(*v3, "<<", v10, v11, v12, v13, v14, v15, v89);
  PDFDocumentPrintf(*(a1 + 8), "/FunctionType 0", v16, v17, v18, v19, v20, v21, v90);
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = v22[4];
    v24 = v22[6];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v101 = v24;
  v25 = v23 + v23 * (*(a1 + 40) - *(a1 + 32));
  if (v25 <= 0x100)
  {
    v26 = 0x1000 / v25;
  }

  else
  {
    v26 = 16;
  }

  v99[0] = v26;
  v99[1] = 8;
  v99[2] = v23;
  if (v22)
  {
    v27 = v22[5];
    v100 = v27;
    v28 = v22[7];
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v100 = 0;
  }

  v102 = v28;
  v29 = malloc_type_malloc(8 * v23, 0x100004000313F17uLL);
  __CFSetLastAllocationEventName();
  v97 = v29;
  v103 = v29;
  v30 = malloc_type_malloc(8 * v24, 0x100004000313F17uLL);
  __CFSetLastAllocationEventName();
  v96 = v30;
  v104 = v30;
  if (!v27)
  {
    v27 = malloc_type_malloc(16 * v23, 0x100004000313F17uLL);
    __CFSetLastAllocationEventName();
    if (v23)
    {
      v39 = -3.40282347e38;
      if (*(a1 + 56))
      {
        v39 = 0.0;
      }

      v40 = 3.40282347e38;
      if (*(a1 + 56))
      {
        v40 = 1.0;
      }

      v41 = (v27 + 1);
      v42 = v23;
      do
      {
        *(v41 - 1) = v39;
        *v41 = v40;
        v41 += 2;
        --v42;
      }

      while (v42);
    }

    v100 = v27;
    v37 = v27;
    if (v28)
    {
      goto LABEL_13;
    }

LABEL_22:
    v28 = malloc_type_malloc(16 * v24, 0x100004000313F17uLL);
    __CFSetLastAllocationEventName();
    if (v24)
    {
      v43 = xmmword_18439C990;
      v44 = v28;
      do
      {
        *v44++ = xmmword_18439C990;
        --v24;
      }

      while (v24);
    }

    evaluate_range(a1, v23 - 1, v99, v28, v43);
    v102 = v28;
    v38 = v28;
    goto LABEL_26;
  }

  v37 = 0;
  if (!v28)
  {
    goto LABEL_22;
  }

LABEL_13:
  v38 = 0;
LABEL_26:
  PDFDocumentPrintf(*(a1 + 8), "/BitsPerSample %d", v31, v32, v33, v34, v35, v36, 8);
  PDFDocumentPrintf(*(a1 + 8), "/Size [", v45, v46, v47, v48, v49, v50, v91);
  if (v23)
  {
    v57 = v23;
    do
    {
      PDFDocumentPrintf(*(a1 + 8), "%d", v51, v52, v53, v54, v55, v56, v26);
      --v57;
    }

    while (v57);
  }

  PDFDocumentPrintf(*(a1 + 8), "]", v51, v52, v53, v54, v55, v56, v92);
  if (v23 && v27)
  {
    PDFDocumentPrintf(*(a1 + 8), "/Domain [", v58, v59, v60, v61, v62, v63, v93);
    v70 = 2 * v23;
    if (2 * v23)
    {
      do
      {
        v71 = *v27++;
        PDFDocumentPrintf(*(a1 + 8), "%f", v64, v65, v66, v67, v68, v69, v71);
        --v70;
      }

      while (v70);
    }

    PDFDocumentPrintf(*(a1 + 8), "]", v64, v65, v66, v67, v68, v69, v94);
  }

  PDFDocumentPrintf(*(a1 + 8), "/Range [", v58, v59, v60, v61, v62, v63, v93);
  v78 = *(a1 + 32);
  if (v78 <= *(a1 + 40))
  {
    v79 = &v28[v78] + 1;
    do
    {
      v80 = *(v79 - 1);
      if (fabs(v80) == INFINITY)
      {
        v80 = -2.0;
      }

      if (fabs(*v79) == INFINITY)
      {
        v81 = 3.0;
      }

      else
      {
        v81 = *v79;
      }

      PDFDocumentPrintf(*(a1 + 8), "%f", v72, v73, v74, v75, v76, v77, *&v80);
      PDFDocumentPrintf(*(a1 + 8), "%f", v82, v83, v84, v85, v86, v87, *&v81);
      ++v78;
      v79 += 2;
    }

    while (v78 <= *(a1 + 40));
  }

  PDFDocumentPrintf(*(a1 + 8), "]", v72, v73, v74, v75, v76, v77, v95);
  PDFStreamBeginData(v3);
  emit_samples(a1, v3, v23 - 1, v99);
  PDFStreamEndData(v3);
  free(v96);
  free(v97);
  free(v37);
  free(v38);
  PDFStreamEnd(v3);
  PDFStreamRelease(v3);
  v88 = *(a1 + 16);
  if (v88)
  {
    CFRelease(v88);
  }

  *(a1 + 16) = 0;
  *(a1 + 57) = 1;
  a2 = v98;
LABEL_45:
  *a2 = 1;
}

_BYTE *ToUnicode::write_epilog(ToUnicode *this, CGDataConsumer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  CGDataConsumerPrintf(this, "endcmap\n", a3, a4, a5, a6, a7, a8, v29);
  CGDataConsumerPrintf(this, "CMapName currentdict /CMap defineresource pop\n", v10, v11, v12, v13, v14, v15, v30);
  CGDataConsumerPrintf(this, "end\n", v16, v17, v18, v19, v20, v21, v31);

  return CGDataConsumerPrintf(this, "end\n", v22, v23, v24, v25, v26, v27, a9);
}

void std::vector<ToUnicode::bfrange>::push_back[abi:fe200100](uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 1) + 1;
    if (v9 > 0x2AAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 1);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1555555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v12 = 2 * (v8 >> 1);
    *v12 = *a2;
    *(v12 + 4) = *(a2 + 2);
    v6 = v12 + 6;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 4) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 6;
  }

  *(a1 + 8) = v6;
}

void ToUnicode::write<std::set<unsigned short>>(uint64_t a1, uint64_t a2, void *a3)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    return;
  }

  v7 = Mutable;
  v8 = CGDataConsumerCreateWithCFData(Mutable);
  if (!v8)
  {
    goto LABEL_73;
  }

  v15 = v8;
  CGDataConsumerPrintf(v8, "/CIDInit /ProcSet findresource begin\n", v9, v10, v11, v12, v13, v14, v209);
  CGDataConsumerPrintf(v15, "12 dict begin\n", v16, v17, v18, v19, v20, v21, v210);
  CGDataConsumerPrintf(v15, "begincmap\n", v22, v23, v24, v25, v26, v27, v211);
  CGDataConsumerPrintf(v15, "/CIDSystemInfo <<\n", v28, v29, v30, v31, v32, v33, v212);
  CGDataConsumerPrintf(v15, "  /Registry (Adobe)\n", v34, v35, v36, v37, v38, v39, v213);
  CGDataConsumerPrintf(v15, "  /Ordering (UCS)\n", v40, v41, v42, v43, v44, v45, v214);
  CGDataConsumerPrintf(v15, "  /Supplement 0\n", v46, v47, v48, v49, v50, v51, v215);
  CGDataConsumerPrintf(v15, ">> def\n", v52, v53, v54, v55, v56, v57, v216);
  CGDataConsumerPrintf(v15, "/CMapName /Adobe-Identity-UCS def\n", v58, v59, v60, v61, v62, v63, v217);
  CGDataConsumerPrintf(v15, "/CMapType 2 def\n", v64, v65, v66, v67, v68, v69, v218);
  CGDataConsumerPrintf(v15, "1 begincodespacerange\n", v70, v71, v72, v73, v74, v75, v219);
  CGDataConsumerPrintf(v15, "<", v76, v77, v78, v79, v80, v81, v220);
  CGDataConsumerPrintf(v15, "00", v82, v83, v84, v85, v86, v87, v221);
  CGDataConsumerPrintf(v15, "00", v88, v89, v90, v91, v92, v93, v222);
  CGDataConsumerPrintf(v15, "><", v94, v95, v96, v97, v98, v99, v223);
  CGDataConsumerPrintf(v15, "FF", v100, v101, v102, v103, v104, v105, v224);
  CGDataConsumerPrintf(v15, "FF", v106, v107, v108, v109, v110, v111, v225);
  CGDataConsumerPrintf(v15, ">\n", v112, v113, v114, v115, v116, v117, v226);
  CGDataConsumerPrintf(v15, "endcodespacerange\n", v118, v119, v120, v121, v122, v123, v227);
  v240[0] = 0;
  v240[1] = 0;
  v239 = v240;
  v124 = *(*a1 + 16);
  if (v124)
  {
    get_unimap(v124);
    v125 = 256;
  }

  else
  {
    v125 = 0;
  }

  std::vector<unsigned short>::vector[abi:fe200100](&__p, v125);
  v234 = a1;
  v133 = *(*a1 + 16);
  v235 = v7;
  if (v133 && (explicit = atomic_load_explicit(v133 + 11, memory_order_acquire)) != 0)
  {
    Property = CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontToUnicodeCMap");
  }

  else
  {
    Property = 0;
  }

  v138 = *a3;
  v137 = a3 + 1;
  v136 = v138;
  if (v138 == v137)
  {
LABEL_39:
    v244 = 0;
    v174 = 0uLL;
    v243 = 0u;
    v175 = v239;
    if (v239 != v240)
    {
      do
      {
        v176 = 0;
        v177 = *(v175 + 13);
        v178 = *(v175 + 14);
        v179 = v175;
        while (v177 + v176 == *(v179 + 13) && v178 + v176 == *(v179 + 14))
        {
          v180 = v179[1];
          if (v180)
          {
            do
            {
              v175 = v180;
              v180 = *v180;
            }

            while (v180);
          }

          else
          {
            do
            {
              v175 = v179[2];
              v173 = *v175 == v179;
              v179 = v175;
            }

            while (!v173);
          }

          ++v176;
          v179 = v175;
          if (v175 == v240)
          {
            goto LABEL_51;
          }
        }

        v175 = v179;
LABEL_51:
        LOWORD(v241) = v177;
        HIWORD(v241) = v176 + v177 - 1;
        v242 = v178;
        std::vector<ToUnicode::bfrange>::push_back[abi:fe200100](&v243, &v241);
      }

      while (v175 != v240);
      v174 = v243;
    }

    v181 = v174;
    v182 = v174;
    while (*(&v181 + 1) != v182)
    {
      v183 = 0;
      v184 = v182;
      do
      {
        v185 = v184;
        v184 += 6;
        if (v183 > 0x30)
        {
          break;
        }

        ++v183;
      }

      while (v184 != *(&v181 + 1));
      if (v182 != v184)
      {
        CGDataConsumerPrintf(v15, "%d beginbfrange\n", v127, v128, v129, v130, v131, v132, -85 * ((v184 - v182) >> 1));
        do
        {
          CGDataConsumerPrintf(v15, "<%0*x><%0*x><%04x>\n", v186, v187, v188, v189, v190, v191, 4);
          v173 = v182 == v185;
          v182 += 6;
        }

        while (!v173);
        CGDataConsumerPrintf(v15, "endbfrange\n", v186, v187, v188, v189, v190, v191, v232);
        v182 = v184;
      }
    }

    if (v181)
    {
      operator delete(v181);
    }

    ToUnicode::write_epilog(v15, v126, v127, v128, v129, v130, v131, v132, v228);
    v7 = v235;
    if (__p)
    {
      v238 = __p;
      operator delete(__p);
    }

    std::__tree<unsigned long>::destroy(v240[0]);
    if ((*(v15 + 56) & 1) == 0)
    {
      v192 = *(v15 + 12);
      if (v192)
      {
        v193 = *(v15 + 10);
        if (v193)
        {
          v193(*(v15 + 2));
          v192 = *(v15 + 12);
        }

        v192(*(v15 + 2));
        *(v15 + 56) = 1;
      }
    }

    CFRelease(v15);
    v194 = PDFStreamCreateWithObjectNumber(**(*v234 + 8), a2);
    PDFDocumentBeginObject(*v194, v194[1], v195, v196, v197, v198, v199, v200);
    PDFDocumentPrintf(*v194, "<<", v201, v202, v203, v204, v205, v206, v233);
    PDFStreamBeginData(v194);
    BytePtr = CFDataGetBytePtr(v235);
    Length = CFDataGetLength(v235);
    CGDataConsumerPutBytes(v194[3], BytePtr, Length);
    PDFStreamEndData(v194);
    PDFStreamEnd(v194);
    PDFStreamRelease(v194);
LABEL_73:

    CFRelease(v7);
    return;
  }

  while (1)
  {
    v139 = *(v136 + 13);
    LOWORD(v241) = *(v136 + 13);
    v236 = 0;
    if (Property)
    {
      LOWORD(v243) = 0;
      CIDsForGlyphs = CGFontGetCIDsForGlyphs(v133, &v241, 1, &v243);
      v127 = __p;
      if (CIDsForGlyphs)
      {
        if (v238 == __p)
        {
          goto LABEL_76;
        }

        v141 = *(Property[2] + 48);
        v142 = &v243;
        if (!v141)
        {
LABEL_16:
          unichars = 0;
LABEL_22:
          v144 = *v142;
          goto LABEL_23;
        }
      }

      else
      {
        if (v238 == __p)
        {
          goto LABEL_76;
        }

        v141 = *(Property[2] + 48);
        v142 = &v241;
        if (!v141)
        {
          goto LABEL_16;
        }
      }

      unichars = cmap_bf_set_get_unichars(*(v141 + 16), *v142, __p, v128, v129, v130, v131, v132);
      goto LABEL_22;
    }

    if (v238 == __p)
    {
      goto LABEL_76;
    }

    unichars = CGFontGetUnicharsForGlyph(v133, v139, __p);
    v144 = v241;
LABEL_23:
    v236 = v144;
    if (!unichars)
    {
      goto LABEL_33;
    }

    if (unichars != 1)
    {
      break;
    }

    if (v238 == __p)
    {
      goto LABEL_76;
    }

    v145 = *__p;
    *&v243 = &v236;
    *(std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v239, v144) + 14) = v145;
LABEL_33:
    v171 = v136[1];
    if (v171)
    {
      do
      {
        v172 = v171;
        v171 = *v171;
      }

      while (v171);
    }

    else
    {
      do
      {
        v172 = v136[2];
        v173 = *v172 == v136;
        v136 = v172;
      }

      while (!v173);
    }

    v136 = v172;
    if (v172 == v137)
    {
      goto LABEL_39;
    }
  }

  CGDataConsumerPrintf(v15, "1 beginbfchar\n", v127, v128, v129, v130, v131, v132, v228);
  CGDataConsumerPrintf(v15, "<%0*x>", v146, v147, v148, v149, v150, v151, 4);
  CGDataConsumerPrintf(v15, "<", v152, v153, v154, v155, v156, v157, v229);
  v164 = 0;
  while (1)
  {
    if (v164)
    {
      CGDataConsumerPrintf(v15, " ", v158, v159, v160, v161, v162, v163, v230);
    }

    if (v164 >= (v238 - __p) >> 1)
    {
      break;
    }

    CGDataConsumerPrintf(v15, "%04x", v158, v159, v160, v161, v162, v163, *(__p + v164++));
    if (unichars == v164)
    {
      CGDataConsumerPrintf(v15, ">\n", v158, v159, v160, v161, v162, v163, v230);
      CGDataConsumerPrintf(v15, "endbfchar\n", v165, v166, v167, v168, v169, v170, v231);
      goto LABEL_33;
    }
  }

LABEL_76:
  __break(1u);
}

void ToUnicode::write<std::vector<unsigned short>>(uint64_t a1, uint64_t a2, void *a3)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    return;
  }

  v7 = Mutable;
  v8 = CGDataConsumerCreateWithCFData(Mutable);
  if (!v8)
  {
    goto LABEL_64;
  }

  v15 = v8;
  CGDataConsumerPrintf(v8, "/CIDInit /ProcSet findresource begin\n", v9, v10, v11, v12, v13, v14, v191);
  CGDataConsumerPrintf(v15, "12 dict begin\n", v16, v17, v18, v19, v20, v21, v192);
  CGDataConsumerPrintf(v15, "begincmap\n", v22, v23, v24, v25, v26, v27, v193);
  CGDataConsumerPrintf(v15, "/CIDSystemInfo <<\n", v28, v29, v30, v31, v32, v33, v194);
  CGDataConsumerPrintf(v15, "  /Registry (Adobe)\n", v34, v35, v36, v37, v38, v39, v195);
  CGDataConsumerPrintf(v15, "  /Ordering (UCS)\n", v40, v41, v42, v43, v44, v45, v196);
  CGDataConsumerPrintf(v15, "  /Supplement 0\n", v46, v47, v48, v49, v50, v51, v197);
  CGDataConsumerPrintf(v15, ">> def\n", v52, v53, v54, v55, v56, v57, v198);
  CGDataConsumerPrintf(v15, "/CMapName /Adobe-Identity-UCS def\n", v58, v59, v60, v61, v62, v63, v199);
  CGDataConsumerPrintf(v15, "/CMapType 2 def\n", v64, v65, v66, v67, v68, v69, v200);
  CGDataConsumerPrintf(v15, "1 begincodespacerange\n", v70, v71, v72, v73, v74, v75, v201);
  CGDataConsumerPrintf(v15, "<", v76, v77, v78, v79, v80, v81, v202);
  CGDataConsumerPrintf(v15, "00", v82, v83, v84, v85, v86, v87, v203);
  CGDataConsumerPrintf(v15, "><", v88, v89, v90, v91, v92, v93, v204);
  CGDataConsumerPrintf(v15, "FF", v94, v95, v96, v97, v98, v99, v205);
  CGDataConsumerPrintf(v15, ">\n", v100, v101, v102, v103, v104, v105, v206);
  CGDataConsumerPrintf(v15, "endcodespacerange\n", v106, v107, v108, v109, v110, v111, v207);
  v219[0] = 0;
  v219[1] = 0;
  v218 = v219;
  v112 = *(*a1 + 16);
  if (v112)
  {
    get_unimap(v112);
    v113 = 256;
  }

  else
  {
    v113 = 0;
  }

  std::vector<unsigned short>::vector[abi:fe200100](&v216, v113);
  v119 = *(*a1 + 16);
  v214 = a2;
  v215 = v7;
  if (v119 && (explicit = atomic_load_explicit((v119 + 88), memory_order_acquire)) != 0)
  {
    Property = CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontToUnicodeCMap");
  }

  else
  {
    Property = 0;
  }

  for (i = 0; i != 256; ++i)
  {
    if (Property)
    {
      v123 = v216;
      if (v217 == v216)
      {
        goto LABEL_67;
      }

      v124 = *(Property[2] + 48);
      if (!v124)
      {
        continue;
      }

      unichars = cmap_bf_set_get_unichars(*(v124 + 16), i, v216, v114, v115, v116, v117, v118);
    }

    else
    {
      if (i >= (a3[1] - *a3) >> 1 || v217 == v216)
      {
        goto LABEL_67;
      }

      unichars = CGFontGetUnicharsForGlyph(*(*a1 + 16), *(*a3 + 2 * i), v216);
    }

    v126 = unichars;
    LOWORD(v220) = i;
    if (unichars)
    {
      if (unichars != 1)
      {
        CGDataConsumerPrintf(v15, "1 beginbfchar\n", v123, v114, v115, v116, v117, v118, v208);
        CGDataConsumerPrintf(v15, "<%0*x>", v128, v129, v130, v131, v132, v133, 2);
        CGDataConsumerPrintf(v15, "<", v134, v135, v136, v137, v138, v139, v209);
        v146 = 0;
        while (1)
        {
          if (v146)
          {
            CGDataConsumerPrintf(v15, " ", v140, v141, v142, v143, v144, v145, v210);
          }

          if (v146 >= (v217 - v216) >> 1)
          {
            break;
          }

          CGDataConsumerPrintf(v15, "%04x", v140, v141, v142, v143, v144, v145, v216[v146++]);
          if (v126 == v146)
          {
            CGDataConsumerPrintf(v15, ">\n", v140, v141, v142, v143, v144, v145, v210);
            CGDataConsumerPrintf(v15, "endbfchar\n", v147, v148, v149, v150, v151, v152, v211);
            goto LABEL_29;
          }
        }

LABEL_67:
        __break(1u);
        return;
      }

      if (v217 == v216)
      {
        goto LABEL_67;
      }

      v127 = *v216;
      *&v222 = &v220;
      *(std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v218, i) + 14) = v127;
    }

LABEL_29:
    ;
  }

  v223 = 0;
  v153 = 0uLL;
  v222 = 0u;
  v154 = v218;
  if (v218 != v219)
  {
    do
    {
      v155 = 0;
      v156 = *(v154 + 13);
      v157 = *(v154 + 14);
      v158 = v154;
      while (v156 + v155 == *(v158 + 13) && v157 + v155 == *(v158 + 14))
      {
        v159 = v158[1];
        if (v159)
        {
          do
          {
            v154 = v159;
            v159 = *v159;
          }

          while (v159);
        }

        else
        {
          do
          {
            v154 = v158[2];
            v160 = *v154 == v158;
            v158 = v154;
          }

          while (!v160);
        }

        ++v155;
        v158 = v154;
        if (v154 == v219)
        {
          goto LABEL_42;
        }
      }

      v154 = v158;
LABEL_42:
      LOWORD(v220) = v156;
      HIWORD(v220) = v155 + v156 - 1;
      v221 = v157;
      std::vector<ToUnicode::bfrange>::push_back[abi:fe200100](&v222, &v220);
    }

    while (v154 != v219);
    v153 = v222;
  }

  v161 = v153;
  v162 = "%d beginbfrange\n";
  v163 = v153;
  while (*(&v161 + 1) != v163)
  {
    v164 = 0;
    v165 = v163;
    do
    {
      v166 = v165;
      v165 += 6;
      if (v164 > 0x30)
      {
        break;
      }

      ++v164;
    }

    while (v165 != *(&v161 + 1));
    if (v163 != v165)
    {
      v167 = v162;
      CGDataConsumerPrintf(v15, v162, v123, v114, v115, v116, v117, v118, -85 * ((v165 - v163) >> 1));
      do
      {
        CGDataConsumerPrintf(v15, "<%0*x><%0*x><%04x>\n", v168, v169, v170, v171, v172, v173, 2);
        v160 = v163 == v166;
        v163 += 6;
      }

      while (!v160);
      CGDataConsumerPrintf(v15, "endbfrange\n", v168, v169, v170, v171, v172, v173, v212);
      v163 = v165;
      v162 = v167;
    }
  }

  if (v161)
  {
    operator delete(v161);
  }

  ToUnicode::write_epilog(v15, v162, v123, v114, v115, v116, v117, v118, v208);
  v7 = v215;
  if (v216)
  {
    v217 = v216;
    operator delete(v216);
  }

  std::__tree<unsigned long>::destroy(v219[0]);
  if ((*(v15 + 56) & 1) == 0)
  {
    v174 = *(v15 + 12);
    if (v174)
    {
      v175 = *(v15 + 10);
      if (v175)
      {
        v175(*(v15 + 2));
        v174 = *(v15 + 12);
      }

      v174(*(v15 + 2));
      *(v15 + 56) = 1;
    }
  }

  CFRelease(v15);
  v176 = PDFStreamCreateWithObjectNumber(**(*a1 + 8), v214);
  PDFDocumentBeginObject(*v176, v176[1], v177, v178, v179, v180, v181, v182);
  PDFDocumentPrintf(*v176, "<<", v183, v184, v185, v186, v187, v188, v213);
  PDFStreamBeginData(v176);
  BytePtr = CFDataGetBytePtr(v215);
  Length = CFDataGetLength(v215);
  CGDataConsumerPutBytes(v176[3], BytePtr, Length);
  PDFStreamEndData(v176);
  PDFStreamEnd(v176);
  PDFStreamRelease(v176);
LABEL_64:

  CFRelease(v7);
}

void *PDFEStateCreate(uint64_t a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x1072040C0E24D25uLL);
  __CFSetLastAllocationEventName();
  if (v4)
  {
    *v4 = 1;
    v4[1] = a1;
    v5 = strlen(a2);
    v6 = malloc_type_malloc(v5 + 1, 0x71DC07E5uLL);
    __CFSetLastAllocationEventName();
    v4[7] = v6;
    if (v6)
    {
      strcpy(v6, a2);
    }

    else
    {
      PDFEStateRelease(v4);
      return 0;
    }
  }

  return v4;
}

void PDFEStateRelease(void *a1)
{
  if (!a1)
  {
    return;
  }

  if ((*a1)-- != 1)
  {
    return;
  }

  v3 = *(a1 + 11);
  if (v3 > 4)
  {
    if (v3 != 5 && v3 != 6)
    {
      if (v3 == 7)
      {
        PDFClipMaskRelease(*(a1 + 6));
      }

      goto LABEL_14;
    }

LABEL_11:
    v4 = *(a1 + 6);
    if (v4)
    {
      CFRelease(v4);
    }

    goto LABEL_14;
  }

  if (v3 == 3)
  {
    free(*(a1 + 6));
  }

  else if (v3 == 4)
  {
    goto LABEL_11;
  }

LABEL_14:
  free(*(a1 + 7));

  free(a1);
}

uint64_t type4_op_abs(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) > 1)
  {
    v4 = &a1[2 * v1 - 2];
    *a1 = v1 - 1;
    v7 = *(v4 + 4);
    v5 = v4 + 2;
    v6 = v7;
    if (v7 == 258)
    {
      v9 = fabs(*(v5 + 1));
      *a1 = v1;
      *v5 = 258;
      *(v5 + 1) = v9;
    }

    else
    {
      if (v6 != 257)
      {
        v2 = 0;
        v3 = 2;
        goto LABEL_9;
      }

      v8 = *(v5 + 2);
      if (v8 == 0x80000000)
      {
        *a1 = v1;
        *v5 = 258;
        v5[1] = 0x41E0000000000000;
      }

      else
      {
        if (v8 < 0)
        {
          v8 = -v8;
        }

        *a1 = v1;
        *v5 = 257;
        *(v5 + 2) = v8;
      }
    }

    return 1;
  }

  v2 = 0;
  v3 = 4;
LABEL_9:
  *(a1 + 804) = v3;
  return v2;
}

uint64_t type4_op_add(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) >= 3)
  {
    *a1 = v2 - 1;
    if (type4_value_add(&a1[2 * v2 - 2], &a1[2 * v2 - 2], &a1[2 * v2]))
    {
      return 1;
    }

    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  result = 0;
  *(a1 + 804) = v3;
  return result;
}

uint64_t type4_op_atan(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) <= 2)
  {
    result = 0;
    v4 = 4;
LABEL_15:
    *(a1 + 804) = v4;
    return result;
  }

  v5 = v2 - 1;
  *a1 = v2 - 1;
  v6 = &a1[2 * v2];
  if (*v6 == 258)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    if (*v6 != 257)
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 8);
  }

  v8 = v2 - 2;
  *a1 = v8;
  v9 = &a1[2 * v8 + 2];
  if (*v9 == 258)
  {
    v10 = *(v9 + 8);
    goto LABEL_12;
  }

  if (*v9 != 257)
  {
LABEL_10:
    result = 0;
    v4 = 2;
    goto LABEL_15;
  }

  v10 = *(v9 + 8);
LABEL_12:
  if (v7 == 0.0 && v10 == 0.0)
  {
    result = 0;
    v4 = 5;
    goto LABEL_15;
  }

  v11 = atan2(v10, v7) * 180.0 / 3.14159265;
  if (v11 < 0.0)
  {
    v11 = v11 + 360.0;
  }

  *a1 = v5;
  *v9 = 258;
  *(v9 + 8) = v11;
  return 1;
}

uint64_t type4_op_ceiling(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 1)
  {
    v2 = 0;
    v3 = 4;
LABEL_9:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = &a1[2 * v1 - 2];
  *a1 = v1 - 1;
  v7 = *(v4 + 4);
  v5 = v4 + 2;
  v6 = v7;
  if (v7 == 258)
  {
    v8 = ceil(*(v5 + 1));
    *a1 = v1;
    *v5 = 258;
    *(v5 + 1) = v8;
  }

  else
  {
    if (v6 != 257)
    {
      v2 = 0;
      v3 = 2;
      goto LABEL_9;
    }

    *a1 = v1;
    *v5 = 257;
  }

  return 1;
}

uint64_t type4_op_cos(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 1)
  {
    v5 = &a1[2 * v2 - 2];
    *a1 = v2 - 1;
    v8 = *(v5 + 4);
    v7 = v5 + 2;
    v6 = v8;
    if (v8 == 258)
    {
      v9 = *(v7 + 1);
    }

    else
    {
      if (v6 != 257)
      {
        result = 0;
        v4 = 2;
        goto LABEL_9;
      }

      v9 = *(v7 + 2);
    }

    v10 = cos(v9 * 3.14159265 / 180.0);
    *a1 = v2;
    *v7 = 258;
    *(v7 + 1) = v10;
    return 1;
  }

  result = 0;
  v4 = 4;
LABEL_9:
  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_cvi(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) < 2)
  {
    LODWORD(result) = 4;
    goto LABEL_7;
  }

  v5 = 0;
  v4 = &a1[2 * v2 - 2];
  *a1 = v2 - 1;
  v6 = *(v4 + 1);
  *a1 = v2;
  if (!type4_value_cvi(v4 + 4, &v6, &v5))
  {
    LODWORD(result) = 2;
    goto LABEL_7;
  }

  result = 1;
  if (v5 == 1)
  {
LABEL_7:
    *(a1 + 804) = result;
    return 0;
  }

  return result;
}

uint64_t type4_op_cvr(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) < 2)
  {
    v2 = 4;
LABEL_9:
    v8 = 0;
    *(a1 + 804) = v2;
    return v8;
  }

  v3 = &a1[2 * v1 - 2];
  *a1 = v1 - 1;
  v5 = *(v3 + 4);
  v6 = *(v3 + 5);
  v4 = v3 + 2;
  v7 = v4[1];
  *a1 = v1;
  if (v5 == 258)
  {
    *v4 = 258;
    *(v4 + 1) = v6;
    v4[1] = v7;
  }

  else
  {
    if (v5 != 257)
    {
      v2 = 2;
      goto LABEL_9;
    }

    *v4 = 258;
    *(v4 + 1) = v7;
  }

  return 1;
}

uint64_t type4_op_div(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 2)
  {
    v2 = 0;
    v3 = 4;
    goto LABEL_14;
  }

  v4 = v1 - 1;
  *a1 = v1 - 1;
  v5 = &a1[2 * v1];
  if (*v5 == 258)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    if (*v5 != 257)
    {
      goto LABEL_10;
    }

    v6 = *(v5 + 8);
  }

  v7 = v1 - 2;
  *a1 = v7;
  v8 = &a1[2 * v7 + 2];
  if (*v8 == 258)
  {
    v9 = *(v8 + 8);
    goto LABEL_12;
  }

  if (*v8 != 257)
  {
LABEL_10:
    v2 = 0;
    v3 = 2;
    goto LABEL_14;
  }

  v9 = *(v8 + 8);
LABEL_12:
  if (v6 != 0.0)
  {
    *a1 = v4;
    *v8 = 258;
    *(v8 + 8) = v9 / v6;
    return 1;
  }

  v2 = 0;
  v3 = 5;
LABEL_14:
  *(a1 + 804) = v3;
  return v2;
}

uint64_t type4_op_exp(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) <= 2)
  {
    result = 0;
    v4 = 4;
LABEL_15:
    *(a1 + 804) = v4;
    return result;
  }

  v5 = v2 - 1;
  *a1 = v2 - 1;
  v6 = &a1[2 * v2];
  if (*v6 == 258)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    if (*v6 != 257)
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 8);
  }

  v8 = v2 - 2;
  *a1 = v8;
  v9 = &a1[2 * v8 + 2];
  if (*v9 == 258)
  {
    v10 = *(v9 + 8);
    goto LABEL_12;
  }

  if (*v9 != 257)
  {
LABEL_10:
    result = 0;
    v4 = 2;
    goto LABEL_15;
  }

  v10 = *(v9 + 8);
LABEL_12:
  if (v10 < 0.0 && modf(v7, &__y) != 0.0)
  {
    result = 0;
    v4 = 5;
    goto LABEL_15;
  }

  v11 = pow(v10, v7);
  *a1 = v5;
  *v9 = 258;
  *(v9 + 8) = v11;
  return 1;
}

uint64_t type4_op_floor(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 1)
  {
    v2 = 0;
    v3 = 4;
LABEL_9:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = &a1[2 * v1 - 2];
  *a1 = v1 - 1;
  v7 = *(v4 + 4);
  v5 = v4 + 2;
  v6 = v7;
  v8 = *(v5 + 1);
  if (v7 == 258)
  {
    *a1 = v1;
    *v5 = 258;
    *(v5 + 1) = floor(v8);
  }

  else
  {
    if (v6 != 257)
    {
      v2 = 0;
      v3 = 2;
      goto LABEL_9;
    }

    *a1 = v1;
    *v5 = 257;
    *(v5 + 2) = LODWORD(v8);
  }

  return 1;
}

uint64_t type4_op_idiv(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 2)
  {
    v2 = 0;
    v3 = 4;
LABEL_8:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = v1 - 1;
  *a1 = v1 - 1;
  v5 = &a1[2 * v1];
  if (*v5 != 257 || (v6 = *(v5 + 2), v7 = v1 - 2, *a1 = v7, v8 = &a1[2 * v7 + 2], *v8 != 257))
  {
    v2 = 0;
    v3 = 2;
    goto LABEL_8;
  }

  if (!v6)
  {
    v2 = 0;
    v3 = 5;
    goto LABEL_8;
  }

  v9 = *(v8 + 2) / v6;
  *a1 = v4;
  *v8 = 257;
  *(v8 + 2) = v9;
  return 1;
}

uint64_t type4_op_ln(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 1)
  {
    v5 = &a1[2 * v2 - 2];
    *a1 = v2 - 1;
    v8 = *(v5 + 4);
    v7 = v5 + 2;
    v6 = v8;
    if (v8 == 258)
    {
      v9 = *(v7 + 1);
    }

    else
    {
      if (v6 != 257)
      {
        result = 0;
        v4 = 2;
        goto LABEL_11;
      }

      v9 = *(v7 + 2);
    }

    if (v9 >= 0.0)
    {
      v10 = log(v9);
      *a1 = v2;
      *v7 = 258;
      *(v7 + 1) = v10;
      return 1;
    }

    result = 0;
    v4 = 1;
  }

  else
  {
    result = 0;
    v4 = 4;
  }

LABEL_11:
  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_log(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 1)
  {
    v5 = &a1[2 * v2 - 2];
    *a1 = v2 - 1;
    v8 = *(v5 + 4);
    v7 = v5 + 2;
    v6 = v8;
    if (v8 == 258)
    {
      v9 = *(v7 + 1);
    }

    else
    {
      if (v6 != 257)
      {
        result = 0;
        v4 = 2;
        goto LABEL_11;
      }

      v9 = *(v7 + 2);
    }

    if (v9 >= 0.0)
    {
      v10 = log10(v9);
      *a1 = v2;
      *v7 = 258;
      *(v7 + 1) = v10;
      return 1;
    }

    result = 0;
    v4 = 1;
  }

  else
  {
    result = 0;
    v4 = 4;
  }

LABEL_11:
  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_mod(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 2)
  {
    v2 = 0;
    v3 = 4;
LABEL_8:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = v1 - 1;
  *a1 = v1 - 1;
  v5 = &a1[2 * v1];
  if (*v5 != 257 || (v6 = *(v5 + 2), v7 = v1 - 2, *a1 = v7, v8 = &a1[2 * v7 + 2], *v8 != 257))
  {
    v2 = 0;
    v3 = 2;
    goto LABEL_8;
  }

  if (!v6)
  {
    v2 = 0;
    v3 = 5;
    goto LABEL_8;
  }

  v9 = *(v8 + 2);
  *a1 = v4;
  *v8 = 257;
  *(v8 + 2) = v9 % v6;
  return 1;
}

uint64_t type4_op_mul(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) >= 3)
  {
    *a1 = v2 - 1;
    if (type4_value_mul(&a1[2 * v2 - 2], &a1[2 * v2 - 2], &a1[2 * v2]))
    {
      return 1;
    }

    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  result = 0;
  *(a1 + 804) = v3;
  return result;
}

uint64_t type4_op_neg(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) > 1)
  {
    v4 = &a1[2 * v1 - 2];
    *a1 = v1 - 1;
    v7 = *(v4 + 4);
    v5 = v4 + 2;
    v6 = v7;
    if (v7 == 258)
    {
      v9 = -*(v5 + 1);
      *a1 = v1;
      *v5 = 258;
      *(v5 + 1) = v9;
    }

    else
    {
      if (v6 != 257)
      {
        v2 = 0;
        v3 = 2;
        goto LABEL_9;
      }

      v8 = *(v5 + 2);
      *a1 = v1;
      if (v8 == 0x80000000)
      {
        *v5 = 258;
        v5[1] = 0x41E0000000000000;
      }

      else
      {
        *v5 = 257;
        *(v5 + 2) = -v8;
      }
    }

    return 1;
  }

  v2 = 0;
  v3 = 4;
LABEL_9:
  *(a1 + 804) = v3;
  return v2;
}

uint64_t type4_op_round(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 1)
  {
    v2 = 0;
    v3 = 4;
LABEL_9:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = &a1[2 * v1 - 2];
  *a1 = v1 - 1;
  v7 = *(v4 + 4);
  v5 = v4 + 2;
  v6 = v7;
  if (v7 == 258)
  {
    v8 = round(*(v5 + 1));
    *a1 = v1;
    *v5 = 258;
    *(v5 + 1) = v8;
  }

  else
  {
    if (v6 != 257)
    {
      v2 = 0;
      v3 = 2;
      goto LABEL_9;
    }

    *a1 = v1;
    *v5 = 257;
  }

  return 1;
}

uint64_t type4_op_sin(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 1)
  {
    v5 = &a1[2 * v2 - 2];
    *a1 = v2 - 1;
    v8 = *(v5 + 4);
    v7 = v5 + 2;
    v6 = v8;
    if (v8 == 258)
    {
      v9 = *(v7 + 1);
    }

    else
    {
      if (v6 != 257)
      {
        result = 0;
        v4 = 2;
        goto LABEL_9;
      }

      v9 = *(v7 + 2);
    }

    v10 = sin(v9 * 3.14159265 / 180.0);
    *a1 = v2;
    *v7 = 258;
    *(v7 + 1) = v10;
    return 1;
  }

  result = 0;
  v4 = 4;
LABEL_9:
  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_sqrt(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 1)
  {
    v2 = 0;
    v3 = 4;
LABEL_11:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = &a1[2 * v1 - 2];
  *a1 = v1 - 1;
  v7 = *(v4 + 4);
  v5 = v4 + 2;
  v6 = v7;
  if (v7 == 258)
  {
    v8 = *(v5 + 1);
  }

  else
  {
    if (v6 != 257)
    {
      v2 = 0;
      v3 = 2;
      goto LABEL_11;
    }

    v8 = *(v5 + 2);
  }

  if (v8 < 0.0)
  {
    v2 = 0;
    v3 = 1;
    goto LABEL_11;
  }

  *a1 = v1;
  *v5 = 258;
  *(v5 + 1) = sqrt(v8);
  return 1;
}

uint64_t type4_op_sub(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) >= 3)
  {
    *a1 = v2 - 1;
    if (type4_value_sub(&a1[2 * v2 - 2], &a1[2 * v2 - 2], &a1[2 * v2]))
    {
      return 1;
    }

    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  result = 0;
  *(a1 + 804) = v3;
  return result;
}

uint64_t type4_op_truncate(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 1)
  {
    v5 = &a1[2 * v2 - 2];
    *a1 = v2 - 1;
    v8 = *(v5 + 4);
    v7 = v5 + 2;
    v6 = v8;
    if (v8 == 258)
    {
      __y = 0.0;
      modf(*(v7 + 1), &__y);
      v9 = __y;
      *a1 = v2;
      *v7 = 258;
      *(v7 + 1) = v9;
    }

    else
    {
      if (v6 != 257)
      {
        result = 0;
        v4 = 2;
        goto LABEL_9;
      }

      *a1 = v2;
      *v7 = 257;
    }

    return 1;
  }

  result = 0;
  v4 = 4;
LABEL_9:
  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_and(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) > 2)
  {
    v4 = v1 - 1;
    v5 = v1 - 2;
    *a1 = v5;
    v6 = &a1[2 * v4 + 2];
    v7 = &a1[2 * v5 + 2];
    if (*v7 == 257)
    {
      if (*v6 == 257)
      {
        v9 = v6[1] & v7[1];
        *a1 = v4;
        *v7 = 257;
        *(v7 + 2) = v9;
        return 1;
      }
    }

    else if (*v7 == 256 && *v6 == 256)
    {
      if (*(v7 + 8) == 1)
      {
        v8 = *(v6 + 8);
      }

      else
      {
        v8 = 0;
      }

      *a1 = v4;
      *v7 = 256;
      *(v7 + 8) = v8 & 1;
      return 1;
    }

    v2 = 0;
    v3 = 2;
    goto LABEL_11;
  }

  v2 = 0;
  v3 = 4;
LABEL_11:
  *(a1 + 804) = v3;
  return v2;
}

uint64_t type4_op_bitshift(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 2)
  {
    v2 = 0;
    v3 = 4;
LABEL_8:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = v1 - 1;
  *a1 = v1 - 1;
  v5 = &a1[2 * v1];
  if (*v5 != 257 || (v6 = *(v5 + 2), v7 = v1 - 2, *a1 = v7, v8 = &a1[2 * v7 + 2], *v8 != 257))
  {
    v2 = 0;
    v3 = 2;
    goto LABEL_8;
  }

  v9 = *(v8 + 2);
  if (v6 < 0)
  {
    v10 = v9 >> -v6;
  }

  else
  {
    v10 = v9 << v6;
  }

  *a1 = v4;
  *v8 = 257;
  *(v8 + 2) = v10;
  return 1;
}

uint64_t type4_op_eq(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 2)
  {
    v5 = v2 - 1;
    v6 = v2 - 2;
    *a1 = v6;
    v7 = &a1[2 * v6 + 2];
    if (type4_value_equal(v7, &a1[2 * v5 + 2]))
    {
      *a1 = v5;
      *v7 = 256;
      *(v7 + 8) = 0;
      return 1;
    }

    result = 0;
    v4 = 2;
  }

  else
  {
    result = 0;
    v4 = 4;
  }

  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_ge(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 2)
  {
    v9 = 0;
    v5 = v2 - 1;
    v6 = v2 - 2;
    *a1 = v6;
    v7 = &a1[2 * v6 + 2];
    if (type4_value_compare(&v9, v7, &a1[2 * v5 + 2]))
    {
      v8 = v9;
      *a1 = v5;
      *v7 = 256;
      *(v7 + 8) = v8 >= 0;
      return 1;
    }

    result = 0;
    v4 = 2;
  }

  else
  {
    result = 0;
    v4 = 4;
  }

  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_gt(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 2)
  {
    v9 = 0;
    v5 = v2 - 1;
    v6 = v2 - 2;
    *a1 = v6;
    v7 = &a1[2 * v6 + 2];
    if (type4_value_compare(&v9, v7, &a1[2 * v5 + 2]))
    {
      v8 = v9 > 0;
      *a1 = v5;
      *v7 = 256;
      *(v7 + 8) = v8;
      return 1;
    }

    result = 0;
    v4 = 2;
  }

  else
  {
    result = 0;
    v4 = 4;
  }

  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_le(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 2)
  {
    v9 = 0;
    v5 = v2 - 1;
    v6 = v2 - 2;
    *a1 = v6;
    v7 = &a1[2 * v6 + 2];
    if (type4_value_compare(&v9, v7, &a1[2 * v5 + 2]))
    {
      v8 = v9 < 1;
      *a1 = v5;
      *v7 = 256;
      *(v7 + 8) = v8;
      return 1;
    }

    result = 0;
    v4 = 2;
  }

  else
  {
    result = 0;
    v4 = 4;
  }

  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_lt(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 2)
  {
    v9 = 0;
    v5 = v2 - 1;
    v6 = v2 - 2;
    *a1 = v6;
    v7 = &a1[2 * v6 + 2];
    if (type4_value_compare(&v9, v7, &a1[2 * v5 + 2]))
    {
      v8 = v9;
      *a1 = v5;
      *v7 = 256;
      *(v7 + 8) = v8 < 0;
      return 1;
    }

    result = 0;
    v4 = 2;
  }

  else
  {
    result = 0;
    v4 = 4;
  }

  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_ne(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 + 1) > 2)
  {
    v5 = v2 - 1;
    v6 = v2 - 2;
    *a1 = v6;
    v7 = &a1[2 * v6 + 2];
    if (type4_value_equal(v7, &a1[2 * v5 + 2]))
    {
      *a1 = v5;
      *v7 = 256;
      result = 1;
      *(v7 + 8) = 1;
      return result;
    }

    result = 0;
    v4 = 2;
  }

  else
  {
    result = 0;
    v4 = 4;
  }

  *(a1 + 804) = v4;
  return result;
}

uint64_t type4_op_not(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 1)
  {
    v2 = 0;
    v3 = 4;
LABEL_9:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = &a1[2 * v1 - 2];
  *a1 = v1 - 1;
  v7 = *(v4 + 4);
  v5 = v4 + 2;
  v6 = v7;
  if (v7 == 257)
  {
    v9 = ~v5[2];
    *a1 = v1;
    *v5 = 257;
    v5[2] = v9;
  }

  else
  {
    if (v6 != 256)
    {
      v2 = 0;
      v3 = 2;
      goto LABEL_9;
    }

    v8 = *(v5 + 8) ^ 1;
    *a1 = v1;
    *v5 = 256;
    *(v5 + 8) = v8;
  }

  return 1;
}

uint64_t type4_op_or(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) > 2)
  {
    v4 = v1 - 1;
    v5 = v1 - 2;
    *a1 = v5;
    v6 = &a1[2 * v4 + 2];
    v7 = &a1[2 * v5 + 2];
    if (*v7 == 257)
    {
      if (*v6 == 257)
      {
        v9 = *(v6 + 2) | *(v7 + 2);
        *a1 = v4;
        *v7 = 257;
        *(v7 + 2) = v9;
        return 1;
      }
    }

    else if (*v7 == 256 && *v6 == 256)
    {
      if (v7[1])
      {
        v8 = 1;
      }

      else
      {
        v8 = *(v6 + 8);
      }

      *a1 = v4;
      *v7 = 256;
      *(v7 + 8) = v8 & 1;
      return 1;
    }

    v2 = 0;
    v3 = 2;
    goto LABEL_11;
  }

  v2 = 0;
  v3 = 4;
LABEL_11:
  *(a1 + 804) = v3;
  return v2;
}

uint64_t type4_op_xor(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 2)
  {
    v2 = 0;
    v3 = 4;
LABEL_11:
    *(a1 + 804) = v3;
    return v2;
  }

  v4 = v1 - 1;
  v5 = v1 - 2;
  *a1 = v5;
  v6 = &a1[2 * v4 + 2];
  v7 = &a1[2 * v5 + 2];
  if (*v7 == 257)
  {
    if (*v6 == 257)
    {
      v9 = *(v6 + 2) ^ *(v7 + 2);
      *a1 = v4;
      *v7 = 257;
      *(v7 + 2) = v9;
      return 1;
    }

LABEL_10:
    v2 = 0;
    v3 = 2;
    goto LABEL_11;
  }

  if (*v7 != 256 || *v6 != 256)
  {
    goto LABEL_10;
  }

  v8 = *(v7 + 8) != *(v6 + 8);
  *a1 = v4;
  *v7 = 256;
  *(v7 + 8) = v8;
  return 1;
}

uint64_t type4_op_if (uint64_t a1)
{
  v2 = *a1;
  if ((*a1 + 1) <= 2)
  {
    result = 0;
    v4 = 4;
LABEL_8:
    *(a1 + 3216) = v4;
    return result;
  }

  *a1 = v2 - 1;
  v5 = a1 + 16 + 16 * (v2 - 1);
  if (*v5 != 259 || (v6 = *(v5 + 8), v7 = v2 - 2, *a1 = v7, v8 = a1 + 16 + 16 * v7, *v8 != 256))
  {
    result = 0;
    v4 = 2;
    goto LABEL_8;
  }

  if (*(v8 + 8) == 1)
  {
    return type4_program_execute(v6, a1);
  }

  else
  {
    return 1;
  }
}

uint64_t type4_op_ifelse(uint64_t a1)
{
  v2 = *a1;
  if ((*a1 + 1) <= 3)
  {
    v3 = 4;
LABEL_10:
    *(a1 + 3216) = v3;
    return 0;
  }

  *a1 = v2 - 1;
  v4 = a1 + 16;
  v5 = a1 + 16 + 16 * (v2 - 1);
  if (*v5 != 259 || (v6 = *(v5 + 8), *a1 = v2 - 2, v7 = v4 + 16 * (v2 - 2), *v7 != 259) || (v8 = *(v7 + 8), v9 = v2 - 3, *a1 = v9, v10 = v4 + 16 * v9, *v10 != 256))
  {
    v3 = 2;
    goto LABEL_10;
  }

  if (*(v10 + 8) == 1)
  {
    v6 = v8;
  }

  return type4_program_execute(v6, a1);
}

uint64_t type4_op_copy(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 + 1) < 2)
  {
    goto LABEL_2;
  }

  *a1 = v1 - 1;
  v3 = (a1 + 16 + 16 * (v1 - 1));
  if (*v3 != 257)
  {
    v2 = 2;
    goto LABEL_11;
  }

  v4 = v3[2];
  if ((v4 & 0x80000000) != 0)
  {
    v2 = 1;
    goto LABEL_11;
  }

  if (!v4)
  {
    return 1;
  }

  if (v1 < v4 + 1)
  {
LABEL_2:
    v2 = 4;
LABEL_11:
    v5 = 0;
    *(a1 + 3216) = v2;
    return v5;
  }

  if (v1 - 1 + v4 > 0xC8)
  {
    v2 = 3;
    goto LABEL_11;
  }

  v7 = -v4;
  do
  {
    v8 = *a1;
    v9 = *a1 + v7;
    ++*a1;
    *(a1 + 16 + 16 * v8) = *(a1 + 16 + 16 * v9);
    v5 = 1;
    LODWORD(v4) = v4 - 1;
  }

  while (v4);
  return v5;
}

uint64_t type4_op_dup(uint64_t a1)
{
  v1 = *a1 + 1;
  if (v1 > 1)
  {
    if (v1 < 0xC9)
    {
      v4 = (a1 + 16 * *a1);
      *a1 = v1;
      v4[1] = *v4;
      return 1;
    }

    v2 = 0;
    v3 = 3;
  }

  else
  {
    v2 = 0;
    v3 = 4;
  }

  *(a1 + 3216) = v3;
  return v2;
}

BOOL type4_op_exch(uint64_t a1)
{
  v1 = *a1 - 2;
  if (v1 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    *(a1 + 3216) = 4;
  }

  else
  {
    v2 = *a1 - 1;
    *a1 = v2;
    v3 = *(a1 + 16 + 16 * v2);
    *a1 = v1;
    v4 = *(a1 + 16 + 16 * v1);
    *a1 = v2;
    *(a1 + 16 + 16 * v1) = v3;
    v5 = (*a1)++;
    *(a1 + 16 + 16 * v5) = v4;
  }

  return v1 < 0xFFFFFFFFFFFFFFFDLL;
}

uint64_t type4_op_index(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 + 1) <= 1)
  {
    goto LABEL_2;
  }

  *a1 = v1 - 1;
  v4 = (a1 + 16 + 16 * (v1 - 1));
  if (*v4 != 257)
  {
    v2 = 0;
    v3 = 2;
    goto LABEL_9;
  }

  v5 = v4[2];
  if ((v5 & 0x80000000) != 0)
  {
    v2 = 0;
    v3 = 1;
    goto LABEL_9;
  }

  if (v1 < v5 + 2)
  {
LABEL_2:
    v2 = 0;
    v3 = 4;
LABEL_9:
    *(a1 + 3216) = v3;
    return v2;
  }

  *a1 = v1;
  *v4 = *(a1 + 16 + 16 * (v1 - 1 + ~v5));
  return 1;
}

BOOL type4_op_pop(uint64_t a1)
{
  v1 = *a1 - 1;
  if (v1 >= 0xFFFFFFFFFFFFFFFELL)
  {
    *(a1 + 3216) = 4;
  }

  else
  {
    *a1 = v1;
  }

  return v1 < 0xFFFFFFFFFFFFFFFELL;
}

uint64_t type4_op_roll(uint64_t *a1)
{
  v28[401] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if ((*a1 + 1) > 2)
  {
    v4 = v1 - 1;
    *a1 = v1 - 1;
    v5 = a1 + 2;
    v6 = &a1[2 * v1];
    if (*v6 != 257 || (v7 = *(v6 + 2), v8 = v1 - 2, *a1 = v8, v9 = &v5[2 * v8], *v9 != 257))
    {
      v2 = 0;
      v3 = 2;
      goto LABEL_22;
    }

    v10 = *(v9 + 2);
    if (v10 <= 0)
    {
      v2 = 0;
      v3 = 1;
      goto LABEL_22;
    }

    if (v4 >= v10 + 1)
    {
      if (v10 == 1)
      {
        return 1;
      }

      if (v7 <= -v10 || v7 >= v10)
      {
        v7 %= v10;
      }

      v12 = v10 & (v7 >> 31);
      v13 = (v12 + v7);
      if (!(v12 + v7))
      {
        return 1;
      }

      v14 = &v5[2 * (v8 - v10)];
      if (v13 <= (v10 >> 1))
      {
        v20 = v10 - v13;
        if (v13 >= 1)
        {
          v21 = v28;
          v22 = v10 - v13;
          v23 = v13;
          do
          {
            *v21++ = *&v14[16 * v22++];
            --v23;
          }

          while (v23);
        }

        if (v20 >= 1)
        {
          v24 = -v20;
          v25 = v10 - 1;
          v26 = v10 - 1 - v13;
          do
          {
            *&v14[16 * v25--] = *&v14[16 * v26--];
          }

          while (!__CFADD__(v24++, 1));
        }

        if (v13 < 1)
        {
          return 1;
        }

        v17 = 16 * (v13 - 1) + 16;
        v18 = v14;
      }

      else
      {
        if (v10 - v13 >= 1)
        {
          memcpy(v28, v14, 16 * (v10 + ~v13) + 16);
        }

        v15 = v14;
        v16 = v13;
        do
        {
          *v15 = *(v15 + 16 * v10 - 16 * v13);
          ++v15;
          --v16;
        }

        while (v16);
        if (v10 - v13 < 1)
        {
          return 1;
        }

        v17 = 16 * (v10 - v13);
        v18 = &v14[16 * v13];
      }

      memcpy(v18, v28, v17);
      return 1;
    }
  }

  v2 = 0;
  v3 = 4;
LABEL_22:
  *(a1 + 804) = v3;
  return v2;
}

CGPDFStringRef CGPDFNameTreeGetValue(CGPDFDictionary *a1, uint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  value_in_kid = get_value_in_kid(a1, a2, v7);
  if (!value_in_kid)
  {
    if (a2)
    {
      if (*(a2 + 24))
      {
        decrypt_string(a2);
        v4 = *(a2 + 72);
        if (*(a2 + 24))
        {
          decrypt_string(a2);
        }
      }

      else
      {
        v4 = *(a2 + 72);
      }

      v5 = (a2 + 80);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v7);
  return value_in_kid;
}

void sub_18408FE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

CGPDFStringRef get_value_in_kid(CGPDFDictionary *a1, size_t *a2, void *a3)
{
  v30 = 0;
  dict = a1;
  array = 0;
  if (CGPDFDictionaryGetArray(a1, "Names", &array))
  {
    v6 = array;
    if (!array)
    {
      return 0;
    }

    v7 = *(array + 3) - *(array + 2);
    if ((v7 & 8) == 0)
    {
      v8 = v7 >> 3;
      if ((v7 >> 3) < 2)
      {
        return 0;
      }

      v9 = 0;
      __s1 = 0;
      value = 0;
      while (1)
      {
        v10 = v9 + (v8 >> 2);
        if (!CGPDFArrayGetString(v6, 2 * v10, &value))
        {
          break;
        }

        v11 = string_compare(a2, value);
        if (!v11)
        {
          if (!CGPDFArrayGetObject(v6, (2 * v10) | 1, &__s1))
          {
            break;
          }

          return __s1;
        }

        v12 = v8 >> 1;
        v13 = v11 > 0;
        if (v11 > 0)
        {
          v9 = v10 + 1;
        }

        v8 = v12 - v13;
        if (v12 - v13 <= 1)
        {
          return 0;
        }
      }
    }

    pdf_error("invalid name table: invalid /Names entry.");
    return 0;
  }

  if (CGPDFDictionaryGetArray(a1, "Kids", &v30))
  {
    if (!v30)
    {
      return 0;
    }

    v14 = *(v30 + 3) - *(v30 + 2);
    if (!v14)
    {
      return 0;
    }

    v15 = 0;
    v16 = v14 >> 3;
    while (1)
    {
      if (!CGPDFArrayGetDictionary(v30, v15, &dict))
      {
        pdf_error("missing or invalid name table dictionary.");
        return 0;
      }

      v17 = a3[1];
      if (v17)
      {
        v18 = 0x9DDFEA08EB382D69 * ((8 * (dict & 0x1FFFFFFF) + 8) ^ (dict >> 32));
        v19 = 0x9DDFEA08EB382D69 * ((dict >> 32) ^ (v18 >> 47) ^ v18);
        v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
        v21 = vcnt_s8(v17);
        v21.i16[0] = vaddlv_u8(v21);
        if (v21.u32[0] > 1uLL)
        {
          v22 = v20;
          if (v20 >= *&v17)
          {
            v22 = v20 % *&v17;
          }
        }

        else
        {
          v22 = v20 & (*&v17 - 1);
        }

        v23 = *(*a3 + 8 * v22);
        if (v23)
        {
          for (i = *v23; i; i = *i)
          {
            v25 = i[1];
            if (v25 == v20)
            {
              if (i[2] == dict)
              {
                pdf_error("cycle in name tree.");
                return 0;
              }
            }

            else
            {
              if (v21.u32[0] > 1uLL)
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

              if (v25 != v22)
              {
                break;
              }
            }
          }
        }
      }

      __s1 = 0;
      value = 0;
      v32 = 0;
      v26 = CGPDFDictionaryGetArray(dict, "Limits", &value);
      v27 = "invalid name table: missing /Limits entry.";
      if (!v26)
      {
        goto LABEL_42;
      }

      if (!value || *(value + 3) - *(value + 2) != 16 || !CGPDFArrayGetString(value, 0, &__s1) || !CGPDFArrayGetString(value, 1uLL, &v32))
      {
        break;
      }

      if (string_compare(__s1, a2) < 1 && string_compare(a2, v32) <= 0)
      {
        std::__hash_table<CGPDFDictionary *,std::hash<CGPDFDictionary *>,std::equal_to<CGPDFDictionary *>,std::allocator<CGPDFDictionary *>>::__emplace_unique_key_args<CGPDFDictionary *,CGPDFDictionary * const&>(a3, dict);
        return get_value_in_kid(dict, a2, a3);
      }

LABEL_43:
      result = 0;
      if (++v15 == v16)
      {
        return result;
      }
    }

    v27 = "invalid name table: invalid /Limits entry.";
LABEL_42:
    pdf_error(v27);
    goto LABEL_43;
  }

  pdf_error("invalid name table: no /Kids or /Names entry.");
  return 0;
}

uint64_t string_compare(size_t *__s1, CGPDFString *a2)
{
  v3 = __s1;
  if (__s1)
  {
    if (__s1[3])
    {
      decrypt_string(__s1);
      v4 = *(v3 + 9);
      if (*(v3 + 3))
      {
        decrypt_string(v3);
      }
    }

    else
    {
      v4 = __s1[9];
    }

    v3 = (v3 + 80);
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_6:
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  v4 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (*(a2 + 3))
  {
    decrypt_string(a2);
    v5 = *(a2 + 9);
    if (*(a2 + 3))
    {
      decrypt_string(a2);
    }
  }

  else
  {
    v5 = *(a2 + 9);
  }

  v6 = a2 + 80;
LABEL_14:
  if (v4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 < v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v4 > v5;
  }

  LODWORD(result) = memcmp(v3, v6, v7);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t std::__hash_table<CGPDFDictionary *,std::hash<CGPDFDictionary *>,std::equal_to<CGPDFDictionary *>,std::allocator<CGPDFDictionary *>>::__emplace_unique_key_args<CGPDFDictionary *,CGPDFDictionary * const&>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

void CGPDFGStateSynchronizeContextForText(uint64_t a1, CGContextRef c)
{
  if (!a1 || !c)
  {
    return;
  }

  CGContextSetAlpha(c, 1.0);
  v16.width = 0.0;
  v16.height = 0.0;
  CGContextSetPatternPhase(c, v16);
  v4 = *(a1 + 128);
  if (v4 <= 6)
  {
    if (((1 << v4) & 0x11) != 0)
    {
      MappedFillColor = CGPDFGStateGetMappedFillColor(a1);
      CGContextSetFillColorWithColor(c, MappedFillColor);
      goto LABEL_11;
    }

    if (((1 << v4) & 0x22) != 0)
    {
      goto LABEL_8;
    }

    if (((1 << v4) & 0x44) != 0)
    {
      v5 = CGPDFGStateGetMappedFillColor(a1);
      CGContextSetFillColorWithColor(c, v5);
LABEL_8:
      MappedStrokeColor = CGPDFGStateGetMappedStrokeColor(a1);
      CGContextSetStrokeColorWithColor(c, MappedStrokeColor);
      CGPDFGStateSynchronizeStroke(a1, c);
    }
  }

LABEL_11:
  CGPDFGStateSynchronizeColorRendering(a1, c);
  CGPDFGStateSynchronizeRendering(a1, c, v8, v9, v10, v11, v12, v13);
  v14 = *(a1 + 128);
  if (v14 <= 7)
  {
    CGContextSetTextDrawingMode(c, dword_184564550[v14]);
  }

  CGContextSetFontSize(c, 1.0);
}

void CGPDFGStateSynchronizeForImages(uint64_t a1, CGContextRef c)
{
  if (a1 && c)
  {
    CGContextSetAlpha(c, *(a1 + 216));
    v11.width = 0.0;
    v11.height = 0.0;
    CGContextSetPatternPhase(c, v11);
    CGPDFGStateSynchronizeColorRendering(a1, c);

    CGPDFGStateSynchronizeRendering(a1, c, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t __CGStyleFilterContextDelegateCreate(const void *a1)
{
  v2 = ripc_Initialize();
  Filter = CGContextDelegateCreateFilter(v2, a1, v3, v4, v5, v6, v7, v8);
  v17 = Filter;
  if (Filter)
  {
    *(Filter + 24) = rips_Finalize;
    v18 = &off_1EF239788;
    *(Filter + 32) = rips_GetColorTransform;
    v19 = 7;
    do
    {
      v20 = *(v18 - 2);
      if (!a1 || (v21 = get_callback_address(a1, *(v18 - 2), "CGContextDelegateImplementsCallback", v12, v13, v14, v15, v16)) != 0 && *v21)
      {
        v22 = *v18;
        callback_address = get_callback_address(v17, v20, "CGContextDelegateSetCallback", v12, v13, v14, v15, v16);
        if (callback_address)
        {
          *callback_address = v22;
        }
      }

      v18 += 2;
      --v19;
    }

    while (v19);
  }

  else
  {
    CGPostError("Failed to create style context delegate", v10, v11, v12, v13, v14, v15, v16, v25);
    if (*v2)
    {
      CFRelease(*v2);
    }
  }

  return v17;
}

uint64_t rips_DrawDisplayList(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v140 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = *(*(a3 + 120) + 16);
    if (v8)
    {
      v9 = 0;
LABEL_6:
      memset(v111, 0, sizeof(v111));
      v10 = rips_Acquire(v9, a2, v8, v111);
      if (!v10)
      {
        CFRetain(v8);
        v15 = 512;
        goto LABEL_43;
      }

      if (*v9)
      {
        v11 = *(*v9 + 288);
      }

      else
      {
        v11 = 0;
      }

      v122 = 0u;
      v123 = 0u;
      v121 = 0u;
      v119 = 0;
      space = 0;
      if (!ripc_GetRenderingState(v11, a2, a3, &v121))
      {
        goto LABEL_42;
      }

      if (a4)
      {
        p_size = &CGRectNull.size;
        v18 = (a4 + 11);
        p_y = (a4 + 12);
        if (a4[86] == a4[87])
        {
          p_y = &CGRectNull.origin.y;
        }

        else
        {
          p_size = (a4 + 13);
        }

        if (a4[86] == a4[87])
        {
          v18 = &CGRectNull;
          p_height = &CGRectNull.size.height;
        }

        else
        {
          p_height = (a4 + 14);
        }

        height = *p_height;
        x = v18->origin.x;
        y = *p_y;
        width = p_size->width;
        v25 = a4[4];
        if (v25)
        {
          memset(&v126, 0, 32);
          if (kCGColorSpace_block_invoke_once != -1)
          {
            dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
          }

          if ((CGCFDictionaryGetCFTypeRef(v25, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, &space) & 1) != 0 || (v26 = v11, CFDictionaryGetValue(v25, @"kCGContextGroup")))
          {
            v26 = 0;
          }

          if (kCGColorContentHeadroom_block_invoke_once != -1)
          {
            dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
          }

          CGCFDictionaryGetCFTypeRef(v25, @"kCGContextBackgroundColor", CGColorGetTypeID_color_type_id, &v119);
          if (CGCFDictionaryGetRect(v25, @"kCGContextBoundingBox", &v126))
          {
            v148.origin.x = v126.a;
            v148.origin.y = v126.b;
            v148.size.width = v126.c;
            v148.size.height = v126.d;
            v142.origin.x = x;
            v142.origin.y = y;
            v142.size.width = width;
            v142.size.height = height;
            v143 = CGRectIntersection(v142, v148);
            x = v143.origin.x;
            y = v143.origin.y;
            width = v143.size.width;
            height = v143.size.height;
          }

LABEL_37:
          v27 = *(a3 + 40);
          *&v126.a = *(a3 + 24);
          *&v126.c = v27;
          *&v126.tx = *(a3 + 56);
          v28 = x;
          *&v27 = y;
          v29 = width;
          v30 = height;
          v144 = CGRectApplyAffineTransform(*(&v27 - 8), &v126);
          v149.origin.x = SDWORD2(v122);
          v149.origin.y = SHIDWORD(v122);
          v149.size.width = v123;
          v149.size.height = SDWORD1(v123);
          v145 = CGRectIntersection(v144, v149);
          v31 = v145.origin.x;
          if (v145.origin.x == INFINITY || v145.origin.y == INFINITY)
          {
            goto LABEL_42;
          }

          v35 = v145.size.width;
          if (v145.size.width == 0.0)
          {
            goto LABEL_42;
          }

          v36 = v145.size.height;
          if (v145.size.height == 0.0)
          {
            goto LABEL_42;
          }

          Copy = a3;
          if (!v26)
          {
            v38 = v145.origin.y;
            v39 = *(v11 + 200);
            v40 = *(v11 + 120);
            if (v39 == v40)
            {
              if (v39)
              {
                CFRetain(*(v11 + 120));
              }

              v43 = *(v11 + 48);
              if (v43)
              {
                v42 = *(v43 + 32);
              }

              else
              {
                v42 = 0;
              }
            }

            else
            {
              v41 = *(v11 + 48);
              if (v41)
              {
                v42 = *(v41 + 32);
              }

              else
              {
                v42 = 0;
              }

              if (space && CGColorTransformConvertNeedsCMS(*(v11 + 120), space, 0) && (Model = CGColorSpaceGetModel(space), Model <= kCGColorSpaceModelCMYK) && (v51 = RIPLayerDepthForModel(Model, *v42, v45, v46, v47, v48, v49, v50)) != 0 && (v52 = v51, (v53 = color_transform_create(space, 0)) != 0))
              {
                v40 = v53;
                v42 = v52;
              }

              else
              {
                v40 = *(v11 + 120);
                if (v40)
                {
                  CFRetain(*(v11 + 120));
                }
              }
            }

            v146.origin.x = v31;
            v146.origin.y = v38;
            v146.size.width = v35;
            v146.size.height = v36;
            v147 = CGRectIntegral(v146);
            v61 = v147.origin.x;
            v62 = v147.origin.y;
            v63 = v147.size.width;
            v64 = v147.size.height;
            LODWORD(v126.a) = v147.origin.x;
            HIDWORD(v126.a) = v147.origin.y;
            LODWORD(v126.b) = v147.size.width;
            HIDWORD(v126.b) = v147.size.height;
            if (v119)
            {
              if ((v119 & 0x8000000000000000) != 0)
              {
                Alpha = CGTaggedColorGetAlpha(v119, v54, v55, v56, v57, v58, v59, v60);
              }

              else
              {
                Alpha = *(v119 + 8 * *(v119 + 56) + 64);
              }

              if (Alpha >= 1.0)
              {
                v66 = 16;
              }

              else
              {
                v66 = 17;
              }
            }

            else
            {
              v66 = 17;
            }

            if (a2)
            {
              v67 = *(a2 + 4);
            }

            else
            {
              v67 = 3;
            }

            v68 = RIPLayerCreate(RIPLayer_ripl_class, &v126, v66, v42, v67, v58, v59, v60);
            if (!v68)
            {
              if (v40)
              {
                v86 = v40;
LABEL_133:
                CFRelease(v86);
              }

LABEL_42:
              v15 = rips_Initialize(v10);
LABEL_43:
              CGGStateSetStyle(a3, 0);
              if (v7)
              {
                v7 = *(v7 + 16);
              }

              if (v10)
              {
                rips_Begin(v10, v15, v7, a2, a3);
              }

              if ((v15 & 0x800) != 0)
              {
                if (a4)
                {
                  v34 = CFRetain(a4);
                }

                else
                {
                  v34 = 0;
                }

                v16 = 0;
                *&v10[4].f64[1] = v34;
              }

              else if ((v15 & 0x200) != 0 && v7)
              {
                v33 = *(v7 + 128);
                if (v33)
                {
                  v16 = v33(v7, a2, a3, a4);
                  if (!v10)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                  v16 = 1006;
                  if (!v10)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                v16 = 0;
                if (!v10)
                {
LABEL_56:
                  CGGStateSetStyle(a3, v8);
                  return v16;
                }
              }

              rips_End(v10, v15, v7, a2);
              CGGStateSetStyle(a3, v8);
              rips_Release(v10);
              return v16;
            }

            v69 = v68;
            v26 = ripc_Initialize();
            *(v26 + 6) = v69;
            *(v26 + 2) = v40;
            *(v26 + 24) = *(v11 + 24);
            Copy = CGGStateCreateCopy(a3);
            CGGStateSetCompositeOperation(Copy, 2);
            if (*(*(Copy + 15) + 8) != 1.0)
            {
              maybeCopyRenderingState(Copy);
              *(*(Copy + 15) + 8) = 0x3FF0000000000000;
            }

            CGGStateSetStyle(Copy, 0);
            CGGStateSetSoftMask(Copy, 0);
            CGGStateResetClip(Copy);
            *(Copy + 24) = CGAffineTransformIdentity;
            CGGStateClipToRect(Copy, v61, v62, v63, v64);
            v70 = *(a3 + 24);
            v71 = *(a3 + 40);
            *(Copy + 56) = *(a3 + 56);
            *(Copy + 40) = v71;
            *(Copy + 24) = v70;
            *(v26 + 54) = *(v11 + 216);
          }

          CGDisplayListDelegateDrawDisplayList(*v26, a2, Copy, a4);
          if (v26 == v11)
          {
            goto LABEL_42;
          }

          CGGStateRelease(Copy);
          v72 = *(v26 + 6);
          if ((*(*v72 + 32))(v72, 16, 0))
          {
            v136 = xmmword_184562D30;
            v137 = xmmword_184562D40;
            v138 = xmmword_184562D50;
            v139 = 0;
            v132 = xmmword_184562CF0;
            v133 = unk_184562D00;
            v134 = xmmword_184562D10;
            v135 = unk_184562D20;
            v128 = xmmword_184562CB0;
            v129 = unk_184562CC0;
            v130 = xmmword_184562CD0;
            v131 = unk_184562CE0;
            memset(&v126, 0, sizeof(v126));
            v127 = unk_184562CA0;
            v118 = 0;
            v116 = 0u;
            v117 = 0u;
            v115 = 0u;
            if (*(v72 + 20) < 1 || *(v72 + 24) < 1 || !*(v72 + 56))
            {
LABEL_129:
              (*(*v72 + 48))(v72, 0);
              goto LABEL_132;
            }

            v80 = *(*(a3 + 120) + 4);
            v81 = v80 << 12;
            if (((v80 >> 20) & 0xF) != 0)
            {
              v82 = v80 << 8;
            }

            else
            {
              v82 = v80 << 12;
            }

            if (!(v82 >> 28))
            {
              v82 = v81;
            }

            v83 = (v82 >> 28);
            Cache = CGColorTransformGetCache(*(v26 + 2));
            if (Cache)
            {
              v85 = Cache[2];
            }

            else
            {
              v85 = 0;
            }

            v109 = v85;
            if ((CGColorTransformConvertNeedsCMS(*(v11 + 120), v85, v83) & 1) == 0)
            {
              v110 = 0;
              tx = *(v72 + 32);
              v126.tx = tx;
              DWORD2(v127) = *(v72 + 20);
              LODWORD(v126.ty) = DWORD2(v127);
              HIDWORD(v127) = *(v72 + 24);
              *&v127 = 0;
              HIDWORD(v126.ty) = HIDWORD(v127);
              LODWORD(v128) = *(v72 + 48);
              *(&v128 + 1) = *(v72 + 56);
              *(&v129 + 1) = *(v72 + 72);
              LODWORD(v129) = *(v72 + 64);
              v130 = 0uLL;
LABEL_118:
              if (*&tx == RIPGetDepthForLayerFormat(0, v87, v88, v89, v90, v91, v92, v93))
              {
                v126.tx = 0.0;
              }

              else if (*&v126.tx)
              {
                v107 = 0;
LABEL_125:
                v115 = *(v72 + 12);
                v118 = 0;
                *&v117 = 0;
                v116 = &v126;
                DWORD2(v117) = 0;
                ripc_RenderImage(v11, a2, a3, &v121, &v115, &v115, v105, v106);
                if (v107)
                {
                  CGGStateSetFillColor(a3, v107);
                }

                if (v110)
                {
                  CGSImageDataUnlock(v110);
                }

                goto LABEL_129;
              }

              FillColor = CGGStateGetFillColor(a3);
              v107 = FillColor;
              if (FillColor)
              {
                CFRetain(FillColor);
              }

              CGGStateSetFillColor(a3, 0);
              goto LABEL_125;
            }

            v112 = 0;
            v94 = *(v72 + 24);
            v113 = *(v72 + 20);
            v114 = v94;
            v95 = *(v72 + 48);
            v96 = *(v72 + 72);
            v125[0] = *(v72 + 56);
            v125[1] = v96;
            v97 = *(v72 + 64);
            v124[0] = v95;
            v124[1] = v97;
            v98 = CGSImageDataLockPixels(v113, v94, v125, v124, *(v72 + 32), v109, v113, v94, &v112, v83, *(v11 + 120), *(v11 + 216), *(*(v11 + 48) + 32));
            if (v98)
            {
              v110 = v98;
              RIPImageDataInitialize(&v126, v11, v98, v99, v100, v101, v102, v103);
              tx = v126.tx;
              goto LABEL_118;
            }

            (*(*v72 + 48))(v72, 0);
          }

          CGPostError("%s - Cannot acquire group image", v73, v74, v75, v76, v77, v78, v79, "ripc_DrawDisplayList");
LABEL_132:
          v86 = *v26;
          if (*v26)
          {
            goto LABEL_133;
          }

          goto LABEL_42;
        }
      }

      else
      {
        height = 0.0;
        y = INFINITY;
        width = 0.0;
        x = INFINITY;
      }

      v26 = v11;
      goto LABEL_37;
    }

    return 0;
  }

  v8 = *(*(a3 + 120) + 16);
  if (v8)
  {
    v9 = *(a1 + 288);
    goto LABEL_6;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 128);
  if (!v13)
  {
    return 1006;
  }

  return v13();
}

void *rips_Acquire(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v8 = *(a1 + 80);
  if (a3)
  {
    v9 = a3[4];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 40);
  __s2 = *(a2 + 24);
  v37 = v10;
  v11 = *(a2 + 56);
  v38 = v11;
  v11.n128_u64[0] = *(a1 + 40);
  if (v11.n128_f64[0] != 1.0)
  {
    __s2 = vmulq_n_f64(__s2, v11.n128_f64[0]);
    v37 = vmulq_n_f64(v37, v11.n128_f64[0]);
    v38 = vmulq_n_f64(v38, v11.n128_f64[0]);
  }

  if (v8)
  {
    if (*(v8 + 16) == a3 && *(v8 + 24) == v9)
    {
      v12 = *(v8 + 12);
      if ((v12 & 1) == 0)
      {
        goto LABEL_17;
      }

      v35 = v11;
      v13 = memcmp((v8 + 32), &__s2, 0x30uLL);
      v11 = v35;
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    if (*v8)
    {
      (*(*v8 + 24))(v8, v11);
      v11.n128_u64[0] = *(a1 + 40);
    }

    *(a1 + 80) = 0;
  }

  v14 = rips_Create(v11, &_rips_class, a3);
  if (!v14)
  {
    return 0;
  }

  v8 = v14;
  v15 = *(v14 + 12);
  if (!v15)
  {
    return 0;
  }

  *(a1 + 80) = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = v9;
  LOWORD(v12) = v15 | 0x1000;
  *(v14 + 12) = v15 | 0x1000;
  v16 = v37;
  v11 = v38;
  *(v14 + 32) = __s2;
  *(v14 + 48) = v16;
  *(v14 + 64) = v11;
LABEL_17:
  v17 = *(a1 + 48);
  *a4 = a1;
  a4[1] = v17;
  if ((v12 & 0x2000) == 0)
  {
    v18 = *(a1 + 200);
    v19 = *(a1 + 16);
    if (v19 == v18)
    {
      goto LABEL_33;
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      CFRetain(v18);
    }

    goto LABEL_32;
  }

  v20 = (*(*v8 + 48))(v8, v11);
  v21 = *(a1 + 16);
  if (!v21)
  {
LABEL_31:
    v18 = color_transform_create(v20, 0);
LABEL_32:
    *(a1 + 16) = v18;
    goto LABEL_33;
  }

  Cache = CGColorTransformGetCache(v21);
  if (Cache)
  {
    v23 = Cache[2];
  }

  else
  {
    v23 = 0;
  }

  if (!CGColorSpaceEqualToColorSpace(v20, v23))
  {
    v24 = *(a1 + 16);
    if (v24)
    {
      CFRelease(v24);
    }

    goto LABEL_31;
  }

LABEL_33:
  v25 = malloc_type_calloc(1uLL, 0x90uLL, 0xB2D0F6B3uLL);
  if (v25)
  {
    v33 = v25;
    *v25 = RIPLayer_ripl_class;
    *(v25 + 8) = xmmword_18439C9A0;
    *(v25 + 3) = 8388606;
    *(v25 + 4) = RIPGetDepthForLayerFormat(0, v26, v27, v28, v29, v30, v31, v32);
    *(v33 + 5) = 0;
    *(v33 + 12) = 0;
    *(v33 + 7) = 0;
    *(v33 + 16) = 0;
    *(v33 + 9) = 0;
    *(a1 + 48) = v33;
    *(a1 + 24) = *(a2 + 8);
    if (a3)
    {
      CFRetain(a3);
    }

    a4[2] = a3;
    a4[3] = 0;
    a4[8] = 0;
    a4[9] = 0;
  }

  else
  {
    a4 = 0;
    *(a1 + 48) = 0;
  }

  return a4;
}

uint64_t rips_Initialize(float64x2_t *a1)
{
  v2 = a1->f64[0];
  v3 = *(*&a1->f64[0] + 48);
  *(*&v2 + 48) = a1->f64[1];
  a1->f64[1] = 0.0;
  v4 = *(*&v2 + 16);
  if (v4 && (Cache = CGColorTransformGetCache(v4)) != 0)
  {
    v6 = Cache[2];
  }

  else
  {
    v6 = 0;
  }

  Image = RIPLayerCreateImage(v3, v6, 1);
  *&a1[4].f64[0] = Image;
  if (!Image)
  {
    return 512;
  }

  v8 = *(v3 + 12);
  v9.i64[0] = v8;
  v9.i64[1] = SHIDWORD(v8);
  v10 = vcvtq_f64_s64(v9);
  v11 = *(v3 + 20);
  v9.i64[0] = v11;
  v9.i64[1] = SHIDWORD(v11);
  a1[2] = v10;
  a1[3] = vcvtq_f64_s64(v9);
  (*(*v3 + 24))(v3);
  return *(*(*&a1->f64[0] + 80) + 12) & 0xF00;
}

void rips_Begin(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xD00) != 0)
  {
    if (!*(a1 + 24))
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v10 = *(v9 + 24);
      }

      else
      {
        v10 = 0;
      }

      Copy = CGGStateCreateCopy(a5);
      *(a1 + 24) = Copy;
      if (*(*(Copy + 15) + 8) != 1.0)
      {
        v12 = Copy;
        maybeCopyRenderingState(Copy);
        *(*(v12 + 15) + 8) = 0x3FF0000000000000;
      }

      if (v10)
      {
        CopyWithAlpha = CGColorCreateCopyWithAlpha(v10, 1.0);
        CGGStateSetFillColor(*(a1 + 24), CopyWithAlpha);
        if (CopyWithAlpha)
        {
          CFRelease(CopyWithAlpha);
        }
      }

      *(*(a1 + 24) + 24) = CGAffineTransformIdentity;
      CGGStateResetClip(*(a1 + 24));
    }

    if ((a2 & 0x500) != 0)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v15 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"kCGContextStyleType", @"kCGContextStyleBegin");
        v16 = *(a1 + 16);
        if (v16)
        {
          CFDictionarySetValue(v15, @"kCGContextStyle", v16);
        }
      }

      if (a3)
      {
        v17 = *(a3 + 168);
        if (v17)
        {
          v17(a3, a4, *(a1 + 24), @"kCGContextStyle", v15);
        }
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if ((a2 & 0x400) != 0)
      {
        v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v19 = v18;
        if (v18)
        {
          CFDictionarySetValue(v18, @"kCGContextStyleType", @"kCGContextStyleContentBegin");
        }

        if (a3)
        {
          v20 = *(a3 + 168);
          if (v20)
          {
            v20(a3, a4, *(a1 + 24), @"kCGContextStyle", v19);
          }
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (a3)
        {
          v21 = *(a3 + 80);
          if (v21)
          {
            v21(a3, a4, *(a1 + 24), *(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
          }
        }

        v22 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v23 = v22;
        if (v22)
        {
          CFDictionarySetValue(v22, @"kCGContextStyleType", @"kCGContextStyleContentEnd");
        }

        if (a3)
        {
          v24 = *(a3 + 168);
          if (v24)
          {
            v24(a3, a4, *(a1 + 24), @"kCGContextStyle", v23);
          }
        }

        if (v23)
        {

          CFRelease(v23);
        }
      }
    }
  }
}

void rips_End(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0xD00) != 0)
  {
    if ((a2 & 0x100) != 0)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v14 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"kCGContextStyleType", @"kCGContextStyleContentBegin");
      }

      if (a3)
      {
        v15 = *(a3 + 168);
        if (v15)
        {
          v15(a3, a4, *(a1 + 24), @"kCGContextStyle", v14);
        }
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (a3)
      {
        v16 = *(a3 + 80);
        if (v16)
        {
          v16(a3, a4, *(a1 + 24), *(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
        }
      }

      v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v18 = v17;
      if (v17)
      {
        CFDictionarySetValue(v17, @"kCGContextStyleType", @"kCGContextStyleContentEnd");
      }

      if (a3)
      {
        v19 = *(a3 + 168);
        if (v19)
        {
          v19(a3, a4, *(a1 + 24), @"kCGContextStyle", v18);
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    else if ((a2 & 0x800) != 0)
    {
      v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v8 = v7;
      if (v7)
      {
        CFDictionarySetValue(v7, @"kCGContextStyleType", @"kCGContextStyleBegin");
        v9 = *(a1 + 72);
        if (v9)
        {
          CFDictionarySetValue(v8, @"kCGContextStyleContent", v9);
        }

        v10 = *(a1 + 16);
        if (v10)
        {
          CFDictionarySetValue(v8, @"kCGContextStyle", v10);
        }
      }

      if (a3)
      {
        v11 = *(a3 + 168);
        if (v11)
        {
          v11(a3, a4, *(a1 + 24), @"kCGContextStyle", v8);
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (a3)
      {
        v12 = *(a3 + 80);
        if (v12)
        {
          v12(a3, a4, *(a1 + 24), *(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
        }
      }
    }

    v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v21 = v20;
    if (v20)
    {
      CFDictionarySetValue(v20, @"kCGContextStyleType", @"kCGContextStyleEnd");
      v22 = *(a1 + 16);
      if (v22)
      {
        CFDictionarySetValue(v21, @"kCGContextStyle", v22);
      }
    }

    if (a3)
    {
      v23 = *(a3 + 168);
      if (v23)
      {
        v23(a3, a4, *(a1 + 24), @"kCGContextStyle", v21);
      }
    }

    if (v21)
    {

      CFRelease(v21);
    }
  }
}

void rips_Release(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CGGStateRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t rips_DrawShading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (!a1)
  {
    v8 = *(*(a3 + 120) + 16);
    if (v8)
    {
      v9 = 0;
LABEL_6:
      memset(v25, 0, sizeof(v25));
      v10 = rips_Acquire(v9, a2, v8, v25);
      if (v10)
      {
        if (*v9)
        {
          v11 = *(*v9 + 96);
          if (v11)
          {
            v11();
          }
        }

        v12 = rips_Initialize(v10);
      }

      else
      {
        CFRetain(v8);
        v12 = 512;
      }

      CGGStateSetStyle(a3, 0);
      if (v7)
      {
        v7 = *(v7 + 16);
      }

      if (v10)
      {
        rips_Begin(v10, v12, v7, a2, a3);
      }

      if ((v12 & 0x800) != 0)
      {
        CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v16, v17, v18, v19, v20, v21);
        *&v10[4].f64[1] = CGDisplayList;
        if (CGDisplayList)
        {
          CG::DisplayList::createContextDelegate();
        }

        v23 = 1000;
      }

      else if ((v12 & 0x200) != 0 && v7)
      {
        v22 = *(v7 + 96);
        if (v22)
        {
          v23 = v22(v7, a2, a3, a4);
          if (!v10)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v23 = 1006;
          if (!v10)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v23 = 0;
        if (!v10)
        {
LABEL_31:
          CGGStateSetStyle(a3, v8);
          return v23;
        }
      }

      rips_End(v10, v12, v7, a2);
      CGGStateSetStyle(a3, v8);
      rips_Release(v10);
      return v23;
    }

    return 0;
  }

  v8 = *(*(a3 + 120) + 16);
  if (v8)
  {
    v9 = *(a1 + 288);
    goto LABEL_6;
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 96);
  if (!v14)
  {
    return 1006;
  }

  return v14();
}

uint64_t rips_DrawGlyphs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (!a1)
  {
    v14 = *(*(a3 + 120) + 16);
    if (v14)
    {
      v15 = 0;
LABEL_6:
      memset(v31, 0, sizeof(v31));
      v16 = rips_Acquire(v15, a2, v14, v31);
      if (v16)
      {
        if (*v15)
        {
          v17 = *(*v15 + 88);
          if (v17)
          {
            v17();
          }
        }

        v18 = rips_Initialize(v16);
      }

      else
      {
        CFRetain(v14);
        v18 = 512;
      }

      CGGStateSetStyle(a3, 0);
      if (v13)
      {
        v13 = *(v13 + 16);
      }

      if (v16)
      {
        rips_Begin(v16, v18, v13, a2, a3);
      }

      if ((v18 & 0x800) != 0)
      {
        CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v22, v23, v24, v25, v26, v27);
        *&v16[4].f64[1] = CGDisplayList;
        if (CGDisplayList)
        {
          CG::DisplayList::createContextDelegate();
        }

        v29 = 1000;
      }

      else if ((v18 & 0x200) != 0 && v13)
      {
        v28 = *(v13 + 88);
        if (v28)
        {
          v29 = v28(v13, a2, a3, a4, a5, a6, a7);
          if (!v16)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v29 = 1006;
          if (!v16)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v29 = 0;
        if (!v16)
        {
LABEL_31:
          CGGStateSetStyle(a3, v14);
          return v29;
        }
      }

      rips_End(v16, v18, v13, a2);
      CGGStateSetStyle(a3, v14);
      rips_Release(v16);
      return v29;
    }

    return 0;
  }

  v14 = *(*(a3 + 120) + 16);
  if (v14)
  {
    v15 = *(a1 + 288);
    goto LABEL_6;
  }

  v19 = *(a1 + 16);
  if (!v19)
  {
    return 0;
  }

  v20 = *(v19 + 88);
  if (!v20)
  {
    return 1006;
  }

  return v20();
}

uint64_t rips_DrawImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  if (!a1)
  {
    v16 = *(*(a3 + 120) + 16);
    if (v16)
    {
      v17 = 0;
LABEL_6:
      memset(v33, 0, sizeof(v33));
      v18 = rips_Acquire(v17, a2, v16, v33);
      if (v18)
      {
        if (*v17)
        {
          v19 = *(*v17 + 80);
          if (v19)
          {
            v19(a5, a6, a7, a8);
          }
        }

        v20 = rips_Initialize(v18);
      }

      else
      {
        CFRetain(v16);
        v20 = 512;
      }

      CGGStateSetStyle(a3, 0);
      if (v15)
      {
        v15 = *(v15 + 16);
      }

      if (v18)
      {
        rips_Begin(v18, v20, v15, a2, a3);
      }

      if ((v20 & 0x800) != 0)
      {
        CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v24, v25, v26, v27, v28, v29);
        *&v18[4].f64[1] = CGDisplayList;
        if (CGDisplayList)
        {
          CG::DisplayList::createContextDelegate();
        }

        v31 = 1000;
      }

      else if ((v20 & 0x200) != 0 && v15)
      {
        v30 = *(v15 + 80);
        if (v30)
        {
          v31 = v30(v15, a2, a3, a4, a5, a6, a7, a8);
          if (!v18)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v31 = 1006;
          if (!v18)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v31 = 0;
        if (!v18)
        {
LABEL_31:
          CGGStateSetStyle(a3, v16);
          return v31;
        }
      }

      rips_End(v18, v20, v15, a2);
      CGGStateSetStyle(a3, v16);
      rips_Release(v18);
      return v31;
    }

    return 0;
  }

  v16 = *(*(a3 + 120) + 16);
  if (v16)
  {
    v17 = *(a1 + 288);
    goto LABEL_6;
  }

  v21 = *(a1 + 16);
  if (!v21)
  {
    return 0;
  }

  v22 = *(v21 + 80);
  if (!v22)
  {
    return 1006;
  }

  return v22();
}

uint64_t rips_DrawPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef cf)
{
  v9 = a1;
  if (a1)
  {
    v10 = *(*(a3 + 120) + 16);
    if (v10)
    {
      v11 = *(a1 + 288);
      goto LABEL_5;
    }

    a1 = *(a1 + 16);
  }

  else
  {
    v11 = 0;
    v10 = *(*(a3 + 120) + 16);
    if (v10)
    {
LABEL_5:
      memset(v23, 0, sizeof(v23));
      v12 = rips_Acquire(v11, a2, v10, v23);
      if (v12)
      {
        CGContextDelegateDrawPath(*v11, a2, a3, a4, cf);
        v13 = rips_Initialize(v12);
      }

      else
      {
        CFRetain(v10);
        v13 = 512;
      }

      CGGStateSetStyle(a3, 0);
      if (v9)
      {
        v9 = *(v9 + 16);
      }

      if (v12)
      {
        rips_Begin(v12, v13, v9, a2, a3);
      }

      if ((v13 & 0x800) != 0)
      {
        CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v15, v16, v17, v18, v19, v20);
        *&v12[4].f64[1] = CGDisplayList;
        if (CGDisplayList)
        {
          CG::DisplayList::createContextDelegate();
        }

        v21 = 1000;
      }

      else if ((v13 & 0x200) != 0)
      {
        v21 = CGContextDelegateDrawPath(v9, a2, a3, a4, cf);
        if (!v12)
        {
LABEL_23:
          CGGStateSetStyle(a3, v10);
          return v21;
        }
      }

      else
      {
        v21 = 0;
        if (!v12)
        {
          goto LABEL_23;
        }
      }

      rips_End(v12, v13, v9, a2);
      CGGStateSetStyle(a3, v10);
      rips_Release(v12);
      return v21;
    }
  }

  return CGContextDelegateDrawPath(a1, a2, a3, a4, cf);
}

uint64_t rips_DrawRects(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  if (!a1)
  {
    v12 = *(*(a3 + 120) + 16);
    if (v12)
    {
      v13 = 0;
LABEL_6:
      memset(v29, 0, sizeof(v29));
      v14 = rips_Acquire(v13, a2, v12, v29);
      if (v14)
      {
        if (*v13)
        {
          v15 = *(*v13 + 64);
          if (v15)
          {
            v15();
          }
        }

        v16 = rips_Initialize(v14);
      }

      else
      {
        CFRetain(v12);
        v16 = 512;
      }

      CGGStateSetStyle(a3, 0);
      if (v11)
      {
        v11 = *(v11 + 16);
      }

      if (v14)
      {
        rips_Begin(v14, v16, v11, a2, a3);
      }

      if ((v16 & 0x800) != 0)
      {
        CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v20, v21, v22, v23, v24, v25);
        *&v14[4].f64[1] = CGDisplayList;
        if (CGDisplayList)
        {
          CG::DisplayList::createContextDelegate();
        }

        v27 = 1000;
      }

      else if ((v16 & 0x200) != 0 && v11)
      {
        v26 = *(v11 + 64);
        if (v26)
        {
          v27 = v26(v11, a2, a3, a4, a5, a6);
          if (!v14)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v27 = 1006;
          if (!v14)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v27 = 0;
        if (!v14)
        {
LABEL_31:
          CGGStateSetStyle(a3, v12);
          return v27;
        }
      }

      rips_End(v14, v16, v11, a2);
      CGGStateSetStyle(a3, v12);
      rips_Release(v14);
      return v27;
    }

    return 0;
  }

  v12 = *(*(a3 + 120) + 16);
  if (v12)
  {
    v13 = *(a1 + 288);
    goto LABEL_6;
  }

  v17 = *(a1 + 16);
  if (!v17)
  {
    return 0;
  }

  v18 = *(v17 + 64);
  if (!v18)
  {
    return 1006;
  }

  return v18();
}

void rips_DrawLines(uint64_t a1, uint64_t a2, uint64_t a3, const CGPoint *a4, unint64_t a5)
{
  v9 = a1;
  if (!a1)
  {
    v11 = 0;
    v10 = *(*(a3 + 120) + 16);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_8:

    CGContextDelegateDrawLines(a1, a2, a3, a4, a5);
    return;
  }

  v10 = *(*(a3 + 120) + 16);
  if (!v10)
  {
    a1 = *(a1 + 16);
    goto LABEL_8;
  }

  v11 = *(a1 + 288);
LABEL_5:
  memset(v21, 0, sizeof(v21));
  v12 = rips_Acquire(v11, a2, v10, v21);
  if (v12)
  {
    CGContextDelegateDrawLines(*v11, a2, a3, a4, a5);
    v13 = rips_Initialize(v12);
  }

  else
  {
    CFRetain(v10);
    v13 = 512;
  }

  CGGStateSetStyle(a3, 0);
  if (v9)
  {
    v9 = *(v9 + 16);
  }

  if (v12)
  {
    rips_Begin(v12, v13, v9, a2, a3);
  }

  if ((v13 & 0x800) != 0)
  {
    CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v14, v15, v16, v17, v18, v19);
    *&v12[4].f64[1] = CGDisplayList;
    if (CGDisplayList)
    {
      CG::DisplayList::createContextDelegate();
    }
  }

  else
  {
    if ((v13 & 0x200) != 0)
    {
      CGContextDelegateDrawLines(v9, a2, a3, a4, a5);
    }

    if (!v12)
    {
      CGGStateSetStyle(a3, v10);
      return;
    }
  }

  rips_End(v12, v13, v9, a2);
  CGGStateSetStyle(a3, v10);
  rips_Release(v12);
}

void *rips_GetColorTransform(void *result)
{
  if (!result)
  {
    v1 = 0;
    if (!MEMORY[0x30])
    {
      return result;
    }

    goto LABEL_9;
  }

  v1 = result[36];
  if (*(v1 + 48))
  {
LABEL_9:
    ripc_InitializeColorTransform(v1);
    return *(v1 + 120);
  }

  result = result[2];
  if (result)
  {
    v2 = result[4];
    if (v2)
    {

      return v2();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void rips_Finalize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    if (v1)
    {
      if (*v1)
      {
        CFRelease(*v1);
      }
    }
  }
}

uint64_t compareIntervalIndirect(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(a1 + 16 * *a2) + *(a1 + 16 * *a2 + 8) * 0.5;
  v4 = *(a1 + 16 * *a3) + *(a1 + 16 * *a3 + 8) * 0.5;
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 > v4;
  }
}

void JBIG2Bitmap::~JBIG2Bitmap(void **this)
{
  *this = &unk_1EF239800;
  free(this[3]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239800;
  free(this[3]);
}

void JBIG2SymbolDict::~JBIG2SymbolDict(JBIG2SymbolDict *this)
{
  JBIG2SymbolDict::~JBIG2SymbolDict(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239828;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*(this + 2) + 8 * i);
        if (v5)
        {
          (*(*v5 + 8))(v5);
          v3 = *(this + 3);
        }
      }

      v2 = *(this + 2);
    }
  }

  free(v2);
  v6 = *(this + 3);
  if (v6)
  {
    free(*v6);
    MEMORY[0x1865EE610](v6, 0x1010C40A1D9428BLL);
  }

  v7 = *(this + 4);
  if (v7)
  {
    free(*v7);
    MEMORY[0x1865EE610](v7, 0x1010C40A1D9428BLL);
  }
}

void JBIG2PatternDict::~JBIG2PatternDict(JBIG2PatternDict *this)
{
  JBIG2PatternDict::~JBIG2PatternDict(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239850;
  v2 = *(this + 3);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 3);
      }
    }
  }

  free(*(this + 2));
}

void JBIG2CodeTable::~JBIG2CodeTable(void **this)
{
  *this = &unk_1EF239878;
  free(this[2]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239878;
  free(this[2]);
}

uint64_t JBIG2Stream::lookChar(JBIG2Stream *this)
{
  v1 = *(this + 11);
  if (v1 && v1 < *(this + 12))
  {
    return *v1 ^ 0xFFu;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t JBIG2Stream::getChar(JBIG2Stream *this)
{
  v1 = *(this + 11);
  if (!v1 || v1 >= *(this + 12))
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 11) = v1 + 1;
  return *v1 ^ 0xFFu;
}

uint64_t JBIG2Stream::close(JBIG2Stream *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 6) = 0;
  }

  v3 = *(this + 8);
  if (!v3)
  {
    v7 = *(this + 9);
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v4 = *(v3 + 12);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*v3 + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(v3 + 12);
      }
    }
  }

  free(*v3);
  MEMORY[0x1865EE610](v3, 0x1080C40A085CBA5);
  v7 = *(this + 9);
  if (*(this + 8) == v7)
  {
    v7 = 0;
    *(this + 9) = 0;
  }

  *(this + 8) = 0;
  if (v7)
  {
LABEL_14:
    v8 = *(v7 + 12);
    if (v8 >= 1)
    {
      for (j = 0; j < v8; ++j)
      {
        v10 = *(*v7 + 8 * j);
        if (v10)
        {
          (*(*v10 + 8))(v10);
          v8 = *(v7 + 12);
        }
      }
    }

    free(*v7);
    MEMORY[0x1865EE610](v7, 0x1080C40A085CBA5);
    *(this + 9) = 0;
  }

LABEL_20:
  *(this + 11) = 0;
  *(this + 12) = 0;
  v11 = *(**(this + 2) + 24);

  return v11();
}

void JBIG2Stream::readSegments(JBIG2Stream *this)
{
  v181 = *MEMORY[0x1E69E9840];
  v2 = 0x100004052888210;
  v166 = 0;
  v164 = 0;
  while (1)
  {
    if (!JBIG2Stream::readULong(this, &v166))
    {
      return;
    }

    v3 = (*(**(this + 10) + 32))(*(this + 10));
    if (v3 == -1)
    {
      goto LABEL_333;
    }

    v4 = v3;
    v5 = (*(**(this + 10) + 32))(*(this + 10));
    if (v5 == -1)
    {
      goto LABEL_333;
    }

    v6 = v5;
    v7 = v5 >> 5;
    if (v5 >> 5 == 7)
    {
      v8 = (*(**(this + 10) + 32))(*(this + 10));
      if (v8 == -1)
      {
        goto LABEL_333;
      }

      v9 = v8;
      v10 = (*(**(this + 10) + 32))(*(this + 10));
      if (v10 == -1)
      {
        goto LABEL_333;
      }

      v11 = v10;
      v12 = (*(**(this + 10) + 32))(*(this + 10));
      if (v12 == -1)
      {
        goto LABEL_333;
      }

      v7 = ((v9 << 16) | (v6 << 24) | (v11 << 8) | v12) & 0x1FFFFFFF;
      v13 = (v7 + 9) >> 3;
      do
      {
        (*(**(this + 10) + 32))(*(this + 10));
        --v13;
      }

      while (v13);
    }

    if (HIBYTE(v7))
    {
      goto LABEL_333;
    }

    v14 = gmallocn_typed(v7, 4u, v2);
    v15 = v14;
    if (v7)
    {
      if (!v14)
      {
        goto LABEL_333;
      }
    }

    v16 = v166;
    if (v166 > 0x100)
    {
      if (v166 > 0x10000)
      {
        if (!v7)
        {
          goto LABEL_30;
        }

        v22 = v7;
        v23 = v14;
        while (JBIG2Stream::readULong(this, v23))
        {
          ++v23;
          if (!--v22)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        if (!v7)
        {
          goto LABEL_30;
        }

        v20 = v7;
        v21 = v14;
        while (JBIG2Stream::readUWord(this, v21))
        {
          ++v21;
          if (!--v20)
          {
            goto LABEL_30;
          }
        }
      }

LABEL_332:
      free(v15);
LABEL_333:
      v155 = (*(*this + 40))(this);

      error(v155, "Unexpected EOF in JBIG2 stream");
      return;
    }

    if (v7)
    {
      v17 = v7;
      v18 = v14;
      do
      {
        v19 = (*(**(this + 10) + 32))(*(this + 10));
        if (v19 == -1)
        {
          goto LABEL_332;
        }

        *v18++ = v19;
      }

      while (--v17);
    }

LABEL_30:
    if ((v4 & 0x40) != 0)
    {
      if (!JBIG2Stream::readULong(this, &v165))
      {
        goto LABEL_332;
      }
    }

    else if ((*(**(this + 10) + 32))(*(this + 10)) == -1)
    {
      goto LABEL_332;
    }

    if (!JBIG2Stream::readULong(this, &v164))
    {
      goto LABEL_332;
    }

    v24 = v4 & 0x3F;
    if (!*(this + 6) && ((v4 & 0x3C) == 4 || (v24 - 20) <= 0x17))
    {
      v156 = (*(*this + 40))(this);
      error(v156, "First JBIG2 segment associated with a page must be a page information segment");
      goto LABEL_339;
    }

    if ((v4 & 0x3Fu) <= 0x25)
    {
      break;
    }

    if ((v4 & 0x3Fu) > 0x2F)
    {
      if ((v4 & 0x3Fu) <= 0x33)
      {
        if (v24 == 48)
        {
          v163 = v15;
          if (JBIG2Stream::readULong(this, this + 8))
          {
            if (JBIG2Stream::readULong(this, this + 9))
            {
              if (JBIG2Stream::readULong(this, &v177))
              {
                if (JBIG2Stream::readULong(this, v180))
                {
                  v81 = (*(**(this + 10) + 32))(*(this + 10));
                  if (v81 != -1)
                  {
                    v175 = 0;
                    if (JBIG2Stream::readUWord(this, &v175))
                    {
                      *(this + 14) = (v81 >> 3) & 3;
                      v82 = *(this + 9);
                      if (v82 == -1)
                      {
                        v82 = v175 & 0x7FFF;
                      }

                      *(this + 10) = v82;
                      *(this + 11) = (v81 >> 2) & 1;
                      v83 = *(this + 6);
                      if (v83)
                      {
                        (*(*v83 + 8))(v83);
                        *(this + 6) = 0;
                      }

                      operator new();
                    }
                  }
                }
              }
            }
          }

          v86 = (*(*this + 40))(this);
          error(v86, "Unexpected EOF in JBIG2 stream");
          v15 = v163;
          goto LABEL_331;
        }

        if (v24 == 50)
        {
          if (v164)
          {
            v39 = v164 - 1;
              ;
            }
          }

          goto LABEL_331;
        }
      }

      else
      {
        switch(v24)
        {
          case '4':
            if (v164)
            {
              v79 = v164 - 1;
                ;
              }
            }

            goto LABEL_331;
          case '5':
            v162 = v15;
            v50 = (*(**(this + 10) + 32))(*(this + 10));
            if (v50 != -1)
            {
              v177 = 0;
              if (JBIG2Stream::readULong(this, &v177))
              {
                v180[0] = 0;
                if (JBIG2Stream::readULong(this, v180))
                {
                  *(*(this + 30) + 8) = 0;
                  v51 = gmalloc_typed(0x80uLL, 0x1000040451B5BE8uLL);
                  v52 = (v50 >> 1) & 7;
                  v53 = v177;
                  if (v177 >= v180[0])
                  {
                    v55 = 0;
                    v56 = 8;
                  }

                  else
                  {
                    v54 = 0;
                    v55 = 0;
                    v56 = 8;
                    do
                    {
                      if (v55 == v56)
                      {
                        if (v54 >> 22)
                        {
                          goto LABEL_214;
                        }

                        v51 = greallocn_typed(v51, v54, 0x10u, 0x1000040451B5BE8uLL);
                        v56 = v54;
                      }

                      v57 = &v51[16 * v55];
                      *v57 = v53;
                      v57[1] = JBIG2HuffmanDecoder::readBits(*(this + 30), v52 + 1);
                      Bits = JBIG2HuffmanDecoder::readBits(*(this + 30), ((v50 >> 4) & 7) + 1);
                      v57[2] = Bits;
                      v53 += 1 << Bits;
                      ++v55;
                      v54 += 2;
                    }

                    while (v53 < v180[0]);
                  }

                  v112 = v50 & 1;
                  v113 = v112 + v55 + 3;
                  if (v113 > v56)
                  {
                    v51 = greallocn_typed(v51, v113, 0x10u, 0x1000040451B5BE8uLL);
                  }

                  v114 = &v51[16 * v55];
                  *v114 = v177 - 1;
                  *(v114 + 1) = JBIG2HuffmanDecoder::readBits(*(this + 30), v52 + 1);
                  *(v114 + 2) = -3;
                  v115 = &v51[16 * (v55 + 1)];
                  *v115 = v180[0];
                  *(v115 + 1) = JBIG2HuffmanDecoder::readBits(*(this + 30), v52 + 1);
                  *(v115 + 2) = 32;
                  v116 = v55 + 2;
                  if (v112)
                  {
                    v117 = &v51[16 * v116];
                    *v117 = 0;
                    *(v117 + 1) = JBIG2HuffmanDecoder::readBits(*(this + 30), v52 + 1);
                    *(v117 + 2) = -2;
                    v116 = v55 + 3;
                  }

                  v118 = &v51[16 * v116];
                  *v118 = 0;
                  *(v118 + 2) = -1;
                  JBIG2HuffmanDecoder::buildTable(v51, v116);
                  operator new();
                }
              }
            }

LABEL_214:
            v88 = (*(*this + 40))(this);
            error(v88, "Unexpected EOF in JBIG2 stream");
            v15 = v162;
            v2 = 0x100004052888210;
            goto LABEL_331;
          case '>':
            if (v164)
            {
              v27 = v164 - 1;
                ;
              }
            }

            goto LABEL_331;
        }
      }
    }

    else
    {
      if ((v4 & 0x3Fu) <= 0x27)
      {
        goto LABEL_80;
      }

      v161 = v15;
      if (v24 == 40)
      {
        v25 = v2;
        v26 = 0;
        goto LABEL_161;
      }

      if (v24 == 42 || v24 == 43)
      {
        v25 = v2;
        v26 = 1;
LABEL_161:
        v175 = 0;
        if (JBIG2Stream::readULong(this, &v175))
        {
          v174[0] = 0;
          if (JBIG2Stream::readULong(this, v174))
          {
            v173 = 0;
            if (JBIG2Stream::readULong(this, &v173))
            {
              v172 = 0;
              if (JBIG2Stream::readULong(this, &v172))
              {
                v66 = (*(**(this + 10) + 32))(*(this + 10));
                v67 = v66;
                if (v66 != -1)
                {
                  v68 = (*(**(this + 10) + 32))(*(this + 10));
                  v69 = v68;
                  if (v68 != -1)
                  {
                    if (v68)
                    {
                      goto LABEL_181;
                    }

                    v70 = (*(**(this + 10) + 32))(*(this + 10));
                    if (v70 != -1)
                    {
                      v71 = v70 | 0xFFFFFF00;
                      if ((v70 & 0x80) == 0)
                      {
                        v71 = v70;
                      }

                      v177 = v71;
                      v72 = (*(**(this + 10) + 32))(*(this + 10));
                      if (v72 != -1)
                      {
                        v73 = v72 | 0xFFFFFF00;
                        if ((v72 & 0x80) == 0)
                        {
                          v73 = v72;
                        }

                        v180[0] = v73;
                        v74 = (*(**(this + 10) + 32))(*(this + 10));
                        if (v74 != -1)
                        {
                          v75 = v74 | 0xFFFFFF00;
                          if ((v74 & 0x80) == 0)
                          {
                            v75 = v74;
                          }

                          LODWORD(v178) = v75;
                          v76 = (*(**(this + 10) + 32))(*(this + 10));
                          if (v76 != -1)
                          {
                            v77 = v76 | 0xFFFFFF00;
                            if ((v76 & 0x80) == 0)
                            {
                              v77 = v76;
                            }

                            v180[1] = v77;
LABEL_181:
                            if (((v7 != 0) & ~v26) == 0 && *(this + 9) == -1 && v174[0] + v172 > *(this + 10))
                            {
                              JBIG2Bitmap::expand(*(this + 6), v174[0] + v172, *(this + 11));
                            }

                            if (v7 < 2)
                            {
                              if (v7 != 1)
                              {
                                JBIG2Bitmap::getSlice(*(this + 6));
                              }

                              Segment = JBIG2Stream::findSegment(this, *v15);
                              if (Segment && (v129 = Segment, !((*Segment)[2])(Segment)))
                              {
                                v150 = v175;
                                v151 = v174[0];
                                JBIG2Stream::resetRefinementStats(this, v69 & 1, 0);
                                JArithmeticDecoder::start(*(this + 13));
                                GenericRefinementRegion = JBIG2Stream::readGenericRefinementRegion(this, v150, v151, v69 & 1, (v69 >> 1) & 1, v129, 0, 0, &v177, v180);
                                v147 = GenericRefinementRegion;
                                if (GenericRefinementRegion)
                                {
                                  if (v26)
                                  {
                                    JBIG2Bitmap::combine(*(this + 6), GenericRefinementRegion, v173, v172, v67 & 7);
                                    (*(*v147 + 8))(v147);
                                  }

                                  else
                                  {
                                    *(GenericRefinementRegion + 2) = v16;
                                    GList::append(*(this + 8), GenericRefinementRegion);
                                  }

                                  JBIG2Stream::discardSegment(this, *v161);
                                }

                                else
                                {
                                  v148 = (*(*this + 40))(this);
                                  error(v148, "Bad bitmap in JBIG2 generic refinement region");
                                }
                              }

                              else
                              {
                                v130 = (*(*this + 40))(this);
                                error(v130, "Bad bitmap reference in JBIG2 generic refinement segment");
                              }
                            }

                            else
                            {
                              v78 = (*(*this + 40))(this);
                              error(v78, "Bad reference in JBIG2 generic refinement segment");
                            }

LABEL_330:
                            v15 = v161;
                            v2 = v25;
                            goto LABEL_331;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_329:
        v154 = (*(*this + 40))(this);
        error(v154, "Unexpected EOF in JBIG2 stream");
        goto LABEL_330;
      }
    }

LABEL_207:
    v84 = (*(*this + 40))(this);
    error(v84, "Unknown segment type in JBIG2 stream");
    v85 = v164;
    if (v164)
    {
      while ((*(**(this + 10) + 32))(*(this + 10)) != -1)
      {
        if (!--v85)
        {
          goto LABEL_331;
        }
      }

      goto LABEL_332;
    }

LABEL_331:
    free(v15);
  }

  if ((v4 & 0x3Fu) > 0xF)
  {
    if ((v4 & 0x3Fu) <= 0x15)
    {
      if (v24 == 16)
      {
        v59 = v164;
        v60 = (*(**(this + 10) + 32))(*(this + 10));
        if (v60 == -1 || (v61 = (*(**(this + 10) + 32))(*(this + 10)), v61 == -1) || (v62 = (*(**(this + 10) + 32))(*(this + 10)), v62 == -1) || (v175 = 0, !JBIG2Stream::readULong(this, &v175)))
        {
          v87 = (*(*this + 40))(this);
          error(v87, "Unexpected EOF in JBIG2 stream");
        }

        else if (v61 <= 0xFFFE && v62 <= 0xFFFE)
        {
          v63 = v175;
          if (v175 <= 0xFFFE)
          {
            v64 = (v60 >> 1) & 3;
            v65 = v60 & 1;
            if (!v65)
            {
              JBIG2Stream::resetGenericStats(this, v64, 0);
              JArithmeticDecoder::start(*(this + 13));
            }

            v177 = -v61;
            v178 = 0x2FFFFFFFDLL;
            v179 = -2;
            *v180 = xmmword_18439C9C0;
            JBIG2Stream::readGenericBitmap(this, v65, (v63 + 1) * v61, v62, v64, 0, 0, 0, &v177, v180, v59 - 7);
          }
        }

        goto LABEL_331;
      }

      if (v24 == 20)
      {
        goto LABEL_106;
      }
    }

    else
    {
      if (v24 == 22 || v24 == 23)
      {
LABEL_106:
        v25 = v2;
        v161 = v15;
        v175 = 0;
        if (JBIG2Stream::readULong(this, &v175))
        {
          v174[0] = 0;
          if (JBIG2Stream::readULong(this, v174))
          {
            v173 = 0;
            if (JBIG2Stream::readULong(this, &v173))
            {
              v172 = 0;
              if (JBIG2Stream::readULong(this, &v172))
              {
                if ((*(**(this + 10) + 32))(*(this + 10)) != -1)
                {
                  v41 = (*(**(this + 10) + 32))(*(this + 10));
                  if (v41 != -1)
                  {
                    v171 = 0;
                    if (JBIG2Stream::readULong(this, &v171))
                    {
                      v170 = 0;
                      if (JBIG2Stream::readULong(this, &v170))
                      {
                        v168[1] = 0;
                        if (JBIG2Stream::readULong(this, &v168[1]))
                        {
                          v168[0] = 0;
                          if (JBIG2Stream::readULong(this, v168))
                          {
                            v169[1] = 0;
                            if (JBIG2Stream::readUWord(this, &v169[1]))
                            {
                              v169[0] = 0;
                              if (JBIG2Stream::readUWord(this, v169))
                              {
                                if (v175 && v174[0] && v175 < 0x7FFFFFFF / v174[0])
                                {
                                  if (v170 && v171 < 0x7FFFFFFF / v170)
                                  {
                                    if (v7 == 1)
                                    {
                                      v159 = JBIG2Stream::findSegment(this, *v15);
                                      if (v159)
                                      {
                                        if (((*v159)[2])(v159) == 2)
                                        {
                                          v42 = *(v159 + 3);
                                          if (v42 >= 2)
                                          {
                                            v43 = 1;
                                            v44 = -1;
                                            do
                                            {
                                              v43 *= 2;
                                              ++v44;
                                            }

                                            while (v43 < v42);
                                          }

                                          if ((v41 & 1) == 0)
                                          {
                                            JBIG2Stream::resetGenericStats(this, (v41 >> 1) & 3, 0);
                                            JArithmeticDecoder::start(*(this + 13));
                                          }

                                          operator new();
                                        }
                                      }
                                    }

                                    v153 = (*(*this + 40))(this);
                                    error(v153, "Bad symbol dictionary reference in JBIG2 halftone segment");
                                  }

                                  else
                                  {
                                    v152 = (*(*this + 40))(this);
                                    error(v152, "Bad grid size in JBIG2 halftone segment");
                                  }
                                }

                                else
                                {
                                  v149 = (*(*this + 40))(this);
                                  error(v149, "Bad bitmap size in JBIG2 halftone segment");
                                }

                                goto LABEL_330;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_329;
      }

      if (v24 == 36)
      {
LABEL_80:
        v25 = v2;
        v161 = v15;
        v30 = v164;
        v175 = 0;
        if (JBIG2Stream::readULong(this, &v175))
        {
          v174[0] = 0;
          if (JBIG2Stream::readULong(this, v174))
          {
            v173 = 0;
            if (JBIG2Stream::readULong(this, &v173))
            {
              v172 = 0;
              if (JBIG2Stream::readULong(this, &v172))
              {
                if ((*(**(this + 10) + 32))(*(this + 10)) != -1)
                {
                  v31 = (*(**(this + 10) + 32))(*(this + 10));
                  if (v31 != -1)
                  {
                    v32 = (v31 >> 1) & 3;
                    v33 = (v31 >> 3) & 1;
                    if (v31)
                    {
                      JBIG2Stream::readGenericBitmap(this, 1, v175, v174[0], v32, v33, 0, 0, &v177, v180, v30 - 18);
                    }

                    v34 = (*(**(this + 10) + 32))(*(this + 10));
                    if (v32)
                    {
                      if (v34 != -1)
                      {
                        v35 = v34 | 0xFFFFFF00;
                        if ((v34 & 0x80) == 0)
                        {
                          v35 = v34;
                        }

                        v177 = v35;
                        v36 = (*(**(this + 10) + 32))(*(this + 10));
                        if (v36 != -1)
                        {
                          v37 = v36 | 0xFFFFFF00;
                          if ((v36 & 0x80) == 0)
                          {
                            v37 = v36;
                          }

                          v180[0] = v37;
                          v38 = v32;
                          goto LABEL_95;
                        }
                      }
                    }

                    else if (v34 != -1)
                    {
                      v131 = v34 | 0xFFFFFF00;
                      if ((v34 & 0x80) == 0)
                      {
                        v131 = v34;
                      }

                      v177 = v131;
                      v132 = (*(**(this + 10) + 32))(*(this + 10));
                      if (v132 != -1)
                      {
                        v133 = v132 | 0xFFFFFF00;
                        if ((v132 & 0x80) == 0)
                        {
                          v133 = v132;
                        }

                        v180[0] = v133;
                        v134 = (*(**(this + 10) + 32))(*(this + 10));
                        if (v134 != -1)
                        {
                          v135 = v134 | 0xFFFFFF00;
                          if ((v134 & 0x80) == 0)
                          {
                            v135 = v134;
                          }

                          LODWORD(v178) = v135;
                          v136 = (*(**(this + 10) + 32))(*(this + 10));
                          if (v136 != -1)
                          {
                            v137 = v136 | 0xFFFFFF00;
                            if ((v136 & 0x80) == 0)
                            {
                              v137 = v136;
                            }

                            v180[1] = v137;
                            v138 = (*(**(this + 10) + 32))(*(this + 10));
                            if (v138 != -1)
                            {
                              v139 = v138 | 0xFFFFFF00;
                              if ((v138 & 0x80) == 0)
                              {
                                v139 = v138;
                              }

                              HIDWORD(v178) = v139;
                              v140 = (*(**(this + 10) + 32))(*(this + 10));
                              if (v140 != -1)
                              {
                                v141 = v140 | 0xFFFFFF00;
                                if ((v140 & 0x80) == 0)
                                {
                                  v141 = v140;
                                }

                                v180[2] = v141;
                                v142 = (*(**(this + 10) + 32))(*(this + 10));
                                if (v142 != -1)
                                {
                                  v143 = v142 | 0xFFFFFF00;
                                  if ((v142 & 0x80) == 0)
                                  {
                                    v143 = v142;
                                  }

                                  v179 = v143;
                                  v144 = (*(**(this + 10) + 32))(*(this + 10));
                                  if (v144 != -1)
                                  {
                                    v38 = 0;
                                    v145 = v144 | 0xFFFFFF00;
                                    if ((v144 & 0x80) == 0)
                                    {
                                      v145 = v144;
                                    }

                                    v180[3] = v145;
LABEL_95:
                                    JBIG2Stream::resetGenericStats(this, v38, 0);
                                    JArithmeticDecoder::start(*(this + 13));
                                    JBIG2Stream::readGenericBitmap(this, 0, v175, v174[0], v32, v33, 0, 0, &v177, v180, 0);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_329;
      }
    }

    goto LABEL_207;
  }

  if ((v4 & 0x3Fu) > 5)
  {
    if (v24 == 6 || v24 == 7)
    {
LABEL_69:
      v174[0] = 0;
      v169[1] = 0;
      v168[1] = 0;
      if (JBIG2Stream::readULong(this, v174))
      {
        v173 = 0;
        if (JBIG2Stream::readULong(this, &v173))
        {
          v172 = 0;
          if (JBIG2Stream::readULong(this, &v172))
          {
            v171 = 0;
            if (JBIG2Stream::readULong(this, &v171))
            {
              if ((*(**(this + 10) + 32))(*(this + 10)) != -1)
              {
                v170 = 0;
                if (JBIG2Stream::readUWord(this, &v170))
                {
                  v29 = v170;
                  if ((v170 & 1) == 0 || JBIG2Stream::readUWord(this, &v169[1]))
                  {
                    if (v29 & 2) == 0 || ((v29 >> 15))
                    {
                      goto LABEL_281;
                    }

                    v119 = (*(**(this + 10) + 32))(*(this + 10));
                    if (v119 != -1)
                    {
                      v120 = v119 | 0xFFFFFF00;
                      if ((v119 & 0x80) == 0)
                      {
                        v120 = v119;
                      }

                      v180[0] = v120;
                      v121 = (*(**(this + 10) + 32))(*(this + 10));
                      if (v121 != -1)
                      {
                        v122 = v121 | 0xFFFFFF00;
                        if ((v121 & 0x80) == 0)
                        {
                          v122 = v121;
                        }

                        v175 = v122;
                        v123 = (*(**(this + 10) + 32))(*(this + 10));
                        if (v123 != -1)
                        {
                          v124 = v123 | 0xFFFFFF00;
                          if ((v123 & 0x80) == 0)
                          {
                            v124 = v123;
                          }

                          v180[1] = v124;
                          v125 = (*(**(this + 10) + 32))(*(this + 10));
                          if (v125 != -1)
                          {
                            v126 = v125 | 0xFFFFFF00;
                            if ((v125 & 0x80) == 0)
                            {
                              v126 = v125;
                            }

                            v176 = v126;
LABEL_281:
                            v169[0] = 0;
                            if (JBIG2Stream::readULong(this, v169))
                            {
                              operator new();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v127 = (*(*this + 40))(this);
      error(v127, "Unexpected EOF in JBIG2 stream");
      goto LABEL_331;
    }

    goto LABEL_207;
  }

  if ((v4 & 0x3F) != 0)
  {
    if (v24 == 4)
    {
      goto LABEL_69;
    }

    goto LABEL_207;
  }

  v173 = 0;
  v170 = 0;
  *v168 = 0;
  *v169 = 0;
  *v167 = 0;
  if (!JBIG2Stream::readUWord(this, &v173))
  {
    goto LABEL_338;
  }

  v45 = v173;
  v158 = (v173 >> 10) & 3;
  v160 = v173;
  if (v173)
  {
LABEL_241:
    if ((v45 & 2) != 0 && ((v45 >> 12) & 1) == 0)
    {
      v104 = (*(**(this + 10) + 32))(*(this + 10));
      if (v104 == -1)
      {
        goto LABEL_338;
      }

      v105 = v104 | 0xFFFFFF00;
      if ((v104 & 0x80) == 0)
      {
        v105 = v104;
      }

      v175 = v105;
      v106 = (*(**(this + 10) + 32))(*(this + 10));
      if (v106 == -1)
      {
        goto LABEL_338;
      }

      v107 = v106 | 0xFFFFFF00;
      if ((v106 & 0x80) == 0)
      {
        v107 = v106;
      }

      v174[0] = v107;
      v108 = (*(**(this + 10) + 32))(*(this + 10));
      if (v108 == -1)
      {
        goto LABEL_338;
      }

      v109 = v108 | 0xFFFFFF00;
      if ((v108 & 0x80) == 0)
      {
        v109 = v108;
      }

      v176 = v109;
      v110 = (*(**(this + 10) + 32))(*(this + 10));
      if (v110 == -1)
      {
        goto LABEL_338;
      }

      v111 = v110 | 0xFFFFFF00;
      if ((v110 & 0x80) == 0)
      {
        v111 = v110;
      }

      v174[1] = v111;
    }

    v172 = 0;
    if (JBIG2Stream::readULong(this, &v172))
    {
      v171 = 0;
      if (JBIG2Stream::readULong(this, &v171))
      {
        operator new();
      }
    }

    goto LABEL_338;
  }

  v46 = (*(**(this + 10) + 32))(*(this + 10));
  if (!v158)
  {
    if (v46 == -1)
    {
      goto LABEL_338;
    }

    v89 = v46 | 0xFFFFFF00;
    if ((v46 & 0x80) == 0)
    {
      v89 = v46;
    }

    v177 = v89;
    v90 = (*(**(this + 10) + 32))(*(this + 10));
    if (v90 == -1)
    {
      goto LABEL_338;
    }

    v91 = v90 | 0xFFFFFF00;
    if ((v90 & 0x80) == 0)
    {
      v91 = v90;
    }

    v180[0] = v91;
    v92 = (*(**(this + 10) + 32))(*(this + 10));
    if (v92 == -1)
    {
      goto LABEL_338;
    }

    v93 = v92 | 0xFFFFFF00;
    if ((v92 & 0x80) == 0)
    {
      v93 = v92;
    }

    LODWORD(v178) = v93;
    v94 = (*(**(this + 10) + 32))(*(this + 10));
    if (v94 == -1)
    {
      goto LABEL_338;
    }

    v95 = v94 | 0xFFFFFF00;
    if ((v94 & 0x80) == 0)
    {
      v95 = v94;
    }

    v180[1] = v95;
    v96 = (*(**(this + 10) + 32))(*(this + 10));
    if (v96 == -1)
    {
      goto LABEL_338;
    }

    v97 = v96 | 0xFFFFFF00;
    if ((v96 & 0x80) == 0)
    {
      v97 = v96;
    }

    HIDWORD(v178) = v97;
    v98 = (*(**(this + 10) + 32))(*(this + 10));
    if (v98 == -1)
    {
      goto LABEL_338;
    }

    v99 = v98 | 0xFFFFFF00;
    if ((v98 & 0x80) == 0)
    {
      v99 = v98;
    }

    v180[2] = v99;
    v100 = (*(**(this + 10) + 32))(*(this + 10));
    if (v100 == -1)
    {
      goto LABEL_338;
    }

    v101 = v100 | 0xFFFFFF00;
    if ((v100 & 0x80) == 0)
    {
      v101 = v100;
    }

    v179 = v101;
    v102 = (*(**(this + 10) + 32))(*(this + 10));
    if (v102 == -1)
    {
      goto LABEL_338;
    }

    v103 = v102 | 0xFFFFFF00;
    if ((v102 & 0x80) == 0)
    {
      v103 = v102;
    }

    v180[3] = v103;
LABEL_240:
    v45 = v160;
    goto LABEL_241;
  }

  if (v46 != -1)
  {
    v47 = v46 | 0xFFFFFF00;
    if ((v46 & 0x80) == 0)
    {
      v47 = v46;
    }

    v177 = v47;
    v48 = (*(**(this + 10) + 32))(*(this + 10));
    if (v48 != -1)
    {
      v49 = v48 | 0xFFFFFF00;
      if ((v48 & 0x80) == 0)
      {
        v49 = v48;
      }

      v180[0] = v49;
      goto LABEL_240;
    }
  }

LABEL_338:
  v157 = (*(*this + 40))(this);
  error(v157, "Unexpected EOF in JBIG2 stream");
LABEL_339:

  free(v15);
}

void sub_184097D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    v52 = (*(*v51 + 40))(v51);
    error(v52, "Exception thrown when attempting to allocate memory.");
    __cxa_end_catch();
    JUMPOUT(0x184097A68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t JBIG2Stream::readULong(JBIG2Stream *this, unsigned int *a2)
{
  v4 = (*(**(this + 10) + 32))(*(this + 10));
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = (*(**(this + 10) + 32))(*(this + 10));
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v8 = (*(**(this + 10) + 32))(*(this + 10));
  if (v8 == -1)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(**(this + 10) + 32))(*(this + 10));
  if (v10 == -1)
  {
    return 0;
  }

  *a2 = (v7 << 16) | (v5 << 24) | (v9 << 8) | v10;
  return 1;
}

uint64_t JBIG2Stream::readUWord(JBIG2Stream *this, unsigned int *a2)
{
  v4 = (*(**(this + 10) + 32))(*(this + 10));
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = (*(**(this + 10) + 32))(*(this + 10));
  if (v6 == -1)
  {
    return 0;
  }

  *a2 = v6 | (v5 << 8);
  return 1;
}

uint64_t JBIG2HuffmanDecoder::readBits(JBIG2HuffmanDecoder *this, unsigned int a2)
{
  v3 = *(this + 3);
  v4 = v3 - a2;
  if (v3 < a2)
  {
    v5 = *(this + 2) & ~(-1 << v3);
    v6 = a2 - v3;
    *(this + 3) = 0;
    if (a2 - v3 < 8)
    {
      v8 = v5;
      if (!v6)
      {
        return v8;
      }
    }

    else
    {
      do
      {
        v7 = (*(**this + 32))();
        v8 = v7 | (v5 << 8);
        v6 -= 8;
        LODWORD(v5) = v7 | (v5 << 8);
      }

      while (v6 > 7);
      if (!v6)
      {
        return v8;
      }
    }

    v10 = (*(**this + 32))();
    *(this + 2) = v10;
    *(this + 3) = 8 - v6;
    return (v10 >> (8 - v6)) & ~(-1 << v6) | (v8 << v6);
  }

  if (a2 == 32)
  {
    v9 = -1;
  }

  else
  {
    v9 = ~(-1 << a2);
  }

  v8 = (*(this + 2) >> v4) & v9;
  *(this + 3) = v4;
  return v8;
}

_DWORD *JBIG2HuffmanDecoder::buildTable(_DWORD *result, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = a2;
    v4 = a2 - 1;
    v5 = 1;
    v6 = result + 1;
    while (1)
    {
      v7 = v5;
      v8 = v4;
      v9 = v6;
      LODWORD(v10) = v2;
      while (1)
      {
        v11 = *v9;
        v9 += 4;
        if (v11)
        {
          break;
        }

        LODWORD(v10) = v10 + 1;
        --v8;
        ++v7;
        if (a2 == v10)
        {
          goto LABEL_20;
        }
      }

      if (v10 == a2)
      {
        break;
      }

      if (v10 + 1 < a2)
      {
        v12 = &result[4 * v7 + 1];
        do
        {
          v14 = *v12;
          v12 += 4;
          v13 = v14;
          if (v14 && v13 < result[4 * v10 + 1])
          {
            LODWORD(v10) = v7;
          }

          ++v7;
          --v8;
        }

        while (v8);
      }

      if (v2 != v10)
      {
        v10 = v10;
        v15 = &result[4 * v10];
        for (i = *v15; v10 > v2; --v15)
        {
          --v10;
          *v15 = *(v15 - 1);
        }

        *&result[4 * v2] = i;
      }

      ++v2;
      v6 += 4;
      --v4;
      ++v5;
      if (v2 == a2)
      {
        LODWORD(v2) = a2;
        break;
      }
    }

LABEL_20:
    v2 = v2;
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  *&result[4 * v2] = *&result[4 * v3];
  if (result[2] != -1)
  {
    result[3] = 0;
    if (result[6] != -1)
    {
      v16 = result + 4;
      v17 = 1;
      v18 = 2;
      do
      {
        v19 = v17 << (v16[1] - result[4 * v18 - 7]);
        v17 = v19 + 1;
        v16[3] = v19;
        v16 = &result[4 * v18++];
      }

      while (v16[2] != -1);
    }
  }

  return result;
}

void JBIG2Bitmap::JBIG2Bitmap(JBIG2Bitmap *this, int a2, int a3, signed int a4)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *this = &unk_1EF239800;
  v5 = (a3 + 7) >> 3;
  *(this + 4) = a4;
  *(this + 5) = v5;
  if (a3 < 1 || a4 < 1 || v5 < 1 || 0x7FFFFFFEu / v5 <= a4)
  {
    *(this + 2) = 0x2FFFFFFFFLL;
    a4 = -1;
    v5 = 2;
  }

  v6 = gmalloc_typed((v5 * a4 + 1), 0x100004077774924uLL);
  *(this + 3) = v6;
  if (v6)
  {
    v6[*(this + 5) * *(this + 4)] = 0;
  }
}

void JBIG2Bitmap::expand(JBIG2Bitmap *this, signed int a2, int a3)
{
  if (*(this + 4) < a2)
  {
    v4 = *(this + 5);
    if (v4 >= 1 && (0x7FFFFFFEu / v4) > a2)
    {
      v7 = grealloc_typed(*(this + 3), (v4 * a2 + 1), 0x100004077774924uLL);
      *(this + 3) = v7;
      v8 = *(this + 4);
      v9 = *(this + 5);
      v10 = &v7[v9 * v8];
      v11 = (a2 - v8) * v9;
      if (a3)
      {
        memset(v10, 255, v11);
      }

      else
      {
        bzero(v10, v11);
      }

      *(this + 4) = a2;
      *(*(this + 3) + *(this + 5) * a2) = 0;
    }
  }
}

uint64_t **JBIG2Stream::findSegment(JBIG2Stream *this, int a2)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(v2 + 3);
    if (v3 < 1)
    {
LABEL_6:
      v5 = *(this + 8);
      v6 = *(v5 + 3);
      if (v6 < 1)
      {
        return 0;
      }

      else
      {
        for (i = *v5; ; ++i)
        {
          v2 = *i;
          if (*(*i + 8) == a2)
          {
            break;
          }

          if (!--v6)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v4 = *v2;
      while (1)
      {
        v2 = *v4;
        if (*(*v4 + 8) == a2)
        {
          break;
        }

        ++v4;
        if (!--v3)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return v2;
}

void JBIG2Stream::resetRefinementStats(JBIG2Stream *this, unsigned int a2, JArithmeticDecoderStats *a3)
{
  v4 = *(&refContextSize + a2);
  if (a3 && *(a3 + 2) == v4)
  {
    v6 = *(this + 15);
    v7 = *v6;
    if (*(v6 + 8) != v4)
    {
      free(v7);
      MEMORY[0x1865EE610](v6, 0x1010C40A1D9428BLL);
      JArithmeticDecoderStats::copy(a3);
    }

    v8 = *a3;

    memcpy(v7, v8, v4);
  }

  else
  {
    v9 = *(this + 15);
    v10 = *v9;
    if (*(v9 + 8) != v4)
    {
      free(v10);
      MEMORY[0x1865EE610](v9, 0x1010C40A1D9428BLL);
      *(this + 15) = 0;
      operator new();
    }

    v11 = *(&refContextSize + a2);

    bzero(v10, v11);
  }
}

uint64_t JBIG2Stream::readGenericRefinementRegion(JBIG2Stream *this, int a2, int a3, int a4, int a5, JBIG2Bitmap *a6, int a7, int a8, int *a9, int *a10)
{
  if (a2 < 0x10000 && a3 < 0x10000)
  {
    operator new();
  }

  return 0;
}

uint64_t JBIG2Bitmap::combine(uint64_t this, JBIG2Bitmap *a2, int a3, int a4, int a5)
{
  if (a2 && a4 != 0x80000000)
  {
    v5 = -a4 & (a4 >> 31);
    v6 = *(a2 + 4);
    v7 = *(this + 16);
    if (v6 + a4 > v7)
    {
      v6 = v7 - a4;
    }

    v8 = v5 >= v6 || (v5 ^ 0x7FFFFFFF) < a4;
    if (!v8 && (v6 ^ 0x7FFFFFFF) >= a4)
    {
      v10 = *(this + 20);
      if (v10 < 1 || ((v11 = 0x7FFFFFFFu / v10, v5 + a4 <= v11) ? (v12 = v6 + a4 <= v11) : (v12 = 0), v12))
      {
        v13 = a3 & 0x7FFFFFF8 & ~(a3 >> 31);
        v14 = *(a2 + 3) + a3 >= *(this + 12) ? *(this + 12) : *(a2 + 3) + a3;
        if (v13 < v14)
        {
          v15 = a3 & 7;
          v16 = 0xFFu >> (v14 & 7);
          v17 = 255 << (8 - (v14 & 7));
          if ((v14 & 7) == 0)
          {
            v17 = 255;
          }

          v18 = (v14 - 1) & 0xFFFFFFF8;
          v19 = -a3 >> 3;
          v20 = a3 >> 3;
          v21 = v14 - 8;
          while (1)
          {
            v22 = (*(this + 24) + *(this + 20) * (v5 + a4));
            if (v13 != v18)
            {
              break;
            }

            if (a3 < 0)
            {
              v40 = *v22;
              v41 = *(*(a2 + 3) + *(a2 + 5) * v5 + v19);
              v26 = v17 & v41 ^ *v22;
              v42 = ~v41 & v17 ^ *v22;
              v43 = v17 & v41 | v16 & *v22;
              if (a5 != 4)
              {
                v43 = *v22;
              }

              if (a5 != 3)
              {
                v42 = v43;
              }

              if (a5 != 2)
              {
                v26 = v42;
              }

              v44 = v17 & v41 | v40;
              LOBYTE(v30) = (v16 | v41) & v40;
              if (a5 != 1)
              {
                LOBYTE(v30) = *v22;
              }

LABEL_88:
              if (!a5)
              {
                LOBYTE(v30) = v44;
              }

              goto LABEL_90;
            }

            v22 += v20;
            v23 = *v22;
            v24 = *(*(a2 + 3) + *(a2 + 5) * v5);
            v25 = (v24 >> v15) & v17;
            v26 = v25 ^ v23;
            v27 = ((v24 ^ 0xFF) >> v15) & v17 ^ v23;
            v28 = v25 | v23 & ~(v17 & (0xFFu >> v15));
            if (a5 != 4)
            {
              LOBYTE(v28) = *v22;
            }

            if (a5 != 3)
            {
              LOBYTE(v27) = v28;
            }

            if (a5 != 2)
            {
              v26 = v27;
            }

            v29 = v25 | v23;
            v30 = (((v24 | 0xFF00) >> v15) | v16) & v23;
            if (a5 != 1)
            {
              LOBYTE(v30) = *v22;
            }

            if (!a5)
            {
              LOBYTE(v30) = v29;
            }

LABEL_90:
            if (a5 > 1)
            {
              LOBYTE(v30) = v26;
            }

            *v22 = v30;
            if (++v5 >= v6)
            {
              return this;
            }
          }

          if (a3 < 0)
          {
            v39 = 0;
            v32 = (*(a2 + 3) + *(a2 + 5) * v5 + v19);
            v33 = *v32;
          }

          else
          {
            v31 = &v22[v20];
            v32 = (*(a2 + 3) + *(a2 + 5) * v5);
            v33 = *v32;
            v34 = *v31;
            v35 = (v33 >> v15) ^ v34;
            v36 = ((v33 ^ 0xFF) >> v15) ^ v34;
            v37 = (255 << (8 - v15)) & v34 | (v33 >> v15);
            if (a5 != 4)
            {
              LOBYTE(v37) = *v31;
            }

            if (a5 != 3)
            {
              LOBYTE(v36) = v37;
            }

            if (a5 != 2)
            {
              LOBYTE(v35) = v36;
            }

            v38 = (v33 >> v15) | v34;
            if (a5 == 1)
            {
              v34 &= (v33 | 0xFF00) >> v15;
            }

            if (!a5)
            {
              LOBYTE(v34) = v38;
            }

            if (a5 > 1)
            {
              LOBYTE(v34) = v35;
            }

            *v31 = v34;
            v22 = v31 + 1;
            v39 = (a3 & 0x7FFFFFF8) + 8;
          }

          v45 = v32 + 1;
          if (v39 >= v21)
          {
            v47 = v33;
          }

          else
          {
            do
            {
              v46 = *v22;
              v48 = *v45++;
              v47 = v48;
              v49 = (v48 | (v33 << 8)) >> v15;
              v50 = v49 ^ *v22;
              v51 = ~v50;
              if (a5 == 4)
              {
                v52 = v49;
              }

              else
              {
                v52 = *v22;
              }

              if (a5 != 3)
              {
                v51 = v52;
              }

              if (a5 != 2)
              {
                v50 = v51;
              }

              v53 = v49 | v46;
              v54 = v49 & v46;
              if (a5 != 1)
              {
                v54 = *v22;
              }

              if (!a5)
              {
                v54 = v53;
              }

              if (a5 > 1)
              {
                v54 = v50;
              }

              *v22++ = v54;
              v39 += 8;
              v33 = v47;
            }

            while (v39 < v21);
          }

          LOBYTE(v30) = *v22;
          v55 = (*v45 | (v47 << 8)) >> v15;
          v26 = v55 & v17 ^ *v22;
          v56 = ~v55 & v17 ^ *v22;
          v57 = v55 & v17 | v16 & *v22;
          if (a5 != 4)
          {
            v57 = *v22;
          }

          if (a5 != 3)
          {
            v56 = v57;
          }

          if (a5 != 2)
          {
            v26 = v56;
          }

          v44 = v55 & v17 | v30;
          v58 = (v55 | v16) & v30;
          if (a5 == 1)
          {
            LOBYTE(v30) = v58;
          }

          goto LABEL_88;
        }
      }
    }
  }

  return this;
}

void *JBIG2Stream::discardSegment(void *this, int a2)
{
  v2 = this[9];
  v3 = *(v2 + 12);
  if (v3 < 1)
  {
LABEL_5:
    v2 = this[8];
    v3 = *(v2 + 12);
    if (v3 < 1)
    {
      return this;
    }

    v4 = 0;
    v5 = *v2;
    while (*(v5[v4] + 8) != a2)
    {
      if (v3 == ++v4)
      {
        return this;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = *v2;
    while (*(v5[v4] + 8) != a2)
    {
      if (v3 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  if (v3 <= v4)
  {
    return error(-1, "%s: Range error (index = %d, length = %d)", "del", v4, v3);
  }

  v6 = v3 - 1;
  if (v3 - 1 > v4)
  {
    this = memmove(&v5[v4], &v5[v4 + 1], 8 * (v3 + ~v4));
    v6 = *(v2 + 12) - 1;
  }

  *(v2 + 12) = v6;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (v8 <= 0)
  {
    v8 = v7 / 2;
  }

  if (v7 - v6 >= v8)
  {
    *(v2 + 8) = v7 - v8;
    this = greallocn_typed(*v2, v7 - v8, 8u, 0x80040B8603338uLL);
    *v2 = this;
    v9 = *(v2 + 8);
    if (v9 < *(v2 + 12))
    {
      *(v2 + 12) = v9;
    }
  }

  return this;
}

uint64_t JBIG2Bitmap::clearPixel(uint64_t this, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) == 0 && (a3 & 0x80000000) == 0 && *(this + 12) > a2 && *(this + 16) > a3)
  {
    v3 = *(this + 20) * a3 + (a2 >> 3);
    *(*(this + 24) + v3) &= 0x7F7Fu >> (a2 & 7);
  }

  return this;
}

uint64_t JBIG2Bitmap::setPixel(uint64_t this, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) == 0 && (a3 & 0x80000000) == 0 && *(this + 12) > a2 && *(this + 16) > a3)
  {
    v3 = *(this + 20) * a3 + (a2 >> 3);
    *(*(this + 24) + v3) |= 1 << (~a2 & 7);
  }

  return this;
}

uint64_t JBIG2Bitmap::getPixel(JBIG2Bitmap *this, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  result = 0;
  if ((a3 & 0x80000000) == 0 && *(this + 3) > a2)
  {
    if (*(this + 4) > a3)
    {
      return (*(*(this + 3) + (*(this + 5) * a3 + (a2 >> 3))) >> (~a2 & 7)) & 1;
    }

    return 0;
  }

  return result;
}

void JBIG2Stream::resetGenericStats(JBIG2Stream *this, int a2, JArithmeticDecoderStats *a3)
{
  v4 = contextSize[a2];
  if (a3 && *(a3 + 2) == v4)
  {
    v6 = *(this + 14);
    v7 = *v6;
    if (*(v6 + 8) != v4)
    {
      free(v7);
      MEMORY[0x1865EE610](v6, 0x1010C40A1D9428BLL);
      JArithmeticDecoderStats::copy(a3);
    }

    v8 = *a3;

    memcpy(v7, v8, v4);
  }

  else
  {
    v9 = *(this + 14);
    v10 = *v9;
    if (*(v9 + 8) != v4)
    {
      free(v10);
      MEMORY[0x1865EE610](v9, 0x1010C40A1D9428BLL);
      *(this + 14) = 0;
      operator new();
    }

    v11 = contextSize[a2];

    bzero(v10, v11);
  }
}

void sub_18409D6F4(_Unwind_Exception *exception_object, int a2)
{
  v3 = *(v2 - 120);
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    v4 = (*(**(v2 - 112) + 40))(*(v2 - 112));
    error(v4, "Exception thrown when attempting to allocate memory.");
    if (v3)
    {
      free(v3);
    }

    __cxa_end_catch();
    JUMPOUT(0x18409BFE0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t JBIG2MMRDecoder::getBlackCode(JBIG2MMRDecoder *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    v3 = (*(**this + 32))();
    v2 = 8;
    *(this + 2) = v3;
    *(this + 3) = 8;
    ++*(this + 4);
  }

  while (1)
  {
    if (v2 < 0xA)
    {
      v4 = *(this + 2);
      if (v2 < 7)
      {
        v8 = v4 << (6 - v2);
LABEL_20:
        v7 = (&blackTab3 + 4 * (v8 & 0x3F));
        goto LABEL_21;
      }

      v5 = v2 - 6;
    }

    else
    {
      v4 = *(this + 2);
      v5 = v2 - 6;
      if (((v4 >> (v2 - 6)) & 0x3F) == 0)
      {
        v6 = v4 << (13 - v2);
        if (v2 >= 0xE)
        {
          LOBYTE(v6) = v4 >> (v2 - 13);
        }

        v7 = (&blackTab1 + 4 * (v6 & 0x7F));
        goto LABEL_21;
      }
    }

    v8 = v4 >> v5;
    if (((v4 >> (v2 - 4)) & 0xF) != 0 || (v8 & 3) == 0)
    {
      goto LABEL_20;
    }

    v10 = v4 << (12 - v2);
    if (v2 >= 0xD)
    {
      LOBYTE(v10) = v4 >> (v2 - 12);
    }

    v11 = v10 >= 0x40u;
    v12 = v10 - 64;
    if (!v11)
    {
      break;
    }

    v7 = &blackTab2[2 * v12];
LABEL_21:
    v13 = *v7;
    if (v13 >= 1 && v2 >= v13)
    {
      *(this + 3) = v2 - v13;
      return v7[1];
    }

    if (v2 > 0xC)
    {
      break;
    }

    *(this + 2) = (*(**this + 32))() | (v4 << 8);
    v15 = vadd_s32(*(this + 12), 0x100000008);
    *(this + 12) = v15;
    v2 = v15.i32[0];
  }

  v16 = (*(**this + 40))();
  error(v16, "Bad black code in JBIG2 MMR stream");
  --*(this + 3);
  return 1;
}

uint64_t JBIG2MMRDecoder::getWhiteCode(JBIG2MMRDecoder *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    v3 = (*(**this + 32))();
    v2 = 8;
    *(this + 2) = v3;
    *(this + 3) = 8;
    ++*(this + 4);
  }

  while (1)
  {
    if (v2 < 0xB)
    {
      v4 = *(this + 2);
      if (v2 == 10)
      {
LABEL_9:
        v7 = v4 >> (v2 - 9);
      }

      else
      {
        v7 = v4 << (9 - v2);
      }

      v6 = &whiteTab2 + 4 * (v7 & 0x1FF);
      goto LABEL_12;
    }

    v4 = *(this + 2);
    if (((v4 >> (v2 - 7)) & 0x7F) != 0)
    {
      goto LABEL_9;
    }

    v5 = v4 << (12 - v2);
    if (v2 >= 0xD)
    {
      LOBYTE(v5) = v4 >> (v2 - 12);
    }

    v6 = &whiteTab1 + 4 * (v5 & 0x1F);
LABEL_12:
    v8 = *v6;
    if (v8 >= 1 && v2 >= v8)
    {
      *(this + 3) = v2 - v8;
      return *(v6 + 1);
    }

    if (v2 > 0xB)
    {
      break;
    }

    *(this + 2) = (*(**this + 32))() | (v4 << 8);
    v10 = vadd_s32(*(this + 12), 0x100000008);
    *(this + 12) = v10;
    v2 = v10.i32[0];
  }

  v12 = (*(**this + 40))();
  error(v12, "Bad white code in JBIG2 MMR stream");
  --*(this + 3);
  return 1;
}

uint64_t JBIG2HuffmanDecoder::decodeInt(JBIG2HuffmanDecoder *this, _DWORD *a2, int *a3)
{
  if (a3[2] == -1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a3;
  while (1)
  {
    while (v7 < v9[1])
    {
      v6 = JBIG2HuffmanDecoder::readBit(this) | (2 * v6);
      ++v7;
    }

    if (v6 == v9[3])
    {
      break;
    }

    v9 = &a3[4 * ++v8];
    if (v9[2] == -1)
    {
      return 0;
    }
  }

  v11 = v9[2];
  if (v11)
  {
    if (v11 == -2)
    {
      return 0;
    }

    v12 = *v9;
    if (v11 == -3)
    {
      v13 = v12 - JBIG2HuffmanDecoder::readBits(this, 0x20u);
    }

    else
    {
      v13 = JBIG2HuffmanDecoder::readBits(this, v11) + v12;
    }
  }

  else
  {
    v13 = *v9;
  }

  *a2 = v13;
  return 1;
}

void JBIG2Stream::resetIntStats(void ***this, char a2)
{
  bzero(*this[16], *(this[16] + 2));
  bzero(*this[17], *(this[17] + 2));
  bzero(*this[18], *(this[18] + 2));
  bzero(*this[19], *(this[19] + 2));
  bzero(*this[20], *(this[20] + 2));
  bzero(*this[21], *(this[21] + 2));
  bzero(*this[22], *(this[22] + 2));
  bzero(*this[23], *(this[23] + 2));
  bzero(*this[24], *(this[24] + 2));
  bzero(*this[25], *(this[25] + 2));
  bzero(*this[26], *(this[26] + 2));
  bzero(*this[27], *(this[27] + 2));
  bzero(*this[28], *(this[28] + 2));
  v4 = this[29];
  v5 = *(v4 + 2);
  v6 = *v4;
  if (v5 != 1 << (a2 + 1))
  {
    free(v6);
    MEMORY[0x1865EE610](v4, 0x1010C40A1D9428BLL);
    this[29] = 0;
    operator new();
  }

  bzero(v6, v5);
}

uint64_t JBIG2HuffmanDecoder::readBit(JBIG2HuffmanDecoder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = v2 - 1;
  }

  else
  {
    v3 = (*(**this + 32))();
    *(this + 2) = v3;
    v4 = 7;
  }

  *(this + 3) = v4;
  return (v3 >> v4) & 1;
}

void JBIG2SymbolDict::JBIG2SymbolDict(JBIG2SymbolDict *this, int a2, unsigned int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *this = &unk_1EF239828;
  *(this + 2) = gmallocn_typed(a3, 8u, 0x2004093837F09uLL);
  v4 = *(this + 3);
  if (v4)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      *(*(this + 2) + v5) = 0;
      v5 += 8;
    }

    while (v6 != v5);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
}

void JBIG2Stream::~JBIG2Stream(void ***this)
{
  JBIG2Stream::~JBIG2Stream(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF2398A0;
  JBIG2Stream::close(this);
  v2 = this[3];
  if (v2)
  {
    v3 = *(v2 + 2) - 1;
    *(v2 + 2) = v3;
    if (!v3)
    {
      (*(*v2 + 1))(v2);
      this[3] = 0;
    }
  }

  v4 = this[13];
  if (v4)
  {
    if (*(v4 + 9))
    {
      v5 = *(v4 + 8);
      if (v5 >= 1)
      {
        v6 = *(v4 + 1);
        do
        {
          *v4 = v6;
          if (*(v4 + 9))
          {
            *(v4 + 8) = v5 - 1;
          }

          v6 = (*(*v4[3] + 32))(v4[3]);
          *(v4 + 1) = v6;
          v5 = *(v4 + 8);
        }

        while (v5 > 0);
      }
    }

    MEMORY[0x1865EE610](v4, 0x1020C402DBDC18BLL);
  }

  v7 = this[14];
  if (v7)
  {
    free(*v7);
    MEMORY[0x1865EE610](v7, 0x1010C40A1D9428BLL);
  }

  v8 = this[15];
  if (v8)
  {
    free(*v8);
    MEMORY[0x1865EE610](v8, 0x1010C40A1D9428BLL);
  }

  v9 = this[16];
  if (v9)
  {
    free(*v9);
    MEMORY[0x1865EE610](v9, 0x1010C40A1D9428BLL);
  }

  v10 = this[17];
  if (v10)
  {
    free(*v10);
    MEMORY[0x1865EE610](v10, 0x1010C40A1D9428BLL);
  }

  v11 = this[18];
  if (v11)
  {
    free(*v11);
    MEMORY[0x1865EE610](v11, 0x1010C40A1D9428BLL);
  }

  v12 = this[19];
  if (v12)
  {
    free(*v12);
    MEMORY[0x1865EE610](v12, 0x1010C40A1D9428BLL);
  }

  v13 = this[20];
  if (v13)
  {
    free(*v13);
    MEMORY[0x1865EE610](v13, 0x1010C40A1D9428BLL);
  }

  v14 = this[21];
  if (v14)
  {
    free(*v14);
    MEMORY[0x1865EE610](v14, 0x1010C40A1D9428BLL);
  }

  v15 = this[22];
  if (v15)
  {
    free(*v15);
    MEMORY[0x1865EE610](v15, 0x1010C40A1D9428BLL);
  }

  v16 = this[23];
  if (v16)
  {
    free(*v16);
    MEMORY[0x1865EE610](v16, 0x1010C40A1D9428BLL);
  }

  v17 = this[24];
  if (v17)
  {
    free(*v17);
    MEMORY[0x1865EE610](v17, 0x1010C40A1D9428BLL);
  }

  v18 = this[25];
  if (v18)
  {
    free(*v18);
    MEMORY[0x1865EE610](v18, 0x1010C40A1D9428BLL);
  }

  v19 = this[26];
  if (v19)
  {
    free(*v19);
    MEMORY[0x1865EE610](v19, 0x1010C40A1D9428BLL);
  }

  v20 = this[27];
  if (v20)
  {
    free(*v20);
    MEMORY[0x1865EE610](v20, 0x1010C40A1D9428BLL);
  }

  v21 = this[28];
  if (v21)
  {
    free(*v21);
    MEMORY[0x1865EE610](v21, 0x1010C40A1D9428BLL);
  }

  v22 = this[29];
  if (v22)
  {
    free(*v22);
    MEMORY[0x1865EE610](v22, 0x1010C40A1D9428BLL);
  }

  v23 = this[30];
  if (v23)
  {
    MEMORY[0x1865EE610](v23, 0x1020C40EDED9539);
  }

  v24 = this[31];
  if (v24)
  {
    MEMORY[0x1865EE610](v24, 0x1020C405AF6BDC9);
  }

  v25 = this[2];
  if (v25)
  {
    (*(*v25 + 1))(v25);
  }
}

void CGPDFDrawingContextDrawImage(uint64_t a1, CGImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 192))
  {
    v10 = a2 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && (v11 = *(a2 + 3)) != 0 && (v12 = *(v11 + 48)) != 0 && (image_filter_name = get_image_filter_name(v12)) != 0 && (v14 = image_filter_name, v15 = *MEMORY[0x1E695E480], v16 = CFStringCreateWithCString(*MEMORY[0x1E695E480], image_filter_name, 0x8000100u), *&keys.a = @"kCGPDFImageCallbackInfoKeyImageFilter", *&values[4] = v16, v17 = CFDictionaryCreate(v15, &keys, &values[4], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), CFRelease(v16), LOBYTE(v16) = (*(*(a1 + 192) + 16))(), CFRelease(v17), (v16 & 1) == 0))
  {
    pdf_log("Skipping image with filter (%s)", v14);
  }

  else
  {
    *values = 0;
    v18 = *a1;
    Type = CGContextGetType(*(a1 + 88), a2, a3, a4, a5, a6, a7, a8);
    v20 = 0uLL;
    if (Type == 8 || Type == 4)
    {
      memset(&keys, 0, sizeof(keys));
      CGContextGetCTM(&keys, *(a1 + 88));
      v20 = vrndpq_f64(vabsq_f64(vaddq_f64(*&keys.a, *&keys.c)));
    }

    ImageForRenderingSize = CGPDFImageCreateImageForRenderingSize(a2, v18, v20.f64[0], v20.f64[1]);
    if (ImageForRenderingSize)
    {
      v28 = ImageForRenderingSize;
      v29 = *(a1 + 32);
      v30 = *(a1 + 88);
      if ((*(ImageForRenderingSize + 39) & 2) != 0)
      {
        if (v29 && v30)
        {
          FillColor = CGPDFGStateGetFillColor(*(a1 + 32));
          CGContextSetFillColorWithColor(v30, FillColor);
          v50.width = 0.0;
          v50.height = 0.0;
          CGContextSetPatternPhase(v30, v50);
          CGPDFGStateSynchronizeColorRendering(v29, v30);
          CGPDFGStateSynchronizeRendering(v29, v30, v32, v33, v34, v35, v36, v37);
        }
      }

      else
      {
        CGPDFGStateSynchronizeForImages(*(a1 + 32), *(a1 + 88));
      }

      if (*(v28 + 8) == 1)
      {
        CGContextGetInterpolationQualityRange(*(a1 + 88), &values[4], values, v23, v24, v25, v26, v27);
        CGContextSetInterpolationQualityRange(*(a1 + 88), 3, 3, v38, v39, v40, v41, v42);
        draw_image(a1, v28);
        CGContextSetInterpolationQualityRange(*(a1 + 88), *&values[4], *values, v43, v44, v45, v46, v47);
      }

      else
      {
        CGContextGetCTM(&keys, *(a1 + 88));
        if ((keys.b == 0.0 && keys.c == 0.0 || keys.a == 0.0 && keys.d == 0.0) && (*(a1 + 8) & 1) == 0)
        {
          CGContextSaveGState(*(a1 + 88));
          CGContextSetShouldAntialias(*(a1 + 88), 0);
          draw_image(a1, v28);
          CGContextRestoreGState(*(a1 + 88));
        }

        else
        {
          draw_image(a1, v28);
        }
      }

      CFRelease(v28);
    }
  }
}

void draw_image(uint64_t a1, CGImageRef image)
{
  v4 = *(a1 + 200);
  if (!v4 || (*(v4 + 16))(v4, *(a1 + 88), image, 0.0, 0.0, 1.0, 1.0))
  {
    v5 = *(a1 + 88);
    v6 = 0;
    v7 = 0;
    v8 = 1.0;
    v9 = 1.0;

    CGContextDrawImage(v5, *&v6, image);
  }
}

uint64_t CG::DisplayListXMLDeserializer::deserializeTo(CG::DisplayListXMLDeserializer *this, CG::DisplayList *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  *(this + 2) = a2;
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(*(this + 1), *MEMORY[0x1E695EB28], &propertyValueTypeRefPtr, 0) && (v3 = CFBooleanGetValue(propertyValueTypeRefPtr) == 0, CFRelease(propertyValueTypeRefPtr), v3))
  {
    CGPostError("%s: The destination is not an existing directory", v4, v5, v6, v7, v8, v9, v10, "virtual BOOL CG::DisplayListXMLDeserializer::deserializeTo(DisplayList *)");
  }

  else
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], *(this + 1), @"Resources", 1u);
    *(this + 3) = v12;
    if (v12)
    {
      v20 = CFURLCreateCopyAppendingPathComponent(v11, *(this + 1), @"displayList.xml", 0);
      if (v20)
      {
        if (CFURLGetFileSystemRepresentation(v20, 1u, buffer, 1025))
        {
          File = xmlReadFile(buffer, 0, 0);
          v43 = File;
          if (File)
          {
            RootElement = xmlDocGetRootElement(File);
            if (!RootElement)
            {
              CGPostError("Malformed display list: document does not contain a root node.", 0, v45, v46, v47, v48, v49, v50, v84);
LABEL_27:
              xmlFreeDoc(v43);
              return 0;
            }

            CG::DisplayListXMLHelper::parseAttributesFromNode(v89, RootElement);
            v86 = 0;
            if (CG::DisplayListXMLHelper::parseRectFromAttributes(v89, "frame", &v87))
            {
              v58 = *(this + 2);
              v59 = v88;
              *(v58 + 24) = v87;
              *(v58 + 40) = v59;
              if (CG::DisplayListXMLHelper::parseFormatFromAttributes(v89, "flags", "0x%X", v53, v54, v55, v56, v57, &v86) != 1)
              {
                CGPostError("Failed to parse attribute %s from root node", v60, v61, v62, v63, v64, v65, v66, "flags");
LABEL_26:
                std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v90);
                goto LABEL_27;
              }

              *(*(this + 2) + 64) = v86;
              if (CG::DisplayListXMLHelper::parseRectFromAttributes(v89, "bounds", &v87))
              {
                v67 = *(this + 2);
                v68 = v88;
                *(v67 + 72) = v87;
                *(v67 + 88) = v68;
                NodeSetWithXPath = CG::DisplayListXMLDeserializer::getNodeSetWithXPath(v43, "/dl/resources/resource", v52);
                v71 = CG::DisplayListXMLDeserializer::getNodeSetWithXPath(v43, "/dl/entryStates/entryState", v70);
                v73 = CG::DisplayListXMLDeserializer::getNodeSetWithXPath(v43, "/dl/entries/entry", v72);
                v81 = v73;
                if (NodeSetWithXPath && v71 && v73)
                {
                  CG::DisplayListXMLDeserializer::parseResources(this, NodeSetWithXPath->nodesetval);
                }

                CGPostError("%s: Malformed display list: resources = %p, entryStates = %p, entries = %p", v74, v75, v76, v77, v78, v79, v80, "BOOL CG::DisplayListXMLDeserializer::parseModel(xmlDocPtr)");
                if (NodeSetWithXPath)
                {
                  xmlXPathFreeObject(NodeSetWithXPath);
                }

                if (v71)
                {
                  xmlXPathFreeObject(v71);
                }

                if (v81)
                {
                  xmlXPathFreeObject(v81);
                }

                goto LABEL_26;
              }

              v83 = "Failed to parse attribute bounds from root node";
            }

            else
            {
              v83 = "Failed to parse attribute frame from root node";
            }

            CGPostError(v83, v51, v52, v53, v54, v55, v56, v57, v84);
            goto LABEL_26;
          }

          CGPostError("%s: xmlReadFile failed", v36, v37, v38, v39, v40, v41, v42, "virtual BOOL CG::DisplayListXMLDeserializer::deserializeTo(DisplayList *)");
        }

        else
        {
          CGPostError("%s: Failed to get file system path for URL", v28, v29, v30, v31, v32, v33, v34, "virtual BOOL CG::DisplayListXMLDeserializer::deserializeTo(DisplayList *)");
        }
      }

      else
      {
        CGPostError("%s: Failed to create URL for displayList.xml", v21, v22, v23, v24, v25, v26, v27, "virtual BOOL CG::DisplayListXMLDeserializer::deserializeTo(DisplayList *)");
      }
    }

    else
    {
      CGPostError("%s: Failed to create URL for Resources directory", v13, v14, v15, v16, v17, v18, v19, "virtual BOOL CG::DisplayListXMLDeserializer::deserializeTo(DisplayList *)");
    }
  }

  return 0;
}

xmlXPathObject *CG::DisplayListXMLDeserializer::getNodeSetWithXPath(xmlDoc *this, _xmlDoc *a2, const unsigned __int8 *a3)
{
  v4 = xmlXPathNewContext(this);
  if (!v4)
  {
    CGPostError("%s: xmlXPathNewContext returned NULL", v5, v6, v7, v8, v9, v10, v11, "xmlXPathObjectPtr CG::DisplayListXMLDeserializer::getNodeSetWithXPath(xmlDocPtr, const xmlChar *)");
    return 0;
  }

  v12 = v4;
  v13 = MEMORY[0x1865F02A0](a2, v4);
  xmlXPathFreeContext(v12);
  if (!v13)
  {
    CGPostError("%s: xmlXPathEvalExpression returned NULL", v14, v15, v16, v17, v18, v19, v20, "xmlXPathObjectPtr CG::DisplayListXMLDeserializer::getNodeSetWithXPath(xmlDocPtr, const xmlChar *)");
    return v13;
  }

  nodesetval = v13->nodesetval;
  if (!nodesetval || !nodesetval->nodeNr || !nodesetval->nodeTab)
  {
    xmlXPathFreeObject(v13);
    return 0;
  }

  return v13;
}

void CG::DisplayListXMLDeserializer::parseResources(CG::DisplayListXMLDeserializer *this, _xmlNodeSet *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:fe200100]<0>(&v24, "clip");
  v28 = v24;
  v29 = v25;
  v25 = 0;
  v24 = 0uLL;
  v30 = 0;
  std::string::basic_string[abi:fe200100]<0>(&v72, "color");
  v31 = v72;
  v32 = v73;
  v73 = 0;
  v72 = 0uLL;
  v33 = 1;
  std::string::basic_string[abi:fe200100]<0>(&v70, "colorSpace");
  v34 = v70;
  v35 = v71;
  v71 = 0;
  v70 = 0uLL;
  v36 = 2;
  std::string::basic_string[abi:fe200100]<0>(&v20, "dash");
  v37 = v20;
  v38 = v21;
  v21 = 0;
  v20 = 0uLL;
  v39 = 3;
  std::string::basic_string[abi:fe200100]<0>(&v18, "font");
  v40 = v18;
  v41 = v19;
  v19 = 0;
  v18 = 0uLL;
  v42 = 4;
  std::string::basic_string[abi:fe200100]<0>(&v26, "image");
  v43 = v26;
  v44 = v27;
  v27 = 0;
  v26 = 0uLL;
  v45 = 5;
  std::string::basic_string[abi:fe200100]<0>(&v16, "shading");
  v46 = v16;
  v47 = v17;
  v17 = 0;
  v16 = 0uLL;
  v48 = 6;
  std::string::basic_string[abi:fe200100]<0>(&v14, "gradient");
  v49 = v14;
  v50 = v15;
  v15 = 0;
  v14 = 0uLL;
  v51 = 13;
  std::string::basic_string[abi:fe200100]<0>(v12, "pattern");
  v52 = *v12;
  v53 = v13;
  v12[1] = 0;
  v13 = 0;
  v12[0] = 0;
  v54 = 7;
  std::string::basic_string[abi:fe200100]<0>(v10, "style");
  v55 = *v10;
  v56 = v11;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  v57 = 8;
  std::string::basic_string[abi:fe200100]<0>(v8, "softMask");
  v58 = *v8;
  v59 = v9;
  v8[1] = 0;
  v9 = 0;
  v8[0] = 0;
  v60 = 9;
  std::string::basic_string[abi:fe200100]<0>(v6, "function");
  v61 = *v6;
  v62 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  v63 = 10;
  std::string::basic_string[abi:fe200100]<0>(v4, "displayList");
  v64 = *v4;
  v65 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v66 = 11;
  std::string::basic_string[abi:fe200100]<0>(__p, "CFTypeRef");
  v67 = *__p;
  v68 = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  v69 = 12;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  operator new();
}

void sub_1840A1D30(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1840A206CLL);
}

void sub_1840A1D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  boost::vec_adj_list_impl<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::config,boost::bidirectional_graph_helper_with_property<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::config>>::~vec_adj_list_impl(&a67);
  if (a21)
  {
    operator delete(a21);
  }

  std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(a52);
  std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(a55);
  _Unwind_Resume(a1);
}

void sub_1840A1D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a73 < 0)
  {
    operator delete(a69);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (*(v81 - 129) < 0)
  {
    operator delete(*(v81 - 152));
  }

  if (*(v81 - 105) < 0)
  {
    operator delete(*(v81 - 128));
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  while (v80 != &a80)
  {
    v82 = *(v80 - 9);
    v80 -= 4;
    if (v82 < 0)
    {
      operator delete(*v80);
    }
  }

  JUMPOUT(0x1840A206CLL);
}

void sub_1840A1DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&a57);
  std::__list_imp<unsigned long>::clear(&a67);
  JUMPOUT(0x1840A204CLL);
}

void sub_1840A1E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, char *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__list_imp<unsigned long>::clear(&a48);
  boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::~adjacency_list(&a67);
  if (a21)
  {
    operator delete(a21);
  }

  std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(a52);
  std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(a55);
  _Unwind_Resume(a1);
}

void sub_1840A1E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char *a58)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CG::CGDLResourceType>,void *>>>::operator()[abi:fe200100](0, v58);
  std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(a58);
  v59 = &STACK[0x387];
  v60 = -448;
  v61 = &STACK[0x387];
  while (1)
  {
    v62 = *v61;
    v61 -= 4;
    if (v62 < 0)
    {
      operator delete(*(v59 - 23));
    }

    v59 = v61;
    v60 += 32;
    if (!v60)
    {
      if (a29 < 0)
      {
        operator delete(__p);
      }

      JUMPOUT(0x1840A1F30);
    }
  }
}

void sub_1840A1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a70);
  if (a12)
  {
    JUMPOUT(0x1840A1EC4);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(v70 - 120));
  JUMPOUT(0x1840A204CLL);
}

void sub_1840A1ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a21)
  {
    operator delete(a21);
  }

  std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(a52);
  std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(a55);
  _Unwind_Resume(a1);
}

void CG::DisplayListXMLDeserializer::parseEntryStates(CG::DisplayListXMLDeserializer *this, _xmlNodeSet *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:fe200100]<0>(v8, "drawing");
  v12 = *v8;
  v13 = v9;
  v8[1] = 0;
  v9 = 0;
  v8[0] = 0;
  v14 = 0;
  std::string::basic_string[abi:fe200100]<0>(v6, "fill");
  v15 = *v6;
  v16 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  v17 = 1;
  std::string::basic_string[abi:fe200100]<0>(v4, "stroke");
  v18 = *v4;
  v19 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v20 = 2;
  std::string::basic_string[abi:fe200100]<0>(__p, "pattern");
  v21 = *__p;
  v22 = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  v23 = 3;
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  operator new();
}

void sub_1840A2AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, std::__shared_weak_count *a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char *a39, uint64_t a40, char a41, void *a42)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a33);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a42);
  std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(a39);
  _Unwind_Resume(a1);
}

void CG::DisplayListXMLDeserializer::parseEntries(CG::DisplayListXMLDeserializer *this, _xmlNodeSet *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:fe200100]<0>(v18, "image");
  v22.origin = *v18;
  v22.size.width = v19;
  v18[1] = 0;
  v19 = 0.0;
  v18[0] = 0;
  LODWORD(v22.size.height) = 0;
  std::string::basic_string[abi:fe200100]<0>(v16, "glyphs");
  v23 = *v16;
  v24 = v17;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v25 = 1;
  std::string::basic_string[abi:fe200100]<0>(v14, "path");
  v26 = *v14;
  v27 = v15;
  v14[1] = 0;
  v15 = 0;
  v14[0] = 0;
  v28 = 2;
  std::string::basic_string[abi:fe200100]<0>(v12, "rects");
  v29 = *v12;
  v30 = v13;
  v12[1] = 0;
  v13 = 0;
  v12[0] = 0;
  v31 = 3;
  std::string::basic_string[abi:fe200100]<0>(v10, "lines");
  v32 = *v10;
  v33 = v11;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  v34 = 4;
  std::string::basic_string[abi:fe200100]<0>(v8, "shading");
  v35 = *v8;
  v36 = v9;
  v8[1] = 0;
  v9 = 0;
  v8[0] = 0;
  v37 = 5;
  std::string::basic_string[abi:fe200100]<0>(v6, "gradient");
  v38 = *v6;
  v39 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  v40 = 6;
  std::string::basic_string[abi:fe200100]<0>(v4, "displayList");
  v41 = *v4;
  v42 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v43 = 7;
  std::string::basic_string[abi:fe200100]<0>(__p, "action");
  v44 = *__p;
  v45 = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  v46 = 8;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  operator new();
}

void sub_1840A3950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39, uint64_t a40, char *a41)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a38);
  std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(a41);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:fe200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

BOOL DisplayListXMLParserEntryImage::parseAttributes(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!DisplayListXMLParserEntry::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (!v11)
  {
    __cxa_bad_cast();
  }

  v16 = v11;
  ResourceWithAttributeName = DisplayListXMLParserEntry::getResourceWithAttributeName(a1, a2, "image", 1, v12, v13, v14, v15);
  if (!ResourceWithAttributeName)
  {
    return 0;
  }

  if (!v18)
  {
    CGPostError("Entry state for attribute: %s is of the wrong class", v19, v20, v21, v22, v23, v24, v25, "image");
    return 0;
  }

  *(v16 + 10) = v18;
  v26 = "ctm";
  if (!CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "ctm", v46) || (v34 = v46[1], *(v16 + 88) = v46[0], *(v16 + 104) = v34, *(v16 + 120) = v46[2], v45 = 0, v26 = "interpolationQuality", !CG::DisplayListXMLHelper::parseInterpolationQualityFromAttributes(a2, "interpolationQuality", &v45)))
  {
    CGPostError("Failed to parse %s attribute", v27, v28, v29, v30, v31, v32, v33, v26);
    return 0;
  }

  *(v16 + 34) = v45;
  if (CG::DisplayListXMLHelper::parseInterpolationQualityFromAttributes(a2, "interpolationMin", &v45))
  {
    *(v16 + 35) = v45;
  }

  if (CG::DisplayListXMLHelper::parseInterpolationQualityFromAttributes(a2, "interpolationMax", &v45))
  {
    *(v16 + 36) = v45;
  }

  v44 = 0;
  v42 = CG::DisplayListXMLHelper::parseColorRenderingIntentFromAttributes(a2, "renderingIntent", &v44);
  if (v42)
  {
    *(v16 + 37) = v44;
  }

  else
  {
    CGPostError("Failed to parse %s attribute", v35, v36, v37, v38, v39, v40, v41, "renderingIntent");
  }

  return v42;
}

BOOL DisplayListXMLParserEntryGlyphs::parseAttributes(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!DisplayListXMLParserEntry::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (!v11)
  {
    __cxa_bad_cast();
  }

  v16 = v11;
  ResourceWithAttributeName = DisplayListXMLParserEntry::getResourceWithAttributeName(a1, a2, "font", 1, v12, v13, v14, v15);
  if (!ResourceWithAttributeName)
  {
    return 0;
  }

  if (!v18)
  {
    v46 = "font";
    v44 = "Entry state for attribute: %s is of the wrong class";
    goto LABEL_21;
  }

  *(v16 + 10) = v18;
  v26 = "ctm";
  if (!CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "ctm", &v53))
  {
    goto LABEL_18;
  }

  v27 = v54;
  *(v16 + 88) = v53;
  *(v16 + 104) = v27;
  *(v16 + 120) = v55;
  v26 = "ftm";
  if (!CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "ftm", &v53))
  {
    goto LABEL_18;
  }

  v28 = v54;
  *(v16 + 136) = v53;
  *(v16 + 152) = v28;
  *(v16 + 168) = v55;
  v52 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "scale", "%lg", v21, v22, v23, v24, v25, &v52) != 1)
  {
    v44 = "Failed to parse scale attribute";
    goto LABEL_21;
  }

  *(v16 + 23) = v52;
  v26 = "dilation";
  if (!CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "dilation", &v51, v21, v22, v23, v24, v25))
  {
    goto LABEL_18;
  }

  *(v16 + 12) = v51;
  v29 = DisplayListXMLParserEntry::getResourceWithAttributeName(a1, a2, "fontSmoothingBGColor", 0, v22, v23, v24, v25);
  if (v29)
  {
  }

  v50 = 0;
  if (!CG::DisplayListXMLHelper::parseTextDrawingModeFromAttributes(a2, &v50))
  {
    v46 = "textDrawingMode";
    goto LABEL_19;
  }

  *(v16 + 54) = v50;
  v49 = 0;
  v26 = "fontRenderingStyle";
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "fontRenderingStyle", "0x%X", v21, v22, v23, v24, v25, &v49) != 1)
  {
LABEL_18:
    LOBYTE(v46) = v26;
LABEL_19:
    v44 = "Failed to parse %s attribute";
LABEL_21:
    CGPostError(v44, v19, v20, v21, v22, v23, v24, v25, v46);
    return 0;
  }

  *(v16 + 55) = v49;
  v48 = 0;
  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "shouldDrawBMRuns", &v48))
  {
    v16[224] = v48;
  }

  v47 = 0;
  v35 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "count", "%zu", v30, v31, v32, v33, v34, &v47);
  v43 = v35 == 1;
  if (v35 == 1)
  {
    *(a1 + 16) = v47;
  }

  else
  {
    CGPostError("Failed to parse %s attribute", v36, v37, v38, v39, v40, v41, v42, "count");
  }

  return v43;
}

BOOL DisplayListXMLParserEntryPath::parseAttributes(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!DisplayListXMLParserEntry::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (!v10)
  {
    __cxa_bad_cast();
  }

  v11 = v10;
  v31 = 0;
  if (!CG::DisplayListXMLHelper::parsePathDrawingModeFromAttributes(a2, &v31))
  {
    CGPostError("Failed to parse %s attribute", v12, v13, v14, v15, v16, v17, v18, "drawingMode");
    return 0;
  }

  v11[20] = v31;
  v30 = 0;
  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "direct", &v30))
  {
    *(v11 + 84) = v30;
  }

  v26 = CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "ctm", v29);
  if (v26)
  {
    v27 = v29[1];
    *(v11 + 6) = v29[0];
    *(v11 + 7) = v27;
    *(v11 + 8) = v29[2];
  }

  else
  {
    CGPostError("Failed to parse %s attribute", v19, v20, v21, v22, v23, v24, v25, "ctm");
  }

  return v26;
}

BOOL DisplayListXMLParserEntryRects::parseAttributes(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!DisplayListXMLParserEntry::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (!v11)
  {
    __cxa_bad_cast();
  }

  v12 = v11;
  v40 = 0;
  if (!CG::DisplayListXMLHelper::parsePathDrawingModeFromAttributes(a2, &v40))
  {
    CGPostError("Failed to parse %s attribute", v13, v14, v15, v16, v17, v18, v19, "drawingMode");
    return 0;
  }

  *(v12 + 20) = v40;
  if (!CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "ctm", v39))
  {
    CGPostError("Failed to parse %s attribute", v20, v21, v22, v23, v24, v25, v26, "ctm");
    return 0;
  }

  v27 = v39[1];
  *(v12 + 88) = v39[0];
  *(v12 + 104) = v27;
  *(v12 + 120) = v39[2];
  v38 = 0;
  v28 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "count", "%zu", v22, v23, v24, v25, v26, &v38);
  v36 = v28 == 1;
  if (v28 == 1)
  {
    *(a1 + 16) = v38;
  }

  else
  {
    CGPostError("Failed to parse %s attribute", v29, v30, v31, v32, v33, v34, v35, "count");
  }

  return v36;
}

BOOL DisplayListXMLParserEntryLines::parseAttributes(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!DisplayListXMLParserEntry::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (!v11)
  {
    __cxa_bad_cast();
  }

  v12 = v11;
  if (!CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "ctm", v32))
  {
    CGPostError("Failed to parse %s attribute", v13, v14, v15, v16, v17, v18, v19, "ctm");
    return 0;
  }

  v20 = v32[1];
  v12[5] = v32[0];
  v12[6] = v20;
  v12[7] = v32[2];
  v31 = 0;
  v21 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "count", "%zu", v15, v16, v17, v18, v19, &v31);
  v29 = v21 == 1;
  if (v21 == 1)
  {
    *(a1 + 16) = v31;
  }

  else
  {
    CGPostError("Failed to parse %s attribute", v22, v23, v24, v25, v26, v27, v28, "count");
  }

  return v29;
}

uint64_t DisplayListXMLParserEntry::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = 0;
  v11 = "flags";
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "flags", "0x%X", a4, a5, a6, a7, a8, &v62) != 1 || (*(a3 + 8) = *(a3 + 8) | (v62 << 8), v11 = "boundingBox", (CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "boundingBox", v61) & 1) == 0))
  {
    CGPostError("Failed to parse %s attribute", v12, v13, v14, v15, v16, v17, v18, v11);
    return 0;
  }

  v19 = v61[1];
  *(a3 + 16) = v61[0];
  *(a3 + 32) = v19;
  EntryStateWithAttributeName = DisplayListXMLParserEntry::_getEntryStateWithAttributeName(a1, a2, "drawState", 0, v15, v16, v17, v18);
  if (EntryStateWithAttributeName)
  {
    if (v27)
    {
      goto LABEL_7;
    }

    CGPostError("Entry state for attribute: %s is of the wrong class", v28, v29, v30, v31, v32, v33, v34, "drawState");
  }

  CGLog(1, "entry has NULL drawing state", v21, v22, v23, v24, v25, v26, v60);
  v27 = 0;
LABEL_7:
  *(a3 + 48) = v27;
  v35 = DisplayListXMLParserEntry::_getEntryStateWithAttributeName(a1, a2, "fillState", 1, v31, v32, v33, v34);
  if (v35)
  {
    if (!v35)
    {
      CGPostError("Entry state for attribute: %s is of the wrong class", v40, v41, v42, v36, v37, v38, v39, "fillState");
      v35 = 0;
    }
  }

  *(a3 + 56) = v35;
  v43 = DisplayListXMLParserEntry::_getEntryStateWithAttributeName(a1, a2, "strokeState", 1, v36, v37, v38, v39);
  if (v43)
  {
    if (!v43)
    {
      CGPostError("Entry state for attribute: %s is of the wrong class", v48, v49, v50, v44, v45, v46, v47, "strokeState");
      v43 = 0;
    }
  }

  *(a3 + 64) = v43;
  v51 = DisplayListXMLParserEntry::_getEntryStateWithAttributeName(a1, a2, "patternState", 1, v44, v45, v46, v47);
  if (v51)
  {
    if (!v51)
    {
      CGPostError("Entry state for attribute: %s is of the wrong class", v52, v53, v54, v55, v56, v57, v58, "patternState");
      v51 = 0;
    }
  }

  *(a3 + 72) = v51;
  return 1;
}

uint64_t DisplayListXMLParserEntryGradient::parseAttributes(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = DisplayListXMLParserEntry::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v17 = v12;
    v18 = "gradient";
    ResourceWithAttributeName = DisplayListXMLParserEntry::getResourceWithAttributeName(a1, a2, "gradient", 1, v13, v14, v15, v16);
    if (ResourceWithAttributeName)
    {
      if (!v27)
      {
        CGPostError("Entry state for attribute: %s is of the wrong class", v28, v29, v30, v31, v32, v33, v34, "gradient");
        return 0;
      }

      *(v17 + 10) = v27;
      v18 = "ctm";
      if (CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "ctm", v60))
      {
        v35 = v60[1];
        *(v17 + 88) = v60[0];
        *(v17 + 104) = v35;
        *(v17 + 120) = v60[2];
        v59 = 0;
        if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "options", "%d", v22, v23, v24, v25, v26, &v59))
        {
          *(v17 + 35) = v59;
          v36 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "gradientType");
          if (!v36)
          {
            v55 = "type";
LABEL_27:
            CGPostError("Failed to parse %s attribute", v20, v21, v22, v23, v24, v25, v26, v55);
            return 0;
          }

          v37 = v36;
          v57 = 0;
          if (!strcmp(v36, "linear"))
          {
            *(v17 + 34) = 1;
            v18 = "startPt";
            if (CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "startPt", &v58, v38, v39, v40, v41, v42))
            {
              *(v17 + 9) = v58;
              v18 = "endPt";
              if (CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "endPt", &v58, v22, v23, v24, v25, v26))
              {
                *(v17 + 10) = v58;
                return 1;
              }
            }
          }

          else
          {
            if (strcmp(v37, "radial"))
            {
              if (strcmp(v37, "conic"))
              {
                CGPostError("%s: Invalid gradient type: %s", v48, v49, v50, v51, v52, v53, v54, "virtual BOOL DisplayListXMLParserEntryGradient::parseAttributes(const DLXMLAttributes &, DisplayListEntry &)");
                return 0;
              }

              *(v17 + 34) = 3;
              v18 = "center";
              if (CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "center", &v58, v50, v51, v52, v53, v54))
              {
                *(v17 + 14) = v58;
                v56 = 0;
                v18 = "angle";
                if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "angle", "%lg", v22, v23, v24, v25, v26, &v56))
                {
                  *(v17 + 30) = v56;
                  return 1;
                }
              }

              goto LABEL_26;
            }

            *(v17 + 34) = 2;
            v18 = "startCenter";
            if (CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "startCenter", &v58, v43, v44, v45, v46, v47))
            {
              *(v17 + 11) = v58;
              v18 = "endCenter";
              if (CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "endCenter", &v58, v22, v23, v24, v25, v26))
              {
                *(v17 + 12) = v58;
                v18 = "startRadius";
                if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "startRadius", "%lg", v22, v23, v24, v25, v26, &v57))
                {
                  *(v17 + 26) = v57;
                  v18 = "endRadius";
                  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "endRadius", "%lg", v22, v23, v24, v25, v26, &v57))
                  {
                    *(v17 + 27) = v57;
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_26:
    LOBYTE(v55) = v18;
    goto LABEL_27;
  }

  return result;
}

uint64_t DisplayListXMLParserEntryDisplayList::parseAttributes(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = DisplayListXMLParserEntry::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12;
    v14 = "ctm";
    if (CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "ctm", v33) && (v22 = v33[1], *(v13 + 88) = v33[0], *(v13 + 104) = v22, *(v13 + 120) = v33[2], v32 = 0, v14 = "interpolationQuality", CG::DisplayListXMLHelper::parseInterpolationQualityFromAttributes(a2, "interpolationQuality", &v32)) && (*(v13 + 34) = v32, v31 = 0, v14 = "renderingIntent", CG::DisplayListXMLHelper::parseColorRenderingIntentFromAttributes(a2, "renderingIntent", &v31)))
    {
      *(v13 + 35) = v31;
      result = DisplayListXMLParserEntry::getResourceWithAttributeName(a1, a2, "displayList", 1, v18, v19, v20, v21);
      if (!result)
      {
        return result;
      }

      if (v23)
      {
        *(v13 + 10) = v23;
        return 1;
      }

      CGPostError("Resource for attribute: %s is of the wrong class", v24, v25, v26, v27, v28, v29, v30, "displayList");
    }

    else
    {
      CGPostError("Failed to parse %s attribute", v15, v16, v17, v18, v19, v20, v21, v14);
    }

    return 0;
  }

  return result;
}

uint64_t CG::DisplayListEntryAction::_equal_to(CG::DisplayListEntryAction *this, const CG::DisplayListEntry *a2, uint64_t a3)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v6 = *(this + 10);
  v7 = *(a2 + 10);
  if (v6)
  {
    if (!v7 || !(*(*v6 + 24))(v6, v7, a3))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(this + 11);
  v9 = *(a2 + 11);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9 || !(*(*v8 + 24))(v8, v9, a3))
  {
    return 0;
  }

LABEL_11:

  return CG::DisplayListEntry::_equal_to(this, a2, a3);
}

uint64_t CG::DisplayListEntry::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8));
  if (result)
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    result = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
    if (!result)
    {
      return result;
    }

    v7 = *(a1 + 48);
    v8 = *(a2 + 48);
    if ((v7 != 0) == (v8 == 0))
    {
      return 0;
    }

    if (v7)
    {
      if (v8)
      {
        result = (*(*v7 + 16))(v7, v8, a3);
        if (!result)
        {
          return result;
        }
      }
    }

    v9 = *(a1 + 56);
    v10 = *(a2 + 56);
    if ((v9 != 0) == (v10 == 0))
    {
      return 0;
    }

    if (v9)
    {
      if (v10)
      {
        result = (*(*v9 + 16))(v9, v10, a3);
        if (!result)
        {
          return result;
        }
      }
    }

    v11 = *(a1 + 64);
    v12 = *(a2 + 64);
    if ((v11 != 0) == (v12 == 0))
    {
      return 0;
    }

    if (v11)
    {
      if (v12)
      {
        result = (*(*v11 + 16))(v11, v12, a3);
        if (!result)
        {
          return result;
        }
      }
    }

    v13 = *(a1 + 72);
    v14 = *(a2 + 72);
    if ((v13 != 0) == (v14 == 0))
    {
      return 0;
    }

    if (!v13)
    {
      return 1;
    }

    if (!v14)
    {
      return 1;
    }

    result = (*(*v13 + 16))(v13, v14, a3);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t DisplayListXMLParserEntry::getResourceWithAttributeName(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v27 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, a3, "%llu", a4, a5, a6, a7, a8, &v27) != 1)
  {
    if (v8)
    {
      CGPostError("Failed to parse %s attribute", v11, v12, v13, v14, v15, v16, v17, v9);
    }

    return 0;
  }

  v18 = *(a1 + 8);
  v21 = *(v18 + 40);
  v19 = v18 + 40;
  v20 = v21;
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v19;
  do
  {
    v23 = *(v20 + 32);
    v24 = v23 >= v27;
    v25 = v23 < v27;
    if (v24)
    {
      v22 = v20;
    }

    v20 = *(v20 + 8 * v25);
  }

  while (v20);
  if (v22 != v19 && *(v22 + 32) <= v27)
  {
    result = *(v22 + 40);
    if (result)
    {
      return result;
    }
  }

  else
  {
LABEL_10:
    result = 0;
  }

  if (v8)
  {
    CGPostError("resource for id: %llu is NULL", v11, v12, v13, v14, v15, v16, v17, v27);
    return 0;
  }

  return result;
}

uint64_t CG::DisplayListEntryDisplayList::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 88) != *(a2 + 88) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || *(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136) || *(a1 + 140) != *(a2 + 140))
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v7 || !(*(*v6 + 24))(v6, v7, a3))
  {
    return 0;
  }

LABEL_11:

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

unsigned int *CG::DisplayListEntryGradient::_hash(uint64_t a1, unsigned int *a2)
{
  __src = *(*(*(a1 + 80) + 16) + 16);
  XXH64_update(a2, &__src, 4uLL);
  XXH64_update(a2, (a1 + 88), 0x30uLL);
  XXH64_update(a2, (a1 + 136), 4uLL);
  XXH64_update(a2, (a1 + 140), 4uLL);
  v4 = *(a1 + 136);
  switch(v4)
  {
    case 1:
      v5 = 160;
      v6 = 16;
      v7 = 144;
      v8 = 16;
      break;
    case 3:
      v8 = 8;
      v5 = 240;
      v6 = 16;
      v7 = 224;
      break;
    case 2:
      XXH64_update(a2, (a1 + 176), 0x10uLL);
      XXH64_update(a2, (a1 + 192), 0x10uLL);
      v5 = 216;
      v6 = 8;
      v7 = 208;
      v8 = 8;
      break;
    default:
      goto LABEL_8;
  }

  XXH64_update(a2, (a1 + v7), v6);
  XXH64_update(a2, (a1 + v5), v8);
LABEL_8:

  return CG::DisplayListEntry::_hash(a1, a2);
}

uint64_t CG::DisplayListEntryGradient::_equal_to(float64x2_t *this, float64x2_t *a2, uint64_t a3)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*&this->f64[0] - 8) + 8), *(*(*&a2->f64[0] - 8) + 8)))
  {
    return 0;
  }

  if (this[5].f64[1] != a2[5].f64[1])
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(this[6], a2[6]), vceqq_f64(this[7], a2[7])))) & 1) == 0)
  {
    return 0;
  }

  if (this[8].f64[0] != a2[8].f64[0])
  {
    return 0;
  }

  v6 = LODWORD(this[8].f64[1]);
  if (v6 != LODWORD(a2[8].f64[1]) || HIDWORD(this[8].f64[1]) != HIDWORD(a2[8].f64[1]))
  {
    return 0;
  }

  switch(v6)
  {
    case 1:
      if (this[9].f64[0] != a2[9].f64[0] || this[9].f64[1] != a2[9].f64[1] || this[10].f64[0] != a2[10].f64[0])
      {
        return 0;
      }

      v7 = this[10].f64[1];
      v8 = a2[10].f64[1];
      break;
    case 2:
      v13[0] = this[11].f64;
      v13[1] = this[12].f64;
      v13[2] = this[13].f64;
      v13[3] = &this[13].f64[1];
      v12[0] = a2[11].f64;
      v12[1] = a2[12].f64;
      v12[2] = a2[13].f64;
      v12[3] = &a2[13].f64[1];
      if (!std::__tuple_equal<4ul>::operator()[abi:fe200100]<std::tuple<CGPoint const&,CGPoint const&,double const&,double const&>,std::tuple<CGPoint const&,CGPoint const&,double const&,double const&>>(v13, v12))
      {
        return 0;
      }

      goto LABEL_21;
    case 3:
      if (this[14].f64[0] != a2[14].f64[0] || this[14].f64[1] != a2[14].f64[1])
      {
        return 0;
      }

      v7 = this[15].f64[0];
      v8 = a2[15].f64[0];
      break;
    default:
      goto LABEL_21;
  }

  if (v7 != v8)
  {
    return 0;
  }

LABEL_21:
  v9 = this[5].f64[0];
  v10 = a2[5].f64[0];
  if (v9 == 0.0)
  {
    if (v10 == 0.0)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v10 == 0.0 || !(*(**&v9 + 24))(COERCE_FLOAT64_T(*&v9), COERCE_FLOAT64_T(*&v10), a3))
  {
    return 0;
  }

LABEL_24:

  return CG::DisplayListEntry::_equal_to(this, a2, a3);
}

BOOL std::__tuple_equal<4ul>::operator()[abi:fe200100]<std::tuple<CGPoint const&,CGPoint const&,double const&,double const&>,std::tuple<CGPoint const&,CGPoint const&,double const&,double const&>>(double **a1, double **a2)
{
  v2 = **a1 == **a2 && (*a1)[1] == (*a2)[1];
  if (v2 && ((v3 = a1[1], v4 = a2[1], *v3 == *v4) ? (v5 = v3[1] == v4[1]) : (v5 = 0), v5 && *a1[2] == *a2[2]))
  {
    return *a1[3] == *a2[3];
  }

  else
  {
    return 0;
  }
}

uint64_t DisplayListXMLParserEntry::_getEntryStateWithAttributeName(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v27 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, a3, "%llu", a4, a5, a6, a7, a8, &v27) != 1)
  {
    if ((v8 & 1) == 0)
    {
      CGPostError("Failed to parse %s attribute", v11, v12, v13, v14, v15, v16, v17, v9);
    }

    return 0;
  }

  v18 = *(a1 + 8);
  v21 = *(v18 + 64);
  v19 = v18 + 64;
  v20 = v21;
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v19;
  do
  {
    v23 = *(v20 + 32);
    v24 = v23 >= v27;
    v25 = v23 < v27;
    if (v24)
    {
      v22 = v20;
    }

    v20 = *(v20 + 8 * v25);
  }

  while (v20);
  if (v22 == v19 || *(v22 + 32) > v27 || (result = *(v22 + 40)) == 0)
  {
LABEL_11:
    CGPostError("entryState for id: %llu is NULL", v11, v12, v13, v14, v15, v16, v17, v27);
    return 0;
  }

  return result;
}

uint64_t CG::DisplayListEntryShading::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 88) != *(a2 + 88) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || *(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136) || *(a1 + 140) != *(a2 + 140))
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v7 || !(*(*v6 + 24))(v6, v7, a3))
  {
    return 0;
  }

LABEL_11:

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

BOOL DisplayListXMLParserEntryLines::parseChildElements(DisplayListXMLParserEntryLines *this, _xmlNode *a2, CG::DisplayListEntry *lpsrc)
{
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  v14 = malloc_type_malloc(16 * *(this + 2), 0x1000040451B5BE8uLL);
  children = a2->children;
  if (!children)
  {
    goto LABEL_16;
  }

  while (xmlStrcmp(children->name, "lines"))
  {
    children = children->next;
    if (!children)
    {
      goto LABEL_16;
    }
  }

  v16 = children->children;
  if (!v16)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v17 = 0;
  while (v16->type != XML_ELEMENT_NODE)
  {
LABEL_14:
    v16 = v16->next;
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  if (!xmlStrcmp(v16->name, "line"))
  {
    String = xmlNodeListGetString(v16->doc, v16->children, 1);
    if (String)
    {
      v26 = String;
      v31 = 0;
      v32 = 0;
      if (sscanf(String, "{%lg, %lg}", &v32, &v31) == 2)
      {
        v27 = v31;
        p_x = &v14[v17++].x;
        *p_x = v32;
        p_x[1] = v27;
      }

      free(v26);
    }

    goto LABEL_14;
  }

  CGPostError("Unexpected child node name. Expected %s, got %s", v18, v19, v20, v21, v22, v23, v24, "line");
LABEL_17:
  v29 = *(this + 2);
  if (v17 == v29)
  {
    CG::DisplayListEntryLines::setPoints(v6, v14, v17);
  }

  else
  {
    CGPostError("Failed to parse expected number of lines. Expected %zu, got %zu", v7, v8, v9, v10, v11, v12, v13, v29);
  }

  free(v14);
  return v17 == v29;
}

CGPoint *CG::DisplayListEntryLines::setPoints(CG::DisplayListEntryLines *this, const CGPoint *a2, uint64_t a3)
{
  result = *(this + 16);
  if (result != a2)
  {
    free(result);
    *(this + 16) = 0;
    result = malloc_type_malloc(16 * a3, 0x1000040451B5BE8uLL);
    *(this + 16) = result;
    if (result)
    {
      result = memcpy(result, a2, 16 * a3);
    }

    *(this + 17) = a3;
  }

  return result;
}

unsigned int *CG::DisplayListEntryLines::_hash(uint64_t a1, unsigned int *a2)
{
  XXH64_update(a2, (a1 + 80), 0x30uLL);
  v4 = *(a1 + 128);
  if (v4)
  {
    XXH64_update(a2, v4, 16 * *(a1 + 136));
  }

  return CG::DisplayListEntry::_hash(a1, a2);
}

uint64_t CG::DisplayListEntryLines::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 88), *(a2 + 88)), vceqq_f64(*(a1 + 104), *(a2 + 104))))) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  v6 = *(a1 + 136);
  if (v6 != *(a2 + 136))
  {
    return 0;
  }

  v7 = *(a1 + 128);
  v8 = *(a2 + 128);
  if (v7)
  {
    if (!v8 || memcmp(v7, v8, 16 * v6))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}
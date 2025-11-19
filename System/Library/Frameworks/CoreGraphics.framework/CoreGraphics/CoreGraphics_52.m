__n128 CGPDFTextObjectMoveToNextLine(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 88);
  v5 = vaddq_f64(*(a1 + 104), vmlaq_n_f64(vmulq_n_f64(v4, a3), v3, a2));
  *(a1 + 72) = vaddq_f64(v3, vmulq_f64(v4, 0));
  *(a1 + 88) = vmlaq_f64(v4, 0, v3);
  *(a1 + 104) = v5;
  *(a1 + 136) = *(a1 + 88);
  *(a1 + 120) = *(a1 + 72);
  result = *(a1 + 104);
  *(a1 + 152) = result;
  return result;
}

void CGPDFTextObjectSetFont(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 48);
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

    *(a1 + 48) = cf;
  }
}

uint64_t CGPDFTextObjectSetTextDrawingMode(uint64_t result, int a2)
{
  *(result + 40) = a2;
  if ((a2 & 0xFFFFFFFC) == 4)
  {
    v2 = result;
    if (!*(result + 176))
    {
      v3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
      result = __CFSetLastAllocationEventName();
      *v3 = 0;
      *(v2 + 176) = v3;
    }
  }

  return result;
}

double CGPDFTextObjectAppendString(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 48))
      {
        result = *(a1 + 56);
        if (result != 0.0)
        {
          v5 = *(a1 + 168);
          if (!v5)
          {
            v5 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
            __CFSetLastAllocationEventName();
            *v5 = 0;
            *(a1 + 168) = v5;
          }

          v7 = 0uLL;
          CGPDFTextLayoutAppendString(v5, a1, a2, &v7);
          v6 = *(a1 + 176);
          if (v6)
          {
            CGPDFTextLayoutAppendString(v6, a1, a2, 0);
          }

          result = *&v7;
          *(a1 + 152) = vmlaq_n_f64(vmlaq_n_f64(*(a1 + 152), *(a1 + 120), *&v7), *(a1 + 136), *(&v7 + 1));
        }
      }
    }
  }

  return result;
}

double CGPDFTextObjectAppendStrings(uint64_t a1, CGPDFArray *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 48))
      {
        result = *(a1 + 56);
        if (result != 0.0)
        {
          v5 = *(a1 + 168);
          if (!v5)
          {
            v5 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
            __CFSetLastAllocationEventName();
            *v5 = 0;
            *(a1 + 168) = v5;
          }

          v7 = 0uLL;
          CGPDFTextLayoutAppendStrings(v5, a1, a2, &v7);
          v6 = *(a1 + 176);
          if (v6)
          {
            CGPDFTextLayoutAppendStrings(v6, a1, a2, 0);
          }

          result = *&v7;
          *(a1 + 152) = vmlaq_n_f64(vmlaq_n_f64(*(a1 + 152), *(a1 + 120), *&v7), *(a1 + 136), *(&v7 + 1));
        }
      }
    }
  }

  return result;
}

void PDFDocumentRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return;
  }

  if ((*a1)-- != 1)
  {
    return;
  }

  PDFDocumentFinalize(a1, a2, a3, a4, a5, a6, a7, a8);
  CGColorSpaceRelease(*(a1 + 472));
  CGColorSpaceRelease(*(a1 + 480));
  CGColorSpaceRelease(*(a1 + 488));
  v10 = *(a1 + 368);
  if (v10)
  {
    CFRelease(*(v10 + 8));
    CGOrderedSetRelease(*(v10 + 16));
    free(v10);
  }

  v11 = *(a1 + 456);
  if (v11)
  {
    v12 = v11[1];
    if (v12)
    {
      CFRelease(v12);
    }

    free(v11);
  }

  v13 = *(a1 + 440);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      CFRelease(v14);
    }

    CGOrderedSetRelease(*(v13 + 16));
    free(v13);
  }

  v15 = *(a1 + 376);
  if (v15)
  {
    std::__tree<unsigned long>::destroy(*(v15 + 64));
    std::__tree<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::__map_value_compare<CGFont *,std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::less<CGFont *>,true>,std::allocator<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>>>::destroy(*(v15 + 40));
    std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(*(v15 + 16));
    MEMORY[0x1865EE610](v15, 0x1020C40E45BEF79);
  }

  v16 = *(a1 + 408);
  if (v16)
  {
    CGOrderedSetRelease(*(v16 + 16));
    v17 = *(v16 + 8);
    if (v17)
    {
      CFRelease(v17);
    }

    free(v16);
  }

  PDFImageSetRelease(*(a1 + 384));
  PDFImageSetRelease(*(a1 + 392));
  v18 = *(a1 + 416);
  if (v18)
  {
    v19 = *(v18 + 8);
    if (v19)
    {
      CFRelease(v19);
    }

    CGOrderedSetRelease(*(v18 + 16));
    free(v18);
  }

  v20 = *(a1 + 448);
  if (v20)
  {
    v21 = *(v20 + 8);
    if (v21)
    {
      CFRelease(v21);
    }

    CGOrderedSetRelease(*(v20 + 16));
    free(v20);
  }

  v22 = *(a1 + 424);
  if (v22)
  {
    v23 = *(v22 + 8);
    if (v23)
    {
      CFRelease(v23);
    }

    CGOrderedSetRelease(*(v22 + 16));
    free(v22);
  }

  v24 = *(a1 + 432);
  if (v24)
  {
    CGOrderedSetRelease(*(v24 + 16));
    v25 = *(v24 + 8);
    if (v25)
    {
      CFRelease(v25);
    }

    free(v24);
  }

  v26 = *(a1 + 400);
  if (v26)
  {
    CGOrderedSetRelease(*(v26 + 16));
    v27 = *(v26 + 8);
    if (v27)
    {
      CFRelease(v27);
    }

    free(v26);
  }

  v28 = *(a1 + 352);
  if (v28)
  {
    CFRelease(v28);
  }

  PDFMetaSetRelease(*(a1 + 40));
  v29 = *(a1 + 496);
  if (v29)
  {
    v30 = *(v29 + 16);
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = *(v29 + 24);
    if (v31)
    {
      v66 = *(v29 + 24);
      std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](&v66);
      MEMORY[0x1865EE610](v31, 0x20C40960023A9);
    }

    v66 = (v29 + 48);
    std::vector<std::pair<std::shared_ptr<PDFPageNode>,unsigned long>>::__destroy_vector::operator()[abi:fe200100](&v66);
    v32 = *(v29 + 40);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v32);
    }

    MEMORY[0x1865EE610](v29, 0x1020C40932E6E95);
  }

  PDFXRefTableRelease(*(a1 + 504));
  PDFOutputIntentRelease(*(a1 + 48));
  v33 = *(a1 + 56);
  if (v33)
  {
    v34 = v33[2];
    if (v34)
    {
      CFRelease(v34);
    }

    free(v33);
  }

  v35 = *(a1 + 64);
  if (v35)
  {
    v36 = v35[1];
    if (v36)
    {
      CFRelease(v36);
    }

    v37 = v35[3];
    if (v37)
    {
      CFRelease(v37);
    }

    free(v35);
  }

  v38 = *(a1 + 512);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *(a1 + 576);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(a1 + 528);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(a1 + 536);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(a1 + 544);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(a1 + 288);
  if (v43)
  {
    v44 = std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v43);
    MEMORY[0x1865EE610](v44, 0x10A0C408EF24B1CLL);
  }

  v45 = *(a1 + 296);
  if (v45)
  {
    v46 = std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v45);
    MEMORY[0x1865EE610](v46, 0x10A0C408EF24B1CLL);
  }

  v47 = *(a1 + 304);
  if (v47)
  {
    v48 = std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v47);
    MEMORY[0x1865EE610](v48, 0x10A0C408EF24B1CLL);
  }

  v49 = *(a1 + 328);
  if (v49)
  {
    do
    {
      v50 = *v49;
      operator delete(v49);
      v49 = v50;
    }

    while (v50);
  }

  v51 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v51)
  {
    operator delete(v51);
  }

  CGPDFAssociationRelease(*(a1 + 32));
  v52 = *(a1 + 24);
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *(a1 + 568);
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = *(a1 + 560);
  if (v54)
  {
    PDFXRefTableRelease(*(v54 + 88));
    PDFXRefTableRelease(*(v54 + 104));
    v55 = *(v54 + 16);
    if (v55)
    {
      CFRelease(v55);
    }

    v56 = *(v54 + 320);
    if (v56)
    {
      CFRelease(v56);
    }

    v57 = *(v54 + 328);
    if (v57)
    {
      CFRelease(v57);
    }

    v58 = (v54 + 24);
    if (*(v54 + 47) < 0)
    {
      if (!*(v54 + 32))
      {
LABEL_97:
        std::__tree<unsigned long>::destroy(*(v54 + 240));
        std::__tree<unsigned long>::destroy(*(v54 + 216));
        v60 = *(v54 + 184);
        if (v60)
        {
          *(v54 + 192) = v60;
          operator delete(v60);
        }

        v61 = *(v54 + 160);
        if (v61)
        {
          *(v54 + 168) = v61;
          operator delete(v61);
        }

        v62 = *(v54 + 136);
        if (v62)
        {
          *(v54 + 144) = v62;
          operator delete(v62);
        }

        v66 = (v54 + 112);
        std::vector<PDFIndirectObject>::__destroy_vector::operator()[abi:fe200100](&v66);
        v66 = (v54 + 48);
        std::vector<PDFLinearizerPageInfo>::__destroy_vector::operator()[abi:fe200100](&v66);
        if (*(v54 + 47) < 0)
        {
          operator delete(*v58);
        }

        MEMORY[0x1865EE610](v54, 0x1072C405A727712);
        goto LABEL_106;
      }

      v59 = *v58;
    }

    else
    {
      v59 = (v54 + 24);
      if (!*(v54 + 47))
      {
        goto LABEL_97;
      }
    }

    unlink(v59);
    goto LABEL_97;
  }

LABEL_106:
  v63 = *(a1 + 600);
  if (v63)
  {
    CFRelease(v63);
  }

  v64 = *(a1 + 608);
  if (v64)
  {
    CFRelease(v64);
  }

  v65 = *(a1 + 552);
  if (v65)
  {
    CFRelease(v65);
  }

  free(a1);
}

objc_class *get_default_rgb_color_space(PDFDocument *a1)
{
  result = a1[30].super.isa;
  if (!result)
  {
    result = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
    a1[30].super.isa = result;
    if (!result)
    {
      result = CGColorSpaceCreateDeviceRGB();
      a1[30].super.isa = result;
    }
  }

  return result;
}

uint64_t PDFDocumentFinalize(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 72))
  {
    return result;
  }

  v8 = result;
  v1066 = result;
  if (!*(result + 608))
  {
    goto LABEL_56;
  }

  if ((*(result + 616) & 1) == 0)
  {
    goto LABEL_55;
  }

  v9 = PDFXRefTableAddObject(*(result + 504));
  v10 = PDFXRefTableAddObject(*(v8 + 504));
  v11 = PDFXRefTableAddObject(*(v8 + 504));
  v12 = PDFXRefTableAddObject(*(v8 + 504));
  PDFDocumentBeginObject(v8, v10, v13, v14, v15, v16, v17, v18);
  PDFWriterPrintf(*(v8 + 32), "<< /Type /StructTreeRoot /K %R /ParentTree %R /IDTree %R>>", v19, v20, v21, v22, v23, v24, v9);
  PDFDocumentEndObject(v8, v25, v26, v27, v28, v29, v30, v31);
  *(v8 + 624) = v10;
  v1067 = -1;
  CGCFDictionaryGetNumber(*(v8 + 608), @"TagNodeObjectRefID", kCFNumberSInt64Type, &v1067);
  v32 = *(v8 + 288);
  value[0] = v1067;
  value[1] = v9;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(v32, v1067);
  PDFDocumentEmitTaggedNodeStructure(v8, v9, *(v8 + 608), v10);
  value[0] = 0;
  if (CGPDFDictionaryGetArray(*(v8 + 536), "Nums", value))
  {
    PDFDocumentBeginObject(v8, v11, v33, v34, v35, v36, v37, v38);
    PDFWriterPrintf(*(v8 + 32), "<</Nums[", v39, v40, v41, v42, v43, v44, v1018);
    v1069[0] = 0;
    array[0] = 0;
    v1077[0] = -1;
    if (value[0])
    {
      v51 = *(value[0] + 3) - *(value[0] + 2);
      if (v51)
      {
        v52 = 0;
        v53 = v51 >> 3;
        do
        {
          if (CGPDFArrayGetArray(value[0], v52, array))
          {
            if (array[0])
            {
              v54 = *(array[0] + 3) - *(array[0] + 2);
              if (v54)
              {
                v55 = v54 >> 3;
                PDFWriterPrintf(v1066[2].super.isa, "[", v45, v46, v47, v48, v49, v50, v1019);
                v56 = 0;
                while (1)
                {
                  v1076 = 0;
                  CGPDFArrayGetObject(array[0], v56, &v1076);
                  v63 = v1076;
                  if (v1076 && *(v1076 + 2) != 1)
                  {
                    v66 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v1066[19].super.isa, v1077[0]);
                    if (v66)
                    {
                      v67 = v66[3] << 32;
                    }

                    else
                    {
                      v67 = 0xFFFFFFFF00000000;
                    }

                    v68 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v1066[18]._private, v67 | v56);
                    if (!v68 || (v69 = v68[3], v69 == -1))
                    {
                      v70 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v1066[18].super.isa, *(v63 + 2));
                      if (!v70)
                      {
                        goto LABEL_24;
                      }

                      v69 = v70[3];
                      if (v69 == -1)
                      {
                        goto LABEL_24;
                      }
                    }

                    isa = v1066[2].super.isa;
                    v1020 = v69;
                    v65 = "%R";
                  }

                  else
                  {
                    isa = v1066[2].super.isa;
                    v65 = "null";
                  }

                  PDFWriterPrintf(isa, v65, v57, v58, v59, v60, v61, v62, v1020);
LABEL_24:
                  if (v55 == ++v56)
                  {
                    v71 = v1066[2].super.isa;
                    v72 = "]";
                    goto LABEL_28;
                  }
                }
              }
            }
          }

          else if (CGPDFArrayGetInteger(value[0], v52, v1077))
          {
            v71 = v1066[2].super.isa;
            v1020 = v1077[0];
            v72 = "%d";
LABEL_28:
            PDFWriterPrintf(v71, v72, v57, v58, v59, v60, v61, v62, v1020);
          }

          else if (CGPDFArrayGetObject(value[0], v52, v1069))
          {
            v73 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v1066[18].super.isa, *(v1069[0] + 2));
            if (v73)
            {
              v74 = v73[3];
              if (v74 != -1)
              {
                PDFWriterPrintf(v1066[2].super.isa, "%R", v45, v46, v47, v48, v49, v50, v74);
              }
            }
          }

          ++v52;
        }

        while (v52 != v53);
      }
    }

    v8 = v1066;
    PDFWriterPrintf(v1066[2].super.isa, "]>>", v45, v46, v47, v48, v49, v50, v1019);
    PDFDocumentEndObject(v1066, v75, v76, v77, v78, v79, v80, v81);
  }

  value[0] = 0;
  if (CGPDFDictionaryGetArray(*(v8 + 544), "Names", value))
  {
    PDFDocumentBeginObject(v8, v12, a3, a4, a5, a6, a7, a8);
    PDFWriterPrintf(*(v8 + 32), "<</Names[", v82, v83, v84, v85, v86, v87, v1018);
    v1069[0] = 0;
    if (value[0])
    {
      v94 = *(value[0] + 3) - *(value[0] + 2);
      if (v94)
      {
        v95 = 0;
        v96 = v94 >> 3;
        do
        {
          if (CGPDFArrayGetObject(value[0], v95, v1069) && v1069[0])
          {
            v97 = *(v1069[0] + 2);
            if (v97 == 8)
            {
              v106 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v1066[18].super.isa, *(v1069[0] + 2));
              if (v106)
              {
                v107 = v106[3];
                if (v107 != -1)
                {
                  PDFWriterPrintf(v1066[2].super.isa, "%R", v88, v89, v90, v91, v92, v93, v107);
                }
              }
            }

            else if (v97 == 6)
            {
              array[0] = 0;
              CGPDFArrayGetString(value[0], v95, array);
              v104 = array[0];
              if (array[0])
              {
                if (*(array[0] + 3))
                {
                  decrypt_string(array[0]);
                }

                v105 = v104 + 80;
              }

              else
              {
                v105 = 0;
              }

              PDFWriterPrintf(v1066[2].super.isa, "(%s)", v98, v99, v100, v101, v102, v103, v105);
            }
          }

          ++v95;
        }

        while (v96 != v95);
      }
    }

    v8 = v1066;
    PDFWriterPrintf(v1066[2].super.isa, "]>>", v88, v89, v90, v91, v92, v93, v1021);
    PDFDocumentEndObject(v1066, v108, v109, v110, v111, v112, v113, v114);
  }

  if (*(v8 + 608))
  {
LABEL_55:
    CGPostError("%s: Don't mix the old and new tagging functions", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentEmitStructureTree");
  }

  else
  {
LABEL_56:
    if (*(v8 + 648) != *(v8 + 656))
    {
      v121 = PDFXRefTableAddObject(*(v8 + 504));
      *(v8 + 624) = v121;
      if (*(v8 + 640) < 1)
      {
        v122 = 0;
      }

      else
      {
        v122 = PDFXRefTableAddObject(*(v8 + 504));
      }

      v123 = *(v8 + 648);
      v124 = *(v8 + 656);
      while (v123 != v124)
      {
        v125 = PDFXRefTableAddObject(*(v8 + 504));
        v126 = *v123++;
        PDFStructureElement::Emit((v126 + 16), v8, v121, v125, v127, v128, v129, v130);
      }

      PDFDocumentBeginObject(v8, v121, v115, v116, v117, v118, v119, v120);
      PDFDocumentPrintf(v8, "<<", v131, v132, v133, v134, v135, v136, v1018);
      PDFDocumentPrintf(v8, "/Type /StructTreeRoot", v137, v138, v139, v140, v141, v142, v1022);
      PDFDocumentPrintf(v8, "/K", v143, v144, v145, v146, v147, v148, v1023);
      v153 = *(v8 + 656);
      v154 = *(v8 + 648);
      if (v153 - v154 == 8)
      {
        if (v154 == v153)
        {
          goto LABEL_422;
        }

        PDFDocumentPrintf(v8, "%R", v150, v151, v152, a6, a7, a8, *(*v154 + 64));
      }

      else
      {
        PDFDocumentPrintf(v8, "[", v150, v151, v152, a6, a7, a8, v1024);
        v167 = *(v8 + 648);
        v168 = *(v8 + 656);
        while (v167 != v168)
        {
          v169 = *v167++;
          PDFDocumentPrintf(v8, "%R", v161, v162, v163, v164, v165, v166, *(v169 + 64));
        }

        PDFDocumentPrintf(v8, "]", v161, v162, v163, v164, v165, v166, v1026);
      }

      if (v122)
      {
        PDFDocumentPrintf(v8, "/ParentTree %R", v155, v156, v157, v158, v159, v160, v122);
        PDFDocumentPrintf(v8, "/ParentTreeNextKey %d", v170, v171, v172, v173, v174, v175, *(v8 + 640));
      }

      PDFDocumentPrintf(v8, ">>", v155, v156, v157, v158, v159, v160, v1025);
      PDFDocumentEndObject(v8, v176, v177, v178, v179, v180, v181, v182);
      value[0] = 0;
      value[1] = value;
      *&v1071 = 0x4812000000;
      *(&v1071 + 1) = __Block_byref_object_copy__5897;
      v1072 = __Block_byref_object_dispose__5898;
      v1073 = "";
      v1075[0] = 0;
      v1075[1] = 0;
      v1074 = v1075;
      v189 = *(v8 + 648);
      v190 = *(v8 + 656);
      if (v189 != v190)
      {
        v191 = MEMORY[0x1E69E9820];
        do
        {
          v192 = *v189;
          v1069[0] = v191;
          v1069[1] = 3221225472;
          v1069[2] = ___ZL28PDFDocumentEmitStructureTreeP11PDFDocument_block_invoke;
          v1069[3] = &unk_1E6E18EA0;
          v1069[4] = value;
          PDFStructureElement::EnumerateMarkedContentItemsRecursively(v192 + 16, v1069);
          ++v189;
        }

        while (v189 != v190);
      }

      v8 = v1066;
      if (v122)
      {
        PDFDocumentBeginObject(v1066, v122, v183, v184, v185, v186, v187, v188);
        PDFDocumentPrintf(v1066, "<<", v193, v194, v195, v196, v197, v198, v1018);
        PDFDocumentPrintf(v1066, "/Nums", v199, v200, v201, v202, v203, v204, v1027);
        PDFDocumentPrintf(v1066, "[", v205, v206, v207, v208, v209, v210, v1028);
        v218 = *(value[1] + 6);
        v219 = value[1] + 56;
        if (v218 != value[1] + 56)
        {
          v220 = 0;
          do
          {
            for (i = *(v218 + 4); v220 < i; i = *(v218 + 4))
            {
              CGPostError("%s: Object reference with struct parent of %ld not added to a structure element", v211, v212, v213, v214, v215, v216, v217, "PDFDocumentEmitStructureTree");
              PDFDocumentPrintf(v1066, "%d null", v222, v223, v224, v225, v226, v227, v220++);
            }

            PDFDocumentPrintf(v1066, "%d", v212, v213, v214, v215, v216, v217, i);
            array[0] = v1066;
            array[1] = v1066;
            v228 = *(v218 + 16);
            if (v228 == -1)
            {
              std::__throw_bad_variant_access[abi:fe200100]();
            }

            v1077[0] = array;
            (off_1EF23B558[v228])(v1077, v218 + 40);
            v229 = *(v218 + 1);
            if (v229)
            {
              do
              {
                v230 = v229;
                v229 = *v229;
              }

              while (v229);
            }

            else
            {
              do
              {
                v230 = *(v218 + 2);
                v313 = *v230 == v218;
                v218 = v230;
              }

              while (!v313);
            }

            v220 = i + 1;
            v218 = v230;
          }

          while (v230 != v219);
        }

        v8 = v1066;
        PDFDocumentPrintf(v1066, "]", v212, v213, v214, v215, v216, v217, v1029);
        PDFDocumentPrintf(v1066, ">>", v231, v232, v233, v234, v235, v236, v1030);
        PDFDocumentEndObject(v1066, v237, v238, v239, v240, v241, v242, v243);
      }

      _Block_object_dispose(value, 8);
      std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::destroy(v1075[0]);
    }
  }

  if (*(v8 + 64))
  {
    v1069[0] = 0;
    if (*(v8 + 91) == 1)
    {
      if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
      {
        dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_5903);
      }

      v244 = create_pdfa_xmp_metadata(PDFDocument *)::f();
      if (v244)
      {
        v245 = v244;
        v246 = off_1E6E18EC8;
        v247 = 5;
        do
        {
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_163);
          }

          if ((create_pdfa_xmp_metadata(PDFDocument *)::f(v245, *(v246 - 1), *v246, 0) & 1) == 0)
          {
            v8 = v1066;
LABEL_151:
            CFRelease(v245);
            goto LABEL_152;
          }

          v246 += 2;
          --v247;
        }

        while (v247);
        v8 = v1066;
        String = PDFInfoGetString(v1066[4].super.isa, @"kCGPDFContextTitle", @"Title");
        if (String)
        {
          v249 = String;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_169_5905);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"dc:title[x-default]", v249);
        }

        v250 = PDFInfoGetString(v1066[4].super.isa, @"kCGPDFContextAuthor", @"Author");
        if (v250)
        {
          v251 = v250;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_178);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"dc:creator[0]", v251);
        }

        v252 = PDFInfoGetString(v1066[4].super.isa, @"kCGPDFContextSubject", @"Subject");
        if (v252)
        {
          v253 = v252;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_186);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"dc:description[x-default]", v253);
        }

        v254 = PDFInfoCopyKeywordsString(v1066[4].super.isa);
        if (v254)
        {
          v255 = v254;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_191_5908);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"pdf:Keywords", v255);
          CFRelease(v255);
        }

        v256 = PDFInfoGetString(v1066[4].super.isa, @"kCGPDFContextCreator", @"Creator");
        if (v256)
        {
          v257 = v256;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_199);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"xmp:CreatorTool", v257);
        }

        v258 = PDFInfoCopyProducer(v1066[4].super.isa);
        if (v258)
        {
          v259 = v258;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_204);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"pdf:Producer", v259);
          CFRelease(v259);
        }

        v260 = *MEMORY[0x1E695E480];
        ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0x773uLL);
        if (ISO8601Formatter)
        {
          v262 = ISO8601Formatter;
          NowDate = PDFInfoGetNowDate(v1066[4].super.isa);
          StringWithDate = CFDateFormatterCreateStringWithDate(v260, v262, NowDate);
          if (StringWithDate)
          {
            v265 = StringWithDate;
            if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
            {
              dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_209_5913);
            }

            create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"xmp:CreateDate", v265);
            if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
            {
              dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_214);
            }

            create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"xmp:ModifyDate", v265);
            CFRelease(v265);
          }

          CFRelease(v262);
        }

        if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
        {
          dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_219);
        }

        create_pdfa_xmp_metadata(PDFDocument *)::f(v245, 0, @"pdfaid:part", @"2");
        if (_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__10_ != -1)
        {
          dispatch_once(&_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__10_, &__block_literal_global_227);
        }

        _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__10_(v245, 0, @"pdfaid:conformance", @"B");
        value[0] = 0;
        ID = PDFDocumentGetID(v1066, value);
        v267 = malloc_type_malloc((2 * value[0]) | 1, 0x100004077774924uLL);
        if (v267)
        {
          v268 = v267;
          if (value[0])
          {
            v269 = 0;
            v270 = v267 + 1;
            do
            {
              *(v270 - 1) = a0123456789abcd[*(v269 + ID) >> 4];
              *v270 = a0123456789abcd[*(v269 + ID) & 0xF];
              v270 += 2;
              v269 = (v269 + 1);
            }

            while (v269 < value[0]);
            v271 = 2 * value[0];
          }

          else
          {
            v271 = 0;
          }

          v272 = CFStringCreateWithBytes(v260, v267, v271, 0x600u, 0);
          if (v272)
          {
            v273 = v272;
            if (_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__11_ != -1)
            {
              dispatch_once(&_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__11_, &__block_literal_global_235);
            }

            _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__11_(v245, 0, @"xmpMM:DocumentID", v273);
            CFRelease(v273);
          }

          free(v268);
        }

        if (_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__12_ != -1)
        {
          dispatch_once(&_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__12_, &__block_literal_global_240_5919);
        }

        v274 = _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__12_(v245, 0);
        CFRelease(v245);
        if (v274)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(Mutable, @"/Type", @"/Metadata");
          CFDictionarySetValue(Mutable, @"/Subtype", @"/XML");
          CFDictionarySetValue(Mutable, @"/%Stream", v274);
          PDFDocumentAddCatalogEntry(v1066, @"/Metadata", Mutable);
          CFRelease(Mutable);
          v245 = v274;
          goto LABEL_151;
        }
      }
    }

LABEL_152:
    v276 = *(v8 + 496);
    if (!v276)
    {
      v288 = 0;
      goto LABEL_212;
    }

    v277 = v276[3];
    if (!v277 || v277[1] == *v277)
    {
      PDFDocumentBeginPage(*v276, 0);
      PDFDocumentEndPage(*v276);
    }

    v278 = v276[6];
    v279 = v276[7];
    if (v279 != v278)
    {
LABEL_189:
      while (v278 != v279)
      {
        v292 = *v278;
        v291 = *(v278 + 8);
        if (v291)
        {
          atomic_fetch_add_explicit(&v291->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v293 = *(v278 + 16);
        PDFDocumentBeginObject(*v276, *v292, a3, a4, a5, a6, a7, a8);
        PDFDocumentPrintf(*v276, "<<", v294, v295, v296, v297, v298, v299, v1018);
        PDFDocumentPrintf(*v276, "/Type /Pages", v300, v301, v302, v303, v304, v305, v1031);
        v312 = *v276;
        if (v293)
        {
          PDFDocumentPrintPageParentReference(v312, "/Parent %R", v293, v307, v308, v309, v310, v311);
        }

        else if ((*(v312 + 90) & 1) == 0)
        {
          v313 = *(v312 + 96) == INFINITY || *(v312 + 104) == INFINITY;
          if (!v313)
          {
            v314 = *(v312 + 112);
            *value = *(v312 + 96);
            v1071 = v314;
            PDFDocumentPrintf(*v276, "/MediaBox %r", v306, v307, v308, v309, v310, v311, value);
            v312 = *v276;
          }

          v316 = *(v312 + 128);
          v317 = *(v312 + 136);
          v315 = (v312 + 128);
          if (v316 != INFINITY && v317 != INFINITY)
          {
            v319 = v315[1];
            *value = *v315;
            v1071 = v319;
            PDFDocumentPrintf(*v276, "/CropBox %r", v306, v307, v308, v309, v310, v311, value);
          }
        }

        PDFDocumentPrintf(*v276, "/Count %d", v306, v307, v308, v309, v310, v311, v292[1]);
        PDFDocumentPrintf(*v276, "/Kids [", v320, v321, v322, v323, v324, v325, v1032);
        if (v292[2])
        {
          v332 = 0;
          do
          {
            PDFDocumentPrintReference(*v276, "%R", v292[v332++ + 3], v327, v328, v329, v330, v331);
          }

          while (v332 < v292[2]);
        }

        PDFDocumentPrintf(*v276, "]", v326, v327, v328, v329, v330, v331, v1033);
        PDFDocumentPrintf(*v276, ">>", v333, v334, v335, v336, v337, v338, v1034);
        PDFDocumentEndObject(*v276, v339, v340, v341, v342, v343, v344, v345);
        if (v291)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v291);
        }

        v278 += 24;
      }

      v288 = v276[9];
      v8 = v1066;
LABEL_212:
      v346 = *(v8 + 48);
      if (v346 && (v347 = PDFXRefTableAddObject(*(*v346 + 504))) != 0)
      {
        v348 = v347;
        Count = CFArrayGetCount(*(v346 + 16));
        v356 = malloc_type_calloc(1uLL, 8 * Count, 0x2004093837F09uLL);
        if (v356)
        {
          v1062 = v348;
          v1064 = v288;
          PDFDocumentBeginObject(*v346, v348, v350, v351, v352, v353, v354, v355);
          PDFDocumentPrintf(*v346, "[", v357, v358, v359, v360, v361, v362, v1018);
          if (Count)
          {
            for (j = 0; j != Count; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v346 + 16), j);
              v371 = *v346;
              PDFDocumentPrintf(*v346, "<<", v372, v373, v374, v375, v376, v377, v1035);
              PDFDocumentPrintf(v371, "/Type /OutputIntent", v378, v379, v380, v381, v382, v383, v1036);
              v384 = get_string(ValueAtIndex, @"S");
              Length = CFStringGetLength(v384);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              v387 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xA0C6576DuLL);
              if (v387)
              {
                v388 = v387;
                if (CFStringGetCString(v384, v387, MaximumSizeForEncoding + 1, 0x8000100u))
                {
                  PDFDocumentPrintf(v371, "/S /%N", v389, v390, v391, v392, v393, v394, v388);
                }

                free(v388);
              }

              v395 = get_string(ValueAtIndex, @"OutputConditionIdentifier");
              PDFDocumentPrintf(v371, "/OutputConditionIdentifier %S", v396, v397, v398, v399, v400, v401, v395);
              v402 = get_string(ValueAtIndex, @"OutputCondition");
              if (v402)
              {
                PDFDocumentPrintf(v371, "/OutputCondition %T", v403, v404, v405, v406, v407, v408, v402);
              }

              v409 = get_string(ValueAtIndex, @"RegistryName");
              if (v409)
              {
                PDFDocumentPrintf(v371, "/RegistryName %S", v410, v411, v412, v413, v414, v415, v409);
              }

              v416 = get_string(ValueAtIndex, @"Info");
              if (v416)
              {
                PDFDocumentPrintf(v371, "/Info %T", v417, v418, v419, v420, v421, v422, v416);
              }

              else
              {
                PDFDocumentPrintf(v371, "/Info (none)", v417, v418, v419, v420, v421, v422, v1037);
              }

              v423 = CFDictionaryGetValue(ValueAtIndex, @"DestOutputProfile");
              v430 = v423;
              if (v423)
              {
                v431 = CFGetTypeID(v423);
                if (kCGColorSpace_block_invoke_once != -1)
                {
                  dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
                }

                if (v431 == CGColorSpaceGetTypeID_type_id && (CGColorSpaceGetType(v430) == 6 || CGColorSpaceGetType(v430) == 11))
                {
                  v430 = PDFColorSpaceCreate(v371, v430, 0);
                  PDFDocumentPrintf(v371, "/DestOutputProfile", v432, v433, v434, v435, v436, v437, v1038);
                  PDFColorSpaceEmitReference(v430, v438, v439, v440, v441, v442, v443, v444);
                }

                else
                {
                  v430 = 0;
                }
              }

              PDFDocumentPrintf(v371, ">>", v424, v425, v426, v427, v428, v429, v1038);
              v356[j] = v430;
            }

            PDFDocumentPrintf(*v346, "]", v445, v446, v447, v448, v449, v450, v1035);
            PDFDocumentEndObject(*v346, v451, v452, v453, v454, v455, v456, v457);
            v458 = v356;
            v8 = v1066;
            while (1)
            {
              v459 = *v458;
              if (*v458)
              {
                LODWORD(v149) = CGColorSpaceGetType(v459[3]);
                if ((v149 - 10) >= 2 && v149 != 6)
                {
                  goto LABEL_423;
                }

                v461 = v459[2];
                if (!v461)
                {
                  _CGHandleAssert("PDFColorSpaceEmitICCDataStream", 408, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number", a6, a7, a8, v1018);
                }

                v462 = PDFStreamCreateWithObjectNumber(v459[1], v461);
                PDFDocumentBeginObject(*v462, v462[1], v463, v464, v465, v466, v467, v468);
                PDFDocumentPrintf(*v462, "<<", v469, v470, v471, v472, v473, v474, v1018);
                v481 = v459[3];
                if (v481)
                {
                  v481 = *(*(v481 + 24) + 48);
                }

                PDFDocumentPrintf(v459[1], "/N %z", v475, v476, v477, v478, v479, v480, v481);
                PDFStreamBeginData(v462);
                v482 = CGColorSpaceCopyICCData(v459[3]);
                BytePtr = CFDataGetBytePtr(v482);
                v484 = CFDataGetLength(v482);
                CGDataConsumerPutBytes(v462[3], BytePtr, v484);
                CFRelease(v482);
                PDFStreamEndData(v462);
                PDFStreamEnd(v462);
                PDFStreamRelease(v462);
                PDFColorSpaceRelease(*v458);
                v8 = v1066;
              }

              ++v458;
              if (!--Count)
              {
                goto LABEL_252;
              }
            }
          }

          PDFDocumentPrintf(*v346, "]", v363, v364, v365, v366, v367, v368, v1035);
          PDFDocumentEndObject(*v346, v485, v486, v487, v488, v489, v490, v491);
LABEL_252:
          free(v356);
          v356 = v1062;
          v288 = v1064;
        }
      }

      else
      {
        v356 = 0;
      }

      v1065 = PDFXRefTableAddObject(*(v8 + 504));
      if (v1065)
      {
        PDFDocumentBeginObject(v8, v1065, v492, v493, v494, v495, v496, v497);
        PDFDocumentPrintf(v8, "<<", v498, v499, v500, v501, v502, v503, v1018);
        PDFDocumentPrintf(v8, "/Type /Catalog", v504, v505, v506, v507, v508, v509, v1039);
        v515 = *(v8 + 352);
        if (v515)
        {
          CFDictionaryApplyFunction(v515, emit_catalog_entries, v8);
        }

        PDFDocumentPrintReference(v8, "/Pages %R", v288, v510, v511, v512, v513, v514);
        v522 = *(v8 + 4);
        if (v522 < 2)
        {
          if (v522 == 1 && *(v8 + 8) >= 4)
          {
            PDFDocumentPrintf(v8, "/Version /%d.%d", v516, v517, v518, v519, v520, v521, 1);
          }
        }

        else
        {
          PDFDocumentPrintf(v8, "/Version /%d.%d", v516, v517, v518, v519, v520, v521, *(v8 + 4));
        }

        if (v356)
        {
          PDFDocumentPrintReference(v8, "/OutputIntents %R ", v356, v517, v518, v519, v520, v521);
        }

        if (*(v8 + 624))
        {
          PDFDocumentPrintf(v8, "/MarkInfo << /Marked true >>", v516, v517, v518, v519, v520, v521, v1040);
          PDFDocumentPrintReference(v8, "/StructTreeRoot %R", *(v8 + 624), v523, v524, v525, v526, v527);
        }

        if (*(v8 + 560))
        {
          v528 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v529 = *(v8 + 352);
          if (v529)
          {
            CFDictionaryApplyFunction(v529, copy_catalog_entries, v528);
          }

          CGCFDictionarySetInteger(v528, @"/Pages", v288);
          if (v356)
          {
            CGCFDictionarySetInteger(v528, @"/OutputIntents", v356);
          }

          v530 = *(v8 + 624);
          if (v530)
          {
            CGCFDictionarySetInteger(v528, @"/StructTreeRoot", v530);
          }

          v531 = *(v8 + 560);
          if (v531)
          {
            *(v531 + 256) = v1065;
            v532 = *(v531 + 328);
            if (v532 != v528)
            {
              if (v532)
              {
                CFRelease(v532);
              }

              if (v528)
              {
                CFRetain(v528);
              }

              *(v531 + 328) = v528;
            }
          }

          CFRelease(v528);
        }

        PDFDocumentPrintf(v8, ">>", v516, v517, v518, v519, v520, v521, v1040);
        PDFDocumentEndObject(v8, v533, v534, v535, v536, v537, v538, v539);
      }

      v540 = *(v8 + 456);
      if (v540)
      {
        CFDictionaryApplyFunction(*(v540 + 8), emitDestination, 0);
      }

      v541 = *(v8 + 40);
      if (v541)
      {
        while (1)
        {
          v542 = CFArrayGetCount(*(v541 + 16));
          if (!v542)
          {
            break;
          }

          v543 = v542 - 1;
          v544 = CFArrayGetValueAtIndex(*(v541 + 16), v542 - 1);
          CFArrayRemoveValueAtIndex(*(v541 + 16), v543);
          v548 = CFDictionaryGetValue(*(v541 + 24), v544);
          if (!v548)
          {
            _CGHandleAssert("write_top_level_object", 388, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/Annotations/PDFMetaSet.c", "n != PDFObjectNumberInvalid", "invalid PDF object %lu", v545, v546, v547, 0);
          }

          v549 = CFGetTypeID(v544);
          if (v549 == CFDictionaryGetTypeID() && (v550 = CFDictionaryGetValue(v544, @"/%Stream")) != 0)
          {
            v551 = v550;
            v552 = CFDictionaryGetValue(v544, @"/Type");
            if (v552)
            {
              v553 = CFStringCompare(v552, @"/Metadata", 0) == kCFCompareEqualTo;
            }

            else
            {
              v553 = 0;
            }

            v574 = PDFStreamCreateWithObjectNumber(*(v541 + 8), v548);
            v581 = v574;
            if (v574)
            {
              *(v574 + 65) = v553;
            }

            PDFDocumentBeginObject(*v574, v574[1], v575, v576, v577, v578, v579, v580);
            PDFDocumentPrintf(*v581, "<<", v582, v583, v584, v585, v586, v587, v1018);
            CFDictionaryApplyFunction(v544, write_dictionary_entry, v541);
            PDFStreamBeginData(v581);
            v588 = CFDataGetBytePtr(v551);
            v589 = CFDataGetLength(v551);
            CGDataConsumerPutBytes(v581[3], v588, v589);
            PDFStreamEndData(v581);
            PDFStreamEnd(v581);
            PDFStreamRelease(v581);
          }

          else
          {
            v554 = CFGetTypeID(v544);
            if (v554 == CFDataGetTypeID())
            {
              write_object(v541, v544, v555, v556, v557, v558, v559, v560, v1018);
            }

            else
            {
              PDFDocumentBeginObject(*(v541 + 8), v548, v555, v556, v557, v558, v559, v560);
              write_object(v541, v544, v561, v562, v563, v564, v565, v566, v1018);
              PDFDocumentEndObject(*(v541 + 8), v567, v568, v569, v570, v571, v572, v573);
            }
          }
        }
      }

      v590 = v1066;
      emit_page_resources(v1066);
      LOBYTE(v591) = 0;
      do
      {
        v592 = v1066[23]._private;
        if (v592)
        {
          v591 = *(v592 + 9);
          if (v591)
          {
            do
            {
              v593 = *(v592 + 8);
              value[0] = *(v592 + 7);
              v594 = value[0];
              value[1] = v593;
              *(v592 + 8) = 0;
              *(v592 + 9) = 0;
              *&v1071 = v591;
              *(v593 + 2) = &value[1];
              *(v592 + 7) = v592 + 64;
              if (v594 != &value[1])
              {
                do
                {
                  (*(**(v594 + 4) + 40))(*(v594 + 4));
                  v595 = *(v594 + 1);
                  if (v595)
                  {
                    do
                    {
                      v596 = v595;
                      v595 = *v595;
                    }

                    while (v595);
                  }

                  else
                  {
                    do
                    {
                      v596 = *(v594 + 2);
                      v313 = *v596 == v594;
                      v594 = v596;
                    }

                    while (!v313);
                  }

                  v594 = v596;
                }

                while (v596 != &value[1]);
                v593 = value[1];
              }

              std::__tree<unsigned long>::destroy(v593);
              v591 = *(v592 + 9);
            }

            while (v591);
            LOBYTE(v591) = 1;
          }
        }

        v597 = v591;
        v598 = PDFColorSpaceSetEmitDefinitions(v1066[23].super.isa);
        v599 = PDFFunctionSetEmitDefinitions(v1066[25]._private);
        LOBYTE(v591) = 1;
      }

      while ((v597 & 1) != 0 || (v598 & 1) != 0 || (v599 & 1) != 0);
      v605 = v1066[4].super.isa;
      if (!v605)
      {
LABEL_362:
        v788 = *(v590 + 56);
        if (v788 && ((v789 = *(v590 + 32)) == 0 || (*(v789 + 8) = 0, (v788 = *(v590 + 56)) != 0)))
        {
          v791 = PDFXRefTableAddObject(*(*v788 + 504));
          if (v791)
          {
            PDFDocumentBeginObject(*v788, v791, v790, v600, v601, v602, v603, v604);
            PDFDocumentPrintf(*v788, "<<", v792, v793, v794, v795, v796, v797, v1018);
            PDFDocumentPrintf(*v788, "/Filter /Standard", v798, v799, v800, v801, v802, v803, v1045);
            PDFDocumentPrintf(*v788, "/V %d", v804, v805, v806, v807, v808, v809, *(v788 + 8));
            PDFDocumentPrintf(*v788, "/R %d", v810, v811, v812, v813, v814, v815, *(v788 + 12));
            PDFDocumentPrintf(*v788, "/Length %d", v816, v817, v818, v819, v820, v821, *(v788 + 128));
            v828 = *(v788 + 8);
            if ((v828 - 4) >= 2)
            {
              if (v828 != 2)
              {
                _CGHandleAssert("PDFSecurityHandlerEmitEncrypt", 1189, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/Encryption/PDFSecurityHandler.c", "0", "unhandled file version %d  (File too new?)", v825, v826, v827, *(v788 + 8));
              }
            }

            else
            {
              PDFDocumentPrintf(*v788, "/CF", v822, v823, v824, v825, v826, v827, v1046);
              PDFDocumentPrintf(*v788, "<<", v829, v830, v831, v832, v833, v834, v1047);
              PDFDocumentPrintf(*v788, "/StdCF", v835, v836, v837, v838, v839, v840, v1048);
              PDFDocumentPrintf(*v788, "<<", v841, v842, v843, v844, v845, v846, v1049);
              PDFDocumentPrintf(*v788, "/AuthEvent /DocOpen", v847, v848, v849, v850, v851, v852, v1050);
              if (*(v788 + 8) == 4)
              {
                v859 = "/AESV2";
              }

              else
              {
                v859 = "/AESV3";
              }

              PDFDocumentPrintf(*v788, "/CFM %s", v853, v854, v855, v856, v857, v858, v859);
              PDFDocumentPrintf(*v788, "/Length %d", v860, v861, v862, v863, v864, v865, *(v788 + 128) >> 3);
              PDFDocumentPrintf(*v788, ">>", v866, v867, v868, v869, v870, v871, v1051);
              PDFDocumentPrintf(*v788, ">>", v872, v873, v874, v875, v876, v877, v1052);
              PDFDocumentPrintf(*v788, "/StmF /StdCF", v878, v879, v880, v881, v882, v883, v1053);
              PDFDocumentPrintf(*v788, "/StrF /StdCF", v884, v885, v886, v887, v888, v889, v1054);
              PDFDocumentPrintf(*v788, "/EncryptMetadata %b", v890, v891, v892, v893, v894, v895, *(v788 + 136));
            }

            PDFDocumentPrintf(*v788, "/O %X", v822, v823, v824, v825, v826, v827, 32);
            PDFDocumentPrintf(*v788, "/U %X", v896, v897, v898, v899, v900, v901, 32);
            PDFDocumentPrintf(*v788, "/P %d", v902, v903, v904, v905, v906, v907, *(v788 + 24));
            PDFDocumentPrintf(*v788, ">>", v908, v909, v910, v911, v912, v913, v1055);
            PDFDocumentEndObject(*v788, v914, v915, v916, v917, v918, v919, v920);
          }
        }

        else
        {
          v791 = 0;
        }

        v921 = *(v590 + 24);
        if (v921)
        {
          v922 = *(v921 + 40);
        }

        else
        {
          v922 = 0;
        }

        PDFXRefTableEmit(*(v590 + 504), v921, 0, v600, v601, v602, v603, v604);
        v929 = *(v590 + 504);
        if (v929)
        {
          v930 = (*(v929 + 24) - *(v929 + 16)) >> 4;
        }

        else
        {
          v930 = 0;
        }

        PDFDocumentPrintf(v590, "trailer\n", v923, v924, v925, v926, v927, v928, v1018);
        PDFDocumentPrintf(v590, "<<", v931, v932, v933, v934, v935, v936, v1056);
        PDFDocumentPrintf(v590, "/Size %d", v937, v938, v939, v940, v941, v942, v930);
        PDFDocumentPrintReference(v590, "/Root %R", v1065, v943, v944, v945, v946, v947);
        if (v791)
        {
          PDFDocumentPrintReference(v590, "/Encrypt %R", v791, v948, v949, v950, v951, v952);
        }

        v953 = *(v590 + 64);
        if (v953)
        {
          v954 = *(v953 + 16);
          v955 = v954 == 0;
          if (!v954 || (PDFDocumentPrintReference(v590, "/Info %R", *(v953 + 16), v948, v949, v950, v951, v952), (v953 = *(v590 + 64)) != 0))
          {
            v956 = *(v953 + 8);
            if (v956)
            {
              v957 = CFDictionaryGetValue(v956, @"CGPDFContextDocumentID");
              if (v957)
              {
                v958 = v957;
                v959 = CFGetTypeID(v957);
                if (v959 == CFArrayGetTypeID() && CFArrayGetCount(v958) == 2 && (v966 = CFArrayGetValueAtIndex(v958, 0), v967 = CFArrayGetValueAtIndex(v958, 1), v968 = CFGetTypeID(v966), v968 == CFDataGetTypeID()) && (v969 = CFGetTypeID(v967), v969 == CFDataGetTypeID()) && CFDataGetLength(v966) == 16 && CFDataGetLength(v967) == 16)
                {
                  v970 = CFDataGetBytePtr(v966);
                  CFDataGetBytePtr(v967);
                  v1069[0] = 16;
                }

                else
                {
                  if (v958 != *MEMORY[0x1E695E738])
                  {
                    pdf_error("Invalid value for kCGPDFContextDocumentID.");
                  }

                  v1069[0] = 16;
                  v970 = &emit_trailer(PDFDocument *)::md5;
                }

                v971 = v1066;
                goto LABEL_401;
              }

              v590 = v1066;
            }
          }
        }

        else
        {
          LODWORD(v954) = 0;
          v955 = 1;
        }

        v971 = v590;
        v970 = PDFDocumentGetID(v590, v1069);
LABEL_401:
        PDFDocumentPrintf(v971, "/ID [", v960, v961, v962, v963, v964, v965, v1057);
        PDFDocumentPrintf(v971, "%X", v972, v973, v974, v975, v976, v977, v1069[0]);
        PDFDocumentPrintf(v971, "%X", v978, v979, v980, v981, v982, v983, v1069[0]);
        PDFDocumentPrintf(v971, "]", v984, v985, v986, v987, v988, v989, v1058);
        PDFDocumentPrintf(v971, ">>\n", v990, v991, v992, v993, v994, v995, v1059);
        if (*(v971 + 560))
        {
          v1002 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CGCFDictionarySetInteger(v1002, @"/Size", v930);
          CGCFDictionarySetInteger(v1002, @"/Root", v1065);
          if (v791)
          {
            CGCFDictionarySetInteger(v1002, @"/Encrypt", v791);
          }

          if (!v955)
          {
            CGCFDictionarySetInteger(v1002, @"/Info", v954);
          }

          v1003 = CFDataCreate(*MEMORY[0x1E695E480], v970, v1069[0]);
          CFDictionaryAddValue(v1002, @"/ID", v1003);
          CFRelease(v1003);
          v1004 = v1066[35].super.isa;
          if (v1004)
          {
            v1005 = *(v1004 + 40);
            if (v1005 != v1002)
            {
              if (v1005)
              {
                CFRelease(v1005);
              }

              if (v1002)
              {
                CFRetain(v1002);
              }

              *(v1004 + 40) = v1002;
            }
          }

          CFRelease(v1002);
        }

        v8 = v1066;
        PDFDocumentPrintf(v1066, "startxref\n", v996, v997, v998, v999, v1000, v1001, v1060);
        PDFDocumentPrintf(v1066, "%O\n", v1006, v1007, v1008, v1009, v1010, v1011, v922);
        PDFDocumentPrintf(v1066, "%%%%EOF\n", v1012, v1013, v1014, v1015, v1016, v1017, v1061);
        goto LABEL_415;
      }

      if (!v605[1])
      {
        v628 = 0;
        v608 = 0;
        goto LABEL_339;
      }

      v606 = PDFInfoCopyKeywordsString(v1066[4].super.isa);
      if (v606)
      {
        v607 = v606;
        v608 = PDFXRefTableAddObject(*(*v605 + 504));
        PDFDocumentBeginObject(*v605, v608, v609, v610, v611, v612, v613, v614);
        PDFDocumentPrintf(*v605, "%T", v615, v616, v617, v618, v619, v620, v607);
        PDFDocumentEndObject(*v605, v621, v622, v623, v624, v625, v626, v627);
        CFRelease(v607);
      }

      else
      {
        v608 = 0;
      }

      v629 = v605[1];
      if (!v629)
      {
        v628 = 0;
        goto LABEL_339;
      }

      v630 = CFDictionaryGetValue(v629, @"kCGPDFContextKeywords");
      v628 = v630;
      if (v630)
      {
        v631 = CFGetTypeID(v630);
        if (v631 == CFArrayGetTypeID())
        {
          v632 = CFArrayGetCount(v628);
          if (v632 >= 1)
          {
            v633 = v632;
            MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v628);
            for (k = 0; k < v633; ++k)
            {
              v636 = CFArrayGetValueAtIndex(MutableCopy, k);
              v637 = CFGetTypeID(v636);
              if (v637 != CFStringGetTypeID() || CFStringGetLength(v636) <= 0)
              {
                CFArrayRemoveValueAtIndex(MutableCopy, k);
                --v633;
                --k;
              }
            }

            if (v633 >= 1)
            {
              v628 = PDFXRefTableAddObject(*(*v605 + 504));
              PDFDocumentBeginObject(*v605, v628, v638, v639, v640, v641, v642, v643);
              PDFDocumentPrintf(*v605, "[", v644, v645, v646, v647, v648, v649, v1018);
              for (m = 0; m != v633; ++m)
              {
                v651 = CFArrayGetValueAtIndex(MutableCopy, m);
                PDFDocumentPrintf(*v605, "%T", v652, v653, v654, v655, v656, v657, v651);
              }

              CFRelease(MutableCopy);
              PDFDocumentPrintf(*v605, "]", v658, v659, v660, v661, v662, v663, v1041);
              PDFDocumentEndObject(*v605, v664, v665, v666, v667, v668, v669, v670);
              goto LABEL_335;
            }

            CFRelease(MutableCopy);
          }
        }

        v628 = 0;
      }

LABEL_335:
      v671 = v605[1];
      if (v671)
      {
        LOBYTE(value[0]) = 0;
        v672 = 0;
        if (CGCFDictionaryGetBoolean(v671, @"CreateAIGeneratedContentDictionary", value) && LOBYTE(value[0]))
        {
          v672 = PDFXRefTableAddObject(*(*v605 + 504));
          PDFDocumentBeginObject(*v605, v672, v673, v674, v675, v676, v677, v678);
          PDFDocumentPrintf(*v605, "<<", v679, v680, v681, v682, v683, v684, v1018);
          v685 = *MEMORY[0x1E695E480];
          v686 = CFUUIDCreate(*MEMORY[0x1E695E480]);
          v687 = CFUUIDCreateString(v685, v686);
          CFRelease(v686);
          PDFDocumentPrintf(*v605, "/Label 1", v688, v689, v690, v691, v692, v693, v1042);
          PDFDocumentPrintf(*v605, "/ContentProducer %T", v694, v695, v696, v697, v698, v699, @"001191310115MAEA70M85H00000");
          PDFDocumentPrintf(*v605, "/ProduceID %T", v700, v701, v702, v703, v704, v705, v687);
          PDFDocumentPrintf(*v605, "/ReservedCode1 %T", v706, v707, v708, v709, v710, v711, &stru_1EF244DC0);
          PDFDocumentPrintf(*v605, "/ContentPropagator %T", v712, v713, v714, v715, v716, v717, @"001191310115MAEA70M85H00000");
          PDFDocumentPrintf(*v605, "/PropagateID %T", v718, v719, v720, v721, v722, v723, v687);
          PDFDocumentPrintf(*v605, "/ReservedCode2 %T", v724, v725, v726, v727, v728, v729, &stru_1EF244DC0);
          CFRelease(v687);
          PDFDocumentPrintf(*v605, ">>", v730, v731, v732, v733, v734, v735, v1043);
          PDFDocumentEndObject(*v605, v736, v737, v738, v739, v740, v741, v742);
        }

        goto LABEL_340;
      }

LABEL_339:
      v672 = 0;
LABEL_340:
      v743 = PDFXRefTableAddObject(*(*v605 + 504));
      v605[2] = v743;
      PDFDocumentBeginObject(*v605, v743, v744, v745, v746, v747, v748, v749);
      PDFDocumentPrintf(*v605, "<<", v750, v751, v752, v753, v754, v755, v1018);
      v756 = PDFInfoGetString(v605, @"kCGPDFContextTitle", @"Title");
      v757 = *(*v605 + 48);
      if (!v756)
      {
        if (PDFOutputIntentGetIsX3(*(*v605 + 48)))
        {
          v756 = @"Untitled";
        }

        else
        {
          v756 = 0;
        }
      }

      emit_key_string(v605, @"/Title", v756);
      v758 = PDFInfoCopyProducer(v605);
      if (v758)
      {
        v759 = v758;
        emit_key_string(v605, @"/Producer", v758);
        CFRelease(v759);
      }

      v760 = PDFInfoGetString(v605, @"kCGPDFContextAuthor", @"Author");
      emit_key_string(v605, @"/Author", v760);
      v761 = PDFInfoGetString(v605, @"kCGPDFContextSubject", @"Subject");
      emit_key_string(v605, @"/Subject", v761);
      v762 = PDFInfoGetString(v605, @"kCGPDFContextCreator", @"Creator");
      emit_key_string(v605, @"/Creator", v762);
      v763 = PDFInfoGetNowDate(v605);
      if (v763)
      {
        v770 = PDFCreateDateString(v763);
        if (v770)
        {
          v771 = v770;
          emit_key_string(v605, @"/CreationDate", v770);
          emit_key_string(v605, @"/ModDate", v771);
          CFRelease(v771);
        }
      }

      if (v608)
      {
        PDFDocumentPrintReference(*v605, "/Keywords %R", v608, v765, v766, v767, v768, v769);
      }

      if (v628)
      {
        PDFDocumentPrintReference(*v605, "/AAPL:Keywords %R", v628, v765, v766, v767, v768, v769);
      }

      if (v672)
      {
        PDFDocumentPrintReference(*v605, "/AIGC %R", v672, v765, v766, v767, v768, v769);
      }

      v590 = v1066;
      if (v757 && PDFOutputIntentGetIsX3(v757))
      {
        v772 = *v757;
        PDFDocumentPrintf(*v757, "/GTS_PDFXVersion (PDF/X-3:2002)", v764, v765, v766, v767, v768, v769, v1044);
        v773 = CFDictionaryGetValue(*(v757 + 8), @"Trapped");
        v780 = "False";
        if (v773 && CFEqual(v773, @"True"))
        {
          v780 = "True";
        }

        PDFDocumentPrintf(v772, "/Trapped /%N", v774, v775, v776, v777, v778, v779, v780);
      }

      PDFDocumentPrintf(*v605, ">>", v764, v765, v766, v767, v768, v769, v1044);
      PDFDocumentEndObject(*v605, v781, v782, v783, v784, v785, v786, v787);
      goto LABEL_362;
    }

    for (n = 0; ; n = v286)
    {
      v281 = v276[3];
      v276[3] = 0;
      v276[4] = 0;
      v149 = v276[5];
      v276[5] = 0;
      if (v149)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v149);
      }

      v283 = *v281;
      v282 = *(v281 + 1);
      if (v282 - *v281 == 16)
      {
        break;
      }

      v1063 = v281;
      if (v283 == v282)
      {
        v286 = n;
      }

      else
      {
        do
        {
          v285 = *v283;
          v284 = *(v283 + 8);
          if (v284)
          {
            atomic_fetch_add_explicit(v284 + 1, 1uLL, memory_order_relaxed);
          }

          PDFPageTree::addNode(value, v276, *v285, *(v285 + 1));
          v287 = value[0];
          v286 = value[1];
          value[0] = 0;
          value[1] = 0;
          if (n)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](n);
            if (value[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](value[1]);
            }
          }

          value[0] = v285;
          value[1] = v284;
          if (v284)
          {
            atomic_fetch_add_explicit(v284 + 1, 1uLL, memory_order_relaxed);
          }

          *&v1071 = *v287;
          std::vector<std::pair<std::shared_ptr<PDFPageNode>,unsigned long>>::push_back[abi:fe200100]((v276 + 6), value);
          if (value[1])
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](value[1]);
          }

          if (v284)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v284);
          }

          v283 += 16;
          n = v286;
        }

        while (v283 != v282);
      }

      value[0] = v1063;
      std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](value);
      MEMORY[0x1865EE610](v1063, 0x20C40960023A9);
    }

    if (v283 != v282)
    {
      v289 = *v283;
      v290 = *(v283 + 8);
      if (v290)
      {
        atomic_fetch_add_explicit(v290 + 1, 1uLL, memory_order_relaxed);
        value[0] = v289;
        value[1] = v290;
        atomic_fetch_add_explicit(v290 + 1, 1uLL, memory_order_relaxed);
      }

      else
      {
        value[0] = *v283;
        value[1] = 0;
      }

      *&v1071 = 0;
      std::vector<std::pair<std::shared_ptr<PDFPageNode>,unsigned long>>::push_back[abi:fe200100]((v276 + 6), value);
      if (value[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](value[1]);
      }

      v276[9] = *v289;
      value[0] = v281;
      std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](value);
      MEMORY[0x1865EE610](v281, 0x20C40960023A9);
      if (n)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](n);
      }

      if (v290)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v290);
      }

      v278 = v276[6];
      v279 = v276[7];
      goto LABEL_189;
    }

LABEL_422:
    __break(1u);
LABEL_423:
    _CGHandleAssert("PDFColorSpaceEmitICCDataStream", 407, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "type == kCGColorSpaceICCBased || type == kCGColorSpaceProfileSets || type == kCGColorSpaceFlexGTCProxy", "invalid colorspace type %d", a6, a7, a8, v149);
  }

LABEL_415:
  CGDataConsumerClose(*(v8 + 24));
  result = *(v8 + 560);
  if (result)
  {
    PDFLinearizer::endDocument(result, *(v8 + 568));
  }

  *(v8 + 72) = 1;
  return result;
}

void sub_18410C150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a24);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::__map_value_compare<CGFont *,std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::less<CGFont *>,true>,std::allocator<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::__map_value_compare<CGFont *,std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::less<CGFont *>,true>,std::allocator<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>>>::destroy(*a1);
    std::__tree<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::__map_value_compare<CGFont *,std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::less<CGFont *>,true>,std::allocator<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

uint64_t *PDFDocumentBeginObject(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  result = PDFWriterBeginObject(*(a1 + 32), a2, &v17, a4, a5, a6, a7, a8);
  v11 = *(a1 + 504);
  if (v11)
  {
    v12 = *(v11 + 8);
    v13 = a2 >= v12;
    v14 = a2 - v12;
    if (v13)
    {
      v16 = v11 + 16;
      v15 = *(v11 + 16);
      if (v14 < (*(v16 + 8) - v15) >> 4)
      {
        *(v15 + 16 * v14) = v17;
      }
    }
  }

  *(a1 + 280) = a2;
  return result;
}

_BYTE *PDFDocumentEndObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  result = PDFWriterEndObject(*(a1 + 32), &v17, a3, a4, a5, a6, a7, a8);
  v10 = *(a1 + 504);
  if (v10)
  {
    v11 = *(a1 + 280);
    v12 = *(v10 + 8);
    v13 = v11 >= v12;
    v14 = v11 - v12;
    if (v13)
    {
      v16 = v10 + 16;
      v15 = *(v10 + 16);
      if (v14 < (*(v16 + 8) - v15) >> 4)
      {
        *(v15 + 16 * v14 + 8) = v17 - *(v15 + 16 * v14);
      }
    }
  }

  *(a1 + 280) = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
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
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
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

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void PDFDocumentEmitTaggedNodeStructure(PDFDocument *a1, unint64_t a2, __CFDictionary *a3, uint64_t a4)
{
  v190 = -1;
  CGCFDictionaryGetNumber(a3, @"TagNodeMCID", kCFNumberSInt64Type, &v190);
  tagType = 0;
  if (CGCFDictionaryGetInteger(a3, @"TagNodeType", &tagType))
  {
    v8 = tagType;
    Name = CGPDFTagTypeGetName(tagType);
    if (Name)
    {
      v10 = Name;
      v188 = 0;
      Integer = CGCFDictionaryGetInteger(a3, @"PageObjectNumber", &v188);
      if (v190 != -1)
      {
        v18 = a1[18]._private;
        value = (v190 | (v188 << 32));
        v192 = a2;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(v18, value);
      }

      if (v8 == 800)
      {
        PDFDocumentBeginObject(a1, a2, v11, v12, v13, v14, v15, v16);
        LODWORD(value) = 0;
        CGCFDictionaryGetInteger(a3, @"TagNodeObjectRefID", &value);
        v19 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(a1[18].super.isa, value);
        if (v19)
        {
          v26 = v19[3];
        }

        else
        {
          v26 = -1;
        }

        PDFDocumentPrintf(a1, "<<", v20, v21, v22, v23, v24, v25, v180);
        PDFDocumentPrintf(a1, "/Type /OBJR", v37, v38, v39, v40, v41, v42, v181);
        PDFDocumentPrintf(a1, "/Obj %R", v43, v44, v45, v46, v47, v48, v26);
        PDFDocumentPrintReference(a1, "/P %R", a4, v49, v50, v51, v52, v53);
        if (Integer)
        {
          PDFDocumentPrintReference(a1, "/Pg %R", v188, v55, v56, v57, v58, v59);
        }

        PDFDocumentPrintf(a1, ">>", v54, v55, v56, v57, v58, v59, v182);
        PDFDocumentEndObject(a1, v60, v61, v62, v63, v64, v65, v66);
      }

      else
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v28 = CFDictionaryGetValue(a3, @"TagNodeChildren");
        v35 = v28;
        if (v28)
        {
          Count = CFArrayGetCount(v28);
        }

        else
        {
          Count = 0;
        }

        PDFDocumentBeginObject(a1, a2, v29, v30, v31, v32, v33, v34);
        PDFDocumentPrintf(a1, "<< /Type /StructElem", v67, v68, v69, v70, v71, v72, v180);
        PDFDocumentPrintf(a1, "/S %s", v73, v74, v75, v76, v77, v78, v10);
        PDFDocumentPrintReference(a1, "/P %R", a4, v79, v80, v81, v82, v83);
        if (Integer && (Count < 1 || v190 != -1))
        {
          PDFDocumentPrintReference(a1, "/Pg %R", v188, v84, v85, v86, v87, v88);
        }

        v89 = CFDictionaryGetValue(a3, @"TagNodeProperties");
        if (v89)
        {
          v90 = v89;
          if (v8 == CGPDFTagTypeFigure)
          {
            isa = a1[20].super.isa;
            if (isa)
            {
              v92 = vcnt_s8(isa);
              v92.i16[0] = vaddlv_u8(v92);
              if (v92.u32[0] > 1uLL)
              {
                v93 = v190;
                if (v190 >= isa)
                {
                  v93 = v190 % isa;
                }
              }

              else
              {
                v93 = (isa - 1) & v190;
              }

              v94 = *(a1[19]._private + v93);
              if (v94)
              {
                for (i = *v94; i; i = *i)
                {
                  v96 = i[1];
                  if (v190 == v96)
                  {
                    if (i[2] == v190)
                    {
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    if (v92.u32[0] > 1uLL)
                    {
                      if (v96 >= isa)
                      {
                        v96 %= isa;
                      }
                    }

                    else
                    {
                      v96 &= isa - 1;
                    }

                    if (v96 != v93)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          TypeID = CFStringGetTypeID();
          ValueWithType = CGCFDictionaryGetValueWithType(v90, @"CGPDFTagPropertyLanguageText", TypeID);
          if (ValueWithType || (v105 = CFStringGetTypeID(), (ValueWithType = CGCFDictionaryGetValueWithType(v90, @"Lang", v105)) != 0))
          {
            PDFDocumentPrintf(a1, "/Lang %T", v99, v100, v101, v102, v103, v104, ValueWithType);
          }

          v106 = CFStringGetTypeID();
          v107 = CGCFDictionaryGetValueWithType(v90, @"CGPDFTagPropertyAlternativeText", v106);
          if (v107 || (v114 = CFStringGetTypeID(), (v107 = CGCFDictionaryGetValueWithType(v90, @"Alt", v114)) != 0))
          {
            PDFDocumentPrintf(a1, "/Alt %T", v108, v109, v110, v111, v112, v113, v107);
          }

          v115 = CFStringGetTypeID();
          v116 = CGCFDictionaryGetValueWithType(v90, @"CGPDFTagPropertyActualText", v115);
          if (v116 || (v123 = CFStringGetTypeID(), (v116 = CGCFDictionaryGetValueWithType(v90, @"ActualText", v123)) != 0))
          {
            PDFDocumentPrintf(a1, "/ActualText %T", v117, v118, v119, v120, v121, v122, v116);
          }

          v124 = CFStringGetTypeID();
          v125 = CGCFDictionaryGetValueWithType(v90, @"CGPDFTagPropertyTitleText", v124);
          if (v125 || (v132 = CFStringGetTypeID(), (v125 = CGCFDictionaryGetValueWithType(v90, @"T", v132)) != 0))
          {
            PDFDocumentPrintf(a1, "/T %T", v126, v127, v128, v129, v130, v131, v125);
          }
        }

LABEL_49:
        value = 0;
        if (CFDictionaryGetValueIfPresent(a3, @"ID", &value))
        {
          CStringPtr = CFStringGetCStringPtr(value, 0x8000100u);
          PDFDocumentPrintf(a1, "/ID (%s)", v140, v141, v142, v143, v144, v145, CStringPtr);
        }

        if (Count <= 0)
        {
          v184 = v190;
          v159 = "/K %d ";
        }

        else
        {
          PDFDocumentPrintf(a1, "/K [", v133, v134, v135, v136, v137, v138, v183);
          v152 = Count;
          if ((v190 & 0x8000000000000000) == 0)
          {
            PDFDocumentPrintf(a1, "%d", v146, v147, v148, v149, v150, v151, v190);
            v152 = Count;
          }

          do
          {
            v153 = PDFXRefTableAddObject(a1[31]._private);
            CGCFArrayAppendInteger(Mutable, v153);
            PDFDocumentPrintReference(a1, "%R", v153, v154, v155, v156, v157, v158);
            --v152;
          }

          while (v152);
          v159 = "]";
        }

        PDFDocumentPrintf(a1, v159, v133, v134, v135, v136, v137, v138, v184);
        PDFDocumentPrintf(a1, " >>", v160, v161, v162, v163, v164, v165, v185);
        PDFDocumentEndObject(a1, v166, v167, v168, v169, v170, v171, v172);
        number = 0;
        if (CFDictionaryGetValueIfPresent(a3, @"TagNodeObjectRefID", &number))
        {
          valuePtr = 0;
          CFNumberGetValue(number, kCFNumberLongType, &valuePtr);
          v173 = a1[18].super.isa;
          value = valuePtr;
          v192 = a2;
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(v173, valuePtr);
        }

        if (Count >= 1)
        {
          for (j = 0; j != Count; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v35, j);
            if (Mutable && (v176 = CFArrayGetValueAtIndex(Mutable, j)) != 0 && (v177 = v176, v178 = CFGetTypeID(v176), v178 == CFNumberGetTypeID()) && (LODWORD(value) = 0, CFNumberGetValue(v177, kCFNumberIntType, &value)))
            {
              v179 = value;
            }

            else
            {
              v179 = 0;
            }

            PDFDocumentEmitTaggedNodeStructure(a1, v179, ValueAtIndex, a2);
          }
        }

        CFRelease(Mutable);
      }
    }
  }
}

void *__Block_byref_object_copy__5897(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void ___ZL28PDFDocumentEmitStructureTreeP11PDFDocument_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(*(a2 + 48) + 64);
  v5 = *(*(a1 + 32) + 8);
  if (*(a2 + 16))
  {
    v17[0] = *(*(a2 + 48) + 64);
    v18 = 0;
    std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<long,std::pair<long const,std::variant<unsigned long,std::vector<unsigned long>>>>(v5 + 48, v3);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](v17);
    return;
  }

  memset(v17, 0, sizeof(v17));
  v18 = 1;
  v6 = std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<long,std::pair<long const,std::variant<unsigned long,std::vector<unsigned long>>>>(v5 + 48, v3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](v17);
  if (*(v6 + 16) != 1)
  {
LABEL_18:
    std::__throw_bad_variant_access[abi:fe200100]();
  }

  v7 = *(a2 + 32);
  v8 = v6[5];
  v9 = v6[6];
  v10 = (v9 - v8) >> 3;
  v11 = v7 + 1;
  if (v7 + 1 > v10)
  {
    v12 = v11 - v10;
    v13 = v6[7];
    if (v12 > (v13 - v9) >> 3)
    {
      if (!(v11 >> 61))
      {
        v14 = v13 - v8;
        if (v14 >> 2 > v11)
        {
          v11 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v11;
        }

        std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v15);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    bzero(v6[6], 8 * v12);
    v16 = v9 + 8 * v12;
    v6[6] = v16;
    v10 = (v16 - v8) >> 3;
  }

  if (v10 <= v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v8 + 8 * v7) = v4;
}

void std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::destroy(*a1);
    std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::destroy(a1[1]);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100]((a1 + 5));

    operator delete(a1);
  }
}

uint64_t PDFDocumentGetID(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 256) & 1) == 0)
  {
    v4 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    CC_MD5_Init(v4);
    data = time(0);
    if (v4)
    {
      CC_MD5_Update(v4, &data, 8u);
      CC_MD5_Update(v4, &PDFDocumentGetID::stamp, 4u);
    }

    ++PDFDocumentGetID::stamp;
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(v5 + 40);
    }

    else
    {
      v6 = 0;
    }

    v15 = v6;
    if (v4)
    {
      CC_MD5_Update(v4, &v15, 8u);
      v5 = *(a1 + 24);
    }

    if (v5)
    {
      if (*(v5 + 72) == url_put_bytes)
      {
        v8 = *(v5 + 16);
        if (v8)
        {
          if (*v8)
          {
            v9 = CFURLCopyAbsoluteURL(*v8);
            if (v9)
            {
              v10 = v9;
              v11 = CFURLCopyPath(v9);
              if (v11)
              {
                v12 = v11;
                Length = CFStringGetLength(v11);
                v15 = 2 * Length;
                v14 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
                v19.location = 0;
                v19.length = Length;
                CFStringGetCharacters(v12, v19, v14);
                if (v4)
                {
                  md5_update(v4, v14, v15);
                }

                free(v14);
                CFRelease(v12);
              }

              CFRelease(v10);
            }
          }
        }
      }
    }

    data = time(0);
    if (v4)
    {
      CC_MD5_Update(v4, &data, 8u);
      CC_MD5_Final(md, v4);
    }

    free(v4);
    *(a1 + 257) = *md;
    *(a1 + 256) = 1;
  }

  if (a2)
  {
    *a2 = 16;
  }

  return a1 + 257;
}

void PDFDocumentAddCatalogEntry(uint64_t a1, const void *a2, void *key)
{
  if (a1)
  {
    v6 = *(a1 + 40);
    Value = CFDictionaryGetValue(*(v6 + 24), key);
    if (Value || (Value = PDFXRefTableAddObject(*(*(v6 + 8) + 504)), CFDictionarySetValue(*(v6 + 24), key, Value), CFArrayAppendValue(*(v6 + 16), key), Value))
    {
      Mutable = *(a1 + 352);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
        *(a1 + 352) = Mutable;
      }

      CFDictionarySetValue(Mutable, a2, Value);
    }
  }
}

void PDFDocumentPrintReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PDFDocumentPrintf(a1, a2, a3, a4, a5, a6, a7, a8, a3);
  v10 = *(a1 + 560);
  if (v10)
  {
    v11 = *(a1 + 280);

    PDFLinearizerRecordReference(v10, a3, v11);
  }
}

uint64_t emit_page_resources(PDFDocument *a1)
{
  do
  {
    isa = a1[25].super.isa;
    context = 0;
    if (isa && (v3 = *(isa + 2)) != 0)
    {
      do
      {
        *(isa + 2) = 0;
        v4 = *(v3 + 8);
        v41.length = CFArrayGetCount(v4);
        v41.location = 0;
        CFArrayApplyFunction(v4, v41, emitFormDefinition, &context);
        CGOrderedSetRelease(v3);
        v3 = *(isa + 2);
      }

      while (v3);
      v5 = context;
    }

    else
    {
      v5 = 0;
    }

    v6 = a1[27].super.isa;
    v36 = 0;
    if (v6 && (v7 = *(v6 + 2)) != 0)
    {
      do
      {
        *(v6 + 2) = 0;
        v8 = *(v7 + 8);
        v42.length = CFArrayGetCount(v8);
        v42.location = 0;
        CFArrayApplyFunction(v8, v42, emitClipMaskDefinition, &v36);
        CGOrderedSetRelease(v7);
        v7 = *(v6 + 2);
      }

      while (v7);
      v9 = v36;
    }

    else
    {
      v9 = 0;
    }

    v10 = a1[26].super.isa;
    v37 = 0;
    if (v10 && (v11 = *(v10 + 2)) != 0)
    {
      do
      {
        *(v10 + 2) = 0;
        v12 = *(v11 + 8);
        v43.length = CFArrayGetCount(v12);
        v43.location = 0;
        CFArrayApplyFunction(v12, v43, emitPatternDefinition, &v37);
        CGOrderedSetRelease(v11);
        v11 = *(v10 + 2);
      }

      while (v11);
      v13 = v37;
    }

    else
    {
      v13 = 0;
    }

    v14 = a1[26]._private;
    v38 = 0;
    if (v14 && (v15 = *(v14 + 2)) != 0)
    {
      do
      {
        *(v14 + 2) = 0;
        v16 = *(v15 + 8);
        v44.length = CFArrayGetCount(v16);
        v44.location = 0;
        CFArrayApplyFunction(v16, v44, emitShadingDefinition, &v38);
        CGOrderedSetRelease(v15);
        v15 = *(v14 + 2);
      }

      while (v15);
      v17 = v38;
    }

    else
    {
      v17 = 0;
    }

    v18 = PDFImageSetEmitDefinitions(a1[24].super.isa);
    v19 = PDFImageSetEmitDefinitions(a1[24]._private);
    v20 = a1[27]._private;
    v39 = 0;
    if (v20)
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v22 = v5;
        do
        {
          *(v20 + 2) = 0;
          v23 = *(v21 + 8);
          v45.length = CFArrayGetCount(v23);
          v45.location = 0;
          CFArrayApplyFunction(v23, v45, emitEStateDefinition, &v39);
          CGOrderedSetRelease(v21);
          v21 = *(v20 + 2);
        }

        while (v21);
        LOBYTE(v20) = v39;
        v5 = v22;
      }

      else
      {
        LOBYTE(v20) = 0;
      }
    }

    v24 = a1[28].super.isa;
    v40 = 0;
    if (v24 && (v25 = *(v24 + 2)) != 0)
    {
      v34 = v17;
      v26 = v13;
      v27 = v9;
      v28 = v5;
      do
      {
        *(v24 + 2) = 0;
        v29 = *(v25 + 8);
        v46.length = CFArrayGetCount(v29);
        v46.location = 0;
        CFArrayApplyFunction(v29, v46, emitPropertyListDefinition, &v40);
        CGOrderedSetRelease(v25);
        v25 = *(v24 + 2);
      }

      while (v25);
      v30 = v40;
      v5 = v28;
      v9 = v27;
      v13 = v26;
      v17 = v34;
    }

    else
    {
      v30 = 0;
    }

    v31 = v5 | v9 | v13 | v17 | v18 | v19 | v20 | v30;
    v32 = PDFColorSpaceSetEmitDefinitions(a1[23].super.isa);
    result = PDFFunctionSetEmitDefinitions(a1[25]._private);
  }

  while ((v31 & 1) != 0 || (v32 & 1) != 0 || (result & 1) != 0);
  return result;
}

void PDFDocumentPrintNameReferencePair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PDFDocumentPrintf(a1, a2, a3, a4, a5, a6, a7, a8, a3);
  v10 = *(a1 + 560);
  if (v10)
  {
    v11 = *(a1 + 280);

    PDFLinearizerRecordReference(v10, a4, v11);
  }
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataCreateXMPData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataCreateXMPData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataCreateXMPData");
  }

  _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__12_ = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__11_ = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__10_ = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataSetValueWithPath");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataRegisterNamespaceForPrefix");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataRegisterNamespaceForPrefix");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataRegisterNamespaceForPrefix");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageMetadataCreateMutable");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataCreateMutable");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageMetadataCreateMutable");
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1EF23B538[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8fe200100IOZNS0_6__dtorINS0_8__traitsIJmNS_6vectorImNS_9allocatorImEEEEEEELNS0_6_TraitE1EE9__destroyB8fe200100EvEUlRT_E_JRNS0_6__baseILSD_1EJmSB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:fe200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<PDFDocumentEmitStructureTree(PDFDocument *)::$_0,PDFDocumentEmitStructureTree(PDFDocument *)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,std::vector<unsigned long>> const&>(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a1;
  PDFDocumentPrintf(*(*a1 + 8), "[", a3, a4, a5, a6, a7, a8, v21);
  v17 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    do
    {
      v19 = *(v10 + 8);
      if (*v17)
      {
        PDFDocumentPrintf(v19, "%R", v11, v12, v13, v14, v15, v16, *v17);
      }

      else
      {
        PDFDocumentPrintf(v19, "null", v11, v12, v13, v14, v15, v16, v22);
      }

      ++v17;
    }

    while (v17 != v18);
  }

  v20 = *(v10 + 8);

  PDFDocumentPrintf(v20, "]", v11, v12, v13, v14, v15, v16, a9);
}

void *std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<long,std::pair<long const,std::variant<unsigned long,std::vector<unsigned long>>>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
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
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:fe200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>>::__generic_construct[abi:fe200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,std::vector<unsigned long>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void PDFDocumentPushContentStream(uint64_t a1, void *value)
{
  Mutable = *(a1 + 512);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 512) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
}

void PDFDocumentPopContentStream(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    v4 = Count - 1;
    if (Count >= 1)
    {
      v5 = *(a1 + 512);

      CFArrayRemoveValueAtIndex(v5, v4);
    }
  }
}

const void *PDFDocumentGetContentStream(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2 && (Count = CFArrayGetCount(v2)) != 0)
  {
    v4 = Count - 1;
    v5 = *(a1 + 512);

    return CFArrayGetValueAtIndex(v5, v4);
  }

  else
  {
    pdf_error("No content stream. It is required to call CGPDFContextBeginPage prior to rendering content into a PDFContext.");
    return 0;
  }
}

uint64_t PDFDocumentSetOutputIntent(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  result = CFDictionaryGetTypeID();
  if (v4 == result)
  {
    PDFOutputIntentRelease(*(a1 + 48));
    result = PDFOutputIntentCreate(a1, cf);
    *(a1 + 48) = result;
  }

  return result;
}

void PDFDocumentAddPDFXInfo(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CFDictionaryGetTypeID())
  {
    PDFDocumentSetOutputIntent(a1, cf);
    Value = CFDictionaryGetValue(cf, @"kCGPDFContextAuthor");
    if (Value)
    {
      PDFInfoSetValue(*(a1 + 64), @"kCGPDFContextAuthor", Value);
    }

    v6 = CFDictionaryGetValue(cf, @"kCGPDFContextCreator");
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 64);

      PDFInfoSetValue(v8, @"kCGPDFContextCreator", v7);
    }
  }
}

Class PDFDocumentPushTag(PDFDocument *a1, int a2, const __CFDictionary *a3)
{
  isa = a1[37].super.isa;
  a1[37].super.isa = (isa + 1);
  TagNode = PDFDocumentCreateTagNode(a1, isa, a2, a3, 1);
  v6 = TagNode;
  if (a1[38].super.isa)
  {
    v7 = a1[37]._private;
    if (v7 && CFArrayGetCount(v7))
    {
      Count = CFArrayGetCount(a1[37]._private);
      ValueAtIndex = CFArrayGetValueAtIndex(a1[37]._private, Count - 1);
      Value = CFDictionaryGetValue(ValueAtIndex, @"TagNodeChildren");
      if (!Value)
      {
        Value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        CFDictionarySetValue(ValueAtIndex, @"TagNodeChildren", Value);
        CFRelease(Value);
      }

      CFDictionaryRemoveValue(ValueAtIndex, @"TagNodeMCID");
      CFArrayAppendValue(Value, v6);
      CFRelease(v6);
    }
  }

  else
  {
    a1[38].super.isa = TagNode;
  }

  CFArrayAppendValue(a1[37]._private, v6);
  return isa;
}

__CFDictionary *PDFDocumentCreateTagNode(PDFDocument *a1, uint64_t a2, int a3, const __CFDictionary *a4, int a5)
{
  valuePtr = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGCFDictionarySetNumber(Mutable, @"TagNodeMCID", kCFNumberSInt64Type, &valuePtr);
  CGCFDictionarySetInteger(Mutable, @"TagNodeType", a3);
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"TagNodeProperties", a4);
  }

  v10 = a1[32]._private;
  if (v10 && a5)
  {
    CGCFDictionarySetInteger(Mutable, @"PageObjectNumber", *(v10 + 4));
  }

  return Mutable;
}

uint64_t StructureElementPathForMCID(const __CFDictionary *a1, uint64_t a2, __CFArray **a3)
{
  v14 = -1;
  if (CGCFDictionaryGetNumber(a1, @"TagNodeMCID", kCFNumberSInt64Type, &v14) && v14 == a2)
  {
    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *a3 = Mutable;
    }

    CFArrayAppendValue(Mutable, a1);
  }

  else
  {
    result = CFDictionaryGetValue(a1, @"TagNodeChildren");
    if (!result)
    {
      return result;
    }

    v8 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    v10 = Count;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      if (StructureElementPathForMCID(ValueAtIndex, a2, a3))
      {
        break;
      }

      if (v10 == ++v11)
      {
        return 0;
      }
    }

    CFArrayInsertValueAtIndex(*a3, 0, a1);
  }

  return 1;
}

void PDFDocumentInsertStructureElementPath(PDFDocument *a1, CFArrayRef theArray)
{
  v2 = theArray;
  Count = CFArrayGetCount(theArray);
  v25 = Count - 1;
  if (Count >= 1)
  {
    v5 = Count;
    isa = a1[38].super.isa;
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    if (StructureElementsAreEqual(isa, ValueAtIndex, 0) && v5 != 1)
    {
      v9 = 1;
      allocator = *MEMORY[0x1E695E480];
      v24 = v5;
      do
      {
        v10 = CFArrayGetValueAtIndex(v2, v9);
        Value = CFDictionaryGetValue(isa, @"TagNodeChildren");
        if (Value)
        {
          Mutable = Value;
          v13 = CFArrayGetCount(Value);
          if (v13 >= 1)
          {
            v14 = v13;
            v15 = v2;
            v16 = a1;
            v17 = 0;
            while (1)
            {
              isa = CFArrayGetValueAtIndex(Mutable, v17);
              if (StructureElementsAreEqual(v10, isa, 1))
              {
                break;
              }

              if (v14 == ++v17)
              {
                a1 = v16;
                v2 = v15;
                v5 = v24;
                goto LABEL_15;
              }
            }

            a1 = v16;
            v2 = v15;
            v5 = v24;
            if (isa)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          CFDictionarySetValue(isa, @"TagNodeChildren", Mutable);
          CFRelease(Mutable);
        }

LABEL_15:
        v29 = -1;
        CGCFDictionaryGetNumber(v10, @"TagNodeMCID", kCFNumberSInt64Type, &v29);
        valuePtr = -1;
        CGCFDictionaryGetNumber(v10, @"TagNodeStructureID", kCFNumberSInt64Type, &valuePtr);
        v27 = -1;
        CGCFDictionaryGetNumber(v10, @"TagNodeObjectRefID", kCFNumberSInt64Type, &v27);
        v26 = CGPDFTagTypeDiv;
        CGCFDictionaryGetInteger(v10, @"TagNodeType", &v26);
        v18 = CFDictionaryGetValue(v10, @"TagNodeProperties");
        isa = PDFDocumentCreateTagNode(a1, v29, v26, v18, v9 == v25);
        CGCFDictionarySetNumber(isa, @"TagNodeStructureID", kCFNumberSInt64Type, &valuePtr);
        CGCFDictionarySetNumber(isa, @"TagNodeObjectRefID", kCFNumberSInt64Type, &v27);
        v19 = CFDictionaryGetValue(v10, @"ID");
        if (v19)
        {
          CFDictionarySetValue(isa, @"ID", v19);
        }

        v20 = CFArrayGetCount(Mutable);
        v31 = -1;
        CGCFDictionaryGetNumber(isa, @"TagNodeStructureID", kCFNumberSInt64Type, &v31);
        if (v20 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          while (1)
          {
            v30 = -1;
            v22 = CFArrayGetValueAtIndex(Mutable, v21);
            CGCFDictionaryGetNumber(v22, @"TagNodeStructureID", kCFNumberSInt64Type, &v30);
            if (v30 >= v31)
            {
              break;
            }

            if (v20 == ++v21)
            {
              v21 = v20;
              break;
            }
          }
        }

        CFArrayInsertValueAtIndex(Mutable, v21, isa);
        CFRelease(isa);
LABEL_24:
        ++v9;
      }

      while (v9 != v5);
    }
  }
}

uint64_t StructureElementsAreEqual(const __CFDictionary *a1, const __CFDictionary *a2, int a3)
{
  v12 = -1;
  result = CGCFDictionaryGetNumber(a1, @"TagNodeMCID", kCFNumberSInt64Type, &v12);
  if (result)
  {
    v11 = -1;
    result = CGCFDictionaryGetNumber(a2, @"TagNodeMCID", kCFNumberSInt64Type, &v11);
    if (result)
    {
      if (v12 != v11)
      {
        return 0;
      }

      v10 = 104;
      result = CGCFDictionaryGetInteger(a1, @"TagNodeType", &v10);
      if (result)
      {
        v9 = 104;
        result = CGCFDictionaryGetInteger(a2, @"TagNodeType", &v9);
        if (result)
        {
          if (v10 != v9)
          {
            return 0;
          }

          if (!a3)
          {
LABEL_11:
            LODWORD(v8) = -1;
            LODWORD(v7) = -1;
            return !CGCFDictionaryGetInteger(a1, @"PageObjectNumber", &v8) || !CGCFDictionaryGetInteger(a2, @"PageObjectNumber", &v7) || v8 == v7;
          }

          v8 = -1;
          result = CGCFDictionaryGetNumber(a1, @"TagNodeStructureID", kCFNumberSInt64Type, &v8);
          if (result)
          {
            v7 = -1;
            result = CGCFDictionaryGetNumber(a2, @"TagNodeStructureID", kCFNumberSInt64Type, &v7);
            if (result)
            {
              if (v8 == v7)
              {
                goto LABEL_11;
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void PDFDocumentBeginMarkedContentSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 600))
  {
    CGPostError("%s: Don't mix the old and new tagging functions", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentBeginMarkedContentSequence");
  }

  else if (*(a1 + 520))
  {
    v8 = a2;
    ContentStream = PDFDocumentGetContentStream(a1);
    Name = CGPDFTagTypeGetName(v8);
    PDFWriterPrintf(ContentStream[8], "%s BMC", v11, v12, v13, v14, v15, v16, Name);
    ContentStream[24] = (ContentStream[24] + 1);
  }

  else
  {
    CGPostError("%s: Cannot start a marked content sequence without first starting a page", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentBeginMarkedContentSequence");
  }
}

uint64_t PDFDocumentBeginStructuralMarkedContentSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 600))
  {
    CGPostError("%s: Don't mix the old and new tagging functions", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentBeginStructuralMarkedContentSequence");
    return 0;
  }

  if (!*(a1 + 520))
  {
    CGPostError("%s: Cannot start a structural marked content sequence without first starting a page", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentBeginStructuralMarkedContentSequence");
    return 0;
  }

  v11 = a2;
  ContentStream = PDFDocumentGetContentStream(a1);
  if ((ContentStream[23] & 0x8000000000000000) == 0)
  {
    CGPostError("%s: Cannot start a structural marked content sequence once one has already started", v13, v14, v15, v16, v17, v18, v19, "PDFContentStreamBeginStructuralMarkedContentSequence");
    return 0;
  }

  v20 = ContentStream;
  v21 = *(a1 + 520);
  Name = CGPDFTagTypeGetName(v11);
  v23 = CGPDFMarkedContentItemCreate();
  v8 = v23;
  if (v23)
  {
    PDFMarkedContentItem::PDFMarkedContentItem(v23 + 16, 0, v21);
  }

  PDFWriterPrintf(v20[8], "%s << /MCID %d >> BDC", v24, v25, v26, v27, v28, v29, Name);
  v30 = v20[24];
  v20[23] = v30;
  v20[24] = v30 + 1;
  return v8;
}

void PDFDocumentEndMarkedContentSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 600))
  {
    CGPostError("%s: Don't mix the old and new tagging functions", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentEndMarkedContentSequence");
  }

  else
  {
    ContentStream = PDFDocumentGetContentStream(a1);
    if (ContentStream[24] <= 0)
    {
      CGPostError("%s: End marked content sequence does not have a matching begin", v9, v10, v11, v12, v13, v14, v15, "PDFContentStreamEndMarkedContentSequence");
    }

    else
    {
      v16 = ContentStream;
      PDFWriterPrintf(ContentStream[8], "EMC", v10, v11, v12, v13, v14, v15, v19);
      v17 = v16[23];
      v18 = v16[24] - 1;
      v16[24] = v18;
      if (v17 == v18)
      {
        v16[23] = -1;
      }
    }
  }
}

uint64_t PDFDocumentBeginObjectReference(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[75])
  {
    CGPostError("%s: Don't mix the old and new tagging functions", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentBeginObjectReference");
    return 0;
  }

  v10 = a1[65];
  if (!v10)
  {
    CGPostError("%s: Cannot start an object reference without first starting a page", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentBeginObjectReference");
    return 0;
  }

  if (a1[79])
  {
    CGPostError("%s: Cannot start another object reference without ending the first one", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentBeginObjectReference");
    return 0;
  }

  result = CGPDFMarkedContentItemCreate();
  if (result)
  {
    *(result + 16) = 1;
    *(result + 24) = *(v10 + 16);
    *(result + 48) = 0;
    *(result + 32) = xmmword_18439CAF0;
  }

  a1[79] = result;
  return result;
}

void PDFDocumentEndObjectReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 600))
  {
    CGPostError("%s: Don't mix the old and new tagging functions", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentEndObjectReference");
  }

  else
  {
    if (!*(a1 + 632))
    {
      CGPostError("%s: Cannot end an object reference without first starting one", a2, a3, a4, a5, a6, a7, a8, "PDFDocumentEndObjectReference");
    }

    *(a1 + 632) = 0;
  }
}

uint64_t PDFDocumentAddStructureTreeRootChild(void *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[75])
  {
    CGPostError("%s: Don't mix the old and new tagging functions", cf, a3, a4, a5, a6, a7, a8, "PDFDocumentAddStructureTreeRootChild");
    return 1000;
  }

  else
  {
    if (cf)
    {
      v10 = CFRetain(cf);
    }

    else
    {
      v10 = 0;
    }

    v11 = a1[82];
    v12 = a1[83];
    if (v11 >= v12)
    {
      v14 = a1[81];
      v15 = v11 - v14;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v17 = v12 - v14;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fe200100]();
      }

      v19 = (8 * v15);
      v20 = &v19[-(v11 - v14)];
      *v19 = v10;
      v13 = v19 + 1;
      if (v14 != v11)
      {
        v21 = v14;
        v22 = v20;
        do
        {
          *v22++ = *v21;
          *v21++ = 0;
        }

        while (v21 != v11);
        do
        {
          v23 = *v14++;
          std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFStructureElement *>,0>(v23);
        }

        while (v14 != v11);
        v14 = a1[81];
      }

      a1[81] = v20;
      a1[82] = v13;
      a1[83] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v11 = v10;
      v13 = v11 + 1;
    }

    result = 0;
    a1[82] = v13;
  }

  return result;
}

void sub_18410F564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFStructureElement *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFStructureElement *>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void PDFDocumentBeginPage(void *a1, const __CFDictionary *a2)
{
  v3 = a1[62];
  if (v3)
  {
    v5 = *(v3 + 1);
    *(v3 + 1) = v5 + 1;
    ObjectNumberForPageNumber = PDFPageTree::getObjectNumberForPageNumber(v3, v5);
    if (ObjectNumberForPageNumber)
    {
      v7 = *&ObjectNumberForPageNumber;
      PDFPageTree::addNode(&v60, v3, ObjectNumberForPageNumber, 1);
      if (v60)
      {
        v8 = *v3;
        v9 = *v60;
        v3 = malloc_type_calloc(1uLL, 0x68uLL, 0x1070040BBBE8DCEuLL);
        __CFSetLastAllocationEventName();
        if (v3)
        {
          *v3 = 1;
          *(v3 + 1) = v8;
          *(v3 + 2) = v7;
          *(v3 + 3) = v9;
          *(v3 + 5) = 0;
          value = 0;
          if (a2)
          {
            if (CFDictionaryGetValueIfPresent(a2, @"StructParents", &value))
            {
              valuePtr[0] = 0;
              CFNumberGetValue(value, kCFNumberLongType, valuePtr);
              v10 = *valuePtr;
              *(v3 + 12) = valuePtr[0];
              if (v8)
              {
                v11 = *(v8 + 38);
                context.origin.x = v10;
                context.origin.y = v7;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(v11, *&v10);
              }
            }

            else
            {
              *(v3 + 12) = -1;
            }

            a2 = CFRetain(a2);
          }

          else
          {
            *(v3 + 12) = -1;
          }

          *(v3 + 6) = a2;
          *(v3 + 9) = 0;
          *(v3 + 11) = 0;
          v69 = 0;
          TypeID = CFDictionaryGetTypeID();
          if (CGCFDictionaryGetCFTypeRef(a2, @"CGPDFContextPageApplicationData", TypeID, &v69))
          {
            v13 = CFRetain(v69);
            *(v3 + 7) = v13;
            Count = CFDictionaryGetCount(v13);
            v15 = malloc_type_calloc(Count, 8uLL, 0x100004000313F17uLL);
            __CFSetLastAllocationEventName();
            *(v3 + 8) = v15;
            valuePtr[0] = 0;
            valuePtr[1] = valuePtr;
            v67 = 0;
            v68 = 32;
            v16 = *(v3 + 7);
            *&context.origin.x = MEMORY[0x1E69E9820];
            *&context.origin.y = 0x40000000;
            *&context.size.width = __init_appl_data_block_invoke;
            *&context.size.height = &unk_1E6E340D8;
            v64 = valuePtr;
            v65 = v3;
            CFDictionaryApplyFunction(v16, call_dict_block, &context);
            _Block_object_dispose(valuePtr, 8);
          }
        }
      }

      else
      {
        v3 = 0;
      }

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v61);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  a1[65] = v3;
  v17 = a1[70];
  if (v17)
  {
    v17[1] = v3;
    if (v3)
    {
      v3 = *(v3 + 2);
    }

    v18 = v17[7];
    v19 = v17[8];
    if (v18 >= v19)
    {
      v21 = v17[6];
      v22 = 0x8E38E38E38E38E39 * ((v18 - v21) >> 3);
      v23 = v22 + 1;
      if (v22 + 1 > 0x38E38E38E38E38ELL)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v24 = 0x8E38E38E38E38E39 * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x1C71C71C71C71C7)
      {
        v25 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        if (v25 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fe200100]();
      }

      v26 = 72 * v22;
      *v26 = v3;
      *(v26 + 8) = 0u;
      *(v26 + 24) = 0u;
      *(v26 + 40) = 0u;
      *(v26 + 56) = 0u;
      v20 = 72 * v22 + 72;
      v28 = v17[6];
      v27 = v17[7];
      v29 = 72 * v22 + v28 - v27;
      if (v28 != v27)
      {
        v30 = v17[6];
        v31 = v26 + v28 - v27;
        do
        {
          v32 = *(v30 + 16);
          *v31 = *v30;
          *(v31 + 16) = v32;
          *(v31 + 24) = 0;
          *(v31 + 32) = 0;
          *(v31 + 40) = 0;
          *(v31 + 24) = *(v30 + 24);
          *(v31 + 40) = *(v30 + 40);
          *(v30 + 24) = 0;
          *(v30 + 32) = 0;
          *(v30 + 40) = 0;
          v33 = *(v30 + 48);
          *(v31 + 64) = *(v30 + 64);
          *(v31 + 48) = v33;
          v30 += 72;
          v31 += 72;
        }

        while (v30 != v27);
        do
        {
          v34 = *(v28 + 24);
          if (v34)
          {
            *(v28 + 32) = v34;
            operator delete(v34);
          }

          v28 += 72;
        }

        while (v28 != v27);
      }

      v35 = v17[6];
      v17[6] = v29;
      *(v17 + 7) = v20;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v18 = v3;
      *(v18 + 8) = 0u;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 56) = 0u;
      v20 = v18 + 72;
    }

    v17[7] = v20;
    v3 = a1[65];
  }

  memset(&context, 0, sizeof(context));
  if (!CGCFDictionaryGetRect(*(v3 + 6), @"MediaBox", &context))
  {
    v36 = *(v3 + 1);
    v38 = *(v36 + 96);
    v39 = *(v36 + 104);
    v37 = v36 + 96;
    if (v38 != INFINITY && v39 != INFINITY)
    {
      v41 = *(v37 + 16);
      context.origin = *v37;
      context.size = v41;
    }
  }

  v42 = PDFContentStreamCreate(*(v3 + 1), &context);
  *(v3 + 5) = v42;
  if (v42)
  {
    PDFContentStreamBegin(v42, v43, v44, v45, v46, v47, v48, v49, v58);
    PDFContentStreamBeginData(*(v3 + 5), v50, v51, v52, v53, v54, v55, v56, v59);
    v57 = *(v3 + 5);
  }

  else
  {
    v57 = 0;
  }

  PDFDocumentPushContentStream(a1, v57);
}

void sub_18410FA38(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    (*(*v3 + 16))(v3);
    pdf_error("%s caught exception: %s");
  }

  else
  {
    pdf_error("%s caught an unknown exception");
  }

  __cxa_end_catch();
  JUMPOUT(0x18410F980);
}

void PDFDocumentEndPage(uint64_t a1)
{
  v2 = *(a1 + 520);
  *(a1 + 520) = 0;
  if (!v2)
  {
    goto LABEL_106;
  }

  PDFDocumentPopContentStream(a1);
  PDFContentStreamEndData(*(v2 + 5), v3, v4, v5, v6, v7, v8, v9);
  PDFContentStreamEnd(*(v2 + 5));
  PDFDocumentBeginObject(*(v2 + 1), *(v2 + 2), v10, v11, v12, v13, v14, v15);
  PDFDocumentPrintf(*(v2 + 1), "<<", v16, v17, v18, v19, v20, v21, v195);
  PDFDocumentPrintf(*(v2 + 1), "/Type /Page", v22, v23, v24, v25, v26, v27, v196);
  PDFDocumentPrintPageParentReference(*(v2 + 1), "/Parent %R", *(v2 + 3), v28, v29, v30, v31, v32);
  if (*(v2 + 12) != -1)
  {
    PDFDocumentPrintf(*(v2 + 1), "/StructParents %d", v33, v34, v35, v36, v37, v38, *(v2 + 12));
  }

  v39 = *(v2 + 5);
  if (v39)
  {
    v40 = *(v39 + 112);
    v41 = v40 == 0;
    if (v40)
    {
      PDFDocumentPrintReference(*(v2 + 1), "/Resources %R", *(v40 + 16), v34, v35, v36, v37, v38);
      v39 = *(v2 + 5);
      v200 = 0;
      if (!v39)
      {
        v42 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v200 = 0;
    }

    v42 = *(v39 + 8);
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v200 = 0;
    v41 = 1;
  }

LABEL_11:
  PDFDocumentPrintReference(*(v2 + 1), "/Contents %R", v42, v34, v35, v36, v37, v38);
  v43 = *(v2 + 1);
  if (PDFOutputIntentGetIsX3(*(v43 + 48)))
  {
    v205 = 0uLL;
    v206 = 0uLL;
    v44 = *(v43 + 90);
    if (CGCFDictionaryGetRect(*(v2 + 6), @"MediaBox", &v205))
    {
      v51 = *(v2 + 1);
    }

    else
    {
      if (!v44)
      {
        if (!CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &v205))
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v51 = *(v2 + 1);
      v88 = *(v51 + 96) == INFINITY || *(v51 + 104) == INFINITY;
      if (v88)
      {
        if (CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &v205))
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      v119 = *(v51 + 112);
      v205 = *(v51 + 96);
      v206 = v119;
    }

    PDFDocumentPrintf(v51, "/MediaBox %r", v45, v46, v47, v48, v49, v50, &v205);
    if (CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &v205))
    {
      goto LABEL_40;
    }

    if (!v44)
    {
      goto LABEL_41;
    }

LABEL_34:
    v89 = *(v2 + 1);
    v91 = *(v89 + 128);
    v92 = *(v89 + 136);
    v90 = (v89 + 128);
    if (v91 == INFINITY || v92 == INFINITY)
    {
LABEL_41:
      if (CGCFDictionaryGetRect(*(v2 + 6), @"BleedBox", &v205))
      {
        PDFDocumentPrintf(*(v2 + 1), "/BleedBox %r", v95, v96, v97, v98, v99, v100, &v205);
      }

      if (CGCFDictionaryGetRect(*(v2 + 6), @"TrimBox", &v205))
      {
        PDFDocumentPrintf(*(v2 + 1), "/TrimBox %r", v101, v102, v103, v104, v105, v106, &v205);
        goto LABEL_63;
      }

      Rect = CGCFDictionaryGetRect(*(v2 + 6), @"ArtBox", &v205);
      v114 = *(v2 + 1);
      if (Rect)
      {
        goto LABEL_46;
      }

      if (*(v114 + 192) == INFINITY || *(v114 + 200) == INFINITY)
      {
        if (*(v114 + 224) != INFINITY && *(v114 + 232) != INFINITY)
        {
          v118 = *(v114 + 240);
          v205 = *(v114 + 224);
          v206 = v118;
LABEL_46:
          v115 = "/ArtBox %r";
LABEL_62:
          PDFDocumentPrintf(v114, v115, v108, v109, v110, v111, v112, v113, &v205);
          goto LABEL_63;
        }

        context = 0u;
        v202 = 0u;
        if (!CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &context) && !CGCFDictionaryGetRect(*(v2 + 6), @"MediaBox", &context))
        {
          if ((v120 = *(v2 + 1), v121 = v120 + 16, v120[16] != INFINITY) && v120[17] != INFINITY || (v123 = v120[12], v122 = v120 + 12, v123 != INFINITY) && (v121 = v122, v122[1] != INFINITY))
          {
            v124 = *(v121 + 1);
            context = *v121;
            v202 = v124;
          }
        }

        v116 = context;
        v117 = v202;
      }

      else
      {
        v116 = *(v114 + 192);
        v117 = *(v114 + 208);
      }

      v205 = v116;
      v206 = v117;
      v115 = "/TrimBox %r";
      goto LABEL_62;
    }

    v94 = v90[1];
    v205 = *v90;
    v206 = v94;
LABEL_40:
    PDFDocumentPrintf(*(v2 + 1), "/CropBox %r", v52, v53, v54, v55, v56, v57, &v205);
    goto LABEL_41;
  }

  context = 0uLL;
  v202 = 0uLL;
  if (CGCFDictionaryGetRect(*(v2 + 6), @"MediaBox", &context))
  {
    PDFDocumentPrintf(*(v2 + 1), "/MediaBox %r", v58, v59, v60, v61, v62, v63, &context);
  }

  if (CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &context))
  {
    PDFDocumentPrintf(*(v2 + 1), "/CropBox %r", v64, v65, v66, v67, v68, v69, &context);
  }

  if (CGCFDictionaryGetRect(*(v2 + 6), @"BleedBox", &context))
  {
    PDFDocumentPrintf(*(v2 + 1), "/BleedBox %r", v70, v71, v72, v73, v74, v75, &context);
  }

  if (CGCFDictionaryGetRect(*(v2 + 6), @"TrimBox", &context))
  {
    PDFDocumentPrintf(*(v2 + 1), "/TrimBox %r", v76, v77, v78, v79, v80, v81, &context);
  }

  if (CGCFDictionaryGetRect(*(v2 + 6), @"ArtBox", &context))
  {
    PDFDocumentPrintf(*(v2 + 1), "/ArtBox %r", v82, v83, v84, v85, v86, v87, &context);
  }

LABEL_63:
  if (CGCFDictionaryGetInteger(*(v2 + 6), @"Rotate", &v200))
  {
    PDFDocumentPrintf(*(v2 + 1), "/Rotate %d", v125, v126, v127, v128, v129, v130, v200);
  }

  v131 = *(v2 + 4);
  if (v131)
  {
    PDFDocumentPrintReference(*(v2 + 1), "/Annots %R", *(v131 + 8), v126, v127, v128, v129, v130);
  }

  v132 = *(v2 + 9);
  if (!v132)
  {
    goto LABEL_82;
  }

  Image = CGBitmapContextCreateImage(v132);
  v134 = *(v2 + 9);
  if (v134)
  {
    CFRelease(v134);
  }

  *(v2 + 9) = 0;
  Mutable = CFDataCreateMutable(0, 0);
  if (emit_thumbnail_predicate != -1)
  {
    dispatch_once(&emit_thumbnail_predicate, &__block_literal_global_22723);
  }

  v136 = emit_thumbnail_f(Mutable, @"public.jpeg", 1, 0);
  if (emit_thumbnail_predicate_26 != -1)
  {
    dispatch_once(&emit_thumbnail_predicate_26, &__block_literal_global_29_22725);
  }

  emit_thumbnail_f_25(v136, Image, 0);
  if (Image)
  {
    CFRelease(Image);
  }

  if (emit_thumbnail_predicate_32 != -1)
  {
    dispatch_once(&emit_thumbnail_predicate_32, &__block_literal_global_35_22726);
  }

  emit_thumbnail_f_31(v136);
  CFRelease(v136);
  v137 = CGDataProviderCreateWithCFData(Mutable);
  CFRelease(Mutable);
  v138 = CGImageCreateWithJPEGDataProvider2(v137, 0, 0, 0, 0);
  CGDataProviderRelease(v137);
  v144 = *(PDFDocumentAddImage(*(v2 + 1), v138, 1u) + 2);
  if (!v144)
  {
    v145 = 0;
    if (!v138)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  v145 = *(v144 + 8);
  if (v138)
  {
LABEL_80:
    CFRelease(v138);
  }

LABEL_81:
  PDFDocumentPrintReference(*(v2 + 1), "/Thumb %R", v145, v139, v140, v141, v142, v143);
LABEL_82:
  v146 = *(v2 + 7);
  if (v146 && *(v2 + 8))
  {
    *&v205 = 0;
    *(&v205 + 1) = &v205;
    *&v206 = 0x2000000000;
    DWORD2(v206) = 0;
    *&context = MEMORY[0x1E69E9820];
    *(&context + 1) = 0x40000000;
    *&v202 = __emit_application_data_block_invoke;
    *(&v202 + 1) = &unk_1E6E34180;
    v203 = &v205;
    v204 = v2;
    CFDictionaryApplyFunction(v146, call_dict_block, &context);
    _Block_object_dispose(&v205, 8);
  }

  PDFDocumentPrintf(*(v2 + 1), ">>", v125, v126, v127, v128, v129, v130, v197);
  PDFDocumentEndObject(*(v2 + 1), v147, v148, v149, v150, v151, v152, v153);
  if (!v41)
  {
    PDFResourceSetEmit(v40, v154, v155, v156, v157, v158, v159, v160);
  }

  if (v131)
  {
    PDFDocumentBeginObject(*(v131 + 16), *(v131 + 8), v155, v156, v157, v158, v159, v160);
    PDFDocumentPrintf(*(v131 + 16), "[", v161, v162, v163, v164, v165, v166, v198);
    Count = CFArrayGetCount(*(v131 + 32));
    if (Count)
    {
      v174 = Count;
      for (i = 0; i != v174; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v131 + 32), i);
        PDFDocumentPrintReference(*(v131 + 16), "%R", ValueAtIndex, v177, v178, v179, v180, v181);
      }
    }

    PDFDocumentPrintf(*(v131 + 16), "]", v168, v169, v170, v171, v172, v173, v199);
    PDFDocumentEndObject(*(v131 + 16), v182, v183, v184, v185, v186, v187, v188);
  }

  v189 = *(v2 + 7);
  if (v189 && *(v2 + 8))
  {
    *&v205 = 0;
    *(&v205 + 1) = &v205;
    *&v206 = 0x2000000000;
    DWORD2(v206) = 0;
    *&context = MEMORY[0x1E69E9820];
    *(&context + 1) = 0x40000000;
    *&v202 = __emit_application_data_streams_block_invoke;
    *(&v202 + 1) = &unk_1E6E341A8;
    v203 = &v205;
    v204 = v2;
    CFDictionaryApplyFunction(v189, call_dict_block, &context);
    _Block_object_dispose(&v205, 8);
  }

  emit_page_resources(a1);
  v190 = *(a1 + 560);
  if (v190)
  {
    *(v190 + 8) = 0;
  }

  v88 = (*v2)-- == 1;
  if (v88)
  {
    PDFContentStreamRelease(*(v2 + 5));
    PDFAnnotationSetRelease(*(v2 + 4));
    v191 = *(v2 + 6);
    if (v191)
    {
      CFRelease(v191);
    }

    v192 = *(v2 + 7);
    if (v192)
    {
      CFRelease(v192);
    }

    v193 = *(v2 + 9);
    if (v193)
    {
      CFRelease(v193);
    }

    free(*(v2 + 8));
    free(v2);
  }

LABEL_106:
  v194 = *(a1 + 576);
  if (v194)
  {
    CFRelease(v194);
    *(a1 + 576) = 0;
  }

  *(a1 + 584) = 0;
}

void PDFDocumentSetPageRedactionPath(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 528);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 528) = cf;
    }
  }
}

void *PDFDocumentSetParentTree(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    result = result[67];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      result = CFRetain(cf);
      v3[67] = result;
    }
  }

  return result;
}

void *PDFDocumentSetIDTree(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    result = result[68];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      result = CFRetain(cf);
      v3[68] = result;
    }
  }

  return result;
}

void *PDFDocumentSetPageTagStructureTree(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    result = result[69];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      result = CFRetain(cf);
      v3[69] = result;
    }
  }

  return result;
}

void *PDFDocumentAddColorSpace(uint64_t a1, void *key)
{
  v3 = *(a1 + 368);
  if (v3)
  {
    if (key)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
  __CFSetLastAllocationEventName();
  *v3 = a1;
  *(v3 + 1) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &color_space_callbacks);
  *(v3 + 2) = 0;
  *(v3 + 6) = 0;
  *(a1 + 368) = v3;
  if (!key)
  {
    return 0;
  }

LABEL_3:
  Value = CFDictionaryGetValue(*(v3 + 1), key);
  if (!Value)
  {
    v5 = *v3;
    v6 = *(v3 + 6) + 1;
    *(v3 + 6) = v6;
    Value = PDFColorSpaceCreate(v5, key, v6);
    CFDictionarySetValue(*(v3 + 1), key, Value);
    v7 = *(v3 + 2);
    if (!v7)
    {
      v7 = CGOrderedSetCreate();
      *(v3 + 2) = v7;
    }

    CGOrderedSetAddValue(v7, Value);
    PDFColorSpaceRelease(Value);
  }

  return Value;
}

objc_class *PDFDocumentResolveColorSpace(uint64_t a1, CGColorSpace *a2)
{
  DeviceCMYK = a2;
  if (CGColorSpaceIsUncalibrated(a2))
  {
    return DeviceCMYK;
  }

  Type = CGColorSpaceGetType(DeviceCMYK);
  if (Type == 2)
  {
    if (*(a1 + 91) != 1)
    {
      return DeviceCMYK;
    }

    DeviceCMYK = *(a1 + 488);
    if (DeviceCMYK)
    {
      return DeviceCMYK;
    }

    v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
    *(a1 + 488) = v6;
    if (!v6)
    {
      DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
      *(a1 + 488) = DeviceCMYK;
      return DeviceCMYK;
    }

    return v6;
  }

  if (Type != 1)
  {
    if (Type)
    {
      return DeviceCMYK;
    }

    DeviceCMYK = *(a1 + 472);
    if (DeviceCMYK)
    {
      return DeviceCMYK;
    }

    v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
    *(a1 + 472) = v6;
    if (!v6)
    {
      DeviceCMYK = CGColorSpaceCreateDeviceGray();
      *(a1 + 472) = DeviceCMYK;
      return DeviceCMYK;
    }

    return v6;
  }

  return get_default_rgb_color_space(a1);
}

void PDFDocumentAddAnnotationToPage(PDFDocument *a1, uint64_t a2, const __CFDictionary *a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
  v21[1] = MutableCopy;
  Value = CFDictionaryGetValue(a3, @"ObjectNumber");
  CFDictionaryRemoveValue(MutableCopy, @"ObjectNumber");
  v8 = *(a2 + 32);
  if (!v8)
  {
    v9 = *(a2 + 8);
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200408F9A148AuLL);
    __CFSetLastAllocationEventName();
    if (v8)
    {
      *v8 = 1;
      v8[2] = v9;
      v8[1] = PDFXRefTableAddObject(*(v9 + 504));
      v8[3] = *(v9 + 40);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      v8[4] = Mutable;
      if (!Mutable)
      {
        PDFAnnotationSetRelease(v8);
        v8 = 0;
      }
    }

    *(a2 + 32) = v8;
  }

  v11 = -1;
  if (v8 && MutableCopy)
  {
    v12 = *(v8[2] + 632);
    if (v12 && (Count = CFDictionaryGetCount(MutableCopy), (v14 = CFDictionaryCreateMutableCopy(0, Count + 1, MutableCopy)) != 0))
    {
      v15 = v14;
      v16 = PDFMetaSetAddDictionary(v8[3], v14);
      v11 = v16;
      if (*(v12 + 16) == 1 && !*(v12 + 32))
      {
        v17 = v8[2];
        *(v12 + 32) = v16;
        v18 = *(v17 + 640);
        *(v17 + 640) = v18 + 1;
        *(v12 + 40) = v18;
        if (v18 != -1)
        {
          CGCFDictionarySetLongInteger(v15, @"/StructParent", v18);
        }
      }

      CFRelease(v15);
    }

    else
    {
      v11 = PDFMetaSetAddDictionary(v8[3], MutableCopy);
    }

    CFArrayAppendValue(v8[4], v11);
  }

  if (a1[34]._private)
  {
    if (Value)
    {
      v21[0] = 0;
      CFNumberGetValue(Value, kCFNumberLongType, v21);
      isa = a1[18].super.isa;
      theArray[0] = v21[0];
      theArray[1] = v11;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(isa, v21[0]);
      theArray[0] = 0;
      StructureElementPathForObjectRefID(a1[34]._private, v21[0], theArray);
      v20 = theArray[0];
      if (theArray[0])
      {
        if (CFArrayGetCount(theArray[0]) >= 1)
        {
          PDFDocumentInsertStructureElementPath(a1, v20);
        }
      }
    }
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1841108E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t StructureElementPathForObjectRefID(const __CFDictionary *a1, uint64_t a2, __CFArray **a3)
{
  v14 = -1;
  if (CGCFDictionaryGetNumber(a1, @"TagNodeObjectRefID", kCFNumberSInt64Type, &v14) && v14 == a2)
  {
    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *a3 = Mutable;
    }

    CFArrayAppendValue(Mutable, a1);
  }

  else
  {
    result = CFDictionaryGetValue(a1, @"TagNodeChildren");
    if (!result)
    {
      return result;
    }

    v8 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    v10 = Count;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      if (StructureElementPathForObjectRefID(ValueAtIndex, a2, a3))
      {
        break;
      }

      if (v10 == ++v11)
      {
        return 0;
      }
    }

    CFArrayInsertValueAtIndex(*a3, 0, a1);
  }

  return 1;
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t PDFDocumentAddFont(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 376);
  if (!v3)
  {
    operator new();
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v3 + 40;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == v3 + 40 || *(v5 + 32) > a2)
  {
LABEL_11:
    ++*(v3 + 80);
    LODWORD(v11) = 0;
    if (CGFontGetIntProperty(a2, @"com.apple.CoreGraphics.CGPDFFontFormat", &v11))
    {
      v9 = v11;
    }

    else
    {
      v9 = (*(*(a2 + 16) + 344))(*(a2 + 112));
    }

    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
LABEL_25:
      }
    }

    else
    {
      switch(v9)
      {
        case 0:
          goto LABEL_25;
        case 1:
          operator new();
        case 2:
          operator new();
      }
    }

    pdf_error("unsupported streaming format: %d", v9);
    goto LABEL_25;
  }

  return *(v5 + 40);
}

void sub_184110F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__tree<unsigned long>::destroy(*v20);
  if (*(v18 + 111) < 0)
  {
    operator delete(*(v18 + 88));
  }

  if (*(v18 + 87) < 0)
  {
    operator delete(*v19);
  }

  PDFFont::~PDFFont(v18);
  MEMORY[0x1865EE610]();
  _Unwind_Resume(a1);
}

void *PDFDocumentAddFormWithDisplayList(uint64_t a1, void *value)
{
  if (!*(a1 + 400))
  {
    *(a1 + 400) = PDFFormSetCreate(a1);
  }

  Mutable = *(a1 + 576);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    *(a1 + 576) = Mutable;
  }

  CFSetAddValue(Mutable, value);
  result = 0;
  v6 = *(a1 + 400);
  if (v6 && value)
  {
    if (!*(v6 + 8))
    {
      *(v6 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_12648);
    }

    valuea = 0;
    v7 = *v6;
    v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x1020040E28F707EuLL);
    __CFSetLastAllocationEventName();
    if (v8)
    {
      *v8 = 1;
      v8[1] = v7;
      v8[2] = PDFContentStreamCreate(v7, 0);
      *(v8 + 6) = 0;
      v8[4] = CFRetain(value);
      v8[8] = 0;
      v8[9] = 0;
      v8[10] = -1;
    }

    if (!CFSetGetValueIfPresent(*(v6 + 8), v8, &valuea))
    {
      v9 = (*(v6 + 24) + 1);
      *(v6 + 24) = v9;
      if (*(v8 + 6) == 1)
      {
        v10 = "Sm";
      }

      else
      {
        v10 = "Fm";
      }

      snprintf_l(v8 + 40, 0x10uLL, 0, "%s%zu", v10, v9);
      CFSetAddValue(*(v6 + 8), v8);
      valuea = v8;
    }

    PDFFormRelease(v8);
    v11 = *(v6 + 16);
    if (!v11)
    {
      v11 = CGOrderedSetCreate();
      *(v6 + 16) = v11;
    }

    CGOrderedSetAddValue(v11, valuea);
    return valuea;
  }

  return result;
}

void *PDFDocumentAddFunction(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 408);
  if (v4)
  {
    if (a2)
    {
LABEL_3:
      v5 = *(a2 + 48) - 1;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = PDFFunctionSetCreate(a1);
    *(a1 + 408) = v4;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = -1;
LABEL_6:

  return PDFFunctionSetAddFunctionWithRange(v4, a2, v5, 0);
}

void PDFDocumentAddImageTag(uint64_t a1, uint64_t a2, void *value)
{
  v5 = *(a1 + 384);
  if (!v5)
  {
    v5 = PDFImageSetCreate(a1);
    *(a1 + 384) = v5;
  }

  Mutable = v5[3];
  if (Mutable)
  {
    if (a2)
    {
LABEL_5:
      v8 = *(a2 + 24);
      goto LABEL_8;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v5[3] = Mutable;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_8:

  CFDictionarySetValue(Mutable, v8, value);
}

const void *PDFDocumentAddImage(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 384);
  if (!v6)
  {
    v6 = PDFImageSetCreate(a1);
    *(a1 + 384) = v6;
  }

  return add_image(v6, a2, 0, 0, a3);
}

const void *PDFDocumentAddSMask(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v8 = *(a1 + 392);
  if (!v8)
  {
    v8 = PDFImageSetCreate(a1);
    *(a1 + 392) = v8;
  }

  return add_image(v8, a2, a3, 1, a4);
}

void *PDFDocumentAddShading(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 424);
  if (!v3)
  {
    v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
    __CFSetLastAllocationEventName();
    if (v3)
    {
      *v3 = a1;
    }

    *(a1 + 424) = v3;
  }

  if (v3)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  Mutable = v3[1];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &shadingCallbacks);
    v3[1] = Mutable;
  }

  v8 = a2[4];
  Value = CFDictionaryGetValue(Mutable, v8);
  if (!Value)
  {
    v9 = *v3;
    v10 = (*(v3 + 6) + 1);
    *(v3 + 6) = v10;
    Value = malloc_type_calloc(1uLL, 0x38uLL, 0x102004018474591uLL);
    __CFSetLastAllocationEventName();
    if (Value)
    {
      *Value = 1;
      Value[1] = v9;
      CFRetain(a2);
      Value[2] = a2;
      Value[3] = PDFXRefTableAddObject(*(v9 + 504));
      *(Value + 48) = 0;
      snprintf_l(Value + 32, 0x10uLL, 0, "Sh%lu", v10);
    }

    CFDictionarySetValue(v3[1], v8, Value);
    PDFShadingRelease(Value);
  }

  v11 = v3[2];
  if (!v11)
  {
    v11 = CGOrderedSetCreate();
    v3[2] = v11;
  }

  CGOrderedSetAddValue(v11, Value);
  return Value;
}

void *PDFDocumentGetDestinationSet(uint64_t a1)
{
  v1 = *(a1 + 456);
  if (!v1)
  {
    v1 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    __CFSetLastAllocationEventName();
    if (v1)
    {
      *v1 = a1;
    }

    *(a1 + 456) = v1;
  }

  return v1;
}

void PDFDocumentPrintPageParentReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PDFDocumentPrintf(a1, a2, a3, a4, a5, a6, a7, a8, a3);
  if (*(a1 + 560))
  {
    v10 = *(a1 + 280);
    if (a3)
    {
      if (v10)
      {
        operator new();
      }
    }

    pdf_log("%s: Invalid param. object = %lu, referrer = %lu", "void PDFLinearizer::recordPageParentReference(PDFObjectNumber, PDFObjectNumber)", a3, v10);
  }
}

void CGGStateSetAlpha(uint64_t a1, double a2)
{
  if (*(*(a1 + 120) + 8) != a2)
  {
    maybeCopyRenderingState(a1);
    *(*(a1 + 120) + 8) = a2;
  }
}

uint64_t CGGStateCopyContentToneMappingInfo(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = *(v1 + 56);
  CGCFDictionaryCreateCopy(*(v1 + 64));
  return v2;
}

void CGGStateSetPatternPhase(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 120);
  if (*(v5 + 24) != a2 || *(v5 + 32) != a3)
  {
    maybeCopyRenderingState(a1);
    v8 = *(a1 + 120);
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
  }
}

uint64_t CGGStateGetImageRenderingIntent(uint64_t a1)
{
  v1 = *(*(a1 + 120) + 4);
  if (((v1 >> 20) & 0xF) != 0)
  {
    v2 = v1 << 8;
  }

  else
  {
    v2 = v1 << 12;
  }

  return (v2 >> 28);
}

CFTypeID CGFunctionGetTypeID(void)
{
  if (_block_invoke_once_6183 != -1)
  {
    dispatch_once(&_block_invoke_once_6183, &__block_literal_global_8_6184);
  }

  return CGFunctionGetTypeID_function_type_id;
}

CGFunctionRef CGFunctionRetain(CGFunctionRef function)
{
  if (function)
  {
    CFRetain(function);
  }

  return function;
}

void CGFunctionRelease(CGFunctionRef function)
{
  if (function)
  {
    CFRelease(function);
  }
}

uint64_t CGFunctionCreateIdentity()
{
  if (CGFunctionCreateIdentity_predicate != -1)
  {
    dispatch_once(&CGFunctionCreateIdentity_predicate, &__block_literal_global_6193);
  }

  v0 = CGFunctionCreateIdentity_identity;
  if (CGFunctionCreateIdentity_identity)
  {
    CFRetain(CGFunctionCreateIdentity_identity);
  }

  return v0;
}

CGFunctionRef __CGFunctionCreateIdentity_block_invoke()
{
  result = CGFunctionCreate(0, 1uLL, 0, 1uLL, 0, &create_identity_callbacks);
  CGFunctionCreateIdentity_identity = result;
  return result;
}

double evaluate_identity(uint64_t a1, double *a2, void *a3)
{
  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t CGFunctionGetDomainDimension(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t CGFunctionGetDomain(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t CGFunctionGetRangeDimension(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t CGFunctionGetRange(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t CGFunctionGetIdentifier(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGFunctionGetInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

CGFunctionRef CGFunctionCreateEvaluatedCopy(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2 > 1)
  {
    return 0;
  }

  v3 = CGFunctionCreate(0, v2, 0, *(a1 + 48), 0, (a1 + 64));
  if (v3)
  {
    if (*(a1 + 40))
    {
      v5 = 16 * *(a1 + 32);
      v6 = malloc_type_malloc(v5, 0xBFDE5121uLL);
      *(v3 + 5) = v6;
      memcpy(v6, *(a1 + 40), v5);
    }

    if (*(a1 + 56))
    {
      v7 = 16 * *(a1 + 48);
      v8 = malloc_type_malloc(v7, 0x408461BEuLL);
      *(v3 + 7) = v8;
      memcpy(v8, *(a1 + 56), v7);
    }

    v9 = MEMORY[0x1EEE9AC00](8 * *(v3 + 4), v4);
    v11 = (v22 - v10);
    if (v9 >= 0x101)
    {
      v11 = malloc_type_malloc(v9, 0xABF06711uLL);
    }

    v13 = *(v3 + 4);
    v12 = *(v3 + 5);
    if (v12)
    {
      memcpy(v11, v12, 8 * v13);
    }

    else if (v13)
    {
      v14 = v11;
      do
      {
        *v14++ = xmmword_18439C780;
        --v13;
      }

      while (v13);
    }

    *(v3 + 4) = xmmword_1EF23B748;
    *(v3 + 10) = off_1EF23B758;
    v15 = malloc_type_malloc(0x18uLL, 0x108004098BBCF0FuLL);
    v16 = malloc_type_malloc(*(v3 + 6) << 14, 0x100004000313F17uLL);
    v15[2] = v16;
    v17 = *(v3 + 6);
    v18 = 2048;
    *v15 = 2048;
    v15[1] = v17;
    *(v3 + 3) = v15;
    v19.n128_f64[0] = v11[1] - *v11;
    v20 = v19.n128_f64[0] * 0.00048828125;
    v22[0] = *v11;
    do
    {
      CGFunctionEvaluate(a1, v22, v16, v19);
      v19.n128_f64[0] = v20 + v22[0];
      v22[0] = v20 + v22[0];
      v16 += *(v3 + 6);
      --v18;
    }

    while (v18);
  }

  return v3;
}

void evaluated_function_release_info(void **a1)
{
  if (a1)
  {
    free(a1[2]);

    free(a1);
  }
}

double evaluated_function_evaluate(void *a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = 1.0;
  v5 = *a2 > 1.0 || *a2 < 0.0;
  if (*a2 < 0.0 && *a2 <= 1.0)
  {
    v4 = 0.0;
  }

  if (v5)
  {
    v3 = v4;
  }

  v6 = a1[1];
  v7 = a1[2];
  result = v3 * (*a1 - 1);
  v9 = vcvtmd_s64_f64(result);
  v10 = (v7 + 8 * v6 * v9);
  if ((v9 + 1) >= *a1)
  {
    for (; v6; --v6)
    {
      v15 = *v10++;
      result = v15;
      *a3++ = v15;
    }
  }

  else if (v6)
  {
    v11 = (v7 + 8 * (v9 + 1) * v6);
    result = result - v9;
    do
    {
      v12 = *v10++;
      v13 = v12;
      v14 = *v11++;
      *a3++ = v13 + result * (v14 - v13);
      --v6;
    }

    while (v6);
  }

  return result;
}

BOOL CGFunctionIsIdentity(_BOOL8 result)
{
  if (result)
  {
    return *(result + 72) == evaluate_identity;
  }

  return result;
}

void CGFunctionEvaluateFloat(uint64_t a1, float *a2, float *a3, __n128 a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](8 * (*(a1 + 48) + *(a1 + 32)), a4);
  v12 = v20 - v10;
  if (v9 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v13 = v20 - v10;
  }

  else
  {
    v13 = 0;
  }

  if (v9 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000012)
  {
    v13 = malloc_type_malloc(v7, 0x88412587uLL);
    v8 = *(a1 + 32);
  }

  v14 = &v13[8 * v8];
  if (v8)
  {
    v15 = v13;
    do
    {
      v16 = *a2++;
      v11.n128_f64[0] = v16;
      *v15++ = v16;
      --v8;
    }

    while (v8);
  }

  CGFunctionEvaluate(a1, v13, v14, v11);
  for (i = *(a1 + 48); i; --i)
  {
    v18 = *v14++;
    v19 = v18;
    *a3++ = v19;
  }

  if (v13 != v12)
  {
    free(v13);
  }
}

uint64_t CGFunctionCopyPDFDescription(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 88)) != 0)
  {
    return v1(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t CGFunctionSetAssociate(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit((result + 96), &v2, a2, memory_order_relaxed, memory_order_relaxed);
    return *(result + 96);
  }

  return result;
}

uint64_t CGFunctionGetAssociate(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

void CGFunctionSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (!*(a1 + 104))
  {
    v6 = CGPropertiesCreate();
    v7 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 104), &v7, v6, memory_order_relaxed, memory_order_relaxed);
    if (v7)
    {
      CGPropertiesRelease(v6);
    }
  }

  v8 = *(a1 + 104);

  CGPropertiesSetProperty(v8, a2, a3);
}

__CFHTTPMessage *http_message_send_request(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  v3 = CFReadStreamCreateForHTTPRequest(v2, a1);
  v4 = CFWriteStreamCreateWithAllocatedBuffers(v2, v2);
  v5 = v4;
  if (v3 && v4)
  {
    CFReadStreamSetProperty(v3, @"kCFStreamPropertyHTTPShouldAutoredirect", *MEMORY[0x1E695E4D0]);
    if (CFReadStreamOpen(v3) && CFWriteStreamOpen(v5))
    {
      if ((CFReadStreamGetStatus(v3) & 0xFFFFFFFFFFFFFFFDLL) == 5)
      {
        goto LABEL_18;
      }

      do
      {
        v6 = CFReadStreamRead(v3, buffer, 512);
        v7 = v6 >= 1 && CFWriteStreamWrite(v5, buffer, v6) != v6;
        Status = CFReadStreamGetStatus(v3);
      }

      while (!v7 && (Status & 0xFFFFFFFFFFFFFFFDLL) != 5);
      if (!v7)
      {
LABEL_18:
        v10 = CFReadStreamGetStatus(v3);
        CFReadStreamClose(v3);
        CFWriteStreamClose(v5);
        if (v10 != kCFStreamStatusError)
        {
          v12 = CFWriteStreamCopyProperty(v5, *MEMORY[0x1E695E900]);
          v13 = CFReadStreamCopyProperty(v3, @"kCFStreamPropertyHTTPResponseHeader");
          v9 = v13;
          if (v13)
          {
            CFHTTPMessageSetBody(v13, v12);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_20;
        }
      }

      else
      {
        CFReadStreamClose(v3);
        CFWriteStreamClose(v5);
      }
    }

    v9 = 0;
LABEL_20:
    CFRelease(v3);
    CFRelease(v5);
    return v9;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

void std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  v13 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v13;
  MEMORY[0x1865EE570](a1 + 32);
  *(a1 + 88) = 0;
  v14 = a1 + 88;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 112) = a1 + 88;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v15 = *(a1 + 111);
  if (v15 < 0 && (v15 = *(a1 + 96), v15 < 0))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 64) = v14;
    *(a1 + 72) = v14;
    *(a1 + 80) = v14 + v15;
  }
}

void sub_184112350(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 24) = v3;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1865EE5C0](v2);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::view[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 96);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 48);
    if (v4 < v5)
    {
      *(a1 + 88) = v5;
      v4 = v5;
    }

    result = *(a1 + 40);
    if ((v4 - result) < 0)
    {
LABEL_9:
      __break(1u);
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return 0;
    }

    result = *(a1 + 16);
    if (*(a1 + 32) - result < 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void type1_release_info(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CGPDFGStateReleaseProperties(a1[2]);
      free(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void type1_draw_uncolored_pattern(uint64_t *a1, uint64_t a2)
{
  Copy = CGPDFGStateCreateCopy(a1[2]);
  FillColorAsColor = CGContextGetFillColorAsColor(a2, v5, v6, v7, v8, v9, v10, v11);
  CGPDFGStateSetFillColor(Copy, FillColorAsColor);
  StrokeColorAsColor = CGContextGetStrokeColorAsColor(a2, v13, v14, v15, v16, v17, v18, v19);
  CGPDFGStateSetStrokeColor(Copy, StrokeColorAsColor);
  v21 = *a1;
  if (*a1 && *(v21 + 16) == 1)
  {
    v22 = *(v21 + 24);
    v23 = *(v21 + 88);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  CGPDFDrawingContextDrawStream(0, v22, v23, Copy, a2);
  if (Copy)
  {
    CGPDFGStateReleaseProperties(Copy);

    free(Copy);
  }
}

void type1_draw_colored_pattern(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && *(v3 + 16) == 1)
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  CGPDFDrawingContextDrawStream(0, v4, v5, a1[2], a2);
}

void color_space_state_create_uncalibrated_gray()
{
  color_space_state_create_device_gray();
  *(v0 + 9) = 1;
  *(v0 + 80) = @"kCGColorSpaceUncalibratedGray";
}

void color_space_state_create_uncalibrated_rgb()
{
  color_space_state_create_device_rgb();
  *(v0 + 9) = 1;
  *(v0 + 80) = @"kCGColorSpaceUncalibratedRGB";
}

void color_space_state_create_uncalibrated_cmyk()
{
  color_space_state_create_device_cmyk();
  *(v0 + 9) = 1;
  *(v0 + 80) = @"kCGColorSpaceUncalibratedCMYK";
}

void std::vector<PageLayoutFactory::TextChunk>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v6 = *(v4 - 17);
        if (v6)
        {
          *(v4 - 16) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 20);
        if (v7)
        {
          *(v4 - 19) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 23);
        if (v8)
        {
          *(v4 - 22) = v8;
          operator delete(v8);
        }

        v9 = *(v4 - 26);
        if (v9)
        {
          *(v4 - 25) = v9;
          operator delete(v9);
        }

        v10 = v4 - 232;
        v11 = *(v4 - 29);
        if (v11)
        {
          *(v4 - 28) = v11;
          operator delete(v11);
        }

        v4 -= 232;
      }

      while (v10 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::__unordered_map_hasher<applesauce::CF::ObjectRef<CGFont *>,std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::hash<applesauce::CF::ObjectRef<CGFont *>>,std::equal_to<applesauce::CF::ObjectRef<CGFont *>>,true>,std::__unordered_map_equal<applesauce::CF::ObjectRef<CGFont *>,std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::equal_to<applesauce::CF::ObjectRef<CGFont *>>,std::hash<applesauce::CF::ObjectRef<CGFont *>>,true>,std::allocator<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:fe200100]<std::pair<applesauce::CF::ObjectRef<CGFont *> const,double>,0>(v2[2]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void PageLayoutFactory::appendCurLine(PageLayoutFactory *this, BOOL *a2)
{
  v4 = *(this + 6);
  v5 = *(this + 7);
  while (v5 != v4)
  {
    v6 = *(v5 - 2);
    v5 -= 2;
    v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [v7 characterIsMember:v6];

    if ((v8 & 1) == 0)
    {
      v4 = v5 + 2;
      break;
    }
  }

  PageLayoutFactory::eraseLastUniChars(this, (*(this + 7) - v4) >> 1);
  if (*(this + 9) != *(this + 10))
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v9 = *a2;
    *a2 = 0;
    if (*(*(this + 5) + 40) == 1)
    {
      v10 = ubidi_open();
      v33 = v10;
      v32 = 0;
      ubidi_setReorderingMode();
      ubidi_setContext();
      ubidi_setPara();
      Length = ubidi_getLength();
      v12 = ubidi_countRuns();
      std::vector<unsigned short>::resize(&v34, Length + 2 * v12);
      v13 = ubidi_writeReordered();
      ProcessedLength = ubidi_getProcessedLength();
      if (ProcessedLength != ((*(this + 7) - *(this + 6)) >> 1))
      {
        _CGHandleAssert("appendCurLine", 480, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayoutFactory.mm", "mapLen == static_cast<int32_t>(_curLineUniChars.size())", "%d != %lu", v15, v16, v17, ProcessedLength);
      }

      if (ProcessedLength)
      {
        if ((ProcessedLength & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      ubidi_getVisualMap();
      v33 = 0;
      if (v10)
      {
        ubidi_close();
      }
    }

    else
    {
      v18 = *(this + 6);
      if (v9)
      {
        v19 = *(this + 7);
        v20 = *(this + 6);
        if (v18 != v19)
        {
          v20 = *(this + 6);
          while (*v20 != 32)
          {
            v20 += 2;
            if (v20 == v19)
            {
              goto LABEL_23;
            }
          }
        }

        if (v20 != v19)
        {
          *v20 = 10;
        }
      }

      else
      {
        v19 = *(this + 7);
      }

LABEL_23:
      if (v18 == v19)
      {
        v13 = 0;
        v21 = 0;
      }

      else
      {
        if (*(v19 - 1) == 173)
        {
          PageLayoutFactory::eraseLastUniChars(this, 1uLL);
          *a2 = 1;
          v18 = *(this + 6);
          v19 = *(this + 7);
        }

        v21 = (v19 - v18);
        v13 = (v19 - v18) >> 1;
        if (v19 != v18)
        {
          if ((v13 & 0x8000000000000000) == 0)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>((v19 - v18) >> 1);
          }

          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }
      }

      v35 = v21;
    }

    if (!v13 || (v22 = objc_alloc(MEMORY[0x1E696AEC0]), v23 = [v22 initWithCharacters:v34 length:v13], objc_msgSend(v23, "length"), objc_msgSend(*(this + 25), "appendString:", v23), *a2))
    {
LABEL_37:
      operator new();
    }

    [*(this + 25) appendString:@"\n"];
    v24 = *(this + 5);
    v27 = *(v24 + 232);
    v26 = *(v24 + 240);
    v25 = v24 + 232;
    if (v27 != v26)
    {
      std::vector<unsigned long>::push_back[abi:fe200100](v25, (v26 - 8));
      v28 = *(this + 5);
      v29 = *(v28 + 264);
      if (*(v28 + 256) != v29)
      {
        std::vector<double>::push_back[abi:fe200100](v28 + 256, (v29 - 8));
        v30 = *(this + 5);
        if (*(v30 + 40) == 1)
        {
          __p[0] = ((*(v30 + 336) - *(v30 + 328)) >> 3);
          std::vector<unsigned long>::push_back[abi:fe200100](v30 + 328, __p);
        }

        goto LABEL_37;
      }
    }

    __break(1u);
  }
}

void sub_184113A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  a14[7] = a14[6];
  a14[10] = a14[9];
  _Unwind_Resume(a1);
}

void PageLayoutFactory::addUniChars(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, CGFloat a11, CGFloat a12, CGFloat a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a4;
  v19 = a3;
  v23 = a10;
  v25 = a6;
  *&v73 = a6;
  *(&v73 + 1) = a7;
  v74 = a8;
  v75 = a9;
  *&v70 = a10;
  *(&v70 + 1) = a11;
  v71 = a12;
  v72 = a13;
  v69 = a5;
  if (a4 == 1 && *a3 == 32)
  {
    v28 = *(a1 + 56);
    if (*(a1 + 48) == v28 || *(v28 - 2) == 32)
    {
      return;
    }

    v29 = *(a1 + 40);
    v31 = *(v29 + 136);
    v30 = *(v29 + 144);
    if (v31 == v30)
    {
      goto LABEL_49;
    }

    v32 = *(v30 - 32);
    v33 = *(v30 - 16);
    v34 = *(v30 - 8);
    if (v33 < 0.0 || v34 < 0.0)
    {
      v35 = *(v30 - 24);
      *&v32 = CGRectStandardize(*&v32);
    }

    v25 = v32 + v33;
    *&v73 = v32 + v33;
    *(&v73 + 1) = 0x7FF8000000000000;
    v75 = 0.0;
    a9 = 0.0;
    a7 = NAN;
  }

  v36 = *(a1 + 56);
  if (*(a1 + 48) != v36 && *(v36 - 2) == 32)
  {
    v37 = *(a1 + 40);
    v38 = v37[18];
    if (v37[17] != v38)
    {
      v39 = v37[21];
      if (v37[20] != v39)
      {
        if (a8 < 0.0 || a9 < 0.0)
        {
          v40 = v25;
          v41 = a8;
          *&v25 = CGRectStandardize(*(&a7 - 1));
        }

        v42 = *(v38 - 32);
        v43 = *(v38 - 16);
        v44 = *(v38 - 8);
        if (v43 < 0.0 || v44 < 0.0)
        {
          v45 = *(v38 - 24);
          *&v42 = CGRectStandardize(*&v42);
        }

        *(v38 - 16) = v25 - v42;
        if (a12 < 0.0 || a13 < 0.0)
        {
          v77.origin.x = v23;
          v77.origin.y = a11;
          v77.size.width = a12;
          v77.size.height = a13;
          *&v23 = CGRectStandardize(v77);
        }

        v46 = *(v39 - 32);
        v47 = *(v39 - 16);
        v48 = *(v39 - 8);
        if (v47 < 0.0 || v48 < 0.0)
        {
          v49 = *(v39 - 24);
          *&v46 = CGRectStandardize(*&v46);
        }

        *(v39 - 16) = v23 - v46;
        goto LABEL_27;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

LABEL_27:
  v68 = v18;
  v50 = *(a1 + 40);
  i = [*(a1 + 200) length] + ((*(a1 + 56) - *(a1 + 48)) >> 1);
  std::vector<unsigned long>::push_back[abi:fe200100](v50 + 184, &i);
  v51 = 2 * v18;
  for (i = a1 + 48; v51; v51 -= 2)
  {
    std::back_insert_iterator<std::vector<unsigned short>>::operator=[abi:fe200100](&i, v19++);
  }

  std::vector<double>::push_back[abi:fe200100](a1 + 72, &a17);
  std::vector<CGRect>::push_back[abi:fe200100](*(a1 + 40) + 136, &v73);
  std::vector<CGRect>::push_back[abi:fe200100](*(a1 + 40) + 160, &v70);
  std::vector<unsigned long>::push_back[abi:fe200100](*(a1 + 40) + 112, &v68);
  v52 = *(a1 + 40);
  if (v18)
  {
    v53 = a18;
    v54 = v18;
    do
    {
      i = a2;
      std::vector<unsigned long>::push_back[abi:fe200100](v52 + 232, &i);
      --v54;
    }

    while (v54);
    v55 = *(a1 + 40);
    v56 = v55[33];
    do
    {
      v57 = v55[34];
      if (v56 >= v57)
      {
        v58 = v55[32];
        v59 = v56 - v58;
        v60 = (v56 - v58) >> 3;
        v61 = v60 + 1;
        if ((v60 + 1) >> 61)
        {
          goto LABEL_50;
        }

        v62 = v57 - v58;
        if (v62 >> 2 > v61)
        {
          v61 = v62 >> 2;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF8)
        {
          v63 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v63);
        }

        v64 = (v56 - v58) >> 3;
        v65 = (8 * v60);
        v66 = (8 * v60 - 8 * v64);
        *v65 = v53;
        v56 = (v65 + 1);
        memcpy(v66, v58, v59);
        v67 = v55[32];
        v55[32] = v66;
        v55[33] = v56;
        v55[34] = 0;
        if (v67)
        {
          operator delete(v67);
        }
      }

      else
      {
        *v56 = v53;
        v56 += 8;
      }

      v55[33] = v56;
      --v18;
    }

    while (v18);
    v52 = *(a1 + 40);
  }

  std::vector<unsigned long>::push_back[abi:fe200100](v52 + 304, &v69);
}

void PageLayoutFactory::getSpaceWidth(int8x8_t *this, const TextChunk *a2)
{
  v3 = *(&a2[13].ckSize + 2);
  if (v3)
  {
    CFRetain(*(&a2[13].ckSize + 2));
  }

  v4 = this[13];
  if (!*&v4)
  {
    goto LABEL_21;
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ (v3 >> 32));
  v6 = 0x9DDFEA08EB382D69 * ((v3 >> 32) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = vcnt_s8(v4);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v4)
    {
      v9 = v7 % *&v4;
    }
  }

  else
  {
    v9 = v7 & (*&v4 - 1);
  }

  v10 = *(*&this[12] + 8 * v9);
  if (!v10)
  {
LABEL_21:
    i = 0;
    if (!v3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v7)
    {
      if (*(i + 2) == v3)
      {
        break;
      }
    }

    else
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_21;
      }
    }
  }

  if (v3)
  {
LABEL_22:
    CFRelease(v3);
  }

LABEL_23:
  if (i)
  {
    if (i[3] > 0.0)
    {
      return;
    }

    if (v3)
    {
      goto LABEL_26;
    }
  }

  else if (v3)
  {
LABEL_26:
    explicit = atomic_load_explicit(v3 + 11, memory_order_acquire);
    if (explicit)
    {
      CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontToUnicodeCMap");
    }

    glyphs = 0;
    v15 = 32;
    (*(v3[2] + 384))(v3[14], &v15, &glyphs, 1);
    if (glyphs)
    {
      advances = 0;
      CGFontGetGlyphAdvances(v3, &glyphs, 1uLL, &advances);
    }

    goto LABEL_32;
  }

  glyphs = 0;
LABEL_32:
  get_font_info(v3);
}

void PageLayoutFactory::addChunkUnicodes(PageLayoutFactory::TextChunk const&)::$_0::operator()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 8) + 72);
  if (a2 >= (*(*(a1 + 8) + 80) - v8) >> 3)
  {
    goto LABEL_25;
  }

  v11 = *a1;
  v12 = *(v8 + 8 * a2);
  v13 = *(a1 + 16);
  if (v12 != 1)
  {
    v21 = *v13;
    v22 = (v13[1] - *v13) >> 1;
    v23 = **(a1 + 24);
    v24 = v22 - v23;
    if (v22 < v23)
    {
      goto LABEL_25;
    }

    if (v12 != -1)
    {
      v25 = v24 >= v12;
      v24 = v12;
      if (!v25)
      {
        goto LABEL_25;
      }
    }

    v26 = (v21 + 2 * v23);
    goto LABEL_21;
  }

  v14 = **(a1 + 24);
  v15 = *v13;
  if (v14 >= (*(*(a1 + 16) + 8) - v15) >> 1)
  {
    goto LABEL_25;
  }

  v16 = *(v15 + 2 * v14);
  v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v18 = [v17 characterIsMember:v16];

  if (v18)
  {
    v19 = 32;
  }

  else
  {
    v19 = v16;
  }

  if (v19 > 64256)
  {
    if (v19 != 64257)
    {
      v20 = 64258;
      goto LABEL_17;
    }

LABEL_19:
    v27 = 6881382;
    goto LABEL_20;
  }

  if (v19 == 61441)
  {
    goto LABEL_19;
  }

  v20 = 61442;
LABEL_17:
  if (v19 != v20)
  {
    LOWORD(v31) = v19;
    v26 = &v31;
    v24 = 1;
    goto LABEL_21;
  }

  v27 = 7077990;
LABEL_20:
  v31 = v27;
  v26 = &v31;
  v24 = 2;
LABEL_21:
  v28 = *(a1 + 8);
  v29 = *(v28 + 24);
  if (a2 < (*(v28 + 32) - v29) >> 5)
  {
    v30 = *(v28 + 48);
    if (a2 < (*(v28 + 56) - v30) >> 5)
    {
      PageLayoutFactory::addUniChars(v11, *(v28 + 224), v26, v24, *(v28 + 176), *(v29 + 32 * a2), *(v28 + 120), *(v29 + 32 * a2 + 16), *(v28 + 128), *(v30 + 32 * a2), *(v30 + 32 * a2 + 8), *(v30 + 32 * a2 + 16), *(v30 + 32 * a2 + 24), a6, a7, a8, *(v28 + 144), *(v28 + 152));
      **(a1 + 24) += v12;
      return;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t *std::back_insert_iterator<std::vector<unsigned short>>::operator=[abi:fe200100](uint64_t *a1, _WORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = v9 >> 1;
    if (v9 >> 1 <= -2)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v11 = v5 - v8;
    if (v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v11;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(v13);
    }

    v14 = (2 * v10);
    v15 = *a2;
    v16 = &v14[-(v9 >> 1)];
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(v16, v8, v9);
    v17 = *v4;
    *v4 = v16;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void std::vector<CGRect>::push_back[abi:fe200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CGRect>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t std::unique_ptr<UBiDi,applesauce::raii::v1::detail::opaque_deletion_functor<UBiDi*,&(ubidi_close)>>::reset[abi:fe200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return ubidi_close();
  }

  return result;
}

void *PageLayoutFactory::eraseLastUniChars(void *this, unint64_t a2)
{
  if (a2)
  {
    v2 = this[7];
    if (this[6] != v2)
    {
      v3 = a2;
      if (2 * a2 <= v2)
      {
        this[7] = v2 - 2 * a2;
        v4 = this[5];
        v5 = v4[30];
        v6 = 8 * a2;
        if (8 * a2 <= v5)
        {
          if (!v6)
          {
            goto LABEL_8;
          }

          v7 = this[5];
          v4[30] = v5 - v6;
          v8 = v7[33];
          if (v6 <= v8)
          {
            v4 = v7;
            v7[33] = v8 - v6;
LABEL_8:
            v9 = 0;
            v10 = v4[14];
            v11 = (v4[15] - v10) >> 3;
            v12 = v11 - 1;
            while (v11 > v12)
            {
              v13 = *(v10 + 8 * v12);
              v14 = v3 - v13;
              if (v3 < v13)
              {
                *(v10 + 8 * v12) = v13 - v3;
LABEL_14:
                v15 = this[10];
                v16 = 8 * v9;
                if (8 * v9 <= v15)
                {
                  if (v16)
                  {
                    this[10] = v15 - v16;
                  }

                  v17 = v4[18];
                  v18 = 32 * v9;
                  if (v18 <= v17)
                  {
                    if (v18)
                    {
                      v4[18] = v17 - v18;
                      v19 = v4[21];
                      if (v18 > v19)
                      {
                        break;
                      }

                      v4[21] = v19 - v18;
                    }

                    v20 = v4[15];
                    if (v16 <= v20)
                    {
                      if (!v16)
                      {
                        return this;
                      }

                      v4[15] = v20 - v16;
                      v21 = v4[24];
                      if (v16 <= v21)
                      {
                        v4[24] = v21 - v16;
                        v22 = v4[39];
                        if (v16 <= v22)
                        {
                          v4[39] = v22 - v16;
                          return this;
                        }
                      }
                    }
                  }
                }

                break;
              }

              ++v9;
              --v12;
              v3 -= v13;
              if (!v14)
              {
                goto LABEL_14;
              }
            }
          }
        }
      }

      __break(1u);
    }
  }

  return this;
}

void sub_184114738(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1865EE610](v1, 0x1000C40FF89C88ELL);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<TextLine>>::__emplace_back_slow_path<TextLine*&>(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 3 > v3)
    {
      v3 = v4 >> 3;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF0)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(v5);
    }

    std::shared_ptr<TextLine>::shared_ptr[abi:fe200100]<TextLine,0>((16 * v2), *a2);
  }

  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
}

void sub_184114848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<TextLine>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__shared_ptr_pointer<TextLine *,std::shared_ptr<TextLine>::__shared_ptr_default_delete<TextLine,TextLine>,std::allocator<TextLine>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrI8TextLineE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<TextLine *,std::shared_ptr<TextLine>::__shared_ptr_default_delete<TextLine,TextLine>,std::allocator<TextLine>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1865EE610);
  }

  return result;
}

void std::__shared_ptr_pointer<TextLine *,std::shared_ptr<TextLine>::__shared_ptr_default_delete<TextLine,TextLine>,std::allocator<TextLine>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::vector<PageLayout::CharacterStyle>::push_back[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<PageLayout::CharacterStyle>>(v10);
    }

    v11[0] = 0;
    v11[1] = 24 * v7;
    v11[3] = 0;
    std::construct_at[abi:fe200100]<PageLayout::CharacterStyle,PageLayout::CharacterStyle const&,PageLayout::CharacterStyle*>(24 * v7, a2);
    v11[2] = 24 * v7 + 24;
    std::vector<PageLayout::CharacterStyle>::__swap_out_circular_buffer(a1, v11);
    v6 = a1[1];
    result = std::__split_buffer<PageLayout::CharacterStyle>::~__split_buffer(v11);
  }

  else
  {
    result = std::construct_at[abi:fe200100]<PageLayout::CharacterStyle,PageLayout::CharacterStyle const&,PageLayout::CharacterStyle*>(v3, a2);
    v6 = result + 24;
  }

  a1[1] = v6;
  return result;
}

uint64_t std::construct_at[abi:fe200100]<PageLayout::CharacterStyle,PageLayout::CharacterStyle const&,PageLayout::CharacterStyle*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  if (v3)
  {
    CFRetain(*(a2 + 16));
  }

  *(a1 + 16) = v3;
  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<PageLayout::CharacterStyle>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<PageLayout::CharacterStyle>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *(v7 + 16) = 0;
      v7 += 24;
      v8 += 24;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:fe200100]<PageLayout::CharacterStyle,0>(*(v4 + 16));
      v4 += 24;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<PageLayout::CharacterStyle>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__destroy_at[abi:fe200100]<PageLayout::CharacterStyle,0>(*(i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__destroy_at[abi:fe200100]<PageLayout::CharacterStyle,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t CGColorSpaceCoreMedia709()
{
  if (CGColorSpaceCoreMedia709_predicate[0] != -1)
  {
    dispatch_once(CGColorSpaceCoreMedia709_predicate, &__block_literal_global_151_6540);
  }

  v0 = CGColorSpaceCoreMedia709_space;
  if (CGColorSpaceCoreMedia709_space)
  {
    CFRetain(CGColorSpaceCoreMedia709_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCoreMedia709_block_invoke()
{
  result = create_singleton(color_space_state_create_core_media_709);
  CGColorSpaceCoreMedia709_space = result;
  return result;
}

uint64_t CGColorSpacePerceptualStandardRGB()
{
  if (CGColorSpacePerceptualStandardRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpacePerceptualStandardRGB_predicate, &__block_literal_global_294);
  }

  v0 = CGColorSpacePerceptualStandardRGB_space;
  if (CGColorSpacePerceptualStandardRGB_space)
  {
    CFRetain(CGColorSpacePerceptualStandardRGB_space);
  }

  return v0;
}

uint64_t __CGColorSpacePerceptualStandardRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_perceptual_rgb);
  CGColorSpacePerceptualStandardRGB_space = result;
  return result;
}

uint64_t CGColorSpaceExtendedLinearGray()
{
  if (CGColorSpaceExtendedLinearGray_predicate[0] != -1)
  {
    dispatch_once(CGColorSpaceExtendedLinearGray_predicate, &__block_literal_global_291);
  }

  v0 = CGColorSpaceExtendedLinearGray_space;
  if (CGColorSpaceExtendedLinearGray_space)
  {
    CFRetain(CGColorSpaceExtendedLinearGray_space);
  }

  return v0;
}

void __CGColorSpaceExtendedLinearGray_block_invoke()
{
  CGColorSpaceExtendedLinearGray_space = create_singleton(color_space_state_create_extended_linear_gray);
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearGray_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceLinearGray");
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearGray_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceExtendedLinearGray_space);
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearGray_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceExtendedLinearGray_space);
  v0 = CGColorSpaceExtendedLinearGray_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
}

uint64_t CGColorSpaceLinearGray()
{
  if (CGColorSpaceLinearGray_predicate != -1)
  {
    dispatch_once(&CGColorSpaceLinearGray_predicate, &__block_literal_global_288_6550);
  }

  v0 = CGColorSpaceLinearGray_space;
  if (CGColorSpaceLinearGray_space)
  {
    CFRetain(CGColorSpaceLinearGray_space);
  }

  return v0;
}

void __CGColorSpaceLinearGray_block_invoke()
{
  CGColorSpaceLinearGray_space = create_singleton(color_space_state_create_linear_gray);
  CGColorSpaceSetProperty(CGColorSpaceLinearGray_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceLinearGray_space);
  CGColorSpaceSetProperty(CGColorSpaceLinearGray_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceLinearGray_space);
  CGColorSpaceSetProperty(CGColorSpaceLinearGray_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedLinearGray");
  v0 = CGColorSpaceLinearGray_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
}

uint64_t CGColorSpaceCreateDCIP3()
{
  if (CGColorSpaceCreateDCIP3_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDCIP3_predicate, &__block_literal_global_273_6562);
  }

  v0 = CGColorSpaceCreateDCIP3_space;
  if (CGColorSpaceCreateDCIP3_space)
  {
    CFRetain(CGColorSpaceCreateDCIP3_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateDCIP3_block_invoke()
{
  result = create_singleton(color_space_state_create_dci_p3);
  CGColorSpaceCreateDCIP3_space = result;
  return result;
}

uint64_t CGColorSpaceCreateExtendedLinearITUR_2020()
{
  if (CGColorSpaceCreateExtendedLinearITUR_2020_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateExtendedLinearITUR_2020_predicate, &__block_literal_global_261);
  }

  v0 = CGColorSpaceCreateExtendedLinearITUR_2020_space;
  if (CGColorSpaceCreateExtendedLinearITUR_2020_space)
  {
    CFRetain(CGColorSpaceCreateExtendedLinearITUR_2020_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateExtendedITUR_2020()
{
  if (CGColorSpaceCreateExtendedITUR_2020_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateExtendedITUR_2020_predicate, &__block_literal_global_258);
  }

  v0 = CGColorSpaceCreateExtendedITUR_2020_space;
  if (CGColorSpaceCreateExtendedITUR_2020_space)
  {
    CFRetain(CGColorSpaceCreateExtendedITUR_2020_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateLinearITUR_2020()
{
  if (CGColorSpaceCreateLinearITUR_2020_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateLinearITUR_2020_predicate, &__block_literal_global_255_6574);
  }

  v0 = CGColorSpaceCreateLinearITUR_2020_space;
  if (CGColorSpaceCreateLinearITUR_2020_space)
  {
    CFRetain(CGColorSpaceCreateLinearITUR_2020_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateITUR_709_HLG()
{
  if (CGColorSpaceCreateITUR_709_HLG_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_709_HLG_predicate, &__block_literal_global_246_6580);
  }

  v0 = CGColorSpaceCreateITUR_709_HLG_space;
  if (CGColorSpaceCreateITUR_709_HLG_space)
  {
    CFRetain(CGColorSpaceCreateITUR_709_HLG_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateITUR_709_PQ()
{
  if (CGColorSpaceCreateITUR_709_PQ_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_709_PQ_predicate, &__block_literal_global_243);
  }

  v0 = CGColorSpaceCreateITUR_709_PQ_space;
  if (CGColorSpaceCreateITUR_709_PQ_space)
  {
    CFRetain(CGColorSpaceCreateITUR_709_PQ_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateACESCGLinear()
{
  if (CGColorSpaceCreateACESCGLinear_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateACESCGLinear_predicate, &__block_literal_global_237_6586);
  }

  v0 = CGColorSpaceCreateACESCGLinear_space;
  if (CGColorSpaceCreateACESCGLinear_space)
  {
    CFRetain(CGColorSpaceCreateACESCGLinear_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateACESCGLinear_block_invoke()
{
  result = create_singleton(color_space_state_create_acescg_linear);
  CGColorSpaceCreateACESCGLinear_space = result;
  return result;
}

uint64_t CGColorSpaceCreateGenericXYZ()
{
  if (CGColorSpaceCreateGenericXYZ_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericXYZ_predicate, &__block_literal_global_234_6589);
  }

  v0 = CGColorSpaceCreateGenericXYZ_space;
  if (CGColorSpaceCreateGenericXYZ_space)
  {
    CFRetain(CGColorSpaceCreateGenericXYZ_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateGenericXYZ_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_xyz);
  CGColorSpaceCreateGenericXYZ_space = result;
  return result;
}

uint64_t (*__color_space_state_create_generic_rgb_linear_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6597;
  }

  color_space_state_create_generic_rgb_linear_f = v1;
  return result;
}

uint64_t CGColorSpaceCreateGenericLab()
{
  if (CGColorSpaceCreateGenericLab_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericLab_predicate, &__block_literal_global_221);
  }

  v0 = CGColorSpaceCreateGenericLab_space;
  if (CGColorSpaceCreateGenericLab_space)
  {
    CFRetain(CGColorSpaceCreateGenericLab_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateGenericLab_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_lab);
  CGColorSpaceCreateGenericLab_space = result;
  return result;
}

uint64_t CGColorSpaceCreateDisplayP3_709OETF()
{
  if (CGColorSpaceCreateDisplayP3_709OETF_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDisplayP3_709OETF_predicate, &__block_literal_global_209_6604);
  }

  v0 = CGColorSpaceCreateDisplayP3_709OETF_space;
  if (CGColorSpaceCreateDisplayP3_709OETF_space)
  {
    CFRetain(CGColorSpaceCreateDisplayP3_709OETF_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateExtendedLinearDisplayP3()
{
  if (CGColorSpaceCreateExtendedLinearDisplayP3_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateExtendedLinearDisplayP3_predicate, &__block_literal_global_200);
  }

  v0 = CGColorSpaceCreateExtendedLinearDisplayP3_space;
  if (CGColorSpaceCreateExtendedLinearDisplayP3_space)
  {
    CFRetain(CGColorSpaceCreateExtendedLinearDisplayP3_space);
  }

  return v0;
}

void __CGColorSpaceCreateExtendedLinearDisplayP3_block_invoke()
{
  CGColorSpaceCreateExtendedLinearDisplayP3_space = create_singleton(color_space_state_create_extended_linear_display_p3);
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearDisplayP3_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceLinearDisplayP3");
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearDisplayP3_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceCreateExtendedLinearDisplayP3_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearDisplayP3_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceCreateExtendedLinearDisplayP3_space);
  v0 = CGColorSpaceCreateExtendedLinearDisplayP3_space;
  v1 = CGColorSpaceCreateExtendedLinearDisplayP3_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", v1);
}

uint64_t CGColorSpaceCreateLinearDisplayP3()
{
  if (CGColorSpaceCreateLinearDisplayP3_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateLinearDisplayP3_predicate, &__block_literal_global_197);
  }

  v0 = CGColorSpaceCreateLinearDisplayP3_space;
  if (CGColorSpaceCreateLinearDisplayP3_space)
  {
    CFRetain(CGColorSpaceCreateLinearDisplayP3_space);
  }

  return v0;
}

void __CGColorSpaceCreateLinearDisplayP3_block_invoke()
{
  CGColorSpaceCreateLinearDisplayP3_space = create_singleton(color_space_state_create_linear_display_p3);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearDisplayP3_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateLinearDisplayP3_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearDisplayP3_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceCreateLinearDisplayP3_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearDisplayP3_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedLinearDisplayP3");
  v0 = CGColorSpaceCreateLinearDisplayP3_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearDisplayP3");
}

uint64_t CGColorSpaceCreateUncalibratedCMYK()
{
  if (CGColorSpaceCreateUncalibratedCMYK_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateUncalibratedCMYK_predicate, &__block_literal_global_179);
  }

  v0 = CGColorSpaceCreateUncalibratedCMYK_space;
  if (CGColorSpaceCreateUncalibratedCMYK_space)
  {
    CFRetain(CGColorSpaceCreateUncalibratedCMYK_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateUncalibratedCMYK_block_invoke()
{
  result = create_singleton(color_space_state_create_uncalibrated_cmyk);
  CGColorSpaceCreateUncalibratedCMYK_space = result;
  return result;
}

uint64_t CGColorSpaceCreateUncalibratedRGB()
{
  if (CGColorSpaceCreateUncalibratedRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateUncalibratedRGB_predicate, &__block_literal_global_176_6610);
  }

  v0 = CGColorSpaceCreateUncalibratedRGB_space;
  if (CGColorSpaceCreateUncalibratedRGB_space)
  {
    CFRetain(CGColorSpaceCreateUncalibratedRGB_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateUncalibratedRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_uncalibrated_rgb);
  CGColorSpaceCreateUncalibratedRGB_space = result;
  return result;
}

uint64_t CGColorSpaceCreateUncalibratedGray()
{
  if (CGColorSpaceCreateUncalibratedGray_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateUncalibratedGray_predicate, &__block_literal_global_173_6613);
  }

  v0 = CGColorSpaceCreateUncalibratedGray_space;
  if (CGColorSpaceCreateUncalibratedGray_space)
  {
    CFRetain(CGColorSpaceCreateUncalibratedGray_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateUncalibratedGray_block_invoke()
{
  result = create_singleton(color_space_state_create_uncalibrated_gray);
  CGColorSpaceCreateUncalibratedGray_space = result;
  return result;
}

void *CGColorSpaceIDFromName(const __CFString *a1)
{
  v1 = CGColorSpaceCreateWithName(a1);

  return CGColorSpaceGetID(v1);
}

uint64_t CGColorSpaceNameFromID(int a1)
{
  result = CGColorSpaceCreateWithID(a1);
  if (result)
  {
    return *(*(result + 24) + 80);
  }

  return result;
}

CFStringRef CGColorSpaceCopyName(CGColorSpaceRef space)
{
  if (space && (v1 = *(*(space + 3) + 80)) != 0)
  {
    return CFRetain(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t CGColorSpaceAttachToIOSurface(CGColorSpace *a1, __IOSurface *a2)
{
  result = 0;
  if (a1 && a2)
  {
    ID = CGColorSpaceGetID(a1);
    if (ID)
    {
      valuePtr = ID;
      result = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (!result)
      {
        return result;
      }

      v6 = result;
      IOSurfaceSetValue(a2, @"IOSurfaceColorSpaceID", result);
      v7 = *MEMORY[0x1E696CEE0];
      v8 = IOSurfaceCopyValue(a2, *MEMORY[0x1E696CEE0]);
      v9 = CGColorSpaceCreateWithPropertyList(v8);
      if (!CGColorSpaceEqualToColorSpace(a1, v9))
      {
        v10 = CGColorSpaceCopyPropertyList(a1);
        IOSurfaceSetValue(a2, v7, v10);
        if (v10)
        {
          CFRelease(v10);
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      result = CGColorSpaceCopyPropertyList(a1);
      if (!result)
      {
        return result;
      }

      v6 = result;
      IOSurfaceSetValue(a2, *MEMORY[0x1E696CEE0], result);
      IOSurfaceRemoveValue(a2, @"IOSurfaceColorSpaceID");
    }

    CFRelease(v6);
    return 1;
  }

  return result;
}

void __setup_block_invoke()
{
  if (CGFontCacheGetLocalCache_predicate != -1)
  {
    dispatch_once(&CGFontCacheGetLocalCache_predicate, &__block_literal_global_6640);
  }

  v1 = CGFontCacheGetLocalCache_local_font_cache;

  CGFontCacheReset(v1);
}

void CGFontCacheReset(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 4));
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 32) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      do
      {
        CGFontStrikeRelease(*v3);
        v3 = *(v3 + 8);
      }

      while (v3);
      v4 = *(a1 + 40);
      if (v4)
      {
        do
        {
          v5 = v4[1];
          free(v4);
          v4 = v5;
        }

        while (v5);
      }
    }

    *(a1 + 40) = 0;

    os_unfair_lock_unlock((a1 + 4));
  }
}

void print_cache_size()
{
  while (1)
  {
    sleep(reporting_frequency);
    pthread_mutex_lock(&font_caches_mutex);
    v7 = font_caches;
    if (font_caches)
    {
      do
      {
        v8 = *v7;
        if (*v7)
        {
          os_unfair_lock_lock((v8 + 4));
          v9 = *(v8 + 40);
          if (v9)
          {
            v10 = 0;
            do
            {
              v10 += CGFontStrikeGetSize(*v9);
              v9 = v9[1];
            }

            while (v9);
            v11 = *(v8 + 40);
            if (v11)
            {
              v12 = 0;
              do
              {
                ++v12;
                v11 = *(v11 + 8);
              }

              while (v11);
            }
          }

          os_unfair_lock_unlock((v8 + 4));
        }

        CGPostError("Cache %p: %zu bytes count = %zu", v0, v1, v2, v3, v4, v5, v6, v8);
        v7 = v7[1];
      }

      while (v7);
    }

    pthread_mutex_unlock(&font_caches_mutex);
  }
}

atomic_uint *CGFontCacheRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGFontCacheRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    pthread_mutex_lock(&font_caches_mutex);
    font_caches = x_list_remove(font_caches, a1);
    pthread_mutex_unlock(&font_caches_mutex);
    CGFontCacheReset(a1);

    free(a1);
  }
}

uint64_t CGFontCacheResetAllCaches()
{
  pthread_mutex_lock(&font_caches_mutex);
  v0 = font_caches;
  if (font_caches)
  {
    do
    {
      CGFontCacheReset(*v0);
      v0 = v0[1];
    }

    while (v0);
  }

  return pthread_mutex_unlock(&font_caches_mutex);
}

void CGFontCachePrint(uint64_t a1, FILE *a2)
{
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 4));
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = 0;
      do
      {
        v5 += CGFontStrikeGetSize(*v4);
        v4 = v4[1];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    fprintf(a2, "cache %p: size = %zu (max %zu)\n", a1, v5, *(a1 + 8));
    v14 = a1;
    v6 = *(a1 + 40);
    if (v6)
    {
      do
      {
        v7 = *v6;
        fwrite("  ", 2uLL, 1uLL, a2);
        if (v7)
        {
          v8 = v7 + 8;
        }

        else
        {
          v8 = 0;
        }

        fprintf(a2, "strike %p <font %d; style 0x%04x >; ", v7, *v8, *(v8 + 4));
        fprintf(a2, "[ %g %g %g %g ; %g %g ]; ", *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48));
        fprintf(a2, "[ %g %g ]; ", *(v8 + 56), *(v8 + 64));
        fprintf(a2, "%zu bytes; %d", *(v7 + 88), *(v7 + 4));
        fwrite(":\n", 2uLL, 1uLL, a2);
        if (*(v7 + 88))
        {
          fwrite("    entries:\n", 0xDuLL, 1uLL, a2);
          v9 = 0;
          v10 = v7 + 112;
          do
          {
            v11 = *(v10 + 8 * v9);
            if (v11)
            {
              for (i = 0; i != 256; ++i)
              {
                for (j = *(v11 + 8 * i); j; j = j[1])
                {
                  fprintf(a2, "    glyph %hu (%hhu/%hhu)\n", *(*j + 4), *(*j + 6), *(*j + 7));
                }
              }
            }

            ++v9;
          }

          while (v9 != 256);
        }

        else
        {
          fwrite("    no entries.\n", 0x10uLL, 1uLL, a2);
        }

        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      fwrite("  no strikes.\n", 0xEuLL, 1uLL, a2);
    }

    os_unfair_lock_unlock(v14 + 1);
  }
}

uint64_t CGFontCacheGetLocalCache()
{
  if (CGFontCacheGetLocalCache_predicate != -1)
  {
    dispatch_once(&CGFontCacheGetLocalCache_predicate, &__block_literal_global_6640);
  }

  return CGFontCacheGetLocalCache_local_font_cache;
}

void CGSBlend8888toARGB8888(char *a1, int a2, char *a3, int a4, int a5, int a6, unsigned int a7, char a8)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a5;
  if (a3 > a1 && a2 == a4)
  {
    v16 = &a1[4 * a5];
    if (v16 <= a3)
    {
      v19 = &v16[(a6 - 1) * a2];
      if (v19 <= a3)
      {
        v11 = a2;
      }

      else
      {
        v11 = -a2;
      }

      if (v19 > a3)
      {
        v17 = &a3[(a6 - 1) * a2];
      }

      else
      {
        v17 = a3;
      }

      if (v19 <= a3)
      {
        v18 = a2;
      }

      else
      {
        v12 = &a3[(a6 - 1) * a2];
        v18 = -a2;
      }

      if (v19 <= a3)
      {
        v13 = a2;
      }

      else
      {
        v13 = -a2;
      }

      if (v19 > a3)
      {
        v14 = (v19 - 4 * a5);
      }
    }

    else
    {
      v11 = 4 * a5;
      v17 = malloc_type_malloc(4 * a5 * a6, 0x51AA3C28uLL);
      v18 = v13;
    }
  }

  else
  {
    v17 = a3;
    v18 = a4;
  }

  srcTop.data = v14;
  srcTop.height = a6;
  srcTop.width = v15;
  srcTop.rowBytes = v13;
  srcBottom.data = v12;
  srcBottom.height = a6;
  srcBottom.width = v15;
  srcBottom.rowBytes = v18;
  dest.data = v17;
  dest.height = a6;
  dest.width = v15;
  dest.rowBytes = v11;
  permuteMap[0] = a7 >> 6;
  permuteMap[1] = (a7 >> 4) & 3;
  permuteMap[2] = (a7 >> 2) & 3;
  permuteMap[3] = a7 & 3;
  vImagePremultipliedAlphaBlendWithPermute_ARGB8888(&srcTop, &srcBottom, &dest, permuteMap, a8 != 1, 0x10u);
  if (v12 != v17)
  {
    CGBlt_copyBytes(v11, a6, v17, v12, v11, v18);
    free(v17);
  }
}

_DWORD *resample_float_h_Ncpp(_DWORD *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = *a6;
    v11 = *a7;
    v12 = 4 * a2 + 8;
    v13 = a8;
    do
    {
      if (a4)
      {
        v14 = *(a5 + 8 * v8);
        v15 = a4;
        v16 = result;
        do
        {
          if (v9)
          {
            v17 = 0;
            v18 = v16[1];
            v19 = v10 + v8 * v11 + 4 * *v16 * v9;
            do
            {
              v20 = 0.0;
              if (v18)
              {
                v21 = v19;
                v22 = (v16 + 2);
                v23 = v18;
                do
                {
                  v24 = *v22++;
                  v20 = v20 + (*v21 * v24);
                  v21 += v9;
                  --v23;
                }

                while (v23);
              }

              *v14++ = v20;
              ++v17;
              v19 += 4;
            }

            while (v17 != v9);
          }

          v16 = (v16 + v12);
          --v15;
        }

        while (v15);
      }

      ++v8;
    }

    while (v8 != v13);
  }

  return result;
}

int *resample_float_h_4cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    do
    {
      if (a4)
      {
        v12 = *(a5 + 8 * v8);
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          if (v15)
          {
            v16 = (v14 + 2);
            v17 = (v9 + v8 * v10 + 16 * *v14);
            v18 = 0uLL;
            do
            {
              v19 = *v16++;
              v20 = v19;
              v21 = *v17++;
              v18 = vmlaq_n_f32(v18, v21, v20);
              --v15;
            }

            while (v15);
          }

          else
          {
            v18 = 0uLL;
          }

          *v12++ = v18;
          v14 = (v14 + v11);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_float_h_3cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    do
    {
      if (a4)
      {
        v12 = *(a5 + 8 * v8);
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          if (v15)
          {
            v16 = (v14 + 2);
            v17 = (v9 + v8 * v10 + 12 * *v14);
            v18 = 0;
            v19 = 0.0;
            do
            {
              v20 = *v16++;
              v21 = v17[1].f32[0];
              v18 = vmla_n_f32(v18, *v17, v20);
              v17 = (v17 + 12);
              v19 = v19 + (v21 * v20);
              --v15;
            }

            while (v15);
          }

          else
          {
            v18 = 0;
            v19 = 0.0;
          }

          *v12 = v18;
          v12[1].f32[0] = v19;
          v12 = (v12 + 12);
          v14 = (v14 + v11);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

float *resample_float_h_1cpp(float *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    while (!a4)
    {
LABEL_14:
      if (++v8 == a8)
      {
        return result;
      }
    }

    v12 = *(a5 + 8 * v8);
    v13 = a4;
    v14 = result;
    while (1)
    {
      v15 = *(v14 + 1);
      v16 = (v14 + 2);
      v17 = v14[2];
      v18 = v9 + v8 * v10 - 4 + 4 * *v14;
      if (v15 >= 4)
      {
        break;
      }

      v20 = 0.0;
      if (v15)
      {
        goto LABEL_11;
      }

LABEL_13:
      *v12++ = v20;
      v14 = (v14 + v11);
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v19 = v14 + 6;
    v20 = 0.0;
    do
    {
      v21 = v15;
      v22 = *(v18 + 16);
      v18 += 16;
      v15 -= 4;
      v23 = ((v20 + (*(v18 - 12) * v17)) + (*(v18 - 8) * *(v19 - 3))) + (*(v18 - 4) * *(v19 - 2));
      v17 = *v19;
      v20 = v23 + (v22 * *(v19 - 1));
      v19 += 4;
    }

    while (v21 > 7);
    v16 = (v19 - 4);
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_11:
    v24 = (v18 + 4);
    v25 = (v16 + 1);
    do
    {
      v26 = *v24++;
      v20 = v20 + (v26 * v17);
      v27 = *v25++;
      v17 = v27;
      --v15;
    }

    while (v15);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_float_v_Ncpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 4;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFFC;
  if (v10 < 1)
  {
    LODWORD(v11) = 0;
    v12 = 0.0;
    v13 = a3;
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
    v13 = a3;
    do
    {
      v14 = 0uLL;
      if (v7)
      {
        v15 = a6;
        v16 = v8;
        v17 = v7;
        do
        {
          v18 = *v16++;
          v19 = v18;
          v20 = *v15++;
          v14 = vmlaq_n_f32(v14, *(v20 + 4 * v11), v19);
          --v17;
        }

        while (v17);
      }

      v21 = v11 | 1;
      if (v12 < v14.f32[0])
      {
        v12 = v14.f32[0];
      }

      if (v12 >= 0.0)
      {
        v22 = v12;
      }

      else
      {
        v22 = 0.0;
      }

      if (v12 > 1.0)
      {
        v22 = 1.0;
      }

      v23 = v21 == v13;
      if (v21 == v13)
      {
        v24 = v13 + a3;
      }

      else
      {
        v24 = v13;
      }

      if (v23)
      {
        v13 += a3;
      }

      if (v23)
      {
        v12 = 0.0;
      }

      if (!v23)
      {
        v22 = v14.f32[0];
      }

      v25 = v14.f32[1];
      if (v12 < v14.f32[1])
      {
        v12 = v14.f32[1];
      }

      if (v12 >= 0.0)
      {
        v26 = v12;
      }

      else
      {
        v26 = 0.0;
      }

      if (v12 > 1.0)
      {
        v26 = 1.0;
      }

      if ((v11 | 2) == v24)
      {
        v25 = v26;
        v24 = v13 + a3;
        v13 += a3;
        v12 = 0.0;
      }

      *(v6 + 4) = v22;
      *(v6 + 8) = v25;
      v27 = v14.f32[2];
      if (v12 < v14.f32[2])
      {
        v12 = v14.f32[2];
      }

      if (v12 >= 0.0)
      {
        v28 = v12;
      }

      else
      {
        v28 = 0.0;
      }

      if (v12 > 1.0)
      {
        v28 = 1.0;
      }

      result = v13 + a3;
      if ((v11 | 3) == v24)
      {
        v24 = v13 + a3;
        v13 += a3;
        v12 = 0.0;
        v27 = v28;
      }

      *(v6 + 12) = v27;
      v14.i32[0] = v14.i32[3];
      if (v12 < v14.f32[3])
      {
        v12 = v14.f32[3];
      }

      v11 += 4;
      if (v11 == v24)
      {
        v14.i32[0] = 0;
        if (v12 >= 0.0)
        {
          v14.f32[0] = v12;
        }

        if (v12 > 1.0)
        {
          v14.f32[0] = 1.0;
        }

        v13 += a3;
        v12 = 0.0;
      }

      *(v6 + 16) = v14.i32[0];
      v6 += 16;
    }

    while (v11 < v10);
  }

  if (v11 < v9)
  {
    v11 = v11;
    do
    {
      v29 = 0.0;
      if (v7)
      {
        v30 = a6;
        v31 = v8;
        v32 = v7;
        do
        {
          v33 = *v31++;
          v34 = v33;
          v35 = *v30++;
          result = v35;
          v29 = v29 + (*(v35 + 4 * v11) * v34);
          --v32;
        }

        while (v32);
      }

      if (v12 < v29)
      {
        v12 = v29;
      }

      if (++v11 == v13)
      {
        v29 = 0.0;
        if (v12 >= 0.0)
        {
          v29 = v12;
        }

        if (v12 > 1.0)
        {
          v29 = 1.0;
        }

        v13 += a3;
        v12 = 0.0;
      }

      *(v6 + 4) = v29;
      v6 += 4;
    }

    while (v11 != v9);
  }

  return result;
}

uint64_t resample_float_v_3cpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = *a5;
    do
    {
      v10 = 0uLL;
      if (v8)
      {
        v11 = a6;
        v12 = (result + 8);
        v13 = v8;
        do
        {
          v14 = *v12++;
          v15 = v14;
          v16 = *v11++;
          v10 = vmlaq_n_f32(v10, *(v16 + 4 * v7), v15);
          --v13;
        }

        while (v13);
      }

      v17 = v10.f32[3];
      if (v10.f32[0] > v10.f32[3])
      {
        v17 = v10.f32[0];
      }

      if (v10.f32[1] > v17)
      {
        v17 = v10.f32[1];
      }

      if (v10.f32[2] > v17)
      {
        v17 = v10.f32[2];
      }

      *v9 = v10.i64[0];
      *(v9 + 8) = v10.i32[2];
      if (v17 >= 0.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0.0;
      }

      if (v17 > 1.0)
      {
        v18 = 1.0;
      }

      *(v9 + 12) = v18;
      v9 += 16;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_float_v_Ncpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = (*a5 - 4);
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = 2 - a3;
  v11 = a3 * a4;
  v12 = v11 & 0xFFFFFFFC;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    v14 = 0.0;
    v15 = a3;
  }

  else
  {
    v13 = 0;
    v14 = 0.0;
    v15 = a3;
    do
    {
      v16 = 0uLL;
      if (v7)
      {
        v17 = a6;
        v18 = v8;
        v19 = v7;
        do
        {
          v20 = *v18++;
          v21 = v20;
          v22 = *v17++;
          v16 = vmlaq_n_f32(v16, *(v22 + 4 * v13), v21);
          --v19;
        }

        while (v19);
      }

      if (v14 >= v16.f32[0])
      {
        v23 = v14;
      }

      else
      {
        v23 = v16.f32[0];
      }

      if ((v13 | 1) == v15)
      {
        v24 = 0.0;
        if (v23 >= 0.0)
        {
          v24 = v23;
        }

        if (v23 > 1.0)
        {
          v24 = 1.0;
        }

        v6[v10] = v24;
        result = v15 + v9;
        v15 += v9;
        v23 = 0.0;
      }

      else
      {
        result = v15;
      }

      v6[1] = v16.f32[0];
      if (v23 < v16.f32[1])
      {
        v23 = v16.f32[1];
      }

      if ((v13 | 2) == result)
      {
        v25 = 0.0;
        if (v23 >= 0.0)
        {
          v25 = v23;
        }

        if (v23 <= 1.0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 1.0;
        }

        v6[v10 + 1] = v26;
        result = v15 + v9;
        v15 += v9;
        v23 = 0.0;
      }

      v6[2] = v16.f32[1];
      if (v23 < v16.f32[2])
      {
        v23 = v16.f32[2];
      }

      if ((v13 | 3) == result)
      {
        v27 = 0.0;
        if (v23 >= 0.0)
        {
          v27 = v23;
        }

        if (v23 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        v6[v10 + 2] = v28;
        result = v15 + v9;
        v15 += v9;
        v23 = 0.0;
      }

      v6[3] = v16.f32[2];
      if (v23 >= v16.f32[3])
      {
        v14 = v23;
      }

      else
      {
        v14 = v16.f32[3];
      }

      v13 += 4;
      if (v13 == result)
      {
        v29 = 0.0;
        if (v14 >= 0.0)
        {
          v29 = v14;
        }

        if (v14 <= 1.0)
        {
          v30 = v29;
        }

        else
        {
          v30 = 1.0;
        }

        v6[v10 + 3] = v30;
        v15 += v9;
        v14 = 0.0;
      }

      v6[4] = v16.f32[3];
      v6 += 4;
    }

    while (v13 < v12);
  }

  if (v13 < v11)
  {
    v13 = v13;
    do
    {
      v31 = 0.0;
      if (v7)
      {
        v32 = a6;
        v33 = v8;
        LODWORD(result) = v7;
        do
        {
          v34 = *v33++;
          v35 = v34;
          v36 = *v32++;
          v31 = v31 + (*(v36 + 4 * v13) * v35);
          result = (result - 1);
        }

        while (result);
      }

      if (v14 < v31)
      {
        v14 = v31;
      }

      if (++v13 == v15)
      {
        v37 = 0.0;
        if (v14 >= 0.0)
        {
          v37 = v14;
        }

        if (v14 <= 1.0)
        {
          v38 = v37;
        }

        else
        {
          v38 = 1.0;
        }

        v6[v10] = v38;
        v15 += v9;
        v14 = 0.0;
      }

      v6[1] = v31;
      ++v6;
    }

    while (v13 != v11);
  }

  return result;
}

uint64_t resample_float_v_3cpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = *a5;
    do
    {
      v10 = 0uLL;
      if (v8)
      {
        v11 = a6;
        v12 = (result + 8);
        v13 = v8;
        do
        {
          v14 = *v12++;
          v15 = v14;
          v16 = *v11++;
          v10 = vmlaq_n_f32(v10, *(v16 + 4 * v7), v15);
          --v13;
        }

        while (v13);
      }

      v17 = v10.f32[1];
      if (v10.f32[1] <= v10.f32[0])
      {
        v17 = v10.f32[0];
      }

      if (v10.f32[2] > v17)
      {
        v17 = v10.f32[2];
      }

      if (v10.f32[3] > v17)
      {
        v17 = v10.f32[3];
      }

      if (v17 >= 0.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0.0;
      }

      if (v17 <= 1.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 1.0;
      }

      *v9 = v19;
      *(v9 + 4) = vextq_s8(v10, v10, 4uLL).u64[0];
      *(v9 + 12) = v10.i32[3];
      v9 += 16;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_float_v_Ncpp(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, float32x4_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFFC;
  if (v10 < 1)
  {
    LODWORD(i) = 0;
  }

  else
  {
    for (i = 0; i < v10; i += 4)
    {
      v12 = 0uLL;
      if (v7)
      {
        v13 = a6;
        v14 = v8;
        v15 = v7;
        do
        {
          v16 = *v14++;
          v17 = v16;
          v18 = *v13++;
          result = v18;
          v12 = vmlaq_n_f32(v12, *(v18 + 4 * i), v17);
          --v15;
        }

        while (v15);
      }

      *v6++ = v12;
    }
  }

  if (i < v9)
  {
    i = i;
    do
    {
      v19 = 0.0;
      if (v7)
      {
        v20 = a6;
        v21 = v8;
        v22 = v7;
        do
        {
          v23 = *v21++;
          v24 = v23;
          v25 = *v20++;
          v19 = v19 + (*(v25 + 4 * i) * v24);
          --v22;
        }

        while (v22);
      }

      v6->f32[0] = v19;
      v6 = (v6 + 4);
      ++i;
    }

    while (i != v9);
  }

  return result;
}

int *resample_float_h_Ncpp_ap(int *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = a3 - 1;
    v11 = *a6;
    v12 = a6[1];
    v13 = *a7;
    v14 = a7[1];
    v15 = 4 * a3 - 4;
    do
    {
      if (a4)
      {
        v16 = *(a5 + 8 * v8);
        v17 = a4;
        v18 = result;
        do
        {
          v19 = v18[1];
          v20 = *v18;
          v21 = (v18 + 2);
          if (v9 >= 2)
          {
            v22 = 0;
            do
            {
              v23 = 0.0;
              if (v19)
              {
                v24 = (v11 + v8 * v13 + 4 * v20 * v10);
                v25 = (v18 + 2);
                v26 = v19;
                do
                {
                  v27 = *v25++;
                  v23 = v23 + (*v24 * v27);
                  v24 = (v24 + v15);
                  --v26;
                }

                while (v26);
              }

              *v16++ = v23;
              ++v22;
            }

            while (v22 != v10);
          }

          if (v19)
          {
            v28 = (v12 + v8 * v14 + 4 * v20);
            v29 = 0.0;
            do
            {
              v30 = *v21++;
              v31 = v30;
              v32 = *v28++;
              v29 = v29 + (v32 * v31);
              --v19;
            }

            while (v19);
          }

          else
          {
            v29 = 0.0;
          }

          *v16++ = v29;
          v18 += a2 + 2;
          --v17;
        }

        while (v17);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_float_h_4cpp_ap(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = *(a5 + 8 * v8);
        v16 = a4;
        v17 = result;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            v19 = (v17 + 2);
            v20 = *v17;
            v21 = (v9 + v8 * v11 + 16 * v20);
            v22 = (v10 + v8 * v12 + 4 * v20);
            v23 = 0uLL;
            v24 = 0.0;
            do
            {
              v25 = *v19++;
              v26 = v25;
              v27 = *v21++;
              v28 = v27;
              v27.i32[0] = *v22++;
              v23 = vmlaq_n_f32(v23, v28, v26);
              v24 = v24 + (v27.f32[0] * v26);
              --v18;
            }

            while (v18);
          }

          else
          {
            v23 = 0uLL;
            v24 = 0.0;
          }

          *v15 = v23;
          v15[1].f32[0] = v24;
          v15 = (v15 + 20);
          v17 = (v17 + v13);
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}

uint64_t resample_float_h_1cpp_ap(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    while (!a4)
    {
LABEL_14:
      if (++v8 == v14)
      {
        return result;
      }
    }

    v15 = *(a5 + 8 * v8);
    v16 = a4;
    v17 = result;
    while (1)
    {
      v18 = *(v17 + 4);
      v19 = *v17 - 1;
      v20 = v9 + v8 * v11 + 4 * v19;
      v21 = v10 + v8 * v12 + 4 * v19;
      v22 = v17 + 8;
      v23 = *(v17 + 8);
      if (v18 >= 2)
      {
        break;
      }

      v26 = 0.0;
      v25 = 0.0;
      if (v18)
      {
        goto LABEL_11;
      }

LABEL_13:
      *v15 = v26;
      v15[1] = v25;
      v15 += 2;
      v17 += v13;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    v24 = 0;
    v25 = 0.0;
    v26 = 0.0;
    do
    {
      v27 = v26 + (*(v20 + v24 + 4) * v23);
      v28 = v25 + (*(v21 + v24 + 4) * v23);
      v29 = *(v17 + v24 + 12);
      v23 = *(v17 + v24 + 16);
      v26 = v27 + (*(v20 + v24 + 8) * v29);
      v30 = v18;
      v18 -= 2;
      v25 = v28 + (*(v21 + v24 + 8) * v29);
      v24 += 8;
    }

    while (v30 > 3);
    v22 = v17 + v24 + 8;
    v21 += v24;
    v20 += v24;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_11:
    v31 = (v21 + 4);
    v32 = (v20 + 4);
    v33 = (v22 + 4);
    do
    {
      v34 = *v32++;
      v35 = v34;
      v36 = *v31++;
      v26 = v26 + (v35 * v23);
      v25 = v25 + (v36 * v23);
      v37 = *v33++;
      v23 = v37;
      --v18;
    }

    while (v18);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_float_v_Ncpp_ap(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 4;
  v7 = a5[1] - 4;
  v8 = *(result + 4);
  v9 = (result + 8);
  v10 = a3 * a4;
  v11 = v10 & 0xFFFFFFFC;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
    v13 = 0.0;
    v14 = a3;
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
    v14 = a3;
    do
    {
      v15 = 0uLL;
      if (v8)
      {
        v16 = a6;
        v17 = v9;
        v18 = v8;
        do
        {
          v19 = *v17++;
          v20 = v19;
          v21 = *v16++;
          v15 = vmlaq_n_f32(v15, *(v21 + 4 * v12), v20);
          --v18;
        }

        while (v18);
      }

      if (v13 < v15.f32[0])
      {
        v13 = v15.f32[0];
      }

      if ((v12 | 1) == v14)
      {
        v22 = 0.0;
        if (v13 >= 0.0)
        {
          v22 = v13;
        }

        if (v13 <= 1.0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 1.0;
        }

        *(v7 + 4) = v23;
        v7 += 4;
        v24 = v14 + a3;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        v24 = v14;
        *(v6 + 4) = v15.i32[0];
        v6 += 4;
      }

      if (v13 < v15.f32[1])
      {
        v13 = v15.f32[1];
      }

      if ((v12 | 2) == v24)
      {
        v25 = 0.0;
        if (v13 >= 0.0)
        {
          v25 = v13;
        }

        if (v13 <= 1.0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 1.0;
        }

        *(v7 + 4) = v26;
        v7 += 4;
        v24 = v14 + a3;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        *(v6 + 4) = v15.i32[1];
        v6 += 4;
      }

      if (v13 < v15.f32[2])
      {
        v13 = v15.f32[2];
      }

      result = v12 | 3;
      if ((v12 | 3) == v24)
      {
        v27 = 0.0;
        if (v13 >= 0.0)
        {
          v27 = v13;
        }

        if (v13 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        *(v7 + 4) = v28;
        v7 += 4;
        v24 = v14 + a3;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        *(v6 + 4) = v15.i32[2];
        v6 += 4;
      }

      if (v13 < v15.f32[3])
      {
        v13 = v15.f32[3];
      }

      v12 += 4;
      if (v12 == v24)
      {
        v29 = 0.0;
        if (v13 >= 0.0)
        {
          v29 = v13;
        }

        if (v13 <= 1.0)
        {
          v30 = v29;
        }

        else
        {
          v30 = 1.0;
        }

        *(v7 + 4) = v30;
        v7 += 4;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        *(v6 + 4) = v15.i32[3];
        v6 += 4;
      }
    }

    while (v12 < v11);
  }

  if (v12 < v10)
  {
    v12 = v12;
    do
    {
      v31 = 0.0;
      if (v8)
      {
        v32 = a6;
        v33 = v9;
        LODWORD(result) = v8;
        do
        {
          v34 = *v33++;
          v35 = v34;
          v36 = *v32++;
          v31 = v31 + (*(v36 + 4 * v12) * v35);
          result = (result - 1);
        }

        while (result);
      }

      if (v13 < v31)
      {
        v13 = v31;
      }

      if (++v12 == v14)
      {
        v37 = 0.0;
        if (v13 >= 0.0)
        {
          v37 = v13;
        }

        if (v13 <= 1.0)
        {
          v38 = v37;
        }

        else
        {
          v38 = 1.0;
        }

        *(v7 + 4) = v38;
        v7 += 4;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        *(v6 + 4) = v31;
        v6 += 4;
      }
    }

    while (v12 != v10);
  }

  return result;
}

int *resample_float_h_3cpp_ap(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = *(a5 + 8 * v8);
        v16 = a4;
        v17 = result;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            v19 = (v17 + 2);
            v20 = *v17;
            v21 = v9 + v8 * v11 + 12 * v20;
            v22 = (v10 + v8 * v12 + 4 * v20);
            v23 = 0uLL;
            do
            {
              v24 = *v19++;
              v25 = v24;
              v26.i64[0] = *v21;
              v27 = *v22++;
              v26.i32[2] = *(v21 + 8);
              v26.i32[3] = v27;
              v23 = vmlaq_n_f32(v23, v26, v25);
              v21 += 12;
              --v18;
            }

            while (v18);
          }

          else
          {
            v23 = 0uLL;
          }

          *v15++ = v23;
          v17 = (v17 + v13);
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}
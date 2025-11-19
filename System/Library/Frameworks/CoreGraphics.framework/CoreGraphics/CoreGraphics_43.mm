void CG::DisplayListEntryLines::~DisplayListEntryLines(void **this)
{
  *this = &unk_1EF23ABB0;
  free(this[16]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23ABB0;
  free(this[16]);
}

BOOL DisplayListXMLParserEntryRects::parseChildElements(DisplayListXMLParserEntryRects *this, _xmlNode *a2, CG::DisplayListEntry *lpsrc)
{
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  v14 = malloc_type_malloc(32 * *(this + 2), 0x1000040E0EAB150uLL);
  children = a2->children;
  if (!children)
  {
    goto LABEL_16;
  }

  while (xmlStrcmp(children->name, "rects"))
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

  if (!xmlStrcmp(v16->name, "rect"))
  {
    String = xmlNodeListGetString(v16->doc, v16->children, 1);
    if (String)
    {
      v26 = String;
      v35 = 0;
      v36 = 0;
      v33 = 0;
      v34 = 0;
      if (sscanf(String, "{%lg, %lg}, {%lg, %lg}", &v36, &v35, &v34, &v33) == 4)
      {
        v27 = v35;
        v29 = v33;
        v28 = v34;
        p_x = &v14[v17++].origin.x;
        *p_x = v36;
        p_x[1] = v27;
        p_x[2] = v28;
        p_x[3] = v29;
      }

      free(v26);
    }

    goto LABEL_14;
  }

  CGPostError("Unexpected child node name. Expected rect, got %s", v18, v19, v20, v21, v22, v23, v24, v16->name);
LABEL_17:
  v31 = *(this + 2);
  if (v17 == v31)
  {
    CG::DisplayListEntryRects::setRects(v6, v14, v17);
  }

  else
  {
    CGPostError("Failed to parse expected number of rects. Expected %zu, got %zu", v7, v8, v9, v10, v11, v12, v13, v31);
  }

  free(v14);
  return v17 == v31;
}

uint64_t CG::DisplayListEntryRects::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v6 = *(a1 + 144);
  if (v6 != *(a2 + 144) || *(a1 + 88) != *(a2 + 88) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || *(a1 + 128) != *(a2 + 128))
  {
    return 0;
  }

  v7 = *(a1 + 136);
  v8 = *(a2 + 136);
  if (v7)
  {
    if (!v8 || memcmp(v7, v8, 32 * v6))
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

uint64_t DisplayListXMLParserEntryPath::parseChildElements(DisplayListXMLParserEntryPath *this, _xmlNode *a2, CG::DisplayListEntry *lpsrc)
{
  if (!v4)
  {
    __cxa_bad_cast();
  }

  children = a2->children;
  if (children)
  {
    v6 = v4;
    while (xmlStrcmp(children->name, "cgpath"))
    {
      children = children->next;
      if (!children)
      {
        return 1;
      }
    }

    v8 = CG::DisplayListXMLHelper::parseCGPathFromNode(children, v7);
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v10 = v6[11];
    v6[11] = v9;
    if (v10)
    {
      CFRelease(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  return 1;
}

uint64_t CG::DisplayListEntryPath::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 80) != *(a2 + 80) || *(a1 + 84) != *(a2 + 84) || *(a1 + 96) != *(a2 + 96) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 104), *(a2 + 104)), vceqq_f64(*(a1 + 120), *(a2 + 120))))) & 1) == 0 || *(a1 + 136) != *(a2 + 136))
  {
    return 0;
  }

  v6 = *(a1 + 88);
  v7 = *(a2 + 88);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v7 || !CGPathEqualToPath(v6, v7))
  {
    return 0;
  }

LABEL_11:

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

BOOL DisplayListXMLParserEntryGlyphs::parseChildElements(DisplayListXMLParserEntryGlyphs *this, _xmlNode *a2, CG::DisplayListEntry *lpsrc)
{
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  v7 = malloc_type_malloc(16 * *(this + 2), 0x1000040451B5BE8uLL);
  v15 = malloc_type_malloc(2 * *(this + 2), 0x1000040BDFB0063uLL);
  children = a2->children;
  if (!children)
  {
    goto LABEL_16;
  }

  while (xmlStrcmp(children->name, "glyphs"))
  {
    children = children->next;
    if (!children)
    {
      goto LABEL_16;
    }
  }

  v17 = children->children;
  if (!v17)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v18 = 0;
  while (v17->type != XML_ELEMENT_NODE)
  {
LABEL_14:
    v17 = v17->next;
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  if (!xmlStrcmp(v17->name, "glyph"))
  {
    CG::DisplayListXMLHelper::parseAttributesFromNode(v40, v17);
    v38 = 0;
    if (CG::DisplayListXMLHelper::parsePointFromAttributes(v40, "position", &v39, v26, v27, v28, v29, v30) && CG::DisplayListXMLHelper::parseFormatFromAttributes(v40, "glyph", "%hd", v31, v32, v33, v34, v35, &v38) == 1)
    {
      v7[v18] = v39;
      v15[v18++] = v38;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v41);
    goto LABEL_14;
  }

  CGPostError("Unexpected child node name. Expected glyph, got %s", v19, v20, v21, v22, v23, v24, v25, v17->name);
LABEL_17:
  v36 = *(this + 2);
  if (v18 == v36)
  {
    CG::DisplayListEntryGlyphs::setGlyphsAndPositions(v6, v15, v7, v18);
  }

  else
  {
    CGPostError("Failed to parse expected number of glyphs. Expected %zu, got %zu", v8, v9, v10, v11, v12, v13, v14, v36);
  }

  free(v15);
  free(v7);
  return v18 == v36;
}

uint64_t CG::DisplayListEntryGlyphs::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 88) != *(a2 + 88) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || *(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 144), *(a2 + 144)), vceqq_f64(*(a1 + 160), *(a2 + 160))))) & 1) == 0 || *(a1 + 176) != *(a2 + 176) || *(a1 + 184) != *(a2 + 184) || *(a1 + 192) != *(a2 + 192) || *(a1 + 200) != *(a2 + 200) || *(a1 + 216) != *(a2 + 216) || *(a1 + 220) != *(a2 + 220) || *(a1 + 224) != *(a2 + 224) || *(a1 + 248) != *(a2 + 248))
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
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

  v8 = *(a1 + 208);
  v9 = *(a2 + 208);
  if (v8)
  {
    if (!v9 || !(*(*v8 + 24))(v8, v9, a3))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 232);
  v11 = *(a2 + 232);
  if (v10)
  {
    if (!v11 || memcmp(v10, v11, 2 * *(a1 + 248)))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 240);
  v13 = *(a2 + 240);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (!v13 || memcmp(v12, v13, 16 * *(a1 + 248)))
  {
    return 0;
  }

LABEL_36:

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

uint64_t CG::DisplayListEntryImage::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 88) != *(a2 + 88) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || *(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136) || *(a1 + 144) != *(a2 + 144) || *(a1 + 148) != *(a2 + 148))
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v7 || !(*(*v6 + 24))(v6, v7, a3))
  {
    return 0;
  }

LABEL_12:

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

uint64_t std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:fe200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t DisplayListXMLParserEntryStateDrawing::parseAttributes(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __p[58] = *MEMORY[0x1E69E9840];
  if (lpsrc)
  {
  }

  else
  {
    v10 = 0;
  }

  v98 = 0;
  v99 = 0;
  v97 = 0;
  v95 = 0;
  v96 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "clip", "%llu", a4, a5, a6, a7, a8, &v99) == 1)
  {
    v16 = *(a1 + 8);
    v19 = *(v16 + 40);
    v17 = v16 + 40;
    v18 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = v17;
    do
    {
      v21 = *(v18 + 32);
      v22 = v21 >= v99;
      v23 = v21 < v99;
      if (v22)
      {
        v20 = v18;
      }

      v18 = *(v18 + 8 * v23);
    }

    while (v18);
    if (v20 != v17 && *(v20 + 32) <= v99)
    {
      v24 = *(v20 + 40);
      if (v24)
      {
      }
    }

    else
    {
LABEL_13:
      v24 = 0;
    }

    v10[1] = v24;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "softMask", "%llu", v11, v12, v13, v14, v15, &v99) == 1)
  {
    v30 = *(a1 + 8);
    v33 = *(v30 + 40);
    v31 = v30 + 40;
    v32 = v33;
    if (!v33)
    {
      goto LABEL_24;
    }

    v34 = v31;
    do
    {
      v35 = *(v32 + 32);
      v22 = v35 >= v99;
      v36 = v35 < v99;
      if (v22)
      {
        v34 = v32;
      }

      v32 = *(v32 + 8 * v36);
    }

    while (v32);
    if (v34 != v31 && *(v34 + 32) <= v99)
    {
      v37 = *(v34 + 40);
      if (v37)
      {
      }
    }

    else
    {
LABEL_24:
      v37 = 0;
    }

    v10[2] = v37;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "style", "%llu", v25, v26, v27, v28, v29, &v99) == 1)
  {
    v43 = *(a1 + 8);
    v46 = *(v43 + 40);
    v44 = v43 + 40;
    v45 = v46;
    if (!v46)
    {
      goto LABEL_35;
    }

    v47 = v44;
    do
    {
      v48 = *(v45 + 32);
      v22 = v48 >= v99;
      v49 = v48 < v99;
      if (v22)
      {
        v47 = v45;
      }

      v45 = *(v45 + 8 * v49);
    }

    while (v45);
    if (v47 != v44 && *(v47 + 32) <= v99)
    {
      v50 = *(v47 + 40);
      if (v50)
      {
      }
    }

    else
    {
LABEL_35:
      v50 = 0;
    }

    v10[3] = v50;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "BG", "%llu", v38, v39, v40, v41, v42, &v99) == 1)
  {
    v56 = *(a1 + 8);
    v59 = *(v56 + 40);
    v57 = v56 + 40;
    v58 = v59;
    if (!v59)
    {
      goto LABEL_46;
    }

    v60 = v57;
    do
    {
      v61 = *(v58 + 32);
      v22 = v61 >= v99;
      v62 = v61 < v99;
      if (v22)
      {
        v60 = v58;
      }

      v58 = *(v58 + 8 * v62);
    }

    while (v58);
    if (v60 != v57 && *(v60 + 32) <= v99)
    {
      v63 = *(v60 + 40);
      if (v63)
      {
      }
    }

    else
    {
LABEL_46:
      v63 = 0;
    }

    v10[4] = v63;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "UCR", "%llu", v51, v52, v53, v54, v55, &v99) == 1)
  {
    v69 = *(a1 + 8);
    v72 = *(v69 + 40);
    v70 = v69 + 40;
    v71 = v72;
    if (!v72)
    {
      goto LABEL_57;
    }

    v73 = v70;
    do
    {
      v74 = *(v71 + 32);
      v22 = v74 >= v99;
      v75 = v74 < v99;
      if (v22)
      {
        v73 = v71;
      }

      v71 = *(v71 + 8 * v75);
    }

    while (v71);
    if (v73 != v70 && *(v73 + 32) <= v99)
    {
      v76 = *(v73 + 40);
      if (v76)
      {
      }
    }

    else
    {
LABEL_57:
      v76 = 0;
    }

    v10[5] = v76;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "flatness", "%lg", v64, v65, v66, v67, v68, &v98) == 1)
  {
    v10[6] = v98;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "alpha", "%lg", v77, v78, v79, v80, v81, &v98) == 1)
  {
    v10[7] = v98;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, "compositeOp");
  v82 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 != v82)
  {
    memcpy(__p, &off_1E6E33740, 0x1D0uLL);
    __key[1] = 0;
    v83 = (v82 + 56);
    if (*(v82 + 79) < 0)
    {
      v83 = *v83;
    }

    __key[0] = v83;
    v84 = bsearch_b(__key, __p, 0x1DuLL, 0x10uLL, &__block_literal_global_21379);
    if (v84)
    {
      *(v10 + 24) = v10[12] & 0xFFFFFFC0 | v84[2] & 0x3F;
    }
  }

  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "antialias", &v97))
  {
    if (v97)
    {
      v85 = 64;
    }

    else
    {
      v85 = 0;
    }

    *(v10 + 24) = v10[12] & 0xFFFFFFBF | v85;
  }

  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "alphaIsShape", &v97))
  {
    if (v97)
    {
      v86 = 128;
    }

    else
    {
      v86 = 0;
    }

    *(v10 + 24) = v10[12] & 0xFFFFFF7F | v86;
  }

  if (CG::DisplayListXMLHelper::parseColorRenderingIntentFromAttributes(a2, "intent", &v96))
  {
    *(v10 + 24) = v10[12] & 0xFFFFC0FF | ((v96 & 0x3F) << 8);
  }

  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "fillOverprint", &v97))
  {
    if (v97)
    {
      v87 = 0x4000;
    }

    else
    {
      v87 = 0;
    }

    *(v10 + 24) = v10[12] & 0xFFFFBFFF | v87;
  }

  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "strokeOverprint", &v97))
  {
    if (v97)
    {
      v93 = 0x8000;
    }

    else
    {
      v93 = 0;
    }

    *(v10 + 24) = v10[12] & 0xFFFF7FFF | v93;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "overprintMode", "%d", v88, v89, v90, v91, v92, &v95) == 1)
  {
    *(v10 + 25) = v95;
  }

  return 1;
}

uint64_t DisplayListXMLParserEntryStateFill::parseAttributes(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (lpsrc)
  {
  }

  else
  {
    v10 = 0;
  }

  v21 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "color", "%llu", a4, a5, a6, a7, a8, &v21) == 1)
  {
    v11 = *(a1 + 8);
    v14 = *(v11 + 40);
    v12 = v11 + 40;
    v13 = v14;
    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = v12;
    do
    {
      v16 = *(v13 + 32);
      v17 = v16 >= v21;
      v18 = v16 < v21;
      if (v17)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * v18);
    }

    while (v13);
    if (v15 != v12 && *(v15 + 32) <= v21)
    {
      v19 = *(v15 + 40);
      if (v19)
      {
      }
    }

    else
    {
LABEL_13:
      v19 = 0;
    }

    v10[1] = v19;
  }

  return 1;
}

uint64_t DisplayListXMLParserEntryStateStroke::parseAttributes(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = *MEMORY[0x1E69E9840];
  if (lpsrc)
  {
  }

  else
  {
    v10 = 0;
  }

  v55 = 0;
  v56 = 0;
  v54 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "color", "%llu", a4, a5, a6, a7, a8, &v56) == 1)
  {
    v16 = *(a1 + 8);
    v19 = *(v16 + 40);
    v17 = v16 + 40;
    v18 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = v17;
    do
    {
      v21 = *(v18 + 32);
      v22 = v21 >= v56;
      v23 = v21 < v56;
      if (v22)
      {
        v20 = v18;
      }

      v18 = *(v18 + 8 * v23);
    }

    while (v18);
    if (v20 != v17 && *(v20 + 32) <= v56)
    {
      v24 = *(v20 + 40);
      if (v24)
      {
      }
    }

    else
    {
LABEL_13:
      v24 = 0;
    }

    v10[1] = v24;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "width", "%lg", v11, v12, v13, v14, v15, &v55) == 1)
  {
    v10[2] = v55;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "thresh", "%lg", v25, v26, v27, v28, v29, &v55) == 1)
  {
    v10[3] = v55;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "dash", "%llu", v30, v31, v32, v33, v34, &v56) == 1)
  {
    v35 = *(a1 + 8);
    v38 = *(v35 + 40);
    v36 = v35 + 40;
    v37 = v38;
    if (!v38)
    {
      goto LABEL_28;
    }

    v39 = v36;
    do
    {
      v40 = *(v37 + 32);
      v22 = v40 >= v56;
      v41 = v40 < v56;
      if (v22)
      {
        v39 = v37;
      }

      v37 = *(v37 + 8 * v41);
    }

    while (v37);
    if (v39 != v36 && *(v39 + 32) <= v56)
    {
      v42 = *(v39 + 40);
      if (v42)
      {
      }
    }

    else
    {
LABEL_28:
      v42 = 0;
    }

    v10[5] = v42;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, "cap");
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }

  if (a2 + 8 != v43)
  {
    __p = "butt";
    v58 = 0;
    v59 = "round";
    v60 = 1;
    v61 = "square";
    v62 = 2;
    v44 = (v43 + 56);
    if (*(v43 + 79) < 0)
    {
      v44 = *v44;
    }

    v45 = 0;
    v46 = &v58;
    v47 = 1;
    while (strcmp(v44, *(v46 - 1)))
    {
      v47 = v45 < 2;
      v46 += 2;
      if (++v45 == 3)
      {
        goto LABEL_41;
      }
    }

    if (v47)
    {
      *(v10 + 48) = *v46;
    }
  }

LABEL_41:
  std::string::basic_string[abi:fe200100]<0>(&__p, "join");
  v48 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }

  if (a2 + 8 != v48)
  {
    __p = "miter";
    v58 = 0;
    v59 = "round";
    v60 = 1;
    v61 = "bevel";
    v62 = 2;
    v49 = (v48 + 56);
    if (*(v48 + 79) < 0)
    {
      v49 = *v49;
    }

    v50 = 0;
    v51 = &v58;
    v52 = 1;
    while (strcmp(v49, *(v51 - 1)))
    {
      v52 = v50 < 2;
      v51 += 2;
      if (++v50 == 3)
      {
        goto LABEL_52;
      }
    }

    if (v52)
    {
      *(v10 + 49) = *v51;
    }
  }

LABEL_52:
  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "adjust", &v54))
  {
    *(v10 + 50) = v54;
  }

  return 1;
}

uint64_t DisplayListXMLParserEntryStatePattern::parseAttributes(int a1, uint64_t a2, void *lpsrc)
{
  if (lpsrc)
  {
  }

  else
  {
    v4 = 0;
  }

  v17 = 0;
  if (CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "baseCTM", v19))
  {
    v10 = v19[1];
    *(v4 + 8) = v19[0];
    *(v4 + 24) = v10;
    *(v4 + 40) = v19[2];
  }

  if (CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "phase", &v18, v5, v6, v7, v8, v9))
  {
    *(v4 + 56) = v18;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "smoothness", "%lg", v11, v12, v13, v14, v15, &v17))
  {
    *(v4 + 9) = v17;
  }

  return 1;
}

BOOL CG::DisplayListEntryStatePattern::_equal_to(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v4 = std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8));
  if (!v4 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) != 0 && *(a1 + 48) == *(a2 + 48))
  {
    v6 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
    if (v6 && *(a1 + 72) == *(a2 + 72))
    {
      return v4;
    }

    return 0;
  }

  return v5;
}

BOOL CG::DisplayListEntryStateStroke::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 48) == *(a2 + 48);
  if (!v6 || *(a1 + 50) != *(a2 + 50))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (v7)
  {
    if (!v8 || !(*(*v7 + 24))(v7, v8, a3))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v10 || !(*(*v9 + 24))(v9, v10, a3))
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(*a1 - 8) + 8);
  v12 = *(*(*a2 - 8) + 8);

  return std::type_info::operator==[abi:fe200100](v11, v12);
}

BOOL CG::DisplayListEntryStateFill::_equal_to(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = *a1;
  v7 = *a2;
  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a2[1];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v9 || !(*(*v8 + 24))(v8, v9, a3))
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2;
LABEL_9:
  v11 = *(*(v6 - 8) + 8);
  v12 = *(*(v7 - 8) + 8);

  return std::type_info::operator==[abi:fe200100](v11, v12);
}

BOOL CG::DisplayListEntryStateDrawing::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v6 = *(a1 + 96);
  v7 = *(a2 + 96);
  if (!CGRectEqualToRect(*(a1 + 64), *(a2 + 64)) || ((v6 ^ v7) & 0x3F) != 0 || ((v6 ^ v7) & 0x40) != 0 || ((v7 & 0x80) == 0) == (v6 & 0x80) >> 7 || ((v6 ^ v7) & 0x3F00) != 0 || ((v6 ^ v7) & 0x4000) != 0 || ((v6 ^ v7) & 0x8000) != 0 || *(a1 + 100) != *(a2 + 100) || *(a1 + 104) != *(a2 + 104) || *(a1 + 108) != *(a2 + 108))
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10 || !(*(*v9 + 24))(v9, v10, a3))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  if (v11)
  {
    if (!v12 || !(*(*v11 + 24))(v11, v12, a3))
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (!v14 || !(*(*v13 + 24))(v13, v14, a3))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  if (v15)
  {
    if (!v16 || !(*(*v15 + 24))(v15, v16, a3))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 40);
  v18 = *(a2 + 40);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (!v18 || *(a2 + 24) && !(*(*v17 + 24))(v17))
  {
    return 0;
  }

LABEL_42:
  v19 = *(a1 + 112);
  v20 = *(a2 + 112);
  if (v19 | v20 && (!v19 || !v20 || !CFEqual(v19, v20)))
  {
    return 0;
  }

  v21 = *(*(*a1 - 8) + 8);
  v22 = *(*(*a2 - 8) + 8);

  return std::type_info::operator==[abi:fe200100](v21, v22);
}

void *std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
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

void *std::__list_imp<unsigned long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[8]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

BOOL DisplayListXMLParserResourceClip::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    if (CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "bbox", a1 + 24))
    {
      return 1;
    }

    else
    {
      CGPostError("%s: Failed to parse attribute bbox", v11, v12, v13, v14, v15, v16, v17, "virtual BOOL DisplayListXMLParserResourceClip::parseAttributes(const DLXMLAttributes &)");
      return 0;
    }
  }

  return result;
}

uint64_t DisplayListXMLParserResourceColor::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  components[5] = *MEMORY[0x1E69E9840];
  if (!DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v15 = *(a1 + 8);
  v67 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "colorSpace", "%llu", v10, v11, v12, v13, v14, &v67) != 1)
  {
    return 0;
  }

  v17 = *(a1 + 16);
  v20 = *(v17 + 40);
  v18 = v17 + 40;
  v19 = v20;
  if (!v20)
  {
    return 0;
  }

  v21 = v18;
  do
  {
    v22 = *(v19 + 32);
    v23 = v22 >= v67;
    v24 = v22 < v67;
    if (v23)
    {
      v21 = v19;
    }

    v19 = *(v19 + 8 * v24);
  }

  while (v19);
  if (v21 == v18)
  {
    return 0;
  }

  if (*(v21 + 32) > v67)
  {
    return 0;
  }

  v25 = *(v21 + 40);
  if (!v25)
  {
    return 0;
  }

  if (!v26)
  {
    CGPostError("%s: colorSpace resource is of an unexpected class", v27, v28, v29, v30, v31, v32, v33, "virtual BOOL DisplayListXMLParserResourceColor::parseAttributes(const DLXMLAttributes &)");
    return 0;
  }

  *(v16 + 3) = v26;
  v34 = v26[2];
  if (!v34)
  {
    CGPostError("%s: Color resource has NULL CGColorSpace", v27, v28, v29, v30, v31, v32, v33, "virtual BOOL DisplayListXMLParserResourceColor::parseAttributes(const DLXMLAttributes &)");
    return 0;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "pattern", "%llu", v29, v30, v31, v32, v33, &v67) == 1)
  {
    v35 = *(a1 + 16);
    v38 = *(v35 + 40);
    v36 = v35 + 40;
    v37 = v38;
    if (!v38)
    {
      return 0;
    }

    v39 = v36;
    do
    {
      v40 = *(v37 + 32);
      v23 = v40 >= v67;
      v41 = v40 < v67;
      if (v23)
      {
        v39 = v37;
      }

      v37 = *(v37 + 8 * v41);
    }

    while (v37);
    if (v39 == v36)
    {
      return 0;
    }

    if (*(v39 + 32) > v67)
    {
      return 0;
    }

    v42 = *(v39 + 40);
    if (!v42)
    {
      return 0;
    }
  }

  if (CG::DisplayListXMLHelper::parseColorComponentsFromAttributes(a2, components) != *(*(v34 + 3) + 48) + 1)
  {
    CGPostError("%s: Color resource has wrong number of components", v43, v44, v45, v46, v47, v48, v49, "virtual BOOL DisplayListXMLParserResourceColor::parseAttributes(const DLXMLAttributes &)");
    return 0;
  }

  v50 = *(v16 + 4);
  if (v50)
  {
    v51 = *(v50 + 16);
    if (!v51)
    {
      CGPostError("%s: Pattern resource has NULL CGPattern", v43, v44, v45, v46, v47, v48, v49, "virtual BOOL DisplayListXMLParserResourceColor::parseAttributes(const DLXMLAttributes &)");
      return v51;
    }

    if (*(v51 + 185) == 1)
    {
      Pattern = v34;
    }

    else
    {
      BaseColorSpace = CGColorSpaceGetBaseColorSpace(v34);
      if (!BaseColorSpace)
      {
        goto LABEL_45;
      }

      Pattern = CGColorSpaceCreatePattern(BaseColorSpace);
      if (!Pattern)
      {
        goto LABEL_45;
      }
    }

    v54 = CGColorCreateWithPattern(Pattern, v51, components);
  }

  else
  {
    v54 = CGColorCreate(v34, components);
  }

  v63 = v54;
  if (v54)
  {
    CG::DisplayListResourceColor::setColor(v16, v54);
    CFRelease(v63);
    return 1;
  }

LABEL_45:
  CGPostError("%s: Failed to create color from components", v55, v56, v57, v58, v59, v60, v61, "virtual BOOL DisplayListXMLParserResourceColor::parseAttributes(const DLXMLAttributes &)");
  v64 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  if (!v64)
  {
    return 0;
  }

  v65 = v64;
  *v68 = 0u;
  v69 = 0u;
  v66 = CGColorCreate(v64, v68);
  v51 = v66 != 0;
  CG::DisplayListResourceColor::setColor(v16, v66);
  if (v66)
  {
    CFRelease(v66);
  }

  CFRelease(v65);
  return v51;
}

BOOL DisplayListXMLParserResourceColorSpace::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = *MEMORY[0x1E69E9840];
  result = DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
  }

  else
  {
    v12 = 0;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, "csType");
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  if (a2 + 8 == v20)
  {
    goto LABEL_20;
  }

  __p = "none";
  v38 = -1;
  v39 = "deviceGray";
  v41 = "deviceRGB";
  v42 = 1;
  v43 = "deviceCMYK";
  v44 = 2;
  v45 = "calibratedGray";
  v46 = 3;
  v47 = "calibratedRGB";
  v48 = 4;
  v49 = "LAB";
  v50 = 5;
  v51 = "ICCBased";
  v52 = 6;
  v53 = "FlexGTCProxy";
  v54 = 11;
  v55 = "indexed";
  v56 = 7;
  v57 = "deviceN";
  v58 = 8;
  v59 = "pattern";
  v60 = 9;
  v40 = 0;
  v61 = "profileSets";
  v62 = 10;
  v21 = (v20 + 56);
  if (*(v20 + 79) < 0)
  {
    v21 = *v21;
  }

  v22 = 0;
  v23 = &v38;
  v24 = 1;
  while (strcmp(v21, *(v23 - 1)))
  {
    v24 = v22 < 0xC;
    v23 += 4;
    if (++v22 == 13)
    {
      goto LABEL_20;
    }
  }

  if (!v24)
  {
LABEL_20:
    v36 = "virtual BOOL DisplayListXMLParserResourceColorSpace::parseAttributes(const DLXMLAttributes &)";
    v28 = "%s: Failed to parse type attribute";
LABEL_21:
    CGPostError(v28, v13, v14, v15, v16, v17, v18, v19, v36);
    return 0;
  }

  if (*v23 == 9)
  {
    CGColorSpaceFromAttributeName = DisplayListXMLParserResourceColorSpace::createCGColorSpaceFromAttributeName(a2, "patternBaseName");
    v26 = CGColorSpaceFromAttributeName;
    if (!CGColorSpaceFromAttributeName)
    {
      Pattern = DisplayListXMLParserResourceColorSpace::createCGColorSpaceFromAttributeName(a2, "name");
      if (!Pattern)
      {
LABEL_33:
        v28 = "Unhandled colorspace type";
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    Pattern = CGColorSpaceCreatePattern(CGColorSpaceFromAttributeName);
    CFRelease(v26);
    goto LABEL_18;
  }

  Pattern = DisplayListXMLParserResourceColorSpace::createCGColorSpaceFromAttributeName(a2, "name");
  if (!Pattern)
  {
    v13 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "profile");
    if (!v13)
    {
      goto LABEL_33;
    }

    v29 = *MEMORY[0x1E695E480];
    v30 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v13, 0x8000100u);
    if (!v30)
    {
      goto LABEL_33;
    }

    v31 = CFURLCreateCopyAppendingPathComponent(v29, *(*(a1 + 16) + 24), v30, 0);
    v32 = v31;
    if (v31)
    {
      v33 = CGDataProviderCreateWithURL(v31);
      if (v33)
      {
        v34 = v33;
        Pattern = CGColorSpaceCreateWithICCData(v33);
        CGDataProviderRelease(v34);
      }

      else
      {
        Pattern = 0;
      }

      CFRelease(v32);
    }

    else
    {
      Pattern = 0;
    }

    CFRelease(v30);
LABEL_18:
    if (!Pattern)
    {
      goto LABEL_33;
    }
  }

LABEL_30:
  v35 = *(v12 + 2);
  if (v35 != Pattern)
  {
    CGColorSpaceRelease(v35);
    CFRetain(Pattern);
    *(v12 + 2) = Pattern;
  }

  CFRelease(Pattern);
  return 1;
}

uint64_t DisplayListXMLParserResourceDash::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v24 = 0;
    v25 = 0;
    v16 = "phase";
    if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "phase", "%lg", v11, v12, v13, v14, v15, &v25) == 1 && (*(a1 + 24) = v25, v16 = "count", result = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "count", "%zu", v19, v20, v21, v22, v23, &v24), result == 1))
    {
      *(a1 + 32) = v24;
    }

    else
    {
      CGPostError("Failed to parse %s attribute", v17, v18, v19, v20, v21, v22, v23, v16);
      return 0;
    }
  }

  return result;
}

uint64_t DisplayListXMLParserResourceFont::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
  }

  else
  {
    v11 = 0;
  }

  v12 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "fontURL");
  if (v12)
  {
    v13 = *MEMORY[0x1E695E480];
    v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v12, 0x8000100u);
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    v16 = CFURLCreateWithString(v13, v14, 0);
    CFRelease(v15);
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    v17 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "fontResourceURL");
    if (!v17)
    {
      CGPostError("Failed to parse fontURL or fontResourceURL attributes", v18, v19, v20, v21, v22, v23, v24, v34);
      return 0;
    }

    v25 = *MEMORY[0x1E695E480];
    v26 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v17, 0x8000100u);
    if (!v26)
    {
      return 0;
    }

    v16 = CFURLCreateCopyAppendingPathComponent(v25, *(*(a1 + 16) + 24), v26, 0);
    if (!v16)
    {
      return 0;
    }
  }

  FontsWithURL = CGFontCreateFontsWithURL(v16);
  if (FontsWithURL)
  {
    v28 = FontsWithURL;
    if (CFArrayGetCount(FontsWithURL) < 1)
    {
      goto LABEL_19;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v28, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_19;
    }

    v30 = ValueAtIndex;
    v31 = CFGetTypeID(ValueAtIndex);
    if (_block_invoke_once_3400 != -1)
    {
      v35 = v31;
      dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
      v31 = v35;
    }

    if (v31 == CGFontGetTypeID_font_type_id)
    {
      CG::DisplayListResourceFont::setFont(v11, v30);
      v32 = 1;
    }

    else
    {
LABEL_19:
      v32 = 0;
    }

    CFRelease(v28);
  }

  else
  {
    v32 = 0;
  }

  CFRelease(v16);
  return v32;
}

uint64_t DisplayListXMLParserResourceImage::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = *MEMORY[0x1E69E9840];
  if (!DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v15 = *(a1 + 8);
  if (v15)
  {
  }

  else
  {
    v16 = 0;
  }

  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v17 = "width";
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "width", "%zu", v10, v11, v12, v13, v14, &v90) != 1 || (*(v16 + 3) = v90, v17 = "height", CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "height", "%zu", v20, v21, v22, v23, v24, &v90) != 1) || (*(v16 + 4) = v90, v17 = "renderingIntent", !CG::DisplayListXMLHelper::parseColorRenderingIntentFromAttributes(a2, "renderingIntent", &v89)) || (v16[48] = v16[48] & 0xF0 | v89 & 0xF, v17 = "interpolate", (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "interpolate", &v91) & 1) == 0) || (!v91 ? (v25 = 0) : (v25 = 16), (v16[48] = v16[48] & 0xEF | v25, v17 = "isMask", (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "isMask", &v91) & 1) == 0) || (!v91 ? (v26 = 0) : (v26 = 32), v16[48] = v16[48] & 0xDF | v26, v17 = "isTransparent", (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "isTransparent", &v91) & 1) == 0)))
  {
    LOBYTE(decode) = v17;
LABEL_35:
    v49 = "Failed to parse %s attribute";
    goto LABEL_36;
  }

  if (v91)
  {
    v27 = 64;
  }

  else
  {
    v27 = 0;
  }

  v16[48] = v16[48] & 0xBF | v27;
  v28 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "imageName");
  if (!v28)
  {
    decode = "imageName";
    goto LABEL_35;
  }

  v29 = v28;
  if ((v16[48] & 0x20) != 0)
  {
    v48 = 0;
  }

  else
  {
    if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "colorSpace", "%llu", v20, v21, v22, v23, v24, &v92) != 1)
    {
      v49 = "Failed to parse colorSpace attribute";
      goto LABEL_36;
    }

    v30 = *(a1 + 16);
    v31 = v92;
    v34 = *(v30 + 40);
    v32 = v30 + 40;
    v33 = v34;
    if (!v34)
    {
      goto LABEL_54;
    }

    v35 = v32;
    do
    {
      v36 = *(v33 + 32);
      v37 = v36 >= v92;
      v38 = v36 < v92;
      if (v37)
      {
        v35 = v33;
      }

      v33 = *(v33 + 8 * v38);
    }

    while (v33);
    if (v35 == v32 || *(v35 + 32) > v92 || (v39 = *(v35 + 40)) == 0)
    {
LABEL_54:
      CGPostError("Failed to get resourceID: %llu for colorSpace attribute", v18, v19, v20, v21, v22, v23, v24, v92);
      return 0;
    }

    if (!v40)
    {
      CGPostError("colorSpace resourceID: %llu is of an unexpected class", v41, v42, v43, v44, v45, v46, v47, v31);
      return 0;
    }

    v48 = v40;
    *(v16 + 5) = v40;
  }

  v52 = *MEMORY[0x1E695E480];
  v53 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v29, 0x8000100u);
  if (!v53)
  {
    return 0;
  }

  v54 = v53;
  v55 = CFURLCreateCopyAppendingPathComponent(v52, *(*(a1 + 16) + 24), v53, 0);
  if (!v55)
  {
    v50 = 0;
LABEL_68:
    CFRelease(v54);
    return v50;
  }

  v56 = v55;
  v57 = CFURLCopyPathExtension(v55);
  if (!v57 || CFStringCompare(v57, @"br2", 0))
  {
    if (DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::predicate != -1)
    {
      dispatch_once(&DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::predicate, &__block_literal_global_101);
    }

    v58 = DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::f(v56, 0);
    if (!v58)
    {
      goto LABEL_66;
    }

    v59 = v58;
    if (DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::predicate != -1)
    {
      dispatch_once(&DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::predicate, &__block_literal_global_104);
    }

    v60 = DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::f(v59, 0, 0);
    goto LABEL_51;
  }

  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  bitmapInfo = 0;
  v62 = strstr(v29, "_w=");
  if (!v62 || sscanf(v62, "_w=%ld,h=%ld,rb=%ld,cs=%ld,bpc=%ld,bmi=%x", &v88, &v87, &v85, &v84, &v86, &bitmapInfo) != 6)
  {
    CGPostError("Improperly formed BufferReader name: %s", v18, v19, v20, v21, v22, v23, v24, v29);
    goto LABEL_63;
  }

  if ((v16[48] & 0x20) != 0)
  {
    v63 = 0;
    v65 = v86;
LABEL_77:
    v67 = CGDataProviderCreateWithURL(v56);
    if (v67)
    {
      v59 = v67;
      v68 = v16[48];
      if ((v68 & 0x20) == 0)
      {
        v61 = CGImageCreate(v88, v87, v86, v65, v85, v63, bitmapInfo, v67, 0, (v68 & 0x10) != 0, ((v68 << 28) >> 28));
        CGImageCopyHeadroomFromOriginal(v61, *(v16 + 2), v69, v70, v71, v72, v73, v74);
        goto LABEL_52;
      }

      v60 = mask_create(v88, v87, v86, v65, v85, v67, 0, (v68 >> 4) & 1, 4);
LABEL_51:
      v61 = v60;
LABEL_52:
      CFRelease(v59);
      goto LABEL_64;
    }

    CFURLGetFileSystemRepresentation(v56, 1u, buffer, 1024);
    CGPostError("%s: Failed to create CGDataProvider with URL: %s", v75, v76, v77, v78, v79, v80, v81, "virtual BOOL DisplayListXMLParserResourceImage::parseAttributes(const DLXMLAttributes &)");
LABEL_63:
    v61 = 0;
LABEL_64:
    if (v61)
    {
      CG::DisplayListResourceColor::setColor(v16, v61);
      CFRelease(v61);
      v50 = 1;
LABEL_67:
      CFRelease(v56);
      goto LABEL_68;
    }

LABEL_66:
    v50 = 0;
    goto LABEL_67;
  }

  if (v48)
  {
    v63 = *(v48 + 2);
    if (v63)
    {
      v64 = *(*(v63 + 3) + 48);
    }

    else
    {
      v64 = 0;
    }

    if ((bitmapInfo & 0x1F) != 0)
    {
      v66 = v86;
    }

    else
    {
      v66 = 0;
    }

    v65 = v66 + v86 * v64;
    goto LABEL_77;
  }

  v49 = "colorSpaceResource == NULL";
LABEL_36:
  CGPostError(v49, v18, v19, v20, v21, v22, v23, v24, decode);
  return 0;
}

BOOL DisplayListXMLParserResource::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  v16 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "flags", "0x%X", a4, a5, a6, a7, a8, &v18);
  if (v16 == 1)
  {
    *(*(a1 + 8) + 8) = v18 & 0xFFFFFF | (*(*(a1 + 8) + 11) << 24);
  }

  else
  {
    CGPostError("%s: Failed to parse attribute %s", v9, v10, v11, v12, v13, v14, v15, "virtual BOOL DisplayListXMLParserResource::parseAttributes(const DLXMLAttributes &)");
  }

  return v16 == 1;
}

uint64_t DisplayListXMLParserResourceGradient::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v16 = *(a1 + 8);
    if (v16)
    {
    }

    else
    {
      v17 = 0;
    }

    v52 = 0;
    if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "colorSpace", "%llu", v11, v12, v13, v14, v15, &v52) == 1)
    {
      v25 = *(a1 + 16);
      v26 = v52;
      v29 = *(v25 + 40);
      v27 = v25 + 40;
      v28 = v29;
      if (v29)
      {
        v30 = v27;
        do
        {
          v31 = *(v28 + 32);
          v32 = v31 >= v52;
          v33 = v31 < v52;
          if (v32)
          {
            v30 = v28;
          }

          v28 = *(v28 + 8 * v33);
        }

        while (v28);
        if (v30 != v27 && *(v30 + 32) <= v52)
        {
          v34 = *(v30 + 40);
          if (v34)
          {
            if (v35)
            {
              v17[3] = v35;
              result = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "count", "%zu", v38, v39, v40, v41, v42, a1 + 24);
              if (result == 1)
              {
                return result;
              }

              CGPostError("Failed to parse %s attribute", v43, v44, v45, v46, v47, v48, v49, "count");
            }

            else
            {
              CGPostError("colorSpace resourceID: %llu is of an unexpected class", v36, v37, v38, v39, v40, v41, v42, v26);
            }

            return 0;
          }
        }
      }

      v51 = v52;
      v50 = "Failed to get resourceID: %llu for colorSpace attribute";
    }

    else
    {
      v50 = "Failed to parse colorSpace attribute";
    }

    CGPostError(v50, v18, v19, v20, v21, v22, v23, v24, v51);
    return 0;
  }

  return result;
}

BOOL DisplayListXMLParserResourcePattern::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x1E69E9840];
  result = DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
  }

  else
  {
    v12 = 0;
  }

  v13 = "patternType";
  std::string::basic_string[abi:fe200100]<0>(&__p, "patternType");
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(__p.c) < 0)
  {
    operator delete(*&__p.a);
  }

  if (a2 + 8 == v21)
  {
    goto LABEL_26;
  }

  v22 = (v21 + 56);
  if (*(v21 + 79) < 0)
  {
    v22 = *v22;
  }

  v14 = "tiling";
  v23 = 1;
  while (1)
  {
    v24 = v23;
    if (!strcmp(v22, v14))
    {
      break;
    }

    v23 = 0;
    v14 = "shading";
    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v13 = "patternBounds";
  if ((CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "patternBounds", &v52) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (!CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "patternMatrix", &v51))
  {
    v30 = "Failed to parse patternMatrix attribute";
    goto LABEL_28;
  }

  v13 = "step";
  if (!CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "step", v50, v16, v17, v18, v19, v20))
  {
LABEL_26:
    LOBYTE(v47) = v13;
LABEL_27:
    v30 = "Failed to parse %s attribute";
LABEL_28:
    CGPostError(v30, v14, v15, v16, v17, v18, v19, v20, v47);
    return 0;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, "tiling");
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(__p.c) < 0)
  {
    operator delete(*&__p.a);
  }

  if (a2 + 8 == v25)
  {
    goto LABEL_41;
  }

  *&__p.a = "noDistortion";
  LODWORD(__p.b) = 0;
  *&__p.c = "constSpacingMinDistortion";
  LODWORD(__p.d) = 1;
  *&__p.tx = "constSpacing";
  LODWORD(__p.ty) = 2;
  v26 = (v25 + 56);
  if (*(v25 + 79) < 0)
  {
    v26 = *v26;
  }

  v27 = 0;
  p_b = &__p.b;
  v29 = 1;
  while (strcmp(v26, *(p_b - 1)))
  {
    v29 = v27 < 2;
    p_b += 2;
    if (++v27 == 3)
    {
      goto LABEL_41;
    }
  }

  if (!v29)
  {
LABEL_41:
    v30 = "Failed to parse tiling attribute";
    goto LABEL_28;
  }

  v31 = *p_b;
  isColored = 0;
  if ((CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "isColored", &isColored) & 1) == 0)
  {
    v47 = "isColored";
    goto LABEL_27;
  }

  v14 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "drawCell");
  if (!v14)
  {
    v30 = "Failed to parse drawCell attribute";
    goto LABEL_28;
  }

  v32 = *MEMORY[0x1E695E480];
  v33 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v14, 0x8000100u);
  if (!v33)
  {
    goto LABEL_45;
  }

  v34 = *(*(a1 + 16) + 24);
  if (!v34 || (v35 = CFURLCreateCopyAppendingPathComponent(v32, v34, v33, 1u), (v43 = v35) == 0))
  {
    CFRelease(v33);
    goto LABEL_45;
  }

  v44 = CGDisplayListCreateWithURL(v35, v36, v37, v38, v39, v40, v41, v42);
  CFRelease(v43);
  CFRelease(v33);
  if (!v44)
  {
LABEL_45:
    v30 = "Failed to read pattern cell display list";
    goto LABEL_28;
  }

  callbacks = *byte_1EF239E88;
  __p = v51;
  v45 = CGPatternCreate(v44, v52, &__p, v50[0], v50[1], v31, isColored, &callbacks);
  if (v45)
  {
    v46 = v45;
    CG::DisplayListResourcePattern::setPattern(v12, v45);
    CFRelease(v46);
  }

  return 1;
}

BOOL DisplayListXMLParserResourceStyle::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = *MEMORY[0x1E69E9840];
  result = DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
  }

  else
  {
    v12 = 0;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, "styleType");
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  if (SBYTE7(v140) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = a2 + 8;
  if (a2 + 8 == v20)
  {
    goto LABEL_27;
  }

  __p[0] = "shadow";
  LODWORD(__p[1]) = 1;
  *&v140 = "focusRing";
  DWORD2(v140) = 2;
  *v141 = "gaussianBlur";
  *&v141[8] = 3;
  *&v141[16] = "colorMatrix";
  *&v141[24] = 4;
  *&v141[32] = "unknown";
  *&v141[40] = 0;
  v22 = (v20 + 56);
  if (*(v20 + 79) < 0)
  {
    v22 = *v22;
  }

  v23 = 0;
  v24 = &__p[1];
  v25 = 1;
  while (strcmp(v22, *(v24 - 1)))
  {
    v25 = v23 < 4;
    v24 += 2;
    if (++v23 == 5)
    {
      goto LABEL_27;
    }
  }

  if (!v25)
  {
LABEL_27:
    CGPostError("Failed to parse attribute: statusType", v13, v14, v15, v16, v17, v18, v19, v135);
    return 0;
  }

  v26 = *v24;
  result = 1;
  if (*v24 > 2)
  {
    if (v26 == 3)
    {
      __p[0] = 0;
      if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "radius", "%lg", v15, v16, v17, v18, v19, __p))
      {
        v97 = *__p;
      }

      else
      {
        v97 = 0.0;
      }

      style_with_type = create_style_with_type(3, v90, v91, v92, v93, v94, v95, v96);
      style_with_type[5] = fmax(fmin(v97, 1.79769313e308), 0.0);
      CG::DisplayListResourcePattern::setPattern(v12, style_with_type);
      CFRelease(style_with_type);
    }

    else
    {
      if (v26 != 4)
      {
        return result;
      }

      *&v148 = 0;
      LODWORD(__p[0]) = 0;
      v34 = CG::DisplayListXMLHelper::colorMatrixIndexKey::keys;
      for (i = 1; i != 21; ++i)
      {
        v36 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, *v34, "%lg", v15, v16, v17, v18, v19, &v148);
        v39 = *&v148;
        if (!v36)
        {
          v39 = 0.0;
        }

        *&__p[i] = v39;
        ++v34;
      }

      v40 = create_style_with_type(4, v37, v38, v15, v16, v17, v18, v19);
      v41 = v145;
      *(v40 + 144) = v144;
      *(v40 + 160) = v41;
      *(v40 + 176) = v146;
      *(v40 + 192) = v147;
      v42 = *&v141[32];
      *(v40 + 80) = *&v141[16];
      *(v40 + 96) = v42;
      v43 = v143;
      *(v40 + 112) = v142;
      *(v40 + 128) = v43;
      v44 = v140;
      *(v40 + 32) = *__p;
      *(v40 + 48) = v44;
      *(v40 + 64) = *v141;
      CG::DisplayListResourcePattern::setPattern(v12, v40);
      CFRelease(v40);
    }

    return 1;
  }

  if (v26 == 1)
  {
    *&v148 = 0;
    LODWORD(__p[0]) = 0;
    v45 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "elevation", "%lg", v15, v16, v17, v18, v19, &v148);
    v51 = *&v148;
    if (!v45)
    {
      v51 = 45.0;
    }

    __p[1] = *&v51;
    v52 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "azimuth", "%lg", v46, v47, v48, v49, v50, &v148);
    v58 = *&v148;
    if (!v52)
    {
      v58 = 135.0;
    }

    *&v140 = v58;
    v59 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "ambient", "%lg", v53, v54, v55, v56, v57, &v148);
    v65 = *&v148;
    if (!v59)
    {
      v65 = 0.666666667;
    }

    *(&v140 + 1) = v65;
    v66 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "height", "%lg", v60, v61, v62, v63, v64, &v148);
    v72 = *&v148;
    if (!v66)
    {
      v72 = 3.0;
    }

    *v141 = v72;
    v73 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "radius", "%lg", v67, v68, v69, v70, v71, &v148);
    v79 = *&v148;
    if (!v73)
    {
      v79 = 0.0;
    }

    *&v141[8] = v79;
    v80 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "saturation", "%lg", v74, v75, v76, v77, v78, &v148);
    v87 = *&v148;
    if (!v80)
    {
      v87 = 1.0;
    }

    *&v141[16] = v87;
    ShadowWithColor = CGStyleCreateShadowWithColor(__p, 0, v81, v82, v83, v84, v85, v86);
    if (ShadowWithColor)
    {
      v89 = ShadowWithColor;
      CG::DisplayListResourcePattern::setPattern(v12, ShadowWithColor);
      CFRelease(v89);
    }

    return 1;
  }

  if (v26 == 2)
  {
    v137 = 0.0;
    v136 = 0;
    LODWORD(__p[0]) = 0;
    std::string::basic_string[abi:fe200100]<0>(&v148, "tint");
    v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &v148);
    if (SBYTE7(v149) < 0)
    {
      operator delete(v148);
    }

    if (v21 == v27)
    {
LABEL_26:
      v33 = 0;
    }

    else
    {
      LODWORD(v148) = 0;
      v138 = 1;
      v28 = (v27 + 56);
      if (*(v27 + 79) < 0)
      {
        v28 = *v28;
      }

      v29 = &v148;
      v30 = "blue";
      v31 = 1;
      while (1)
      {
        v32 = v31;
        if (!strcmp(v28, v30))
        {
          break;
        }

        v31 = 0;
        v29 = &v138;
        v30 = "graphite";
        if ((v32 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v33 = *v29;
    }

    HIDWORD(__p[0]) = v33;
    std::string::basic_string[abi:fe200100]<0>(&v148, "ordering");
    v104 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &v148);
    if (SBYTE7(v149) < 0)
    {
      operator delete(v148);
    }

    if (v21 == v104)
    {
LABEL_63:
      v109 = 0;
    }

    else
    {
      *&v148 = "none";
      *&v149 = "above";
      DWORD2(v148) = 0;
      DWORD2(v149) = 2;
      v150 = "below";
      v151 = 1;
      v105 = (v104 + 56);
      if (*(v104 + 79) < 0)
      {
        v105 = *v105;
      }

      v106 = 0;
      v107 = 1;
      v108 = &v148;
      while (strcmp(v105, *v108))
      {
        v107 = v106 < 2;
        v108 += 2;
        if (++v106 == 3)
        {
          goto LABEL_63;
        }
      }

      v109 = *(&v148 + 4 * v106 + 2);
      if (!v107)
      {
        v109 = 0;
      }
    }

    LODWORD(__p[1]) = v109;
    v110 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "alpha", "%lg", v99, v100, v101, v102, v103, &v137);
    v116 = v137;
    if (!v110)
    {
      v116 = 0.8;
    }

    *&v140 = v116;
    v117 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "radius", "%lg", v111, v112, v113, v114, v115, &v137);
    v123 = v137;
    if (!v117)
    {
      v123 = 2.0;
    }

    *(&v140 + 1) = v123;
    v124 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "threshold", "%lg", v118, v119, v120, v121, v122, &v137);
    v125 = v137;
    if (!v124)
    {
      v125 = 0.5;
    }

    *v141 = v125;
    if (CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "bounds", &v148))
    {
      *&v141[8] = v148;
      *&v141[24] = v149;
    }

    else
    {
      memset(&v141[8], 0, 32);
    }

    v131 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "accumulate", "%d", v126, v127, v128, v129, v130, &v136);
    v132 = v136;
    if (!v131)
    {
      v132 = 0;
    }

    *&v141[40] = v132;
    FocusRing = CGStyleCreateFocusRing(__p);
    if (FocusRing)
    {
      v134 = FocusRing;
      CG::DisplayListResourcePattern::setPattern(v12, FocusRing);
      CFRelease(v134);
    }

    return 1;
  }

  return result;
}

BOOL DisplayListXMLParserResourceSoftMask::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
  }

  else
  {
    v11 = 0;
  }

  v82 = 0;
  v12 = "bbox";
  if ((CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "bbox", v84) & 1) == 0 || (v12 = "matrix", !CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "matrix", v83)))
  {
    LOBYTE(v78) = v12;
LABEL_20:
    CGPostError("Failed to parse %s attribute", v13, v14, v15, v16, v17, v18, v19, v78);
    return 0;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "bg", "%llu", v15, v16, v17, v18, v19, &v82) == 1)
  {
    v27 = *(a1 + 16);
    v30 = *(v27 + 40);
    v28 = v27 + 40;
    v29 = v30;
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v28;
    do
    {
      v32 = *(v29 + 32);
      v33 = v32 >= v82;
      v34 = v32 < v82;
      if (v33)
      {
        v31 = v29;
      }

      v29 = *(v29 + 8 * v34);
    }

    while (v29);
    if (v31 == v28 || *(v31 + 32) > v82 || (v35 = *(v31 + 40)) == 0)
    {
LABEL_31:
      CGPostError("Failed to get resourceID: %llu for %s attribute", v20, v21, v22, v23, v24, v25, v26, v82);
      return 0;
    }

    if (!v43)
    {
      CGPostError("%s resourceID: %llu is of an unexpected class", v36, v37, v38, v39, v40, v41, v42, "background");
      return 0;
    }
  }

  else
  {
    v43 = 0;
  }

  v46 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "dl");
  if (!v46)
  {
    v78 = "dl";
    goto LABEL_20;
  }

  v47 = *MEMORY[0x1E695E480];
  v48 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v46, 0x8000100u);
  if (!v48)
  {
    goto LABEL_34;
  }

  v56 = v48;
  v57 = *(*(a1 + 16) + 24);
  if (!v57 || (v58 = CFURLCreateCopyAppendingPathComponent(v47, v57, v48, 1u)) == 0)
  {
    CFRelease(v56);
    goto LABEL_34;
  }

  v66 = v58;
  v67 = CGDisplayListCreateWithURL(v58, v59, v60, v61, v62, v63, v64, v65);
  CFRelease(v66);
  CFRelease(v56);
  if (!v67)
  {
LABEL_34:
    CGPostError("%s: Failed to read softmask display list", v49, v50, v51, v52, v53, v54, v55, "virtual BOOL DisplayListXMLParserResourceSoftMask::parseAttributes(const DLXMLAttributes &)");
    return 0;
  }

  v81 = off_1EF239F40;
  v79[0] = v83[0];
  v79[1] = v83[1];
  v79[2] = v83[2];
  v80 = xmmword_1EF239F30;
  if (v43)
  {
    v68 = v43[2];
  }

  else
  {
    v68 = 0;
  }

  v69 = CGSoftMaskCreate(v67, v79, v68, 0, &v80, v53, v54, v55, v84[0], v84[1], v84[2], v84[3]);
  v44 = v69 != 0;
  if (v69)
  {
    v77 = v69;
    CG::DisplayListResourcePattern::setPattern(v11, v69);
    CFRelease(v77);
  }

  else
  {
    CGPostError("%s: Failed to create CGSoftMaskRef", v70, v71, v72, v73, v74, v75, v76, "virtual BOOL DisplayListXMLParserResourceSoftMask::parseAttributes(const DLXMLAttributes &)");
  }

  return v44;
}

BOOL DisplayListXMLParserResourceDisplayList::parseAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x1E69E9840];
  result = DisplayListXMLParserResource::parseAttributes(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
    }

    else
    {
      v12 = 0;
    }

    v13 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "fileName");
    if (v13)
    {
      v21 = *MEMORY[0x1E695E480];
      v22 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v13, 0x8000100u);
      if (v22)
      {
        v23 = v22;
        v24 = *(*(a1 + 16) + 24);
        if (v24)
        {
          v25 = CFURLCreateCopyAppendingPathComponent(v21, v24, v22, 1u);
          if (v25)
          {
            v33 = v25;
            v34 = CGDisplayListCreateWithURL(v25, v26, v27, v28, v29, v30, v31, v32);
            if (v34)
            {
              v35 = v34;
              CG::DisplayListResourcePattern::setPattern(v12, v34);
              CFRelease(v35);
            }

            else
            {
              CFURLGetFileSystemRepresentation(v33, 1u, buffer, 1024);
              CGPostError("Failed to parse displayList resource from URL: %s", v36, v37, v38, v39, v40, v41, v42, buffer);
            }

            CFRelease(v33);
          }
        }

        CFRelease(v23);
      }

      return 1;
    }

    else
    {
      CGPostError("Failed to parse fileName attribute", v14, v15, v16, v17, v18, v19, v20, v43);
      return 0;
    }
  }

  return result;
}

uint64_t boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::~adjacency_list(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    MEMORY[0x1865EE610](v2, 0xC400A2AC0F1);
  }

  v4 = (a1 + 24);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&v4);
  std::__list_imp<unsigned long>::clear(a1);
  return a1;
}

void _softMaskReleaseInfoCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _softMaskDrawSoftMaskCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      CGDisplayListDrawInContext(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

void _patternReleaseInfoCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _patternDrawPatternCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      CGDisplayListDrawInContext(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

uint64_t DisplayListXMLParserResourceGradient::parseChildElements(const void **this, _xmlNode *a2)
{
  v12 = v4[3];
  if (!v12)
  {
    v23 = "DisplayListResourceGradient returned NULL for getColorSpaceResource()";
LABEL_16:
    CGPostError(v23, v5, v6, v7, v8, v9, v10, v11, v24[0]);
    return 0;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
    v23 = "DisplayListResourceColorSpace returned NULL for getColorSpace()";
    goto LABEL_16;
  }

  v14 = v4;
  memset(v25, 0, sizeof(v25));
  CG::DisplayListXMLHelper::parseCGFloatArrayFromElement(a2, "components", v25);
  memset(v24, 0, sizeof(v24));
  CG::DisplayListXMLHelper::parseCGFloatArrayFromElement(a2, "locations", v24);
  v15 = v25[0];
  v16 = v24[0];
  v17 = this[3];
  HeadroomInfo = CGColorSpaceGetHeadroomInfo(v13, 0);
  gradient = create_gradient(v13, v15, v16, v17, 0, HeadroomInfo);
  if (gradient)
  {
    v20 = gradient;
    v21 = v14[2];
    if (v21 != v20)
    {
      if (v21)
      {
        CFRelease(v21);
      }

      CFRetain(v20);
      v14[2] = v20;
    }

    CFRelease(v20);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v15)
  {
    operator delete(v15);
  }

  return 1;
}

void sub_1840AA6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN33DisplayListXMLParserResourceImage15parseAttributesERKNSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_NS0_4lessIS7_EENS5_INS0_4pairIKS7_S7_EEEEEE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateImageAtIndex");
  }

  DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::f = result;
  return result;
}

void *___ZN33DisplayListXMLParserResourceImage15parseAttributesERKNSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_NS0_4lessIS7_EENS5_INS0_4pairIKS7_S7_EEEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateWithURL");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithURL");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateWithURL");
  }

  DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::f = result;
  return result;
}

BOOL DisplayListXMLParserResourceDash::parseChildElements(DisplayListXMLParserResourceDash *this, _xmlNode *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 4);
  if (!v6)
  {
    return 0;
  }

  v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  children = a2->children;
  if (!children)
  {
    goto LABEL_31;
  }

  while (xmlStrcmp(children->name, "pattern"))
  {
    children = children->next;
    if (!children)
    {
      goto LABEL_31;
    }
  }

  v17 = children->children;
  if (!v17 || *(v17 + 8) != 3)
  {
    CGPostError("XML node of dash resource does not contain a pattern child", v17, v10, v11, v12, v13, v14, v15, v26);
    goto LABEL_31;
  }

  String = xmlNodeListGetString(*(v17 + 64), v17, 1);
  if (!String)
  {
    goto LABEL_31;
  }

  std::string::basic_string[abi:fe200100]<0>(v53, String);
  boost::char_separator<char,std::char_traits<char>>::char_separator(&v49, "[ ]");
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::tokenizer<std::string>(v44, v53, &v49);
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::begin(v36, v44);
  for (i = 0; ; ++i)
  {
    boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::end(&v27, v44);
    if (v33 == 1 && (v42 & 1) != 0)
    {
      break;
    }

    if (v33 == v42)
    {
      goto LABEL_41;
    }

LABEL_21:
    v20 = *(this + 4);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }

    if (i > v20)
    {
      goto LABEL_47;
    }

    if ((v42 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

    v8[i] = std::stod(&v43, 0);
    boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::increment(v36);
  }

  if (v31 != v40 || v32 != v41)
  {
    goto LABEL_21;
  }

LABEL_41:
  if (v35 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

LABEL_47:
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

LABEL_31:
  v21 = *(this + 4);
  v16 = v21 != 0;
  if (v21)
  {
    v22 = *(this + 3);
    v23 = malloc_type_calloc(1uLL, 8 * v21 + 24, 0x1000040D315E998uLL);
    *v23 = 1;
    *(v23 + 1) = v22;
    *(v23 + 2) = v21;
    memcpy(v23 + 6, v8, 8 * v21);
    v24 = v5[2];
    if (v24 != v23)
    {
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v24);
      }

      atomic_fetch_add_explicit(v23, 1u, memory_order_relaxed);
      v5[2] = v23;
    }

    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v23);
    }
  }

  free(v8);
  return v16;
}

void sub_1840AACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::~tokenizer(&a38);
  boost::char_separator<char,std::char_traits<char>>::~char_separator(v38 - 168);
  if (*(v38 - 81) < 0)
  {
    operator delete(*(v38 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t boost::char_separator<char,std::char_traits<char>>::char_separator(uint64_t a1, char *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::string::basic_string[abi:fe200100]<0>((a1 + 24), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_1840AAD68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::tokenizer<std::string>(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a1 = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  *(a1 + 8) = v7 + v6;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v9 = *(a3 + 24);
    *(a1 + 56) = *(a3 + 5);
    *(a1 + 40) = v9;
  }

  v10 = *(a3 + 6);
  *(a1 + 72) = *(a3 + 56);
  *(a1 + 64) = v10;
  return a1;
}

void sub_1840AAE40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::begin(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    __p = *(a2 + 40);
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::token_iterator(a1, &v5, *a2, *(a2 + 8));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = v5.__r_.__value_.__r.__words[0];

    operator delete(v4);
  }
}

void sub_1840AAF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::end(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    __p = *(a2 + 40);
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::token_iterator(a1, &v5, *(a2 + 8), *(a2 + 8));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = v5.__r_.__value_.__r.__words[0];

    operator delete(v4);
  }
}

void sub_1840AB044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::increment(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    __assert_rtn("increment", "token_iterator.hpp", 54, "valid_");
  }

  result = boost::char_separator<char,std::char_traits<char>>::operator()<std::__wrap_iter<char const*>,std::string>(a1, (a1 + 64), *(a1 + 72), (a1 + 88));
  *(a1 + 80) = result;
  return result;
}

uint64_t boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::~token_iterator(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::~tokenizer(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t boost::char_separator<char,std::char_traits<char>>::~char_separator(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void CG::DisplayListResourceDash::setDash(uint64_t a1, atomic_uint *a2)
{
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v3);
    }

    if (a2)
    {
      atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
    }

    *(a1 + 16) = a2;
  }
}

uint64_t boost::char_separator<char,std::char_traits<char>>::operator()<std::__wrap_iter<char const*>,std::string>(uint64_t a1, std::string::value_type **a2, std::string::value_type *a3, std::string *this)
{
  v8 = *a2;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  if (v8 != a3)
  {
    do
    {
      is_dropped = boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, *v8);
      v8 = *a2;
      if (!is_dropped)
      {
        break;
      }

      *a2 = ++v8;
    }

    while (v8 != a3);
    if (*(a1 + 52))
    {
LABEL_2:
      if (v8 == a3)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          v12 = 1;
          *(a1 + 56) = 1;
          std::string::__assign_trivial[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, a3, a3, 0);
          return v12;
        }

        return 0;
      }

      if (boost::char_separator<char,std::char_traits<char>>::is_kept(a1, *v8))
      {
        if (*(a1 + 56))
        {
          ++*a2;
          *(a1 + 56) = 0;
LABEL_28:
          std::string::__assign_trivial[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, v8, *a2, *a2 - v8);
          return 1;
        }
      }

      else if ((*(a1 + 56) & 1) != 0 || !boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, **a2))
      {
        v13 = boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, **a2);
        v14 = *a2;
        if (v13)
        {
          *a2 = ++v14;
          v8 = v14;
        }

        while (v14 != a3 && !boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, *v14) && !boost::char_separator<char,std::char_traits<char>>::is_kept(a1, **a2))
        {
          v14 = *a2 + 1;
          *a2 = v14;
        }
      }

      *(a1 + 56) = 1;
      goto LABEL_28;
    }
  }

  if (v8 != a3)
  {
    is_kept = boost::char_separator<char,std::char_traits<char>>::is_kept(a1, *v8);
    v11 = *a2;
    if (is_kept)
    {
      *a2 = v11 + 1;
    }

    else
    {
      while (v11 != a3 && !boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, *v11) && !boost::char_separator<char,std::char_traits<char>>::is_kept(a1, **a2))
      {
        v11 = *a2 + 1;
        *a2 = v11;
      }
    }

    goto LABEL_28;
  }

  return 0;
}

BOOL boost::char_separator<char,std::char_traits<char>>::is_dropped(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 47);
  if (v2 < 0)
  {
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v3 = std::string::find((a1 + 24), a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      return 0;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v4 = __maskrune(a2, 0x4000uLL);
    }

    else
    {
      v4 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60) & 0x4000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

BOOL boost::char_separator<char,std::char_traits<char>>::is_kept(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v3 = std::string::find(a1, a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      return 0;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v4 = __maskrune(a2, 0x2000uLL);
    }

    else
    {
      v4 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60) & 0x2000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

void std::string::__assign_trivial[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::token_iterator(uint64_t a1, __int128 *a2, std::string::value_type *a3, std::string::value_type *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
  }

  v10 = 0;
  v11 = *(a2 + 6);
  v12 = *(a2 + 56);
  *(a1 + 64) = a3;
  *(a1 + 56) = v12;
  *(a1 + 48) = v11;
  *(a1 + 72) = a4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (a3 != a4)
  {
    v10 = boost::char_separator<char,std::char_traits<char>>::operator()<std::__wrap_iter<char const*>,std::string>(a1, (a1 + 64), a4, (a1 + 88));
  }

  *(a1 + 80) = v10;
  return a1;
}

void sub_1840AB674(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

CGColorSpaceRef DisplayListXMLParserResourceColorSpace::createCGColorSpaceFromAttributeName(uint64_t a1, char *a2)
{
  v2 = CG::DisplayListXMLHelper::parseStringFromAttributes(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CGColorSpaceCreateWithName(v3);
  CFRelease(v4);
  return v5;
}

void CG::DisplayListResourceColor::setColor(CG::DisplayListResourceColor *this, CFTypeRef cf)
{
  v3 = *(this + 2);
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

    *(this + 2) = cf;
  }
}

uint64_t DisplayListXMLParserResourceClip::parseChildElements(DisplayListXMLParserResourceClip *this, _xmlNode *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = malloc_type_malloc(0x98uLL, 0x10A2040CE17A557uLL);
  *v6 = 1;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 48) = CGRectInfinite;
  *(v6 + 80) = CGRectInfinite;
  *(v6 + 16) = CGRectInfinite;
  *(v6 + 14) = 3;
  *(v6 + 15) = 0;
  *(v6 + 16) = 0;
  CGClipStackAddRect(v6, 1, *(this + 3), *(this + 4), *(this + 5), *(this + 6));
  children = a2->children;
  if (!children)
  {
    goto LABEL_62;
  }

  while (xmlStrcmp(children->name, "stack"))
  {
    children = children->next;
    if (!children)
    {
      goto LABEL_62;
    }
  }

  v8 = children->children;
  if (!v8)
  {
LABEL_62:
    CG::DisplayListResourceClip::setClipStack(v5, v6);
    CGClipStackRelease(v6);
    return 1;
  }

  alloc = *MEMORY[0x1E695E480];
  while (1)
  {
    if (v8->type != XML_ELEMENT_NODE)
    {
      goto LABEL_51;
    }

    if (xmlStrcmp(v8->name, "clip"))
    {
      break;
    }

    CG::DisplayListXMLHelper::parseAttributesFromNode(v45, v8);
    std::string::basic_string[abi:fe200100]<0>(&__p, "type");
    v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v45, &__p);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p);
    }

    if (&v46 != v16)
    {
      __p = "none";
      LODWORD(v48) = -1;
      v49 = "rect";
      LODWORD(v50) = 0;
      v51 = "glyphs_obsolete";
      v52 = 1;
      v53 = "path";
      v54 = 2;
      v55 = "mask";
      v56 = 3;
      v57 = "text";
      v58 = 4;
      v17 = (v16 + 56);
      if (*(v16 + 79) < 0)
      {
        v17 = *v17;
      }

      v18 = 0;
      v19 = 1;
      v20 = &v48;
      while (strcmp(v17, *(v20 - 1)))
      {
        v19 = v18 < 5;
        v20 += 4;
        if (++v18 == 6)
        {
          goto LABEL_50;
        }
      }

      if (v19)
      {
        v28 = *v20;
        if (*v20 > 2)
        {
          if (v28 == 3)
          {
            if ((CG::DisplayListXMLHelper::parseRectFromAttributes(v45, "rect", v44) & 1) != 0 && CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(v45, "matrix", &__p))
            {
              v31 = CG::DisplayListXMLHelper::parseStringFromAttributes(v45, "maskImage");
              if (v31)
              {
                v32 = CFStringCreateWithCString(alloc, v31, 0x8000100u);
                if (v32)
                {
                  v33 = CFURLCreateCopyAppendingPathComponent(alloc, *(*(this + 2) + 24), v32, 0);
                  if (v33)
                  {
                    if (DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::predicate != -1)
                    {
                      dispatch_once(&DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::predicate, &__block_literal_global_61);
                    }

                    v34 = DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::f(v33, 0);
                    if (v34)
                    {
                      if (DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::predicate != -1)
                      {
                        dispatch_once(&DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::predicate, &__block_literal_global_65);
                      }

                      v35 = DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::f(v34, 0, 0);
                      if (v35)
                      {
                        v41 = v35;
                        v42 = v34;
                        v36 = CGClipMaskCreate(&CGAffineTransformIdentity, v35, v44[0], v44[1], v44[2], v44[3]);
                        if (v36)
                        {
                          v37 = v36;
                          v30 = CGClipCreateWithMask(v36, 1);
                          CGClipMaskRelease(v37);
                        }

                        else
                        {
                          v30 = 0;
                        }

                        v34 = v42;
                        CFRelease(v41);
                      }

                      else
                      {
                        v30 = 0;
                      }

                      CFRelease(v34);
                    }

                    else
                    {
                      v30 = 0;
                    }

                    CFRelease(v33);
                  }

                  else
                  {
                    v30 = 0;
                  }

                  CFRelease(v32);
                }

                else
                {
                  v30 = 0;
                }

                goto LABEL_33;
              }
            }
          }

          else if (v28 == 4)
          {
            CGPostError("%s: kCGClipTypeTextClipping is unimplemented", v21, v22, v23, v24, v25, v26, v27, "CGClipRef DisplayListXMLParserResourceClip::parseClipNode(xmlNodePtr)");
          }
        }

        else
        {
          if (!v28)
          {
            CG::DisplayListXMLHelper::parseRectFromAttributes(v45, "rect", &__p);
            v30 = CGClipCreateWithRect(&CGAffineTransformIdentity, 1, *&__p, v48, *&v49, v50);
            goto LABEL_33;
          }

          if (v28 == 2)
          {
            v29 = v8->children;
            if (v29)
            {
              while (xmlStrcmp(v29->name, "cgpath"))
              {
                v29 = v29->next;
                if (!v29)
                {
                  goto LABEL_28;
                }
              }

              v38 = CG::DisplayListXMLHelper::parseCGPathFromNode(v29, v21);
              v39 = v38;
              if (v38)
              {
                v30 = CGClipCreateWithPath(v38, 0, 1, 1.0);
                CFRelease(v39);
LABEL_33:
                std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v46);
                if (v30)
                {
                  CGClipStackAddClip(v6, v30);
                  CGClipRelease(v30);
                }

                goto LABEL_51;
              }
            }

            else
            {
LABEL_28:
              CGPostError("%s: Failed to get %s node", v21, v22, v23, v24, v25, v26, v27, "CGClipRef DisplayListXMLParserResourceClip::parseClipNode(xmlNodePtr)");
            }
          }
        }
      }
    }

LABEL_50:
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v46);
LABEL_51:
    v8 = v8->next;
    if (!v8)
    {
      goto LABEL_62;
    }
  }

  CGPostError("%s: Unexpected child node name. Expected clip, got %s", v9, v10, v11, v12, v13, v14, v15, "virtual BOOL DisplayListXMLParserResourceClip::parseChildElements(xmlNodePtr)");
  return 0;
}

void *___ZN32DisplayListXMLParserResourceClip13parseClipNodeEP8_xmlNode_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateImageAtIndex");
  }

  DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::f = result;
  return result;
}

void *___ZN32DisplayListXMLParserResourceClip13parseClipNodeEP8_xmlNode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateWithURL");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithURL");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateWithURL");
  }

  DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::f = result;
  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

uint64_t boost::shared_array<boost::default_color_type>::operator[](uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = "px != 0";
    v4 = 199;
    goto LABEL_6;
  }

  if (a2 < 0)
  {
    v3 = "i >= 0";
    v4 = 200;
LABEL_6:
    __assert_rtn("operator[]", "shared_array.hpp", v4, v3);
  }

  return a1 + 4 * a2;
}

void boost::detail::depth_first_visit_impl<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::topo_sort_visitor<std::front_insert_iterator<std::list<unsigned long>>>,boost::shared_array_property_map<boost::default_color_type,boost::vec_adj_list_vertex_id_map<boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,unsigned long>>,boost::detail::nontruth2>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  *boost::shared_array<boost::default_color_type>::operator[](*a4, a2) = 1;
  v7 = *(a1 + 24);
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v7) >> 3) <= a2)
  {
    goto LABEL_15;
  }

  v8 = (v7 + 56 * a2);
  v10 = *v8;
  v9 = v8[1];
  v26 = a2;
  v27 = 0;
  v31 = v10;
  v32 = a2;
  v33 = v9;
  v34 = a2;
  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:fe200100](&v23, &v26);
  v11 = v24;
  if (v23 != v24)
  {
    v12 = *(v24 - 9);
    if (*(v24 - 64) == 1)
    {
      *(v24 - 64) = 0;
    }

    v13 = *(v11 - 4);
    v14 = *(v11 - 3);
    v16 = *(v11 - 2);
    v15 = *(v11 - 1);
    v24 = v11 - 72;
    while (1)
    {
      while (1)
      {
        if (v13 == v16)
        {
          *boost::shared_array<boost::default_color_type>::operator[](*a4, v12) = 4;
          operator new();
        }

        v17 = *v13;
        v18 = *boost::shared_array<boost::default_color_type>::operator[](*a4, *v13);
        if (!v18)
        {
          break;
        }

        if (v18 == 1)
        {
          boost::topo_sort_visitor<std::front_insert_iterator<std::list<unsigned long>>>::back_edge<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS> const>();
        }

        v13 += 2;
      }

      v19 = *v13;
      v20 = v13[1] + 32;
      v26 = v12;
      v28 = v14;
      v29 = v19;
      v27 = 1;
      v30 = v20;
      v31 = v13 + 2;
      v32 = v14;
      v33 = v16;
      v34 = v15;
      std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:fe200100](&v23, &v26);
      *boost::shared_array<boost::default_color_type>::operator[](*a4, v17) = 1;
      v21 = *(a1 + 24);
      if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v21) >> 3) <= v17)
      {
        break;
      }

      v22 = (v21 + 56 * v17);
      v13 = *v22;
      v16 = v22[1];
      v15 = v17;
      v12 = v17;
      v14 = v17;
    }

LABEL_15:
    __break(1u);
  }

  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:fe200100](&v23);
}

void sub_1840AC384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:fe200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1C71C71C71C71C7)
    {
      v11 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v12 = 72 * v8;
    *v12 = *a2;
    *(v12 + 8) = 0;
    if (*(a2 + 8) == 1)
    {
      *(72 * v8 + 0x10) = *(a2 + 16);
      *(72 * v8 + 0x20) = *(a2 + 32);
      *(72 * v8 + 8) = 1;
    }

    *(72 * v8 + 0x28) = *(a2 + 40);
    *(72 * v8 + 0x38) = *(a2 + 56);
    v7 = v12 + 72;
    v13 = *a1;
    v14 = a1[1];
    v15 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = v13 + 16;
      v17 = v15;
      do
      {
        v18 = v16 - 16;
        *v17 = *(v16 - 2);
        *(v17 + 8) = 0;
        if (*(v16 - 8) == 1)
        {
          v19 = *v16;
          *(v17 + 32) = *(v16 + 2);
          *(v17 + 16) = v19;
          *(v17 + 8) = 1;
        }

        v20 = *(v16 + 24);
        *(v17 + 56) = *(v16 + 40);
        *(v17 + 40) = v20;
        v17 += 72;
        v16 += 72;
      }

      while (v18 + 72 != v14);
      do
      {
        if (v13[8] == 1)
        {
          v13[8] = 0;
        }

        v13 += 72;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v7;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = 0;
    if (*(a2 + 8) == 1)
    {
      v5 = *(a2 + 16);
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 16) = v5;
      *(v3 + 8) = 1;
    }

    v6 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v6;
    v7 = v3 + 72;
  }

  a1[1] = v7;
}

void boost::topo_sort_visitor<std::front_insert_iterator<std::list<unsigned long>>>::back_edge<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS> const>()
{
  std::string::basic_string[abi:fe200100]<0>(&v1, "The graph must be a DAG.");
  std::logic_error::logic_error(&v0, &v1);
  v0.__vftable = &unk_1EF23A560;
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v1.__r_.__value_.__l.__data_);
  }

  v0.__vftable = &unk_1EF23A538;
  v1.__r_.__value_.__r.__words[0] = "/AppleInternal/Library/BuildRoots/4~CAoEugDuHK1rbQwXulrj3MslkuV35Km3bftwDR8/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/graph/topological_sort.hpp";
  v1.__r_.__value_.__l.__size_ = "void boost::topo_sort_visitor<std::front_insert_iterator<std::list<unsigned long>>>::back_edge(const Edge &, Graph &) [OutputIterator = std::front_insert_iterator<std::list<unsigned long>>, Edge = boost::detail::edge_desc_impl<boost::bidirectional_tag, unsigned long>, Graph = const boost::adjacency_list<boost::vecS, boost::vecS, boost::bidirectionalS, boost::property<boost::vertex_color_t, boost::default_color_type>>]";
  v1.__r_.__value_.__r.__words[2] = 42;
  boost::throw_exception<boost::not_a_dag>(&v0, &v1);
}

void std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:fe200100](char **a1)
{
  v2 = *a1;
  if (v2)
  {
    for (i = a1[1]; i != v2; i -= 72)
    {
      if (*(i - 64) == 1)
      {
        *(i - 64) = 0;
      }
    }

    a1[1] = v2;
    operator delete(v2);
  }
}

void boost::throw_exception<boost::not_a_dag>(const std::logic_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_1EF23A508;
  std::logic_error::logic_error((exception + 8), a1);
  *(exception + 5) = 0;
  *(exception + 6) = 0;
  *exception = &unk_1EF23A490;
  *(exception + 1) = &unk_1EF23A4C0;
  *(exception + 3) = &unk_1EF23A4E8;
  *(exception + 4) = 0;
  *(exception + 14) = a2[1].i32[0];
  *(exception + 40) = vextq_s8(*a2, *a2, 8uLL);
}

uint64_t boost::wrapexcept<boost::not_a_dag>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1865EE3B0](a1 + 8);
  return a1;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::not_a_dag>::~wrapexcept(void *a1)
{
  *a1 = &unk_1EF23A588;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x1865EE3B0](v1);

  JUMPOUT(0x1865EE610);
}

{
  *a1 = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x1865EE3B0);
}

void non-virtual thunk toboost::wrapexcept<boost::not_a_dag>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x1865EE3B0](a1);

  JUMPOUT(0x1865EE610);
}

{
  *(a1 + 16) = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x1865EE3B0);
}

void boost::wrapexcept<boost::not_a_dag>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1865EE3B0](a1 + 8);

  JUMPOUT(0x1865EE610);
}

void boost::wrapexcept<boost::not_a_dag>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::not_a_dag>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::not_a_dag>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1EF23A508;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1EF23A538;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1EF23A588;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1EF23A490;
  *(a1 + 8) = &unk_1EF23A4C0;
  *(a1 + 24) = &unk_1EF23A4E8;
  return a1;
}

void boost::not_a_dag::~not_a_dag(boost::not_a_dag *this)
{
  MEMORY[0x1865EE3B0](this);

  JUMPOUT(0x1865EE610);
}

void sub_1840ACE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::bad_graph::~bad_graph(boost::bad_graph *this)
{
  MEMORY[0x1865EE3B0](this);

  JUMPOUT(0x1865EE610);
}

uint64_t boost::detail::sp_counted_impl_pd<boost::default_color_type *,boost::checked_array_deleter<boost::default_color_type>>::get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "N5boost21checked_array_deleterINS_18default_color_typeEEE"))
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::detail::sp_counted_impl_pd<boost::default_color_type *,boost::checked_array_deleter<boost::default_color_type>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    JUMPOUT(0x1865EE5F0);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:fe200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL CG::DisplayListResourceCFTypeRef::_equal_to(CG::DisplayListResourceCFTypeRef *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || !CFEqual(v4, v5))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceCFTypeRef::~DisplayListResourceCFTypeRef(CG::DisplayListResourceCFTypeRef *this)
{
  CG::DisplayListResourceCFTypeRef::~DisplayListResourceCFTypeRef(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F778;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CG::DisplayListResourceDisplayList::_equal_to(CG::DisplayListResourceDisplayList *this, const CG::DisplayListResource *a2, uint64_t a3)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v6 = *(this + 2);
  v7 = *(a2 + 2);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!v7 || v6 != v7 && !CG::DisplayList::isEqualTo((v6 + 16), (v7 + 16), a3))
  {
    return 0;
  }

LABEL_7:

  return CG::DisplayListResource::_equal_to(this, a2);
}

BOOL CG::DisplayListResourceFunction::_equal_to(CG::DisplayListResourceFunction *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceFunction::~DisplayListResourceFunction(CG::DisplayListResourceFunction *this)
{
  *this = &unk_1EF23F6E8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F6E8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CG::DisplayListResourceSoftMask::_equal_to(CG::DisplayListResourceSoftMask *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceSoftMask::getChildResources(CG::DisplayListResourceSoftMask *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 3))
  {
    v2 = *(this + 3);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v2);
  }
}

void sub_1840AD5DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL CG::DisplayListResourceGradient::_equal_to(CG::DisplayListResourceGradient *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceGradient::getChildResources(CG::DisplayListResourceGradient *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 3))
  {
    v2 = *(this + 3);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v2);
  }
}

void sub_1840AD73C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CG::DisplayListResourceGradient::~DisplayListResourceGradient(CG::DisplayListResourceGradient *this)
{
  *this = &unk_1EF23F658;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F658;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CG::DisplayListResourceFont::_equal_to(CG::DisplayListResourceFont *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (v5)
    {
      v6 = *(v4 + 24);
      if (v6 || (atomic_compare_exchange_strong_explicit((v4 + 24), &v6, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed), v6 = *(v4 + 24), (v5 = *(a2 + 2)) != 0))
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          atomic_compare_exchange_strong_explicit((v5 + 24), &v7, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
          v7 = *(v5 + 24);
        }
      }

      else
      {
        v7 = 0;
      }

      if (v6 == v7)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_13:

  return CG::DisplayListResource::_equal_to(this, a2);
}

BOOL CG::DisplayListResourceDash::_equal_to(CG::DisplayListResourceDash *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5 || CGDashCompare(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceDash::~DisplayListResourceDash(CG::DisplayListResourceDash *this)
{
  *this = &unk_1EF23F5C8;
  v1 = *(this + 2);
  if (v1 && atomic_fetch_add_explicit(v1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    free(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F5C8;
  v1 = *(this + 2);
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v1);
    }
  }
}

BOOL CG::DisplayListResourceColorSpace::_equal_to(CG::DisplayListResourceColorSpace *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)) || *(this + 2) != *(a2 + 2))
  {
    return 0;
  }

  return CG::DisplayListResource::_equal_to(this, a2);
}

BOOL CG::DisplayListResourceClip::_equal_to(CG::DisplayListResourceClip *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || !CGClipStackEquivalent(v4, v5))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

uint64_t boost::graph_detail::push<std::vector<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property>>,boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property>>(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return 1;
}

uint64_t boost::vec_adj_list_impl<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::config,boost::bidirectional_graph_helper_with_property<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::config>>::~vec_adj_list_impl(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&v3);
  std::__list_imp<unsigned long>::clear(a1);
  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CG::CGDLResourceType>,void *>>>::operator()[abi:fe200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void CG::DisplayListXMLDeserializer::~DisplayListXMLDeserializer(CG::DisplayListXMLDeserializer *this)
{
  CG::DisplayListXMLDeserializer::~DisplayListXMLDeserializer(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239990;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  std::__tree<unsigned long>::destroy(*(this + 8));
  std::__tree<unsigned long>::destroy(*(this + 5));
  *this = &unk_1EF239A68;
  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

void CIDFontType2::emit_definitions(CIDFontType2 *this)
{
  if (*(this + 17))
  {
    v2 = *(this + 1);
    v3 = *v2;
    v4 = PDFXRefTableAddObject(*(*v2 + 504));
    PDFDocumentBeginObject(v3, *(this + 14), v5, v6, v7, v8, v9, v10);
    PDFDocumentPrintf(v3, "<<", v11, v12, v13, v14, v15, v16, v284);
    PDFDocumentPrintf(v3, "/Type /Font", v17, v18, v19, v20, v21, v22, v285);
    PDFDocumentPrintf(v3, "/Subtype /Type0", v23, v24, v25, v26, v27, v28, v286);
    PDFDocumentPrintf(v3, "/Encoding /Identity-H", v29, v30, v31, v32, v33, v34, v287);
    PDFDocumentPrintReference(v3, "/DescendantFonts [%R]", v4, v35, v36, v37, v38, v39);
    v46 = (this + 88);
    v47 = this + 88;
    if (*(this + 111) < 0)
    {
      v47 = *v46;
    }

    PDFDocumentPrintf(v3, "/BaseFont /%N", v40, v41, v42, v43, v44, v45, v47);
    v48 = PDFXRefTableAddObject(*(v3 + 504));
    PDFDocumentPrintReference(v3, "/ToUnicode %R", v48, v49, v50, v51, v52, v53);
    PDFDocumentPrintf(v3, ">>", v54, v55, v56, v57, v58, v59, v288);
    PDFDocumentEndObject(v3, v60, v61, v62, v63, v64, v65, v66);
    v304 = this;
    ToUnicode::write<std::set<unsigned short>>(&v304, v48, this + 15);
    v67 = **(this + 1);
    PDFDocumentBeginObject(v67, v4, v68, v69, v70, v71, v72, v73);
    PDFDocumentPrintf(v67, "<<", v74, v75, v76, v77, v78, v79, v289);
    PDFDocumentPrintf(v67, "/Type /Font", v80, v81, v82, v83, v84, v85, v290);
    PDFDocumentPrintf(v67, "/Subtype /CIDFontType2", v86, v87, v88, v89, v90, v91, v291);
    v98 = this + 88;
    if (*(this + 111) < 0)
    {
      v98 = *v46;
    }

    PDFDocumentPrintf(v67, "/BaseFont /%N", v92, v93, v94, v95, v96, v97, v98);
    v99 = **(this + 1);
    PDFDocumentPrintf(v99, "/CIDSystemInfo <<", v100, v101, v102, v103, v104, v105, v292);
    PDFDocumentPrintf(v99, "/Registry %T", v106, v107, v108, v109, v110, v111, @"Adobe");
    PDFDocumentPrintf(v99, "/Ordering %T", v112, v113, v114, v115, v116, v117, @"Identity");
    PDFDocumentPrintf(v99, "/Supplement 0", v118, v119, v120, v121, v122, v123, v293);
    PDFDocumentPrintf(v99, ">>", v124, v125, v126, v127, v128, v129, v294);
    v130 = PDFXRefTableAddObject(*(v67 + 504));
    PDFDocumentPrintReference(v67, "/W %R", v130, v131, v132, v133, v134, v135);
    PDFDocumentPrintf(v67, "/DW %d", v136, v137, v138, v139, v140, v141, 1000);
    FontDescriptor::FontDescriptor(v302, this, 0);
    PDFDocumentPrintReference(v67, "/FontDescriptor %R", v303, v142, v143, v144, v145, v146);
    v147 = *(this + 2);
    if (v147 && (explicit = atomic_load_explicit((v147 + 88), memory_order_acquire)) != 0 && CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontData"))
    {
      v300 = 0;
    }

    else
    {
      v300 = PDFXRefTableAddObject(*(v67 + 504));
      PDFDocumentPrintReference(v67, "/CIDToGIDMap %R", v300, v155, v156, v157, v158, v159);
    }

    PDFDocumentPrintf(v67, ">>", v149, v150, v151, v152, v153, v154, v295);
    PDFDocumentEndObject(v67, v160, v161, v162, v163, v164, v165, v166);
    v167 = **(this + 1);
    PDFDocumentBeginObject(v167, v130, v168, v169, v170, v171, v172, v173);
    PDFDocumentPrintf(v167, "[", v174, v175, v176, v177, v178, v179, v296);
    v305[0] = 0;
    v305[1] = 0;
    v304 = v305;
    font_info = get_font_info(*(this + 2));
    v301 = (this + 88);
    if (font_info)
    {
      v187 = font_info[2];
    }

    else
    {
      v187 = 0.0;
    }

    v188 = *(this + 15);
    v189 = this + 128;
    if (v188 != this + 128)
    {
      do
      {
        advances = 0;
        glyphs = *(v188 + 13);
        CGFontGetGlyphAdvances(*(this + 2), &glyphs, 1uLL, &advances);
        v190 = advances;
        p_glyphs = &glyphs;
        *(std::__tree<std::__value_type<unsigned short,int>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,int>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v304, glyphs) + 8) = (((1000 * v190) / v187) + 0.5);
        v191 = *(v188 + 1);
        if (v191)
        {
          do
          {
            v192 = v191;
            v191 = *v191;
          }

          while (v191);
        }

        else
        {
          do
          {
            v192 = *(v188 + 2);
            v193 = *v192 == v188;
            v188 = v192;
          }

          while (!v193);
        }

        v188 = v192;
      }

      while (v192 != v189);
    }

    v194 = v304;
    while (v194 != v305)
    {
      v195 = v194;
      v196 = *(v194 + 14);
      v197 = 1;
      v198 = *(v194 + 14);
      v199 = v194;
      while (*(v199 + 14) == v198)
      {
        v200 = *(v199 + 8) == *(v195 + 8);
        v201 = *(v199 + 1);
        if (v201)
        {
          do
          {
            v194 = v201;
            v201 = *v201;
          }

          while (v201);
        }

        else
        {
          do
          {
            v194 = *(v199 + 2);
            v193 = *v194 == v199;
            v199 = v194;
          }

          while (!v193);
        }

        v197 &= v200;
        ++v198;
        v199 = v194;
        if (v194 == v305)
        {
          if (v197)
          {
            goto LABEL_31;
          }

          goto LABEL_34;
        }
      }

      v194 = v199;
      if (v197)
      {
LABEL_31:
        if (*(v195 + 8) != 1000)
        {
          PDFDocumentPrintf(v167, "%d", v181, v182, v183, v184, v185, v186, v196);
          PDFDocumentPrintf(v167, "%d", v202, v203, v204, v205, v206, v207, v198 - 1);
          PDFDocumentPrintf(v167, "%d", v208, v209, v210, v211, v212, v213, *(v195 + 8));
        }

        continue;
      }

LABEL_34:
      PDFDocumentPrintf(v167, "%d [", v181, v182, v183, v184, v185, v186, v196);
      if (v195 != v194)
      {
        do
        {
          PDFDocumentPrintf(v167, "%d", v214, v215, v216, v217, v218, v219, *(v195 + 8));
          v220 = *(v195 + 1);
          if (v220)
          {
            do
            {
              v221 = v220;
              v220 = *v220;
            }

            while (v220);
          }

          else
          {
            do
            {
              v221 = *(v195 + 2);
              v193 = *v221 == v195;
              v195 = v221;
            }

            while (!v193);
          }

          v195 = v221;
        }

        while (v221 != v194);
      }

      PDFDocumentPrintf(v167, "]", v214, v215, v216, v217, v218, v219, v298);
    }

    PDFDocumentPrintf(v167, "]", v181, v182, v183, v184, v185, v186, v297);
    PDFDocumentEndObject(v167, v222, v223, v224, v225, v226, v227, v228);
    std::__tree<unsigned long>::destroy(v305[0]);
    v229 = PDFXRefTableAddObject(*(v67 + 504));
    FontDescriptor::emit_definition(v302, v301, v229, v230, v231, v232, v233, v234);
    v235 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040C7309667uLL);
    *v235 = 1;
    v236 = *(this + 15);
    if (v236 != v189)
    {
      do
      {
        CGFontIndexSetAddIndex(v235, *(v236 + 13));
        v237 = *(v236 + 1);
        if (v237)
        {
          do
          {
            v238 = v237;
            v237 = *v237;
          }

          while (v237);
        }

        else
        {
          do
          {
            v238 = *(v236 + 2);
            v193 = *v238 == v236;
            v236 = v238;
          }

          while (!v193);
        }

        v236 = v238;
      }

      while (v238 != v189);
    }

    embedded_font = PDFFont::create_embedded_font(this, v301, v235, 0, *(this + 18));
    CGFontIndexSetRelease(v235);
    if (embedded_font)
    {
      Length = CFDataGetLength(embedded_font);
      if ((Length - 0x80000000) >= 0xFFFFFFFF80000001)
      {
        v241 = Length;
        v242 = **(this + 1);
        v243 = PDFStreamCreateWithObjectNumber(v242, v229);
        PDFDocumentBeginObject(*v243, v243[1], v244, v245, v246, v247, v248, v249);
        PDFDocumentPrintf(*v243, "<<", v250, v251, v252, v253, v254, v255, v299);
        PDFDocumentPrintf(v242, "/Length1 %d", v256, v257, v258, v259, v260, v261, v241);
        PDFStreamBeginData(v243);
        BytePtr = CFDataGetBytePtr(embedded_font);
        CGDataConsumerPutBytes(v243[3], BytePtr, v241);
        PDFStreamEndData(v243);
        PDFStreamEnd(v243);
        PDFStreamRelease(v243);
      }

      CFRelease(embedded_font);
    }

    if (v300)
    {
      v263 = PDFStreamCreateWithObjectNumber(**(this + 1), v300);
      PDFDocumentBeginObject(*v263, v263[1], v264, v265, v266, v267, v268, v269);
      PDFDocumentPrintf(*v263, "<<", v270, v271, v272, v273, v274, v275, v299);
      PDFStreamBeginData(v263);
      v276 = *(this + 16);
      if (v276)
      {
        do
        {
          v277 = v276;
          v276 = *(v276 + 1);
        }

        while (v276);
      }

      else
      {
        do
        {
          v277 = *(v189 + 2);
          v193 = *v277 == v189;
          v189 = v277;
        }

        while (v193);
      }

      v278 = 0;
      v279 = *(v277 + 13);
      do
      {
        v280 = *(this + 18);
        if (v280)
        {
          if (v280 == -1)
          {
            LOBYTE(v281) = HIBYTE(v278);
            LOBYTE(v282) = v278;
          }

          else
          {
            v283 = atomic_load(&v280[4 * (v278 >> 10) + 4]);
            if (v283)
            {
              v282 = *(v283 + 2 * (v278 & 0x3FF));
            }

            else
            {
              v282 = *v280;
            }

            v281 = v282 >> 8;
          }
        }

        else
        {
          LOBYTE(v282) = -1;
          LOBYTE(v281) = -1;
        }

        LOBYTE(v304) = v281;
        BYTE1(v304) = v282;
        CGDataConsumerPutBytes(v263[3], &v304, 2);
        ++v278;
      }

      while (v279 >= v278);
      PDFStreamEndData(v263);
      PDFStreamEnd(v263);
      PDFStreamRelease(v263);
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,int>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,int>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 a2)
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
      v4 = *(v2 + 28);
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

void CIDFontType2::emit_references(CIDFontType2 *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 17))
  {
    v8 = (this + 64);
    if (*(this + 87) < 0)
    {
      v8 = *v8;
    }

    PDFDocumentPrintNameReferencePair(**(this + 1), "/%N %R", v8, *(this + 14), a5, a6, a7, a8);
  }
}

void *CIDFontType2::add_glyphs_to_layout(void *result, void *a2, unsigned __int16 **a3)
{
  v3 = a3[1];
  v4 = *a3;
  if (v3 != *a3)
  {
    do
    {
      v7 = result[16];
      v8 = result + 16;
      if (result[15] == result + 16)
      {
        goto LABEL_8;
      }

      v9 = result[16];
      v10 = result + 16;
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      v12 = *v4;
      if (*(v8 + 13) < v12)
      {
LABEL_8:
        if (v7)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = result + 16;
        }
      }

      else
      {
        v13 = result + 16;
        if (v7)
        {
          v13 = result + 16;
          while (1)
          {
            while (1)
            {
              v14 = v7;
              v15 = *(v7 + 26);
              if (v12 >= v15)
              {
                break;
              }

              v7 = *v14;
              v13 = v14;
              if (!*v14)
              {
                goto LABEL_12;
              }
            }

            if (v15 >= v12)
            {
              break;
            }

            v13 = v14 + 1;
            v7 = v14[1];
            if (!v7)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v13)
      {
LABEL_12:
        operator new();
      }

      ++v4;
    }

    while (v4 != v3);
    v16 = *a3;
    if (a3[1] == *a3)
    {
      __break(1u);
    }

    else
    {
      v17 = (result + 8);
      if (*(result + 87) < 0)
      {
        v17 = *v17;
      }

      v6 = v3 - *a3;

      return layout_append_data(a2, v17, 2, v16, v6);
    }
  }

  return result;
}

void CIDFontType2::~CIDFontType2(CIDFontType2 *this)
{
  CIDFontType2::~CIDFontType2(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23A618;
  CGFontIndexMapRelease(*(this + 18));
  std::__tree<unsigned long>::destroy(*(this + 16));
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  PDFFont::~PDFFont(this);
}

float *filterAngles(float *result)
{
  v1 = *(result + 16);
  v2 = *v1;
  if (*v1)
  {
    v3 = result;
    v4 = *(result + 18);
    if (v2 < 1)
    {
      goto LABEL_11;
    }

    v5 = 0;
    v6 = *(v1 + 8);
    do
    {
      v7 = v5 + 1;
      if (v5 + 1 >= v2)
      {
        v8 = v2;
      }

      else
      {
        v8 = 0;
      }

      v9 = &v6[-2 * v8];
      v10 = *v6;
      v11 = v6[1];
      v6 += 2;
      v12 = atan2((v9[3] - v11), (v9[2] - v10)) * 0.159154937;
      if (v12 < 0.0)
      {
        v12 = v12 + 1.0;
      }

      v4[v5++] = v12;
    }

    while (v2 != v7);
    if (v2 > 23)
    {
      if (v2 > 0x37)
      {
        filterAngleBuffer(v4, *(v3 + 22), v2, 3, v3[7]);
        v16 = *(v3 + 22);
        v15 = v3[7];
        if (v2 > 0x77)
        {
          filterAngleBuffer(v16, *(v3 + 23), v2, 7, v15);
          v16 = *(v3 + 23);
          v14 = *(v3 + 19);
          v15 = v3[7];
          v17 = v2;
          v18 = 15;
        }

        else
        {
          v14 = *(v3 + 19);
          v17 = v2;
          v18 = 7;
        }
      }

      else
      {
        v14 = *(v3 + 19);
        v15 = v3[7];
        v16 = v4;
        v17 = v2;
        v18 = 3;
      }

      return filterAngleBuffer(v16, v14, v17, v18, v15);
    }

    else
    {
LABEL_11:
      v13 = *(v3 + 19);

      return memmove(v13, v4, 4 * v2);
    }
  }

  return result;
}

float *filterAngleBuffer(float *result, float *a2, int a3, int a4, float a5)
{
  v5 = 0;
  v6 = result;
  do
  {
    v7 = *v6;
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    v9 = v5 + v8;
    ++v5;
    v10 = v9 - 1;
    if (v5 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    v12 = v5 - v11;
    v13 = 1;
    v14 = a4;
    v15 = *v6;
    do
    {
      v16 = result[v12] - rintf(result[v12] - v7);
      v17 = vabds_f32(v16, v7);
      v18 = v15 + v16;
      if (v17 < a5)
      {
        ++v13;
        v15 = v18;
      }

      v19 = result[v10] - rintf(result[v10] - v7);
      v20 = vabds_f32(v19, v7);
      v21 = v19 + v15;
      if (v20 < a5)
      {
        ++v13;
        v15 = v21;
      }

      v22 = v12 + 1;
      if (v22 >= a3)
      {
        v23 = a3;
      }

      else
      {
        v23 = 0;
      }

      v12 = v22 - v23;
      if (v10 <= 0)
      {
        v24 = a3;
      }

      else
      {
        v24 = 0;
      }

      v10 = v10 + v24 - 1;
      --v14;
    }

    while (v14);
    *a2++ = (v15 / v13) - floorf(v15 / v13);
    ++v6;
  }

  while (v5 != a3);
  return result;
}

void *createPath(CGImage *a1, int a2, uint64_t a3, uint64_t a4, int *a5, double a6, double a7)
{
  v120 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  *whitePoint = xmmword_1844DEA30;
  v118 = 0x3FEA6594AF4F0D84;
  CalibratedGray = CGColorSpaceCreateCalibratedGray(whitePoint, 0, 2.2);
  if (!CalibratedGray)
  {
    v35 = "Error allocating color space";
LABEL_20:
    printf(" ***** %s in autoTrace\n", v35);
    return 0;
  }

  v17 = CalibratedGray;
  v18 = malloc_type_malloc(v15 * v14, 0x3D84BDE0uLL);
  v19 = v18;
  if (!v18)
  {
    printf(" ***** %s in autoTrace\n", "Memory not allocated!");
    CGColorSpaceRelease(v17);
    return v19;
  }

  v115 = v15 * v14;
  v20 = CGBitmapContextCreateWithData(v18, v14, v15, 8uLL, v14, v17, 0, 0, 0);
  if (!v20)
  {
    free(v19);
    CGColorSpaceRelease(v17);
    v35 = "Context not created!";
    goto LABEL_20;
  }

  v21 = v20;
  CGColorSpaceRelease(v17);
  v121.size.width = v14;
  v121.size.height = v15;
  v121.origin.x = 0.0;
  v121.origin.y = 0.0;
  CGContextDrawImage(v21, v121, a1);
  v28 = v21;
  if (*(v21 + 16) != 1129601108 || *(v21 + 24) != 4)
  {
    handle_invalid_context("CGBitmapContextGetData", v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_17;
  }

  v29 = *(*(v21 + 32) + 64);
  if (!v29 || (v30 = malloc_type_malloc(0x100uLL, 0x10A00400CDB8DDBuLL)) == 0)
  {
LABEL_17:
    v36 = v28;
LABEL_18:
    CFRelease(v36);
    return 0;
  }

  v31 = v30;
  v32 = a7;
  v30[14] = 0u;
  v30[15] = 0u;
  v30[12] = 0u;
  v30[13] = 0u;
  v30[10] = 0u;
  v30[11] = 0u;
  v30[8] = 0u;
  v30[9] = 0u;
  v30[6] = 0u;
  v30[7] = 0u;
  v30[4] = 0u;
  v30[5] = 0u;
  v30[2] = 0u;
  v30[3] = 0u;
  *v30 = 0u;
  v30[1] = 0u;
  *(v30 + 9) = 1084227584;
  *(v30 + 8) = v32;
  *(v30 + 10) = v32;
  *(v30 + 6) = v15;
  *(v30 + 7) = 1034147594;
  v33 = malloc_type_malloc(0xC80uLL, 0x1020040F48FCA59uLL);
  *(v31 + 64) = v33;
  if (!v33)
  {
    printf(" ***** %s in autoTrace\n", "could not allocate extract polygons point list");
LABEL_26:
    printf(" ***** %s in autoTrace\n", "could not initialize AutoTrace environment");
    termAutoTraceEnvironment(v31);
    goto LABEL_17;
  }

  *(v31 + 56) = 0x6400000000;
  *(v31 + 72) = -1;
  if (!initOpenEndList((v31 + 96)))
  {
LABEL_25:
    termPolygonList(v31);
    goto LABEL_26;
  }

  if (!initOpenEndList((v31 + 112)))
  {
    free(*(v31 + 104));
    goto LABEL_25;
  }

  *(v31 + 80) = 0;
  *(v31 + 92) = 0;
  *(v31 + 48) = CGPathCreateMutable();
  *v31 = a3;
  *(v31 + 8) = a4;
  cf = v28;
  v109 = v29;
  if (a5)
  {
    v34 = *a5;
    *(v31 + 20) = *(a5 + 4);
    *(v31 + 16) = v34;
  }

  else
  {
    *(v31 + 20) = 0;
    *(v31 + 16) = 0;
  }

  v38 = v14;
  v39 = v15;
  v40 = a6;
  if (v40 == 1.0)
  {
    v41 = 0.9999;
  }

  else
  {
    v41 = a6;
  }

  bzero(v119, 0x400uLL);
  if (v15 << 32)
  {
    v42 = 0;
    v43 = v29;
    do
    {
      if (v14 << 32)
      {
        v44 = 0;
        do
        {
          ++v119[v43[v44++]];
        }

        while (v14 != v44);
      }

      ++v42;
      v43 += v14;
    }

    while (v42 != v15);
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  do
  {
    v48 = v119[v45];
    if (v48 > v46)
    {
      v46 = v119[v45];
    }

    if (v48 > v47)
    {
      v46 = v47;
    }

    else
    {
      v48 = v47;
    }

    ++v45;
    v47 = v48;
  }

  while (v45 != 256);
  v49 = 0;
  v50 = 0;
  if (a2)
  {
    v51 = 255;
  }

  else
  {
    v51 = 0;
  }

  v52 = vcvtms_s32_f32(v41 * 255.0);
  v53 = &v29[(v39 - 1) * v38];
  if (v38 + 1 > 1)
  {
    v54 = v38 + 1;
  }

  else
  {
    v54 = 1;
  }

  if (v39 + 1 > 1)
  {
    v55 = v39 + 1;
  }

  else
  {
    v55 = 1;
  }

  v113 = &v29[(v39 - 1) * v38];
  v56 = v29;
  do
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = v51;
      if (v49)
      {
        v59 = v51;
        if (v38 != v58)
        {
          v59 = v53[v58];
        }
      }

      v60 = v51;
      if (v49 != v39)
      {
        v60 = v51;
        if (v38 != v58)
        {
          v60 = v56[v58];
        }
      }

      v61 = v59 < v52;
      v62 = v59 <= v52;
      v63 = !v61;
      v61 = v60 < v52;
      v64 = v60 <= v52;
      v65 = !v61;
      if (!a2)
      {
        v64 = v65;
        v62 = v63;
      }

      if (v62)
      {
        v66 = 4;
      }

      else
      {
        v66 = 0;
      }

      v67 = v66 | v64;
      v68 = v67 | v57;
      if (v68 == 9 || v68 == 6)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }

      v71 = v70 + v50;
      if (v68)
      {
        v72 = v68 == 15;
      }

      else
      {
        v72 = 1;
      }

      if (!v72)
      {
        v50 = v71;
      }

      v57 = 2 * v67;
      ++v58;
    }

    while (v54 != v58);
    ++v49;
    v53 = v56;
    v56 += v38;
  }

  while (v49 != v55);
  v73 = 0;
  v74 = vcvtms_s32_f32((v41 * 4.0) * 255.0);
  *(v31 + 44) = ((v115 - (v48 + v46)) / v50) < 4.5;
  v114 = v29;
  v110 = v74;
  v112 = v31;
  while (2)
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    *(v31 + 92) = 0;
    v79 = v73 + -0.5;
    v80 = v73 + 0.5;
    v81 = v51;
    v82 = v51;
    v111 = v73;
    do
    {
      v83 = v82;
      v84 = v81;
      v82 = v51;
      if (v73)
      {
        v82 = v51;
        if (v38 != v78)
        {
          v82 = v113[v78];
        }
      }

      v81 = v51;
      if (v73 != v39)
      {
        v81 = v51;
        if (v38 != v78)
        {
          v81 = v114[v78];
        }
      }

      v85 = v83 + v84 + v82 + v81;
      if (a2)
      {
        v86 = v82 <= v52;
        v87 = v81 <= v52;
        v88 = v85 <= v74;
      }

      else
      {
        v86 = v82 >= v52;
        v87 = v81 >= v52;
        v88 = v85 >= v74;
      }

      if (v86)
      {
        v89 = 4;
      }

      else
      {
        v89 = 0;
      }

      v90 = v77 | v87 | v89;
      if (v90 && v90 != 15)
      {
        v91 = 0.0;
        v92 = 0.0;
        if (v75 != v86)
        {
          v92 = -(v83 - (v41 * 255.0)) / (v82 - v83);
        }

        if (v75 != v76)
        {
          v91 = -(v83 - (v41 * 255.0)) / (v84 - v83);
        }

        v93 = 0.0;
        v94 = 0.0;
        if (v87 != v86)
        {
          v94 = -(v82 - (v41 * 255.0)) / (v81 - v82);
        }

        if (v76 != v87)
        {
          v93 = -(v84 - (v41 * 255.0)) / (v81 - v84);
        }

        v95 = v78 + -0.5;
        v96 = v95 + v92;
        v97 = v79 + v91;
        v98 = v79 + v94;
        v99 = v95 + v93;
        v116 = v86;
        switch(v90)
        {
          case 2:
          case 13:
            v100 = actionD(v112, v78 + -0.5, v97, v95 + v93, v80);
            goto LABEL_123;
          case 3:
          case 12:
            v100 = actionE(v112, v78 + -0.5, v97, v78 + 0.5, v79 + v94);
            goto LABEL_123;
          case 4:
          case 11:
            goto LABEL_122;
          case 5:
          case 10:
            v100 = actionC(v112, v95 + v92, v79, v95 + v93, v80);
            goto LABEL_123;
          case 6:
            if (!v88)
            {
              goto LABEL_121;
            }

            if (actionA(v112, v95 + v92, v79, v95, v97))
            {
              goto LABEL_119;
            }

            goto LABEL_127;
          case 7:
          case 8:
            v100 = actionA(v112, v95 + v92, v79, v95, v97);
            goto LABEL_123;
          case 9:
            if (v88)
            {
LABEL_121:
              if (!actionD(v112, v78 + -0.5, v97, v95 + v93, v80))
              {
                goto LABEL_127;
              }

LABEL_122:
              v100 = actionB(v112, v96, v79, v78 + 0.5, v98);
            }

            else
            {
              if (!actionA(v112, v95 + v92, v79, v95, v97))
              {
                goto LABEL_127;
              }

LABEL_116:
              v101 = v112;
              v102 = v78 + 0.5;
              v103 = v98;
              v104 = v99;
              v105 = v80;
              v106 = 0;
LABEL_120:
              v100 = actionF(v101, v106, v102, v103, v104, v105);
            }

LABEL_123:
            v86 = v116;
            v74 = v110;
            v73 = v111;
            if (v100)
            {
              goto LABEL_124;
            }

LABEL_127:
            printf(" ***** %s in autoTrace\n", "errors during bitmapToPolygons");
            termAutoTraceEnvironment(v112);
            v36 = cf;
            break;
          case 14:
LABEL_119:
            v101 = v112;
            v102 = v78 + 0.5;
            v103 = v98;
            v104 = v99;
            v105 = v80;
            v106 = 1;
            goto LABEL_120;
          default:
            goto LABEL_116;
        }

        goto LABEL_18;
      }

LABEL_124:
      v77 = (2 * v90) & 0xA;
      ++v78;
      v75 = v86;
      v76 = v87;
    }

    while (v78 <= v38);
    v31 = v112;
    v107 = *(v112 + 96);
    *(v112 + 96) = *(v112 + 112);
    *(v112 + 112) = v107;
    *(v112 + 112) = 0;
    ++v73;
    v113 = v114;
    v114 += v38;
    if (v73 <= v39)
    {
      continue;
    }

    break;
  }

  CFRelease(cf);
  free(v109);
  v19 = *(v112 + 48);
  *(v112 + 48) = 0;
  termAutoTraceEnvironment(v112);
  return v19;
}

BOOL initOpenEndList(void *a1)
{
  v2 = malloc_type_malloc(0xFA0uLL, 0x100004090D0E795uLL);
  a1[1] = v2;
  if (v2)
  {
    *a1 = 0x1F400000000;
  }

  else
  {
    printf(" ***** %s in autoTrace\n", "could not allocate extract polygons open end list");
  }

  return v2 != 0;
}

void termPolygonList(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 56) >= 1)
  {
    v3 = 0;
    v4 = v2 + 1;
    do
    {
      v5 = *v4;
      v4 += 4;
      free(v5);
      ++v3;
    }

    while (v3 < *(a1 + 56));
    v2 = *(a1 + 64);
  }

  free(v2);
}

void termAutoTraceEnvironment(uint64_t a1)
{
  freeAutoTraceStructures(a1);
  termPolygonList(a1);
  free(*(a1 + 104));
  free(*(a1 + 120));
  v2 = *(a1 + 192);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v3 = *(a1 + 208);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v4 = *(a1 + 224);
  if (v4)
  {
    free(v4);
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v5 = *(a1 + 240);
  if (v5)
  {
    free(v5);
  }

  free(a1);
}

float *actionF(uint64_t a1, int a2, float a3, float a4, float a5, float a6)
{
  v12 = *(a1 + 72);
  if (v12 == -1)
  {
    v14 = *(a1 + 56);
    v15 = *(a1 + 60);
    if (v14 >= v15)
    {
      v17 = malloc_type_malloc(32 * v15 + 3200, 0x1020040F48FCA59uLL);
      if (!v17)
      {
        v23 = "could not extend extract polygons list";
        goto LABEL_18;
      }

      v16 = v17;
      memmove(v17, *(a1 + 64), 32 * *(a1 + 60));
      *(a1 + 60) += 100;
      free(*(a1 + 64));
      *(a1 + 64) = v16;
      v14 = *(a1 + 56);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    v13 = v16 + 32 * v14;
    *(a1 + 56) = v14 + 1;
  }

  else
  {
    v13 = *(a1 + 64) + 32 * v12;
    *(a1 + 72) = *(v13 + 24);
  }

  v18 = malloc_type_malloc(0x190uLL, 0x100004000313F17uLL);
  *(v13 + 8) = v18;
  if (!v18)
  {
    v23 = "could not allocate extract polygons point list";
    goto LABEL_18;
  }

  *v13 = 0x3200000000;
  *(v13 + 16) = 25;
  *(v13 + 20) = 0;
  *(v13 + 24) = -2;
  v19 = *(a1 + 64);
  result = addPointAtEnd(v13);
  if (result)
  {
    v21 = result;
    result = addPointAtEnd(v13);
    if (result)
    {
      if (a2)
      {
        *v21 = a5;
        v21[1] = a6;
        if (*(a1 + 80) != 1)
        {
          v22 = 0;
          a5 = a3;
          a6 = a4;
          goto LABEL_21;
        }
      }

      else
      {
        *v21 = a3;
        v21[1] = a4;
        if ((*(a1 + 80) & 1) == 0)
        {
          v22 = 1;
LABEL_21:
          *(a1 + 80) = 1;
          v24 = (v13 - v19) >> 5;
          *(a1 + 84) = v24;
          *(a1 + 88) = v22;
          *result = a5;
          result[1] = a6;
          result = newOpenEnd((a1 + 112));
          if (result)
          {
            *result = v24;
            *(result + 4) = a2 == 1;
            return 1;
          }

          return result;
        }
      }

      v23 = "attempt to leave an open left end when a left end is already open";
LABEL_18:
      printf(" ***** %s in autoTrace\n", v23);
      return 0;
    }
  }

  return result;
}

uint64_t actionD(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    v16 = "attempt to connect to a left end when there is no left end open";
LABEL_16:
    printf(" ***** %s in autoTrace\n", v16);
    return 0;
  }

  v8 = *(a1 + 84);
  v9 = *(a1 + 88);
  v10 = *(a1 + 64) + 32 * v8;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  if (v9 == 1)
  {
    v13 = (v11 + 8 * v12);
    if (*v13 != a2 || v13[1] != a3)
    {
LABEL_15:
      v16 = "left end point does not match connected point";
      goto LABEL_16;
    }

    result = addPointAtStart(v10);
    if (!result)
    {
      return result;
    }

    goto LABEL_19;
  }

  v17 = v11 + 8 * (*v10 + v12);
  if (*(v17 - 8) != a2 || *(v17 - 4) != a3)
  {
    goto LABEL_15;
  }

  result = addPointAtEnd(v10);
  if (result)
  {
LABEL_19:
    *result = a4;
    *(result + 4) = a5;
    *(a1 + 80) = 0;
    result = newOpenEnd((a1 + 112));
    if (result)
    {
      *result = v8;
      *(result + 4) = v9;
      return 1;
    }
  }

  return result;
}

uint64_t actionE(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    v16 = "attempt to connect to a left end when there is no left end open";
LABEL_16:
    printf(" ***** %s in autoTrace\n", v16);
    return 0;
  }

  v8 = *(a1 + 84);
  v9 = *(a1 + 88);
  v10 = *(a1 + 64) + 32 * v8;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  if (v9 == 1)
  {
    v13 = (v11 + 8 * v12);
    if (*v13 != a2 || v13[1] != a3)
    {
LABEL_15:
      v16 = "left end point does not match connected point";
      goto LABEL_16;
    }

    result = addPointAtStart(v10);
    if (!result)
    {
      return result;
    }

LABEL_19:
    *result = a4;
    *(result + 4) = a5;
    result = 1;
    *(a1 + 80) = 1;
    *(a1 + 84) = v8;
    *(a1 + 88) = v9;
    return result;
  }

  v17 = v11 + 8 * (*v10 + v12);
  if (*(v17 - 8) != a2 || *(v17 - 4) != a3)
  {
    goto LABEL_15;
  }

  result = addPointAtEnd(v10);
  if (result)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t actionB(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (*(a1 + 80) == 1)
  {
    v5 = "no connection to open left end";
LABEL_16:
    printf(" ***** %s in autoTrace\n", v5);
    return 0;
  }

  v9 = *(a1 + 92);
  v10 = (*(a1 + 104) + 8 * v9);
  *(a1 + 92) = v9 + 1;
  v11 = *v10;
  v12 = *(v10 + 4);
  v13 = *(a1 + 64) + 32 * v11;
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  if (v12 == 1)
  {
    v16 = (v14 + 8 * v15);
    if (*v16 != a2 || v16[1] != a3)
    {
LABEL_15:
      v5 = "top open end point does not match connected point";
      goto LABEL_16;
    }

    result = addPointAtStart(v13);
    if (!result)
    {
      return result;
    }

LABEL_19:
    *result = a4;
    *(result + 4) = a5;
    result = 1;
    *(a1 + 80) = 1;
    *(a1 + 84) = v11;
    *(a1 + 88) = v12;
    return result;
  }

  v19 = v14 + 8 * (*v13 + v15);
  if (*(v19 - 8) != a2 || *(v19 - 4) != a3)
  {
    goto LABEL_15;
  }

  result = addPointAtEnd(v13);
  if (result)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t actionC(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (*(a1 + 80) == 1)
  {
    v5 = "no connection to open left end";
LABEL_16:
    printf(" ***** %s in autoTrace\n", v5);
    return 0;
  }

  v9 = *(a1 + 92);
  v10 = (*(a1 + 104) + 8 * v9);
  *(a1 + 92) = v9 + 1;
  v11 = *v10;
  v12 = *(v10 + 4);
  v13 = *(a1 + 64) + 32 * v11;
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  if (v12 == 1)
  {
    v16 = (v14 + 8 * v15);
    if (*v16 != a2 || v16[1] != a3)
    {
LABEL_15:
      v5 = "top open end point does not match connected point";
      goto LABEL_16;
    }

    result = addPointAtStart(v13);
    if (!result)
    {
      return result;
    }

    goto LABEL_19;
  }

  v19 = v14 + 8 * (*v13 + v15);
  if (*(v19 - 8) != a2 || *(v19 - 4) != a3)
  {
    goto LABEL_15;
  }

  result = addPointAtEnd(v13);
  if (result)
  {
LABEL_19:
    *result = a4;
    *(result + 4) = a5;
    *(a1 + 80) = 0;
    result = newOpenEnd((a1 + 112));
    if (result)
    {
      *result = v11;
      *(result + 4) = v12;
      return 1;
    }
  }

  return result;
}

uint64_t actionA(void *a1, float a2, float a3, float a4, float a5)
{
  if ((a1[10] & 1) == 0)
  {
    v17 = "attempt to connect to a left end when there is no left end open";
LABEL_13:
    printf(" ***** %s in autoTrace\n", v17);
    return 0;
  }

  v8 = *(a1 + 23);
  v9 = (a1[13] + 8 * v8);
  *(a1 + 23) = v8 + 1;
  v10 = *v9;
  v11 = *(v9 + 4);
  v12 = (a1[8] + 32 * v10);
  v13 = *(v12 + 1);
  v14 = v12[4];
  if (v11 == 1)
  {
    v15 = &v13[8 * v14];
    v16 = v15 + 1;
  }

  else
  {
    v18 = &v13[8 * *v12 + 8 * v14];
    v15 = (v18 - 8);
    v16 = (v18 - 4);
  }

  if (*v15 != a2 || *v16 != a3)
  {
    v17 = "top open end point does not match connected point";
    goto LABEL_13;
  }

  if (*(a1 + 88) == v11)
  {
    v17 = "polygon front/back ends should be opposite on closure";
    goto LABEL_13;
  }

  if (*(a1 + 21) == v10)
  {
    if (*(a1 + 88))
    {
      v21 = &v13[8 * v14];
      v22 = v21 + 1;
    }

    else
    {
      v24 = &v13[8 * *v12 + 8 * v14];
      v21 = (v24 - 8);
      v22 = (v24 - 4);
    }

    if (*v21 != a4 || *v22 != a5)
    {
      v17 = "left end point does not match connected point";
      goto LABEL_13;
    }

    v26 = *v12;
    v27 = malloc_type_malloc(8 * v26, 0x100004000313F17uLL);
    if (!v27)
    {
      v17 = "could not trim extract polygons point list";
      goto LABEL_13;
    }

    v28 = v27;
    memmove(v27, &v13[8 * v12[4]], 8 * v26);
    v12[4] = 0;
    v12[1] = v26;
    free(v13);
    *(v12 + 1) = v28;
    *(v12 + 20) = 1;
    v29 = *v12;
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = 0;
      v32 = v28;
      while (v30)
      {
        if ((((v32[1] - *(v32 - 1)) * (v32[1] - *(v32 - 1))) + ((*v32 - *(v32 - 2)) * (*v32 - *(v32 - 2)))) > 0.1)
        {
          if (v30 != v31)
          {
            v33 = *v32;
            goto LABEL_40;
          }

          goto LABEL_41;
        }

LABEL_42:
        ++v30;
        v32 += 2;
        if (v29 == v30)
        {
          goto LABEL_76;
        }
      }

      if (v31)
      {
        v33 = *v28;
LABEL_40:
        *&v28[2 * v31] = v33;
      }

LABEL_41:
      ++v31;
      goto LABEL_42;
    }

    v31 = 0;
LABEL_76:
    v63 = v31 - ((((v28[1] - v28[2 * v29 - 1]) * (v28[1] - v28[2 * v29 - 1])) + ((*v28 - v28[2 * v29 - 2]) * (*v28 - v28[2 * v29 - 2]))) <= 0.1);
    *v12 = v63;
    if (v63 <= 2)
    {
      goto LABEL_77;
    }

    v64 = *(v12 + 1);
    if (*(a1 + 44) == 1)
    {
      v65 = vdup_n_s32(0x3FDCED92u);
      v66 = vdup_n_s32(0xC025B22E);
      v67 = vdup_n_s32(0x3FEE76C9u);
      v68 = v63;
      v69 = *(v12 + 1);
      do
      {
        v70 = vrndm_f32(*v69);
        v71 = vsub_f32(*v69, v70);
        *v69++ = vadd_f32(v70, vmla_f32(vmla_f32(vmul_f32(v71, vmul_f32(v71, v66)), v71, vmul_f32(v71, vmul_f32(v71, v65))), v67, v71));
        --v68;
      }

      while (v68);
    }

    v72 = *v64;
    v73 = vsub_f32(v64[v63 - 1], *v64);
    v74 = 0.0;
    v75 = v63;
    do
    {
      v76 = *v64++;
      v77 = vsub_f32(v76, v72);
      v74 = v74 + vmul_lane_f32(vsub_f32(v77, v73), vadd_f32(v77, v73), 1).f32[0] * 0.5;
      v73 = v77;
      --v75;
    }

    while (v75);
    if (v63 <= *(a1 + 34))
    {
      a1[16] = v12;
    }

    else
    {
      freeAutoTraceStructures(a1);
      a1[16] = v12;
      v78 = *v12;
      a1[18] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[22] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[23] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[19] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[20] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      v79 = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[21] = v79;
      if (!a1[18] || !a1[22] || !a1[23] || !a1[19] || !a1[20] || !v79)
      {
        printf(" ***** %s in autoTrace\n", "could not allocate auto trace structures");
        freeAutoTraceStructures(a1);
        return 0;
      }

      *(a1 + 34) = v78;
    }

    if (debug_auto_trace == 1 && *a1 && !(a1[1])(*a1, 0, a1))
    {
      goto LABEL_77;
    }

    if (fabsf(v74) < 3.0)
    {
      CGPathMoveToPoint(a1[6], 0, **(v12 + 1), *(*(v12 + 1) + 4));
      LODWORD(v80) = *v12;
      if (*v12 >= 1)
      {
        v81 = 0;
        v82 = 1;
        do
        {
          LODWORD(v83) = ++v81;
          if (v82 >= v80)
          {
            v83 = v82 - v80;
            if (v83 >= v80)
            {
              v83 %= v80;
            }
          }

          v84 = (*(v12 + 1) + 8 * v83);
          CGPathAddLineToPoint(a1[6], 0, *v84, v84[1]);
          v80 = *v12;
          v210 = v82++ < v80;
        }

        while (v210);
      }

      CGPathCloseSubpath(a1[6]);
LABEL_77:
      v12[6] = *(a1 + 18);
      *(a1 + 18) = (v12 - a1[8]) >> 5;
      free(*(v12 + 1));
      *v12 = 0;
      *(v12 + 1) = 0;
      goto LABEL_78;
    }

    filterAngles(a1);
    if (!initInterestingPointList(a1 + 26))
    {
      v17 = "failing initInterestingPointList";
      goto LABEL_13;
    }

    v85 = a1[16];
    v86 = *(v85 + 1);
    v87 = *v85;
    if (!initInterestingPointList(a1 + 28))
    {
      goto LABEL_132;
    }

    LOBYTE(v329[1]) = 0;
    if (v87 >= 1)
    {
      v89 = 0;
      v90 = 0;
      LODWORD(v88) = 0;
      v91 = -1;
      do
      {
        v92 = 0;
        v93 = v89 + 1;
        if (v89 + 1 >= v87)
        {
          v94 = v87;
        }

        else
        {
          v94 = 0;
        }

        v95 = &v86[-2 * v94];
        if (vabds_f32(v95[3], v86[1]) >= 0.001)
        {
          if (vabds_f32(v95[2], *v86) < 0.001)
          {
            v92 = 1;
          }

          else
          {
            v92 = -1;
          }
        }

        if (v92 == v91)
        {
          v88 = (v88 + 1);
        }

        else
        {
          v96 = v93 - v94;
          if (v91 == 1)
          {
            addVerticalLine(a1, v90, v96, v88, a1 + 28, &v329[1]);
          }

          else if (!v91)
          {
            addHorizontalLine(a1, v90, v96, v88, a1 + 28, &v329[1]);
          }

          if (LOBYTE(v329[1]))
          {
            goto LABEL_132;
          }

          v88 = 1;
          v90 = v89;
          v91 = v92;
        }

        v86 += 2;
        ++v89;
      }

      while (v87 != v93);
      if (v91 == 1)
      {
        addVerticalLine(a1, v90, 0, v88, a1 + 28, &v329[1]);
      }

      else if (!v91)
      {
        addHorizontalLine(a1, v90, 0, v88, a1 + 28, &v329[1]);
      }
    }

    if (LOBYTE(v329[1]))
    {
LABEL_132:
      v17 = "failing findOrthogonalLines";
      goto LABEL_13;
    }

    if (*(a1 + 59) >= 1)
    {
      v97 = 0;
      v98 = 0;
      do
      {
        insertPairIntoInterestingPoints(a1, (a1[28] + v98), (a1[28] + v98 + 8), (a1 + 26), &v329[1]);
        if (LOBYTE(v329[1]))
        {
          goto LABEL_132;
        }

        v98 += 16;
        v97 += 2;
      }

      while (*(a1 + 59) > v97);
    }

    v99 = a1[28];
    if (v99)
    {
      free(v99);
    }

    a1[28] = 0;
    a1[29] = 0;
    if (debug_auto_trace == 1 && *a1)
    {
      (a1[1])(*a1, 1, a1, v88);
    }

    if (debug_auto_trace_syntax == 1)
    {
      checkSyntax(a1, "findOrthogonalLines");
    }

    v100 = *a1[16];
    if (v100 >= 1)
    {
      v101 = 0;
      v102 = a1[18];
      v103 = a1[22];
      do
      {
        if (v101)
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

        v105 = v101 + v104 - 1;
        v106 = v101 + 1;
        if (v101 + 1 >= v100)
        {
          v107 = v100;
        }

        else
        {
          v107 = 0;
        }

        v108 = v106 - v107;
        if (v105 <= 0)
        {
          v109 = v100;
        }

        else
        {
          v109 = 0;
        }

        v110 = *(v102 + 4 * (v105 + v109 - 1));
        v111 = -2.0;
        v112 = -1.0;
        v113 = 0.0;
        v114 = 0.0;
        while (1)
        {
          v115 = v110;
          v110 = *(v102 + 4 * v105);
          v116 = v110 - v115;
          v117 = rintf(v110 - v115);
          v118 = (v110 - v115) - v117;
          v119 = vabds_f32(v116, v117);
          if (v119 <= v112)
          {
            v120 = v113;
            if (v119 <= v111)
            {
              v118 = v114;
              v121 = v112;
              v119 = v111;
            }

            else
            {
              v121 = v112;
            }
          }

          else
          {
            v120 = v118;
            v118 = v113;
            v121 = v119;
            v119 = v112;
          }

          if (v105 == v108)
          {
            break;
          }

          v122 = v105 + 1;
          if (v122 >= v100)
          {
            v123 = v100;
          }

          else
          {
            v123 = 0;
          }

          v105 = v122 - v123;
          v113 = v120;
          v114 = v118;
          v112 = v121;
          v111 = v119;
        }

        *(v103 + 4 * v101++) = v120 + v118;
      }

      while (v106 != v100);
    }

    a1[25] = 100;
    v124 = malloc_type_malloc(0x4B0uLL, 0x10000403E1C8BA9uLL);
    a1[24] = v124;
    if (!v124)
    {
      v316 = "could not allocate corner list";
LABEL_491:
      printf(" ***** %s in autoTrace\n", v316);
      goto LABEL_492;
    }

    if (v100 < 1)
    {
      goto LABEL_387;
    }

    v125 = 0;
    v324 = vdup_n_s32(v100 >> 1);
    v326 = vdup_n_s32(-(v100 >> 1));
    v323 = vdup_n_s32(v100);
    while (1)
    {
      v126 = *a1[16];
      v127 = v125 - 2;
      v128 = v125 - 2 - v126;
      if ((v125 - 2) >= v126)
      {
        if (v128 >= v126)
        {
          v128 %= v126;
        }
      }

      else if (v125 > 1)
      {
        LODWORD(v128) = v125 - 2;
      }

      else
      {
        LODWORD(v128) = v127 + v126;
        if ((v127 + v126) < 0)
        {
          LODWORD(v128) = v125 - 2;
          if (v126)
          {
            v128 = (v127 + v126) % v126 + v126;
          }
        }
      }

      if (v125)
      {
        v129 = 0;
      }

      else
      {
        v129 = *a1[16];
      }

      v130 = v125 + v129 - 1;
      v131 = v125 + 1;
      if ((v125 + 1) >= v126)
      {
        v132 = *a1[16];
      }

      else
      {
        v132 = 0;
      }

      v133 = v131 - v132;
      v134 = v125 + 2 - v126;
      if (v134 >= v126)
      {
        LODWORD(v134) = v134 % v126;
      }

      if ((v125 + 2) < v126)
      {
        LODWORD(v134) = v125 + 2;
      }

      v135 = a1[22];
      v136 = fabsf(*(v135 + 4 * v128));
      v137 = fabsf(*(v135 + 4 * v130));
      v138 = fabsf(*(v135 + 4 * v125));
      v139 = fabsf(*(v135 + 4 * v133));
      if (v137 == v138 && v136 < v138 && v139 < v138)
      {
        v160 = v138 * 0.75;
        if (v136 <= v160)
        {
          v161 = v130;
        }

        else
        {
          v161 = v128;
        }

        if (v139 <= v160)
        {
          v162 = v125;
        }

        else
        {
          v162 = v131 - v132;
        }

        v143 = a1[18];
      }

      else
      {
        if (v137 >= v138 || v139 >= v138)
        {
          goto LABEL_385;
        }

        v143 = a1[18];
        v144 = *(v143 + 4 * v130);
        v145 = *(v143 + 4 * v128);
        v146 = v144 - v145;
        v147 = rintf(v144 - v145);
        v148 = vabds_f32(v144 - v145, v147);
        v149 = *(v143 + 4 * v125);
        v150 = v149 - v144;
        v151 = rintf(v149 - v144);
        v152 = vabds_f32(v149 - v144, v151);
        v153 = *(v143 + 4 * v133);
        v154 = v153 - v149;
        v155 = rintf(v154);
        v156 = vabds_f32(v154, v155);
        if (v156 > v152 || (v157 = v125, v148 > v152))
        {
          if (v148 <= v156)
          {
            v157 = v133;
          }

          else
          {
            v157 = v130;
          }
        }

        v158 = v125 - 3;
        v159 = v125 - 3 - v126;
        if ((v125 - 3) >= v126)
        {
          if (v159 >= v126)
          {
            LODWORD(v159) = v159 % v126;
          }
        }

        else
        {
          LODWORD(v159) = v125 - 3;
          if (v125 <= 2)
          {
            v159 = v158 + v126;
            if ((v158 + v126) < 0)
            {
              v159 = v159 % v126 + v126;
            }
          }
        }

        v206 = v146 - v147;
        v207 = v150 - v151;
        if (v157 == v130)
        {
          v208 = v145 - *(v143 + 4 * v159);
          v209 = v137 * 0.75;
          v210 = (v206 * (v208 - rintf(v208))) <= 0.0 || v136 <= v209;
          if (v210)
          {
            v161 = v130;
          }

          else
          {
            v161 = v128;
          }

          if ((v206 * v207) <= 0.0 || v138 <= v209)
          {
            v162 = v130;
          }

          else
          {
            v162 = v125;
          }
        }

        else
        {
          v212 = v154 - v155;
          if (v125 == v157)
          {
            v213 = v138 * 0.75;
            if ((v206 * v207) <= 0.0 || v137 <= v213)
            {
              v161 = v125;
            }

            else
            {
              v161 = v130;
            }

            if ((v207 * v212) <= 0.0 || v139 <= v213)
            {
              v162 = v125;
            }

            else
            {
              v162 = v133;
            }
          }

          else
          {
            if (v157 != v133)
            {
              goto LABEL_385;
            }

            v216 = fabsf(*(v135 + 4 * v134));
            v217 = *(v143 + 4 * v134) - v153;
            v218 = v217 - rintf(v217);
            v219 = v139 * 0.75;
            if ((v207 * v212) <= 0.0 || v138 <= v219)
            {
              v161 = v133;
            }

            else
            {
              v161 = v125;
            }

            if ((v212 * v218) <= 0.0 || v216 <= v219)
            {
              v162 = v133;
            }

            else
            {
              v162 = v134;
            }
          }
        }
      }

      if (v161 <= 0)
      {
        v163 = *a1[16];
      }

      else
      {
        v163 = 0;
      }

      v164 = *(v143 + 4 * v161);
      v165 = v164 - *(v143 + 4 * (v161 + v163 - 1));
      v166 = (v165 - rintf(v165)) + 0.0;
      for (i = v161; i != v162; v164 = *(v143 + 4 * i))
      {
        v168 = i + 1;
        if (v168 >= v126)
        {
          v169 = *a1[16];
        }

        else
        {
          v169 = 0;
        }

        i = v168 - v169;
        v170 = *(v143 + 4 * i) - v164;
        v166 = v166 + (v170 - rintf(v170));
      }

      v171 = v162;
      v172 = v162 + 1;
      v173 = v172 + v126;
      v174 = v161 + v126;
      v176 = 0.0;
      v177 = 5;
      v178 = 0.0;
      v179 = 0.0;
      v180 = 0.0;
      do
      {
        v181 = v178;
        v182 = v176;
        v183 = v161 + v177 - 6;
        if (v183 >= v126)
        {
          v175 = v161 - v126;
          v185 = v175 + v177 - 6;
          if (v185 >= v126)
          {
            v183 = v185 % v126;
          }

          else
          {
            LODWORD(v183) = v175 + v177 - 6;
          }
        }

        else if (v183 < 0)
        {
          v184 = v174 + v177 - 6;
          if (v184 >= 0)
          {
            LODWORD(v183) = v174 + v177 - 6;
          }

          if (v184 < 0)
          {
            v183 = v184 % v126 + v126;
          }
        }

        if (v183 <= 0)
        {
          v186 = *a1[16];
        }

        else
        {
          v186 = 0;
        }

        v187 = *(v143 + 4 * v183);
        v188 = *(v143 + 4 * (v183 + v186 - 1));
        if (v172 >= v126)
        {
          if (v172 - v126 >= v126)
          {
            LODWORD(v189) = v172;
          }

          else
          {
            LODWORD(v189) = v172 - v126;
          }

          if (v172 - v126 >= v126)
          {
            v189 = (v172 - v126) % v126;
          }
        }

        else
        {
          LODWORD(v189) = v172;
          if (v172 < 0)
          {
            LODWORD(v189) = v173 < 0 ? v172 : v173;
            if (v173 < 0)
            {
              v189 = v173 % v126 + v126;
            }
          }
        }

        v180 = v180 + ((v187 - v188) - rintf(v187 - v188));
        if (v189 <= 0)
        {
          v190 = *a1[16];
        }

        else
        {
          v190 = 0;
        }

        v191 = *(v143 + 4 * v189) - *(v143 + 4 * (v189 + v190 - 1));
        v179 = v179 + (v191 - rintf(v191));
        if (v177 == 3)
        {
          v178 = v180;
        }

        else
        {
          v178 = v181;
        }

        if (v177 == 3)
        {
          v176 = v179;
        }

        else
        {
          v176 = v182;
        }

        ++v173;
        ++v172;
        --v177;
      }

      while (v177);
      v192 = v161 - 4;
      v193 = v161 - 4;
      if (v161 - 4 >= v126)
      {
        v195 = v192 - v126;
        if (v193 - v126 >= v126)
        {
          v193 = v195 % v126;
        }

        else
        {
          v193 -= v126;
        }
      }

      else if (v161 <= 3)
      {
        v194 = v192 + v126;
        if (v193 + v126 < 0 == __OFADD__(v193, v126))
        {
          v193 += v126;
        }

        if (v194 < 0)
        {
          v193 = v194 % v126 + v126;
        }
      }

      v329[1] = 0.0;
      v328 = 0.0;
      if (LRLine(a1, v193, &v329[1], &v328))
      {
        v196 = v329[1];
        v197 = straightLineDistanceDeltaToleranceAtAngle(v329[1]);
        if (v162 >= v126)
        {
          v171 = v162 - v126 >= v126 ? (v162 - v126) % v126 : v162 - v126;
        }

        else if (v162 < 0)
        {
          v198 = v162 + v126;
          if (v198 < 0 == __OFADD__(v162, v126))
          {
            v171 = v162 + v126;
          }

          if (v198 < 0)
          {
            v171 = v198 % v126 + v126;
          }
        }

        v199 = v328;
        v329[0] = 0.0;
        if (LRLine(a1, v171, v329, &v328))
        {
          v200 = straightLineDistanceDeltaToleranceAtAngle(v196);
          if (vabds_f32(v196 - v329[0], rintf(v196 - v329[0])) >= 0.0625)
          {
            v201 = fabsf(v166);
            if (v201 >= 0.0625 && (v199 < v197 || fabsf(v180) < (v201 * 0.3) || (v166 * v180) < 0.0) && (v328 < v200 || fabsf(v179) < (v201 * 0.3) || (v166 * v179) < 0.0) && fabsf(v181) <= (v201 * 0.6) && fabsf(v182) <= (v201 * 0.6))
            {
              if (*(a1 + 16) == 1)
              {
                printf("corner %4d to %4d turn %7.2f rel. turn before %7.4f rel. turn after %7.4f\n", v161, v162, (v166 * 360.0), (v181 / v166), (v182 / v166));
              }

              v202 = *(a1 + 51);
              if (v202 < 1 || (v203 = a1[24] + 12 * v202, *(v203 - 8) <= v161) || *(v203 - 12) >= v161)
              {
                v204 = *(a1 + 50);
                if (v202 >= v204)
                {
                  v222 = malloc_type_malloc(12 * v204 + 1200, 0x10000403E1C8BA9uLL);
                  if (!v222)
                  {
                    v316 = "could not extend corner list";
                    goto LABEL_491;
                  }

                  v205 = v222;
                  memmove(v222, a1[24], 12 * *(a1 + 50));
                  *(a1 + 50) += 100;
                  free(a1[24]);
                  a1[24] = v205;
                  v202 = *(a1 + 51);
                }

                else
                {
                  v205 = a1[24];
                }

                v223 = &v205[12 * v202];
                v223->i32[0] = v161;
                v223->i32[1] = v162;
                v223[1].i32[0] = -100;
                *(a1 + 51) = v202 + 1;
                if (!findCorner(a1, v125, 0))
                {
                  v224 = vsub_s32(*v223, vdup_n_s32(v125));
                  v225 = vabs_s32(vadd_s32(vbsl_s8(vcgt_s32(v326, v224), v323, vneg_s32(vand_s8(v323, vcgt_s32(v224, v324)))), v224));
                  if (vcgt_u32(vdup_lane_s32(v225, 1), v225).u8[0])
                  {
                    LODWORD(v125) = *v223;
                  }

                  else
                  {
                    LODWORD(v125) = HIDWORD(*v223);
                  }
                }

                v223[1].i32[0] = v125;
                v226 = addInterestingPointAtIndex(v125, 1, (a1 + 26));
                if (!v226)
                {
                  goto LABEL_492;
                }

                v227 = v226;
                if (*(v226 + 1) == 1)
                {
                  v228 = a1[26];
                  v229 = (v227 - v228) >> 3;
                  v230 = v229 - 1;
                  v231 = *(a1 + 55);
                  v232 = v231;
                  if (v229 <= v231)
                  {
                    if (v229 <= 0)
                    {
                      LODWORD(v233) = v230 + v231;
                      if (v230 + v231 < 0)
                      {
                        LODWORD(v233) = v229 - 1;
                        if (v231)
                        {
                          v233 = (v230 + v231) % v231 + v231;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v233) = v229 - 1;
                    }
                  }

                  else
                  {
                    LODWORD(v233) = v230 - v231;
                    if (v230 - v231 >= v231)
                    {
                      LODWORD(v233) = v229 - 1;
                      if (v231)
                      {
                        v233 = (v230 - v231) % v231;
                      }
                    }
                  }

                  v234 = v229 + 1;
                  v235 = v229 + 1 - v231;
                  if (v229 + 1 >= v231)
                  {
                    LODWORD(v229) = v229 + 1 - v231;
                    if (v235 >= v231)
                    {
                      LODWORD(v229) = v234;
                      if (v231)
                      {
                        v229 = v235 % v231;
                      }
                    }
                  }

                  else if (v229 > -2)
                  {
                    LODWORD(v229) = v229 + 1;
                  }

                  else
                  {
                    LODWORD(v229) = v234 + v231;
                    if (v234 + v231 < 0)
                    {
                      LODWORD(v229) = v234;
                      if (v231)
                      {
                        v229 = (v234 + v231) % v231 + v231;
                      }
                    }
                  }

                  v236 = &v228[8 * v233];
                  if ((v236[4] & 2) != 0)
                  {
                    v237 = &v228[8 * v229];
                    if ((v237[4] & 4) != 0)
                    {
                      *(v227 + 1) = 0;
                      if (((v100 & ((*v227 - *v236) >> 31)) + *v227 - *v236) >= ((v100 & ((*v237 - *v227) >> 31)) + *v237 - *v227))
                      {
                        v239 = *(v237 + 1);
                        if (v229)
                        {
                          *(v237 + 1) = v239 | 1;
                          *v237 = v223->i32[0];
                        }

                        else
                        {
                          *(v227 + 1) = v239;
                          *(v237 + 1) = 0;
                        }
                      }

                      else
                      {
                        v238 = *(v236 + 1);
                        if (v227 == v228)
                        {
                          *(v227 + 1) = v238;
                          *(v236 + 1) = 0;
                        }

                        else
                        {
                          *(v236 + 1) = v238 | 1;
                          *v236 = v223->i32[1];
                        }
                      }
                    }
                  }

                  if (v231 >= 1)
                  {
                    v240 = 8 * v231;
                    v241 = v231;
                    do
                    {
                      if (!*(a1[26] + 8 * (v241 - 1) + 4))
                      {
                        if (v241 < v231)
                        {
                          v242 = v240;
                          v243 = v241;
                          do
                          {
                            *(a1[26] + v242 - 8) = *(a1[26] + v242);
                            LODWORD(v231) = *(a1 + 55);
                            ++v243;
                            v242 += 8;
                          }

                          while (v231 > v243);
                        }

                        LODWORD(v231) = v231 - 1;
                        *(a1 + 55) = v231;
                      }

                      v240 -= 8;
                      v210 = v241-- <= 1;
                    }

                    while (!v210);
                    v228 = a1[26];
                    v232 = v231;
                  }

                  qsort(v228, v232, 8uLL, ipCompare);
                }
              }
            }
          }
        }
      }

LABEL_385:
      v125 = v131;
      if (v131 == v100)
      {
        v124 = a1[24];
LABEL_387:
        qsort(v124, *(a1 + 51), 0xCuLL, cornerCompare);
        v244 = *(a1 + 51);
        if (v244 > 1)
        {
          v245 = 0;
          v246 = v100 >> 1;
          do
          {
            v247 = v245++;
            LODWORD(v248) = v245;
            if (v245 >= v244)
            {
              v248 = v245 - v244;
              if (v248 >= v244)
              {
                v248 %= v244;
              }
            }

            v249 = a1[24];
            v250 = (v249 + 12 * v247);
            v251 = (v249 + 12 * v248);
            v252 = *v250;
            v253 = v250[1];
            v254 = v252 - v246;
            v255 = v252 + v246;
            if (v252 + v246 >= v253)
            {
              v256 = 0;
            }

            else
            {
              v256 = v100;
            }

            v257 = v253 - v256;
            if (v254 > v253)
            {
              v258 = v253 + v100;
            }

            else
            {
              v258 = v257;
            }

            v260 = *v251;
            v259 = v251[1];
            if (v255 >= *v251)
            {
              v261 = 0;
            }

            else
            {
              v261 = v100;
            }

            v262 = v260 - v261;
            if (v254 > v260)
            {
              v263 = v260 + v100;
            }

            else
            {
              v263 = v262;
            }

            if (v255 >= v259)
            {
              v264 = 0;
            }

            else
            {
              v264 = v100;
            }

            v265 = v259 - v264;
            if (v254 > v259)
            {
              v266 = v259 + v100;
            }

            else
            {
              v266 = v265;
            }

            if (v263 <= v258 && v266 >= v252)
            {
              v268 = v251[2];
              v269 = v248 + 1;
              if (v248 + 1 < v244)
              {
                v270 = v269;
                v271 = 12 * v269;
                do
                {
                  v272 = a1[24];
                  v248 = v272 + 12 * v248;
                  v273 = (v272 + v271);
                  v274 = *v273;
                  *(v248 + 8) = *(v273 + 2);
                  *v248 = v274;
                  LODWORD(v248) = v270++;
                  v271 += 12;
                }

                while (v270 < *(a1 + 51));
                v244 = *(a1 + 51);
              }

              *(a1 + 51) = --v244;
              v275 = *(a1 + 55);
              if (v275 >= 1)
              {
                v276 = (a1[26] + 4);
                do
                {
                  if (*(v276 - 1) == v268)
                  {
                    *v276 &= ~1u;
                  }

                  v276 += 2;
                  --v275;
                }

                while (v275);
              }
            }
          }

          while (v245 < v244);
        }

        v277 = *(a1 + 55);
        if (v277 >= 1)
        {
          v278 = 8 * v277;
          v279 = *(a1 + 55);
          do
          {
            if (!*(a1[26] + 8 * (v279 - 1) + 4))
            {
              if (v279 < v277)
              {
                v280 = v278;
                v281 = v279;
                do
                {
                  *(a1[26] + v280 - 8) = *(a1[26] + v280);
                  LODWORD(v277) = *(a1 + 55);
                  ++v281;
                  v280 += 8;
                }

                while (v277 > v281);
              }

              LODWORD(v277) = v277 - 1;
              *(a1 + 55) = v277;
            }

            v278 -= 8;
            v210 = v279-- <= 1;
          }

          while (!v210);
        }

        if (v277 || addInterestingPointAtIndex(0, 64, (a1 + 26)))
        {
          if (debug_auto_trace_syntax == 1)
          {
            checkSyntax(a1, "findCorners");
          }

          if (debug_auto_trace == 1 && *a1)
          {
            (a1[1])(*a1, 2, a1);
          }

          *v329 = 0;
          v282 = *a1[16];
          if (v282 >= 1)
          {
            v283 = 0;
            v284 = a1[20];
            v285 = a1[19] - 4;
            v286 = v285;
            do
            {
              v287 = *(v286 + 4);
              v286 += 4;
              v288 = v287;
              if (v283)
              {
                v289 = 0;
              }

              else
              {
                v289 = v282;
              }

              *v284++ = (*(v285 + 4 * v289) - v288) - rintf(*(v285 + 4 * v289) - v288);
              --v283;
              v285 = v286;
            }

            while (-v282 != v283);
          }

          if (initInterestingPointList(a1 + 28))
          {
            LODWORD(v290) = *(a1 + 55);
            if (v290 >= 1)
            {
              v291 = 0;
              v292 = 0;
              v325 = v282 >> 1;
              v293 = 1;
              do
              {
                LODWORD(v294) = ++v292;
                if (v293 >= v290)
                {
                  v294 = v293 - v290;
                  if (v294 >= v290)
                  {
                    v294 %= v290;
                  }
                }

                v295 = a1[26];
                if ((*(v295 + v291 + 4) & 1) == 0)
                {
                  goto LABEL_454;
                }

                v296 = v295 + 8 * v294;
                if ((*(v296 + 4) & 1) == 0)
                {
                  goto LABEL_454;
                }

                v297 = *(v295 + v291);
                v298 = *v296;
                Corner = findCorner(a1, v297, 1);
                if (!Corner)
                {
                  goto LABEL_489;
                }

                v300 = Corner[1];
                if (*(v296 + 4))
                {
                  v327 = Corner[1];
                  v302 = findCorner(a1, *v296, 1);
                  v300 = v327;
                  if (!v302)
                  {
                    goto LABEL_489;
                  }

                  v301 = *v302;
                }

                else
                {
                  v301 = v298;
                }

                if (v298 <= v297)
                {
                  v303 = v300 - *(v295 + v291);
                  if (v303 < 0)
                  {
                    v303 = *(v295 + v291) - v300;
                  }

                  if (v303 <= v325)
                  {
                    v304 = v301 - *v296;
                    if (v304 < 0)
                    {
                      v304 = *v296 - v301;
                    }

                    if (v304 <= v325)
                    {
                      if (v301 <= v300 - v282)
                      {
                        goto LABEL_454;
                      }
                    }

                    else if (v301 <= v300)
                    {
                      goto LABEL_454;
                    }
                  }

                  else if (v301 <= v300)
                  {
                    goto LABEL_454;
                  }
                }

                else if (v301 <= v300)
                {
                  goto LABEL_454;
                }

                v305 = v301 - v300;
                if (v301 <= v300)
                {
                  v306 = v282;
                }

                else
                {
                  v306 = 0;
                }

                v307 = v306 + v305;
                if (v306 + v305 < 1)
                {
                  goto LABEL_454;
                }

                v308 = v300;
                v309 = v301;
                computeAngleSumAndRange(a1, v300, v301, &v329[1], v329);
                *&v310 = fabsf(v329[1]);
                if (v307 > 0xF || *&v310 >= 0.000027778 || v329[0] >= 0.000027778)
                {
                  if (v307 < 0x15)
                  {
                    goto LABEL_454;
                  }

                  *(&v310 + 1) = v329[0] / fmaxf(*&v310, 0.01);
                  v314 = vdupq_lane_s64(v310, 0);
                  v315.i32[0] = vmovn_s32(vcgtq_f32(xmmword_18439C9D0, v314)).u32[0];
                  v315.i32[1] = vmovn_s32(vcgtq_f32(v314, xmmword_18439C9D0)).i32[1];
                  if ((~vaddvq_s32(vandq_s8(vmovl_s16(v315), xmmword_18439C7E0)) & 0xF) != 0)
                  {
                    goto LABEL_454;
                  }

                  if (!appendInterestingPointAtIndex(v308, 8, a1 + 28))
                  {
                    goto LABEL_489;
                  }

                  v311 = (a1 + 28);
                  v312 = v309;
                  v313 = 16;
                }

                else
                {
                  if (!appendInterestingPointAtIndex(v308, 2, a1 + 28))
                  {
                    goto LABEL_489;
                  }

                  v311 = (a1 + 28);
                  v312 = v309;
                  v313 = 4;
                }

                if (!appendInterestingPointAtIndex(v312, v313, v311))
                {
                  goto LABEL_489;
                }

LABEL_454:
                v290 = *(a1 + 55);
                v291 += 8;
                v210 = v293++ < v290;
              }

              while (v210);
            }

            if (*(a1 + 59) < 1)
            {
LABEL_497:
              v319 = a1[28];
              if (v319)
              {
                free(v319);
              }

              a1[28] = 0;
              a1[29] = 0;
              if (debug_auto_trace_syntax == 1)
              {
                checkSyntax(a1, "findShortLinesAndShallowCurves");
              }

              if (debug_auto_trace == 1 && *a1)
              {
                (a1[1])(*a1, 3, a1);
              }

              if ((findNonOrthogonalLines(a1) & 1) == 0)
              {
                v17 = "failing findNonOrthogonalLines";
                goto LABEL_13;
              }

              if ((findInflectionPoints(a1) & 1) == 0)
              {
                v17 = "failing findInflectionPoints";
                goto LABEL_13;
              }

              if ((cutUpCurves(a1) & 1) == 0)
              {
                v17 = "failing cutUpCurves";
                goto LABEL_13;
              }

              if ((coalesceStraightLines(a1) & 1) == 0)
              {
                v17 = "failing coalesceStraightLines";
                goto LABEL_13;
              }

              if (!extractCurveRecords(a1))
              {
                v17 = "failing extractCurveRecords";
                goto LABEL_13;
              }

              computeCurveTangents(a1);
              computePoints(a1);
              if ((findSubdividedCurves(a1, v320) & 1) == 0)
              {
                v17 = "failing findSubdividedCurves";
                goto LABEL_13;
              }

              convertToPaths(a1);
              v321 = a1[26];
              if (v321)
              {
                free(v321);
              }

              a1[26] = 0;
              a1[27] = 0;
              v322 = a1[30];
              if (v322)
              {
                free(v322);
              }

              a1[30] = 0;
              a1[31] = 0;
              goto LABEL_77;
            }

            v317 = 0;
            v318 = 0;
            LOBYTE(v328) = 0;
            while (1)
            {
              insertPairIntoInterestingPoints(a1, (a1[28] + v318), (a1[28] + v318 + 8), (a1 + 26), &v328);
              if (LOBYTE(v328))
              {
                break;
              }

              v318 += 16;
              v317 += 2;
              if (*(a1 + 59) <= v317)
              {
                goto LABEL_497;
              }
            }
          }

LABEL_489:
          v17 = "failing findShortLinesAndShallowCurves";
          goto LABEL_13;
        }

LABEL_492:
        v17 = "failing findCorners";
        goto LABEL_13;
      }
    }
  }

  v23 = (a1[8] + 32 * v10);
  if (*(v9 + 4))
  {
    result = addPointAtStart(v23);
  }

  else
  {
    result = addPointAtEnd(v23);
  }

  if (result)
  {
    *result = a4;
    *(result + 4) = a5;
    if (*(v9 + 4) == *(a1 + 88))
    {
      v17 = "join polygons occurs at wrong ends";
      goto LABEL_13;
    }

    v34 = a1[8];
    v35 = *v9;
    v36 = (v34 + 32 * v35);
    v37 = *(v36 + 1);
    v38 = v36[4];
    if (*(v9 + 4))
    {
      v39 = (v37 + 8 * v38);
      v40 = v39 + 1;
    }

    else
    {
      v41 = v37 + 8 * (*v36 + v38);
      v39 = (v41 - 8);
      v40 = (v41 - 4);
    }

    v42 = *v39;
    v43 = *(a1 + 21);
    v44 = (v34 + 32 * v43);
    v45 = *(v44 + 1);
    v46 = v44[4];
    if (*(a1 + 88))
    {
      v47 = (v45 + 8 * v46);
      v48 = v47 + 1;
    }

    else
    {
      v49 = v45 + 8 * (*v44 + v46);
      v47 = (v49 - 8);
      v48 = (v49 - 4);
    }

    if (v42 != *v47 || *v40 != *v48)
    {
      v17 = "join polygons point does not match connected point";
      goto LABEL_13;
    }

    v51 = *v44 + *v36;
    v52 = v51 + 99;
    v53 = malloc_type_malloc(8 * (v51 + 99), 0x100004000313F17uLL);
    if (!v53)
    {
      v17 = "could not extend extract polygons point list";
      goto LABEL_13;
    }

    v54 = v53;
    v55 = v51 - 1;
    v56 = *(v9 + 4);
    if (*(v9 + 4))
    {
      v57 = v44;
    }

    else
    {
      v57 = v36;
    }

    if (v56)
    {
      v58 = v36;
    }

    else
    {
      v58 = v44;
    }

    memmove(v53 + 400, (*(v57 + 1) + 8 * v57[4]), 8 * *v57 - 8);
    memmove(&v54[8 * *v57 + 392], (*(v58 + 1) + 8 * v58[4]), 8 * *v58);
    v44[4] = 50;
    *v44 = v55;
    v44[1] = v52;
    free(*(v44 + 1));
    *(v44 + 1) = v54;
    v36[6] = *(a1 + 18);
    *(a1 + 18) = (v36 - a1[8]) >> 5;
    free(*(v36 + 1));
    *v36 = 0;
    *(v36 + 1) = 0;
    v59 = *(a1 + 24);
    if (v59 >= 1)
    {
      v60 = a1[13];
      do
      {
        if (*v60 == v35)
        {
          *v60 = v43;
        }

        v60 += 2;
        --v59;
      }

      while (v59);
    }

    v61 = *(a1 + 28);
    if (v61 >= 1)
    {
      v62 = a1[15];
      do
      {
        if (*v62 == v35)
        {
          *v62 = v43;
        }

        v62 += 2;
        --v61;
      }

      while (v61);
    }

    if (*(a1 + 21) == v35)
    {
      *(a1 + 21) = v43;
    }

LABEL_78:
    *(a1 + 80) = 0;
    return 1;
  }

  return result;
}

uint64_t addPointAtStart(int *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(a1 + 1);
LABEL_5:
    result = &v3[8 * v2 - 8];
    ++*a1;
    a1[4] = v2 - 1;
    return result;
  }

  v4 = malloc_type_malloc(8 * *a1 + 800, 0x100004000313F17uLL);
  if (v4)
  {
    v3 = v4;
    memmove(v4 + 400, (*(a1 + 1) + 8 * a1[4]), 8 * *a1);
    a1[4] = 50;
    a1[1] = *a1 + 100;
    free(*(a1 + 1));
    *(a1 + 1) = v3;
    v2 = a1[4];
    goto LABEL_5;
  }

  printf(" ***** %s in autoTrace\n", "could not extend extract polygons point list");
  return 0;
}

char *addPointAtEnd(int *a1)
{
  v2 = *a1;
  v3 = *a1 + a1[4];
  if (v3 != a1[1])
  {
    v5 = *(a1 + 1);
    goto LABEL_5;
  }

  v4 = malloc_type_malloc(8 * v2 + 800, 0x100004000313F17uLL);
  if (v4)
  {
    v5 = v4;
    memmove(v4 + 400, (*(a1 + 1) + 8 * a1[4]), 8 * *a1);
    a1[4] = 50;
    a1[1] = *a1 + 100;
    free(*(a1 + 1));
    *(a1 + 1) = v5;
    v2 = *a1;
    v3 = *a1 + a1[4];
LABEL_5:
    result = &v5[8 * v3];
    *a1 = v2 + 1;
    return result;
  }

  printf(" ***** %s in autoTrace\n", "could not extend extract polygons point list");
  return 0;
}

void freeAutoTraceStructures(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    free(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    free(v3);
    *(a1 + 176) = 0;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    free(v4);
    *(a1 + 184) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    free(v5);
    *(a1 + 152) = 0;
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    free(v6);
    *(a1 + 160) = 0;
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    free(v7);
    *(a1 + 168) = 0;
  }

  *(a1 + 136) = 0;
}

BOOL initInterestingPointList(void *a1)
{
  a1[1] = 100;
  v2 = malloc_type_malloc(0x320uLL, 0x100004000313F17uLL);
  *a1 = v2;
  if (!v2)
  {
    printf(" ***** %s in autoTrace\n", "could not allocate interesting points list");
  }

  return v2 != 0;
}

char *addHorizontalLine(char *result, int a2, int a3, int a4, char **a5, _BYTE *a6)
{
  v6 = *(result + 16);
  v7 = *(v6 + 8);
  v8 = *v6;
  *a6 = 0;
  if (a4 >= 10)
  {
    v9 = a3;
    v10 = a3 <= 0 ? v8 : 0;
    if (vabds_f32(*(v7 + 8 * a2 + 4), *(v7 + 8 * (a3 + v10 - 1) + 4)) < 0.001)
    {
      if (a2 >= a3)
      {
        v18 = NAN;
      }

      else
      {
        v13 = 0;
        v14 = 0.0;
        v15 = a2;
        do
        {
          v14 = v14 + *(v7 + 8 * v15 + 4);
          ++v13;
          v16 = v15 + 1;
          if (v16 >= v8)
          {
            v17 = v8;
          }

          else
          {
            v17 = 0;
          }

          v15 = v16 - v17;
        }

        while (v15 < a3);
        v18 = v14 / v13;
      }

      v19 = v18 + -0.023;
      v20 = v18 + 0.023;
      do
      {
        if (a2 <= 0)
        {
          v21 = v8;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 + a2;
        a2 = v22 - 1;
        v23 = *(v7 + 8 * (v22 - 1) + 4);
      }

      while (v23 >= v19 && v23 <= v20);
      if (v22 >= v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = 0;
      }

      v26 = v22 - v25;
      while (1)
      {
        v27 = *(v7 + 8 * v9 + 4);
        if (v27 < v19 || v27 > v20)
        {
          break;
        }

        if (v9 + 1 >= v8)
        {
          v29 = v8;
        }

        else
        {
          v29 = 0;
        }

        v9 = v9 + 1 - v29;
      }

      if (result[18] == 1)
      {
        printf("found completely horizontal line from %d to %d (length %d)\n", v26, v9, a4);
      }

      result = appendInterestingPointAtIndex(v26, 2, a5);
      if (!result || (result = appendInterestingPointAtIndex(v9, 4, a5)) == 0)
      {
        *a6 = 1;
      }
    }
  }

  return result;
}

char *addVerticalLine(char *result, int a2, int a3, int a4, char **a5, _BYTE *a6)
{
  v6 = *(result + 16);
  v7 = *(v6 + 8);
  v8 = *v6;
  *a6 = 0;
  if (a4 >= 10)
  {
    v9 = a3;
    v10 = a3 <= 0 ? v8 : 0;
    if (vabds_f32(*(v7 + 8 * a2), *(v7 + 8 * (a3 + v10 - 1))) < 0.001)
    {
      if (a2 >= a3)
      {
        v18 = NAN;
      }

      else
      {
        v13 = 0;
        v14 = 0.0;
        v15 = a2;
        do
        {
          v14 = v14 + *(v7 + 8 * v15);
          ++v13;
          v16 = v15 + 1;
          if (v16 >= v8)
          {
            v17 = v8;
          }

          else
          {
            v17 = 0;
          }

          v15 = v16 - v17;
        }

        while (v15 < a3);
        v18 = v14 / v13;
      }

      v19 = v18 + -0.023;
      v20 = v18 + 0.023;
      do
      {
        if (a2 <= 0)
        {
          v21 = v8;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 + a2;
        a2 = v22 - 1;
        v23 = *(v7 + 8 * (v22 - 1));
      }

      while (v23 >= v19 && v23 <= v20);
      if (v22 >= v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = 0;
      }

      v26 = v22 - v25;
      for (i = 8 * a3; ; i = 8 * v9)
      {
        v28 = *(v7 + i);
        if (v28 < v19 || v28 > v20)
        {
          break;
        }

        if (v9 + 1 >= v8)
        {
          v30 = v8;
        }

        else
        {
          v30 = 0;
        }

        v9 = v9 + 1 - v30;
      }

      if (result[18] == 1)
      {
        printf("found completely vertical line from %d to %d (length %d)\n", v26, v9, a4);
      }

      result = appendInterestingPointAtIndex(v26, 2, a5);
      if (!result || (result = appendInterestingPointAtIndex(v9, 4, a5)) == 0)
      {
        *a6 = 1;
      }
    }
  }

  return result;
}

uint64_t insertPairIntoInterestingPoints(uint64_t result, int *a2, int *a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 0;
  v6 = *a2;
  v5 = a2[1];
  v7 = *a3;
  v8 = (a3[1] & 4) == 0 || (a2[1] & 2) == 0;
  if (v6 == v7)
  {
    return result;
  }

  v71 = a3[1];
  v10 = *(a4 + 12);
  if (v10 < 1)
  {
    goto LABEL_128;
  }

  v13 = result;
  v69 = **(result + 128);
  v72 = 0;
  v14 = indexOfNewInterestingPointAtPointIndex(v6, a4, &v72 + 1);
  result = indexOfNewInterestingPointAtPointIndex(v7, a4, &v72);
  v15 = result;
  v16 = v14 + 1;
  if (v16 >= v10)
  {
    v16 -= v10;
    if (v16 >= v10)
    {
      LODWORD(v16) = v16 % v10;
    }
  }

  v17 = *a4;
  v18 = (v14 - 1);
  if (v14 <= v10)
  {
    if (v14)
    {
      v19 = 0;
    }

    else
    {
      v19 = v10;
    }

    LODWORD(v18) = v19 + v18;
  }

  else
  {
    v18 -= v10;
    if (v18 >= v10)
    {
      LODWORD(v18) = v18 % v10;
    }
  }

  v20 = (v17 + 8 * v18);
  v21 = v17 + 8 * v14;
  if (v14 != result)
  {
    if (result != v16)
    {
      v30 = result - 1;
      if (result <= v10)
      {
        if (result)
        {
          v41 = 0;
        }

        else
        {
          v41 = v10;
        }

        v31 = v41 + v30;
      }

      else
      {
        v31 = v30 - v10;
        if (v30 - v10 >= v10)
        {
          v31 %= v10;
        }
      }

      v42 = v17 + 8 * v31;
      v43 = v17 + 8 * result;
      if ((v72 & 0x100) != 0)
      {
        if (((v72 | v8) & 1) == 0 && (*(v21 + 4) & 2) != 0)
        {
          *v42 = v7;
          goto LABEL_128;
        }

        if (!(v8 & 1 | ((v72 & 1) == 0)) && (*(v21 + 4) & 2) != 0 && (*(v43 + 4) & 4) != 0)
        {
          v44 = v6 + 1;
          if (v44 >= v10)
          {
            v44 -= v10;
            if (v44 >= v10)
            {
              v44 %= v10;
            }
          }

          else if (v6 <= -2)
          {
            v44 += v10;
            if (v44 < 0)
            {
              v44 = v44 % v10 + v10;
            }
          }

          while (result != v44)
          {
            v64 = v17 + 8 * v44;
            v66 = *(v64 + 4);
            v65 = (v64 + 4);
            if ((v66 & 0xFFFFFFF9) == 0)
            {
              *v65 = 0;
            }

            v67 = v44 + 1;
            if (v44 + 1 >= v10)
            {
              v44 = v67 - v10;
              if (v44 >= v10)
              {
                v44 %= v10;
              }
            }

            else
            {
              v59 = v44 <= -2;
              LODWORD(v44) = v44 + 1;
              if (v59)
              {
                v44 = v67 + v10;
                if (v44 < 0)
                {
                  v44 = v44 % v10 + v10;
                }
              }
            }
          }

          goto LABEL_128;
        }
      }

      else
      {
        if (((v72 | v8) & 1) == 0 && (*(v21 + 4) & 2) != 0 && (*(v42 + 4) & 4) != 0)
        {
          *v21 = v6;
          *v42 = v7;
          goto LABEL_130;
        }

        if (!(v8 & 1 | ((v72 & 1) == 0)))
        {
          if ((*(v43 + 4) & 4) != 0 && (*(v21 + 4) & 2) != 0)
          {
            *v21 = v6;
            v53 = v6 + 1;
            if (v53 >= v10)
            {
              v53 -= v10;
              if (v53 >= v10)
              {
                v53 %= v10;
              }
            }

            else if (v6 <= -2)
            {
              v53 += v10;
              if (v53 < 0)
              {
                v53 = v53 % v10 + v10;
              }
            }

            while (result != v53)
            {
              v60 = v17 + 8 * v53;
              v62 = *(v60 + 4);
              v61 = (v60 + 4);
              if ((v62 & 0xFFFFFFF9) == 0)
              {
                *v61 = 0;
              }

              v63 = v53 + 1;
              if (v53 + 1 >= v10)
              {
                v53 = v63 - v10;
                if (v53 >= v10)
                {
                  v53 %= v10;
                }
              }

              else
              {
                v59 = v53 <= -2;
                LODWORD(v53) = v53 + 1;
                if (v59)
                {
                  v53 = v63 + v10;
                  if (v53 < 0)
                  {
                    v53 = v53 % v10 + v10;
                  }
                }
              }
            }
          }

          goto LABEL_128;
        }
      }

      if (((v8 & 1) != 0 || (*(v42 + 4) & 2) == 0) && debug_auto_trace_syntax == 1)
      {
        result = pairInsertError(v13, a2, v14, HIBYTE(v72), a3, result, v72, a4, "breaking 4");
      }

      goto LABEL_130;
    }

    v23 = *(v21 + 4);
    if (HIBYTE(v72) == 1)
    {
      if ((v72 & 1) == 0)
      {
        if ((v23 & 0xA) == 0)
        {
          goto LABEL_128;
        }

        if ((v23 & 2) != 0 || debug_auto_trace_syntax != 1)
        {
          goto LABEL_130;
        }

        v68 = "breaking 3";
        v25 = v13;
        v26 = a2;
        v27 = v14;
        v28 = 1;
        v29 = a3;
        goto LABEL_86;
      }

      if (v8)
      {
        if ((v23 & 8) != 0)
        {
          goto LABEL_130;
        }
      }

      else if ((v23 & 2) != 0)
      {
        goto LABEL_130;
      }

      if ((v23 & 0xA) == 0)
      {
        goto LABEL_128;
      }

      if (debug_auto_trace_syntax != 1)
      {
        goto LABEL_130;
      }

      v68 = "merge 1";
      v25 = v13;
      v26 = a2;
      v27 = v14;
      v28 = 1;
LABEL_122:
      v29 = a3;
      goto LABEL_123;
    }

    if (v72)
    {
      if ((v23 & 2) != 0)
      {
        *v21 = v6;
        goto LABEL_128;
      }

      if (v23 != 1)
      {
        if (debug_auto_trace_syntax != 1)
        {
          goto LABEL_130;
        }

        v68 = "merge 2";
        v25 = v13;
        v26 = a2;
        v27 = v14;
        v28 = 0;
        goto LABEL_122;
      }

      v32 = v21;
      Corner = findCorner(v13, *v21, 1);
      v34 = v32;
      v35 = *v32 - v6;
      if (v35 >= v69 / -2)
      {
        v36 = 0;
      }

      else
      {
        v36 = v69;
      }

      v37 = v36 + v35;
      if (v37 < 0)
      {
        v37 = -v37;
      }

      v38 = v7 - *v32;
      if (v38 >= v69 / -2)
      {
        v39 = 0;
      }

      else
      {
        v39 = v69;
      }

      v40 = v39 + v38;
      if (v40 < 0)
      {
        v40 = -v40;
      }

      if (v37 < v40)
      {
        if (!Corner)
        {
LABEL_53:
          *v34 = v6;
          goto LABEL_128;
        }

LABEL_100:
        v6 = Corner[2];
        goto LABEL_128;
      }
    }

    else
    {
      if (v23 != 1)
      {
        if ((v23 & 4) != 0 && (v20[1] & 2) != 0)
        {
          v6 = *v20;
          *v21 = v7;
          goto LABEL_128;
        }

        if ((v23 & 2) == 0)
        {
          goto LABEL_128;
        }

        goto LABEL_130;
      }

      v46 = v21;
      Corner = findCorner(v13, *v21, 1);
      v34 = v46;
      v47 = *v46 - v6;
      if (v47 >= v69 / -2)
      {
        v48 = 0;
      }

      else
      {
        v48 = v69;
      }

      v49 = v48 + v47;
      if (v49 < 0)
      {
        v49 = -v49;
      }

      v50 = v7 - *v46;
      if (v50 >= v69 / -2)
      {
        v51 = 0;
      }

      else
      {
        v51 = v69;
      }

      v52 = v51 + v50;
      if (v52 < 0)
      {
        v52 = -v52;
      }

      if (v49 < v52)
      {
        if (!Corner)
        {
          goto LABEL_53;
        }

        goto LABEL_100;
      }
    }

    if (Corner)
    {
      v7 = Corner[2];
    }

    else
    {
      *v34 = v7;
    }

    goto LABEL_128;
  }

  if ((v72 & 0x100) != 0)
  {
    if (*(v13 + 220) == 1)
    {
      v22 = *(v21 + 4);
      if (v22 == 1)
      {
        goto LABEL_128;
      }

      if (v22 == 64)
      {
        a2[1] = v5 & 0xFFFFFFBF;
        goto LABEL_128;
      }
    }

    if (debug_auto_trace_syntax == 1)
    {
      pairInsertError(v13, a2, v14, 1, a3, v14, v72, a4, "syntax 1");
    }

LABEL_128:
    result = addInterestingPointAtIndex(v6, v5, a4);
    if (!result || (result = addInterestingPointAtIndex(v7, v71, a4)) == 0)
    {
      *a5 = 1;
      return result;
    }

    goto LABEL_130;
  }

  v24 = v20[1];
  if ((v72 & 1) == 0)
  {
    if ((v24 & 0xA) == 0)
    {
      goto LABEL_128;
    }

    if (((v8 | ((v24 & 2) >> 1)) & 1) != 0 || debug_auto_trace_syntax != 1 || (v24 & 8) != 0 && (*(v21 + 4) & 0x10) != 0)
    {
      goto LABEL_130;
    }

    v68 = "breaking 1";
    v25 = v13;
    v26 = a2;
    v27 = v14;
    v28 = 0;
    v29 = a3;
    v15 = v14;
LABEL_86:
    v45 = 0;
LABEL_124:
    result = pairInsertError(v25, v26, v27, v28, v29, v15, v45, a4, v68);
    goto LABEL_130;
  }

  if ((v24 & 0xA) == 0)
  {
    goto LABEL_128;
  }

  if (((v24 >> 1) & 1 & ~v8) == 0 && debug_auto_trace_syntax == 1)
  {
    v68 = "breaking 2";
    v25 = v13;
    v26 = a2;
    v27 = v14;
    v28 = 0;
    v29 = a3;
    v15 = v14;
LABEL_123:
    v45 = 1;
    goto LABEL_124;
  }

LABEL_130:
  v54 = *(a4 + 12);
  if (v54 >= 1)
  {
    v55 = 8 * v54;
    v56 = *(a4 + 12);
    do
    {
      if (!*(*a4 + 8 * (v56 - 1) + 4))
      {
        if (v56 < v54)
        {
          v57 = v55;
          v58 = v56;
          do
          {
            *(*a4 + v57 - 8) = *(*a4 + v57);
            LODWORD(v54) = *(a4 + 12);
            ++v58;
            v57 += 8;
          }

          while (v54 > v58);
        }

        LODWORD(v54) = v54 - 1;
        *(a4 + 12) = v54;
      }

      v55 -= 8;
      v59 = v56-- <= 1;
    }

    while (!v59);
  }

  return result;
}
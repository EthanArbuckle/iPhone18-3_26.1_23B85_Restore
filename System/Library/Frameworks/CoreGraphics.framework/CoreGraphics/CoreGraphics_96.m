void sub_184316D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL CGPDFSelectionEqualToSelection(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  if (*(a1 + 160) == 1 && *(a2 + 160) == 1)
  {
    v6 = a1 + 184;
    v4 = *(a1 + 184);
    v5 = *(v6 + 8);
    v7 = *(a2 + 184);
    if (v5 - v4 == *(a2 + 192) - v7)
    {
      if (v4 != v5)
      {
        result = 1;
        while (*v4 == *v7)
        {
          if (*(v4 + 1) != v7[1] || *(v4 + 2) != v7[2])
          {
            break;
          }

          v4 += 24;
          v7 += 3;
          if (v4 == v5)
          {
            return result;
          }
        }

        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9 == v10)
  {
    return 1;
  }

  result = 0;
  if (!v9 || !v10)
  {
    return result;
  }

  if (*(v9 + 40))
  {
    CPIndexSetNormalize(v9);
  }

  v11 = *(v9 + 16);
  if (*(v10 + 40))
  {
    CPIndexSetNormalize(v10);
  }

  if (*(v10 + 16) != v11)
  {
    return 0;
  }

  v12 = v11 - 1;
  if (v11 < 1)
  {
    return 1;
  }

  v13 = 0;
  do
  {
    Range = CPIndexSetGetRange(v9, v13);
    v16 = v15;
    result = Range == CPIndexSetGetRange(v10, v13) && v16 == v17;
  }

  while (result && v12 != v13++);
  return result;
}

uint64_t CGPDFSelectionGetContainingNode(uint64_t a1)
{
  pthread_mutex_lock((a1 + 96));
  if (!a1)
  {
    goto LABEL_14;
  }

  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    goto LABEL_13;
  }

  v3 = CGPDFPageCopyLayout(*(a1 + 16));
  if (!v3)
  {
LABEL_14:
    v2 = -1;
    goto LABEL_13;
  }

  v4 = v3;
  v5 = v3[13];
  v6 = *(a1 + 184);
  v7 = *(a1 + 192) - v6;
  if (v7 < 1)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v11 = (v6 + 16);
    do
    {
      v8 = CPRangeUnion(v8, v9, *(v11 - 1), *v11);
      v9 = v12;
      v11 += 3;
      --v10;
    }

    while (v10);
  }

  NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(v5, v8, v9);
  if (NodeContainingTextRange)
  {
    v14 = NodeContainingTextRange;
  }

  else
  {
    v14 = -1;
  }

  *(a1 + 40) = v14;
  CFRelease(v4);
  v2 = *(a1 + 40);
LABEL_13:
  pthread_mutex_unlock((a1 + 96));
  return v2;
}

BOOL CGPDFSelectionIsWord(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 184);
    v2 = *(result + 192);
    if (v2 - v1 == 24)
    {
      if (v2 == v1)
      {
        v4 = 0;
        v3 = -1;
      }

      else
      {
        v3 = *(v1 + 8);
        v4 = *(v1 + 16);
      }

      v10 = CGPDFPageCopyPageLayoutWithCTLD(*(result + 168), 1);
      LineIndex = PageLayout::getLineIndex(v10[10], v10[11], v3);
      WordRange = PageLayout::getWordRange(v10 + 2, LineIndex, v3);
      v8 = v7;
      CFRelease(v10);
      return v3 == WordRange && v4 == v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1843170D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionIsWithinParagraph(uint64_t a1)
{
  v2 = CGPDFPageCopyLayout(*(a1 + 16));
  ContainingNode = CGPDFSelectionGetContainingNode(a1);
  if (!ContainingNode || (v4 = 0, (*ContainingNode - 515) >= 3) && *ContainingNode != 1538)
  {
    v4 = 1;
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

void sub_184317170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void *CGTriangleMeshCreate(void *a1, const void *a2)
{
  v4 = malloc_type_malloc(0x58uLL, 0x10A004092955682uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 1;
    if (a1)
    {
      CFRetain(a1);
      v5[2] = a1;
      if (!a2)
      {
        v5[3] = 0;
        v6 = *(a1[3] + 48);
LABEL_7:
        v5[1] = v6;
        v5[4] = 8 * v6 + 16;
        *(v5 + 5) = 0u;
        *(v5 + 7) = 0u;
        *(v5 + 9) = 0u;
        return v5;
      }
    }

    else
    {
      v4[2] = 0;
      if (!a2)
      {
        v6 = 0;
        v4[3] = 0;
        goto LABEL_7;
      }
    }

    CFRetain(a2);
    v5[3] = a2;
    v6 = 1;
    goto LABEL_7;
  }

  return v5;
}

atomic_uint *CGTriangleMeshRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGTriangleMeshRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    CGColorSpaceRelease(*(a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    free(*(a1 + 56));
    free(*(a1 + 80));

    free(a1);
  }
}

uint64_t CGTriangleMeshGetColorSpace(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGTriangleMeshGetNumberOfComponents(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t CGTriangleMeshAddTriangle(uint64_t result, float64x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = result;
        result = add_triangle(result);
        if (result)
        {
          v8 = result;
          v9 = 0;
          v10 = (a3 + 8);
          do
          {
            result = add_point(v7, a2, (a4 + 8 * *(v7 + 8) * v9), *(v10 - 1), *v10);
            *(v8 + 8 * v9++) = result;
            v10 += 2;
          }

          while (v9 != 3);
        }
      }
    }
  }

  return result;
}

char *add_triangle(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 == *(a1 + 64))
  {
    v3 = 2 * v2 + 6;
    result = malloc_type_realloc(*(a1 + 80), 24 * v3, 0x1000040504FFAC1uLL);
    if (!result)
    {
      return result;
    }

    *(a1 + 80) = result;
    *(a1 + 64) = v3;
    v2 = *(a1 + 72);
  }

  else
  {
    result = *(a1 + 80);
  }

  *(a1 + 72) = v2 + 1;
  result += 24 * v2;
  return result;
}

uint64_t add_point(uint64_t a1, float64x2_t *a2, uint64_t *a3, float64_t a4, float64_t a5)
{
  if (!a3)
  {
    return -1;
  }

  v5 = a3;
  result = *(a1 + 40);
  if (result == *(a1 + 48))
  {
    v17 = a5;
    v18 = a4;
    v9 = 2 * result + 18;
    v10 = malloc_type_realloc(*(a1 + 56), *(a1 + 32) * v9, 0x5210F11BuLL);
    if (!v10)
    {
      return -1;
    }

    v11 = v10;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    result = *(a1 + 40);
    a5 = v17;
    a4 = v18;
  }

  else
  {
    v11 = *(a1 + 56);
  }

  *(a1 + 40) = result + 1;
  v12 = &v11[*(a1 + 32) * result];
  v13.f64[0] = a4;
  v13.f64[1] = a5;
  if (a2)
  {
    v13 = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_laneq_f64(a2[1], v13, 1), *a2, a4));
  }

  *v12 = v13;
  v14 = *(a1 + 8);
  if (v14)
  {
    f64 = v12[1].f64;
    do
    {
      v16 = *v5++;
      *f64++ = v16;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t CGTriangleMeshAddTriangleWithTrianglePoints(uint64_t result, float64x2_t *a2, uint64_t a3)
{
  if (result)
  {
    if (a3)
    {
      v5 = result;
      result = add_triangle(result);
      if (result)
      {
        v6 = result;
        for (i = 0; i != 24; i += 8)
        {
          result = add_point(v5, a2, (*(a3 + i) + 16), **(a3 + i), *(*(a3 + i) + 8));
          *(v6 + i) = result;
        }
      }
    }
  }

  return result;
}

void *CGTriangleMeshAddTriangleWithRelativePoint(void *result, float64x2_t *a2, int a3, uint64_t *a4, float64_t a5, float64_t a6)
{
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = result[9];
      if (v8)
      {
        result = add_triangle(result);
        if (result)
        {
          v13 = result;
          if (a3)
          {
            if (a3 != 1)
            {
              return result;
            }

            v14 = -24;
          }

          else
          {
            v14 = -16;
          }

          v15 = *(v7 + 80) + 24 * v8;
          *result = *(v15 + v14);
          result[1] = *(v15 - 8);
          result = add_point(v7, a2, a4, a5, a6);
          v13[2] = result;
        }
      }
    }
  }

  return result;
}

uint64_t CGTriangleMeshGetCount(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *CGTriangleMeshGetTriangleAtIndex(void *result, unint64_t a2, uint64_t a3)
{
  if (result && a3 && result[9] > a2)
  {
    v3 = 0;
    v4 = result[10] + 24 * a2;
    v5 = result[4];
    do
    {
      *(a3 + v3) = result[7] + v5 * *(v4 + v3);
      v3 += 8;
    }

    while (v3 != 24);
  }

  return result;
}

uint64_t CGTriangleMeshPrint(uint64_t a1, FILE *a2)
{
  fprintf(a2, "mesh %p: colorspace %p ; function %p\n", a1, *(a1 + 16), *(a1 + 24));
  fprintf(a2, "  point size: %zu\n", *(a1 + 32));
  fprintf(a2, "  point count: %zu\n", *(a1 + 40));
  if (*(a1 + 40))
  {
    v4 = 0;
    do
    {
      v5 = (*(a1 + 56) + *(a1 + 32) * v4);
      fprintf(a2, "    point %zu: (%g, %g)(", v4, *v5, v5[1]);
      if (*(a1 + 8))
      {
        v6 = 0;
        v7 = v5 + 2;
        do
        {
          fprintf(a2, "%g ", v7[v6++]);
        }

        while (v6 < *(a1 + 8));
      }

      fwrite(")\n", 2uLL, 1uLL, a2);
      ++v4;
    }

    while (v4 < *(a1 + 40));
  }

  result = fprintf(a2, "  triangle count: %zu\n", *(a1 + 72));
  if (*(a1 + 72))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      result = fprintf(a2, "    triangle %zu: (%zu, %zu, %zu)\n", v10++, *(*(a1 + 80) + v9), *(*(a1 + 80) + v9 + 8), *(*(a1 + 80) + v9 + 16));
      v9 += 24;
    }

    while (v10 < *(a1 + 72));
  }

  return result;
}

uint64_t CGGetMD5DigestOfBytes(unsigned __int8 *a1, char *a2, unint64_t a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_MD5_Init(&v7);
  md5_update(&v7, a2, a3);
  return CC_MD5_Final(a1, &v7);
}

CC_MD5_CTX *CGDigesterCreateMD5()
{
  v0 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v0);
  return v0;
}

CC_MD5_CTX *CGDigesterAddBytes(CC_MD5_CTX *c, char *data, unint64_t a3)
{
  if (c)
  {
    return md5_update(c, data, a3);
  }

  return c;
}

CC_MD5_CTX *CGDigesterGetDigest(CC_MD5_CTX *c, unsigned __int8 *md)
{
  if (c)
  {
    return CC_MD5_Final(md, c);
  }

  return c;
}

void CG::DisplayListXMLHelper::parseAttributesFromNode(CG::DisplayListXMLHelper *this, _xmlNode *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  for (i = a2->properties; i; i = i->next)
  {
    String = xmlNodeListGetString(a2->doc, i->children, 1);
    if (String)
    {
      std::string::basic_string[abi:fe200100]<0>(v10, String);
      std::string::basic_string[abi:fe200100]<0>(__p, i->name);
      v12 = __p;
      v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
      v7 = v6;
      if (*(v6 + 79) < 0)
      {
        operator delete(*(v6 + 56));
      }

      *(v7 + 56) = *v10;
      *(v7 + 72) = v11;
      HIBYTE(v11) = 0;
      LOBYTE(v10[0]) = 0;
      if (v9 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(v10[0]);
        }
      }

      free(String);
    }
  }
}

void sub_184317AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*v21);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t CG::DisplayListXMLHelper::parseFormatFromAttributes(uint64_t a1, char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v11)
  {
    return 0;
  }

  __p[0] = &a9;
  v12 = (v11 + 56);
  if (*(v11 + 79) < 0)
  {
    v12 = *v12;
  }

  return vsscanf(v12, a3, __p[0]);
}

uint64_t CG::DisplayListXMLHelper::parseStringFromAttributes(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v3)
  {
    return 0;
  }

  result = v3 + 56;
  if (*(v3 + 79) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t CG::DisplayListXMLHelper::parseBoolFromAttributes(uint64_t a1, char *a2, char *a3)
{
  std::string::basic_string[abi:fe200100]<0>(&__p, a2);
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, &__p);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (a1 + 8 == v5)
  {
    return 0;
  }

  v6 = (v5 + 56);
  std::string::basic_string[abi:fe200100]<0>(&__p, "true");
  v7 = *(v5 + 79);
  if (v7 >= 0)
  {
    v8 = *(v5 + 79);
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = v25;
  v10 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v9 = v24;
  }

  if (v8 != v9)
  {
    v13 = 0;
    if (v25 < 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_20:
    v14 = 1;
LABEL_39:
    *a3 = v14;
    return 1;
  }

  if (v7 >= 0)
  {
    v11 = (v5 + 56);
  }

  else
  {
    v11 = *v6;
  }

  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v13 = memcmp(v11, p_p, v8) == 0;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:
  operator delete(__p);
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_22:
  std::string::basic_string[abi:fe200100]<0>(&__p, "false");
  v15 = *(v5 + 79);
  if (v15 >= 0)
  {
    v16 = *(v5 + 79);
  }

  else
  {
    v16 = *(v5 + 64);
  }

  v17 = v25;
  v18 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v17 = v24;
  }

  if (v16 != v17)
  {
    v21 = 0;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v15 >= 0)
  {
    v19 = v6;
  }

  else
  {
    v19 = *v6;
  }

  if ((v25 & 0x80u) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  v21 = memcmp(v19, v20, v16) == 0;
  if (v18 < 0)
  {
LABEL_37:
    operator delete(__p);
  }

LABEL_38:
  v14 = 0;
  if (v21)
  {
    goto LABEL_39;
  }

  return 0;
}

BOOL CG::DisplayListXMLHelper::parsePointFromAttributes(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v9 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a1, a2, "{%lg, %lg}", a4, a5, a6, a7, a8, &v11);
  if (v9)
  {
    *a3 = v11;
    a3[1] = 0;
  }

  return v9 != 0;
}

uint64_t CG::DisplayListXMLHelper::parseRectFromAttributes(uint64_t a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v6)
  {
    return 0;
  }

  v7 = (v6 + 56);
  if (*(v6 + 79) < 0)
  {
    v7 = *v7;
  }

  if (!strcmp(v7, "rectNull"))
  {
    v15 = &CGRectNull;
LABEL_14:
    size = v15->size;
    *a3 = v15->origin;
    *(a3 + 16) = size;
    return 1;
  }

  if (!strcmp(v7, "rectInfinite"))
  {
    v15 = &CGRectInfinite;
    goto LABEL_14;
  }

  __p[0] = 0;
  v13 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a1, a2, "{%lg, %lg}, {%lg, %lg}", v8, v9, v10, v11, v12, __p) == 4;
  result = v13;
  if (v13)
  {
    *a3 = __p[0];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

BOOL CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(uint64_t a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:fe200100]<0>(v14, a2);
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (a1 + 8 == v11)
  {
    return 0;
  }

  v14[0] = 0;
  v12 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a1, a2, "[%lg %lg %lg %lg %lg %lg]", v6, v7, v8, v9, v10, v14) == 6;
  result = v12;
  if (v12)
  {
    *a3 = v14[0];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

unint64_t CG::DisplayListXMLHelper::parseColorComponentsFromAttributes(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:fe200100]<0>(__p, "components");
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v4)
  {
    return 0;
  }

  boost::char_separator<char,std::char_traits<char>>::char_separator(&v32, "() ");
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::tokenizer<std::string>(v27, (v4 + 56), &v32);
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::begin(__p, v27);
  for (i = 0; ; ++i)
  {
    boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::end(&v10, v27);
    if (v16 != 1 || (v25 & 1) == 0)
    {
      v7 = v16 == v25;
      goto LABEL_10;
    }

    if (v14 == v23)
    {
      v7 = v15 == v24;
LABEL_10:
      v6 = v7;
      goto LABEL_13;
    }

    v6 = 0;
LABEL_13:
    if (i > 5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v8)
    {
      break;
    }

    if ((v25 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

    *(a2 + 8 * i) = std::stod(&v26, 0);
    boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::increment(__p);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  return i;
}

void sub_1843182C0(_Unwind_Exception *a1)
{
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::~tokenizer(v1 - 192);
  boost::char_separator<char,std::char_traits<char>>::~char_separator(v1 - 112);
  _Unwind_Resume(a1);
}

BOOL CG::DisplayListXMLHelper::parseColorRenderingIntentFromAttributes(uint64_t a1, char *a2, _DWORD *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:fe200100]<0>(&__p, a2);
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 8 == v5)
  {
    return 0;
  }

  else
  {
    __p = "default";
    v13 = "absColormetric";
    v14 = 1;
    v15 = "relColormetric";
    v16 = 2;
    v17 = "perceptual";
    v18 = 3;
    v12 = 0;
    v19 = "saturation";
    v20 = 4;
    v6 = (v5 + 56);
    if (*(v5 + 79) < 0)
    {
      v6 = *v6;
    }

    v7 = 0;
    v8 = 1;
    for (i = &__p; strcmp(v6, *i); i += 2)
    {
      v8 = v7 < 4;
      if (++v7 == 5)
      {
        return 0;
      }
    }

    *a3 = *(&__p + 4 * v7 + 2);
  }

  return v8;
}

BOOL CG::DisplayListXMLHelper::parseInterpolationQualityFromAttributes(uint64_t a1, char *a2, _DWORD *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:fe200100]<0>(&__p, a2);
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 8 == v5)
  {
    return 0;
  }

  else
  {
    __p = "default";
    v13 = "none";
    v14 = 1;
    v15 = "low";
    v16 = 2;
    v17 = "medium";
    v18 = 4;
    v12 = 0;
    v19 = "high";
    v20 = 3;
    v6 = (v5 + 56);
    if (*(v5 + 79) < 0)
    {
      v6 = *v6;
    }

    v7 = 0;
    v8 = 1;
    for (i = &__p; strcmp(v6, *i); i += 2)
    {
      v8 = v7 < 4;
      if (++v7 == 5)
      {
        return 0;
      }
    }

    *a3 = *(&__p + 4 * v7 + 2);
  }

  return v8;
}

BOOL CG::DisplayListXMLHelper::parseTextDrawingModeFromAttributes(uint64_t a1, _DWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:fe200100]<0>(&__p, "textDrawingMode");
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, &__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 8 == v4)
  {
    return 0;
  }

  else
  {
    __p = "fill";
    v12 = "stroke";
    v13 = 1;
    v14 = "fillStroke";
    v15 = 2;
    v16 = "invisible";
    v17 = 3;
    v18 = "fillCLip";
    v19 = 4;
    v20 = "strokeClip";
    v21 = 5;
    v22 = "fillStrokeClip";
    v23 = 6;
    v11 = 0;
    v24 = "clip";
    v25 = 7;
    v5 = (v4 + 56);
    if (*(v4 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = 0;
    v7 = 1;
    for (i = &__p; strcmp(v5, *i); i += 2)
    {
      v7 = v6 < 7;
      if (++v6 == 8)
      {
        return 0;
      }
    }

    *a2 = *(&__p + 4 * v6 + 2);
  }

  return v7;
}

BOOL CG::DisplayListXMLHelper::parsePathDrawingModeFromAttributes(uint64_t a1, _DWORD *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:fe200100]<0>(&__p, "drawingMode");
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, &__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 8 == v4)
  {
    return 0;
  }

  else
  {
    __p = "fill";
    v12 = "eofill";
    v13 = 1;
    v14 = "stroke";
    v15 = 2;
    v16 = "fillStroke";
    v17 = 3;
    v11 = 0;
    v18 = "eoFillStroke";
    v19 = 4;
    v5 = (v4 + 56);
    if (*(v4 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = 0;
    v7 = 1;
    for (i = &__p; strcmp(v5, *i); i += 2)
    {
      v7 = v6 < 4;
      if (++v6 == 5)
      {
        return 0;
      }
    }

    *a2 = *(&__p + 4 * v6 + 2);
  }

  return v7;
}

uint64_t CG::DisplayListXMLHelper::parseCGPathFromNode(CG::DisplayListXMLHelper *this, _xmlNode *a2)
{
  v2 = *(this + 3);
  if (!v2 || *(v2 + 8) != 3)
  {
    return 0;
  }

  String = xmlNodeListGetString(*(v2 + 64), v2, 1);
  if (String)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:String];
    v6 = [v4 initWithBase64EncodedString:v5 options:1];

    String = CGPathCreateWithData(v6);
  }

  return String;
}

void CG::DisplayListXMLHelper::parseCGFloatArrayFromElement(uint64_t a1, xmlChar *str2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      while (xmlStrcmp(*(v3 + 16), str2))
      {
        v3 = *(v3 + 48);
        if (!v3)
        {
          return;
        }
      }

      for (i = *(v3 + 24); i; i = *(i + 48))
      {
        if (*(i + 8) == 1 && !xmlStrcmp(*(i + 16), "mem"))
        {
          String = xmlNodeListGetString(*(i + 64), *(i + 24), 1);
          if (String)
          {
            v8 = atof(String);
            v10 = *(a3 + 8);
            v9 = *(a3 + 16);
            if (v10 >= v9)
            {
              v12 = *a3;
              v13 = v10 - *a3;
              v14 = v13 >> 3;
              v15 = (v13 >> 3) + 1;
              if (v15 >> 61)
              {
                std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
              }

              v16 = v9 - v12;
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
                std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v17);
              }

              *(8 * v14) = v8;
              v11 = 8 * v14 + 8;
              memcpy(0, v12, v13);
              v18 = *a3;
              *a3 = 0;
              *(a3 + 8) = v11;
              *(a3 + 16) = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            else
            {
              *v10 = v8;
              v11 = (v10 + 1);
            }

            *(a3 + 8) = v11;
          }
        }
      }
    }
  }
}

void CG::DisplayListXMLHelper::addStringToAttributes(uint64_t a1, char *a2, char *__s)
{
  std::string::basic_string[abi:fe200100]<0>(v9, __s);
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  v11 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  v6 = v5;
  if (*(v5 + 79) < 0)
  {
    operator delete(*(v5 + 56));
  }

  *(v6 + 56) = *v9;
  *(v6 + 72) = v10;
  HIBYTE(v10) = 0;
  LOBYTE(v9[0]) = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_184318BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void CG::DisplayListXMLHelper::addFormatToAttributes(uint64_t a1, char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = &a9;
  v12 = vsnprintf(0, 0, a3, &a9) + 1;
  v24 = 0;
  if (v12 >= 0x101)
  {
    operator new[]();
  }

  v21 = &a9;
  vsnprintf(v23, v12, a3, &a9);
  v13 = v24;
  if (v24)
  {
    v14 = v24;
  }

  else
  {
    v14 = v23;
  }

  std::string::basic_string[abi:fe200100]<0>(v19, v14);
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  v22 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  v16 = v15;
  if (*(v15 + 79) < 0)
  {
    operator delete(*(v15 + 56));
  }

  *(v16 + 56) = *v19;
  *(v16 + 72) = v20;
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  if (v13)
  {
    MEMORY[0x1865EE610](v13, 0x1000C4077774924);
  }
}

void CG::DisplayListXMLHelper::addBoolToAttributes(uint64_t a1, char *a2, int a3)
{
  if (a3)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  std::string::basic_string[abi:fe200100]<0>(v10, v5);
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  v12 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  v7 = v6;
  if (*(v6 + 79) < 0)
  {
    operator delete(*(v6 + 56));
  }

  *(v7 + 56) = *v10;
  *(v7 + 72) = v11;
  HIBYTE(v11) = 0;
  LOBYTE(v10[0]) = 0;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_184318E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void CG::DisplayListXMLHelper::addRectToAttributes(uint64_t a1, char *a2, float64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  if (a3->f64[0] == INFINITY || a3->f64[1] == INFINITY)
  {
    v11 = "rectNull";

    goto LABEL_8;
  }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v9, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(a3[1], vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))) & 1) == 0)
  {
    v11 = "rectInfinite";

LABEL_8:
    CG::DisplayListXMLHelper::addStringToAttributes(a1, a2, v11);
    return;
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a1, a2, "{%.17lg, %.17lg}, {%.17lg, %.17lg}", a4, a5, a6, a7, a8, SLOBYTE(v9.f64[0]));
}

void CG::DisplayListXMLHelper::writeAttributes(void *a1, xmlTextWriterPtr writer)
{
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v3[4], v3[5]);
      }

      else
      {
        v11 = *(v3 + 4);
      }

      if (*(v3 + 79) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v3[7], v3[8]);
      }

      else
      {
        __p = *(v3 + 7);
      }

      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v11;
      }

      else
      {
        v5 = v11.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      xmlTextWriterWriteAttribute(writer, v5, p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v2);
  }
}

void sub_184319168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CG::DisplayListXMLHelper::writeCGPath(CG::DisplayListXMLHelper *this, const CGPath *a2, _xmlTextWriter *a3)
{
  v3 = 0;
  if (this && a2)
  {
    EncodedData = CGPathCreateEncodedData(this, 0);
    if (EncodedData)
    {
      v6 = EncodedData;
      v7 = [(__CFData *)EncodedData base64EncodedStringWithOptions:33];
      v8 = v7;
      if (v7)
      {
        v3 = xmlTextWriterWriteRaw(a2, [v7 UTF8String]) >= 0;
      }

      else
      {
        v3 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_184319244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL CG::DisplayListXMLHelper::writeCGFloatArray(xmlChar *name, double **a2, xmlTextWriterPtr writer)
{
  if (xmlTextWriterStartElement(writer, name) < 0)
  {
    return 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v7 = *v5;
      if ((xmlTextWriterStartElement(writer, "mem") & 0x80000000) == 0)
      {
        xmlTextWriterWriteFormatRaw(writer, "%g", v7);
        xmlTextWriterEndElement(writer);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return xmlTextWriterEndElement(writer) >= 0;
}

void PDFPropertyListRelease(_DWORD *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      if (a1[11] == 1)
      {
        v3 = *(a1 + 6);
        if (v3)
        {
          CFRelease(v3);
        }
      }

      free(*(a1 + 13));

      free(a1);
    }
  }
}

_DWORD *CGPDFEncodingCreate(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 200) - 2) >= 4)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10B004037C52C4FuLL);
  __CFSetLastAllocationEventName();
  *v2 = a1;
  v2[2] = 0;
  v3 = v2 + 2;
  get_base_encoding_from_dict(*(a1 + 16), v2 + 2);
  v4 = v2[2];
  if (v4)
  {
    goto LABEL_22;
  }

  v5 = *v2;
  if (!*v2)
  {
    goto LABEL_14;
  }

  if (*(v5 + 200) != 5)
  {
    if (*(v5 + 40))
    {
      if (!CGPDFFontIsEmbedded(v5))
      {
LABEL_19:
        v4 = 1;
        goto LABEL_21;
      }

      v5 = *v2;
    }

LABEL_14:
    FontDescriptor = CGPDFFontGetFontDescriptor(v5);
    if (FontDescriptor)
    {
      if ((*(FontDescriptor + 40) & 0x20) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = -1;
      }

      goto LABEL_21;
    }

    pdf_error("missing or invalid /Flags entry; assuming standard encoding.");
    goto LABEL_19;
  }

  v6 = CGPDFFontGetFontDescriptor(v5);
  if (v6 && get_base_encoding_from_dict(*(v6 + 32), v2 + 2))
  {
    v4 = *v3;
    goto LABEL_22;
  }

  v4 = -1;
LABEL_21:
  *v3 = v4;
LABEL_22:
  v8 = *v2;
  if (v4 == 1 && v8 != 0)
  {
    v11 = *(v8 + 40);
    if (v11 == 13)
    {
      v12 = 5;
    }

    else
    {
      if (v11 != 14)
      {
LABEL_34:
        v22 = 0;
        v23 = 0;
        value = 0;
        array = 0;
        goto LABEL_35;
      }

      v12 = 6;
    }

    *v3 = v12;
    goto LABEL_34;
  }

  v22 = 0;
  v23 = 0;
  value = 0;
  array = 0;
  if (!v8)
  {
    v10 = 0;
    goto LABEL_36;
  }

LABEL_35:
  v10 = *(v8 + 16);
LABEL_36:
  if (CGPDFDictionaryGetDictionary(v10, "Encoding", &value) && CGPDFDictionaryGetArray(value, "Differences", &array))
  {
    v13 = malloc_type_calloc(1uLL, 0x800uLL, 0x50040EE9192B6uLL);
    __CFSetLastAllocationEventName();
    *(v2 + 4) = v13;
    if (array)
    {
      v14 = *(array + 3) - *(array + 2);
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = v14 >> 3;
        do
        {
          if (CGPDFArrayGetInteger(array, v15, &v22))
          {
            v16 = v22;
          }

          else if (CGPDFArrayGetName(array, v15, &v23) && v16 <= 0xFF && v23)
          {
            *(*(v2 + 4) + 8 * v16++) = v23;
          }

          ++v15;
        }

        while (v17 != v15);
      }
    }
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    *(v2 + 48) = v18 == 14;
  }

  return v2;
}

BOOL get_base_encoding_from_dict(CGPDFDictionary *a1, _DWORD *a2)
{
  dict = 0;
  value = 0;
  if (CGPDFDictionaryGetName(a1, "Encoding", &value) || (result = CGPDFDictionaryGetDictionary(a1, "Encoding", &dict)) && (result = CGPDFDictionaryGetName(dict, "BaseEncoding", &value)))
  {
    *a2 = CGPDFGetBaseEncodingForName(value);
    return 1;
  }

  return result;
}

void CGPDFEncodingRelease(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 56));
    free(*(a1 + 40));
    free(*(a1 + 32));
    free_builtin_names(*(a1 + 16));

    free(a1);
  }
}

void free_builtin_names(char *a1)
{
  if (a1)
  {
    for (i = 0; i != 2048; i += 8)
    {
      free(*&a1[i]);
    }

    free(a1);
  }
}

_OWORD *CGPDFEncodingGetGlyphVector(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  Font = CGPDFFontGetFont(*a1);
  if (*a1)
  {
    v3 = *(*a1 + 200);
  }

  else
  {
    v3 = 0;
  }

  explicit = atomic_load_explicit(a1 + 5, memory_order_acquire);
  if (!explicit)
  {
    explicit = malloc_type_malloc(0x200uLL, 0x1000040BDFB0063uLL);
    __CFSetLastAllocationEventName();
    if ((v3 - 2) < 2)
    {
      CGPDFFontIsEmbedded(*a1);
      get_type1_glyph_vector(a1, Font, 0, explicit);
    }

    else
    {
      if (v3 != 4)
      {
        if (v3 == 5)
        {
          v5 = 0;
          v6 = xmmword_18439C5D0;
          v7.i64[0] = 0x8000800080008;
          v7.i64[1] = 0x8000800080008;
          do
          {
            explicit[v5] = v6;
            v6 = vaddq_s16(v6, v7);
            ++v5;
          }

          while (v5 != 32);
        }

        else
        {
          explicit[30] = 0u;
          explicit[31] = 0u;
          explicit[28] = 0u;
          explicit[29] = 0u;
          explicit[26] = 0u;
          explicit[27] = 0u;
          explicit[24] = 0u;
          explicit[25] = 0u;
          explicit[22] = 0u;
          explicit[23] = 0u;
          explicit[20] = 0u;
          explicit[21] = 0u;
          explicit[18] = 0u;
          explicit[19] = 0u;
          explicit[16] = 0u;
          explicit[17] = 0u;
          explicit[14] = 0u;
          explicit[15] = 0u;
          explicit[12] = 0u;
          explicit[13] = 0u;
          explicit[10] = 0u;
          explicit[11] = 0u;
          explicit[8] = 0u;
          explicit[9] = 0u;
          explicit[6] = 0u;
          explicit[7] = 0u;
          explicit[4] = 0u;
          explicit[5] = 0u;
          explicit[2] = 0u;
          explicit[3] = 0u;
          *explicit = 0u;
          explicit[1] = 0u;
        }

        goto LABEL_47;
      }

      IsEmbedded = CGPDFFontIsEmbedded(*a1);
      if (IsEmbedded)
      {
        value = 0;
        v9 = *a1 ? *(*a1 + 16) : 0;
        if (CGPDFDictionaryGetName(v9, "Encoding", &value))
        {
          v10 = value;
          if (!strcmp(value, "Identity-H") || !strcmp(v10, "Identity-V"))
          {
            v15 = 0;
            v16 = xmmword_18439C5D0;
            v17.i64[0] = 0x8000800080008;
            v17.i64[1] = 0x8000800080008;
            do
            {
              explicit[v15] = v16;
              v16 = vaddq_s16(v16, v17);
              ++v15;
            }

            while (v15 != 32);
LABEL_47:
            v18 = 0;
            atomic_compare_exchange_strong(a1 + 5, &v18, explicit);
            if (v18)
            {
              free(explicit);
              explicit = v18;
            }

            goto LABEL_49;
          }
        }
      }

      get_truetype_glyph_vector(a1, Font, IsEmbedded, 0, explicit);
    }

    if (!CGPDFFontIsEmbedded(*a1))
    {
      value = "space";
      v30 = 0;
      if (Font)
      {
        (*(*(Font + 16) + 288))(*(Font + 112), &value, &v30, 1);
        v11 = v30;
        if (v30)
        {
          v12 = explicit + 4;
          v13 = 256;
          do
          {
            v14 = vmovn_s16(vceqzq_s16(*(v12 - 4)));
            if (v14.i8[0])
            {
              *(v12 - 4) = v11;
            }

            if (v14.i8[1])
            {
              *(v12 - 3) = v11;
            }

            if (v14.i8[2])
            {
              *(v12 - 2) = v11;
            }

            if (v14.i8[3])
            {
              *(v12 - 1) = v11;
            }

            if (v14.i8[4])
            {
              *v12 = v11;
            }

            if (v14.i8[5])
            {
              v12[1] = v11;
            }

            if (v14.i8[6])
            {
              v12[2] = v11;
            }

            if (v14.i8[7])
            {
              v12[3] = v11;
            }

            v12 += 8;
            v13 -= 8;
          }

          while (v13);
        }
      }
    }

    goto LABEL_47;
  }

LABEL_49:
  if (v3 == 4)
  {
    v19 = CGPDFFontGetFont(*a1);
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      value = 0;
      do
      {
        UnicodesForIndex = CGPDFEncodingGetUnicodesForIndex(a1, v21, &value);
        v23 = *(explicit + v21);
        v24 = value;
        unimap = get_unimap(v20);
        if (v24 == 1)
        {
          v26 = (unimap + 2);
          v27 = atomic_load_explicit(unimap + 2, memory_order_acquire);
          if (!v27)
          {
            v27 = malloc_type_calloc(1uLL, 0x208uLL, 0x1080040036EC52CuLL);
            v28 = 0;
            *v27 = -1;
            atomic_compare_exchange_strong(v26, &v28, v27);
            if (v28)
            {
              CGFontIndexMapRelease(v27);
              v27 = v28;
            }
          }

          CGFontIndexMapAddIndex(v27, v23, *UnicodesForIndex);
        }

        ++v21;
      }

      while (v21 != 256);
    }
  }

  return explicit;
}

void get_truetype_glyph_vector(uint64_t a1, uint64_t a2, int a3, int a4, _WORD *a5)
{
  if (a3)
  {

    lookup_glyphs_by_cmap(a1, a2, a5);
    return;
  }

  FontDescriptor = CGPDFFontGetFontDescriptor(*a1);
  if (FontDescriptor && ((*(FontDescriptor + 40) >> 5) & 1) != 0 || (v10 = *(a1 + 8), (v10 & 0xFFFFFFFE) == 2))
  {

    lookup_glyphs_by_cmap_nonsymbolic(a1, a2, a5);
    return;
  }

  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - 1;
  }

  if (v11 > 6)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(&off_1E6E31118 + v11);
  }

  v13 = 0;
  v14 = MEMORY[0x1E69E9830];
  do
  {
    v15 = *(a1 + 32);
    if (!v15 || (v16 = *(v15 + 8 * v13)) == 0)
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_28;
      }

      v16 = *(v12 + 8 * v13);
    }

    if (a4)
    {
      if (v16)
      {
        if (strlen(v16) == 1)
        {
          v17 = *v16;
          if ((v17 - 97) <= 0x19)
          {
            v22[0] = *(v14 + 4 * v17 + 2108);
            v22[1] = 0;
            v16 = v22;
          }
        }
      }
    }

LABEL_28:
    v24 = v16;
    v23 = 0;
    if (a2)
    {
      (*(*(a2 + 16) + 288))(*(a2 + 112), &v24, &v23, 1);
      v18 = v23;
    }

    else
    {
      v18 = 0;
    }

    a5[v13++] = v18;
  }

  while (v13 != 256);
  if (!*a5)
  {
    v19 = 1;
    while (v19 != 256)
    {
      v20 = v19;
      if (a5[v19++])
      {
        if ((v20 - 1) < 0xFF)
        {
          return;
        }

        break;
      }
    }

    lookup_glyphs_by_cmap(a1, a2, a5);
  }
}

size_t get_type1_glyph_vector(size_t result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 != -1)
  {
    v9 = v8 - 1;
    if (v9 > 6)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(&off_1E6E31118 + v9);
    }

    v17 = 0;
    v18 = MEMORY[0x1E69E9830];
    while (1)
    {
      v19 = *(v7 + 32);
      if (v19)
      {
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          goto LABEL_25;
        }
      }

      if (v10)
      {
        break;
      }

      v20 = 0;
LABEL_31:
      v26 = v20;
      v25 = 0;
      if (a2)
      {
        result = (*(*(a2 + 16) + 288))(*(a2 + 112), &v26, &v25, 1);
        v22 = v25;
      }

      else
      {
        v22 = 0;
      }

      *(a4 + 2 * v17++) = v22;
      if (v17 == 256)
      {
        return result;
      }
    }

    v20 = *(v10 + 8 * v17);
LABEL_25:
    if (a3)
    {
      if (v20)
      {
        result = strlen(v20);
        if (result == 1)
        {
          v21 = *v20;
          if ((v21 - 97) <= 0x19)
          {
            v23 = *(v18 + 4 * v21 + 2108);
            v24 = 0;
            v20 = &v23;
          }
        }
      }
    }

    goto LABEL_31;
  }

  if (a2)
  {
    result = (*(*(a2 + 16) + 248))(*(a2 + 112), a4);
  }

  if (*(v7 + 32))
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E9830];
    do
    {
      v13 = *(v7 + 32);
      v14 = *(v13 + 8 * v11);
      if (v14)
      {
        if (a3)
        {
          result = strlen(*(v13 + 8 * v11));
          if (result == 1)
          {
            v15 = *v14;
            if ((v15 - 97) <= 0x19)
            {
              v23 = *(v12 + 4 * v15 + 2108);
              v24 = 0;
              v14 = &v23;
            }
          }
        }

        v26 = v14;
        v25 = 0;
        if (a2)
        {
          result = (*(*(a2 + 16) + 288))(*(a2 + 112), &v26, &v25, 1);
          v16 = v25;
        }

        else
        {
          v16 = 0;
        }

        *(a4 + 2 * v11) = v16;
      }

      ++v11;
    }

    while (v11 != 256);
  }

  return result;
}

uint64_t CGPDFEncodingGetUnicodesForIndex(uint64_t a1, unint64_t a2, void *a3)
{
  unichar_info = get_unichar_info(a1);
  if (a2 <= 0xFF && unichar_info)
  {
    if (a2)
    {
      v6 = unichar_info[a2];
    }

    else
    {
      v6 = 0;
    }

    v8 = unichar_info[a2 + 1];
    if (a3)
    {
      *a3 = v8 - v6;
    }

    if (v8 == v6)
    {
      return 0;
    }

    else
    {
      return unichar_info + 2 * v6 + 2056;
    }
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return result;
}

void *get_unichar_info(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  explicit = atomic_load_explicit((a1 + 56), memory_order_acquire);
  if (!explicit)
  {
    v8 = CGPDFFontGetToUnicodeCMap(*a1);
    v9 = *(a1 + 8) - 1;
    if (v9 > 6)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(&off_1E6E31150 + v9);
    }

    v11 = 0;
    v12 = 0;
    for (i = 0; i != 256; ++i)
    {
      if (!v8 || (v14 = *(*(v8 + 16) + 48)) == 0 || (unichars_for_index = cmap_bf_set_get_unichars(*(v14 + 16), i, 0, v3, v4, v5, v6, v7)) == 0)
      {
        unichars_for_index = get_unichars_for_index(a1, v10, i, 0);
      }

      if (v11 <= unichars_for_index)
      {
        v11 = unichars_for_index;
      }

      v12 += unichars_for_index;
    }

    explicit = malloc_type_calloc(1uLL, 2 * v12 + 2056, 0x100004078B9B834uLL);
    __CFSetLastAllocationEventName();
    v21 = 0;
    v22 = 0;
    *explicit = v11;
    v23 = explicit + 257;
    do
    {
      if (!v8 || (v24 = *(*(v8 + 16) + 48)) == 0 || (unichars = cmap_bf_set_get_unichars(*(v24 + 16), v22, v23, v16, v17, v18, v19, v20)) == 0)
      {
        unichars = get_unichars_for_index(a1, v10, v22, v23);
      }

      v23 += unichars;
      v21 += unichars;
      explicit[++v22] = v21;
    }

    while (v22 != 256);
    v26 = 0;
    atomic_compare_exchange_strong((a1 + 56), &v26, explicit);
    if (v26)
    {
      free(explicit);
      return v26;
    }
  }

  return explicit;
}

uint64_t get_unichars_for_index(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    if (!v6 || !*(v6 + 8 * a3))
    {
      if (!a4)
      {
        return 1;
      }

      v10 = *(a2 + 2 * a3);
LABEL_13:
      *a4 = v10;
      return 1;
    }
  }

  NameForIndex = CGPDFEncodingGetNameForIndex(a1, a3);
  v8 = NameForIndex;
  if (*(a1 + 24) == 1)
  {
    if (NameForIndex)
    {
      if (strcmp(NameForIndex, ".notdef"))
      {
        if (strlen(v8) >= 3)
        {
          v9 = digit_to_int(v8[1]);
          v10 = digit_to_int(v8[2]) + 16 * v9;
          if (v10)
          {
            if (!a4)
            {
              return 1;
            }

            goto LABEL_13;
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v12 = *(a1 + 48);

    return CGPDFGetUnicharsForGlyphName(NameForIndex, v12, a4);
  }
}

uint64_t CGPDFEncodingGetNameForIndex(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 <= 0xFF)
    {
      v5 = *(a1 + 32);
      if (!v5 || (result = *(v5 + 8 * a2)) == 0)
      {
        v6 = *(a1 + 8);
        if (v6 != -1)
        {
          v7 = v6 - 1;
          if (v7 <= 6)
          {
            explicit = *(&off_1E6E31118 + v7);
            goto LABEL_9;
          }

          return 0;
        }

        explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
        if (!explicit)
        {
          if (!*a1)
          {
            return 0;
          }

          v9 = *(*a1 + 200);
          if ((v9 - 2) > 2)
          {
            return 0;
          }

          explicit = malloc_type_calloc(1uLL, 0x800uLL, 0x10040436913F5uLL);
          __CFSetLastAllocationEventName();
          if (v9 == 4)
          {
            for (i = 0; i != 256; ++i)
            {
              v11 = CGPDFEncodingVectorMacRoman[i];
              v12 = strlen(v11);
              v13 = malloc_type_malloc(v12 + 1, 0x1E86383FuLL);
              __CFSetLastAllocationEventName();
              *&explicit[i * 8] = v13;
              strcpy(v13, v11);
            }
          }

          else
          {
            get_builtin_type1_names(*a1, explicit, (a1 + 24));
          }

          v14 = 0;
          atomic_compare_exchange_strong((a1 + 16), &v14, explicit);
          if (v14)
          {
            free_builtin_names(explicit);
            explicit = v14;
          }
        }

LABEL_9:
        if (explicit)
        {
          return *&explicit[8 * a2];
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t digit_to_int(unsigned int a1)
{
  if (a1 <= 0x7F)
  {
    v2 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60);
    if ((v2 & 0x400) == 0)
    {
      if ((v2 & 0x10000) == 0)
      {
        return 0;
      }

      v4 = v2 & 0x8000;
      goto LABEL_10;
    }

    return a1 - 48;
  }

  if (__maskrune_l(a1, 0x400uLL, 0))
  {
    return a1 - 48;
  }

  result = __maskrune_l(a1, 0x10000uLL, 0);
  if (!result)
  {
    return result;
  }

  v4 = __maskrune_l(a1, 0x8000uLL, 0);
LABEL_10:
  if (v4)
  {
    v5 = -55;
  }

  else
  {
    v5 = -87;
  }

  return v5 + a1;
}

void get_builtin_type1_names(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v27 = a3;
  v29 = *MEMORY[0x1E69E9840];
  Font = CGPDFFontGetFont(a1);
  v6 = Font;
  if (Font)
  {
    (*(*(Font + 16) + 248))(*(Font + 112), v28);
    Font = (*(*(v6 + 16) + 296))(*(v6 + 112));
  }

  v26 = &v26;
  v7 = Font + 1;
  MEMORY[0x1EEE9AC00](Font, v5);
  v10 = &v26 - v9;
  if (v7 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = &v26 - v9;
  }

  if (v8 >= 0x82)
  {
    v11 = malloc_type_malloc(v7, 0x7CC0FF1BuLL);
  }

  for (i = 0; i != 256; ++i)
  {
    if (v6 && ((*(*(v6 + 16) + 304))(*(v6 + 112), v28[i], v11, v7) & 1) != 0)
    {
      v13 = strlen(v11);
      v14 = malloc_type_malloc(v13 + 1, 0x13F79552uLL);
      __CFSetLastAllocationEventName();
      *(a2 + 8 * i) = v14;
      strcpy(v14, v11);
    }

    else
    {
      *(a2 + 8 * i) = 0;
    }
  }

  if (v11 != v10)
  {
    free(v11);
  }

  v15 = 0;
  v16 = 0;
  v17 = 1;
  v18 = MEMORY[0x1E69E9830];
  while (1)
  {
    v19 = *(a2 + v15);
    if (v19)
    {
      if (strcmp(*(a2 + v15), ".notdef"))
      {
        break;
      }
    }

    v20 = v16;
LABEL_36:
    v15 += 8;
    v16 = v20;
    if (v15 == 2048)
    {
      LOBYTE(v21) = v17 ^ 1;
      goto LABEL_39;
    }
  }

  if (strlen(v19) != 3)
  {
    goto LABEL_38;
  }

  v20 = *v19;
  if (!v16)
  {
    if ((v20 & 0x80000000) != 0)
    {
      v21 = __maskrune_l(*v19, 0x100uLL, 0);
    }

    else
    {
      v21 = *(v18 + 4 * v20 + 60) & 0x100;
    }

    if (!v21)
    {
      goto LABEL_39;
    }

LABEL_28:
    v22 = v19[1];
    if ((v22 & 0x80000000) != 0)
    {
      v23 = __maskrune_l(v22, 0x10000uLL, 0);
      LOBYTE(v21) = v23;
      if (!v23)
      {
        goto LABEL_39;
      }
    }

    else
    {
      LODWORD(v21) = *(v18 + 4 * v22 + 60) & 0x10000;
      if (!v21)
      {
        goto LABEL_39;
      }
    }

    v24 = v19[2];
    if ((v24 & 0x80000000) != 0)
    {
      v25 = __maskrune_l(v24, 0x10000uLL, 0);
    }

    else
    {
      v25 = *(v18 + 4 * v24 + 60) & 0x10000;
    }

    v17 = 0;
    LOBYTE(v21) = 0;
    if (!v25)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v20 = v16;
  if (*v19 == v16)
  {
    goto LABEL_28;
  }

LABEL_38:
  LOBYTE(v21) = 0;
LABEL_39:
  *v27 = v21 & 1;
}

void lookup_glyphs_by_cmap(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  FontDescriptor = CGPDFFontGetFontDescriptor(*a1);
  if ((!FontDescriptor || (*(FontDescriptor + 40) & 0x20) == 0) && (*(a1 + 8) & 0xFFFFFFFE) != 2)
  {
    v7 = malloc_type_calloc(1uLL, 0x208uLL, 0x1080040036EC52CuLL);
    *v7 = 0;
    if (a2)
    {
      if ((*(*(a2 + 16) + 256))(*(a2 + 112), 3, 0, v7))
      {
        _3_0_cmap_prefix = get_3_0_cmap_prefix(v7);
        v9 = 0;
        v10 = xmmword_18439C5D0;
        v11 = vdupq_n_s16(_3_0_cmap_prefix);
        v12.i64[0] = 0x8000800080008;
        v12.i64[1] = 0x8000800080008;
        do
        {
          *&v16[v9] = vorrq_s8(v11, v10);
          v10 = vaddq_s16(v10, v12);
          v9 += 8;
        }

        while (v9 != 256);
        CGFontIndexMapGetValues(v7, v16, 256, a3);
        goto LABEL_24;
      }

      if ((*(*(a2 + 16) + 256))(*(a2 + 112), 1, 0, v7))
      {
        for (i = 0; i != 256; ++i)
        {
          if (v7)
          {
            if (v7 == -1)
            {
              v14 = i;
            }

            else
            {
              v15 = atomic_load(&v7[4 * (i >> 10) + 4]);
              if (v15)
              {
                v14 = *(v15 + 2 * i);
              }

              else
              {
                v14 = *v7;
              }
            }
          }

          else
          {
            v14 = -1;
          }

          a3[i] = v14;
        }

        goto LABEL_24;
      }
    }

    lookup_glyphs_by_cmap_nonsymbolic(a1, a2, a3);
LABEL_24:
    CGFontIndexMapRelease(v7);
    return;
  }

  lookup_glyphs_by_cmap_nonsymbolic(a1, a2, a3);
}

void lookup_glyphs_by_cmap_nonsymbolic(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8) - 1;
  if (v6 > 6)
  {
    bzero(v51, 0x800uLL);
  }

  else
  {
    memcpy(v51, *(&off_1E6E31118 + v6), sizeof(v51));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != 2048; i += 8)
    {
      v9 = *(v7 + i);
      if (v9)
      {
        *&v51[i] = v9;
      }
    }
  }

  for (j = 0; j != 128; ++j)
  {
    v11 = vmovn_s64(vceqzq_s64(*&v51[j * 16]));
    v12 = CGPDFEncodingVectorStandard[j];
    if (v11.i8[0])
    {
      *&v51[j * 16] = v12;
    }

    if (v11.i8[4])
    {
      *&v51[j * 16 + 8] = *(&v12 + 1);
    }
  }

  v13 = malloc_type_calloc(1uLL, 0x208uLL, 0x1080040036EC52CuLL);
  *v13 = 0;
  if (!a2)
  {
    goto LABEL_77;
  }

  if ((*(*(a2 + 16) + 256))(*(a2 + 112), 3, 1, v13))
  {
    v14 = 0;
    v15 = 0;
    v16 = v13 + 4;
    do
    {
      v17 = *&v51[8 * v14];
      if (v17 && CGPDFGetUnicharsForGlyphName(*&v51[8 * v14], 0, 0) == 1)
      {
        LOWORD(v50) = 0;
        CGPDFGetUnicharsForGlyphName(v17, 0, &v50);
        if (v13)
        {
          v18 = v50;
          if (v13 != -1)
          {
            v19 = atomic_load(&v16[4 * (v50 >> 10)]);
            if (v19)
            {
              v18 = *(v19 + 2 * (v50 & 0x3FF));
            }

            else
            {
              v18 = *v13;
            }
          }
        }

        else
        {
          v18 = 0xFFFF;
        }
      }

      else
      {
        v18 = 0;
      }

      *(a3 + v14) = v18;
      v15 |= v18 == 0;
      ++v14;
    }

    while (v14 != 256);
    if (v15)
    {
      v24 = CGPDFFontGetToUnicodeCMap(*a1);
      if (v24)
      {
        v26 = v24;
        v27 = *(*(v24 + 16) + 48);
        if (v27)
        {
          v27 = *(v27 + 16);
          if (v27)
          {
            v27 = *(v27 + 40);
          }
        }

        v28 = MEMORY[0x1EEE9AC00](2 * v27, v25);
        v36 = &v48[-v35];
        if (v34 <= 0x7FFFFFFFFFFFFFFELL)
        {
          v37 = &v48[-v35];
        }

        else
        {
          v37 = 0;
        }

        if (v34 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000022)
        {
          v37 = malloc_type_malloc(v28, 0xA775060EuLL);
        }

        for (k = 0; k != 256; ++k)
        {
          if (!*(a3 + k))
          {
            v39 = *(*(v26 + 16) + 48);
            if (v39)
            {
              if (cmap_bf_set_get_unichars(*(v39 + 16), k, v37, v29, v30, v31, v32, v33))
              {
                if (v13)
                {
                  v40 = *v37;
                  if (v13 != -1)
                  {
                    v41 = atomic_load((v16 + ((v40 >> 7) & 0x1F8)));
                    if (v41)
                    {
                      LOWORD(v40) = *(v41 + 2 * (v40 & 0x3FF));
                    }

                    else
                    {
                      LOWORD(v40) = *v13;
                    }
                  }
                }

                else
                {
                  LOWORD(v40) = -1;
                }

                *(a3 + k) = v40;
              }
            }
          }
        }

        if (v37 != v36)
        {
          free(v37);
        }
      }
    }

    goto LABEL_78;
  }

  if ((*(*(a2 + 16) + 256))(*(a2 + 112), 3, 0, v13))
  {
    _3_0_cmap_prefix = get_3_0_cmap_prefix(v13);
    for (m = 0; m != 256; ++m)
    {
      if (v13)
      {
        v22 = _3_0_cmap_prefix | m;
        if (v13 != -1)
        {
          v23 = atomic_load(&v13[4 * (v22 >> 10) + 4]);
          if (v23)
          {
            v22 = *(v23 + 2 * ((_3_0_cmap_prefix | m) & 0x3FF));
          }

          else
          {
            v22 = *v13;
          }
        }
      }

      else
      {
        v22 = -1;
      }

      *(a3 + m) = v22;
    }

    goto LABEL_78;
  }

  if (!(*(*(a2 + 16) + 256))(*(a2 + 112), 1, 0, v13))
  {
LABEL_77:
    a3[30] = 0u;
    a3[31] = 0u;
    a3[28] = 0u;
    a3[29] = 0u;
    a3[26] = 0u;
    a3[27] = 0u;
    a3[24] = 0u;
    a3[25] = 0u;
    a3[22] = 0u;
    a3[23] = 0u;
    a3[20] = 0u;
    a3[21] = 0u;
    a3[18] = 0u;
    a3[19] = 0u;
    a3[16] = 0u;
    a3[17] = 0u;
    a3[14] = 0u;
    a3[15] = 0u;
    a3[12] = 0u;
    a3[13] = 0u;
    a3[10] = 0u;
    a3[11] = 0u;
    a3[8] = 0u;
    a3[9] = 0u;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_78;
  }

  for (n = 0; n != 256; ++n)
  {
    v43 = *&v51[8 * n];
    if (v43)
    {
      v44 = 0;
      while (strcmp(v43, CGPDFEncodingVectorMacRoman[v44]))
      {
        if (++v44 == 256)
        {
          goto LABEL_68;
        }
      }

      if (v13)
      {
        if (v13 != -1)
        {
          v45 = atomic_load(&v13[4 * (v44 >> 10) + 4]);
          if (v45)
          {
            LOWORD(v44) = *(v45 + 2 * (v44 & 0x3FF));
          }

          else
          {
            LOWORD(v44) = *v13;
          }
        }
      }

      else
      {
        LOWORD(v44) = -1;
      }
    }

    else
    {
LABEL_68:
      LOWORD(v44) = 0;
    }

    *(a3 + n) = v44;
  }

LABEL_78:
  CGFontIndexMapRelease(v13);
  for (ii = 0; ii != 256; ++ii)
  {
    if (!*(a3 + ii) && *&v51[8 * ii])
    {
      v50 = *&v51[8 * ii];
      v49 = 0;
      if (a2)
      {
        (*(*(a2 + 16) + 288))(*(a2 + 112), &v50, &v49, 1);
        v47 = v49;
      }

      else
      {
        v47 = 0;
      }

      *(a3 + ii) = v47;
    }
  }
}

uint64_t get_3_0_cmap_prefix(__int16 *a1)
{
  v2 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v3.i64[0] = 0x8000800080008;
  v3.i64[1] = 0x8000800080008;
  v21 = vdupq_n_s64(1uLL);
  while (1)
  {
    v4 = 0;
    v5 = get_3_0_cmap_prefix_prefix[v2];
    v6 = vdupq_n_s16(v5);
    v7 = xmmword_18439C5D0;
    do
    {
      *&v23[v4] = vorrq_s8(v6, v7);
      v7 = vaddq_s16(v7, v3);
      v4 += 8;
    }

    while (v4 != 256);
    CGFontIndexMapGetValues(a1, v23, 256, v22);
    v8 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = vtstq_s16(*&v22[v8], *&v22[v8]);
      v14 = vmovl_u16(*v13.i8);
      v15.i64[0] = v14.u32[0];
      v15.i64[1] = v14.u32[1];
      v16 = vandq_s8(v15, v21);
      v15.i64[0] = v14.u32[2];
      v15.i64[1] = v14.u32[3];
      v17 = vandq_s8(v15, v21);
      v18 = vmovl_high_u16(v13);
      v15.i64[0] = v18.u32[0];
      v15.i64[1] = v18.u32[1];
      v19 = vandq_s8(v15, v21);
      v15.i64[0] = v18.u32[2];
      v15.i64[1] = v18.u32[3];
      v12 = vaddq_s64(v12, vandq_s8(v15, v21));
      v11 = vaddq_s64(v11, v19);
      v10 = vaddq_s64(v10, v17);
      v9 = vaddq_s64(v9, v16);
      v8 += 8;
    }

    while (v8 != 256);
    if (vaddvq_s64(vaddq_s64(vaddq_s64(v9, v11), vaddq_s64(v10, v12))))
    {
      break;
    }

    ++v2;
    v3.i64[0] = 0x8000800080008;
    v3.i64[1] = 0x8000800080008;
    if (v2 == 4)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t CGPDFEncodingGetGlyphVectorWithFont(size_t a1, uint64_t a2, int a3, _WORD *a4)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = *(*a1 + 200);
  if ((v4 - 2) < 2)
  {
    get_type1_glyph_vector(a1, a2, a3, a4);
    return 1;
  }

  if (v4 == 4)
  {
    get_truetype_glyph_vector(a1, a2, 0, a3, a4);
    return 1;
  }

  return 0;
}

void *CGPDFEncodingGetUnicodeMaxLength(uint64_t a1)
{
  result = get_unichar_info(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t defaults_setup_21642()
{
  v2 = 0;
  v1 = 0;
  if (get_integer_property("CGFontQX", copy_local_domain_value, &v2))
  {
    QX = v2;
  }

  result = get_integer_property("CGFontQY", copy_local_domain_value, &v1);
  if (result)
  {
    QY = v1;
  }

  return result;
}

uint64_t CGFontGetGlyphPositions(uint64_t result, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  if (a2)
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = (result + 8);
    v8 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
    do
    {
      *a4++ = vaddq_f64(vaddq_f64(v6, vmlaq_n_f64(vmulq_n_f64(v5, *v7), v4, *(v7 - 1))), v8);
      v7 += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

void CGPDFHintTableSet::~CGPDFHintTableSet(CGPDFHintTableSet *this)
{
  CGPDFHintTableSet::~CGPDFHintTableSet(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF242EB0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x1865EE610](v2, 0x1000C40451B5BE8);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x1865EE610](v3, 0x1000C40451B5BE8);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    std::default_delete<CGSharedObjectHintTable>::operator()[abi:fe200100](v4);
  }

  std::unique_ptr<CGPageOffsetHintTable>::reset[abi:fe200100](this + 8, 0);
}

uint64_t std::default_delete<CGSharedObjectHintTable>::operator()[abi:fe200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      *(v1 + 40) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

uint64_t *std::unique_ptr<CGPageOffsetHintTable>::reset[abi:fe200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      v4 = *(v2 + 56);
      v5 = *(v2 + 48);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 40);
          if (v6)
          {
            *(v4 - 32) = v6;
            operator delete(v6);
          }

          v4 -= 64;
        }

        while (v4 != v3);
        v5 = *(v2 + 48);
      }

      *(v2 + 56) = v3;
      operator delete(v5);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

void *std::vector<CGSharedObjectGroupEntry>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<CGSharedObjectGroupEntry>>(a2);
  }

  return result;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<CGSharedObjectGroupEntry>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<CGPageOffsetHintTablePageEntry>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<CGPageOffsetHintTablePageEntry>,CGPageOffsetHintTablePageEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 4);
      *a4 = v7;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(v6 + 3) = 0;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(a4 + 48) = v6[3];
      v6 += 4;
      a4 += 64;
    }

    while (v6 != a3);
    do
    {
      v8 = *(v5 + 3);
      if (v8)
      {
        *(v5 + 4) = v8;
        operator delete(v8);
      }

      v5 += 4;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<CGPageOffsetHintTablePageEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 40);
    if (v4)
    {
      *(v2 - 32) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t CGPDFHintTableSet::rangeCheck(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (this < a2 || this > a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:fe200100](exception);
    __cxa_throw(exception, off_1E6E04870, MEMORY[0x1E69E5268]);
  }

  return this;
}

void CGPDFHintTableSet::readGenericHintTable(CGPDFHintTableSet *this, const __CFData *a2, CFDataRef theData, uint64_t a4)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (BytePtr)
  {
    v7 = &BytePtr[a4];
    *v10 = &BytePtr[a4];
    v8 = CFDataGetBytePtr(theData);
    if (&v8[CFDataGetLength(theData)] - v7 > 15)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:fe200100](exception, "Insufficient data size");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:fe200100](exception, "CFDataGetBytePtr(hint_data) returned NULL");
  }

  __cxa_throw(exception, off_1E6E04878, MEMORY[0x1E69E5270]);
}

std::logic_error *std::domain_error::domain_error[abi:fe200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55A8] + 16);
  return result;
}

_DWORD *CGPDFHintTableSet::copyFromBuf(_DWORD *this, unsigned int *a2, const unsigned __int8 **a3, const unsigned __int8 *a4)
{
  v4 = *a2 + 4;
  if (v4 > a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::length_error::length_error[abi:fe200100](exception, "not enough data");
    __cxa_throw(exception, off_1E6E04880, MEMORY[0x1E69E5278]);
  }

  *this = bswap32(**a2);
  *a2 = v4;
  return this;
}

_WORD *CGPDFHintTableSet::copyFromBuf(_WORD *this, unsigned __int16 *a2, const unsigned __int8 **a3, const unsigned __int8 *a4)
{
  v4 = *a2 + 2;
  if (v4 > a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::length_error::length_error[abi:fe200100](exception, "not enough data");
    __cxa_throw(exception, off_1E6E04880, MEMORY[0x1E69E5278]);
  }

  *this = bswap32(**a2) >> 16;
  *a2 = v4;
  return this;
}

std::runtime_error *std::range_error::range_error[abi:fe200100](std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "rangeCheck failure");
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

uint64_t ___ZN17CGPDFHintTableSet23writeSharedObjectsTableEP14CGDataConsumerx_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(*(result + 32) + 72) + 40) != *(*(*(result + 32) + 72) + 32))
    {
      operator new[]();
    }
  }

  return result;
}

uint64_t ___ZN17CGPDFHintTableSet21writePageOffsetsTableEP14CGDataConsumerx_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(*(result + 32) + 64) + 56) != *(*(*(result + 32) + 64) + 48))
    {
      operator new[]();
    }
  }

  return result;
}

uint64_t ___ZN17CGPDFHintTableSet21writePageOffsetsTableEP14CGDataConsumerx_block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(result + 32) + 64);
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    if (v3 != v4)
    {
      v5 = 0;
      do
      {
        v5 += (*(v3 + 32) - *(v3 + 24)) >> 3;
        v3 += 64;
      }

      while (v3 != v4);
      if (v5)
      {
        operator new[]();
      }
    }
  }

  return result;
}

CFDictionaryRef __get_provider_options_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGImagePreferGPUForColorConversion";
  values = *MEMORY[0x1E695E4C0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  get_provider_options_options_singleton = result;
  return result;
}

CFStringRef _CPIndexSetCopyDebugDesc(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = CFGetAllocator(a1);
  if (v2 == 1)
  {
    return CFStringCreateWithFormat(v3, 0, @"<CPIndexSet = 1 range (%.1ld, %.1ld]>"), **(a1 + 32), *(*(a1 + 32) + 8);
  }

  if (v2)
  {
    return CFStringCreateWithFormat(v3, 0, @"<CPIndexSet = %ld ranges>", *(a1 + 16));
  }

  return CFStringCreateCopy(v3, @"<CPIndexSet = empty>");
}

void _CPIndexSetFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 32) = 0;
}

int64x2_t *CPIndexSetCreateWithRange(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((a1 & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) == 0)
  {
    if (!CPIndexSetGetTypeID_id)
    {
      CPIndexSetGetTypeID_id = _CFRuntimeRegisterClass();
    }

    Instance = _CFRuntimeCreateInstance();
    v2 = Instance;
    if (Instance)
    {
      Instance[1] = vdupq_n_s64(1uLL);
      v6 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      v2[2].i64[0] = v6;
      *v6 = a1;
      v6[1] = a2;
      v2[2].i8[8] = 0;
    }
  }

  return v2;
}

void CPIndexSetNormalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    if (v2 != 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
    qsort(*(a1 + 32), v2, 0x10uLL, sortRangesByLocation);
  }

  v3 = 0;
  v4 = 0;
  while ((*(*(a1 + 32) + v3) & 0x8000000000000000) != 0)
  {
    ++v4;
    v3 += 16;
    if (v2 == v4)
    {
      v4 = v2;
      goto LABEL_12;
    }
  }

  v5 = v2 - v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v2 > v4)
  {
    v6 = 0;
    do
    {
      *(*(a1 + 32) + v6) = *(*(a1 + 32) + v3);
      v3 += 16;
      v6 += 16;
      --v5;
    }

    while (v5);
  }

LABEL_12:
  v2 -= v4;
  *(a1 + 16) = v2;
LABEL_13:
  if (v2 >= 2)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7 + 1;
      if (v7 + 1 < v2)
      {
        break;
      }

LABEL_33:
      ++v7;
      if (v8 >= v2)
      {
        *(a1 + 16) = v2;
        goto LABEL_35;
      }
    }

    v9 = (*(a1 + 32) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];
    v12 = v7 + 1;
    while (1)
    {
      v13 = *(a1 + 32);
      v14 = (v13 + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      if (v11 == v16)
      {
        break;
      }

      if (v16 <= v10 + v11)
      {
        v20 = v15 + v16;
        if (v20 > v10 + v11)
        {
          v10 = v20 - v11;
          v21 = (v13 + 16 * v7);
          v21[1] = v10;
          v11 = *v21;
        }

        if (v12 + 1 < v2)
        {
          v22 = ~v12 + v2;
          v23 = 16 * v12;
          do
          {
            *(*(a1 + 32) + v23) = *(*(a1 + 32) + v23 + 16);
            v23 += 16;
            --v22;
          }

          while (v22);
        }

        goto LABEL_31;
      }

      ++v12;
LABEL_32:
      if (v12 >= v2)
      {
        goto LABEL_33;
      }
    }

    if (v15 > v10)
    {
      v17 = (v13 + 16 * v7);
      v17[1] = v15;
      v11 = *v17;
      v10 = v15;
    }

    if (v12 + 1 < v2)
    {
      v18 = ~v12 + v2;
      v19 = 16 * v12;
      do
      {
        *(*(a1 + 32) + v19) = *(*(a1 + 32) + v19 + 16);
        v19 += 16;
        --v18;
      }

      while (v18);
    }

LABEL_31:
    --v2;
    goto LABEL_32;
  }

LABEL_35:
  *(a1 + 40) = 0;
}

uint64_t sortRangesByLocation(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t CPIndexSetGetFirstIndex(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 40))
  {
    CPIndexSetNormalize(a1);
  }

  if (*(a1 + 16) < 1)
  {
    return -1;
  }

  else
  {
    return **(a1 + 32);
  }
}

uint64_t CPIndexSetGetLastIndex(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 40))
  {
    CPIndexSetNormalize(a1);
  }

  v2 = *(a1 + 16);
  if (v2 < 1)
  {
    return -1;
  }

  else
  {
    return *(*(a1 + 32) + 16 * v2 - 16) + *(*(a1 + 32) + 16 * v2 - 8) - 1;
  }
}

uint64_t CPIndexSetGetRange(uint64_t a1, uint64_t a2)
{
  result = -1;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 40))
    {
      CPIndexSetNormalize(a1);
    }

    if (*(a1 + 16) <= a2)
    {
      return -1;
    }

    else
    {
      return *(*(a1 + 32) + 16 * a2);
    }
  }

  return result;
}

void CPIndexSetAddRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (a2 & 0x8000000000000000) == 0 && (a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v6 >= v7)
    {
      *(a1 + 24) = v7 + 1;
      v9 = malloc_type_malloc(16 * (v7 + 1), 0x1000040451B5BE8uLL);
      v8 = v9;
      if (*(a1 + 16) >= 1)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          *&v9[v10] = *(*(a1 + 32) + v10);
          ++v11;
          v10 += 16;
        }

        while (v11 < *(a1 + 16));
      }

      free(*(a1 + 32));
      *(a1 + 32) = v8;
      v6 = *(a1 + 16);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    v12 = &v8[16 * v6];
    *v12 = a2;
    *(v12 + 1) = a3;
    ++*(a1 + 16);
    *(a1 + 40) = 1;
  }
}

uint64_t create_subset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  IndexVectorSize = CGFontIndexSetGetIndexVectorSize(a4);
  NumberOfGlyphs = FPFontGetNumberOfGlyphs();
  if (IndexVectorSize <= (((NumberOfGlyphs + 31) >> 3) & 0x3FFCuLL))
  {
    v10 = ((NumberOfGlyphs + 31) >> 3) & 0x3FFCLL;
  }

  else
  {
    v10 = IndexVectorSize;
  }

  v11 = malloc_type_calloc(1uLL, v10, 0x2083E96EuLL);
  CGFontIndexSetGetIndexVector(a4, v11);
  Mutable = CFArrayCreateMutable(0, 0, 0);
  FontSubset = FPFontCreateFontSubset();
  Count = CFArrayGetCount(Mutable);
  if (Count)
  {
    v15 = Count;
    for (i = 0; i != v15; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
      CGFontIndexMapAddIndex(a6, ValueAtIndex, i);
    }
  }

  CFRelease(Mutable);
  free(v11);
  return FontSubset;
}

uint64_t get_glyph_vertical_offsets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 || a4 == 0;
  v6 = !v5;
  if (!v5)
  {
    v7 = a3;
    if (a3)
    {
      v8 = a2;
      v9 = (a4 + 8);
      do
      {
        v8 += 2;
        FPFontGetGlyphVerticalTranslate();
        *(v9 - 1) = v10;
        *v9 = v11;
        v9 += 2;
        --v7;
      }

      while (v7);
    }
  }

  return v6;
}

uint64_t get_glyph_vertical_advances(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = 0;
  if (a1)
  {
    v6 = a4;
    if (a4)
    {
      v7 = a3;
      v8 = a2;
      if (a2 || !a3)
      {
        if (a3)
        {
          do
          {
            v8 += 2;
            FPFontGetGlyphIdealVerticalAdvanceWidth();
            *v6++ = v9;
            --v7;
          }

          while (v7);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL get_glyph_name_for_glyph(uint64_t a1, uint64_t a2, char *a3, CFIndex a4)
{
  v6 = FPFontCopyGlyphNameForGlyph();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFStringGetCString(v6, a3, a4, 0x600u) != 0;
  CFRelease(v7);
  return v8;
}

uint64_t get_truetype_encoding(uint64_t a1, int a2, int a3)
{
  if (a2 == 3 || a2 == 1 && !a3)
  {
    return MEMORY[0x1EEE08BE0](*(a1 + 8), a2, a3);
  }

  else
  {
    return 0;
  }
}

double get_stems(uint64_t a1, double *a2, double *a3)
{
  *a2 = FPFontGetStemV();
  result = FPFontGetStemH();
  *a3 = result;
  return result;
}

double get_vertical_metrics(uint64_t a1, _OWORD *a2)
{
  if (FPFontGetVMetrics())
  {
    result = 0.0;
    *a2 = 0u;
  }

  return result;
}

uint64_t get_font_info_21857(uint64_t a1, uint64_t a2)
{
  memset(v5, 0, 20);
  FontInfo = FPFontGetFontInfo();
  if (FontInfo)
  {
    *a2 = *&v5[0];
    *(a2 + 8) = 0;
    *(a2 + 48) = 0;
    *(a2 + 12) = *(v5 + 12);
    *(a2 + 20) = 0;
    *(a2 + 40) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 36) = 0;
    *(a2 + 104) = FPFontIsBitmapOnly();
  }

  return FontInfo;
}

const __CFArray *create_private_data_array_from_data()
{
  result = FPFontCreateFontsFromData();
  if (result)
  {
    v1 = result;
    private_data_array_with_parser_fonts = create_private_data_array_with_parser_fonts(result);
    CFRelease(v1);
    return private_data_array_with_parser_fonts;
  }

  return result;
}

void *create_private_data_with_pdf_font_data_and_zapf_data(void *result)
{
  if (result)
  {
    result = FPFontCreateWithDataAndExtra();
    if (result)
    {
      v1 = result;
      result = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D8C947D5uLL);
      *result = 1;
      result[1] = v1;
    }
  }

  return result;
}

void *create_private_data_with_data_provider(CGDataProvider *a1)
{
  result = CGDataProviderCopyData(a1);
  if (result)
  {
    v2 = result;
    v3 = FPFontCreateWithData();
    CFRelease(v2);
    if (v3)
    {
      result = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D8C947D5uLL);
      *result = 1;
      result[1] = v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *create_private_data_with_parser_font()
{
  v0 = FPFontRetain();
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D8C947D5uLL);
  *result = 1;
  result[1] = v0;
  return result;
}

unint64_t rgba32_sample_RGBAf(uint64_t a1, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v15 = *(a1 + 176);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v74 = *(a1 + 80);
  v75 = *(a1 + 88);
  v86 = *(a1 + 112);
  v85 = *(a1 + 120);
  v73 = *(a1 + 188);
  v18 = (*(a1 + 152) - 4);
  v78 = *(a1 + 144) - 1;
  v83 = *(a1 + 24);
  v84 = *(a1 + 40);
  v82 = *(a1 + 32);
  result = v82 + ((*(a1 + 260) - 1) * v83) + 4 * (4 * *(a1 + 256)) - 16;
  v76 = v17;
  v77 = v16;
  v80 = -v17;
  v81 = result;
  v79 = -v16;
  while (1)
  {
    if (a3 >= v76)
    {
      if (a3 <= v75)
      {
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        HIDWORD(v32) = HIDWORD(a3);
        v23 = a4;
        v24 = v77;
      }

      else
      {
        v26 = *(a1 + 216);
        v27 = *(a1 + 224) + v75;
        v28 = v27 - a3 + (v26 >> 1);
        v23 = a4;
        v24 = v77;
        if (v28 < 1)
        {
          goto LABEL_34;
        }

        if (v28 >= v26)
        {
          LODWORD(v29) = 0x3FFFFFFF;
        }

        else
        {
          v29 = (*(a1 + 232) * v28) >> 32;
        }

        v31 = v73 | v29;
        v32 = v27 - 0x1000000;
        v30 = 448;
      }
    }

    else
    {
      v20 = *(a1 + 216);
      v21 = v76 - *(a1 + 224);
      v22 = a3 - v21 + (v20 >> 1);
      v23 = a4;
      v24 = v77;
      if (v22 < 1)
      {
        goto LABEL_34;
      }

      if (v22 >= v20)
      {
        LODWORD(v25) = 0x3FFFFFFF;
      }

      else
      {
        v25 = (*(a1 + 232) * v22) >> 32;
      }

      v31 = v73 | v25;
      v32 = v21 + 0x1000000;
      v30 = 512;
    }

    if (a2 >= v24)
    {
      if (a2 <= v74)
      {
        v37 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v38 = *(a1 + 192);
        v39 = *(a1 + 200) + v74;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_34;
        }

        if (v40 < v38)
        {
          v31 = ((v31 >> 15) * (((*(a1 + 208) * v40) >> 32) >> 15)) | v73;
        }

        v36 = v39 - 0x1000000;
        v37 = 28;
      }
    }

    else
    {
      v33 = *(a1 + 192);
      v34 = v24 - *(a1 + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_34;
      }

      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(a1 + 208) * v35) >> 32) >> 15)) | v73;
      }

      v36 = v34 + 0x1000000;
      v37 = 32;
    }

    if (v31 >= 0x400000)
    {
      break;
    }

LABEL_34:
    v45 = v23 - 1;
    a2 += v86;
    a3 += v85;
    ++v18;
    *++v78 = 0;
LABEL_35:
    a4 = v45;
    if (!v45)
    {
      return result;
    }
  }

  v41 = v82 + SHIDWORD(v32) * v83 + 16 * (v36 >> 32);
  v42 = *(a1 + 32);
  if (result >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = result;
  }

  if (v43 < v42)
  {
    v43 = *(a1 + 32);
  }

  if (v84)
  {
    v44 = *(v43 + 12);
  }

  else
  {
    v44 = 1.0;
  }

  v46 = *v43;
  v47 = *(v43 + 4);
  if (v15)
  {
    v48 = *(v15 + (v37 | v30));
LABEL_56:
    v55 = v48 & 0xF;
    v56 = HIBYTE(v48) & 3;
    if (v55 == 1)
    {
      v69 = v41 + SBYTE1(v48) * v83;
      if (result < v69)
      {
        v69 = result;
      }

      if (v69 >= v42)
      {
        v42 = v69;
      }

      v65 = *v42;
      v66 = *(v42 + 4);
      v67 = 1.0;
      if (v84)
      {
        v67 = *(v42 + 12);
      }

      v68 = &interpolate_rgbaf_21860[4 * v56];
    }

    else
    {
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v57 = SBYTE1(v48) * v83;
          v58 = 16 * SBYTE2(v48);
          v59 = v41 + v58;
          if (result < v41 + v58)
          {
            v59 = result;
          }

          if (v59 < v42)
          {
            v59 = v42;
          }

          v60 = *(v59 + 4);
          if (v84)
          {
            v61 = *(v59 + 12);
            v62 = v41 + v57 + v58;
            if (result < v62)
            {
              v62 = result;
            }

            if (v62 >= v42)
            {
              v42 = v62;
            }

            v63 = *(v42 + 12);
          }

          else
          {
            v70 = v41 + v57 + v58;
            if (result < v70)
            {
              v70 = result;
            }

            if (v70 >= v42)
            {
              v42 = v70;
            }

            v61 = 1.0;
            v63 = 1.0;
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v56 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
          v46 = (((v46 - (v46 * v11.f32[0])) + (*v59 * v11.f32[0])) - (((v46 - (v46 * v11.f32[0])) + (*v59 * v11.f32[0])) * v12.f32[0])) + (((*v59 - (*v59 * v11.f32[0])) + (*v42 * v11.f32[0])) * v12.f32[0]);
          v71 = vmla_n_f32(vmls_lane_f32(v47, v47, v11, 0), v60, v11.f32[0]);
          v47 = vmla_n_f32(vmls_lane_f32(v71, v71, v12, 0), vmla_n_f32(vmls_lane_f32(v60, v60, v11, 0), *(v42 + 4), v11.f32[0]), v12.f32[0]);
          v44 = (((v44 - (v44 * v11.f32[0])) + (v61 * v11.f32[0])) - (((v44 - (v44 * v11.f32[0])) + (v61 * v11.f32[0])) * v12.f32[0])) + (((v61 - (v61 * v11.f32[0])) + (v63 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_40;
      }

      v64 = v41 + ((HIWORD(v48) << 56) >> 52);
      if (result < v64)
      {
        v64 = result;
      }

      if (v64 >= v42)
      {
        v42 = v64;
      }

      v65 = *v42;
      v66 = *(v42 + 4);
      v67 = 1.0;
      if (v84)
      {
        v67 = *(v42 + 12);
      }

      v68 = &interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3)];
    }

    LODWORD(a11) = v68[3];
    v46 = (v46 - (v46 * *&a11)) + (v65 * *&a11);
    v47 = vmla_n_f32(vmls_lane_f32(v47, v47, *&a11, 0), v66, *&a11);
    v44 = (v44 - (v44 * *&a11)) + (v67 * *&a11);
  }

LABEL_40:
  v49 = 0;
  v50 = v31 >> 22;
  ++v18;
  v72 = v23;
  v51 = v23 - 1;
  a3 += v85;
  v52 = v75 - a3;
  a2 += v86;
  v53 = v74 - a2;
  while (1)
  {
    RGBAF_21861(v18, v46, v47.f32[0], v47.f32[1], v44);
    *(v78 + 1 + v49) = v50;
    result = v81;
    if (v51 == v49)
    {
      return result;
    }

    if (((v52 | v53 | (v80 + a3) | (v79 + a2)) & 0x8000000000000000) != 0)
    {
      v78 += v49 + 1;
      v45 = ~v49 + v72;
      goto LABEL_35;
    }

    v41 = v82 + SHIDWORD(a3) * v83 + 16 * (a2 >> 32);
    v42 = *(a1 + 32);
    if (v81 >= v41)
    {
      v54 = v82 + SHIDWORD(a3) * v83 + 16 * (a2 >> 32);
    }

    else
    {
      v54 = v81;
    }

    if (v54 < v42)
    {
      v54 = *(a1 + 32);
    }

    if (v84)
    {
      v44 = *(v54 + 12);
    }

    else
    {
      v44 = 1.0;
    }

    v46 = *v54;
    v47 = *(v54 + 4);
    if (v15)
    {
      v48 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v78 += v49 + 1;
        v23 = ~v49 + v72;
        v31 = -1;
        goto LABEL_56;
      }
    }

    ++v49;
    ++v18;
    a3 += v85;
    v52 -= v85;
    a2 += v86;
    v53 -= v86;
    LOBYTE(v50) = -1;
  }
}

int *RGBAF_21861(int *result, float a2, float a3, float a4, float a5)
{
  if (a5 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    v5 = ((a5 * 255.0) + 0.5);
    if (a5 > 1.0)
    {
      v5 = 255;
      a5 = 1.0;
    }

    v6 = ((a2 * 255.0) + 0.5);
    if (a2 < 0.0)
    {
      v6 = 0;
    }

    if (a2 > a5)
    {
      v6 = v5;
    }

    v7 = ((a3 * 255.0) + 0.5);
    if (a3 < 0.0)
    {
      v7 = 0;
    }

    if (a3 > a5)
    {
      v7 = v5;
    }

    v8 = ((a4 * 255.0) + 0.5);
    if (a4 < 0.0)
    {
      v8 = 0;
    }

    if (a4 > a5)
    {
      v8 = v5;
    }

    v9 = (v6 << 24) | (v7 << 16) | (v8 << 8) | v5;
  }

  *result = v9;
  return result;
}

int *rgba32_sample_RGBAF(int *result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v15 = *(result + 22);
  v71 = *(result + 10);
  v72 = *(result + 11);
  v81 = *(result + 14);
  v80 = *(result + 15);
  v70 = result[47];
  v16 = (*(result + 19) - 4);
  v75 = *(result + 18) - 1;
  v79 = *(result + 5);
  v76 = *(result + 4);
  v77 = result[6];
  v82 = result;
  v78 = v76 + ((result[65] - 1) * v77) + 4 * (4 * result[64]) - 16;
  v73 = *(result + 9);
  v74 = *(result + 8);
  while (1)
  {
    if (a3 >= v73)
    {
      if (a3 <= v72)
      {
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        HIDWORD(v29) = HIDWORD(a3);
        v20 = a4;
        v21 = v74;
      }

      else
      {
        v23 = *(v82 + 27);
        v24 = *(v82 + 28) + v72;
        v25 = v24 - a3 + (v23 >> 1);
        v20 = a4;
        v21 = v74;
        if (v25 < 1)
        {
          goto LABEL_33;
        }

        if (v25 >= v23)
        {
          LODWORD(v26) = 0x3FFFFFFF;
        }

        else
        {
          v26 = (*(v82 + 29) * v25) >> 32;
        }

        v28 = v70 | v26;
        v29 = v24 - 0x1000000;
        v27 = 448;
      }
    }

    else
    {
      v17 = *(v82 + 27);
      v18 = v73 - *(v82 + 28);
      v19 = a3 - v18 + (v17 >> 1);
      v20 = a4;
      v21 = v74;
      if (v19 < 1)
      {
        goto LABEL_33;
      }

      if (v19 >= v17)
      {
        LODWORD(v22) = 0x3FFFFFFF;
      }

      else
      {
        v22 = (*(v82 + 29) * v19) >> 32;
      }

      v28 = v70 | v22;
      v29 = v18 + 0x1000000;
      v27 = 512;
    }

    if (a2 >= v21)
    {
      if (a2 <= v71)
      {
        v34 = (a2 >> 26) & 0x3C;
        v33 = a2;
      }

      else
      {
        v35 = *(v82 + 24);
        v36 = *(v82 + 25) + v71;
        v37 = v36 - a2 + (v35 >> 1);
        if (v37 < 1)
        {
          goto LABEL_33;
        }

        if (v37 < v35)
        {
          v28 = ((v28 >> 15) * (((*(v82 + 26) * v37) >> 32) >> 15)) | v70;
        }

        v33 = v36 - 0x1000000;
        v34 = 28;
      }
    }

    else
    {
      v30 = *(v82 + 24);
      v31 = v21 - *(v82 + 25);
      v32 = a2 - v31 + (v30 >> 1);
      if (v32 < 1)
      {
        goto LABEL_33;
      }

      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(v82 + 26) * v32) >> 32) >> 15)) | v70;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
    }

    if (v28 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v42 = v20 - 1;
    a2 += v81;
    a3 += v80;
    ++v16;
    *++v75 = 0;
LABEL_34:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v38 = v76 + SHIDWORD(v29) * v77 + 16 * (v33 >> 32);
  v39 = *(v82 + 4);
  v40 = v78;
  if (v78 >= v38)
  {
    v40 = v38;
  }

  if (v40 < v39)
  {
    v40 = *(v82 + 4);
  }

  if (v79)
  {
    v41 = COERCE_FLOAT(bswap32(v40[1].u32[1]));
  }

  else
  {
    v41 = 1.0;
  }

  v43 = vrev32_s8(*v40);
  v44 = COERCE_FLOAT(bswap32(v40[1].u32[0]));
  if (v15)
  {
    v45 = *(v15 + (v34 | v27));
LABEL_54:
    v52 = v45 & 0xF;
    v53 = HIBYTE(v45) & 3;
    if (v52 == 1)
    {
      v68 = (v38 + SBYTE1(v45) * v77);
      if (v78 < v68)
      {
        v68 = v78;
      }

      if (v68 >= v39)
      {
        v39 = v68;
      }

      v64 = vrev32_s8(*v39);
      v65 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
      v66 = 1.0;
      if (v79)
      {
        v66 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
      }

      v67 = &interpolate_rgbaf_21860[4 * v53];
    }

    else
    {
      if (v52 != 2)
      {
        if (v52 == 3)
        {
          v54 = (v38 + ((HIWORD(v45) << 56) >> 52));
          if (v78 < v54)
          {
            v54 = v78;
          }

          if (v54 < v39)
          {
            v54 = v39;
          }

          v55 = vrev32_s8(*v54);
          v56 = COERCE_FLOAT(bswap32(v54[1].u32[0]));
          v57 = 1.0;
          v58 = 1.0;
          if (v79)
          {
            v58 = COERCE_FLOAT(bswap32(v54[1].u32[1]));
          }

          v59 = v38 + SBYTE1(v45) * v77 + 16 * SBYTE2(v45);
          if (v78 < v59)
          {
            v59 = v78;
          }

          if (v59 >= v39)
          {
            v39 = v59;
          }

          v60 = vrev32_s8(*v39);
          v61 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
          if (v79)
          {
            v57 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v53 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v45 >> 28) & 3) + 3];
          v44 = (((v44 - (v44 * v11.f32[0])) + (v56 * v11.f32[0])) - (((v44 - (v44 * v11.f32[0])) + (v56 * v11.f32[0])) * v12.f32[0])) + (((v56 - (v56 * v11.f32[0])) + (v61 * v11.f32[0])) * v12.f32[0]);
          v62 = vmla_n_f32(vmls_lane_f32(v43, v43, v11, 0), v55, v11.f32[0]);
          v43 = vmla_n_f32(vmls_lane_f32(v62, v62, v12, 0), vmla_n_f32(vmls_lane_f32(v55, v55, v11, 0), v60, v11.f32[0]), v12.f32[0]);
          v41 = (((v41 - (v41 * v11.f32[0])) + (v58 * v11.f32[0])) - (((v41 - (v41 * v11.f32[0])) + (v58 * v11.f32[0])) * v12.f32[0])) + (((v58 - (v58 * v11.f32[0])) + (v57 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_39;
      }

      v63 = (v38 + ((HIWORD(v45) << 56) >> 52));
      if (v78 < v63)
      {
        v63 = v78;
      }

      if (v63 >= v39)
      {
        v39 = v63;
      }

      v64 = vrev32_s8(*v39);
      v65 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
      v66 = 1.0;
      if (v79)
      {
        v66 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
      }

      v67 = &interpolate_rgbaf_21860[4 * ((v45 >> 28) & 3)];
    }

    LODWORD(a11) = v67[3];
    v43 = vmla_n_f32(vmls_lane_f32(v43, v43, *&a11, 0), v64, *&a11);
    v44 = (v44 - (v44 * *&a11)) + (v65 * *&a11);
    v41 = (v41 - (v41 * *&a11)) + (v66 * *&a11);
  }

LABEL_39:
  v46 = 0;
  v47 = v28 >> 22;
  ++v16;
  v69 = v20;
  v48 = v20 - 1;
  a3 += v80;
  v49 = v72 - a3;
  a2 += v81;
  v50 = v71 - a2;
  while (1)
  {
    result = RGBAF_21861(v16, v43.f32[0], v43.f32[1], v44, v41);
    *(v75 + 1 + v46) = v47;
    if (v48 == v46)
    {
      return result;
    }

    if (((v49 | v50 | (a3 - v73) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v75 += v46 + 1;
      v42 = ~v46 + v69;
      goto LABEL_34;
    }

    v38 = v76 + SHIDWORD(a3) * v77 + 16 * (a2 >> 32);
    v39 = *(v82 + 4);
    v51 = v78;
    if (v78 >= v38)
    {
      v51 = (v76 + SHIDWORD(a3) * v77 + 16 * (a2 >> 32));
    }

    if (v51 < v39)
    {
      v51 = *(v82 + 4);
    }

    if (v79)
    {
      v41 = COERCE_FLOAT(bswap32(v51[1].u32[1]));
    }

    else
    {
      v41 = 1.0;
    }

    v43 = vrev32_s8(*v51);
    v44 = COERCE_FLOAT(bswap32(v51[1].u32[0]));
    if (v15)
    {
      v45 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v45 & 0xF) != 0)
      {
        v75 += v46 + 1;
        v20 = ~v46 + v69;
        v28 = -1;
        goto LABEL_54;
      }
    }

    ++v46;
    ++v16;
    a3 += v80;
    v49 -= v80;
    a2 += v81;
    v50 -= v81;
    LOBYTE(v47) = -1;
  }
}

int *rgba32_sample_RGBf(int *result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = *(result + 22);
  v60 = *(result + 10);
  v63 = *(result + 11);
  v68 = *(result + 15);
  v69 = *(result + 14);
  v13 = (*(result + 19) - 4);
  v64 = *(result + 18) - 1;
  v65 = *(result + 4);
  v66 = result[6];
  v70 = result;
  v59 = result[47];
  v67 = v65 + ((result[65] - 1) * v66) + 4 * (3 * result[64]) - 16;
  v61 = *(result + 9);
  v62 = *(result + 8);
  while (1)
  {
    if (a3 >= v61)
    {
      if (a3 <= v63)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v17 = a4;
        v18 = v62;
      }

      else
      {
        v20 = *(v70 + 27);
        v21 = *(v70 + 28) + v63;
        v22 = v21 - a3 + (v20 >> 1);
        v17 = a4;
        v18 = v62;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(v70 + 29) * v22) >> 32;
        }

        v25 = v59 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v14 = *(v70 + 27);
      v15 = v61 - *(v70 + 28);
      v16 = a3 - v15 + (v14 >> 1);
      v17 = a4;
      v18 = v62;
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(v70 + 29) * v16) >> 32;
      }

      v25 = v59 | v19;
      v26 = v15 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      if (a2 <= v60)
      {
        v31 = (a2 >> 26) & 0x3C;
        HIDWORD(v30) = HIDWORD(a2);
      }

      else
      {
        v32 = *(v70 + 24);
        v33 = *(v70 + 25) + v60;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_33;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((*(v70 + 26) * v34) >> 32) >> 15)) | v59;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = *(v70 + 24);
      v28 = v18 - *(v70 + 25);
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_33;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(v70 + 26) * v29) >> 32) >> 15)) | v59;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v41 = v17 - 1;
    a2 += v69;
    a3 += v68;
    ++v13;
    *++v64 = 0;
LABEL_34:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v35 = v65 + SHIDWORD(v26) * v66 + 12 * SHIDWORD(v30);
  v36 = *(v70 + 4);
  v37 = v67;
  if (v67 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(v70 + 4);
  }

  v38 = *v37;
  v39 = *(v37 + 4);
  if (!v12)
  {
    goto LABEL_36;
  }

  v40 = *(v12 + (v31 | v24));
LABEL_49:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  if (v48 == 1)
  {
    v57 = v35 + SBYTE1(v40) * v66;
    if (v67 < v57)
    {
      v57 = v67;
    }

    if (v57 >= v36)
    {
      v36 = v57;
    }

    v55 = *v36;
    v56 = &interpolate_rgbaf_21860[4 * v49];
    goto LABEL_72;
  }

  if (v48 == 2)
  {
    v54 = v35 + 12 * SBYTE2(v40);
    if (v67 < v54)
    {
      v54 = v67;
    }

    if (v54 >= v36)
    {
      v36 = v54;
    }

    v55 = *v36;
    v56 = &interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3)];
LABEL_72:
    LODWORD(a8) = v56[3];
    v38 = (v38 - (v38 * *&a8)) + (v55 * *&a8);
    v39 = vmla_n_f32(vmls_lane_f32(v39, v39, *&a8, 0), *(v36 + 4), *&a8);
    *&a8 = *&a8 + (1.0 - *&a8);
    goto LABEL_37;
  }

  if (v48 != 3)
  {
LABEL_36:
    LODWORD(a8) = 1.0;
    goto LABEL_37;
  }

  v50 = v35 + 12 * SBYTE2(v40);
  if (v67 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v67;
  }

  if (v51 < v36)
  {
    v51 = v36;
  }

  v52 = v50 + SBYTE1(v40) * v66;
  if (v67 < v52)
  {
    v52 = v67;
  }

  if (v52 >= v36)
  {
    v36 = v52;
  }

  LODWORD(a9) = interpolate_rgbaf_21860[4 * v49 + 3];
  LODWORD(a10) = interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3) + 3];
  v38 = (((v38 - (v38 * *&a9)) + (*v51 * *&a9)) - (((v38 - (v38 * *&a9)) + (*v51 * *&a9)) * *&a10)) + (((*v51 - (*v51 * *&a9)) + (*v36 * *&a9)) * *&a10);
  a8 = *(v51 + 4);
  v53 = vmla_n_f32(vmls_lane_f32(v39, v39, *&a9, 0), *&a8, *&a9);
  v39 = vmla_n_f32(vmls_lane_f32(v53, v53, *&a10, 0), vmla_n_f32(vmls_lane_f32(*&a8, *&a8, *&a9, 0), *(v36 + 4), *&a9), *&a10);
  *&a8 = ((*&a9 + (1.0 - *&a9)) - ((*&a9 + (1.0 - *&a9)) * *&a10)) + ((*&a9 + (1.0 - *&a9)) * *&a10);
LABEL_37:
  v42 = 0;
  v43 = v25 >> 22;
  ++v13;
  v58 = v17;
  v44 = v17 - 1;
  a3 += v68;
  v45 = v63 - a3;
  a2 += v69;
  v46 = v60 - a2;
  while (1)
  {
    result = RGBAF_21861(v13, v38, v39.f32[0], v39.f32[1], *&a8);
    *(v64 + 1 + v42) = v43;
    if (v44 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v61) | (a2 - v62)) & 0x8000000000000000) != 0)
    {
      v64 += v42 + 1;
      v41 = ~v42 + v58;
      goto LABEL_34;
    }

    v35 = v65 + SHIDWORD(a3) * v66 + 12 * SHIDWORD(a2);
    v36 = *(v70 + 4);
    v47 = v67;
    if (v67 >= v35)
    {
      v47 = v65 + SHIDWORD(a3) * v66 + 12 * SHIDWORD(a2);
    }

    if (v47 < v36)
    {
      v47 = *(v70 + 4);
    }

    v38 = *v47;
    v39 = *(v47 + 4);
    if (v12)
    {
      v40 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v64 += v42 + 1;
        v17 = ~v42 + v58;
        v25 = -1;
        goto LABEL_49;
      }
    }

    ++v42;
    ++v13;
    a3 += v68;
    v45 -= v68;
    a2 += v69;
    v46 -= v69;
    LODWORD(a8) = 1.0;
    LOBYTE(v43) = -1;
  }
}

int *rgba32_sample_RGBF(int *result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = *(result + 22);
  v61 = *(result + 10);
  v64 = *(result + 11);
  v69 = *(result + 15);
  v70 = *(result + 14);
  v13 = (*(result + 19) - 4);
  v65 = *(result + 18) - 1;
  v66 = *(result + 4);
  v67 = result[6];
  v71 = result;
  v60 = result[47];
  v68 = v66 + ((result[65] - 1) * v67) + 4 * (3 * result[64]) - 16;
  v62 = *(result + 9);
  v63 = *(result + 8);
  while (1)
  {
    if (a3 >= v62)
    {
      if (a3 <= v64)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v17 = a4;
        v18 = v63;
      }

      else
      {
        v20 = *(v71 + 27);
        v21 = *(v71 + 28) + v64;
        v22 = v21 - a3 + (v20 >> 1);
        v17 = a4;
        v18 = v63;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(v71 + 29) * v22) >> 32;
        }

        v25 = v60 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v14 = *(v71 + 27);
      v15 = v62 - *(v71 + 28);
      v16 = a3 - v15 + (v14 >> 1);
      v17 = a4;
      v18 = v63;
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(v71 + 29) * v16) >> 32;
      }

      v25 = v60 | v19;
      v26 = v15 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      if (a2 <= v61)
      {
        v31 = (a2 >> 26) & 0x3C;
        HIDWORD(v30) = HIDWORD(a2);
      }

      else
      {
        v32 = *(v71 + 24);
        v33 = *(v71 + 25) + v61;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_33;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((*(v71 + 26) * v34) >> 32) >> 15)) | v60;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = *(v71 + 24);
      v28 = v18 - *(v71 + 25);
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_33;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(v71 + 26) * v29) >> 32) >> 15)) | v60;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v41 = v17 - 1;
    a2 += v70;
    a3 += v69;
    ++v13;
    *++v65 = 0;
LABEL_34:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v35 = v66 + SHIDWORD(v26) * v67 + 12 * SHIDWORD(v30);
  v36 = *(v71 + 4);
  v37 = v68;
  if (v68 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(v71 + 4);
  }

  v38 = vrev32_s8(*v37);
  v39 = COERCE_FLOAT(bswap32(v37[1].u32[0]));
  if (!v12)
  {
    goto LABEL_36;
  }

  v40 = *(v12 + (v31 | v24));
LABEL_49:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  if (v48 == 1)
  {
    v58 = (v35 + SBYTE1(v40) * v67);
    if (v68 < v58)
    {
      v58 = v68;
    }

    if (v58 >= v36)
    {
      v36 = v58;
    }

    v56 = COERCE_FLOAT(bswap32(v36[1].u32[0]));
    v57 = &interpolate_rgbaf_21860[4 * v49];
    goto LABEL_72;
  }

  if (v48 == 2)
  {
    v55 = (v35 + 12 * SBYTE2(v40));
    if (v68 < v55)
    {
      v55 = v68;
    }

    if (v55 >= v36)
    {
      v36 = v55;
    }

    v56 = COERCE_FLOAT(bswap32(v36[1].u32[0]));
    v57 = &interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3)];
LABEL_72:
    LODWORD(a8) = v57[3];
    v38 = vmla_n_f32(vmls_lane_f32(v38, v38, *&a8, 0), vrev32_s8(*v36), *&a8);
    v39 = (v39 - (v39 * *&a8)) + (v56 * *&a8);
    *&a8 = *&a8 + (1.0 - *&a8);
    goto LABEL_37;
  }

  if (v48 != 3)
  {
LABEL_36:
    LODWORD(a8) = 1.0;
    goto LABEL_37;
  }

  v50 = (v35 + 12 * SBYTE2(v40));
  if (v68 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v68;
  }

  if (v51 < v36)
  {
    v51 = v36;
  }

  v52 = COERCE_FLOAT(bswap32(v51[1].u32[0]));
  v53 = (v50 + SBYTE1(v40) * v67);
  if (v68 < v53)
  {
    v53 = v68;
  }

  if (v53 >= v36)
  {
    v36 = v53;
  }

  LODWORD(a9) = interpolate_rgbaf_21860[4 * v49 + 3];
  LODWORD(a10) = interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3) + 3];
  v39 = (((v39 - (v39 * *&a9)) + (v52 * *&a9)) - (((v39 - (v39 * *&a9)) + (v52 * *&a9)) * *&a10)) + (((v52 - (v52 * *&a9)) + (COERCE_FLOAT(bswap32(v36[1].u32[0])) * *&a9)) * *&a10);
  a8 = COERCE_DOUBLE(vrev32_s8(*v51));
  v54 = vmla_n_f32(vmls_lane_f32(v38, v38, *&a9, 0), *&a8, *&a9);
  v38 = vmla_n_f32(vmls_lane_f32(v54, v54, *&a10, 0), vmla_n_f32(vmls_lane_f32(*&a8, *&a8, *&a9, 0), vrev32_s8(*v36), *&a9), *&a10);
  *&a8 = ((*&a9 + (1.0 - *&a9)) - ((*&a9 + (1.0 - *&a9)) * *&a10)) + ((*&a9 + (1.0 - *&a9)) * *&a10);
LABEL_37:
  v42 = 0;
  v43 = v25 >> 22;
  ++v13;
  v59 = v17;
  v44 = v17 - 1;
  a3 += v69;
  v45 = v64 - a3;
  a2 += v70;
  v46 = v61 - a2;
  while (1)
  {
    result = RGBAF_21861(v13, v38.f32[0], v38.f32[1], v39, *&a8);
    *(v65 + 1 + v42) = v43;
    if (v44 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v62) | (a2 - v63)) & 0x8000000000000000) != 0)
    {
      v65 += v42 + 1;
      v41 = ~v42 + v59;
      goto LABEL_34;
    }

    v35 = v66 + SHIDWORD(a3) * v67 + 12 * SHIDWORD(a2);
    v36 = *(v71 + 4);
    v47 = v68;
    if (v68 >= v35)
    {
      v47 = (v66 + SHIDWORD(a3) * v67 + 12 * SHIDWORD(a2));
    }

    if (v47 < v36)
    {
      v47 = *(v71 + 4);
    }

    v38 = vrev32_s8(*v47);
    v39 = COERCE_FLOAT(bswap32(v47[1].u32[0]));
    if (v12)
    {
      v40 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v65 += v42 + 1;
        v17 = ~v42 + v59;
        v25 = -1;
        goto LABEL_49;
      }
    }

    ++v42;
    ++v13;
    a3 += v69;
    v45 -= v69;
    a2 += v70;
    v46 -= v70;
    LODWORD(a8) = 1.0;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba32_sample_rgba64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v75 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v74 = *(result + 188);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xFF00000000000000;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
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
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v74 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v74 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v74;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v75;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v74;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 8 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 8 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = *v39;
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v71 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v71)
      {
        v71 = v15;
      }

      if (v71 < v38)
      {
        v71 = v38;
      }

      v72 = interpolate_16161616_21862[v50];
      v73 = v50 + 1;
      v65 = v40 - ((v72 & v40) >> v73);
      v70 = (v72 & *v71) >> v73;
LABEL_81:
      v40 = v65 + v70;
      break;
    case 2:
      v67 = (v37 + ((HIWORD(v41) << 56) >> 53));
      if (v15 < v67)
      {
        v67 = v15;
      }

      if (v67 < v38)
      {
        v67 = v38;
      }

      v68 = (v41 >> 28) & 3;
      v69 = interpolate_16161616_21862[v68];
      v64 = v68 + 1;
      v65 = v40 - ((v69 & v40) >> v64);
      v66 = v69 & *v67;
LABEL_75:
      v70 = v66 >> v64;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 53));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = *v52;
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = *v55;
      v57 = (v54 + (v51 >> 53));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_16161616_21862[v50];
      v59 = v50 + 1;
      v60 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((v58 & *v57) >> v59);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_16161616_21862[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      v66 = v61 & v63;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = 0;
  v44 = v25 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v75 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = ((v40 | v14) >> 56) | (BYTE1(v40) << 24) | (BYTE3(v40) << 16) | WORD2(v40) & 0xFF00;
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) != 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 8 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 8 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = *v48;
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t rgba32_sample_RGBA64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v71 = *(result + 80);
  v72 = *(result + 88);
  v7 = *(result + 112);
  v8 = *(result + 120);
  v69 = *(result + 188);
  v9 = *(result + 152) - 4;
  v10 = *(result + 144) - 1;
  v11 = *(result + 32);
  if (*(result + 40))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFF00000000000000;
  }

  v13 = v11 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v70 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v72)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v70;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v72;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_37;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v25 = v70;
        v23 = v69 | v21;
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
        goto LABEL_37;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v25 = v70;
      v23 = v69 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v25 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v69;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
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

  if (a2 <= v71)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v71;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v69;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v23 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v11 + SHIDWORD(v24) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 8 * v35;
  v37 = *(result + 32);
  if (v13 >= v36)
  {
    v38 = (v34 + 8 * v35);
  }

  else
  {
    v38 = v13;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = ((bswap32(v38[2]) >> 16) << 32) | ((bswap32(v38[3]) >> 16) << 48) | bswap32(v38[1]) & 0xFFFF0000 | (bswap32(*v38) >> 16);
  if (v5)
  {
    v40 = *(v5 + (v30 | v22));
LABEL_53:
    v48 = v40 & 0xF;
    v49 = HIBYTE(v40) & 3;
    switch(v48)
    {
      case 1:
        v67 = (v36 + SBYTE1(v40) * v4);
        if (v13 < v67)
        {
          v67 = v13;
        }

        if (v67 < v37)
        {
          v67 = v37;
        }

        v68 = interpolate_16161616_21862[v49];
        v63 = v39 - ((v68 & v39) >> (v49 + 1));
        v64 = ((((bswap32(v67[2]) >> 16) << 32) | ((bswap32(v67[3]) >> 16) << 48) | bswap32(v67[1]) & 0xFFFF0000 | (bswap32(*v67) >> 16)) & v68) >> (v49 + 1);
LABEL_80:
        v39 = v63 + v64;
        break;
      case 2:
        v65 = (v36 + ((HIWORD(v40) << 56) >> 53));
        if (v13 < v65)
        {
          v65 = v13;
        }

        if (v65 < v37)
        {
          v65 = v37;
        }

        v66 = (v40 >> 28) & 3;
        v39 = v39 - ((interpolate_16161616_21862[v66] & v39) >> (v66 + 1)) + (((((bswap32(v65[2]) >> 16) << 32) | ((bswap32(v65[3]) >> 16) << 48) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16)) & interpolate_16161616_21862[v66]) >> (v66 + 1));
        break;
      case 3:
        v50 = HIWORD(v40) << 56;
        v51 = (v36 + (v50 >> 53));
        if (v13 < v51)
        {
          v51 = v13;
        }

        if (v51 < v37)
        {
          v51 = v37;
        }

        v52 = ((bswap32(v51[2]) >> 16) << 32) | ((bswap32(v51[3]) >> 16) << 48) | bswap32(v51[1]) & 0xFFFF0000 | (bswap32(*v51) >> 16);
        v53 = v36 + SBYTE1(v40) * v4;
        if (v13 >= v53)
        {
          v54 = (v36 + SBYTE1(v40) * v4);
        }

        else
        {
          v54 = v13;
        }

        if (v54 < v37)
        {
          v54 = v37;
        }

        v55 = ((bswap32(v54[2]) >> 16) << 32) | ((bswap32(v54[3]) >> 16) << 48) | bswap32(v54[1]) & 0xFFFF0000 | (bswap32(*v54) >> 16);
        v56 = (v53 + (v50 >> 53));
        if (v13 < v56)
        {
          v56 = v13;
        }

        if (v56 < v37)
        {
          v56 = v37;
        }

        v57 = interpolate_16161616_21862[v49];
        v58 = v49 + 1;
        v59 = v39 - ((v57 & v39) >> v58) + ((v55 & v57) >> v58);
        v60 = v52 - ((v57 & v52) >> v58) + (((((bswap32(v56[2]) >> 16) << 32) | ((bswap32(v56[3]) >> 16) << 48) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16)) & v57) >> v58);
        v61 = (v40 >> 28) & 3;
        v62 = interpolate_16161616_21862[v61];
        LOBYTE(v61) = v61 + 1;
        v63 = v59 - ((v59 & v62) >> v61);
        v64 = (v60 & v62) >> v61;
        goto LABEL_80;
    }
  }

  v41 = 0;
  v42 = 0;
  v43 = v23 >> 22;
  a3 += v8;
  v44 = v72 - a3;
  a2 += v7;
  v45 = v71 - a2;
  while (1)
  {
    *(v9 + 4 + 4 * v42) = ((v39 | v12) >> 56) | (BYTE1(v39) << 24) | (BYTE3(v39) << 16) | WORD2(v39) & 0xFF00;
    *(v10 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v70)) & 0x8000000000000000) != 0)
    {
      v10 += v42 + 1;
      v9 = v9 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v11 + SHIDWORD(a3) * v4;
    v36 = v46 + 8 * (a2 >> 32);
    v37 = *(result + 32);
    if (v13 >= v36)
    {
      v47 = (v46 + 8 * (a2 >> 32));
    }

    else
    {
      v47 = v13;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = ((bswap32(v47[2]) >> 16) << 32) | ((bswap32(v47[3]) >> 16) << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16);
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v10 += v42 + 1;
        v9 = v9 - v41 + 4;
        a4 += ~v42;
        v23 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v8;
    v44 -= v8;
    a2 += v7;
    v45 -= v7;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba32_sample_rgb48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v69 = *(result + 64);
  v70 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v68 = *(result + 188);
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v8;
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

        v23 = v68 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
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

      v23 = v68 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v69)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v69 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v68;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v70)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v70;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v68;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v28 >> 32;
  v34 = v4 + SHIDWORD(v24) * v5;
  v35 = v34 + 6 * v33;
  v36 = *(result + 32);
  if (v13 >= v35)
  {
    v37 = (v34 + 6 * v33);
  }

  else
  {
    v37 = v13;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37 | (*(v37 + 2) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v39 = *(v6 + (v29 | v22));
LABEL_50:
  v46 = v39 & 0xF;
  v47 = HIBYTE(v39) & 3;
  switch(v46)
  {
    case 1:
      v65 = (v35 + SBYTE1(v39) * v5);
      if (v13 < v65)
      {
        v65 = v13;
      }

      if (v65 < v36)
      {
        v65 = v36;
      }

      v66 = interpolate_16161616_21862[v47];
      v67 = v47 + 1;
      v61 = v38 - ((v66 & v38) >> v67);
      v64 = ((*v65 | (*(v65 + 2) << 32) | 0xFFFF000000000000) & v66) >> v67;
LABEL_78:
      v38 = v61 + v64;
      break;
    case 2:
      v62 = (v35 + 6 * SBYTE2(v39));
      if (v13 < v62)
      {
        v62 = v13;
      }

      if (v62 < v36)
      {
        v62 = v36;
      }

      v57 = *v62 | (*(v62 + 2) << 32) | 0xFFFF000000000000;
      v63 = (v39 >> 28) & 3;
      v59 = interpolate_16161616_21862[v63];
      v60 = v63 + 1;
      v61 = v38 - ((v59 & v38) >> v60);
LABEL_72:
      v64 = (v57 & v59) >> v60;
      goto LABEL_78;
    case 3:
      v48 = (v35 + 6 * SBYTE2(v39));
      if (v13 < v48)
      {
        v48 = v13;
      }

      if (v48 < v36)
      {
        v48 = v36;
      }

      v49 = *v48 | (*(v48 + 2) << 32) | 0xFFFF000000000000;
      v50 = v35 + SBYTE1(v39) * v5;
      if (v13 >= v50)
      {
        v51 = (v35 + SBYTE1(v39) * v5);
      }

      else
      {
        v51 = v13;
      }

      if (v51 < v36)
      {
        v51 = v36;
      }

      v52 = *v51 | (*(v51 + 2) << 32) | 0xFFFF000000000000;
      v53 = (v50 + 6 * SBYTE2(v39));
      if (v13 < v53)
      {
        v53 = v13;
      }

      if (v53 < v36)
      {
        v53 = v36;
      }

      v54 = interpolate_16161616_21862[v47];
      v55 = v47 + 1;
      v56 = v38 - ((v54 & v38) >> v55) + ((v52 & v54) >> v55);
      v57 = v49 - ((v54 & v49) >> v55) + (((*v53 | (*(v53 + 2) << 32) | 0xFFFF000000000000) & v54) >> v55);
      v58 = (v39 >> 28) & 3;
      v59 = interpolate_16161616_21862[v58];
      v60 = v58 + 1;
      v61 = v56 - ((v56 & v59) >> v60);
      goto LABEL_72;
  }

LABEL_36:
  v40 = 0;
  v41 = 0;
  v42 = v23 >> 22;
  a3 += v10;
  v43 = v8 - a3;
  a2 += v9;
  v44 = v70 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v41) = HIBYTE(v38) | (BYTE1(v38) << 24) | (BYTE3(v38) << 16) | WORD2(v38) & 0xFF00;
    *(v12 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v43 | v44 | (a3 - v7) | (a2 - v69)) & 0x8000000000000000) != 0)
    {
      v12 += v41 + 1;
      v11 = v11 - v40 + 4;
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v35 = v4 + SHIDWORD(a3) * v5 + 6 * SHIDWORD(a2);
    v36 = *(result + 32);
    if (v13 >= v35)
    {
      v45 = (v4 + SHIDWORD(a3) * v5 + 6 * SHIDWORD(a2));
    }

    else
    {
      v45 = v13;
    }

    if (v45 < v36)
    {
      v45 = *(result + 32);
    }

    v38 = *v45 | (*(v45 + 2) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v39 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v12 += v41 + 1;
        v11 = v11 - v40 + 4;
        a4 += ~v41;
        v23 = -1;
        goto LABEL_50;
      }
    }

    ++v41;
    v40 -= 4;
    a3 += v10;
    v43 -= v10;
    a2 += v9;
    v44 -= v9;
    LOBYTE(v42) = -1;
  }
}

uint64_t rgba32_sample_RGB48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 64);
  v73 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v71 = *(result + 188);
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v72;
        v26 = v73;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v8;
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

        v25 = v72;
        v26 = v73;
        v23 = v71 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
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

      v25 = v72;
      v26 = v73;
      v23 = v71 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v25 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v26)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_26;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v26;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_34;
  }

  if (v34 < v32)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v35 = v30 >> 32;
  v36 = v4 + SHIDWORD(v24) * v5;
  v37 = v36 + 6 * v35;
  v38 = *(result + 32);
  if (v13 >= v37)
  {
    v39 = (v36 + 6 * v35);
  }

  else
  {
    v39 = v13;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = (bswap32(*v39) >> 16) | ((bswap32(v39[1]) >> 16) << 16) | ((bswap32(v39[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v41 = *(v6 + (v31 | v22));
LABEL_50:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v5);
      if (v13 < v68)
      {
        v68 = v13;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_16161616_21862[v50];
      v70 = v50 + 1;
      v64 = v40 - ((v69 & v40) >> v70);
      v67 = (((bswap32(*v68) >> 16) | ((bswap32(v68[1]) >> 16) << 16) | ((bswap32(v68[2]) >> 16) << 32) | 0xFFFF000000000000) & v69) >> v70;
LABEL_78:
      v40 = v64 + v67;
      break;
    case 2:
      v65 = (v37 + 6 * SBYTE2(v41));
      if (v13 < v65)
      {
        v65 = v13;
      }

      if (v65 < v38)
      {
        v65 = v38;
      }

      v60 = (bswap32(*v65) >> 16) | ((bswap32(v65[1]) >> 16) << 16) | ((bswap32(v65[2]) >> 16) << 32) | 0xFFFF000000000000;
      v66 = (v41 >> 28) & 3;
      v62 = interpolate_16161616_21862[v66];
      v63 = v66 + 1;
      v64 = v40 - ((v62 & v40) >> v63);
LABEL_72:
      v67 = (v60 & v62) >> v63;
      goto LABEL_78;
    case 3:
      v51 = (v37 + 6 * SBYTE2(v41));
      if (v13 < v51)
      {
        v51 = v13;
      }

      if (v51 < v38)
      {
        v51 = v38;
      }

      v52 = (bswap32(*v51) >> 16) | ((bswap32(v51[1]) >> 16) << 16) | ((bswap32(v51[2]) >> 16) << 32) | 0xFFFF000000000000;
      v53 = v37 + SBYTE1(v41) * v5;
      if (v13 >= v53)
      {
        v54 = (v37 + SBYTE1(v41) * v5);
      }

      else
      {
        v54 = v13;
      }

      if (v54 < v38)
      {
        v54 = v38;
      }

      v55 = (bswap32(*v54) >> 16) | ((bswap32(v54[1]) >> 16) << 16) | ((bswap32(v54[2]) >> 16) << 32) | 0xFFFF000000000000;
      v56 = (v53 + 6 * SBYTE2(v41));
      if (v13 < v56)
      {
        v56 = v13;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = interpolate_16161616_21862[v50];
      v58 = v50 + 1;
      v59 = v40 - ((v57 & v40) >> v58) + ((v55 & v57) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((((bswap32(*v56) >> 16) | ((bswap32(v56[1]) >> 16) << 16) | ((bswap32(v56[2]) >> 16) << 32) | 0xFFFF000000000000) & v57) >> v58);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      goto LABEL_72;
  }

LABEL_36:
  v42 = 0;
  v43 = 0;
  v44 = v23 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v73 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = HIBYTE(v40) | (BYTE1(v40) << 24) | (BYTE3(v40) << 16) | WORD2(v40) & 0xFF00;
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v7) | (a2 - v72)) & 0x8000000000000000) != 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v37 = v47 + 6 * SHIDWORD(a2);
    v38 = *(result + 32);
    if (v13 >= v37)
    {
      v48 = (v47 + 6 * SHIDWORD(a2));
    }

    else
    {
      v48 = v13;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = (bswap32(*v48) >> 16) | ((bswap32(v48[1]) >> 16) << 16) | ((bswap32(v48[2]) >> 16) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v41 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v23 = -1;
        goto LABEL_50;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t rgba32_sample_cmyk32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v86 = *(result + 188);
  v92 = *(result + 152) - 4;
  v90 = *(result + 88);
  v91 = *(result + 144) - 1;
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0xFF00000000;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = (v5 + (v13 - 1) + (v12 * v7));
  v15 = v4 + (v12 * v6) + 4 * v13 - 8;
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
  v38 = v4 + v36 * v6 + 4 * v37;
  v39 = *(result + 32);
  if (v15 >= v38)
  {
    v40 = (v4 + v36 * v6 + 4 * v37);
  }

  else
  {
    v40 = v15;
  }

  if (v40 < v39)
  {
    v40 = *(result + 32);
  }

  v41 = *v40;
  if (!v5)
  {
    v42 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v45 = *(v8 + (v32 | v24));
LABEL_68:
    v56 = v45 & 0xF;
    v57 = HIBYTE(v45) & 3;
    if (v56 == 1)
    {
      v81 = (v38 + SBYTE1(v45) * v6);
      if (v15 < v81)
      {
        v81 = v15;
      }

      if (v81 < v39)
      {
        v81 = v39;
      }

      v82 = *v81;
      if (v5)
      {
        v83 = (v42 + SBYTE1(v45) * v7);
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v82 |= *v83 << 32;
      }

      v84 = interpolate_cif10a[v57];
      v85 = v57 + 1;
      v79 = v41 - ((v84 & v41) >> v85);
      v80 = (v84 & v82) >> v85;
    }

    else
    {
      if (v56 != 2)
      {
        if (v56 == 3)
        {
          v58 = HIWORD(v45) << 56;
          v59 = (v38 + (v58 >> 54));
          if (v15 < v59)
          {
            v59 = v15;
          }

          if (v59 < v39)
          {
            v59 = v39;
          }

          v60 = *v59;
          v61 = v38 + SBYTE1(v45) * v6;
          if (v15 >= v61)
          {
            v62 = (v38 + SBYTE1(v45) * v6);
          }

          else
          {
            v62 = v15;
          }

          if (v62 < v39)
          {
            v62 = v39;
          }

          v63 = *v62;
          v64 = (v61 + (v58 >> 54));
          if (v15 < v64)
          {
            v64 = v15;
          }

          if (v64 < v39)
          {
            v64 = v39;
          }

          v65 = *v64;
          if (v5)
          {
            v66 = (v42 + SBYTE2(v45));
            v67 = *(result + 40);
            if (v14 < v66)
            {
              v66 = v14;
            }

            if (v66 < v67)
            {
              v66 = *(result + 40);
            }

            v60 |= *v66 << 32;
            v68 = v42 + SBYTE1(v45) * v7;
            if (v14 >= v68)
            {
              v69 = (v42 + SBYTE1(v45) * v7);
            }

            else
            {
              v69 = v14;
            }

            if (v69 < v67)
            {
              v69 = *(result + 40);
            }

            v63 |= *v69 << 32;
            v70 = (v68 + SBYTE2(v45));
            if (v14 < v70)
            {
              v70 = v14;
            }

            if (v70 < v67)
            {
              v70 = *(result + 40);
            }

            v65 |= *v70 << 32;
          }

          v71 = interpolate_cif10a[v57];
          v72 = v57 + 1;
          v73 = v41 - ((v71 & v41) >> v72) + ((v71 & v63) >> v72);
          v41 = v73 - ((v73 & interpolate_cif10a[(v45 >> 28) & 3]) >> (((v45 >> 28) & 3) + 1)) + (((v60 - ((v71 & v60) >> v72) + ((v71 & v65) >> v72)) & interpolate_cif10a[(v45 >> 28) & 3]) >> (((v45 >> 28) & 3) + 1));
        }

        goto LABEL_47;
      }

      v74 = (v38 + ((HIWORD(v45) << 56) >> 54));
      if (v15 < v74)
      {
        v74 = v15;
      }

      if (v74 < v39)
      {
        v74 = v39;
      }

      v75 = *v74;
      if (v5)
      {
        v76 = (v42 + SBYTE2(v45));
        if (v14 < v76)
        {
          v76 = v14;
        }

        if (v76 < *(result + 40))
        {
          v76 = *(result + 40);
        }

        v75 |= *v76 << 32;
      }

      v77 = (v45 >> 28) & 3;
      v78 = interpolate_cif10a[v77];
      LOBYTE(v77) = v77 + 1;
      v79 = v41 - ((v78 & v41) >> v77);
      v80 = (v78 & v75) >> v77;
    }

    v41 = v79 + v80;
    goto LABEL_47;
  }

  v42 = v5 + v36 * v7 + v37;
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

  v41 |= *v43 << 32;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v46 = 0;
  v47 = 0;
  v48 = v25 >> 22;
  a3 += v9;
  v49 = v90 - a3;
  a2 += v10;
  v50 = v88 - a2;
  while (1)
  {
    v51 = ((v41 | v11) >> 32);
    v52 = vand_s8(vshl_u32(vmax_s32(vsub_s32(vdup_n_s32(v51), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v41), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), vdup_n_s32(v41))), 0), 0x800000010), 0xFF0000FF0000);
    *(v92 + 4 + 4 * v47) = v52.i32[0] | (((v51 - (BYTE3(v41) + v41)) & ~((v51 - (BYTE3(v41) + v41)) >> 31)) << 24) | v51 | v52.i32[1];
    *(v91 + 1 + v47) = v48;
    if (a4 - 1 == v47)
    {
      return result;
    }

    if ((v49 | v50 | (a3 - v89) | (a2 - v87)) < 0)
    {
      v91 += v47 + 1;
      v92 = v92 - v46 + 4;
      a4 += ~v47;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v38 = v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32);
    v39 = *(result + 32);
    if (v15 >= v38)
    {
      v53 = (v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32));
    }

    else
    {
      v53 = v15;
    }

    if (v53 < v39)
    {
      v53 = *(result + 32);
    }

    v41 = *v53;
    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
      v54 = *(result + 40);
      if (v14 >= v42)
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

      v41 |= *v54 << 32;
    }

    if (v8)
    {
      v45 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v45 & 0xF) != 0)
      {
        v91 += v47 + 1;
        v92 = v92 - v46 + 4;
        a4 += ~v47;
        v25 = -1;
        goto LABEL_68;
      }
    }

    ++v47;
    v46 -= 4;
    a3 += v9;
    v49 -= v9;
    a2 += v10;
    v50 -= v10;
    LOBYTE(v48) = -1;
  }
}

uint64_t rgba32_sample_CMYK32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v86 = *(result + 188);
  v92 = *(result + 152) - 4;
  v90 = *(result + 88);
  v91 = *(result + 144) - 1;
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0xFF00000000;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = (v5 + (v13 - 1) + (v12 * v7));
  v15 = v4 + (v12 * v6) + 4 * v13 - 8;
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
  v38 = v4 + v36 * v6 + 4 * v37;
  v39 = *(result + 32);
  if (v15 >= v38)
  {
    v40 = (v4 + v36 * v6 + 4 * v37);
  }

  else
  {
    v40 = v15;
  }

  if (v40 < v39)
  {
    v40 = *(result + 32);
  }

  v41 = bswap32(*v40);
  if (!v5)
  {
    v42 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v45 = *(v8 + (v32 | v24));
LABEL_68:
    v56 = v45 & 0xF;
    v57 = HIBYTE(v45) & 3;
    if (v56 == 1)
    {
      v81 = (v38 + SBYTE1(v45) * v6);
      if (v15 < v81)
      {
        v81 = v15;
      }

      if (v81 < v39)
      {
        v81 = v39;
      }

      v82 = bswap32(*v81);
      if (v5)
      {
        v83 = (v42 + SBYTE1(v45) * v7);
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v82 |= *v83 << 32;
      }

      v84 = interpolate_cif10a[v57];
      v85 = v57 + 1;
      v79 = v41 - ((v84 & v41) >> v85);
      v80 = (v84 & v82) >> v85;
    }

    else
    {
      if (v56 != 2)
      {
        if (v56 == 3)
        {
          v58 = HIWORD(v45) << 56;
          v59 = (v38 + (v58 >> 54));
          if (v15 < v59)
          {
            v59 = v15;
          }

          if (v59 < v39)
          {
            v59 = v39;
          }

          v60 = bswap32(*v59);
          v61 = v38 + SBYTE1(v45) * v6;
          if (v15 >= v61)
          {
            v62 = (v38 + SBYTE1(v45) * v6);
          }

          else
          {
            v62 = v15;
          }

          if (v62 < v39)
          {
            v62 = v39;
          }

          v63 = bswap32(*v62);
          v64 = (v61 + (v58 >> 54));
          if (v15 < v64)
          {
            v64 = v15;
          }

          if (v64 < v39)
          {
            v64 = v39;
          }

          v65 = bswap32(*v64);
          if (v5)
          {
            v66 = (v42 + SBYTE2(v45));
            v67 = *(result + 40);
            if (v14 < v66)
            {
              v66 = v14;
            }

            if (v66 < v67)
            {
              v66 = *(result + 40);
            }

            v60 |= *v66 << 32;
            v68 = v42 + SBYTE1(v45) * v7;
            if (v14 >= v68)
            {
              v69 = (v42 + SBYTE1(v45) * v7);
            }

            else
            {
              v69 = v14;
            }

            if (v69 < v67)
            {
              v69 = *(result + 40);
            }

            v63 |= *v69 << 32;
            v70 = (v68 + SBYTE2(v45));
            if (v14 < v70)
            {
              v70 = v14;
            }

            if (v70 < v67)
            {
              v70 = *(result + 40);
            }

            v65 |= *v70 << 32;
          }

          v71 = interpolate_cif10a[v57];
          v72 = v57 + 1;
          v73 = v41 - ((v71 & v41) >> v72) + ((v71 & v63) >> v72);
          v41 = v73 - ((v73 & interpolate_cif10a[(v45 >> 28) & 3]) >> (((v45 >> 28) & 3) + 1)) + (((v60 - ((v71 & v60) >> v72) + ((v71 & v65) >> v72)) & interpolate_cif10a[(v45 >> 28) & 3]) >> (((v45 >> 28) & 3) + 1));
        }

        goto LABEL_47;
      }

      v74 = (v38 + ((HIWORD(v45) << 56) >> 54));
      if (v15 < v74)
      {
        v74 = v15;
      }

      if (v74 < v39)
      {
        v74 = v39;
      }

      v75 = bswap32(*v74);
      if (v5)
      {
        v76 = (v42 + SBYTE2(v45));
        if (v14 < v76)
        {
          v76 = v14;
        }

        if (v76 < *(result + 40))
        {
          v76 = *(result + 40);
        }

        v75 |= *v76 << 32;
      }

      v77 = (v45 >> 28) & 3;
      v78 = interpolate_cif10a[v77];
      LOBYTE(v77) = v77 + 1;
      v79 = v41 - ((v78 & v41) >> v77);
      v80 = (v78 & v75) >> v77;
    }

    v41 = v79 + v80;
    goto LABEL_47;
  }

  v42 = v5 + v36 * v7 + v37;
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

  v41 |= *v43 << 32;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v46 = 0;
  v47 = 0;
  v48 = v25 >> 22;
  a3 += v9;
  v49 = v90 - a3;
  a2 += v10;
  v50 = v88 - a2;
  while (1)
  {
    v51 = ((v41 | v11) >> 32);
    v52 = vand_s8(vshl_u32(vmax_s32(vsub_s32(vdup_n_s32(v51), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v41), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), vdup_n_s32(v41))), 0), 0x800000010), 0xFF0000FF0000);
    *(v92 + 4 + 4 * v47) = v52.i32[0] | (((v51 - (BYTE3(v41) + v41)) & ~((v51 - (BYTE3(v41) + v41)) >> 31)) << 24) | v51 | v52.i32[1];
    *(v91 + 1 + v47) = v48;
    if (a4 - 1 == v47)
    {
      return result;
    }

    if ((v49 | v50 | (a3 - v89) | (a2 - v87)) < 0)
    {
      v91 += v47 + 1;
      v92 = v92 - v46 + 4;
      a4 += ~v47;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v38 = v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32);
    v39 = *(result + 32);
    if (v15 >= v38)
    {
      v53 = (v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32));
    }

    else
    {
      v53 = v15;
    }

    if (v53 < v39)
    {
      v53 = *(result + 32);
    }

    v41 = bswap32(*v53);
    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
      v54 = *(result + 40);
      if (v14 >= v42)
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

      v41 |= *v54 << 32;
    }

    if (v8)
    {
      v45 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v45 & 0xF) != 0)
      {
        v91 += v47 + 1;
        v92 = v92 - v46 + 4;
        a4 += ~v47;
        v25 = -1;
        goto LABEL_68;
      }
    }

    ++v47;
    v46 -= 4;
    a3 += v9;
    v49 -= v9;
    a2 += v10;
    v50 -= v10;
    LOBYTE(v48) = -1;
  }
}

uint64_t rgba32_sample_argb32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v76 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v75 = *(result + 188);
  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
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
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v75 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v75 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v75;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v76)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v76;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v75;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = *v39;
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_54:
  v50 = v41 & 0xF;
  v51 = HIBYTE(v41) & 3;
  switch(v50)
  {
    case 1:
      v72 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v72)
      {
        v72 = v15;
      }

      if (v72 < v38)
      {
        v72 = v38;
      }

      v73 = interpolate_8888_21865[v51];
      v74 = v51 + 1;
      v66 = v40 - ((v73 & v40) >> v74);
      v71 = (v73 & *v72) >> v74;
LABEL_82:
      v40 = v66 + v71;
      break;
    case 2:
      v68 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v68)
      {
        v68 = v15;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = (v41 >> 28) & 3;
      v70 = interpolate_8888_21865[v69];
      v65 = v69 + 1;
      v66 = v40 - ((v70 & v40) >> v65);
      v67 = v70 & *v68;
LABEL_76:
      v71 = v67 >> v65;
      goto LABEL_82;
    case 3:
      v52 = HIWORD(v41) << 56;
      v53 = (v37 + (v52 >> 54));
      if (v15 < v53)
      {
        v53 = v15;
      }

      if (v53 < v38)
      {
        v53 = v38;
      }

      v54 = *v53;
      v55 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v55)
      {
        v56 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = *v56;
      v58 = (v55 + (v52 >> 54));
      if (v15 < v58)
      {
        v58 = v15;
      }

      if (v58 < v38)
      {
        v58 = v38;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v61 = v40 - ((v59 & v40) >> v60) + ((v59 & v57) >> v60);
      v62 = v54 - ((v59 & v54) >> v60) + ((v59 & *v58) >> v60);
      v63 = (v41 >> 28) & 3;
      v64 = interpolate_8888_21865[v63];
      v65 = v63 + 1;
      v66 = v61 - ((v61 & v64) >> v65);
      v67 = v62 & v64;
      goto LABEL_76;
  }

LABEL_39:
  HIDWORD(v42) = v40 | v14;
  LODWORD(v42) = v40 | v14;
  *(v11 + 4) = v42 >> 24;
  *(v12 + 1) = v25 >> 22;
  if (a4 != 1)
  {
    v43 = 0;
    a2 += v9;
    v44 = v76 - a2;
    a3 += v10;
    v45 = v8 - a3;
    v46 = -4;
    while (((v45 | v44 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) == 0)
    {
      v47 = v13 + SHIDWORD(a3) * v4;
      v37 = v47 + 4 * (a2 >> 32);
      v38 = *(result + 32);
      if (v15 >= v37)
      {
        v48 = (v47 + 4 * (a2 >> 32));
      }

      else
      {
        v48 = v15;
      }

      if (v48 < v38)
      {
        v48 = *(result + 32);
      }

      v40 = *v48;
      if (v5)
      {
        v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v41 & 0xF) != 0)
        {
          v12 += v43 + 1;
          v11 -= v46;
          a4 += ~v43;
          v25 = -1;
          goto LABEL_54;
        }
      }

      HIDWORD(v49) = v40 | v14;
      LODWORD(v49) = v40 | v14;
      *(v11 + 4 * v43 + 8) = v49 >> 24;
      *(v12 + v43++ + 2) = -1;
      v46 -= 4;
      a2 += v9;
      v44 -= v9;
      a3 += v10;
      v45 -= v10;
      if (a4 - 1 == v43)
      {
        return result;
      }
    }

    v12 += v43 + 1;
    v11 -= v46;
    a4 += ~v43;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t rgba32_sample_ARGB32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v73 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v72 = *(result + 188);
  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
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
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v72 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v72 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v72;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v73)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v73;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v72;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = bswap32(*v39);
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_54:
  v50 = v41 & 0xF;
  v51 = HIBYTE(v41) & 3;
  switch(v50)
  {
    case 1:
      v69 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v69)
      {
        v69 = v15;
      }

      if (v69 < v38)
      {
        v69 = v38;
      }

      v70 = interpolate_8888_21865[v51];
      v71 = v51 + 1;
      v67 = v40 - ((v70 & v40) >> v71);
      v68 = (bswap32(*v69) & v70) >> v71;
LABEL_82:
      v40 = v67 + v68;
      break;
    case 2:
      v65 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v65)
      {
        v65 = v15;
      }

      if (v65 < v38)
      {
        v65 = v38;
      }

      v61 = bswap32(*v65);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v63 & v40;
LABEL_76:
      v66 = v62 + 1;
      v67 = v40 - (v64 >> v66);
      v68 = (v61 & v63) >> v66;
      goto LABEL_82;
    case 3:
      v52 = HIWORD(v41) << 56;
      v53 = (v37 + (v52 >> 54));
      if (v15 < v53)
      {
        v53 = v15;
      }

      if (v53 < v38)
      {
        v53 = v38;
      }

      v54 = bswap32(*v53);
      v55 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v55)
      {
        v56 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = bswap32(*v56);
      v58 = (v55 + (v52 >> 54));
      if (v15 < v58)
      {
        v58 = v15;
      }

      if (v58 < v38)
      {
        v58 = v38;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v40 = v40 - ((v59 & v40) >> v60) + ((v59 & v57) >> v60);
      v61 = v54 - ((v59 & v54) >> v60) + ((bswap32(*v58) & v59) >> v60);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v40 & v63;
      goto LABEL_76;
  }

LABEL_39:
  HIDWORD(v42) = v40 | v14;
  LODWORD(v42) = v40 | v14;
  *(v11 + 4) = v42 >> 24;
  *(v12 + 1) = v25 >> 22;
  if (a4 != 1)
  {
    v43 = 0;
    a2 += v9;
    v44 = v73 - a2;
    a3 += v10;
    v45 = v8 - a3;
    v46 = -4;
    while (((v45 | v44 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) == 0)
    {
      v47 = v13 + SHIDWORD(a3) * v4;
      v37 = v47 + 4 * (a2 >> 32);
      v38 = *(result + 32);
      if (v15 >= v37)
      {
        v48 = (v47 + 4 * (a2 >> 32));
      }

      else
      {
        v48 = v15;
      }

      if (v48 < v38)
      {
        v48 = *(result + 32);
      }

      v40 = bswap32(*v48);
      if (v5)
      {
        v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v41 & 0xF) != 0)
        {
          v12 += v43 + 1;
          v11 -= v46;
          a4 += ~v43;
          v25 = -1;
          goto LABEL_54;
        }
      }

      HIDWORD(v49) = v40 | v14;
      LODWORD(v49) = v40 | v14;
      *(v11 + 4 * v43 + 8) = v49 >> 24;
      *(v12 + v43++ + 2) = -1;
      v46 -= 4;
      a2 += v9;
      v44 -= v9;
      a3 += v10;
      v45 -= v10;
      if (a4 - 1 == v43)
      {
        return result;
      }
    }

    v12 += v43 + 1;
    v11 -= v46;
    a4 += ~v43;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t rgba32_sample_rgba32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v108 = *(result + 112);
    if (v5 > v6)
    {
      v108 = v5 % v6;
    }
  }

  else
  {
    v108 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v107 = v11;
  }

  else
  {
    v107 = 0;
  }

  v103 = *(result + 80);
  v104 = *(result + 64);
  v105 = *(result + 88);
  v106 = *(result + 72);
  v102 = *(result + 188);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 255;
  }

  v15 = v9 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v16 = -*(result + 64);
  v17 = -*(result + 72);
  while (1)
  {
LABEL_14:
    if (a3 >= v106)
    {
      if (a3 <= v105)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v105;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_54;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v102 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v106 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_54;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v102 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v104)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v104 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v102;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_38;
    }

LABEL_54:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v103)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_38;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v103;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_54;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v102;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_38:
  if (v28 < 0x400000)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v9 + SHIDWORD(v29) * v4;
  v44 = v33 >> 32;
  v45 = v43 + 4 * v44;
  v46 = *(result + 32);
  if (v15 >= v45)
  {
    v47 = (v43 + 4 * v44);
  }

  else
  {
    v47 = v15;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  v48 = *v47;
  if (v8)
  {
    v49 = *(v8 + (v35 | v27));
LABEL_80:
    v61 = v49 & 0xF;
    v62 = v49 >> 8;
    v63 = HIBYTE(v49) & 3;
    switch(v61)
    {
      case 1:
        LODWORD(v92) = SBYTE1(v49);
        if (v6)
        {
          v93 = v62 << 56;
          v94 = v26 + (SBYTE1(v49) << 32);
          v95 = v7 & (v94 >> 63);
          if (v95 + v94 >= v7)
          {
            v96 = v7;
          }

          else
          {
            v96 = 0;
          }

          v92 = (v95 + (v93 >> 24) - v96) >> 32;
        }

        v97 = (v45 + v92 * v4);
        if (v15 < v97)
        {
          v97 = v15;
        }

        if (v97 < v46)
        {
          v97 = v46;
        }

        v98 = interpolate_8888_21865[v63];
        v99 = v63 + 1;
        v85 = v48 - ((v98 & v48) >> v99);
        v86 = (v98 & *v97) >> v99;
LABEL_125:
        v48 = v85 + v86;
        break;
      case 2:
        v87 = SBYTE2(v49);
        if (v6)
        {
          v88 = v34 + (SBYTE2(v49) << 32);
          v89 = v6 & (v88 >> 63);
          if (v89 + v88 >= v6)
          {
            v90 = v6;
          }

          else
          {
            v90 = 0;
          }

          v87 = (v89 + ((HIWORD(v49) << 56) >> 24) - v90) >> 32;
        }

        v91 = (v45 + 4 * v87);
        if (v15 < v91)
        {
          v91 = v15;
        }

        if (v91 < v46)
        {
          v91 = v46;
        }

        v48 = v48 - ((interpolate_8888_21865[(v49 >> 28) & 3] & v48) >> (((v49 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v49 >> 28) & 3] & *v91) >> (((v49 >> 28) & 3) + 1));
        break;
      case 3:
        v101 = HIBYTE(v49) & 3;
        LODWORD(v64) = SBYTE1(v49);
        v65 = SBYTE2(v49);
        if (v6)
        {
          v100 = v62 << 56;
          v66 = HIWORD(v49) << 56;
          v67 = v26 + (SBYTE1(v49) << 32);
          v68 = v34 + (v66 >> 24);
          v69 = v7 & (v67 >> 63);
          v70 = v6 & (v68 >> 63);
          v71 = v70 + v68;
          if (v69 + v67 >= v7)
          {
            v72 = v7;
          }

          else
          {
            v72 = 0;
          }

          if (v71 >= v6)
          {
            v73 = v6;
          }

          else
          {
            v73 = 0;
          }

          v64 = (v69 + (v100 >> 24) - v72) >> 32;
          v65 = (v70 + (v66 >> 24) - v73) >> 32;
        }

        v74 = (v45 + 4 * v65);
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v46)
        {
          v74 = v46;
        }

        v75 = *v74;
        v76 = v45 + v64 * v4;
        if (v15 >= v76)
        {
          v77 = (v45 + v64 * v4);
        }

        else
        {
          v77 = v15;
        }

        if (v77 < v46)
        {
          v77 = v46;
        }

        v78 = *v77;
        v79 = (v76 + 4 * v65);
        if (v15 < v79)
        {
          v79 = v15;
        }

        if (v79 < v46)
        {
          v79 = v46;
        }

        v80 = interpolate_8888_21865[v101];
        v81 = v48 - ((v80 & v48) >> (v101 + 1)) + ((v80 & v78) >> (v101 + 1));
        v82 = v75 - ((v80 & v75) >> (v101 + 1)) + ((v80 & *v79) >> (v101 + 1));
        v83 = (v49 >> 28) & 3;
        v84 = interpolate_8888_21865[v83];
        LOBYTE(v83) = v83 + 1;
        v85 = v81 - ((v81 & v84) >> v83);
        v86 = (v82 & v84) >> v83;
        goto LABEL_125;
    }
  }

  *(v12 + 4) = v48 | v14;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    a2 += v5;
    v51 = v103 - a2;
    a3 += v10;
    v52 = v105 - a3;
    v53 = -4;
    while (((v52 | v51 | (v17 + a3) | (v16 + a2)) & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v54 = (v7 & ((v26 + v107) >> 63)) + v26 + v107;
        v55 = (v6 & ((v34 + v108) >> 63)) + v34 + v108;
        if (v54 >= v7)
        {
          v56 = v7;
        }

        else
        {
          v56 = 0;
        }

        v26 = v54 - v56;
        if (v55 >= v6)
        {
          v57 = v6;
        }

        else
        {
          v57 = 0;
        }

        v34 = v55 - v57;
        v58 = HIDWORD(v26);
        v59 = v34;
      }

      else
      {
        v58 = HIDWORD(a3);
        v59 = a2;
      }

      v45 = v9 + v58 * v4 + 4 * (v59 >> 32);
      v46 = *(result + 32);
      if (v15 >= v45)
      {
        v60 = v45;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v46)
      {
        v60 = *(result + 32);
      }

      v48 = *v60;
      if (v8)
      {
        v49 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 -= v53;
          a4 += ~v50;
          v28 = -1;
          goto LABEL_80;
        }
      }

      *(v12 + 4 * v50 + 8) = v48 | v14;
      *(v13 + v50++ + 2) = -1;
      v53 -= 4;
      a2 += v5;
      v51 -= v5;
      a3 += v10;
      v52 -= v10;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 -= v53;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t rgba32_sample_RGBA32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v108 = *(result + 112);
    if (v5 > v6)
    {
      v108 = v5 % v6;
    }
  }

  else
  {
    v108 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v107 = v11;
  }

  else
  {
    v107 = 0;
  }

  v103 = *(result + 80);
  v104 = *(result + 64);
  v105 = *(result + 88);
  v106 = *(result + 72);
  v102 = *(result + 188);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 255;
  }

  v15 = v9 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v16 = -*(result + 64);
  v17 = -*(result + 72);
  while (1)
  {
LABEL_14:
    if (a3 >= v106)
    {
      if (a3 <= v105)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v105;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_54;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v102 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v106 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_54;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v102 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v104)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v104 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v102;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_38;
    }

LABEL_54:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v103)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_38;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v103;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_54;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v102;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_38:
  if (v28 < 0x400000)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v9 + SHIDWORD(v29) * v4;
  v44 = v33 >> 32;
  v45 = v43 + 4 * v44;
  v46 = *(result + 32);
  if (v15 >= v45)
  {
    v47 = (v43 + 4 * v44);
  }

  else
  {
    v47 = v15;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  v48 = bswap32(*v47);
  if (v8)
  {
    v49 = *(v8 + (v35 | v27));
LABEL_80:
    v61 = v49 & 0xF;
    v62 = v49 >> 8;
    v63 = HIBYTE(v49) & 3;
    switch(v61)
    {
      case 1:
        LODWORD(v92) = SBYTE1(v49);
        if (v6)
        {
          v93 = v62 << 56;
          v94 = v26 + (SBYTE1(v49) << 32);
          v95 = v7 & (v94 >> 63);
          if (v95 + v94 >= v7)
          {
            v96 = v7;
          }

          else
          {
            v96 = 0;
          }

          v92 = (v95 + (v93 >> 24) - v96) >> 32;
        }

        v97 = (v45 + v92 * v4);
        if (v15 < v97)
        {
          v97 = v15;
        }

        if (v97 < v46)
        {
          v97 = v46;
        }

        v98 = interpolate_8888_21865[v63];
        v99 = v63 + 1;
        v85 = v48 - ((v98 & v48) >> v99);
        v86 = (bswap32(*v97) & v98) >> v99;
LABEL_125:
        v48 = v85 + v86;
        break;
      case 2:
        v87 = SBYTE2(v49);
        if (v6)
        {
          v88 = v34 + (SBYTE2(v49) << 32);
          v89 = v6 & (v88 >> 63);
          if (v89 + v88 >= v6)
          {
            v90 = v6;
          }

          else
          {
            v90 = 0;
          }

          v87 = (v89 + ((HIWORD(v49) << 56) >> 24) - v90) >> 32;
        }

        v91 = (v45 + 4 * v87);
        if (v15 < v91)
        {
          v91 = v15;
        }

        if (v91 < v46)
        {
          v91 = v46;
        }

        v48 = v48 - ((interpolate_8888_21865[(v49 >> 28) & 3] & v48) >> (((v49 >> 28) & 3) + 1)) + ((bswap32(*v91) & interpolate_8888_21865[(v49 >> 28) & 3]) >> (((v49 >> 28) & 3) + 1));
        break;
      case 3:
        v101 = HIBYTE(v49) & 3;
        LODWORD(v64) = SBYTE1(v49);
        v65 = SBYTE2(v49);
        if (v6)
        {
          v100 = v62 << 56;
          v66 = HIWORD(v49) << 56;
          v67 = v26 + (SBYTE1(v49) << 32);
          v68 = v34 + (v66 >> 24);
          v69 = v7 & (v67 >> 63);
          v70 = v6 & (v68 >> 63);
          v71 = v70 + v68;
          if (v69 + v67 >= v7)
          {
            v72 = v7;
          }

          else
          {
            v72 = 0;
          }

          if (v71 >= v6)
          {
            v73 = v6;
          }

          else
          {
            v73 = 0;
          }

          v64 = (v69 + (v100 >> 24) - v72) >> 32;
          v65 = (v70 + (v66 >> 24) - v73) >> 32;
        }

        v74 = (v45 + 4 * v65);
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v46)
        {
          v74 = v46;
        }

        v75 = bswap32(*v74);
        v76 = v45 + v64 * v4;
        if (v15 >= v76)
        {
          v77 = (v45 + v64 * v4);
        }

        else
        {
          v77 = v15;
        }

        if (v77 < v46)
        {
          v77 = v46;
        }

        v78 = bswap32(*v77);
        v79 = (v76 + 4 * v65);
        if (v15 < v79)
        {
          v79 = v15;
        }

        if (v79 < v46)
        {
          v79 = v46;
        }

        v80 = interpolate_8888_21865[v101];
        v81 = v48 - ((v80 & v48) >> (v101 + 1)) + ((v80 & v78) >> (v101 + 1));
        v82 = v75 - ((v80 & v75) >> (v101 + 1)) + ((bswap32(*v79) & v80) >> (v101 + 1));
        v83 = (v49 >> 28) & 3;
        v84 = interpolate_8888_21865[v83];
        LOBYTE(v83) = v83 + 1;
        v85 = v81 - ((v81 & v84) >> v83);
        v86 = (v82 & v84) >> v83;
        goto LABEL_125;
    }
  }

  *(v12 + 4) = v48 | v14;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    a2 += v5;
    v51 = v103 - a2;
    a3 += v10;
    v52 = v105 - a3;
    v53 = -4;
    while (((v52 | v51 | (v17 + a3) | (v16 + a2)) & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v54 = (v7 & ((v26 + v107) >> 63)) + v26 + v107;
        v55 = (v6 & ((v34 + v108) >> 63)) + v34 + v108;
        if (v54 >= v7)
        {
          v56 = v7;
        }

        else
        {
          v56 = 0;
        }

        v26 = v54 - v56;
        if (v55 >= v6)
        {
          v57 = v6;
        }

        else
        {
          v57 = 0;
        }

        v34 = v55 - v57;
        v58 = HIDWORD(v26);
        v59 = v34;
      }

      else
      {
        v58 = HIDWORD(a3);
        v59 = a2;
      }

      v45 = v9 + v58 * v4 + 4 * (v59 >> 32);
      v46 = *(result + 32);
      if (v15 >= v45)
      {
        v60 = v45;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v46)
      {
        v60 = *(result + 32);
      }

      v48 = bswap32(*v60);
      if (v8)
      {
        v49 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 -= v53;
          a4 += ~v50;
          v28 = -1;
          goto LABEL_80;
        }
      }

      *(v12 + 4 * v50 + 8) = v48 | v14;
      *(v13 + v50++ + 2) = -1;
      v53 -= 4;
      a2 += v5;
      v51 -= v5;
      a3 += v10;
      v52 -= v10;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 -= v53;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return result;
}
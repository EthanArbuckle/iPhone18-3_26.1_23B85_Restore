uint64_t ___ZL24CGPDFDictionaryGetTypeIDv_block_invoke()
{
  result = pdf_register_cftype(&CGPDFDictionaryGetTypeID(void)::runtime_class);
  CGPDFDictionaryGetTypeID(void)::id = result;
  return result;
}

unint64_t std::__string_view_hash<char>::operator()[abi:fe200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * ((a2 + (8 * *a1)) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (a1 == (a1 + a2))
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

BOOL CGPDFDictionaryGetOffset(CGPDFDictionary *a1, const char *a2, void *a3)
{
  value = 0;
  result = CGPDFDictionaryGetObject(a1, a2, &value);
  if (result)
  {
    if (value && ((v5 = *(value + 2), v5 != 12) ? (v6 = v5 == 3) : (v6 = 1), v6))
    {
      if (a3)
      {
        *a3 = *(value + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CGPDFDictionaryGetObject(CGPDFDictionaryRef dict, const char *key, CGPDFObjectRef *value)
{
  if (value)
  {
    *value = 0;
  }

  if (dict && (v8 = key) != 0 && (v5 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>(dict + 6, &v8)) != 0)
  {
    v6 = v5[3];
    if (v6)
    {
      if (*(v6 + 2) == 10)
      {
        v6 = pdf_xref_resolve(*(dict + 2), *(v6 + 2), *(v6 + 3));
      }

      if (value)
      {
        *value = v6;
      }

      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>(void *a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  v5 = std::__string_view_hash<char>::operator()[abi:fe200100](v3, v4);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v6)
    {
      v10 = v5 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (!strcmp(*(v12[2] + 32), v3))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v6)
          {
            v13 %= *&v6;
          }
        }

        else
        {
          v13 &= *&v6 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

_BYTE *pdf_xref_resolve(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  pthread_mutex_lock((a1 + 96));
  if (a2 >= *(a1 + 160))
  {
    goto LABEL_43;
  }

  if (*(a1 + 200) == 1 && a2 < *(a1 + 192))
  {
    *(a1 + 200) = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      v8 = (v6 + 8);
      v7 = *(v6 + 8);
      if (v7 && (v9 = *(v7 + 8)) != 0)
      {
        v10 = *(v9 + 16);
        v54 = 0;
        if (v10)
        {
          while (CGPDFDictionaryGetOffset(v10, "Prev", &v54) && v54)
          {
            v17 = (v6 + 8);
            while (1)
            {
              v17 = *v17;
              if (!v17)
              {
                break;
              }

              if (*(v17[1] + 8) == v54)
              {
                goto LABEL_18;
              }
            }

            v18 = xref_table_create(v6, v54, v11, v12, v13, v14, v15, v16);
            if (!v18)
            {
              if ((*(a1 + 201) & 1) == 0)
              {
                goto LABEL_43;
              }

              v47 = *(a1 + 16);
              if (v47 && (v48 = *(v47 + 8)) != 0 && (v49 = *(v48 + 8)) != 0)
              {
                v50 = *(v49 + 16);
              }

              else
              {
                v50 = 0;
              }

              v39 = CGPDFXRefTableCreateByScanningObjects(a1, v50);
              if (v39)
              {
                CGPDFXRefTableRelease(*(a1 + 16));
                *(a1 + 16) = v39;
                goto LABEL_35;
              }

              goto LABEL_40;
            }

            v19 = v18;
            v20 = *v8;
            v21 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
            *v21 = v20;
            v21[1] = v19;
            *v8 = v21;
          }
        }
      }

      else
      {
        v54 = 0;
      }

LABEL_18:
      v22 = *v8;
      if (*v8)
      {
        v23 = 0;
        do
        {
          v24 = v22;
          v22 = *v22;
          *v24 = v23;
          v23 = v24;
        }

        while (v22);
      }

      else
      {
        v24 = 0;
      }

      *v8 = v24;
    }

    else
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v27 = (v25 + 8);
        v26 = *(v25 + 8);
        if (v26)
        {
          v28 = *(v26 + 8);
          if (v28)
          {
            while (1)
            {
              v54 = 0;
              if (!CGPDFDictionaryGetOffset(*(v28 + 1), "Prev", &v54))
              {
                break;
              }

              if (!v54)
              {
                goto LABEL_35;
              }

              v35 = (v25 + 8);
              while (1)
              {
                v35 = *v35;
                if (!v35)
                {
                  break;
                }

                if (*v35[1] == v54)
                {
                  goto LABEL_35;
                }
              }

              v36 = xref_stream_create(*(v25 + 16), v54, v29, v30, v31, v32, v33, v34);
              if (!v36)
              {
                goto LABEL_35;
              }

              v28 = v36;
              v37 = *v27;
              v38 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
              *v38 = v37;
              v38[1] = v28;
              *v27 = v38;
            }

            v44 = *v27;
            if (*v27)
            {
              v45 = 0;
              do
              {
                v46 = v44;
                v44 = *v44;
                *v46 = v45;
                v45 = v46;
              }

              while (v44);
            }

            else
            {
              v46 = 0;
            }

            *v27 = v46;
          }
        }
      }
    }
  }

LABEL_35:
  v39 = (*(a1 + 168) + 40 * a2);
  if (v39[12])
  {
    goto LABEL_40;
  }

  if ((v39[12] & 2) != 0)
  {
LABEL_43:
    pthread_mutex_unlock((a1 + 96));
    return 0;
  }

  v39[12] |= 2u;
  v40 = *(a1 + 16);
  if (!v40)
  {
    if (CGPDFXRefStreamGetObject(*(a1 + 8), a2, a3, &v51))
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  if ((CGPDFXRefTableGetObject(v40, a2, a3, &v51) & 1) == 0)
  {
LABEL_42:
    v39[12] &= ~2u;
    goto LABEL_43;
  }

LABEL_39:
  v41 = v53;
  v42 = v52;
  *v39 = v51;
  *(v39 + 1) = v42;
  *(v39 + 3) = a3;
  *(v39 + 4) = v41;
  v39[12] |= 1u;
  *(v39 + 2) = a2;
  CGPDFObjectSetObjectReference(v39, a2, a3);
LABEL_40:
  pthread_mutex_unlock((a1 + 96));
  return v39;
}

BOOL CGPDFDictionaryGetInteger(CGPDFDictionaryRef dict, const char *key, CGPDFInteger *value)
{
  valuea = 0;
  Object = CGPDFDictionaryGetObject(dict, key, &valuea);
  if (Object)
  {
    if (valuea && ((v5 = *(valuea + 2), v5 != 12) ? (v6 = v5 == 3) : (v6 = 1), v6))
    {
      if (value)
      {
        *value = *(valuea + 4);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

uint64_t pdf_xref_get_trailer(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = v3 + 16;
        return *v4;
      }
    }
  }

  else
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          v4 = v7 + 8;
          return *v4;
        }
      }
    }
  }

  return 0;
}

BOOL CGPDFDictionaryGetArray(CGPDFDictionaryRef dict, const char *key, CGPDFArrayRef *value)
{
  if (value)
  {
    *value = 0;
  }

  valuea = 0;
  Object = CGPDFDictionaryGetObject(dict, key, &valuea);
  if (Object)
  {
    if (valuea)
    {
      v5 = *(valuea + 2);
      LOBYTE(Object) = v5 == 7;
      if (v5 == 7 && value != 0)
      {
        *value = *(valuea + 4);
        LOBYTE(Object) = 1;
      }
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

void *CGPDFArraySetObjectReference(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result[6] = a2;
    result[7] = a3;
    v5 = result[2];
    v6 = result[3];
    while (v5 != v6)
    {
      v7 = *v5++;
      result = CGPDFObjectSetOwningReference(v7, a2, a3);
    }
  }

  return result;
}

uint64_t CGPDFObjectSetOwningReference(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(result + 8);
    switch(v5)
    {
      case 6:
        v12 = *(result + 32);
        if (v12)
        {
          *(v12 + 48) = a2;
          *(v12 + 56) = a3;
        }

        break;
      case 7:
        v8 = *(result + 32);
        if (v8)
        {
          v9 = *(v8 + 16);
          v10 = *(v8 + 24);
          while (v9 != v10)
          {
            v11 = *v9++;
            result = CGPDFObjectSetOwningReference(v11, a2, a3);
          }
        }

        break;
      case 8:
        v6 = *(result + 32);
        if (v6)
        {
          for (i = *(v6 + 64); i; i = *i)
          {
            result = CGPDFObjectSetOwningReference(i[3], a2, a3);
          }
        }

        break;
    }
  }

  return result;
}

BOOL CGPDFDictionaryGetDictionary(CGPDFDictionaryRef dict, const char *key, CGPDFDictionaryRef *value)
{
  if (value)
  {
    *value = 0;
  }

  valuea = 0;
  Object = CGPDFDictionaryGetObject(dict, key, &valuea);
  if (Object)
  {
    if (valuea)
    {
      v5 = *(valuea + 2);
      LOBYTE(Object) = v5 == 8;
      if (v5 == 8 && value != 0)
      {
        *value = *(valuea + 4);
        LOBYTE(Object) = 1;
      }
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

uint64_t __pdf_document_get_type_id_block_invoke()
{
  result = pdf_register_cftype(&pdf_document_get_type_id_class);
  pdf_document_get_type_id_id = result;
  return result;
}

uint64_t ___Z15CGDefaultsCheckI35CGPDFDocumentPageResourcesCacheSizeENT_10ResultTypeEv_block_invoke()
{
  result = get_integer_property("CGPDFDocumentPageResourcesCacheSize", copy_local_domain_value, &CGDefaultsCheck<CGPDFDocumentPageResourcesCacheSize>(void)::result);
  if ((result & 1) == 0)
  {
    CGDefaultsCheck<CGPDFDocumentPageResourcesCacheSize>(void)::result = 16;
  }

  return result;
}

const void *___Z15CGDefaultsCheckI38CGPDFDocumentPageResourcesCacheLoggingENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGPDFDocumentPageResourcesCacheLogging", copy_local_domain_value, &CGDefaultsCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::result);
  if ((result & 1) == 0)
  {
    CGDefaultsCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::result = 0;
  }

  return result;
}

CGPDFPageRef CGPDFDocumentGetPage(CGPDFPageRef document, size_t pageNumber)
{
  if (document)
  {
    v3 = document;
    v4 = *(*(document + 2) + 16);
    v5 = *(*v4 + 40);
    if ((!v5 || (v6 = *(v5 + 16)) != 0 && *(v6 + 184) == 1) && pageNumber - 1 < pdf_reader_get_number_of_pages(v4) && (ensure_page_array_exists(v3), (v7 = *(v3 + 3)) != 0))
    {
      v8 = v7 + 8 * pageNumber;
      document = *(v8 - 8);
      if (!document)
      {
        pthread_mutex_lock((v3 + 56));
        if (!*(v8 - 8))
        {
          *(v8 - 8) = CGPDFPageCreate2(v3, pageNumber, 0);
        }

        pthread_mutex_unlock((v3 + 56));
        return *(v8 - 8);
      }
    }

    else
    {
      return 0;
    }
  }

  return document;
}

uint64_t CGPDFXRefTableGetObject(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v9 = v4[1];
    object_offset = xref_table_get_object_offset(*(v9 + 40), a2, a3);
    if (object_offset)
    {
      break;
    }

    v17 = *(v9 + 32);
    if (v17)
    {
      v18 = *v17;
      if (CGPDFXRefStreamGetObject(v17, a2, a3, a4))
      {
        return 1;
      }

      if (v18 && *(v18 + 16) != a1)
      {
        return 0;
      }
    }

    v4 = *v4;
    if (!v4)
    {
      return 0;
    }
  }

  CGPDFSourceSetPosition(*(*(a1 + 16) + 8), object_offset, v11, v12, v13, v14, v15, v16);
  v26 = *(a1 + 16);

  return pdf_object_scanner_read_indirect_object(v26, a4, v20, v21, v22, v23, v24, v25);
}

void *xref_table_get_object_offset(void *result, unint64_t a2, unsigned __int16 a3)
{
  if (result)
  {
    while (1)
    {
      v3 = result[1];
      v4 = a2 - *v3;
      if (a2 >= *v3 && a2 < v3[1] + *v3)
      {
        v5 = v3[2];
        if (v5)
        {
          LODWORD(v5) = *(v5 + 2 * v4);
        }

        if (v5 == a3)
        {
          break;
        }
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    return v3[v4 + 3];
  }

  return result;
}

uint64_t __CGPDFPageGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFPageGetTypeID_class);
  CGPDFPageGetTypeID_id = result;
  return result;
}

BOOL CGPDFArrayGetObject(CGPDFArrayRef array, size_t index, CGPDFObjectRef *value)
{
  if (array)
  {
    v3 = array;
    v4 = *(array + 2);
    if (index >= (*(array + 3) - v4) >> 3)
    {
      LOBYTE(array) = 0;
    }

    else
    {
      array = *(v4 + 8 * index);
      if (array && *(array + 2) == 10)
      {
        array = pdf_xref_resolve(*(v3 + 5), *(array + 2), *(array + 3));
      }

      if (value)
      {
        *value = array;
      }

      LOBYTE(array) = array != 0;
    }
  }

  return array;
}

uint64_t CGPDFResourcesCreate()
{
  if (CGPDFResourcesGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFResourcesGetTypeID_onceToken, &__block_literal_global_17_8210);
  }

  result = pdf_create_cftype();
  if (result)
  {
    *(result + 80) = 0;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_183F3C7E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_183F42154(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

void CGContextSetLineWidth(CGContextRef c, CGFloat width)
{
  if (c && *(c + 4) == 1129601108)
  {
    if (width >= 0.0 || width == -1.0905473e16)
    {
      v9 = *(c + 12);
      if (*(*(v9 + 128) + 8) != width)
      {
        maybe_copy_stroke_state(*(c + 12));
        *(*(v9 + 128) + 8) = width;
      }
    }

    else
    {
      CGPostError("%s: invalid line width: negative values are not allowed.", c, v2, v3, v4, v5, v6, v7, "CGContextSetLineWidth");
    }
  }

  else
  {

    handle_invalid_context("CGContextSetLineWidth", c, v2, v3, v4, v5, v6, v7);
  }
}

void CGContextSetLineCap(CGContextRef c, CGLineCap cap)
{
  if (!c)
  {
    v8 = 0;
LABEL_7:
    handle_invalid_context("CGContextSetLineCap", v8, v2, v3, v4, v5, v6, v7);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v8 = c;
    goto LABEL_7;
  }

  if (cap >= (kCGLineCapSquare|kCGLineCapRound))
  {
    cap = kCGLineCapButt;
  }

  CGGStateSetLineCap(*(c + 12), cap);
}

void CGGStateSetLineCap(uint64_t a1, int a2)
{
  if (*(*(a1 + 128) + 2) != a2)
  {
    v2 = a2;
    maybe_copy_stroke_state(a1);
    *(*(a1 + 128) + 2) = v2;
  }
}

void CGContextMoveToPoint(CGContextRef c, CGFloat x, CGFloat y)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      Mutable = *(c + 21);
      if (!Mutable)
      {
        Mutable = CGPathCreateMutable();
        *(c + 21) = Mutable;
      }

      v13 = (*(c + 12) + 24);

      CGPathMoveToPoint(Mutable, v13, x, y);
      return;
    }

    v14 = c;
  }

  else
  {
    v14 = 0;
  }

  handle_invalid_context("CGContextMoveToPoint", v14, v3, v4, v5, v6, v7, v8);
}

void CGContextAddLineToPoint(CGContextRef c, CGFloat x, CGFloat y)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v11 = *(c + 21);
      if (v11 && !CGPathIsEmpty(v11))
      {
        v15 = *(c + 21);
        v16 = (*(c + 12) + 24);

        CGPathAddLineToPoint(v15, v16, x, y);
      }

      else
      {
        CGPostError("%s: no current point.", v3, v4, v5, v6, v7, v8, v9, "CGContextAddLineToPoint");
      }

      return;
    }

    v14 = c;
  }

  else
  {
    v14 = 0;
  }

  handle_invalid_context("CGContextAddLineToPoint", v14, v4, v5, v6, v7, v8, v9);
}

uint64_t rip_auto_context_draw_path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (!a1)
  {
    v10 = 120;
    pthread_mutex_lock(0x78);
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 288);
  v10 = v9 + 120;
  pthread_mutex_lock((v9 + 120));
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = *(v9 + 88);
  if (!v11)
  {
    v11 = *(v9 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v9, a3);
  v12 = *(v9 + 112);
  v13 = *(a3 + 120);
  if (*(v13 + 48) >= v12)
  {
    v12 = *(v13 + 48);
  }

  *(v9 + 112) = v12;
  if (v11)
  {
    v14 = CGContextDelegateDrawPath(*(v11 + 40), a2, a3, a4, a5);
    *(v9 + 105) |= rip_auto_context_contains_transparency(v9, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v14 = 0;
  }

  pthread_mutex_unlock(v10);
  return v14;
}

void __read_entitlements_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.coregraphics.disablepdf", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        sHasLockdownModeForPDFEntitlement = CFBooleanGetValue(v3) != 0;
      }

      else
      {
        pdf_error("Invalid value for entitlement: %s. Must be CFBooleanRef", "com.apple.coregraphics.disablepdf");
      }
    }

    v5 = SecTaskCopyValueForEntitlement(v1, @"com.apple.coregraphics.disableinmemoryfonts", 0);
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFBooleanGetTypeID())
      {
        sHasLockdownModeForFontsEntitlement = CFBooleanGetValue(v6) != 0;
      }

      else
      {
        pdf_error("Invalid value for entitlement: %s. Must be CFBooleanRef", "com.apple.coregraphics.disableinmemoryfonts");
      }
    }

    CFRelease(v1);
  }
}

BOOL string_ends_with(const char *a1, char *__s)
{
  result = 0;
  if (a1)
  {
    if (__s)
    {
      v5 = strlen(__s);
      v6 = strlen(a1);
      return strncmp(&a1[v6 - v5], __s, v5) == 0;
    }
  }

  return result;
}

void *CGPDFSourceCreateInternal(size_t a1)
{
  if (CGPDFSourceGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFSourceGetTypeID_onceToken, &__block_literal_global_4854);
  }

  cftype = pdf_create_cftype();
  v3 = cftype;
  if (cftype)
  {
    *(cftype + 96) = a1;
    v4 = malloc_type_calloc(1uLL, a1, 0x27D18550uLL);
    __CFSetLastAllocationEventName();
    v3[11] = v4;
    if (v4)
    {
      v3[2] = -1;
      v3[13] = 0;
      v3[14] = 0;
      v3[15] = 0;
      v3[16] = v4;
    }

    else
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

void *CGPDFSourceCreate(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a3 >= 0x4000)
  {
    v6 = 0x4000;
  }

  else
  {
    v6 = a3;
  }

  Internal = CGPDFSourceCreateInternal(v6);
  v8 = Internal;
  if (Internal)
  {
    Internal[5] = a1;
    CFRetain(a1);
    *(v8 + 209) = 0;
    v8[2] = a3;
    v8[3] = a2;
    v8[4] = 0;
  }

  return v8;
}

void **pdf_xref_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Copy = a1;
  v173 = *MEMORY[0x1E69E9840];
  v160 = 0;
  v172.__sig = 0;
  *v172.__opaque = 0;
  CGPDFSourceSetPosition(a1, 0, a3, a4, a5, a6, a7, a8);
  if ((CGPDFSourceForwardSearch(Copy, "%PDF-", 0, &v160) & 1) == 0)
  {
    CGPDFSourceSetPosition(Copy, 0, v9, v10, v11, v12, v13, v14);
    if ((CGPDFSourceForwardSearch(Copy, "%!PS-Adobe-", 0, &v160) & 1) == 0)
    {
      return 0;
    }
  }

  v15 = malloc_type_calloc(1uLL, 0xD0uLL, 0x1072040AB86B465uLL);
  __CFSetLastAllocationEventName();
  *(v15 + 176) = 0;
  *(v15 + 23) = xmmword_18439CB40;
  if (!Copy)
  {
    v20 = v160;
    if (!v160)
    {
      v19 = 0;
      Copy = 0;
      goto LABEL_10;
    }

    v19 = 0;
    goto LABEL_9;
  }

  v19 = Copy[2];
  if (v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v160;
  if (v160)
  {
LABEL_9:
    Copy = CGPDFSourceCreateCopy(Copy, v20, v19 - v20);
    goto LABEL_10;
  }

  CFRetain(Copy);
LABEL_10:
  *v15 = Copy;
  *(v15 + 16) = 1;
  pthread_mutexattr_init(&v172);
  pthread_mutexattr_settype(&v172, 2);
  pthread_mutex_init((v15 + 12), &v172);
  pthread_mutexattr_destroy(&v172);
  v25 = *v15;
  if (*v15)
  {
    v26 = v25[2];
    if (v26 == -1)
    {
LABEL_61:
      _CGHandleAssert("CGPDFSourceGetLength", 179, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->length != (pdf_off_t)-1", "source length would overflow", v16, v17, v18, v155);
    }
  }

  else
  {
    v26 = 0;
  }

  linearization_dictionary = xref_read_linearization_dictionary(v25, v21, v22, v23, v24, v16, v17, v18);
  v15[3] = linearization_dictionary;
  if (!linearization_dictionary)
  {
    goto LABEL_58;
  }

  CGPDFSourceSkipWhitespace(*v15, v28, v29, v30, v31, v16, v17, v18);
  v38 = *v15;
  if (*v15)
  {
    v39 = v38[11];
    if (v38[18])
    {
      v40 = v38[24];
      v39 += v38[15];
    }

    else
    {
      v40 = v38[16];
    }

    v41 = v40 - v39 + v38[14];
  }

  else
  {
    v41 = -1;
  }

  if (CGPDFSourceMatch(v38, "xref", v32, v33, v34, v35, v36, v37))
  {
    v42 = CGPDFXRefTableCreate(v15, v41, 0);
    v15[2] = v42;
    if (!v42)
    {
      goto LABEL_72;
    }

    v43 = 10000001;
    v44 = v42[1];
    if (v44)
    {
      v45 = *(v44 + 8);
      if (v45)
      {
        v46 = *(v45 + 40);
        while (v46)
        {
          v47 = v46;
          v46 = *v46;
          v48 = *v47[1];
          if (v48 < v43)
          {
            v43 = v48;
          }
        }
      }
    }
  }

  else
  {
    v49 = CGPDFXRefStreamCreate(v15, v41, 0);
    v15[1] = v49;
    if (!v49)
    {
      goto LABEL_72;
    }

    v43 = 10000001;
    for (i = v49[1]; i; i = *i)
    {
      v51 = *(i[1] + 16);
      while (v51)
      {
        v52 = v51;
        v51 = *v51;
        v53 = *v52[1];
        if (v53 < v43)
        {
          v43 = v53;
        }
      }
    }
  }

  v15[24] = v43;
  v54 = v15[2];
  if (!v54 && !v15[1])
  {
LABEL_58:
    if (v26 == 0x7FFFFFFFFFFFFFFFLL && !v15[3])
    {
      goto LABEL_72;
    }

    __s1[0] = 0;
    v64 = *v15;
    if (*v15)
    {
      v65 = v64[2];
      if (v65 == -1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v65 = 0;
    }

    CGPDFSourceSetPosition(v64, v65, v29, v30, v31, v16, v17, v18);
    if (CGPDFSourceReverseSearch(*v15, "startxref", "\n\r", " \n\r", __s1))
    {
      CGPDFSourceSetPosition(*v15, (__s1[0] + 9), v66, v67, v68, v69, v70, v71);
      v72 = *v15;
      value[0] = 0;
      integer = read_integer(v72, value, v73, v74, v75, v76, v77, v78);
      v86 = "missing or invalid value for cross-reference offset.";
      if (integer)
      {
        v87 = value[0];
        if ((value[0] & 0x8000000000000000) == 0)
        {
          v15[23] = value[0];
          CGPDFSourceSetPosition(*v15, v87, v79, v80, v81, v82, v83, v84);
          CGPDFSourceSkipWhitespace(*v15, v88, v89, v90, v91, v92, v93, v94);
          v101 = *v15;
          if (*v15)
          {
            v102 = v101[11];
            if (v101[18])
            {
              v103 = v101[24];
              v102 += v101[15];
            }

            else
            {
              v103 = v101[16];
            }

            v117 = v103 - v102 + v101[14];
          }

          else
          {
            v117 = -1;
          }

          if (CGPDFSourceMatch(v101, "xref", v95, v96, v97, v98, v99, v100))
          {
            v54 = CGPDFXRefTableCreate(v15, v117, 1);
            v15[2] = v54;
            if (v54)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v118 = CGPDFXRefStreamCreate(v15, v117, 1);
            v15[1] = v118;
            if (v118)
            {
              v54 = v15[2];
              if (!v54)
              {
                goto LABEL_41;
              }

              goto LABEL_75;
            }
          }

LABEL_72:
          if (v19 == 0x7FFFFFFFFFFFFFFFLL && !v15[3])
          {
            goto LABEL_174;
          }

          v54 = CGPDFXRefTableCreateByScanningObjects(v15, 0);
          v15[2] = v54;
          if (!v54)
          {
            goto LABEL_174;
          }

          goto LABEL_75;
        }
      }
    }

    else
    {
      v86 = "failed to find start of cross-reference table.";
    }

    pdf_error(v86);
    goto LABEL_72;
  }

  v15[23] = v41;
  *(v15 + 200) = 1;
  if (!v54)
  {
LABEL_41:
    v55 = v15[1];
    if (v55)
    {
      v56 = v55[1];
      if (v56)
      {
        v57 = 0;
        do
        {
          v58 = v56[1];
          if (v58 && (v59 = *(v58 + 16)) != 0)
          {
            v60 = 0;
            do
            {
              v61 = v59;
              v59 = *v59;
              v62 = *(v61[1] + 8) + *v61[1];
              if (v60 <= v62)
              {
                v60 = v62;
              }
            }

            while (v59);
          }

          else
          {
            v60 = 0;
          }

          if (v57 <= v60)
          {
            v57 = v60;
          }

          v56 = *v56;
        }

        while (v56);
        if (v57 > 0x989681)
        {
          v63 = "xref stream size too large.";
LABEL_93:
          v57 = 10000001;
          pdf_error(v63);
          goto LABEL_95;
        }

        goto LABEL_95;
      }
    }

LABEL_94:
    v57 = 0;
    goto LABEL_95;
  }

LABEL_75:
  v104 = v54[1];
  if (!v104)
  {
    goto LABEL_94;
  }

  v105 = v19;
  v57 = 0;
  do
  {
    v106 = v104[1];
    v107 = *v106;
    if (!*v106)
    {
      value[0] = 0;
      v108 = CGPDFDictionaryGetInteger(*(v106 + 16), "Size", value);
      v107 = 0;
      if (v108)
      {
        v109 = *(v106 + 40);
        if (v109)
        {
          v110 = 0;
          do
          {
            v111 = v109;
            v109 = *v109;
            v112 = *(v111[1] + 8) + *v111[1];
            if (v110 <= v112)
            {
              v110 = v112;
            }
          }

          while (v109);
        }

        else
        {
          v110 = 0;
        }

        v107 = value[0];
        if (value[0] <= v110)
        {
          v107 = v110;
        }
      }
    }

    if (v57 <= v107)
    {
      v57 = v107;
    }

    v104 = *v104;
  }

  while (v104);
  v19 = v105;
  if (v57 > 0x989681)
  {
    v63 = "xref table size too large.";
    goto LABEL_93;
  }

LABEL_95:
  v15[20] = v57;
  v113 = malloc_type_calloc(1uLL, 40 * v57, 0x103204077D336DFuLL);
  __CFSetLastAllocationEventName();
  v15[21] = v113;
  trailer = pdf_xref_get_trailer(v15);
  if (CGPDFDictionaryGetArray(trailer, "ID", v15 + 6))
  {
    CGPDFArraySetObjectReference(v15[6], 0, 0);
  }

  v115 = pdf_xref_get_trailer(v15);
  if (!v115)
  {
    goto LABEL_129;
  }

  v170 = 0;
  value[0] = 0;
  __s1[0] = 0;
  v168 = 0;
  v169 = 0;
  *&v167[1] = 0;
  if (!CGPDFDictionaryGetDictionary(v115, "Encrypt", &v168))
  {
    goto LABEL_129;
  }

  CGPDFDictionarySetObjectReference(v168, 0, 0);
  if (!CGPDFDictionaryGetName(v168, "Filter", __s1))
  {
LABEL_129:
    v119 = 0;
    goto LABEL_130;
  }

  if (!CGPDFDictionaryGetName(v168, "SubFilter", &v170))
  {
    v170 = 0;
  }

  if (!CGPDFDictionaryGetInteger(v168, "V", value))
  {
    goto LABEL_129;
  }

  if (value[0] > 5uLL || ((1 << SLOBYTE(value[0])) & 0x36) == 0)
  {
    goto LABEL_129;
  }

  if ((value[0] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if (CGPDFDictionaryGetDictionary(v168, "CF", &v167[1]))
    {
      v116 = *&v167[1];
    }

    else
    {
      v116 = 0;
    }
  }

  else
  {
    v116 = 0;
  }

  if (strcmp(__s1[0], "Standard"))
  {
    goto LABEL_129;
  }

  v119 = malloc_type_calloc(1uLL, 0x38uLL, 0x10200405B906368uLL);
  __CFSetLastAllocationEventName();
  if (v119)
  {
    v120 = v168;
    *v119 = v15[6];
    v119[1] = v120;
    v119[3] = v116;
    v121 = CGPDFSecurityHandlerCreate(v119);
    v119[2] = v121;
    v122 = value[0];
    v119[6] = value[0];
    if (!v121 || ((v122 & 0xFFFFFFFFFFFFFFFELL) != 4 ? (Standard = CGPDFCryptFilterCreateStandard(v119)) : (!CGPDFDictionaryGetName(v168, "StmF", &v169) ? (v123 = "Identity", v169 = "Identity") : (v123 = v169), Standard = CGPDFSecurityManagerCreateCryptFilter(v119, v123)), (v119[4] = Standard) == 0 || ((value[0] & 0xFFFFFFFFFFFFFFFELL) != 4 ? (CryptFilter = CGPDFCryptFilterCreateStandard(v119)) : (!CGPDFDictionaryGetName(v168, "StrF", &v169) ? (v153 = "Identity", v169 = "Identity") : (v153 = v169), CryptFilter = CGPDFSecurityManagerCreateCryptFilter(v119, v153)), (v119[5] = CryptFilter) == 0)))
    {
      CGPDFSecurityManagerRelease(v119);
      goto LABEL_129;
    }
  }

LABEL_130:
  v15[5] = v119;
  v124 = v15[3];
  if (!v124)
  {
LABEL_179:
    *(v15 + 201) = 1;
    return v15;
  }

  if (v119)
  {
    CGPDFSecurityManagerUnlock(v119, "", 0);
    v124 = v15[3];
  }

  v166 = 0;
  *__s1 = 0u;
  v165 = 0u;
  array = 0;
  CGPDFDictionaryGetArray(v124, "H", &array);
  if (!array || *(array + 3) - *(array + 2) != 16 || (v161 = 0, valuePtr = 0, !CGPDFArrayGetInteger(array, 0, &valuePtr)) || !CGPDFArrayGetInteger(array, 1uLL, &v161))
  {
    v132 = 0;
LABEL_163:
    pdf_object_scanner_release(v132);
    v15[4] = 0;
    goto LABEL_173;
  }

  v125 = pdf_object_scanner_create_with_xref(v15, 0);
  v132 = v125;
  if (!v125)
  {
    goto LABEL_163;
  }

  CGPDFSourceSetPosition(v125[1], valuePtr, v126, v127, v128, v129, v130, v131);
  if (!pdf_object_scanner_read_indirect_object(v132, __s1, v133, v134, v135, v136, v137, v138))
  {
    goto LABEL_163;
  }

  if (LODWORD(__s1[1]) != 9)
  {
    if ((LODWORD(__s1[1]) - 5) <= 4)
    {
      pdf_object_release_compound_value(__s1);
    }

    goto LABEL_163;
  }

  v156 = v132;
  v157 = v15;
  v139 = v166;
  v140 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 11, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v141 = 0;
  v142 = *MEMORY[0x1E695E498];
  do
  {
    if (v139)
    {
      v143 = *(v139 + 6);
    }

    else
    {
      v143 = 0;
    }

    v144 = off_1E6E1A388[v141];
    if (CGPDFDictionaryGetInteger(v143, v144, &valuePtr))
    {
      v145 = CFStringCreateWithCStringNoCopy(v140, v144, 0x8000100u, v142);
      v146 = CFNumberCreate(v140, kCFNumberLongType, &valuePtr);
      v147 = v146;
      if (v145)
      {
        v148 = v146 == 0;
      }

      else
      {
        v148 = 1;
      }

      if (!v148)
      {
        CFDictionaryAddValue(theDict, v145, v146);
LABEL_155:
        CFRelease(v145);
        if (!v147)
        {
          goto LABEL_157;
        }

LABEL_156:
        CFRelease(v147);
        goto LABEL_157;
      }

      if (v145)
      {
        goto LABEL_155;
      }

      if (v146)
      {
        goto LABEL_156;
      }
    }

    else if (*v144 == 83)
    {
      goto LABEL_164;
    }

LABEL_157:
    ++v141;
  }

  while (v141 != 11);
  v149 = CGPDFStreamCopyData(v139, 0);
  if (v149)
  {
    theData = v149;
    if (CFDataGetLength(v149))
    {
      operator new();
    }

    v15 = v157;
    if (v139)
    {
      CFRelease(v139);
    }

    v139 = theData;
    goto LABEL_169;
  }

LABEL_164:
  v15 = v157;
  if (!v139)
  {
    goto LABEL_170;
  }

LABEL_169:
  CFRelease(v139);
LABEL_170:
  if (theDict)
  {
    CFRelease(theDict);
  }

  pdf_object_scanner_release(v156);
  v15[4] = 0;
LABEL_173:
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v150 = v15[3];
    if (v150)
    {
      CFRelease(v150);
    }

    v15[3] = 0;
    goto LABEL_179;
  }

LABEL_174:
  pdf_xref_release(v15);
  return 0;
}

void sub_183F3EE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    __cxa_free_exception(v30);
    v33 = a20[11];
    a20[11] = 0;
    if (v33)
    {
      MEMORY[0x1865EE610](v33, 0x1000C40451B5BE8);
    }

    v34 = a20[10];
    a20[10] = 0;
    if (v34)
    {
      MEMORY[0x1865EE610](v34, 0x1000C40451B5BE8);
    }

    v35 = a20[9];
    a20[9] = 0;
    if (v35)
    {
      std::default_delete<CGSharedObjectHintTable>::operator()[abi:fe200100](v35);
    }

    std::unique_ptr<CGPageOffsetHintTable>::reset[abi:fe200100](a11, 0);
    MEMORY[0x1865EE610](a20, 0x10A1C40AA68228DLL);
    v36 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      (*(*v36 + 16))(v36);
      pdf_error("CGHintTableSet constructor failed with exception: %s");
    }

    else
    {
      pdf_error("CGHintTableSet constructor failed with an unknown exception:");
    }

    __cxa_end_catch();
    JUMPOUT(0x183F3E9ACLL);
  }

  _Unwind_Resume(exception_object);
}

void *CGPDFXRefTableCreate(const void **a1, uint64_t a2, int a3)
{
  v4 = a2;
  v23 = a2;
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  __CFSetLastAllocationEventName();
  if (v6)
  {
    *v6 = a1;
    v7 = pdf_object_scanner_create_with_xref(a1, 0);
    v6[2] = v7;
    if (v7)
    {
      v14 = v6 + 1;
      while (1)
      {
        v15 = xref_table_create(v6, v4, v8, v9, v10, v11, v12, v13);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = *v14;
        v18 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v18 = v17;
        v18[1] = v16;
        *v14 = v18;
        if (!a3)
        {
          goto LABEL_14;
        }

        if (!CGPDFDictionaryGetOffset(v16[2], "Prev", &v23))
        {
          v18 = *v14;
LABEL_14:
          v21 = 0;
          do
          {
            v22 = v18;
            v18 = *v18;
            *v22 = v21;
            v21 = v22;
          }

          while (v18);
          *v14 = v22;
          if (!CGPDFDictionaryGetObject(*(v22[1] + 16), "Root", 0))
          {
            break;
          }

          return v6;
        }

        v4 = v23;
        if (!v23)
        {
          break;
        }

        v19 = v6 + 1;
        while (1)
        {
          v19 = *v19;
          if (!v19)
          {
            break;
          }

          if (*(v19[1] + 8) == v23)
          {
            goto LABEL_11;
          }
        }
      }
    }

LABEL_11:
    CGPDFXRefTableRelease(v6);
    return 0;
  }

  return v6;
}

void *xref_table_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  CGPDFSourceSetPosition(v11, a2, a3, a4, a5, a6, a7, a8);
  if (!CGPDFSourceMatch(v11, "xref", v12, v13, v14, v15, v16, v17))
  {
    pdf_error("failed to find start of cross-reference section.");
    return 0;
  }

  v18 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040EE5BEA7CuLL);
  __CFSetLastAllocationEventName();
  if (v18)
  {
    v25 = 0;
    v96 = 0;
    *v18 = 0;
    v18[1] = a2;
    v94 = a1;
    v95 = "missing or invalid cross-reference offset.";
LABEL_7:
    v98 = 0;
    if (!read_integer(v11, &v98, v19, v20, v21, v22, v23, v24) || (v32 = v98, (v98 & 0x8000000000000000) != 0))
    {
      if (!v25)
      {
        goto LABEL_94;
      }

      v78 = 0;
      do
      {
        v79 = v25;
        v80 = v78;
        v25 = *v25;
        *v79 = v78;
        v78 = v79;
      }

      while (v25);
      if (!v80)
      {
        v92 = v79[1];
        if (v92[1] >= 1 && *v92 && !v92[3])
        {
          pdf_error("invalid first entry in cross-reference table.");
          v90 = v79;
          goto LABEL_93;
        }
      }

      v18[5] = v79;
      if (!CGPDFSourceMatch(v11, "trailer", v26, v27, v28, v29, v30, v31))
      {
        pdf_error("invalid cross-reference section: missing trailer.");
        goto LABEL_95;
      }

      if (v11)
      {
        v87 = v11[11];
        v88 = v94;
        if (v11[18])
        {
          v89 = v11[24];
          v87 += v11[15];
        }

        else
        {
          v89 = v11[16];
        }

        v93 = v89 - v87 + v11[14] - 7;
      }

      else
      {
        v93 = -8;
        v88 = v94;
      }

      v18[3] = v93;
      if ((read_dictionary(*(v88 + 16), v18 + 2, v81, v82, v83, v84, v85, v86) & 1) == 0)
      {
        pdf_error("missing or invalid cross-reference trailer.");
        goto LABEL_95;
      }

      if (CGPDFDictionaryGetOffset(v18[2], "XRefStm", &v96))
      {
        v18[4] = CGPDFXRefStreamCreate(*v88, v96, 0);
      }

      return v18;
    }

    if (v98 > 0x989680)
    {
      pdf_error("invalid cross-reference starting object.");
      goto LABEL_92;
    }

    v98 = 0;
    if (!read_integer(v11, &v98, v26, v27, v28, v29, v30, v31) || (v33 = v98, (v98 & 0x8000000000000000) != 0))
    {
      pdf_error("missing or invalid cross-reference count.");
      goto LABEL_92;
    }

    if (v98 > 0x989680 || v98 && (v32 + v98) > 10000001)
    {
      pdf_error("invalid cross-reference count.");
      goto LABEL_92;
    }

    v34 = malloc_type_calloc(1uLL, 8 * v98 + 24, 0x1010040A79CA2DEuLL);
    __CFSetLastAllocationEventName();
    if (!v34)
    {
      goto LABEL_92;
    }

    *v34 = v32;
    v34[1] = v33;
    if (v11)
    {
      v35 = v11[11];
      if (v11[18])
      {
        v36 = v11[24];
        v35 += v11[15];
      }

      else
      {
        v36 = v11[16];
      }

      v37 = v36 - v35 + v11[14];
    }

    else
    {
      v37 = -1;
    }

    CGPDFSourcePreflightLargeRead(v11, v37, 20 * v33);
    if (v34[1] < 1)
    {
      goto LABEL_71;
    }

    v45 = 0;
    v46 = v34 + 3;
LABEL_24:
    v47 = v11[15];
    if (v47)
    {
      goto LABEL_28;
    }

    if (CGPDFSourceRefill(v11, v38, v39, v40, v41, v42, v43, v44))
    {
      goto LABEL_27;
    }

    v48 = -1;
    while (1)
    {
      while (1)
      {
        if (v48 > 0x20 || ((1 << v48) & 0x100003601) == 0)
        {
          v98 = 0;
          v97 = v48;
          if (!read_integer_16714(v11, &v98, &v97, v40, v41, v42, v43, v44) || (v98 & 0x8000000000000000) != 0)
          {
            goto LABEL_80;
          }

          v58 = 0;
          v46[v45] = v98;
          v59 = v97;
          do
          {
LABEL_37:
            if (v59 > 0x20 || ((1 << v59) & 0x100003601) == 0)
            {
              v97 = v59;
              if ((v58 & 1) == 0)
              {
                goto LABEL_73;
              }

              if (!read_integer_16714(v11, &v98, &v97, v53, v54, v55, v56, v57))
              {
                v77 = "missing or invalid cross-reference generation number.";
                goto LABEL_79;
              }

              v63 = 0;
              v64 = v98;
              v65 = v97;
              do
              {
LABEL_46:
                if (v65 > 0x20 || ((1 << v65) & 0x100003601) == 0)
                {
                  if (v63)
                  {
                    if (v65 != 110)
                    {
                      if (v65 == 102)
                      {
                        LODWORD(v64) = 0;
                        v46[v45] = 0;
                        goto LABEL_58;
                      }

LABEL_79:
                      v95 = v77;
LABEL_80:
                      pdf_error(v95);
LABEL_81:
                      free(v34);
LABEL_92:
                      v90 = v25;
LABEL_93:
                      xref_section_list_release(v90);
LABEL_94:
                      v18[5] = 0;
LABEL_95:
                      xref_table_release(v18);
                      return 0;
                    }

                    if (v64 >> 16)
                    {
                      v77 = "Object entry has invalid cross-reference generation number.";
                      goto LABEL_79;
                    }

                    LODWORD(v64) = v64;
LABEL_58:
                    v69 = v11[15];
                    if (!v69)
                    {
                      if (CGPDFSourceRefill(v11, v38, v39, v40, v41, v42, v43, v44))
                      {
                        v69 = v11[15];
                        goto LABEL_61;
                      }

LABEL_76:
                      v77 = "invalid cross-reference entry: missing terminator.";
                      goto LABEL_79;
                    }

LABEL_61:
                    v70 = v11[16];
                    v11[15] = v69 - 1;
                    v11[16] = v70 + 1;
                    v71 = *v70;
                    v72 = v71 > 0x20;
                    v73 = (1 << v71) & 0x100002400;
                    if (v72 || v73 == 0)
                    {
                      goto LABEL_76;
                    }

                    if (v64)
                    {
                      v75 = v34[2];
                      if (!v75)
                      {
                        v75 = malloc_type_calloc(1uLL, 2 * v34[1], 0x1000040BDFB0063uLL);
                        __CFSetLastAllocationEventName();
                        if (!v75)
                        {
                          goto LABEL_81;
                        }

                        v34[2] = v75;
                      }

                      v75[v45] = v64;
                    }

                    if (++v45 >= v34[1])
                    {
LABEL_71:
                      v76 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
                      *v76 = v25;
                      v76[1] = v34;
                      v25 = v76;
                      goto LABEL_7;
                    }

                    goto LABEL_24;
                  }

LABEL_73:
                  v77 = "invalid cross-reference entry: missing separator.";
                  goto LABEL_79;
                }

                v66 = v11[15];
                if (v66)
                {
                  goto LABEL_51;
                }

                v67 = CGPDFSourceRefill(v11, v38, v39, v40, v41, v42, v43, v44);
                v63 = 1;
                v65 = -1;
              }

              while (!v67);
              v66 = v11[15];
LABEL_51:
              v68 = v11[16];
              v11[15] = v66 - 1;
              v11[16] = v68 + 1;
              v65 = *v68;
              v63 = 1;
              goto LABEL_46;
            }

            v60 = v11[15];
            if (v60)
            {
              goto LABEL_42;
            }

            v61 = CGPDFSourceRefill(v11, v51, v52, v53, v54, v55, v56, v57);
            v58 = 1;
            v59 = -1;
          }

          while (!v61);
          v60 = v11[15];
LABEL_42:
          v62 = v11[16];
          v11[15] = v60 - 1;
          v11[16] = v62 + 1;
          v59 = *v62;
          v58 = 1;
          goto LABEL_37;
        }

        v47 = v11[15];
        if (!v47)
        {
          break;
        }

LABEL_28:
        v49 = v11[16];
        v11[15] = v47 - 1;
        v11[16] = v49 + 1;
        v48 = *v49;
      }

      v50 = CGPDFSourceRefill(v11, v38, v39, v40, v41, v42, v43, v44);
      v48 = -1;
      if (v50)
      {
LABEL_27:
        v47 = v11[15];
        goto LABEL_28;
      }
    }
  }

  return v18;
}

uint64_t pdf_object_scanner_read_object(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = pdf_lexer_scan(a1[2], a2, a3, a4, a5, a6, a7, a8);
  v16 = 0;
  if (v10 <= 6)
  {
    if ((v10 - 2) < 5)
    {
      return 1;
    }

    if (!v10)
    {
      return v16;
    }

    if (v10 == 1)
    {
      handle_choke(a2);
LABEL_21:
      if ((*(a2 + 8) - 5) <= 4)
      {
        pdf_object_release_compound_value(a2);
      }

      v16 = 0;
      *(a2 + 8) = 1;
      return v16;
    }

    goto LABEL_20;
  }

  if (v10 > 10)
  {
    if (v10 != 11)
    {
      if (v10 == 15)
      {
        return v16;
      }

      if (v10 == 13)
      {
        return 1;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (v10 == 7)
    {
      goto LABEL_21;
    }

    if (v10 == 8)
    {
      return 1;
    }

    if (v10 != 9)
    {
LABEL_20:
      pdf_error("encountered unexpected object type: %d.");
      goto LABEL_21;
    }
  }

  return pdf_object_scanner_read_compound_object(a1, a2, 1, v11, v12, v13, v14, v15);
}

uint64_t create_string_object(uint64_t a1, int a2)
{
  result = CGPDFStringCreate(*(a1 + 8), *(a1 + 40), *(a1 + 24), *(a1 + 56) == 2, a2);
  v4 = *(a1 + 48);
  *(v4 + 8) = 6;
  *(v4 + 12) |= 1u;
  *(*(a1 + 48) + 32) = result;
  return result;
}

void *CGPDFArrayCreateWithObjects(uint64_t a1, void *a2)
{
  if (CGPDFArrayGetTypeID(void)::onceToken != -1)
  {
    dispatch_once(&CGPDFArrayGetTypeID(void)::onceToken, &__block_literal_global_5597);
  }

  cftype = pdf_create_cftype();
  v5 = cftype;
  if (cftype)
  {
    pthread_mutex_init((cftype + 72), 0);
    v5[2] = 0;
    v6 = v5 + 2;
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = a1;
    v5[6] = 0;
    v5[7] = 0;
    v5[8] = 0;
    if (a2)
    {
      v7 = 0;
      v8 = a2;
      do
      {
        ++v7;
        v8 = *v8;
      }

      while (v8);
      std::vector<CGPDFObject *>::reserve(v5 + 2, v7);
      v9 = v5[3];
      do
      {
        v10 = v5[4];
        if (v9 >= v10)
        {
          v11 = (v9 - *v6) >> 3;
          if ((v11 + 1) >> 61)
          {
            std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
          }

          v12 = v10 - *v6;
          v13 = v12 >> 2;
          if (v12 >> 2 <= (v11 + 1))
          {
            v13 = v11 + 1;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v14);
          }

          *(8 * v11) = a2;
          v9 = (8 * v11 + 8);
          v15 = v5[2];
          v16 = v5[3] - v15;
          v17 = (8 * v11 - v16);
          memcpy(v17, v15, v16);
          v18 = v5[2];
          v5[2] = v17;
          v5[3] = v9;
          v5[4] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v9++ = a2;
        }

        v5[3] = v9;
        a2 = *a2;
      }

      while (a2);
    }

    else
    {
      std::vector<CGPDFObject *>::reserve(v5 + 2, 0);
    }
  }

  return v5;
}

uint64_t ___ZL19CGPDFArrayGetTypeIDv_block_invoke()
{
  result = pdf_register_cftype(&CGPDFArrayGetTypeID(void)::runtime_class);
  CGPDFArrayGetTypeID(void)::id = result;
  return result;
}

BOOL pdf_object_scanner_read_integer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = pdf_lexer_scan(a1, v14, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  if (v9 == 4)
  {
    if ((DWORD2(v14[0]) == 12 || DWORD2(v14[0]) == 3) && a2 != 0)
    {
      *a2 = v15;
    }
  }

  else
  {
    pdf_error("encountered unexpected object type: %d.", v9);
    if ((DWORD2(v14[0]) - 5) <= 4)
    {
      pdf_object_release_compound_value(v14);
    }
  }

  return v10 == 4;
}

BOOL CGPDFDictionaryGetName(CGPDFDictionaryRef dict, const char *key, const char **value)
{
  if (value)
  {
    *value = &unk_184564594;
  }

  valuea = 0;
  Object = CGPDFDictionaryGetObject(dict, key, &valuea);
  if (Object)
  {
    if (valuea)
    {
      v5 = *(valuea + 2);
      LOBYTE(Object) = v5 == 5;
      if (v5 == 5 && value != 0)
      {
        *value = *(valuea + 4);
        LOBYTE(Object) = 1;
      }
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

os_unfair_lock_s *CGPDFResourcesCreateWithPage(uint64_t a1, int a2)
{
  v4 = CGPDFResourcesCreate();
  v5 = v4;
  if (v4)
  {
    v22 = 0;
    os_unfair_lock_lock(v4 + 20);
    os_unfair_lock_lock((a1 + 88));
    v6 = *(a1 + 40);
    os_unfair_lock_unlock((a1 + 88));
    if (v6 && CGPDFDictionaryGetDictionary(*(v6 + 48), "Resources", &v22))
    {
      v7 = *&v5[4]._os_unfair_lock_opaque;
      v8 = v22;
      v9 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
      *v9 = v7;
      v9[1] = v8;
      *&v5[4]._os_unfair_lock_opaque = v9;
    }

    v10 = *(a1 + 16);
    value = v10;
    if (CGPDFDictionaryGetDictionary(v10, "Resources", &v22))
    {
      v11 = v22;
    }

    else
    {
      v11 = 0;
      v22 = 0;
    }

    v12 = *&v5[4]._os_unfair_lock_opaque;
    v13 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    *v13 = v12;
    v13[1] = v11;
    *&v5[4]._os_unfair_lock_opaque = v13;
    if (a2)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      while (CGPDFDictionaryGetDictionary(v10, "Parent", &value) && !CFSetContainsValue(Mutable, value))
      {
        if (CGPDFDictionaryGetDictionary(value, "Resources", &v22))
        {
          v15 = v22;
        }

        else
        {
          v15 = 0;
          v22 = 0;
        }

        v16 = *&v5[4]._os_unfair_lock_opaque;
        v17 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v17 = v16;
        v17[1] = v15;
        *&v5[4]._os_unfair_lock_opaque = v17;
        CFSetAddValue(Mutable, value);
        v10 = value;
      }

      v18 = *&v5[4]._os_unfair_lock_opaque;
      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = v18;
          v18 = *v18;
          *v20 = v19;
          v19 = v20;
        }

        while (v18);
      }

      else
      {
        v20 = 0;
      }

      *&v5[4]._os_unfair_lock_opaque = v20;
      CFRelease(Mutable);
    }

    os_unfair_lock_unlock(v5 + 20);
  }

  return v5;
}

uint64_t __CGPDFResourcesGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFResourcesGetTypeID_class);
  CGPDFResourcesGetTypeID_id = result;
  return result;
}

uint64_t pdf_page_get_rotation_angle(uint64_t a1)
{
  value = 0;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  dict = *(a1 + 16);
  while (!CGPDFDictionaryGetInteger(dict, "Rotate", &value))
  {
    if (*(a1 + 48) == 1)
    {
      CFSetAddValue(Mutable, dict);
      if (CGPDFDictionaryGetDictionary(dict, "Parent", &dict) && !CFSetContainsValue(Mutable, dict))
      {
        continue;
      }
    }

    goto LABEL_9;
  }

  if (value != value)
  {
    value = 0;
  }

LABEL_9:
  CFRelease(Mutable);
  return value;
}

void sub_183F3FEC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_183F42024(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_183F3FEF4()
{
  result = qword_1ED4DFB70;
  if (!qword_1ED4DFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4DFB70);
  }

  return result;
}

uint64_t sub_183F3FF48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id __send_analytics_event_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_block_invoke_onceToken != -1)
  {
    dispatch_once(&_block_invoke_onceToken, &__block_literal_global_71);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  if (_block_invoke_appIdentifier)
  {
    [v3 setObject:_block_invoke_appIdentifier forKeyedSubscript:@"bundleID"];
  }

  v19 = 0;
  memset(array, 0, sizeof(array));
  v5 = backtrace(array, 15);
  backtrace_image_offsets(array, image_offsets, v5);
  if (v5 < 1)
  {
    v10 = MEMORY[0x1E695E110];
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"calledFromPDFKit"];
    [v4 setObject:v10 forKeyedSubscript:@"calledFromAppKit"];
  }

  else
  {
    v6 = &image_offsets[v5];
    v7 = image_offsets;
    v8 = MEMORY[0x1E695E110];
    while (*v7->uuid != _block_invoke_pdfKit_uuid || *&v7->uuid[8] != *(&_block_invoke_pdfKit_uuid + 1))
    {
      if (++v7 >= v6)
      {
        goto LABEL_18;
      }
    }

    v8 = MEMORY[0x1E695E118];
LABEL_18:
    [v4 setObject:v8 forKeyedSubscript:@"calledFromPDFKit"];
    v11 = image_offsets;
    v12 = MEMORY[0x1E695E110];
    while (*v11->uuid != _block_invoke_appKit_uuid || *&v11->uuid[8] != *(&_block_invoke_appKit_uuid + 1))
    {
      if (++v11 >= v6)
      {
        goto LABEL_26;
      }
    }

    v12 = MEMORY[0x1E695E118];
LABEL_26:
    [v4 setObject:v12 forKeyedSubscript:@"calledFromAppKit"];
    v14 = image_offsets;
    v10 = MEMORY[0x1E695E110];
    while (*v14->uuid != _block_invoke_coreUI_uuid || *&v14->uuid[8] != *(&_block_invoke_coreUI_uuid + 1))
    {
      if (++v14 >= v6)
      {
        goto LABEL_34;
      }
    }

    v10 = MEMORY[0x1E695E118];
  }

LABEL_34:
  [v4 setObject:v10 forKeyedSubscript:@"calledFromCoreUI"];
  return v4;
}

uint64_t __CGPDFDocumentGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFDocumentGetTypeID::runtime_class);
  CGPDFDocumentGetTypeID::id = result;
  return result;
}

void CGPDFSourceSetPosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = a2;
    v10 = *(a1 + 144);
    if (v10)
    {
      if (*(a1 + 152) == 1)
      {
        free(v10);
      }

      *(a1 + 144) = 0;
    }

    *(a1 + 208) = 0;
    if (v8 < 0)
    {
      v8 = 0;
    }

    else
    {
      v11 = *(a1 + 16);
      if (v11 >= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = *(a1 + 16);
      }

      if (v11 != -1)
      {
        v8 = v12;
      }
    }

    v13 = *(a1 + 112);
    v14 = v8 - v13;
    if (v8 >= v13)
    {
      v15 = *(a1 + 104) + v13;
      v16 = v15 <= v8;
      v17 = v15 - v8;
      if (!v16)
      {
LABEL_18:
        v18 = *(a1 + 88) + v14;
LABEL_21:
        *(a1 + 120) = v17;
        *(a1 + 128) = v18;
        return;
      }

      if (!*(a1 + 40))
      {
        goto LABEL_23;
      }
    }

    else if (!*(a1 + 40))
    {
      CGPDFSourceRewind(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_23:
      while (1)
      {
        v19 = *(a1 + 112);
        v14 = v8 - v19;
        if (v8 >= v19)
        {
          v20 = *(a1 + 104) + v19;
          v16 = v20 <= v8;
          v17 = v20 - v8;
          if (!v16)
          {
            break;
          }
        }

        if ((CGPDFSourceRefill(a1, a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_18;
    }

    v17 = 0;
    *(a1 + 32) = v8;
    *(a1 + 104) = 0;
    *(a1 + 112) = v8;
    v18 = *(a1 + 88);
    goto LABEL_21;
  }
}

uint64_t read_dictionary(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  result = pdf_object_scanner_read_object(a1, v10, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    if (DWORD2(v10[0]) == 8)
    {
      if (a2)
      {
        *a2 = v11;
      }

      return 1;
    }

    else
    {
      if ((DWORD2(v10[0]) - 5) <= 4)
      {
        pdf_object_release_compound_value(v10);
      }

      return 0;
    }
  }

  return result;
}

uint64_t pdf_lexer_scan(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v171 = *MEMORY[0x1E69E9840];
  *(a2 + 8) = 1;
  if (!result)
  {
    return result;
  }

  v8 = a2;
  v9 = result;
  *(result + 24) = 0;
  *(result + 48) = a2;
  while (1)
  {
    v10 = *(v9 + 16);
    v11 = *(v10 + 120);
    if (!v11)
    {
      result = CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8);
      if (!result)
      {
        return result;
      }

      v11 = *(v10 + 120);
    }

    v12 = *(v10 + 128);
    *(v10 + 120) = v11 - 1;
    *(v10 + 128) = v12 + 1;
    v13 = *v12;
    if (v13 > 0x25)
    {
      break;
    }

    if (((1 << v13) & 0x100003601) == 0)
    {
      if (v13 != 37)
      {
        break;
      }

      skip_comment(v9, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  if (*v12 > 0x3Bu)
  {
    if (*v12 <= 0x5Cu)
    {
      if (v13 != 60)
      {
        if (v13 != 62)
        {
          if (v13 == 91)
          {
            return 11;
          }

          goto LABEL_199;
        }

        v99 = *(v9 + 24);
        v100 = *(v9 + 32);
        if (v99 >= v100)
        {
          v118 = 2 * v100 + 128;
          *(v9 + 32) = v118;
          v101 = malloc_type_realloc(*(v9 + 40), v118, 0x9E65F011uLL);
          *(v9 + 40) = v101;
          if (!v101)
          {
            goto LABEL_337;
          }

          v99 = *(v9 + 24);
        }

        else
        {
          v101 = *(v9 + 40);
        }

        *(v9 + 24) = v99 + 1;
        v101[v99] = 62;
        v119 = *(v9 + 16);
        v120 = *(v119 + 120);
        if (!v120)
        {
          if (!CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
          {
            v122 = -1;
LABEL_300:
            CGPDFSourceUngetc(*(v9 + 16), v122);
            goto LABEL_301;
          }

          v120 = *(v119 + 120);
        }

        v121 = *(v119 + 128);
        *(v119 + 120) = v120 - 1;
        *(v119 + 128) = v121 + 1;
        v122 = *v121;
        if (v122 == 62)
        {
          return 10;
        }

        goto LABEL_300;
      }

      v102 = *(v9 + 16);
      v103 = *(v102 + 120);
      if (!v103)
      {
        if (!CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
        {
          v105 = 0xFFFFFFFFLL;
LABEL_296:

          return read_hex_string(v9, v105, a3, a4, a5, a6, a7, a8);
        }

        v103 = *(v102 + 120);
      }

      v104 = *(v102 + 128);
      *(v102 + 120) = v103 - 1;
      *(v102 + 128) = v104 + 1;
      v105 = *v104;
      if (v105 == 60)
      {
        return 9;
      }

      goto LABEL_296;
    }

    if (v13 == 93)
    {
      return 12;
    }

    if (v13 == 123 || v13 == 125)
    {
      v57 = *(v9 + 24);
      v58 = *(v9 + 32);
      if (v57 >= v58)
      {
        v98 = 2 * v58 + 128;
        *(v9 + 32) = v98;
        v59 = malloc_type_realloc(*(v9 + 40), v98, 0x9E65F011uLL);
        *(v9 + 40) = v59;
        if (!v59)
        {
          goto LABEL_337;
        }

        v57 = *(v9 + 24);
      }

      else
      {
        v59 = *(v9 + 40);
      }

      *(v9 + 24) = v57 + 1;
      v59[v57] = v13;
      goto LABEL_301;
    }

    while (1)
    {
      while (1)
      {
LABEL_199:
        if ((v13 + 1) <= 0x3F && ((1 << (v13 + 1)) & 0xA001064200006C03) != 0 || (v13 - 91) <= 0x22 && ((1 << (v13 - 91)) & 0x500000005) != 0)
        {
          CGPDFSourceUngetc(*(v9 + 16), v13);
          v113 = *(v9 + 24);
          if (v113 > 4)
          {
            if (v113 != 5)
            {
              if (v113 == 6)
              {
                v157 = *(v9 + 40);
                if (*v157 == 1868852837 && *(v157 + 2) == 27234)
                {
                  return 17;
                }

                v159 = *v157;
                v160 = *(v157 + 2);
                if (v159 == 1701999731 && v160 == 28001)
                {
                  return 14;
                }
              }

              else if (v113 == 9)
              {
                v123 = *(v9 + 40);
                v124 = *v123;
                v125 = *(v123 + 8);
                if (v124 == 0x6165727473646E65 && v125 == 109)
                {
                  return 15;
                }
              }

              goto LABEL_326;
            }

            v148 = *(v9 + 40);
            v149 = *v148;
            v150 = *(v148 + 4);
            if (v149 == 1936482662 && v150 == 101)
            {
              v152 = *(v9 + 48);
              *(v152 + 8) = 2;
              *(v152 + 32) = 0;
              return 3;
            }
          }

          else
          {
            switch(v113)
            {
              case 1:
                if (**(v9 + 40) == 82)
                {
                  return 18;
                }

                break;
              case 3:
                v153 = *(v9 + 40);
                v154 = *v153;
                v155 = *(v153 + 2);
                if (v154 == 25199 && v155 == 106)
                {
                  return 16;
                }

                break;
              case 4:
                v114 = *(v9 + 40);
                if (*v114 != 1702195828)
                {
                  if (*v114 == 1819047278)
                  {
                    *(*(v9 + 48) + 8) = 1;
                    return 2;
                  }

                  break;
                }

                v167 = *(v9 + 48);
                *(v167 + 8) = 2;
                *(v167 + 32) = 1;
                return 3;
            }
          }

LABEL_326:
          v162 = *(v9 + 56);
          if (v162 == 1)
          {
            v165 = *(v9 + 40);
            *(*(v9 + 48) + 8) = 1;
            *(v9 + 64) = v165;
            *(v9 + 72) = v113;
          }

          else if (!v162)
          {
            v163 = *(v9 + 48);
            *(v163 + 8) = 5;
            *(v163 + 12) |= 1u;
            v164 = *(v9 + 48);
            *(v164 + 16) = 0;
            *(v164 + 24) = 0;
            *(v8 + 32) = strndup(*(v9 + 40), *(v9 + 24));
          }

          return 7;
        }

        v106 = *(v9 + 24);
        v107 = *(v9 + 32);
        v108 = *(v9 + 40);
        if (v106 >= v107)
        {
          v109 = 2 * v107 + 128;
          *(v9 + 32) = v109;
          v108 = malloc_type_realloc(v108, v109, 0x9E65F011uLL);
          *(v9 + 40) = v108;
          if (!v108)
          {
            goto LABEL_337;
          }

          v106 = *(v9 + 24);
        }

        *(v9 + 24) = v106 + 1;
        *(v108 + v106) = v13;
        v110 = *(v9 + 16);
        v111 = *(v110 + 120);
        if (!v111)
        {
          break;
        }

LABEL_209:
        v112 = *(v110 + 128);
        *(v110 + 120) = v111 - 1;
        *(v110 + 128) = v112 + 1;
        LODWORD(v13) = *v112;
      }

      LODWORD(v13) = -1;
      if (CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
      {
        v111 = *(v110 + 120);
        goto LABEL_209;
      }
    }
  }

  if (*v12 <= 0x2Eu)
  {
    if (*v12 > 0x2Cu)
    {
      goto LABEL_56;
    }

    if (v13 != 40)
    {
      if (v13 == 41)
      {
        v61 = *(v9 + 24);
        v62 = *(v9 + 32);
        if (v61 >= v62)
        {
          v115 = 2 * v62 + 128;
          *(v9 + 32) = v115;
          v63 = *(v9 + 40);
          goto LABEL_218;
        }

        v63 = *(v9 + 40);
        goto LABEL_220;
      }

      if (v13 != 43)
      {
        goto LABEL_199;
      }

LABEL_56:
      endptr = 0;
      if (v13 == 45 || v13 == 43)
      {
        v33 = *(v9 + 16);
        v34 = *(v33 + 120);
        if (!v34)
        {
          if (!CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
          {
            v42 = 0;
            goto LABEL_176;
          }

          v34 = *(v33 + 120);
        }

        v36 = *(v33 + 128);
        *(v33 + 120) = v34 - 1;
        *(v33 + 128) = v36 + 1;
        v37 = *v36;
      }

      else
      {
        v37 = v13;
        LODWORD(v13) = 0;
      }

      for (i = v37 == 48; v37 == 48; v37 = *v41)
      {
        v39 = *(v9 + 16);
        v40 = *(v39 + 120);
        if (!v40)
        {
          if (!CGPDFSourceRefill(*(v9 + 16), v37, a3, a4, a5, a6, a7, a8))
          {
            v43 = 0;
            LODWORD(v37) = -1;
            v60 = -1;
            goto LABEL_108;
          }

          v40 = *(v39 + 120);
        }

        v41 = *(v39 + 128);
        *(v39 + 120) = v40 - 1;
        *(v39 + 128) = v41 + 1;
      }

      if ((v37 - 48) > 9)
      {
        v42 = 0;
        if (v37 != 46)
        {
          v60 = -1;
          v43 = 0;
          goto LABEL_174;
        }

        v43 = 0;
      }

      else
      {
        v42 = 0;
        v43 = 0;
        do
        {
          if (v42 <= 0x4B)
          {
            nptr[v42++] = v37;
          }

          v43 = 10 * v43 + v37 - 48;
          v44 = *(v9 + 16);
          v45 = *(v44 + 120);
          if (!v45)
          {
            if (!CGPDFSourceRefill(*(v9 + 16), v37, a3, a4, a5, a6, a7, a8))
            {
              v60 = -1;
              LODWORD(v37) = -1;
              goto LABEL_241;
            }

            v45 = *(v44 + 120);
          }

          v46 = *(v44 + 128);
          *(v44 + 120) = v45 - 1;
          *(v44 + 128) = v46 + 1;
          v37 = *v46;
        }

        while ((v37 - 48) < 0xA);
        if (v37 != 46)
        {
          v60 = -1;
          goto LABEL_241;
        }

        i = 1;
        if (v42 > 0x4B)
        {
LABEL_82:
          v47 = *(v9 + 16);
          v48 = *(v47 + 120);
          if (!v48)
          {
            if (!CGPDFSourceRefill(*(v9 + 16), v37, a3, a4, a5, a6, a7, a8))
            {
              goto LABEL_172;
            }

            v48 = *(v47 + 120);
          }

          v49 = *(v47 + 128);
          *(v47 + 120) = v48 - 1;
          *(v47 + 128) = v49 + 1;
          v37 = *v49;
          if (v37 != 45)
          {
            goto LABEL_90;
          }

          v50 = *(v9 + 16);
          v51 = *(v50 + 120);
          if (v51)
          {
LABEL_89:
            v52 = *(v50 + 128);
            *(v50 + 120) = v51 - 1;
            *(v50 + 128) = v52 + 1;
            v37 = *v52;
LABEL_90:
            if ((v37 - 48) <= 9)
            {
              v53 = v42;
              while (1)
              {
                if (v53 <= 0x4B)
                {
                  nptr[v53++] = v37;
                }

                v43 = 10 * v43 + v37 - 48;
                v54 = *(v9 + 16);
                v55 = *(v54 + 120);
                if (!v55)
                {
                  if (!CGPDFSourceRefill(*(v9 + 16), v37, a3, a4, a5, a6, a7, a8))
                  {
                    LODWORD(v37) = -1;
LABEL_240:
                    v60 = v42;
                    v42 = v53;
LABEL_241:
                    if (v42 > 9)
                    {
                      goto LABEL_253;
                    }

                    if (v37 <= 0x20 && ((1 << v37) & 0x100002400) != 0)
                    {
                      if ((v60 & 0x80000000) == 0)
                      {
                        v127 = read_number_powers_of_10[v42 - v60] * v43;
                        v128 = *(v9 + 48);
                        *(v128 + 8) = 4;
                        v129 = -v127;
                        if (v13 != 45)
                        {
                          v129 = v127;
                        }

LABEL_277:
                        *(v128 + 32) = v129;
                        return 5;
                      }

                      if (v13 == 45)
                      {
                        v130 = -v43;
                      }

                      else
                      {
                        v130 = v43;
                      }

                      v131 = *(v9 + 48);
                      *(v131 + 8) = 3;
                      *(v131 + 32) = v130;
                      return 4;
                    }

                    if (v42)
                    {
LABEL_253:
                      v132 = (v37 + 1);
                      if (v132 > 0x3F)
                      {
                        goto LABEL_259;
                      }

                      if (((1 << (v37 + 1)) & 0x200006C03) == 0)
                      {
                        if (((1 << (v37 + 1)) & 0xA001064000000000) == 0)
                        {
                          if (v132 == 47)
                          {
                            if ((v60 & 0x80000000) != 0)
                            {
                              _CGHandleAssert("read_number", 823, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFLexer.c", "fraction_start >= 0", "unexpected program flow. fraction start = %d", a6, a7, a8, v60);
                            }

LABEL_278:
                            CGPDFSourceUngetc(*(v9 + 16), v37);
                            if (!v13)
                            {
                              goto LABEL_289;
                            }

                            v137 = *(v9 + 24);
                            v138 = *(v9 + 32);
                            if (v137 < v138)
                            {
                              v139 = *(v9 + 40);
                              goto LABEL_288;
                            }

                            v140 = 2 * v138 + 128;
                            *(v9 + 32) = v140;
                            v139 = malloc_type_realloc(*(v9 + 40), v140, 0x9E65F011uLL);
                            *(v9 + 40) = v139;
                            if (v139)
                            {
                              v137 = *(v9 + 24);
LABEL_288:
                              *(v9 + 24) = v137 + 1;
                              v139[v137] = v13;
LABEL_289:
                              v141 = nptr;
                              do
                              {
                                v143 = *v141++;
                                v142 = v143;
                                v144 = *(v9 + 24);
                                v145 = *(v9 + 32);
                                v146 = *(v9 + 40);
                                if (v144 >= v145)
                                {
                                  v147 = 2 * v145 + 128;
                                  *(v9 + 32) = v147;
                                  v146 = malloc_type_realloc(v146, v147, 0x9E65F011uLL);
                                  *(v9 + 40) = v146;
                                  if (!v146)
                                  {
                                    goto LABEL_337;
                                  }

                                  v144 = *(v9 + 24);
                                }

                                *(v9 + 24) = v144 + 1;
                                *(v146 + v144) = v142;
                                --v42;
                              }

                              while (v42);
LABEL_187:
                              skip_to_delimiter(v9, v35, a3, a4, a5, a6, a7, a8);
LABEL_301:
                              create_string_object(v9, 0);
                              return 1;
                            }

LABEL_337:
                            _CGHandleAssert("lex_grow_buffer", 55, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFLexer.c", "lexer->buffer != NULL", "lexer buffer missing", a6, a7, a8, v168);
                          }

LABEL_259:
                          if ((v37 - 91) > 0x22 || ((1 << (v37 - 91)) & 0x500000005) == 0)
                          {
                            goto LABEL_278;
                          }
                        }

                        CGPDFSourceUngetc(*(v9 + 16), v37);
                      }

                      nptr[v42] = 0;
                      if (v60 != -1)
                      {
                        if (v42 == 1)
                        {
                          v129 = 0.0;
                          if (nptr[0] == 46)
                          {
LABEL_275:
                            v128 = *(v9 + 48);
                            *(v128 + 8) = 4;
                            if (v13 == 45)
                            {
                              v129 = -v129;
                            }

                            goto LABEL_277;
                          }
                        }

LABEL_273:
                        v129 = strtod_l(nptr, &endptr, 0);
                        if (endptr != nptr && !*endptr)
                        {
                          goto LABEL_275;
                        }

LABEL_339:
                        abort();
                      }

                      if (v42 > 9)
                      {
                        *__error() = 0;
                        v135 = strtoimax_l(nptr, &endptr, 10, 0);
                        if (endptr == nptr || *endptr)
                        {
                          goto LABEL_339;
                        }

                        v136 = v135;
                        if (*__error() == 34)
                        {
                          goto LABEL_273;
                        }

                        v133 = *(v9 + 48);
                        *(v133 + 8) = 3;
                        if (v13 == 45)
                        {
                          v134 = -v136;
                        }

                        else
                        {
                          v134 = v136;
                        }
                      }

                      else
                      {
                        v133 = *(v9 + 48);
                        *(v133 + 8) = 3;
                        if (v13 == 45)
                        {
                          v134 = -v43;
                        }

                        else
                        {
                          v134 = v43;
                        }
                      }

                      *(v133 + 32) = v134;
                      return 4;
                    }

LABEL_108:
                    nptr[0] = 48;
                    v42 = 1;
                    goto LABEL_253;
                  }

                  v55 = *(v54 + 120);
                }

                v56 = *(v54 + 128);
                *(v54 + 120) = v55 - 1;
                *(v54 + 128) = v56 + 1;
                v37 = *v56;
                if ((v37 - 48) >= 0xA)
                {
                  goto LABEL_240;
                }
              }
            }

            goto LABEL_173;
          }

          if (CGPDFSourceRefill(*(v9 + 16), v37, a3, a4, a5, a6, a7, a8))
          {
            v51 = *(v50 + 120);
            goto LABEL_89;
          }

LABEL_172:
          LODWORD(v37) = -1;
LABEL_173:
          v60 = v42;
LABEL_174:
          if (i)
          {
            goto LABEL_241;
          }

          CGPDFSourceUngetc(*(v9 + 16), v37);
          if (!v13)
          {
LABEL_181:
            if (!v42)
            {
              goto LABEL_187;
            }

            v91 = nptr;
            while (1)
            {
              v93 = *v91++;
              v92 = v93;
              v94 = *(v9 + 24);
              v95 = *(v9 + 32);
              v96 = *(v9 + 40);
              if (v94 >= v95)
              {
                v97 = 2 * v95 + 128;
                *(v9 + 32) = v97;
                v96 = malloc_type_realloc(v96, v97, 0x9E65F011uLL);
                *(v9 + 40) = v96;
                if (!v96)
                {
                  goto LABEL_337;
                }

                v94 = *(v9 + 24);
              }

              *(v9 + 24) = v94 + 1;
              *(v96 + v94) = v92;
              if (!--v42)
              {
                goto LABEL_187;
              }
            }
          }

LABEL_176:
          v87 = *(v9 + 24);
          v88 = *(v9 + 32);
          if (v87 >= v88)
          {
            v90 = 2 * v88 + 128;
            *(v9 + 32) = v90;
            v89 = malloc_type_realloc(*(v9 + 40), v90, 0x9E65F011uLL);
            *(v9 + 40) = v89;
            if (!v89)
            {
              goto LABEL_337;
            }

            v87 = *(v9 + 24);
          }

          else
          {
            v89 = *(v9 + 40);
          }

          *(v9 + 24) = v87 + 1;
          v89[v87] = v13;
          goto LABEL_181;
        }
      }

      nptr[v42++] = 46;
      goto LABEL_82;
    }

    v64 = 1;
    while (1)
    {
LABEL_113:
      v65 = *(v9 + 16);
      v66 = *(v65 + 120);
      if (!v66)
      {
        if (!CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
        {
          goto LABEL_301;
        }

        v66 = *(v65 + 120);
      }

      v67 = *(v65 + 128);
      *(v65 + 120) = v66 - 1;
      *(v65 + 128) = v67 + 1;
      v68 = *v67;
      if (v68 != 92)
      {
        if (v68 != 13)
        {
          if (v68 == 40)
          {
            ++v64;
            goto LABEL_168;
          }

          if (v68 != 41)
          {
            goto LABEL_168;
          }

          if (v64)
          {
            if (!--v64)
            {
              create_string_object(v9, 0);
              return 8;
            }

            LOBYTE(v68) = 41;
            goto LABEL_168;
          }

          v61 = *(v9 + 24);
          v166 = *(v9 + 32);
          v63 = *(v9 + 40);
          if (v61 >= v166)
          {
            v115 = 2 * v166 + 128;
            *(v9 + 32) = v115;
LABEL_218:
            v63 = malloc_type_realloc(v63, v115, 0x9E65F011uLL);
            *(v9 + 40) = v63;
            if (!v63)
            {
              goto LABEL_337;
            }

            v61 = *(v9 + 24);
          }

LABEL_220:
          *(v9 + 24) = v61 + 1;
          *(v63 + v61) = 41;
          goto LABEL_301;
        }

        v80 = *(v9 + 16);
        v81 = *(v80 + 120);
        if (v81)
        {
LABEL_155:
          v82 = *(v80 + 128);
          *(v80 + 120) = v81 - 1;
          *(v80 + 128) = v82 + 1;
          a2 = *v82;
          if (a2 == 10)
          {
            goto LABEL_167;
          }
        }

        else
        {
          if (CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
          {
            v81 = *(v80 + 120);
            goto LABEL_155;
          }

          LODWORD(a2) = -1;
        }

        CGPDFSourceUngetc(*(v9 + 16), a2);
        goto LABEL_167;
      }

      v69 = *(v9 + 16);
      v70 = *(v69 + 120);
      if (!v70)
      {
        if (!CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
        {
          continue;
        }

        v70 = *(v69 + 120);
      }

      v71 = *(v69 + 128);
      *(v69 + 120) = v70 - 1;
      *(v69 + 128) = v71 + 1;
      v68 = *v71;
      if (v68 > 0xC)
      {
        break;
      }

      if (v68 != 10)
      {
        goto LABEL_168;
      }
    }

    if (*v71 > 0x2Fu)
    {
      if (*v71 > 0x61u)
      {
        if (*v71 <= 0x6Du)
        {
          if (v68 == 98)
          {
            LOBYTE(v68) = 8;
          }

          else if (v68 == 102)
          {
            LOBYTE(v68) = 12;
          }

          goto LABEL_168;
        }

        if (v68 != 110)
        {
          if (v68 == 114)
          {
            LOBYTE(v68) = 13;
          }

          else if (v68 == 116)
          {
            LOBYTE(v68) = 9;
          }

          goto LABEL_168;
        }

LABEL_167:
        LOBYTE(v68) = 10;
        goto LABEL_168;
      }

      if (v68 - 48 >= 8)
      {
        goto LABEL_168;
      }

      v75 = 0;
      LOBYTE(v68) = v68 - 48;
      while (1)
      {
        v76 = v75;
        v77 = *(v9 + 16);
        v78 = *(v77 + 120);
        if (!v78)
        {
          if (!CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
          {
            LODWORD(a2) = -1;
LABEL_162:
            CGPDFSourceUngetc(*(v9 + 16), a2);
LABEL_168:
            v83 = *(v9 + 24);
            v84 = *(v9 + 32);
            v85 = *(v9 + 40);
            if (v83 >= v84)
            {
              v86 = 2 * v84 + 128;
              *(v9 + 32) = v86;
              v85 = malloc_type_realloc(v85, v86, 0x9E65F011uLL);
              *(v9 + 40) = v85;
              if (!v85)
              {
                goto LABEL_337;
              }

              v83 = *(v9 + 24);
            }

            *(v9 + 24) = v83 + 1;
            *(v85 + v83) = v68;
            goto LABEL_113;
          }

          v78 = *(v77 + 120);
        }

        v79 = *(v77 + 128);
        *(v77 + 120) = v78 - 1;
        *(v77 + 128) = v79 + 1;
        a2 = *v79;
        if ((a2 - 56) <= 0xFFFFFFF7)
        {
          goto LABEL_162;
        }

        LOBYTE(v68) = a2 + 8 * v68 - 48;
        v75 = 1;
        if (v76)
        {
          goto LABEL_168;
        }
      }
    }

    if (v68 != 13)
    {
      goto LABEL_168;
    }

    v72 = *(v9 + 16);
    v73 = *(v72 + 120);
    if (!v73)
    {
      if (!CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
      {
        LODWORD(a2) = -1;
LABEL_146:
        CGPDFSourceUngetc(*(v9 + 16), a2);
        goto LABEL_113;
      }

      v73 = *(v72 + 120);
    }

    v74 = *(v72 + 128);
    *(v72 + 120) = v73 - 1;
    *(v72 + 128) = v74 + 1;
    a2 = *v74;
    if (a2 == 10)
    {
      goto LABEL_113;
    }

    goto LABEL_146;
  }

  if ((v13 - 48) < 0xA)
  {
    goto LABEL_56;
  }

  if (v13 != 47)
  {
    goto LABEL_199;
  }

  v14 = *(v9 + 16);
  v15 = *(v14 + 120);
  if (v15)
  {
LABEL_17:
    v16 = *(v14 + 128);
    *(v14 + 120) = v15 - 1;
    *(v14 + 128) = v16 + 1;
    v17 = *v16;
    goto LABEL_18;
  }

  if (CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
  {
    v15 = *(v14 + 120);
    goto LABEL_17;
  }

  v17 = -1;
  while (1)
  {
LABEL_18:
    v18 = (v17 + 1);
    if (v18 > 0x3F)
    {
      goto LABEL_35;
    }

    if (v18 != 36)
    {
      break;
    }

    v17 = 0;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = *(v9 + 16);
      v22 = *(v21 + 120);
      if (!v22)
      {
        if (!CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
        {
          v24 = -1;
LABEL_39:
          pdf_error("invalid #-escape sequence.");
          CGPDFSourceUngetc(*(v9 + 16), v24);
          LOBYTE(v17) = 35;
          goto LABEL_40;
        }

        v22 = *(v21 + 120);
      }

      v23 = *(v21 + 128);
      *(v21 + 120) = v22 - 1;
      *(v21 + 128) = v23 + 1;
      v24 = *v23;
      if ((v24 - 48) >= 0xA)
      {
        if ((v24 - 65) >= 6)
        {
          if ((v24 - 97) >= 6)
          {
            goto LABEL_39;
          }

          v25 = -87;
        }

        else
        {
          v25 = -55;
        }
      }

      else
      {
        v25 = -48;
      }

      v19 = 0;
      v17 = v24 + 16 * v17 + v25;
    }

    while ((v20 & 1) != 0);
    if ((v17 - 256) < 0xFFFFFF01)
    {
      create_string_object(v9, 0);
      goto LABEL_301;
    }

LABEL_40:
    v26 = *(v9 + 24);
    v27 = *(v9 + 32);
    v28 = *(v9 + 40);
    if (v26 >= v27)
    {
      v29 = 2 * v27 + 128;
      *(v9 + 32) = v29;
      v28 = malloc_type_realloc(v28, v29, 0x9E65F011uLL);
      *(v9 + 40) = v28;
      if (!v28)
      {
        goto LABEL_337;
      }

      v26 = *(v9 + 24);
    }

    *(v9 + 24) = v26 + 1;
    *(v28 + v26) = v17;
    v30 = *(v9 + 16);
    v31 = *(v30 + 120);
    if (v31)
    {
LABEL_46:
      v32 = *(v30 + 128);
      *(v30 + 120) = v31 - 1;
      *(v30 + 128) = v32 + 1;
      v17 = *v32;
    }

    else
    {
      v17 = -1;
      if (CGPDFSourceRefill(*(v9 + 16), a2, a3, a4, a5, a6, a7, a8))
      {
        v31 = *(v30 + 120);
        goto LABEL_46;
      }
    }
  }

  if (((1 << (v17 + 1)) & 0x200006C03) != 0)
  {
    goto LABEL_222;
  }

  if (((1 << (v17 + 1)) & 0xA001064000000000) == 0)
  {
LABEL_35:
    if ((v17 - 91) <= 0x22 && ((1 << (v17 - 91)) & 0x500000005) != 0)
    {
      goto LABEL_221;
    }

    goto LABEL_40;
  }

LABEL_221:
  CGPDFSourceUngetc(*(v9 + 16), v17);
LABEL_222:
  v116 = *(v9 + 48);
  *(v116 + 8) = 5;
  *(v116 + 12) |= 1u;
  v117 = *(v9 + 48);
  *(v117 + 16) = 0;
  *(v117 + 24) = 0;
  *(v8 + 32) = strndup(*(v9 + 40), *(v9 + 24));
  return 6;
}

CGPDFDictionary *pdf_reader_get_number_of_pages(uint64_t *a1)
{
  value = 0;
  if (CGPDFDictionaryGetInteger(*(*a1 + 24), "N", &value))
  {
    return (value & ~(value >> 63));
  }

  result = get_pages_dictionary(*a1);
  if (result)
  {
    if (CGPDFDictionaryGetInteger(result, "Count", &value))
    {
      result = (value & ~(value >> 63));
      if (*a1)
      {
        if (result >= *(*a1 + 160))
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pdf_object_scanner_read_indirect_object(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = 0;
  v57 = 0;
  memset(v55, 0, sizeof(v55));
  if (pdf_object_scanner_read_integer(a1[2], &v57, a3, a4, a5, a6, a7, a8))
  {
    v16 = v57;
    if (pdf_object_scanner_read_integer(a1[2], &v57, v10, v11, v12, v13, v14, v15))
    {
      v23 = v57;
      if (pdf_lexer_scan(a1[2], v55, v17, v18, v19, v20, v21, v22) == 16)
      {
        result = pdf_object_scanner_read_object(a1, a2, v24, v25, v26, v27, v28, v29);
        if (!result)
        {
          return result;
        }

        v44 = pdf_lexer_scan(a1[2], v55, v31, v32, v33, v34, v35, v36);
        if ((DWORD2(v55[0]) - 5) <= 4)
        {
          pdf_object_release_compound_value(v55);
        }

        if (v44 != 14)
        {
          goto LABEL_36;
        }

        if (a2 && *(a2 + 8) == 8)
        {
          v45 = *(a2 + 32);
          while (1)
          {
            v46 = CGPDFSourceGetc(a1[1], v37, v38, v39, v40, v41, v42, v43);
            if (v46 == -1 || v46 == 10)
            {
              break;
            }

            if (v46 == 13)
            {
              v48 = CGPDFSourceGetc(a1[1], v37, v38, v39, v40, v41, v42, v43);
              if (v48 != 10)
              {
                CGPDFSourceUngetc(a1[1], v48);
              }

              break;
            }
          }

          v49 = a1[1];
          if (v49)
          {
            v50 = v49[11];
            if (v49[18])
            {
              v51 = v49[24];
              v50 += v49[15];
            }

            else
            {
              v51 = v49[16];
            }

            v53 = v51 - v50 + v49[14];
          }

          else
          {
            v53 = -1;
          }

          v54 = CGPDFStreamCreate(*a1, v45, v49, v53);
          if (v54)
          {
            *(a2 + 8) = 9;
            *(a2 + 32) = v54;
LABEL_36:
            CGPDFObjectSetObjectReference(a2, v16, v23);
            return 1;
          }
        }

        else
        {
          pdf_error("missing or invalid stream dictionary for object.");
        }

        if ((*(a2 + 8) - 5) <= 4)
        {
          v52 = a2;
          goto LABEL_27;
        }
      }

      else
      {
        pdf_error("obj not found while reading object (%lu, %hu).", v16, v23);
        if ((DWORD2(v55[0]) - 5) <= 4)
        {
          v52 = v55;
LABEL_27:
          pdf_object_release_compound_value(v52);
        }
      }
    }

    else
    {
      pdf_error("missing or invalid generation number.");
    }
  }

  else
  {
    pdf_error("missing or invalid object number.");
  }

  return 0;
}

void *CGPDFObjectSetObjectReference(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result[2] = a2;
    result[3] = a3;
    v5 = *(result + 2);
    if (v5 > 7)
    {
      if (v5 == 9)
      {
        v9 = result[4];
        if (v9)
        {
          v9[3] = a2;
          v9[4] = a3;
          v10 = v9[6];
          if (v10)
          {
            for (i = *(v10 + 64); i; i = *i)
            {
              result = CGPDFObjectSetOwningReference(i[3], a2, a3);
            }
          }
        }
      }

      else if (v5 == 8)
      {
        v7 = result[4];

        return CGPDFDictionarySetObjectReference(v7, a2, a3);
      }
    }

    else if (v5 == 6)
    {
      v8 = result[4];
      if (v8)
      {
        *(v8 + 32) = a2;
        *(v8 + 40) = a3;
      }
    }

    else if (v5 == 7)
    {
      v6 = result[4];

      return CGPDFArraySetObjectReference(v6, a2, a3);
    }
  }

  return result;
}

void *CGPDFDictionarySetObjectReference(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result[3] = a2;
    result[4] = a3;
    for (i = result[8]; i; i = *i)
    {
      result = CGPDFObjectSetOwningReference(i[3], a2, a3);
    }
  }

  return result;
}

uint64_t ensure_page_array_exists(uint64_t result)
{
  if (!*(result + 24))
  {
    v2 = result;
    pthread_mutex_lock((result + 56));
    if (!*(v2 + 24))
    {
      number_of_pages = pdf_reader_get_number_of_pages(*(*(v2 + 16) + 16));
      *(v2 + 32) = number_of_pages;
      v4 = malloc_type_calloc(number_of_pages, 8uLL, 0x2004093837F09uLL);
      __CFSetLastAllocationEventName();
      *(v2 + 24) = v4;
    }

    return pthread_mutex_unlock((v2 + 56));
  }

  return result;
}

uint64_t CGPDFPageCreate2(CFTypeRef *a1, unint64_t a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (CGPDFPageGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFPageGetTypeID_onceToken, &__block_literal_global_157);
  }

  cftype = pdf_create_cftype();
  if (cftype)
  {
    if (a1)
    {
      v7 = a1[2];
      if (v7)
      {
        CFRetain(a1[2]);
      }
    }

    else
    {
      v7 = 0;
    }

    *(cftype + 32) = v7;
    v8 = malloc_type_calloc(1uLL, 0x70uLL, 0x1020040A00ECCB8uLL);
    __CFSetLastAllocationEventName();
    *(v8 + 22) = 0;
    *v8 = v7;
    *(v8 + 1) = a2;
    v9 = *(v7 + 2);
    v10 = a2 != 1 || *(*v9 + 24) == 0;
    v11 = v10;
    if (v10)
    {
      pdf_document_get_page_dictionary(v9, a2);
    }

    else
    {
      linearized_page_dict = pdf_reader_get_linearized_page_dict(v9, 1uLL);
    }

    *(v8 + 2) = linearized_page_dict;
    if (!linearized_page_dict || (v13 = CGPDFResourcesCreateWithPage(v8, v11), (*(v8 + 3) = v13) == 0))
    {
      pdf_page_release(v8);
      *(cftype + 40) = 0;
      CFRelease(cftype);
      return 0;
    }

    *(v8 + 8) = 0;
    v8[48] = v11;
    v20 = 0;
    __s1.__sig = 0;
    value = 0;
    *v18 = 0;
    if (!CGPDFDictionaryGetDictionary(*(v8 + 2), "Group", &value))
    {
      goto LABEL_25;
    }

    if (!CGPDFDictionaryGetName(value, "S", &__s1))
    {
      goto LABEL_25;
    }

    if (strcmp(__s1.__sig, "Transparency"))
    {
      goto LABEL_25;
    }

    v8[50] = 0;
    if (CGPDFDictionaryGetBoolean(value, "I", &v18[1]))
    {
      v8[50] = v18[1] != 0;
    }

    v8[49] = 0;
    if (CGPDFDictionaryGetBoolean(value, "K", v18))
    {
      v8[49] = v18[0] != 0;
    }

    *(v8 + 7) = 0;
    if (!CGPDFDictionaryGetObject(value, "CS", &v20))
    {
      goto LABEL_25;
    }

    v16 = CGPDFCreateColorSpace(v20);
    Type = CGColorSpaceGetType(v16);
    if ((Type - 7) < 3)
    {
      goto LABEL_40;
    }

    if (Type == 6)
    {
      if (CGColorSpaceGetModel(v16) > kCGColorSpaceModelCMYK)
      {
        goto LABEL_40;
      }
    }

    else if (Type == 5)
    {
LABEL_40:
      pdf_error("invalid group attributes color space.");
      CGColorSpaceRelease(v16);
      goto LABEL_25;
    }

    *(v8 + 7) = v16;
LABEL_25:
    *(v8 + 100) = 0;
    *(v8 + 92) = 0;
    *(v8 + 27) = 0;
    *(cftype + 40) = v8;
    if (a1 && a3)
    {
      CFRetain(a1);
      v8 = *(cftype + 40);
    }

    *(cftype + 16) = a1;
    *(cftype + 24) = a3;
    *(cftype + 48) = pdf_page_get_rotation_angle(v8);
    for (i = 56; i != 216; i += 32)
    {
      *(cftype + i) = CGRectNull;
    }

    __s1.__sig = 0;
    *__s1.__opaque = 0;
    pthread_mutexattr_init(&__s1);
    pthread_mutexattr_settype(&__s1, 2);
    pthread_mutex_init((cftype + 216), &__s1);
    pthread_mutexattr_destroy(&__s1);
    *(cftype + 280) = 0;
    *(cftype + 284) = 0;
    *(cftype + 296) = 0;
    *(cftype + 304) = 0;
    *(cftype + 312) = 0;
    *(cftype + 320) = 0;
    *(cftype + 328) = 0;
    *(cftype + 336) = 0;
    *(cftype + 352) = 0;
    *(cftype + 360) = 0;
    *(cftype + 344) = 0;
  }

  return cftype;
}

void pdf_document_get_page_dictionary(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 48);
  std::__shared_mutex_base::lock_shared((a1 + 48));
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  std::__shared_mutex_base::unlock_shared(v4);
  if (v5 == v6)
  {
    *&v30[0] = v4;
    BYTE8(v30[0]) = 1;
    std::__shared_mutex_base::lock(v4);
    if (*(a1 + 24) == *(a1 + 32))
    {
      number_of_pages = pdf_reader_get_number_of_pages(a1);
      v9 = *(a1 + 24);
      v8 = *(a1 + 32);
      v10 = (v8 - v9) >> 3;
      if (number_of_pages > v10)
      {
        v11 = number_of_pages - v10;
        v12 = *(a1 + 40);
        if (v11 > (v12 - v8) >> 3)
        {
          if (!(number_of_pages >> 61))
          {
            v13 = v12 - v9;
            v14 = (v12 - v9) >> 2;
            if (v14 <= number_of_pages)
            {
              v14 = number_of_pages;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            if (!(v15 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fe200100]();
          }

          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v17 = 0;
        v18 = (v11 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v19 = vdupq_n_s64(v18);
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v17), xmmword_18439C670)));
          if (v20.i8[0])
          {
            *(v8 + 8 * v17) = 0;
          }

          if (v20.i8[4])
          {
            *(v8 + 8 * v17 + 8) = 0;
          }

          v17 += 2;
        }

        while (v18 - ((v11 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v17);
        v16 = v8 + 8 * v11;
        goto LABEL_22;
      }

      if (number_of_pages < v10)
      {
        v16 = v9 + 8 * number_of_pages;
LABEL_22:
        *(a1 + 32) = v16;
      }
    }

    std::__shared_mutex_base::unlock(v4);
  }

  if (a2 && a2 <= (*(a1 + 32) - *(a1 + 24)) >> 3)
  {
    std::__shared_mutex_base::lock_shared(v4);
    v21 = a2 - 1;
    v22 = *(a1 + 24);
    if (a2 - 1 >= (*(a1 + 32) - v22) >> 3)
    {
      goto LABEL_46;
    }

    v23 = *(v22 + 8 * v21);
    std::__shared_mutex_base::unlock_shared(v4);
    if (v23)
    {
      return;
    }

    v32[1] = v4;
    v33 = 1;
    std::__shared_mutex_base::lock(v4);
    v24 = *(a1 + 24);
    if (v21 >= (*(a1 + 32) - v24) >> 3)
    {
      goto LABEL_46;
    }

    if (*(v24 + 8 * v21))
    {
LABEL_42:
      std::__shared_mutex_base::unlock(v4);
      return;
    }

    if (*(*a1 + 24))
    {
      linearized_page_dict = pdf_reader_get_linearized_page_dict(a1, a2);
      if (linearized_page_dict)
      {
        v26 = *(a1 + 24);
        if (v21 < (*(a1 + 32) - v26) >> 3)
        {
          *(v26 + 8 * v21) = linearized_page_dict;
          goto LABEL_42;
        }

LABEL_46:
        __break(1u);
        return;
      }

      pdf_error("Failed to get linearized page dict for page: %zu\n", a2);
    }

    pages_dictionary = *(a1 + 16);
    if (!pages_dictionary)
    {
      pages_dictionary = get_pages_dictionary(*a1);
      *(a1 + 16) = pages_dictionary;
    }

    v32[0] = a2 - 1;
    memset(v30, 0, sizeof(v30));
    v31 = 1065353216;
    page_in_subtree = find_page_in_subtree(pages_dictionary, v32, v30);
    if (page_in_subtree)
    {
      v29 = *(a1 + 24);
      if (v21 >= (*(a1 + 32) - v29) >> 3)
      {
        goto LABEL_46;
      }

      *(v29 + 8 * v21) = page_in_subtree;
    }

    std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v30);
    goto LABEL_42;
  }
}

void sub_183F41F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(va);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:fe200100](va1);
  _Unwind_Resume(a1);
}

BOOL CGPDFArrayGetDictionary(CGPDFArrayRef array, size_t index, CGPDFDictionaryRef *value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea && *(valuea + 2) == 8)
    {
      if (value)
      {
        *value = *(valuea + 4);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

double sub_183F42024(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903A8();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_183F3FEF4();
    sub_1843901D8();
    v2 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_1843901D8();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

double sub_183F42154(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903A8();
  if (!v1)
  {
    type metadata accessor for CGPoint(0);
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_183F3FF48(&qword_1EA853F30, type metadata accessor for CGPoint);
    sub_1843901D8();
    v2 = v5;
    type metadata accessor for CGSize(0);
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_183F3FF48(&qword_1EA853F38, type metadata accessor for CGSize);
    sub_1843901D8();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

BOOL conversion_formats_are_equal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  memcpy(__dst, (a1 + 40), sizeof(__dst));
  memcpy(v6, (a2 + 40), sizeof(v6));
  return CGBitmapPixelInfoIsEqualToBitmapPixelInfo(__dst, v6);
}

void copy(const std::__fs::filesystem::path *__from, const std::__fs::filesystem::path *__to, std::__fs::filesystem::copy_options __opt, std::error_code *__ec)
{
  memcpy(__dst, &__from[1].__pn_.__r_.__value_.__r.__words[2], sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v6, v7, v8, v9, v10, v11, v12);
  memcpy(__dst, &__to[1].__pn_.__r_.__value_.__r.__words[2], sizeof(__dst));
  if (BitsPerPixel != CGBitmapPixelInfoGetBitsPerPixel(__dst, v14, v15, v16, v17, v18, v19, v20))
  {
    memcpy(__dst, &__to[1].__pn_.__r_.__value_.__r.__words[2], sizeof(__dst));
    CGBitmapPixelInfoGetBitsPerPixel(__dst, v25, v26, v27, v28, v29, v30, v31);
    _CGHandleAssert("copy", 552, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "src_bits_per_pixel == CGBitmapPixelInfoGetBitsPerPixel(dst->pixel_info)", "src bpp: %zu dest bpp: %zu", v32, v33, v34, BitsPerPixel);
  }

  if (__from->__pn_.__r_.__value_.__r.__words[2])
  {
    v21 = 0;
    v22 = __from->__pn_.__r_.__value_.__r.__words[0];
    v23 = (__from->__pn_.__r_.__value_.__l.__size_ * BitsPerPixel + 7) >> 3;
    v24 = __to->__pn_.__r_.__value_.__r.__words[0];
    do
    {
      memcpy(v24, v22, v23);
      v24 += __to[1].__pn_.__r_.__value_.__l.__data_;
      v22 += __from[1].__pn_.__r_.__value_.__l.__data_;
      ++v21;
    }

    while (v21 < __from->__pn_.__r_.__value_.__r.__words[2]);
  }
}

double SHADE(_BYTE *a1, float a2, float a3)
{
  v3 = a2;
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = v3;
  v5 = v4;
  v6 = v3 < 0.0;
  v7 = 0.0;
  if (v6)
  {
    v5 = 0.0;
  }

  v8 = a3;
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  v6 = v8 < 0.0;
  v9 = v8;
  v10 = v9;
  if (!v6)
  {
    v7 = v10;
  }

  *a1 = (v5 * 255.0 + 0.5);
  result = v7 * 255.0 + 0.5;
  a1[1] = result;
  return result;
}

BOOL get_page_box(uint64_t a1, const char *a2, int a3, double *a4)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  value = *(a1 + 16);
  while (1)
  {
    Rect = CGPDFDictionaryGetRect(value, a2, a4);
    if (Rect | a3 ^ 1u)
    {
      break;
    }

    if (*(a1 + 48) == 1)
    {
      CFSetAddValue(Mutable, value);
      if (CGPDFDictionaryGetDictionary(value, "Parent", &value) && !CFSetContainsValue(Mutable, value))
      {
        continue;
      }
    }

    v10 = 0;
    goto LABEL_8;
  }

  v10 = Rect;
LABEL_8:
  CFRelease(Mutable);
  return v10;
}

BOOL CGPDFDictionaryGetNumbers(CGPDFDictionary *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  array = 0;
  value = 0.0;
  result = CGPDFDictionaryGetArray(a1, a2, &array);
  if (result)
  {
    v7 = array;
    if (array)
    {
      v7 = (*(array + 3) - *(array + 2)) >> 3;
    }

    if (v7 == a4)
    {
      if (a4)
      {
        v8 = 0;
        do
        {
          result = CGPDFArrayGetNumber(array, v8, &value);
          if (!result)
          {
            break;
          }

          *(a3 + 8 * v8++) = value;
        }

        while (a4 != v8);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CGPDFDictionaryGetRect(CGPDFDictionary *a1, const char *a2, double *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = CGPDFDictionaryGetNumbers(a1, a2, &v12, 4);
  if (a3 && result)
  {
    v5 = v12;
    v6 = v13;
    if (v12 < v14)
    {
      v7 = v14 - v12;
    }

    else
    {
      v5 = v14;
      v7 = v12 - v14;
    }

    v8 = v15 - v13;
    v9 = v13 - v15;
    v10 = v13 < v15;
    if (v13 >= v15)
    {
      v6 = v15;
    }

    *a3 = v5;
    a3[1] = v6;
    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

    a3[2] = v7;
    a3[3] = v11;
  }

  return result;
}

BOOL CGPDFArrayGetNumber(CGPDFArrayRef array, size_t index, CGPDFReal *value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea)
    {
      v5 = *(valuea + 2);
      switch(v5)
      {
        case 12:
          goto LABEL_6;
        case 4:
          v6 = *(valuea + 4);
          if (!value)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 3:
LABEL_6:
          v6 = *(valuea + 4);
          if (!value)
          {
LABEL_8:
            LOBYTE(Object) = 1;
            return Object;
          }

LABEL_7:
          *value = v6;
          goto LABEL_8;
      }
    }

    LOBYTE(Object) = 0;
  }

  return Object;
}

void CGContextDrawPDFPageWithDrawingCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a3 && !*a3)
  {
    if (*(a3 + 8))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __CGContextDrawPDFPageWithDrawingCallbacks_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_13;
      aBlock[4] = a3;
      aBlock[5] = a4;
      v14 = _Block_copy(aBlock);
      CFDictionaryAddValue(Mutable, v14, @"ProgressBlock");
      _Block_release(v14);
    }

    if (*(a3 + 16))
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __CGContextDrawPDFPageWithDrawingCallbacks_block_invoke_2;
      v16[3] = &__block_descriptor_tmp_18;
      v16[4] = a3;
      v16[5] = a4;
      v15 = _Block_copy(v16);
      CFDictionaryAddValue(Mutable, v15, @"ProgressBlock");
      _Block_release(v15);
    }
  }

  CGContextDrawPDFPageWithOptions(a1, a2, Mutable, v8, v9, v10, v11, v12);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void CGContextDrawPDFPageWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v179 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return;
  }

  v9 = a3;
  if (*(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextGetCTM", a1, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(*(a2 + 40) + 8);
  v12 = objc_autoreleasePoolPush();
  *&v173.a = @"pageNumber";
  *&valuePtr.a = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v11];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&valuePtr forKeys:&v173 count:1];
  send_analytics_event("com.apple.CoreGraphics.CGContextDrawPDFPageWithDrawingCallbacks");
  objc_autoreleasePoolPop(v12);
  v20 = *(a2 + 16);
  v21 = *(a2 + 40);
  if (v21)
  {
    os_unfair_lock_lock(v21 + 23);
  }

  if (v20 && *(v20 + 120) == 1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      if (*(a1 + 24) == 1)
      {
        v22 = *(a2 + 40);
        if (!v22 || !*(v22 + 96))
        {
          v23 = CGPDFTaggedPagePropertiesCreate(a2);
          v24 = *(a2 + 40);
          if (!v24)
          {
            goto LABEL_21;
          }

          v25 = v23;
          v26 = *(v24 + 96);
          if (v26)
          {
            CFRelease(v26);
          }

          *(v24 + 96) = v25;
        }
      }
    }

    else
    {
      handle_invalid_context("CGContextGetType", a1, v14, v15, v16, v17, v18, v19);
    }
  }

  v27 = *(a2 + 40);
  if (v27)
  {
    os_unfair_lock_unlock(v27 + 23);
  }

  if (!v20)
  {
    v30 = 0;
    goto LABEL_34;
  }

LABEL_21:
  os_unfair_lock_lock((v20 + 208));
  v28 = *(v20 + 200);
  if (v28)
  {
    *&v173.a = a2;
    v29 = *(v28 + 64);
    v30 = v29 != 0;
    if (v29)
    {
      v31 = a2;
      if (*(v28 + 72) == 1)
      {
        printf("LRUCache: adding page: %lu\n", *(*(a2 + 40) + 8));
        v31 = *&v173.a;
      }

      if (std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::find<CGPDFPage *>((v28 + 24), v31))
      {
        *&valuePtr.a = &v173;
        v32 = std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::__emplace_unique_key_args<CGPDFPage *,std::piecewise_construct_t const&,std::tuple<CGPDFPage * const&>,std::tuple<>>((v28 + 24), v31)[3];
        if (v32 == v28)
        {
          __break(1u);
        }

        v34 = *v32;
        v33 = v32[1];
        *(v34 + 8) = v33;
        *v33 = v34;
        --*(v28 + 16);
        operator delete(v32);
      }

      else if (*(v28 + 16) >= *(v28 + 64))
      {
        LRUCache::pop_back(v28);
      }

      operator new();
    }
  }

  else
  {
    v30 = 0;
  }

  os_unfair_lock_unlock((v20 + 208));
LABEL_34:
  v35 = *(a2 + 40);
  if (pdf_page_draw_in_context_onceToken != -1)
  {
    dispatch_once(&pdf_page_draw_in_context_onceToken, &__block_literal_global_7272);
  }

  if (pdf_page_draw_in_context_highlight_content == 1)
  {
    CGContextSaveGState(a1);
    CGContextSetRGBFillColor(a1, 1.0, 0.43, 0.71, 1.0);
    v180.origin.x = pdf_page_get_box_rect(v35, 1);
    CGContextFillRect(a1, v180);
  }

  if (*(a1 + 16) == 1129601108)
  {
    v36 = (a1 + 120);
  }

  else
  {
    handle_invalid_context("CGContextGetTextMatrix", a1, v14, v15, v16, v17, v18, v19);
    v36 = &CGAffineTransformIdentity;
  }

  v163 = *&v36->a;
  v164 = *&v36->c;
  v165 = *&v36->tx;
  if (CGContextIsEmptyClipBoundingBox(a1, v13, v14, v15, v16, v17, v18, v19))
  {
    goto LABEL_125;
  }

  v162 = v30;
  v174 = 0u;
  v175 = 0u;
  memset(&v173, 0, sizeof(v173));
  v43 = [v9 valueForKey:@"kCGDrawPDFPageMatrixFilterOptionKey"];
  v44 = v43;
  if (v43)
  {
    [v43 CGMatrixFilterValue];
    v173 = valuePtr;
    v174 = v177;
    v175 = v178;
  }

  v45 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E00405DBFE06EuLL);
  __CFSetLastAllocationEventName();
  *v45 = CGPDFContentStreamCreate(v35);
  *(v45 + 40) = xmmword_18439C640;
  v46 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
  *(v45 + 7) = v46;
  if (*(v45 + 6))
  {
    v47 = 0;
    do
    {
      *(*(v45 + 7) + 8 * v47++) = CGPDFGStateCreate();
    }

    while (v47 < *(v45 + 6));
    v46 = *(v45 + 7);
  }

  if (v44)
  {
    CGPDFGStateSetColorMatrixFilter(*v46, &v173);
    v46 = *(v45 + 7);
  }

  v48 = *v46;
  *(v45 + 4) = v48;
  *(v45 + 3) = CGPDFGStateCreateCopy(v48);
  *(v45 + 2) = *(v35 + 56);
  v45[8] = 0;
  *(v45 + 12) = 0;
  v161 = (v45 + 96);
  *(v45 + 13) = 0;
  v45[112] = 1;
  os_unfair_lock_lock((v35 + 32));
  v49 = *(v35 + 24);
  os_unfair_lock_unlock((v35 + 32));
  *(v45 + 15) = v49;
  *(v45 + 16) = 0;
  box_rect = pdf_page_get_box_rect(v35, 1);
  *(v45 + 26) = 0xFFFFFFFFLL;
  *(v45 + 17) = box_rect;
  *(v45 + 18) = v58;
  *(v45 + 19) = v59;
  *(v45 + 20) = v60;
  *(v45 + 21) = 0;
  v45[176] = 0;
  if (v9)
  {
    v61 = CFDictionaryGetValue(v9, @"kCGDrawPDFPageProgressCallbackOptionKey");
    *(v45 + 23) = _Block_copy(v61);
    v62 = CFDictionaryGetValue(v9, @"kCGDrawPDFPageImageCallbackOptionKey");
    *(v45 + 24) = _Block_copy(v62);
    v63 = CFDictionaryGetValue(v9, @"kCGDrawPDFPageDrawImageCallbackOptionKey");
    *(v45 + 25) = _Block_copy(v63);
    v64 = CFDictionaryGetValue(v9, @"kCGDrawPDFPageContentTypesOptionKey");
    if (v64)
    {
      v65 = v64;
      v66 = CFGetTypeID(v64);
      if (v66 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v65, kCFNumberSInt64Type, v45 + 208);
      }
    }
  }

  if (CGContextGetAlpha(a1, v50, v51, v52, v53, v54, v55, v56) != 1.0 || CGContextGetStyle(a1, v67, v68, v69, v70, v71, v72, v73) || CGContextGetSoftMask(a1, v67, v68, v69, v70, v71, v72, v73) || CGContextGetCompositeOperation(a1, v67, v68, v69, v70, v71, v72, v73) != 2)
  {
    GStateMark = CGContextGetGStateMark(a1, v67, v68, v69, v70, v71, v72, v73);
    goto LABEL_62;
  }

  xinfo = pdf_page_get_xinfo(v35);
  if (!xinfo)
  {
    v90 = CGContextGetGStateMark(a1, v75, v76, v77, v78, v79, v80, v81);
    v160 = 0;
    goto LABEL_67;
  }

  v82 = *xinfo;
  GStateMark = CGContextGetGStateMark(a1, v75, v76, v77, v78, v79, v80, v81);
  if (v82 == 1)
  {
LABEL_62:
    v90 = GStateMark;
    set_initial_group_gstate(*(v45 + 4));
    set_initial_group_gstate(*(v45 + 3));
    if (*(v45 + 2))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"kCGContextColorSpace", *(v45 + 2));
      CGContextBeginTransparencyLayer(a1, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      v181.origin.x = -8.98846567e307;
      v181.size.width = 1.79769313e308;
      v181.origin.y = -8.98846567e307;
      v181.size.height = 1.79769313e308;
      CGContextBeginTransparencyLayerWithRect(a1, v181, 0);
    }

    v160 = 1;
    goto LABEL_67;
  }

  v160 = 0;
  v90 = GStateMark;
LABEL_67:
  memset(v166, 0, sizeof(v166));
  CGContextGetBaseCTM(a1, v84, v85, v86, v87, v88, v89, v166);
  CGContextGetCTM(&valuePtr, a1);
  CGContextSetBaseCTM(a1, &valuePtr, v92, v93, v94, v95, v96, v97);
  v98 = *(v45 + 26);
  *(v45 + 11) = a1;
  if (CGPDFDrawingContextGetOperatorTable_predicate != -1)
  {
    dispatch_once(&CGPDFDrawingContextGetOperatorTable_predicate, &__block_literal_global_7936);
  }

  v159 = v98;
  if (v98 == 0xFFFFFFFFLL)
  {
    ContentTypesTable = CGPDFDrawingContextGetOperatorTable_operator_table;
  }

  else
  {
    ContentTypesTable = CGPDFDrawingContextCreateContentTypesTable(*(v45 + 26));
  }

  v158 = ContentTypesTable;
  v107 = CGPDFScannerCreate(*v45, ContentTypesTable, v45);
  v108 = *(v45 + 23);
  if (v108 && v107)
  {
    *(v107 + 15) = _Block_copy(v108);
  }

  v109 = *v35;
  if (*v35)
  {
    v110 = *(v109 + 16);
    v111 = *(*v110 + 40);
    if (!v111 || (v112 = *(v111 + 16)) != 0 && *(v112 + 184) == 1)
    {
      valuePtr.a = 0.0;
      trailer = pdf_xref_get_trailer(*v110);
      if (CGPDFDictionaryGetDictionary(trailer, "Root", &valuePtr))
      {
        a = valuePtr.a;
        if (*&valuePtr.a)
        {
          os_unfair_lock_lock((v109 + 68));
          if ((*(v109 + 72) & 1) == 0)
          {
            *(v109 + 88) = 1;
            value = 0;
            if (CGPDFDictionaryGetDictionary(*&a, "OCProperties", &value))
            {
              dict = 0;
              v171 = 0;
              if (CGPDFDictionaryGetDictionary(value, "D", &dict) && CGPDFDictionaryGetArray(value, "OCGs", &v171))
              {
                v152 = v9;
                __s1 = 0;
                if (CGPDFDictionaryGetName(dict, "BaseState", &__s1) && !strcmp(__s1, "OFF"))
                {
                  *(v109 + 88) = 0;
                }

                v115 = 0;
                allocator = *MEMORY[0x1E695E480];
                v154 = *MEMORY[0x1E695E4D0];
                v153 = *MEMORY[0x1E695E4C0];
                v116 = 1;
                do
                {
                  v155 = v116;
                  array = 0;
                  if (CGPDFDictionaryGetArray(dict, off_1E6E32F30[v115], &array))
                  {
                    if (array)
                    {
                      v117 = *(array + 3) - *(array + 2);
                      if (v117)
                      {
                        v118 = 0;
                        v119 = v117 >> 3;
                        v120 = v154;
                        if ((v155 & 1) == 0)
                        {
                          v120 = v153;
                        }

                        v156 = v120;
                        do
                        {
                          v167 = 0;
                          if (CGPDFArrayGetObject(array, v118, &v167))
                          {
                            v121 = v90;
                            if (!*(v109 + 80))
                            {
                              *(v109 + 80) = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                            }

                            *&valuePtr.a = *(v167 + 12) | (*(v167 + 2) << 36);
                            v122 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
                            CFDictionarySetValue(*(v109 + 80), v122, v156);
                            CFRelease(v122);
                            v90 = v121;
                          }

                          ++v118;
                        }

                        while (v119 != v118);
                      }
                    }
                  }

                  v116 = 0;
                  v115 = 1;
                }

                while ((v155 & 1) != 0);
                v9 = v152;
              }
            }

            *(v109 + 72) = 1;
          }

          os_unfair_lock_unlock((v109 + 68));
          *(v45 + 13) = *(v109 + 80);
          v45[112] = *(v109 + 88);
        }
      }
    }
  }

  if (CGContextGetType(a1, v100, v101, v102, v103, v104, v105, v106) == 1)
  {
    *v161 = *(v35 + 96);
  }

  v123 = *(v35 + 72);
  if (v123 && CGPropertiesGetProperty(v123, @"drawocr"))
  {
    v45[176] = 1;
  }

  CGPDFScannerScan(v107);
  if (v107)
  {
    CFRelease(v107);
  }

  if (CGContextGetType(a1, v124, v125, v126, v127, v128, v129, v130) == 1)
  {
    StructureTree = CGPDFTaggedPagePropertiesGetStructureTree(*v161);
    CGPDFContextSetPageTagStructureTree(a1, StructureTree, v132, v133, v134, v135, v136, v137);
  }

  if (v159 != 0xFFFFFFFFLL && v158)
  {
    CFRelease(v158);
  }

  v138 = *(v45 + 16);
  if (v138)
  {
    os_unfair_lock_lock((v35 + 88));
    v139 = *(v35 + 104);
    if (v139 != v138)
    {
      if (v139)
      {
        CFRelease(v139);
      }

      CFRetain(v138);
      *(v35 + 104) = v138;
    }

    os_unfair_lock_unlock((v35 + 88));
  }

  CGPDFDrawingContextRelease(v45);
  if (v160)
  {
    CGContextEndTransparencyLayer(a1);
  }

  CGContextRestoreToGStateMark(a1, v90, v140, v141, v142, v143, v144, v145);
  CGContextSetBaseCTM(a1, v166, v146, v147, v148, v149, v150, v151);
  v30 = v162;
LABEL_125:
  if (*(a1 + 16) == 1129601108)
  {
    *(a1 + 120) = v163;
    *(a1 + 136) = v164;
    *(a1 + 152) = v165;
  }

  else
  {
    handle_invalid_context("CGContextSetTextMatrix", a1, v37, v38, v39, v40, v41, v42);
  }

  if (pdf_page_draw_in_context_highlight_content == 1)
  {
    CGContextSetRGBFillColor(a1, 1.0, 0.43, 0.71, 0.25);
    v182.origin.x = pdf_page_get_box_rect(v35, 1);
    CGContextFillRect(a1, v182);
    CGContextRestoreGState(a1);
  }

  *(a2 + 280) = 1;
  if (!v30)
  {
    CGPDFPagePurgeResources(a2);
  }

  LOBYTE(valuePtr.a) = 0;
  if (CGCFDictionaryGetBoolean(v9, @"kCGDrawPDFPageDrawAnnotationsOptionKey", &valuePtr) && LOBYTE(valuePtr.a))
  {
    draw_page_annotations(a1, a2, 0);
  }
}

CGAffineTransform *__cdecl CGAffineTransformMakeScale(CGAffineTransform *__return_ptr retstr, CGFloat sx, CGFloat sy)
{
  retstr->a = sx;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = sy;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
  return result;
}

uint64_t _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  v14 = sub_18438FF18();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v23[-v16];
  v18 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  if (v18)
  {
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v19 = *(a2 + 8);
    v20 = v18;
    v19();
    v21 = *(a1 - 8);
    if ((*(v21 + 48))(v17, 1, a1) != 1)
    {

      return (*(v21 + 32))(a3, v17, a1);
    }

    __break(1u);
  }

  result = sub_184390118();
  __break(1u);
  return result;
}

void sub_183F43704(CGColorSpace *a1@<X0>, const CGFloat *a2@<X1>, CGColorRef *a3@<X8>)
{
  v5 = CGColorCreate(a1, a2);

  *a3 = v5;
}

uint64_t GRAYA8_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v20[482] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v9 = *(*(*v2 + 56) + 16 * *v3 + 8 * v8 + 4 * (*(v3 + 6) == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, &v13, v18) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) != 0x1000000)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 16))
  {
    v12 = GRAYA8_shade_radial_Gray;
  }

  else if (*(v5 + 24))
  {
    v12 = GRAYA8_shade_conic_Gray;
  }

  else if (v16 < 2)
  {
    v12 = GRAYA8_shade_axial_Gray;
  }

  else
  {
    v12 = GRAYA8_shade_custom_Gray;
  }

  v13 = v12;
LABEL_22:
  v14 = *v7;
  v15 = v14;
  GRAYa8_image_mark(v6, &v13, v9, v11);
  if (v17 && (v17 < &v19 || v20 < v17))
  {
    free(v17);
  }

  return 1;
}

void GRAYA8_shade_axial_Gray(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v5 = *(a1 + 280);
  v6 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v5 * (*(*(a1 + 272) + 4) * a2)));
  v7 = *(a1 + 336);
  v8 = *(a1 + 344);
  v9 = *(a1 + 304);
  v10 = *(a1 + 308);
  v11 = *(a1 + 320);
  v12 = *(a1 + 324);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  v15 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v16 = *(a1 + 392);
  }

  else
  {
    v16 = *(a1 + 272);
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = *(a1 + 40);
  }

  else
  {
    v19 = *(a1 + 272);
  }

  if (v5 != 0.0)
  {
    while (1)
    {
      v23 = v11;
      if (v6 >= v9)
      {
        v23 = v12;
        if (v6 <= v10)
        {
          v23 = (v8 * (v6 - v7));
        }
      }

      if ((v23 & 0x80000000) == 0)
      {
        break;
      }

      if (v15)
      {
        v25 = *v16;
        v26 = *v16 * *v15;
LABEL_31:
        SHADE(v14, v26, v25);
        v22 = -1;
        goto LABEL_32;
      }

      v22 = 0;
LABEL_32:
      v6 = v5 + v6;
      v14 += 2;
      *v13 = v22;
      v13 = (v13 + 1);
      if (!--v4)
      {
        return;
      }
    }

    v24 = v23;
    if (!v18)
    {
      v24 = 0;
    }

    v25 = *(v19 + 4 * v24);
    v26 = *(v17 + 4 * v23);
    if (v18)
    {
      v26 = v25 * v26;
    }

    goto LABEL_31;
  }

  if (v6 >= v9)
  {
    v11 = *(a1 + 324);
    if (v6 <= v10)
    {
      v11 = (v8 * (v6 - v7));
    }
  }

  if ((v11 & 0x80000000) == 0 || v15)
  {
    if ((v11 & 0x80000000) != 0)
    {
      v28 = *v16;
      v29 = *v16 * *v15;
    }

    else
    {
      v27 = v11;
      if (!v18)
      {
        v27 = 0;
      }

      v28 = *(v19 + 4 * v27);
      if (v18)
      {
        v29 = v28 * *(v17 + 4 * v11);
      }

      else
      {
        v29 = *(v17 + 4 * v11);
      }
    }

    v30 = a4 + 4;
    do
    {
      SHADE(v14, v29, v28);
      SHADE(v14 + 2, v29, v28);
      SHADE(v14 + 4, v29, v28);
      SHADE(v14 + 6, v29, v28);
      *v13++ = -1;
      v30 -= 4;
      v14 += 8;
    }

    while (v30 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = a4;
    }

    v21 = *(a1 + 144);

    bzero(v21, ((a4 - v20 + 3) & 0xFFFFFFFC) + 4);
  }
}

double pdf_page_get_box_rect(uint64_t a1, int a2)
{
  memset(v7, 0, sizeof(v7));
  if (a2 <= 1)
  {
    if (a2)
    {
      result = INFINITY;
      if (a2 != 1)
      {
        return result;
      }

      if (!get_page_box(a1, "CropBox", 1, v7))
      {
        v5 = a1;
        v6 = 0;
LABEL_14:
        pdf_page_get_box_rect(v5, v6);
        return result;
      }
    }

    else if (!get_page_box(a1, "MediaBox", 1, v7))
    {
      return 0.0;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v4 = "BleedBox";
    }

    else if (a2 == 3)
    {
      v4 = "TrimBox";
    }

    else
    {
      result = INFINITY;
      if (a2 != 4)
      {
        return result;
      }

      v4 = "ArtBox";
    }

    if (!get_page_box(a1, v4, 0, v7))
    {
      v5 = a1;
      v6 = 1;
      goto LABEL_14;
    }
  }

  return *v7;
}

float64x2_t pdf_page_get_drawing_transform(float64x2_t *a1, uint64_t a2, int a3, int a4, int a5, int a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14)
{
  box_rect = pdf_page_get_box_rect(a2, a3);
  y = v25;
  width = v27;
  height = v29;
  if (a3)
  {
    v106.origin.x = pdf_page_get_box_rect(a2, 0);
    v106.origin.y = v31;
    v106.size.width = v32;
    v106.size.height = v33;
    v93.origin.x = box_rect;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    v94 = CGRectIntersection(v93, v106);
    box_rect = v94.origin.x;
    y = v94.origin.y;
    width = v94.size.width;
    height = v94.size.height;
  }

  v95.origin.x = box_rect;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  v107.origin.x = a7;
  v107.origin.y = a8;
  v107.size.width = a9;
  v107.size.height = a10;
  v96 = CGRectIntersection(v95, v107);
  x = v96.origin.x;
  v35 = v96.origin.y;
  v36 = v96.size.width;
  v37 = v96.size.height;
  if (v96.size.width < 0.0 || v96.size.height < 0.0)
  {
    *&v40 = CGRectStandardize(v96);
    v97.origin.x = x;
    v97.origin.y = v35;
    v97.size.width = v36;
    v97.size.height = v37;
    v98 = CGRectStandardize(v97);
    v41 = v98.origin.y;
    v98.origin.x = x;
    v98.origin.y = v35;
    v98.size.width = v36;
    v98.size.height = v37;
    v99 = CGRectStandardize(v98);
    v38 = v99.origin.x + v99.size.width;
    v99.origin.x = x;
    v99.origin.y = v35;
    v99.size.width = v36;
    v99.size.height = v37;
    v100 = CGRectStandardize(v99);
    v90 = v100.origin.y + v100.size.height;
    v100.origin.x = x;
    v100.origin.y = v35;
    v100.size.width = v36;
    v100.size.height = v37;
    v101 = CGRectStandardize(v100);
    v39 = v101.size.width;
    v101.origin.x = x;
    v101.origin.y = v35;
    v101.size.width = v36;
    v101.size.height = v37;
    v102 = CGRectStandardize(v101);
    v37 = v102.size.height;
  }

  else
  {
    v38 = v96.origin.x + v96.size.width;
    v90 = v96.origin.y + v96.size.height;
    v39 = v96.size.width;
    v40 = v96.origin.x;
    v41 = v96.origin.y;
  }

  v42 = (pdf_page_get_rotation_angle(a2) + a4) % 360;
  v43 = v42 + (v42 < 0 ? 0x168 : 0);
  if (v43 == 90)
  {
    v46 = -v41;
    v47 = 0.0;
    v48 = -1.0;
    v49 = v38;
    v50 = v39;
    v39 = v37;
    v44 = 1.0;
    v45 = a14;
  }

  else
  {
    v44 = 0.0;
    v45 = a14;
    if (v43 == 180)
    {
      v47 = -1.0;
      v48 = 0.0;
      v46 = v38;
      v50 = v37;
      v49 = v90;
    }

    else if (v43 == 270)
    {
      v46 = v90;
      v47 = 0.0;
      v48 = 1.0;
      v44 = -1.0;
      v49 = -v40;
      v50 = v39;
      v39 = v37;
    }

    else
    {
      v46 = -v40;
      v49 = -v41;
      v47 = 1.0;
      v50 = v37;
      v48 = 0.0;
    }
  }

  if (a13 < 0.0 || v45 < 0.0)
  {
    v54 = a11;
    v91 = v49;
    v55 = a12;
    v56 = a13;
    v85 = v44;
    v86 = v47;
    v83 = v48;
    v84 = v46;
    v82 = CGRectStandardize(*(&v45 - 3));
    v103.origin.x = a11;
    v103.origin.y = a12;
    v103.size.width = a13;
    v103.size.height = a14;
    v104 = CGRectStandardize(v103);
    v81 = v104.origin.y;
    v104.origin.x = a11;
    v104.origin.y = a12;
    v104.size.width = a13;
    v104.size.height = a14;
    v105 = CGRectStandardize(v104);
    v80 = v105.size.width;
    v105.origin.x = a11;
    v105.origin.y = a12;
    v105.size.width = a13;
    v105.size.height = a14;
    *(&v45 - 3) = CGRectStandardize(v105);
    v51.f64[0] = v80;
    v53 = v81;
    *&v52.f64[0] = v82;
    v48 = v83;
    v46 = v84;
    v44 = v85;
    v47 = v86;
    v49 = v91;
  }

  else
  {
    v51.f64[0] = a13;
    v52.f64[0] = a11;
    v53 = a12;
  }

  v57.f64[0] = v39 * -0.5;
  v57.f64[1] = v50 * -0.5;
  v58 = vaddq_f64(v57, vmlaq_n_f64(vmulq_n_f64(xmmword_18439C780, v49), xmmword_18439C630, v46));
  v59 = vmlaq_n_f64(vmulq_n_f64(xmmword_18439C780, v47), xmmword_18439C630, v44);
  v60 = vmlaq_n_f64(vmulq_n_f64(xmmword_18439C780, v48), xmmword_18439C630, v47);
  v61 = v51.f64[0] / v39;
  v62 = v45 / v50;
  v63 = fmin(v51.f64[0] / v39, 1.0);
  v64 = fmin(v45 / v50, 1.0);
  if (a6)
  {
    v61 = v63;
    v62 = v64;
  }

  v65 = fmin(v61, v62);
  if (a5)
  {
    v61 = v65;
    v62 = v65;
  }

  v66 = v61;
  v67.f64[0] = 0.0;
  v67.f64[1] = v62;
  v68 = vmlaq_n_f64(vmulq_laneq_f64(v67, v60, 1), *&v66, v60.f64[0]);
  v69 = vmlaq_n_f64(vmulq_laneq_f64(v67, v59, 1), *&v66, v59.f64[0]);
  v70 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v67, v58, 1), *&v66, v58.f64[0]), 0);
  v51.f64[1] = v45;
  __asm { FMOV            V3.2D, #0.5 }

  v76 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v68, 1), xmmword_18439C630, v68.f64[0]);
  v77 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v69, 1), xmmword_18439C630, v69.f64[0]);
  v78 = vaddq_f64(vmulq_f64(v51, _Q3), vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v70, 1), xmmword_18439C630, v70.f64[0]));
  v52.f64[1] = v53;
  result = vaddq_f64(v52, vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v78, 1), xmmword_18439C630, v78.f64[0]));
  *a1 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v76, 1), xmmword_18439C630, v76.f64[0]);
  a1[1] = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v77, 1), xmmword_18439C630, v77.f64[0]);
  a1[2] = result;
  return result;
}

CGAffineTransform *__cdecl CGPDFPageGetDrawingTransform(CGAffineTransform *__return_ptr retstr, CGAffineTransform *page, CGPDFBox box, CGRect rect, int rotate, BOOL preserveAspectRatio)
{
  if (page)
  {
    pdf_page_get_drawing_transform(retstr, *&page->ty, box, rotate, preserveAspectRatio, 1, -8.98846567e307, -8.98846567e307, 1.79769313e308, 1.79769313e308, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  }

  else
  {
    *retstr = CGAffineTransformIdentity;
  }

  return page;
}

void *std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::find<CGPDFPage *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

void *std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::__emplace_unique_key_args<CGPDFPage *,std::piecewise_construct_t const&,std::tuple<CGPDFPage * const&>,std::tuple<>>(void *a1, unint64_t a2)
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

  return v9;
}

BOOL CGContextIsEmptyClipBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextIsEmptyClipBoundingBox", a1, a3, a4, a5, a6, a7, a8);
    return 1;
  }

  if (get_device_clip_bounding_box(a1) == INFINITY || v8 == INFINITY)
  {
    return 1;
  }

  return v10 == 0.0 || v9 == 0.0;
}

void CGContextAddArc(CGContextRef c, CGFloat x, CGFloat y, CGFloat radius, CGFloat startAngle, CGFloat endAngle, int clockwise)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      Mutable = *(c + 21);
      if (!Mutable)
      {
        Mutable = CGPathCreateMutable();
        *(c + 21) = Mutable;
      }

      v21 = (*(c + 12) + 24);

      CGPathAddArc(Mutable, v21, x, y, radius, startAngle, endAngle, clockwise != 0);
      return;
    }

    v22 = c;
  }

  else
  {
    v22 = 0;
  }

  handle_invalid_context("CGContextAddArc", v22, v7, v8, v9, v10, v11, v12);
}

BOOL __CheckPageForSpecialBlends_block_invoke_2(uint64_t a1, CGPDFDictionaryRef dict)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CheckPageForSpecialBlends_block_invoke_3;
  block[3] = &unk_1E6E31578;
  block[4] = *(a1 + 32);
  CGPDFDictionaryApplyBlock(dict, block, 0);
  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

BOOL __CheckPageForSpecialBlends_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a3 + 8) == 9)
  {
    v4 = *(a3 + 32);
    value = 0;
    if (v4)
    {
      v5 = *(v4 + 48);
    }

    else
    {
      v5 = 0;
    }

    if (CGPDFDictionaryGetDictionary(v5, "Resources", &value))
    {
      *(*(*(a1 + 32) + 8) + 24) = CheckExtGStateForSpecialBlends(value);
    }
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

uint64_t CGContextGetGStateMark(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v15 = 0;
LABEL_8:
    handle_invalid_context("CGContextGetGStateMark", v15, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v15 = a1;
    goto LABEL_8;
  }

  v9 = *(a1 + 104);
  v10 = CGGStackCreateWithGState(*(a1 + 96));
  *(a1 + 104) = v10;
  v11 = v10[1];
  if (v11 == v10)
  {
    v12 = v10;
    v13 = CGGStateCreate();
    v14 = v12[1];
    v12[1] = v13;
    *v13 = v12;
    *v14 = v13;
    *(v13 + 1) = v14;
    v11 = v12[1];
  }

  *(a1 + 96) = v11;
  return v9;
}

void CGContextSetBaseCTM(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v8 = *(a1 + 112);
      v9 = *a2;
      v10 = a2[1];
      *(v8 + 56) = a2[2];
      *(v8 + 40) = v10;
      *(v8 + 24) = v9;
      return;
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  handle_invalid_context("CGContextSetBaseCTM", v11, a3, a4, a5, a6, a7, a8);
}

void CGContextGetBaseCTM(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v9 = *(a1 + 112);
    v10 = *(v9 + 40);
    *a8 = *(v9 + 24);
    a8[1] = v10;
    v11 = *(v9 + 56);
  }

  else
  {
    handle_invalid_context("CGContextGetBaseCTM", a1, a2, a3, a4, a5, a6, a7);
    *a8 = *&CGAffineTransformIdentity.a;
    a8[1] = *&CGAffineTransformIdentity.c;
    v11 = *&CGAffineTransformIdentity.tx;
  }

  a8[2] = v11;
}

uint64_t __CGPDFOperatorTableGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFOperatorTableGetTypeID_class);
  CGPDFOperatorTableGetTypeID_id = result;
  return result;
}

void __CGPDFDrawingContextGetOperatorTable_block_invoke()
{
  CGPDFDrawingContextGetOperatorTable_operator_table = CGPDFOperatorTableCreate();
  if (CGPDFDrawingContextGetOperatorTable_operator_table)
  {
    v0 = &off_1EF23CBF8;
    v1 = 66;
    do
    {
      CGPDFOperatorTableSetCallback(CGPDFDrawingContextGetOperatorTable_operator_table, *(v0 - 1), *v0);
      v0 += 2;
      --v1;
    }

    while (v1);
  }
}

CGAffineTransform *__cdecl CGContextGetCTM(CGAffineTransform *__return_ptr retstr, CGAffineTransform *c)
{
  if (c && LODWORD(c->c) == 1129601108)
  {
    v9 = (*&c[2].a + 24);
  }

  else
  {
    handle_invalid_context("CGContextGetCTM", c, v2, v3, v4, v5, v6, v7);
    v9 = &CGAffineTransformIdentity;
  }

  v10 = *&v9->c;
  *&retstr->a = *&v9->a;
  *&retstr->c = v10;
  *&retstr->tx = *&v9->tx;
  return c;
}

CGPDFOperatorTableRef CGPDFOperatorTableCreate(void)
{
  if (CGPDFOperatorTableGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFOperatorTableGetTypeID_onceToken, &__block_literal_global_16934);
  }

  return pdf_create_cftype();
}

void CGPDFOperatorTableSetCallback(CGPDFOperatorTableRef table, const char *name, CGPDFOperatorCallback callback)
{
  if (table && name)
  {
    v6 = strlen(name);
    v7 = CGPDFGetOperatorForName(name, v6, 0);
    if (v7)
    {
      *(table + v7 + 2) = callback;
    }

    else
    {
    }
  }
}

uint64_t CGPDFGetOperatorForName(char *__s, size_t a2, _DWORD *a3)
{
  if (!a2)
  {
    a2 = strlen(__s);
  }

  if (a2 > 0xFFFFFFFE)
  {
    return 0;
  }

  v5 = (a2 - 1);
  if (v5 > 2)
  {
    return 0;
  }

  v6 = a2 == 1 ? 1 : hash_asso_values_7781[__s[1] + 1] + a2;
  v7 = *__s;
  v8 = v6 + hash_asso_values_7781[v7];
  if (v8 > 0x48)
  {
    return 0;
  }

  v9 = (&lookup_operator_wordlist + 16 * v8);
  if (v7 != **v9 || strncmp(__s + 1, (*v9 + 1), v5))
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v9[3];
  }

  return v9[2];
}

uint64_t __CGPDFScannerGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFScannerGetTypeID_class);
  CGPDFScannerGetTypeID_id = result;
  return result;
}

CGPDFScannerRef CGPDFScannerCreate(CGPDFContentStreamRef cs, CGPDFOperatorTableRef table, void *info)
{
  if (CGPDFScannerGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFScannerGetTypeID_onceToken, &__block_literal_global_22225);
  }

  cftype = pdf_create_cftype();
  *(cftype + 16) = info;
  if (cs)
  {
    CFRetain(cs);
    v7 = *(cs + 3);
  }

  else
  {
    v7 = 0;
  }

  *(cftype + 48) = v7;
  *(cftype + 56) = cs;
  CGPDFScannerPushTable(cftype, table);
  *(cftype + 112) = 0;
  *(cftype + 120) = 0;
  *(cftype + 128) = 0;
  *(cftype + 136) = 0;
  *(cftype + 72) = 0x800000000;
  *(cftype + 80) = malloc_type_malloc(0x140uLL, 0x103204077D336DFuLL);
  return cftype;
}

void *CGPDFScannerPushTable(void *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      v4 = malloc_type_malloc(0x248uLL, 0x80040B8603338uLL);
      result = __CFSetLastAllocationEventName();
      if (v4)
      {
        for (i = 0; i != 73; ++i)
        {
          v4[i] = *(a2 + 16 + i * 8);
        }

        v4[CGPDFGetOperatorForName("BI", 2uLL, 0)] = op_BI;
        v4[CGPDFGetOperatorForName("BX", 2uLL, 0)] = op_BX;
        v4[CGPDFGetOperatorForName("EX", 2uLL, 0)] = op_EX;
        v3[3] = v4;
        v6 = v3[4];
        result = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *result = v6;
        result[1] = v4;
        v3[4] = result;
      }
    }
  }

  return result;
}

uint64_t CGContextGetType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(a1 + 24);
  }

  handle_invalid_context("CGContextGetType", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

BOOL CGPDFScannerScan(CGPDFScannerRef scanner)
{
  if (!scanner)
  {
    return scanner;
  }

  v1 = scanner;
  pthread_once(&CGPDFScannerScan_once_control, CGPDFScannerScanInit);
  if (pthread_getspecific(scanner_bailout_key))
  {
LABEL_38:
    LOBYTE(scanner) = 0;
    return scanner;
  }

  v2 = pthread_getspecific(scanner_frame_key) + 1;
  if (v2 >= 0x33)
  {
    pthread_setspecific(scanner_bailout_key, 1);
    goto LABEL_38;
  }

  pthread_setspecific(scanner_frame_key, v2);
  *(v1 + 28) = 0;
  *(v1 + 13) = 0;
  *(v1 + 22) = 0;
  *(v1 + 5) = 0;
  if (!pdf_scanner_advance_stream(v1))
  {
    goto LABEL_49;
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  while (1)
  {
    v9 = *(v1 + 15);
    if (v9)
    {
      v10 = *(v1 + 28) + 1;
      *(v1 + 28) = v10;
      if ((v10 & 0x3FF) == 0 && ((*(v9 + 16))() & 1) == 0)
      {
        *(v1 + 128) = 1;
      }
    }

    if (*(v1 + 128) == 1)
    {
      break;
    }

    v11 = pdf_lexer_scan(*(v1 + 8), &v25, v3, v4, v5, v6, v7, v8);
    if (v11 > 6)
    {
      if (v11 > 10)
      {
        switch(v11)
        {
          case 11:
LABEL_29:
            if (pdf_scanner_read_compound_object(v1, &v25, 0, *(v1 + 18), 0, v6, v7, v8))
            {
LABEL_13:
              v12 = *(v1 + 18);
              v13 = *(v1 + 19);
              if (v12 >= v13)
              {
                *(v1 + 19) = 2 * v13;
                v14 = malloc_type_realloc(*(v1 + 10), 80 * v13, 0x103204077D336DFuLL);
                *(v1 + 10) = v14;
                v12 = *(v1 + 18);
              }

              else
              {
                v14 = *(v1 + 10);
              }

              v15 = &v14[40 * v12];
              v16 = v25;
              v17 = v26;
              *(v15 + 4) = v27;
              *v15 = v16;
              *(v15 + 1) = v17;
              ++*(v1 + 18);
            }

            break;
          case 13:
            goto LABEL_13;
          case 15:
LABEL_31:
            if (!pdf_scanner_advance_stream(v1))
            {
              v18 = *(v1 + 18);
              if ((v18 & 0x80000000) == 0)
              {
                if (v18)
                {
                  v22 = 0;
                  do
                  {
                    v23 = *(v1 + 10) + v22;
                    if ((*(v23 + 8) - 5) <= 4)
                    {
                      pdf_object_release_compound_value(v23);
                    }

                    v22 += 40;
                  }

                  while (40 * v18 != v22);
                }

                goto LABEL_48;
              }

LABEL_47:
              pdf_error("Fatal: Attempted to remove more than args stack count. Argument stack is inconsistent.");
              goto LABEL_48;
            }

            break;
          default:
            goto LABEL_34;
        }
      }

      else
      {
        if (v11 != 7)
        {
          if (v11 == 8)
          {
            goto LABEL_13;
          }

          if (v11 != 9)
          {
            goto LABEL_34;
          }

          goto LABEL_29;
        }

        pdf_scanner_handle_xname(v1);
      }
    }

    else
    {
      if ((v11 - 2) < 5)
      {
        goto LABEL_13;
      }

      if (!v11)
      {
        goto LABEL_31;
      }

      if (v11 != 1)
      {
LABEL_34:
        pdf_error("encountered unexpected object type: %d.", v11);
        goto LABEL_35;
      }

      pdf_scanner_handle_choke(&v25);
LABEL_35:
      if ((DWORD2(v25) - 5) <= 4)
      {
        pdf_object_release_compound_value(&v25);
      }
    }
  }

  v18 = *(v1 + 18);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_47;
  }

  if (v18)
  {
    v19 = 0;
    do
    {
      v20 = *(v1 + 10) + v19;
      if ((*(v20 + 8) - 5) <= 4)
      {
        pdf_object_release_compound_value(v20);
      }

      v19 += 40;
    }

    while (40 * v18 != v19);
  }

LABEL_48:
  *(v1 + 18) -= v18;
LABEL_49:
  v21 = pthread_getspecific(scanner_frame_key) - 1;
  pthread_setspecific(scanner_frame_key, v21);
  if (!v21)
  {
    pthread_setspecific(scanner_bailout_key, 0);
  }

  LOBYTE(scanner) = 1;
  return scanner;
}

uint64_t CGPDFScannerScanInit()
{
  pthread_key_create(&scanner_frame_key, 0);

  return pthread_key_create(&scanner_bailout_key, 0);
}

BOOL pdf_scanner_advance_stream(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    pdf_lexer_release(v2);
    a1[8] = 0;
  }

  v3 = a1[6];
  if (!v3)
  {
    return 0;
  }

  v4 = a1[5];
  if (v4 >= CFArrayGetCount(v3))
  {
    return 0;
  }

  v6 = a1[5];
  v5 = a1[6];
  a1[5] = v6 + 1;
  ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
  v13 = 0;
  v8 = CGPDFStreamCreateFilterChain(ValueAtIndex, &v13);
  v9 = 0;
  if (v8 && !v13)
  {
    v10 = v8;
    v11 = pdf_lexer_create(0, v8, 1);
    a1[8] = v11;
    v9 = v11 != 0;
    CFRelease(v10);
  }

  return v9;
}

void *CGPDFStreamCreateFilterChain(uint64_t a1, int *a2)
{
  if (a1)
  {
    Copy = CGPDFSourceCreateCopy(*(a1 + 72), *(a1 + 56), *(a1 + 64));
    if (Copy)
    {
      v5 = Copy;
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 16);
      if (v8 && (*(a1 + 41) & 1) == 0 && (v9 = *(v8 + 40)) != 0 && !has_crypt_filter(*(a1 + 48), *(a1 + 40)))
      {
        Decryptor = CGPDFSecurityManagerCreateDecryptor(v9, a1, 0, v5);
        if (!Decryptor)
        {
          pdf_error("failed to create default crypt filter.");
LABEL_41:
          CFRelease(v5);
          return Decryptor;
        }
      }

      else
      {
        CFRetain(v5);
        Decryptor = v5;
      }

      filter_object = get_filter_object(v7, v6);
      if (!filter_object)
      {
        if (a2)
        {
          *a2 = 0;
        }

        goto LABEL_41;
      }

      v12 = *(filter_object + 2);
      if (v12 == 5)
      {
        v15 = *(filter_object + 4);
        value = 0;
        v16 = *(a1 + 48);
        if (!CGPDFDictionaryGetDictionary(v16, "DecodeParms", &value) && !CGPDFDictionaryGetDictionary(v16, "DP", &value))
        {
          value = 0;
        }

        v17 = add_filter(a1, Decryptor, v15, value, a2);
        goto LABEL_40;
      }

      if (v12 == 7)
      {
        v13 = *(filter_object + 4);
        array = 0;
        value = 0;
        v24 = 0;
        if (v13)
        {
          v14 = (*(v13 + 3) - *(v13 + 2)) >> 3;
        }

        else
        {
          v14 = 0;
        }

        v18 = *(a1 + 48);
        if (!CGPDFDictionaryGetArray(v18, "DecodeParms", &array) && !CGPDFDictionaryGetArray(v18, "DP", &array))
        {
          array = 0;
        }

        CFRetain(Decryptor);
        if (a2)
        {
          *a2 = 0;
        }

        v17 = Decryptor;
        if (!v14)
        {
          goto LABEL_40;
        }

        v19 = 0;
        v20 = Decryptor;
        while (CGPDFArrayGetName(v13, v19, &value))
        {
          if (array && CGPDFArrayGetDictionary(array, v19, &v24))
          {
            v21 = v24;
          }

          else
          {
            v21 = 0;
            v24 = 0;
          }

          v22 = add_filter(a1, v20, value, v21, a2);
          if (!v22)
          {
            break;
          }

          v17 = v22;
          CFRelease(v20);
          ++v19;
          v20 = v17;
          if (v14 == v19)
          {
            goto LABEL_40;
          }
        }

        CFRelease(v20);
      }

      v17 = 0;
LABEL_40:
      CFRelease(Decryptor);
      Decryptor = v17;
      goto LABEL_41;
    }
  }

  return 0;
}

void *CGPDFSourceCreateCopy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a3 | a2) < 0)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = v3 - a2;
  if (v3 < a2)
  {
    v4 = 0;
  }

  if (a3 + a2 > v3 && v3 != -1)
  {
    a3 = v4;
  }

  return CGPDFSourceCreate(*(a1 + 40), *(a1 + 24) + a2, a3);
}

CGPDFObjectRef get_filter_object(CGPDFDictionary *a1, int a2)
{
  value = 0;
  if (CGPDFDictionaryGetObject(a1, "Filter", &value))
  {
    return value;
  }

  if (!a2)
  {
    return 0;
  }

  if (CGPDFDictionaryGetObject(a1, "F", &value))
  {
    return value;
  }

  return 0;
}

uint64_t filter_kind_from_name(const char *a1)
{
  if (!a1)
  {
    pdf_error("filter name cannot be null.");
    return 0;
  }

  if (!strcmp(a1, "ASCIIHexDecode") || !strcmp(a1, "AHx"))
  {
    return 1;
  }

  if (!strcmp(a1, "ASCII85Decode") || !strcmp(a1, "A85"))
  {
    return 2;
  }

  if (!strcmp(a1, "CCITTFaxDecode") || !strcmp(a1, "CCF"))
  {
    return 3;
  }

  if (!strcmp(a1, "DCTDecode") || !strcmp(a1, "DCT"))
  {
    return 4;
  }

  if (!strcmp(a1, "FlateDecode"))
  {
    return 5;
  }

  v2 = *a1;
  if (v2 == 70 && a1[1] == 108 && !a1[2])
  {
    return 5;
  }

  if (!strcmp(a1, "JBIG2Decode"))
  {
    return 6;
  }

  if (!strcmp(a1, "LZWDecode") || !strcmp(a1, "LZW"))
  {
    return 7;
  }

  if (!strcmp(a1, "RunLengthDecode") || v2 == 82 && a1[1] == 76 && !a1[2])
  {
    return 8;
  }

  if (!strcmp(a1, "JPXDecode"))
  {
    return 9;
  }

  if (strcmp(a1, "Crypt"))
  {
    return 0;
  }

  return 10;
}

_BYTE *add_filter(uint64_t a1, void *a2, const char *a3, CGPDFDictionary *a4, int *a5)
{
  if (!a3)
  {
    pdf_error("filter name cannot be null.");
    return 0;
  }

  v9 = filter_kind_from_name(a3);
  v10 = 0;
  if (v9 <= 5)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        if (a5)
        {
          *a5 = 0;
        }

        v26 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040239958B0uLL);
        if (v26)
        {
          v27 = v26;
          v26[3] = 0;
          *(v26 + 2) = 0x6C000000000;
          v26[6] = 0x10000;
          v26[7] = 0;
          if (a4)
          {
            value = 0;
            LOBYTE(v61) = 0;
            if (CGPDFDictionaryGetInteger(a4, "K", &value))
            {
              if (value == value)
              {
                v27[3] = value;
              }

              else
              {
                pdf_error("/%s is outside the range of allowed values.", "K");
              }
            }

            if (CGPDFDictionaryGetBoolean(a4, "EndOfLine", &v61))
            {
              *(v27 + 24) = v61 != 0;
            }

            if (CGPDFDictionaryGetBoolean(a4, "EncodedByteAlign", &v61))
            {
              *(v27 + 25) = v61 != 0;
            }

            if (CGPDFDictionaryGetInteger(a4, "Columns", &value))
            {
              if (value >> 31)
              {
                pdf_error("/%s is outside the range of allowed values.", "Columns");
              }

              else
              {
                v27[5] = value;
              }
            }

            if (CGPDFDictionaryGetInteger(a4, "Rows", &value))
            {
              if (value >> 31)
              {
                pdf_error("/%s is outside the range of allowed values.", "Rows");
              }

              else
              {
                v27[4] = value;
              }
            }

            if (CGPDFDictionaryGetBoolean(a4, "EndOfBlock", &v61))
            {
              *(v27 + 26) = v61 != 0;
            }

            if (CGPDFDictionaryGetBoolean(a4, "BlackIs1", &v61))
            {
              *(v27 + 27) = v61 != 0;
            }

            if (CGPDFDictionaryGetInteger(a4, "DamagedRowsBeforeError", &value))
            {
              if (value >> 31)
              {
                pdf_error("/%s is outside the range of allowed values.", "DamagedRowsBeforeError");
              }

              else
              {
                v27[7] = value;
              }
            }
          }

          v38 = v27[3];
          if (v38 >= 0)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }

          v40 = v38 > 0;
          if (v38 <= 0)
          {
            v41 = 2;
          }

          else
          {
            v41 = 3;
          }

          if (*(v27 + 24))
          {
            v40 = v41;
          }

          if (*(v27 + 25))
          {
            v40 |= 4u;
          }

          if (*(v27 + 26) == 1)
          {
            v40 |= 8u;
            v27[4] = 0;
          }

          if (*(v27 + 27))
          {
            v42 = v40;
          }

          else
          {
            v42 = v40 | 0x10;
          }

          *(v27 + 8) = 0;
          if (a2)
          {
            CFRetain(a2);
          }

          *v27 = a2;
          v43 = v27[5];
          if (v43 > 0x3FFFFFFF)
          {
            goto LABEL_145;
          }

          v44 = malloc_type_calloc(1uLL, 0x50uLL, 0x1090040B0F722C2uLL);
          if (!v44)
          {
            goto LABEL_145;
          }

          v45 = v44;
          v46 = v38 < 0;
          *v44 = v39;
          v44[1] = v42;
          v47 = v43 + 7;
          if (v43 < -7)
          {
            v47 = v43 + 14;
          }

          v44[2] = v47 >> 3;
          v44[3] = v43;
          v48 = v46 | v42;
          v49 = ((v46 | v42) & 1) != 0 ? (2 * v43 + 62) & 0xFFFFFFC0 : v43;
          v50 = malloc_type_malloc(4 * v49 + 12, 0x1000040BDFB0063uLL);
          *(v45 + 4) = v50;
          if (v50)
          {
            *(v45 + 6) = v50;
            v45[14] = v49;
            if (v48)
            {
              v51 = &v50[2 * v49];
              *(v51 + 3) = v45[3];
              v52 = v51 + 6;
              *(v52 + 1) = 0;
            }

            else
            {
              v52 = 0;
            }

            *(v45 + 5) = v52;
            *(v45 + 2) = 0;
            v45[6] = 0;
            *(v27 + 4) = v45;
            *(v45 + 8) = ccitt_fax_filter_getc;
            *(v45 + 9) = a2;
            v55 = v27[5];
            v57 = v55 + 7;
            v56 = v55 < -7;
            v58 = v55 + 14;
            if (!v56)
            {
              v58 = v57;
            }

            Internal = CGPDFSourceCreateInternal(v58 >> 3);
            if (Internal)
            {
              v10 = Internal;
              *(Internal + 209) = 1;
              v60 = *&off_1EF238548;
              *(Internal + 3) = pdf_source_create_ccitt_fax_filter_callbacks;
              *(Internal + 4) = v60;
              Internal[10] = v27;
              return v10;
            }
          }

          else
          {
LABEL_145:
            *(v27 + 4) = 0;
          }

          ccitt_fax_filter_finalize(v27);
        }

        return 0;
      }

      if (v9 != 4)
      {
        if (a5)
        {
          *a5 = 0;
        }

        if (!a2)
        {
          return 0;
        }

        v11 = malloc_type_malloc(0x88uLL, 0x10B004050FB1E12uLL);
        if (!v11)
        {
          return 0;
        }

        v12 = v11;
        *(v11 + 60) = 0u;
        *(v11 + 76) = 0u;
        *(v11 + 27) = 0;
        *(v11 + 92) = 0u;
        *(v11 + 44) = 0u;
        *(v11 + 28) = 0u;
        *(v11 + 12) = 0u;
        *(v11 + 8) = fstream_zalloc;
        *(v11 + 9) = fstream_zfree;
        *v11 = 0;
        *(v11 + 2) = 0;
        v11[114] = 0;
        *(v11 + 56) = 0;
        CFRetain(a2);
        *&v12[1].avail_in = a2;
        v13 = malloc_type_malloc(0xF00uLL, 0x8DFC2B78uLL);
        v12[1].total_in = v13;
        if (!v13)
        {
          goto LABEL_156;
        }

        if (inflateInit_(v12, "1.2.12", 112))
        {
          if (v12->msg)
          {
            pdf_error("FlateDecode: initialization error: %s.");
          }

          else
          {
            pdf_error("FlateDecode: initialization error.");
          }

LABEL_156:
          fstream_release(v12);
          return 0;
        }

        v53 = CGPDFSourceCreateInternal(0x3000uLL);
        v10 = v53;
        if (!v53)
        {
          fstream_release(v12);
          return v10;
        }

        *(v53 + 209) = 1;
        v54 = *off_1EF23F2B8;
        *(v53 + 3) = pdf_source_create_flate_filter_callbacks;
        *(v53 + 4) = v54;
        v53[10] = v12;
        value = 0;
        if (CGPDFDictionaryGetInteger(a4, "Predictor", &value))
        {
          v36 = value;
          goto LABEL_91;
        }

        return v10;
      }

      if (!a5)
      {
        goto LABEL_79;
      }

      v31 = 1;
      goto LABEL_78;
    }

    if (v9 == 1)
    {
      if (a5)
      {
        *a5 = 0;
      }

      v24 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
      if (!v24)
      {
        return 0;
      }

      v18 = v24;
      *(v24 + 8) = 0;
      if (a2)
      {
        CFRetain(a2);
      }

      *v18 = a2;
      v25 = CGPDFSourceCreateInternal(0xF80uLL);
      if (v25)
      {
        v10 = v25;
        v20 = &pdf_source_create_ascii_hex_filter_callbacks;
        goto LABEL_73;
      }
    }

    else
    {
      if (v9 != 2)
      {
        return v10;
      }

      if (a5)
      {
        *a5 = 0;
      }

      v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300404B55CAD2uLL);
      if (!v17)
      {
        return 0;
      }

      v18 = v17;
      *(v17 + 8) = 0;
      if (a2)
      {
        CFRetain(a2);
      }

      *v18 = a2;
      v19 = CGPDFSourceCreateInternal(0xF80uLL);
      if (v19)
      {
        v10 = v19;
        v20 = &pdf_source_create_ascii85_filter_callbacks;
LABEL_73:
        *(v10 + 209) = 1;
        v30 = v20[1];
        *(v10 + 3) = *v20;
        *(v10 + 4) = v30;
        v10[10] = v18;
        return v10;
      }
    }

    goto LABEL_83;
  }

  if (v9 > 7)
  {
    if (v9 != 8)
    {
      if (v9 != 9)
      {
        if (v9 != 10)
        {
          return v10;
        }

        if (a5)
        {
          *a5 = 0;
        }

        value = 0;
        if (!a4 || !CGPDFDictionaryGetName(a4, "Name", &value))
        {
          value = "Identity";
        }

        if (a1)
        {
          v15 = *(a1 + 16);
          if (v15)
          {
            if ((*(a1 + 41) & 1) == 0)
            {
              v16 = *(v15 + 40);
              if (v16)
              {
                return CGPDFSecurityManagerCreateDecryptor(v16, a1, value, a2);
              }
            }
          }
        }

        pdf_error("crypt filter specified without encryption parameters.");
        return 0;
      }

      if (!a5)
      {
LABEL_79:
        if (a2)
        {
          CFRetain(a2);
          return a2;
        }

        return 0;
      }

      v31 = 2;
LABEL_78:
      *a5 = v31;
      goto LABEL_79;
    }

    if (a5)
    {
      *a5 = 0;
    }

    v28 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300404B55CAD2uLL);
    if (!v28)
    {
      return 0;
    }

    v18 = v28;
    *(v28 + 8) = 0;
    if (a2)
    {
      CFRetain(a2);
    }

    *v18 = a2;
    v29 = CGPDFSourceCreateInternal(0xF00uLL);
    if (v29)
    {
      v10 = v29;
      v20 = &pdf_source_create_rle_filter_callbacks;
      goto LABEL_73;
    }

LABEL_83:
    if (*v18)
    {
      CFRelease(*v18);
    }

    v32 = v18;
LABEL_95:
    free(v32);
    return 0;
  }

  if (v9 != 6)
  {
    if (a5)
    {
      *a5 = 0;
    }

    v21 = 1;
    v22 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
    if (!v22)
    {
      return 0;
    }

    v23 = v22;
    v61 = 0;
    value = 0;
    v22[8] = 1;
    if (a4)
    {
      if (CGPDFDictionaryGetInteger(a4, "EarlyChange", &value))
      {
        v21 = value != 0;
        v23[8] = value != 0;
      }

      else
      {
        v21 = v23[8];
      }
    }

    v33 = lzw_decoder_create(a2, v21 & 1);
    *v23 = v33;
    if (v33)
    {
      v34 = CGPDFSourceCreateInternal(0xF80uLL);
      v10 = v34;
      if (!v34)
      {
        lzw_decoder_release(*v23);
        free(v23);
        return v10;
      }

      *(v34 + 209) = 1;
      v35 = *&off_1EF2429C0;
      *(v34 + 3) = pdf_source_create_lzw_filter_callbacks;
      *(v34 + 4) = v35;
      v34[10] = v23;
      if (CGPDFDictionaryGetInteger(a4, "Predictor", &v61))
      {
        v36 = v61;
LABEL_91:
        if (v36 == 1)
        {
          return v10;
        }

        if (v36 == 2)
        {
          predictor2_filter = pdf_source_create_predictor2_filter(v10, a4);
        }

        else
        {
          predictor2_filter = pdf_source_create_png_filter(v10, a4);
        }

        a2 = predictor2_filter;
        CFRelease(v10);
        return a2;
      }

      return v10;
    }

    v32 = v23;
    goto LABEL_95;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return pdf_source_create_jbig2_filter(a2, a1, a4);
}

uint64_t flate_filter_refill(uint64_t strm, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (strm)
  {
    v8 = strm;
    if (*(strm + 113) & 1) != 0 || (*(strm + 112))
    {
      return 0;
    }

    else
    {
      if (a3 > 0x3000)
      {
        _CGHandleAssert("fstream_read", 182, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Filters/flate-filter.c", "count <= OUTPUT_BUFFER_SIZE", "Count (%lu) exceeds size of allocated buffer(%d)", a6, a7, a8, a3);
      }

      *(strm + 32) = a3;
      *(strm + 24) = a2;
      if (a3)
      {
        while (1)
        {
          if (!*(v8 + 8) && (*(v8 + 114) & 1) == 0)
          {
            v10 = CGPDFSourceRead(*(v8 + 120), *(v8 + 128), 0xF00uLL, a4, a5, a6, a7, a8);
            if (v10)
            {
              if (v10 >= 0xF01)
              {
                _CGHandleAssert("fstream_read", 193, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Filters/flate-filter.c", "n <= INPUT_BUFFER_SIZE", "Bytes read (%lu) exceeded input buffer size (%d)", v11, v12, v13, v10);
              }
            }

            else
            {
              *(v8 + 114) = 1;
            }

            *(v8 + 8) = v10;
            *v8 = *(v8 + 128);
          }

          v14 = inflate(v8, 0);
          if (v14)
          {
            break;
          }

          if ((*(v8 + 114) & 1) != 0 || !*(v8 + 32))
          {
            return a3 - *(v8 + 32);
          }
        }

        if ((v14 + 5) <= 6 && ((1 << (v14 + 5)) & 0x45) != 0)
        {
          *(v8 + 112) = 1;
        }

        else
        {
          if (*(v8 + 48))
          {
            pdf_error("FlateDecode: decoding error: %s.");
          }

          else
          {
            pdf_error("FlateDecode: decoding error.");
          }

          *(v8 + 113) = 1;
        }
      }

      return a3 - *(v8 + 32);
    }
  }

  return strm;
}

void pdf_scanner_handle_xname(uint64_t a1)
{
  v16 = 0;
  operator_name_string = pdf_lexer_get_operator_name_string(*(a1 + 64), &v16);
  v3 = *(a1 + 72);
  v15 = 0;
  v4 = v16;
  v5 = CGPDFGetOperatorForName(operator_name_string, v16, &v15);
  if (v5)
  {
    v6 = *(*(a1 + 24) + 8 * v5);
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *(a1 + 136);
    if (!v7 || *(v7 + 8))
    {
LABEL_5:
      v6(a1, *(a1 + 16));
      v8 = *(a1 + 72);
      v9 = v3 - v8;
      if (v3 > v8)
      {
        v10 = 40 * v8;
        do
        {
          v11 = *(a1 + 80) + v10;
          if ((*(v11 + 8) - 5) <= 4)
          {
            pdf_object_release_compound_value(v11);
          }

          v10 += 40;
          --v9;
        }

        while (v9);
        v8 = *(a1 + 72);
      }

      goto LABEL_19;
    }

    if (operator_name_string)
    {
      if (!strncmp(operator_name_string, "EMC", v4))
      {
        goto LABEL_5;
      }

      if (!strncmp(operator_name_string, "q", v4))
      {
        goto LABEL_5;
      }

      v12 = strncmp(operator_name_string, "Q", v4);
      v8 = v3;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    else
    {
LABEL_18:
      v8 = v3;
    }

LABEL_19:
    v13 = v15 - v3 + v8;
    if (v13 >= 1)
    {
      do
      {
        if (v8 < 1)
        {
          break;
        }

        v14 = *(a1 + 80) + 40 * v8;
        if ((*(v14 - 32) - 5) <= 4)
        {
          pdf_object_release_compound_value(v14 - 40);
          v8 = *(a1 + 72);
        }

        *(a1 + 72) = --v8;
        --v13;
      }

      while (v13);
    }

    return;
  }

  if (!*(a1 + 88))
  {
  }
}

const char *pdf_lexer_get_operator_name_string(uint64_t a1, size_t *a2)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    v3 = *(a1 + 64);
    *a2 = *(a1 + 72);
  }

  else if (v2)
  {
    return 0;
  }

  else
  {
    v3 = *(*(a1 + 48) + 32);
    *a2 = strlen(v3);
  }

  return v3;
}

void CGPDFDrawingContextSaveGState(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (*(a1 + 40) >= v2)
    {
      *(a1 + 48) = 2 * v2;
      *(a1 + 56) = malloc_type_realloc(*(a1 + 56), 16 * v2, 0x2004093837F09uLL);
      if (v2 < *(a1 + 48))
      {
        do
        {
          v3 = CGPDFGStateCreate();
          v4 = *(a1 + 48);
          *(*(a1 + 56) + 8 * v2++) = v3;
        }

        while (v2 < v4);
      }
    }

    CGPDFGStateCopyProperties(*(*(a1 + 56) + 8 * *(a1 + 40)), *(a1 + 32));
    v5 = *(a1 + 40);
    *(a1 + 32) = *(*(a1 + 56) + 8 * v5);
    *(a1 + 40) = v5 + 1;
    v6 = *(a1 + 88);
    if (v6)
    {

      CGContextSaveGState(v6);
    }
  }
}

void CGPDFGStateReleaseProperties(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[21];
    if (v4)
    {
      text_layout_reset(v2[21]);
      free(v4);
    }

    v5 = v2[22];
    if (v5)
    {
      text_layout_reset(v2[22]);
      free(v5);
    }

    free(v2);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 184);
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    free(v9);
  }

  v10 = *(a1 + 208);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 240);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 248);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 256);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 280);
  if (v14)
  {
    CFRelease(v14);
  }

  free(*(a1 + 72));
  v15 = *(a1 + 80);
  if (v15)
  {

    CFRelease(v15);
  }
}

uint64_t CGPDFDrawingContextRestoreGState(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 56) && *(result + 40) >= 2uLL)
    {
      CGPDFGStateReleaseProperties(*(result + 32));
      v2 = v1[5];
      v1[4] = *(v1[7] + 8 * v2 - 16);
      v1[5] = v2 - 1;
      v3 = v1[11];
      if (v3)
      {
        CGContextRestoreGState(v3);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CGPDFScannerPopName(CGPDFScannerRef scanner, const char **value)
{
  v2 = *(scanner + 18);
  if (v2 <= 0)
  {
    pdf_error("stack underflow.", value);
    return 0;
  }

  else
  {
    v3 = *(scanner + 10) + 40 * v2;
    *(scanner + 18) = v2 - 1;
    if (v3 == 40 || *(v3 - 32) != 5)
    {
      return 0;
    }

    else
    {
      if (value)
      {
        *value = *(v3 - 8);
      }

      return 1;
    }
  }
}

void *CGPDFContentStreamGetExtGState(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = *MEMORY[0x1E695E480];
    v5 = *MEMORY[0x1E695E498];
    do
    {
      v6 = *(v3 + 32);
      if (v6)
      {
        v7 = a2 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        os_unfair_lock_lock((v6 + 80));
        v8 = CFStringCreateWithCStringNoCopy(v4, a2, 0x600u, v5);
        v9 = *(v6 + 64);
        if (v8)
        {
          if (v9)
          {
            Value = CFDictionaryGetValue(v9, v8);
            if (Value)
            {
              goto LABEL_13;
            }
          }
        }

        resource = get_resource(v6, "ExtGState", a2);
        if (resource && *(resource + 2) == 8)
        {
          Value = table_set_value((v6 + 64), v8, *(resource + 4));
LABEL_13:
          CFRelease(v8);
          os_unfair_lock_unlock((v6 + 80));
          if (Value)
          {
            return Value;
          }

          goto LABEL_16;
        }

        CFRelease(v8);
        os_unfair_lock_unlock((v6 + 80));
      }

LABEL_16:
      v3 = *(v3 + 40);
    }

    while (v3);
  }

  return 0;
}

void *table_set_value(__CFDictionary **a1, void *key, void *value)
{
  result = 0;
  if (key && value)
  {
    Mutable = *a1;
    if (!*a1)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      *a1 = Mutable;
    }

    CFDictionarySetValue(Mutable, key, value);
    return value;
  }

  return result;
}

BOOL CGPDFDictionaryGetNumber(CGPDFDictionaryRef dict, const char *key, CGPDFReal *value)
{
  valuea = 0;
  Object = CGPDFDictionaryGetObject(dict, key, &valuea);
  if (Object)
  {
    if (valuea)
    {
      v5 = *(valuea + 2);
      switch(v5)
      {
        case 12:
          goto LABEL_6;
        case 4:
          v6 = *(valuea + 4);
          if (!value)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 3:
LABEL_6:
          v6 = *(valuea + 4);
          if (!value)
          {
LABEL_8:
            LOBYTE(Object) = 1;
            return Object;
          }

LABEL_7:
          *value = v6;
          goto LABEL_8;
      }
    }

    LOBYTE(Object) = 0;
  }

  return Object;
}

BOOL CGPDFDictionaryGetBoolean(CGPDFDictionaryRef dict, const char *key, CGPDFBoolean *value)
{
  valuea = 0;
  Object = CGPDFDictionaryGetObject(dict, key, &valuea);
  if (Object)
  {
    if (valuea && *(valuea + 2) == 2)
    {
      if (value)
      {
        *value = *(valuea + 32);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

void CGPDFGStateSetFillAlpha(uint64_t a1, CGFloat a2)
{
  if (a1)
  {
    *(a1 + 216) = a2;
    FillColor = CGPDFGStateGetFillColor(a1);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(FillColor, a2);
    CGPDFGStateSetFillColor(a1, CopyWithAlpha);
    if (CopyWithAlpha)
    {

      CFRelease(CopyWithAlpha);
    }
  }
}

uint64_t CGPDFGStateGetFillColor(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 56);
    if (!result)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      *(v1 + 56) = CGColorSpaceCopyDefaultColor(DeviceGray);
      CGColorSpaceRelease(DeviceGray);
      return *(v1 + 56);
    }
  }

  return result;
}

void CGPDFGStateSetFillColor(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 56);
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

      *(a1 + 56) = cf;
    }
  }
}

void pdf_object_release_compound_value(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 6)
  {
    if (v1 == 5)
    {
      free(*(a1 + 32));
    }

    else if (v1 == 6)
    {
      v2 = *(a1 + 32);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    return;
  }

  switch(v1)
  {
    case 7:
      v2 = *(a1 + 32);
      if (!v2)
      {
        return;
      }

      goto LABEL_6;
    case 8:
      v2 = *(a1 + 32);
      if (!v2)
      {
        return;
      }

LABEL_6:
      CFRelease(v2);
      return;
    case 9:
      v2 = *(a1 + 32);
      if (v2)
      {
        goto LABEL_6;
      }

      break;
  }
}

const void *CGPDFResourcesCopyXObject(uint64_t a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a2, 0x600u, *MEMORY[0x1E695E498]);
    v6 = *(a1 + 40);
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
        goto LABEL_8;
      }
    }

    resource = get_resource(a1, "XObject", a2);
    if (resource)
    {
      value = 0;
      if (*(resource + 2) == 9)
      {
        v9 = *(resource + 4);
        if (v9)
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = 0;
        }

        if (!CGPDFDictionaryGetName(v10, "Subtype", &value))
        {
          goto LABEL_19;
        }

        v11 = value;
        if (!strcmp(value, "Image"))
        {
          v13 = 0;
        }

        else
        {
          if (strcmp(v11, "Form"))
          {
            goto LABEL_19;
          }

          v18 = 0;
          if (CGPDFDictionaryGetObject(v10, "Group", &v18))
          {
            v13 = 1;
            if (v18)
            {
              if (*(v18 + 2) == 8)
              {
                v13 = 2;
              }

              else
              {
                v13 = 1;
              }
            }
          }

          else
          {
            v13 = 1;
          }
        }

        if (CGPDFXObjectGetTypeID_onceToken != -1)
        {
          dispatch_once(&CGPDFXObjectGetTypeID_onceToken, &__block_literal_global_19469);
        }

        cftype = pdf_create_cftype();
        if (cftype)
        {
          v15 = cftype;
          *(cftype + 16) = v13;
          *(cftype + 24) = v9;
          *(cftype + 104) = 0;
          pthread_mutex_init((cftype + 32), 0);
          v16 = table_set_value((a1 + 40), v5, v15);
          v2 = v16;
          if (v16)
          {
            CFRelease(v16);
          }

LABEL_8:
          CFRelease(v5);
          CFRetain(v2);
LABEL_20:
          os_unfair_lock_unlock((a1 + 80));
          return v2;
        }
      }
    }

LABEL_19:
    CFRelease(v5);
    v2 = 0;
    goto LABEL_20;
  }

  return v2;
}

uint64_t __CGPDFXObjectGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFXObjectGetTypeID_class);
  CGPDFXObjectGetTypeID_id = result;
  return result;
}

uint64_t CGPDFXObjectGetValue(uint64_t a1)
{
  pthread_mutex_lock((a1 + 32));
  if (!*(a1 + 96))
  {
    v2 = *(a1 + 16);
    if (v2 == 2)
    {
      v3 = CGPDFGroupCreate(*(a1 + 24));
    }

    else if (v2 == 1)
    {
      v3 = CGPDFFormCreate(*(a1 + 24));
    }

    else
    {
      if (v2)
      {
        abort();
      }

      v3 = CGPDFImageCreate(*(a1 + 24));
    }

    *(a1 + 96) = v3;
  }

  pthread_mutex_unlock((a1 + 32));
  return *(a1 + 96);
}

char *CGPDFGroupCreate(CGPDFDictionary *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x102004049A0DE55uLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    __s1 = 0;
    value = 0;
    dict = 0;
    v10 = 0;
    *v8 = 0;
    *v2 = a1;
    if (a1)
    {
      a1 = *(a1 + 6);
    }

    if (CGPDFDictionaryGetInteger(a1, "FormType", &value) && value != 1)
    {
LABEL_20:
      CGColorSpaceRelease(*(v2 + 12));
      free(v2);
      return 0;
    }

    if (!CGPDFDictionaryGetRect(a1, "BBox", v2 + 1))
    {
      goto LABEL_20;
    }

    if (CGPDFDictionaryGetNumbers(a1, "Matrix", v13, 6))
    {
      v3 = v13[1];
      *(v2 + 40) = v13[0];
      *(v2 + 56) = v3;
      v4 = v13[2];
    }

    else
    {
      *(v2 + 40) = *&CGAffineTransformIdentity.a;
      *(v2 + 56) = *&CGAffineTransformIdentity.c;
      v4 = *&CGAffineTransformIdentity.tx;
    }

    *(v2 + 72) = v4;
    if (!CGPDFDictionaryGetDictionary(a1, "Resources", v2 + 11))
    {
      *(v2 + 11) = 0;
    }

    if (!CGPDFDictionaryGetDictionary(a1, "Group", &dict))
    {
      goto LABEL_20;
    }

    if (!CGPDFDictionaryGetName(dict, "S", &__s1))
    {
      goto LABEL_20;
    }

    if (strcmp(__s1, "Transparency"))
    {
      goto LABEL_20;
    }

    v2[104] = 0;
    if (CGPDFDictionaryGetBoolean(dict, "I", &v8[1]))
    {
      v2[104] = v8[1] != 0;
    }

    v2[105] = 0;
    if (CGPDFDictionaryGetBoolean(dict, "K", v8))
    {
      v2[105] = v8[0] != 0;
    }

    *(v2 + 12) = 0;
    if (CGPDFDictionaryGetObject(dict, "CS", &v10))
    {
      v6 = CGPDFCreateColorSpace(v10);
      *(v2 + 12) = v6;
      Type = CGColorSpaceGetType(v6);
      if ((Type - 7) >= 3)
      {
        if (Type == 6)
        {
          if (CGColorSpaceGetModel(*(v2 + 12)) < kCGColorSpaceModelLab)
          {
            return v2;
          }
        }

        else if (Type != 5)
        {
          return v2;
        }
      }

      pdf_error("invalid group attributes color space.");
      goto LABEL_20;
    }
  }

  return v2;
}

const void *CGPDFObjectCopyAssociation(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 == 9)
  {
    v8 = *(*(a1 + 32) + 48);
  }

  else
  {
    if (v3 != 8)
    {
      if (v3 == 7)
      {
        v4 = *(a1 + 32);
        if (v4)
        {
          pthread_mutex_lock((v4 + 72));
          Object = CGPDFAssociationGetObject(*(v4 + 64), a2);
          v6 = Object;
          if (Object)
          {
            CFRetain(Object);
          }

          pthread_mutex_unlock((v4 + 72));
          return v6;
        }
      }

      return 0;
    }

    v8 = *(a1 + 32);
  }

  return CGPDFDictionaryCopyAssociation(v8, a2);
}

BOOL CGPDFArrayGetName(CGPDFArrayRef array, size_t index, const char **value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea && *(valuea + 2) == 5)
    {
      if (value)
      {
        *value = *(valuea + 4);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

uint64_t CGPDFAssociationGetObject(uint64_t result, const char *a2)
{
  if (result)
  {
    v2 = result;
    if (!a2)
    {
      return *v2;
    }

    v3 = *(result + 8);
    if (v3 == a2 || !strcmp(v3, a2))
    {
      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGContextClipToMask(CGContextRef c, CGRect rect, CGImageRef mask)
{
  if (!c)
  {
    v21 = 0;
LABEL_25:

    handle_invalid_context("CGContextClipToMask", v21, v3, v4, v5, v6, v7, v8);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v21 = c;
    goto LABEL_25;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    v19 = mask;
    if (!mask)
    {
      goto LABEL_33;
    }

    if ((*(mask + 39) & 2) != 0)
    {
      mask_from_image = 0;
    }

    else
    {
      mask_from_image = create_mask_from_image(mask, mask, v3, v4, v5, v6, v7, v8);
      v19 = mask_from_image;
      if (!mask_from_image)
      {
LABEL_33:
        v27 = *(c + 21);
        if (v27)
        {
          CFRelease(v27);
          *(c + 21) = 0;
        }

        return;
      }
    }

    v22 = *(c + 12);
    v23 = malloc_type_malloc(0x60uLL, 0x10200403191E22BuLL);
    *v23 = 1;
    v24 = *(v22 + 56);
    v25 = *(v22 + 40);
    *(v23 + 8) = *(v22 + 24);
    *(v23 + 24) = v25;
    *(v23 + 40) = v24;
    CFRetain(v19);
    *(v23 + 7) = v19;
    *(v23 + 8) = x;
    *(v23 + 9) = y;
    *(v23 + 10) = width;
    *(v23 + 11) = height;
    v26 = CGClipCreateWithMask(v23, HIBYTE(*(*(v22 + 120) + 4)) & 1);
    CGClipMaskRelease(v23);
    if (v26)
    {
      maybeCopyClipState(v22);
      CGClipStackAddClip(*(v22 + 112), v26);
      CGClipRelease(v26);
    }

    if (mask_from_image)
    {
      CFRelease(mask_from_image);
    }

    goto LABEL_33;
  }
}

void *create_mask_from_image(_DWORD *image, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  if (image)
  {
    v9 = image[9];
    if ((v9 & 0x2000000) != 0)
    {
      _CGHandleAssert("create_mask_from_image", 675, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Context/CGContextPath.c", "CGImageIsMask(image) == false", "image is not a mask", a6, a7, a8, v21);
    }

    v10 = *(image + 7);
    v11 = (v9 >> 26) & 1;
    v12 = (v9 >> 27) & 1;
  }

  else
  {
    LOBYTE(v11) = 0;
    v10 = 0;
    LOBYTE(v12) = 0;
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (CGColorSpaceGetModel(ColorSpace) || (v11 & 1) != 0 || (v12 & 1) != 0)
  {
    if (get_masking_options_predicate != -1)
    {
      dispatch_once(&get_masking_options_predicate, &__block_literal_global_14827);
    }

    v18 = get_masking_options_options;

    return CGColorTransformConvertImage(image, 0, v18);
  }

  else
  {
    v22 = xmmword_184562A30;
    if (image)
    {
      v14 = *(image + 5);
      v15 = *(image + 6);
      v16 = *(image + 8);
      v17 = *(image + 9);
    }

    else
    {
      v16 = 0;
      v14 = 0;
      v15 = 0;
      v17 = 0;
    }

    DataProviderInternal = CGImageGetDataProviderInternal(image, 0);
    return mask_create(v14, v15, v10, v16, v17, DataProviderInternal, &v22, 1, 4);
  }
}

CGColorSpaceRef create_device_space(const char *a1)
{
  if (!strcmp(a1, "DeviceGray"))
  {

    return CGColorSpaceCreateDeviceGray();
  }

  else if (!strcmp(a1, "DeviceRGB"))
  {

    return CGColorSpaceCreateDeviceRGB();
  }

  else if (!strcmp(a1, "DeviceCMYK"))
  {

    return CGColorSpaceCreateDeviceCMYK();
  }

  else
  {
    return 0;
  }
}

CGColorSpaceRef create_ICCBased(CGPDFArray *a1)
{
  if (!a1 || *(a1 + 3) - *(a1 + 2) != 16)
  {
    return 0;
  }

  v15 = 0;
  value = 0;
  stream = 0;
  if (!CGPDFArrayGetStream(a1, 1uLL, &stream))
  {
    return 0;
  }

  if (stream)
  {
    v1 = *(stream + 6);
  }

  else
  {
    v1 = 0;
  }

  if (!CGPDFDictionaryGetInteger(v1, "N", &value) || value <= 0)
  {
    return 0;
  }

  if (value != 4 && (value & 0x7FFFFFFFFFFFFFFDLL) != 1)
  {
    return 0;
  }

  if (!CGPDFDictionaryGetObject(v1, "Alternate", &v15) || (v4 = CGPDFCreateColorSpace(v15)) == 0)
  {
    switch(value)
    {
      case 4:
        DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
        goto LABEL_25;
      case 3:
        DeviceCMYK = CGColorSpaceCreateDeviceRGB();
        goto LABEL_25;
      case 1:
        DeviceCMYK = CGColorSpaceCreateDeviceGray();
LABEL_25:
        v4 = DeviceCMYK;
        goto LABEL_27;
    }

    v4 = 0;
  }

LABEL_27:
  v6 = malloc_type_malloc(16 * value, 0x100004000313F17uLL);
  if (v6)
  {
    v8 = v6;
    if ((get_array(v1, "Range", v6, 2 * value, 0, v7) & 1) == 0)
    {
      v9 = value;
      if (value >= 1)
      {
        v10 = v8;
        do
        {
          *v10 = xmmword_18439C780;
          v10 += 2;
          --v9;
        }

        while (v9);
      }
    }

    format = CGPDFDataFormatRaw;
    v11 = CGPDFStreamCopyData(stream, &format);
    if (v11)
    {
      v12 = v11;
      if (format)
      {
        CFRelease(v11);
      }

      else
      {
        v13 = CGDataProviderCreateWithCFData(v11);
        CFRelease(v12);
        if (v13)
        {
          ICCBased = CGColorSpaceCreateICCBased(value, v8, v13, v4);
          CGColorSpaceRelease(v4);
          CGDataProviderRelease(v13);
          free(v8);
          return ICCBased;
        }
      }
    }

    CGColorSpaceRelease(v4);
    free(v8);
  }

  else
  {
    CGColorSpaceRelease(v4);
  }

  return 0;
}

CFDictionaryRef __get_masking_options_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGColorTransformCreateMask";
  values = *MEMORY[0x1E695E4D0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  get_masking_options_options = result;
  return result;
}

void *CGColorTransformConvertImage(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  v3 = a1;
  v74 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"kCGColorTransformCreateMask");
      v7 = *MEMORY[0x1E695E4D0];
      v8 = v3 + 36;
      v9 = *(v3 + 9) & 0xC000000;
      v70 = v9 != 0;
      v10 = CFDictionaryGetValue(theDict, @"kCGColorTransformFlattenImage") == v7;
      v11 = Value == v7;
      if (Value == v7)
      {
        if (v9)
        {
          v12 = 0;
        }

        else
        {
          v12 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
        }

        ColorSpace = 0;
        v72 = 0;
        *&valuePtr = 0;
        v71 = kCGInterpolationDefault;
LABEL_38:
        v19 = CFDictionaryGetValue(theDict, @"kCGColorTransformConvertImageWidth");
        if (v19 && !CFNumberGetValue(v19, kCFNumberCFIndexType, &valuePtr))
        {
          *&valuePtr = 0;
        }

        v20 = CFDictionaryGetValue(theDict, @"kCGColorTransformConvertImageHeight");
        if (v20 && !CFNumberGetValue(v20, kCFNumberCFIndexType, &v72))
        {
          v72 = 0;
        }

        v21 = CFDictionaryGetValue(theDict, @"kCGColorTransformConvertImageQuality");
        if (v21 && !CFNumberGetValue(v21, kCFNumberSInt32Type, &v71))
        {
          v71 = kCGInterpolationDefault;
        }

LABEL_47:
        v69 = a2;
        Size = CGImageGetSize(v3);
        if (valuePtr)
        {
          v24 = valuePtr;
        }

        else
        {
          v24 = Size;
        }

        if (v72)
        {
          v25 = v72;
        }

        else
        {
          v25 = v23;
        }

        RenderingIntent = CGImageGetRenderingIntent(v3);
        v26 = v71;
        if (v71 == kCGInterpolationDefault)
        {
          if (CGImageGetShouldInterpolate(v3))
          {
            v26 = kCGInterpolationHigh;
          }

          else
          {
            v26 = kCGInterpolationNone;
          }
        }

        if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelIndexed)
        {
          v26 = kCGInterpolationNone;
        }

        UpscaledComponentType = CGImageGetUpscaledComponentType(v3);
        BitsPerComponent = CGPixelComponentGetBitsPerComponent(UpscaledComponentType, v28, v29, v30, v31, v32, v33, v34);
        AlphaInfo = CGImageGetAlphaInfo(v3);
        if (!v12)
        {
          goto LABEL_65;
        }

        v37 = 0;
        v38 = *(*(v12 + 3) + 48);
        if (v38 <= 2)
        {
          if (v38)
          {
            if (v38 == 1)
            {
              if (v11)
              {
                v39 = 0;
                v40 = 0;
                v41 = 0;
LABEL_67:
                BitsPerComponent = 8;
                v37 = 8;
                goto LABEL_84;
              }

              v39 = v24 * (BitsPerComponent >> 3);
              if (v70)
              {
                v37 = BitsPerComponent;
LABEL_79:
                v49 = CGBitmapContextCreateWithAlpha(0, v24, v25, BitsPerComponent, v37, v39, v12, 0, 72.0, 72.0, theDict);
                if (v49)
                {
                  goto LABEL_86;
                }

                goto LABEL_87;
              }

              v41 = 0;
              v40 = 0;
              v37 = BitsPerComponent;
LABEL_84:
              v51 = CGBitmapContextCreateWithDataAndDictionary(0, v24, v25, BitsPerComponent, v37, v39, v12, v41, 72.0, 72.0, 0, 0, theDict);
              if (v51)
              {
                v49 = v51;
                if (!v40)
                {
                  CGContextErase(v51, v42, v43, v44, v45, v46, v47, v48);
LABEL_89:
                  v52 = v24;
                  v53 = v25;
                  CGContextSetInterpolationQuality(v49, v26);
                  ShouldInterpolate = CGImageGetShouldInterpolate(v3);
                  if (CGImageGetRenderingIntent(v3) != v69 || ColorSpace)
                  {
                    Copy = CGImageCreateCopy(v3);
                    v55 = Copy;
                    *(Copy + 37) = v69;
                    if (ColorSpace)
                    {
                      CGColorSpaceRelease(*(Copy + 18));
                      if (v12)
                      {
                        CFRetain(v12);
                      }

                      v55[18] = v12;
                    }

                    v3 = v55;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v75.origin.x = 0.0;
                  v75.origin.y = 0.0;
                  v75.size.width = v52;
                  v75.size.height = v53;
                  CGContextDrawImage(v49, v75, v3);
                  if (v55)
                  {
                    CFRelease(v55);
                  }

                  Image = CGBitmapContextCreateImage(v49);
                  v3 = Image;
                  if (v12)
                  {
                    v58 = v11;
                  }

                  else
                  {
                    v58 = 0;
                  }

                  if (v58)
                  {
                    valuePtr = xmmword_184562A30;
                    if (Image)
                    {
                      v60 = *(Image + 5);
                      v59 = *(Image + 6);
                      v62 = *(Image + 7);
                      v61 = *(Image + 8);
                      v63 = *(Image + 9);
                    }

                    else
                    {
                      v61 = 0;
                      v59 = 0;
                      v60 = 0;
                      v62 = 0;
                      v63 = 0;
                    }

                    DataProviderInternal = CGImageGetDataProviderInternal(Image, 0);
                    v65 = mask_create(v60, v59, v62, v61, v63, DataProviderInternal, &valuePtr, 1, 4);
                    if (v3)
                    {
                      CFRelease(v3);
                    }

                    v3 = v65;
                  }

                  if (ColorSpace)
                  {
                    CGColorSpaceRelease(v3[18]);
                    v3[18] = ColorSpace;
                  }

                  if (ShouldInterpolate)
                  {
                    v66 = 0x1000000;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  *(v3 + 9) = v66 & 0xFFFF00FF | (RenderingIntent << 8) | *(v3 + 9) & 0xFEFF00FF;
                  CFRelease(v49);
                  goto LABEL_115;
                }

LABEL_86:
                CGContextClear(v49, v42, v43, v44, v45, v46, v47, v48);
                goto LABEL_89;
              }

LABEL_87:
              v3 = 0;
LABEL_115:
              CGColorSpaceRelease(v12);
              CGColorSpaceRelease(ColorSpace);
              return v3;
            }

LABEL_73:
            v41 = 0;
            BitsPerComponent = 0;
            v39 = 0;
LABEL_83:
            v40 = v70;
            goto LABEL_84;
          }

LABEL_65:
          if (v11)
          {
            v39 = 0;
            v41 = 7;
            v40 = 1;
            goto LABEL_67;
          }

          BitsPerComponent = 0;
          v37 = 0;
          v39 = 0;
          v41 = 0;
          goto LABEL_83;
        }

        if (v38 != 3)
        {
          if (v38 == 4)
          {
            v37 = 4 * BitsPerComponent;
            v39 = v24 * ((BitsPerComponent >> 1) & 0x1C);
            if (v70)
            {
              goto LABEL_79;
            }

            v41 = 0;
            v40 = 0;
            goto LABEL_84;
          }

          goto LABEL_73;
        }

        v37 = 4 * BitsPerComponent;
        v39 = v24 * ((BitsPerComponent >> 1) & 0x1C);
        if (v70)
        {
          if ((v8[3] & 4) == 0)
          {
LABEL_76:
            v40 = 1;
            v41 = 1;
            goto LABEL_84;
          }

          v41 = AlphaInfo;
          if (AlphaInfo == kCGImageAlphaFirst)
          {
            v41 = 2;
            goto LABEL_123;
          }

          if (AlphaInfo == kCGImageAlphaLast)
          {
            goto LABEL_76;
          }

          v50 = 1;
          if (AlphaInfo)
          {
LABEL_123:
            v40 = 1;
            goto LABEL_84;
          }
        }

        else
        {
          v50 = 5;
        }

        v41 = v50;
        goto LABEL_83;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v8 = (a1 + 36);
      v70 = (*(a1 + 39) & 0xC) != 0;
    }

    ColorSpace = CGImageGetColorSpace(v3);
    if (CGColorSpaceSupportsOutput(ColorSpace) && CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelLab)
    {
      if (!ColorSpace)
      {
        goto LABEL_26;
      }

      CFRetain(ColorSpace);
      v12 = ColorSpace;
    }

    else
    {
      if (!v10)
      {
        if (ColorSpace)
        {
          CFRetain(ColorSpace);
          v14 = *(*(ColorSpace + 3) + 48);
          switch(v14)
          {
            case 4:
              v15 = @"kCGColorSpaceGenericCMYK";
              goto LABEL_32;
            case 3:
              v15 = @"kCGColorSpaceSRGB";
              goto LABEL_32;
            case 1:
              v15 = @"kCGColorSpaceGenericGrayGamma2_2";
LABEL_32:
              v12 = CGColorSpaceCreateWithName(v15);
              goto LABEL_37;
          }
        }

LABEL_26:
        v12 = 0;
        goto LABEL_37;
      }

      while (1)
      {
        Type = CGColorSpaceGetType(ColorSpace);
        if (Type != 7)
        {
          break;
        }

        ColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
      }

      if (Type == 8)
      {
        ColorSpace = CGColorSpaceGetAlternateColorSpace(ColorSpace);
      }

      if (!ColorSpace)
      {
        goto LABEL_26;
      }

      v17 = *(*(ColorSpace + 3) + 48);
      switch(v17)
      {
        case 4:
          v18 = @"kCGColorSpaceGenericCMYK";
          break;
        case 3:
          v18 = @"kCGColorSpaceSRGB";
          break;
        case 1:
          v18 = @"kCGColorSpaceGenericGrayGamma2_2";
          break;
        default:
          v12 = 0;
          goto LABEL_36;
      }

      v12 = CGColorSpaceCreateWithName(v18);
    }

LABEL_36:
    ColorSpace = 0;
LABEL_37:
    v72 = 0;
    *&valuePtr = 0;
    v71 = kCGInterpolationDefault;
    if (!theDict)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

  return v3;
}
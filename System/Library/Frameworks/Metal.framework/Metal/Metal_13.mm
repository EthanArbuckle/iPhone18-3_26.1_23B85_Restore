unint64_t **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,0>(unint64_t **result, unint64_t **a2, unint64_t **a3, unint64_t **a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = bswap64(**a2);
  v7 = bswap64(**result);
  if (v6 == v7 && (v6 = bswap64(v4[1]), v7 = bswap64(v5[1]), v6 == v7) && (v6 = bswap64(v4[2]), v7 = bswap64(v5[2]), v6 == v7) && (v6 = bswap64(v4[3]), v7 = bswap64(v5[3]), v6 == v7))
  {
    v8 = 0;
  }

  else if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  v9 = *a3;
  v10 = bswap64(**a3);
  v11 = bswap64(*v4);
  if (v10 != v11 || (v10 = bswap64(v9[1]), v11 = bswap64(v4[1]), v10 != v11) || (v10 = bswap64(v9[2]), v11 = bswap64(v4[2]), v10 != v11) || (v10 = bswap64(v9[3]), v11 = bswap64(v4[3]), v10 != v11))
  {
    if (v10 < v11)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v8 < 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (v12 < 0)
    {
      *a2 = v9;
      *a3 = v4;
      v16 = *a2;
      v17 = *result;
      v18 = bswap64(**a2);
      v19 = bswap64(**result);
      if (v18 == v19 && (v18 = bswap64(v16[1]), v19 = bswap64(v17[1]), v18 == v19) && (v18 = bswap64(v16[2]), v19 = bswap64(v17[2]), v18 == v19) && (v18 = bswap64(v16[3]), v19 = bswap64(v17[3]), v18 == v19))
      {
        v20 = 0;
      }

      else if (v18 < v19)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      if (v20 < 0)
      {
        *result = v16;
        *a2 = v17;
        v4 = *a3;
      }
    }

    else
    {
      v4 = *a3;
    }

    goto LABEL_43;
  }

  v12 = 0;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v12 < 0)
  {
    *result = v9;
    goto LABEL_42;
  }

  *result = v4;
  *a2 = v5;
  v4 = *a3;
  v13 = bswap64(**a3);
  v14 = bswap64(*v5);
  if (v13 == v14 && (v13 = bswap64(v4[1]), v14 = bswap64(v5[1]), v13 == v14) && (v13 = bswap64(v4[2]), v14 = bswap64(v5[2]), v13 == v14) && (v13 = bswap64(v4[3]), v14 = bswap64(v5[3]), v13 == v14))
  {
    v15 = 0;
  }

  else if (v13 < v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (v15 < 0)
  {
    *a2 = v4;
LABEL_42:
    *a3 = v5;
    v4 = v5;
  }

LABEL_43:
  v21 = *a4;
  v22 = bswap64(**a4);
  v23 = bswap64(*v4);
  if (v22 != v23 || (v22 = bswap64(v21[1]), v23 = bswap64(v4[1]), v22 != v23) || (v22 = bswap64(v21[2]), v23 = bswap64(v4[2]), v22 != v23) || (v22 = bswap64(v21[3]), v23 = bswap64(v4[3]), v22 != v23))
  {
    v24 = v22 < v23 ? -1 : 1;
    if (v24 < 0)
    {
      *a3 = v21;
      *a4 = v4;
      v25 = *a3;
      v26 = *a2;
      v27 = bswap64(**a3);
      v28 = bswap64(**a2);
      if (v27 != v28)
      {
        goto LABEL_57;
      }

      v27 = bswap64(v25[1]);
      v28 = bswap64(v26[1]);
      if (v27 == v28 && (v27 = bswap64(v25[2]), v28 = bswap64(v26[2]), v27 == v28) && (v27 = bswap64(v25[3]), v28 = bswap64(v26[3]), v27 == v28))
      {
        v29 = 0;
      }

      else
      {
LABEL_57:
        v29 = v27 < v28 ? -1 : 1;
      }

      if (v29 < 0)
      {
        *a2 = v25;
        *a3 = v26;
        v30 = *a2;
        v31 = *result;
        v32 = bswap64(**a2);
        v33 = bswap64(**result);
        if (v32 == v33 && (v32 = bswap64(v30[1]), v33 = bswap64(v31[1]), v32 == v33) && (v32 = bswap64(v30[2]), v33 = bswap64(v31[2]), v32 == v33) && (v32 = bswap64(v30[3]), v33 = bswap64(v31[3]), v32 == v33))
        {
          v34 = 0;
        }

        else if (v32 < v33)
        {
          v34 = -1;
        }

        else
        {
          v34 = 1;
        }

        if (v34 < 0)
        {
          *result = v30;
          *a2 = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**>(unint64_t **a1, unint64_t **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v15 = *a1;
        v16 = a1[1];
        v17 = bswap64(*v16);
        v18 = bswap64(**a1);
        if (v17 == v18 && (v17 = bswap64(v16[1]), v18 = bswap64(v15[1]), v17 == v18) && (v17 = bswap64(v16[2]), v18 = bswap64(v15[2]), v17 == v18) && (v17 = bswap64(v16[3]), v18 = bswap64(v15[3]), v17 == v18))
        {
          v19 = 0;
        }

        else if (v17 < v18)
        {
          v19 = -1;
        }

        else
        {
          v19 = 1;
        }

        v26 = *(a2 - 1);
        v27 = bswap64(*v26);
        v28 = bswap64(*v16);
        if (v27 == v28 && (v27 = bswap64(v26[1]), v28 = bswap64(v16[1]), v27 == v28) && (v27 = bswap64(v26[2]), v28 = bswap64(v16[2]), v27 == v28) && (v27 = bswap64(v26[3]), v28 = bswap64(v16[3]), v27 == v28))
        {
          v29 = 0;
        }

        else if (v27 < v28)
        {
          v29 = -1;
        }

        else
        {
          v29 = 1;
        }

        if (v19 < 0)
        {
          if (v29 < 0)
          {
            *a1 = v26;
          }

          else
          {
            *a1 = v16;
            a1[1] = v15;
            v46 = *(a2 - 1);
            v47 = bswap64(*v46);
            v48 = bswap64(*v15);
            if (v47 == v48 && (v47 = bswap64(v46[1]), v48 = bswap64(v15[1]), v47 == v48) && (v47 = bswap64(v46[2]), v48 = bswap64(v15[2]), v47 == v48) && (v47 = bswap64(v46[3]), v48 = bswap64(v15[3]), v47 == v48))
            {
              v49 = 0;
            }

            else if (v47 < v48)
            {
              v49 = -1;
            }

            else
            {
              v49 = 1;
            }

            if ((v49 & 0x80000000) == 0)
            {
              return 1;
            }

            a1[1] = v46;
          }

          *(a2 - 1) = v15;
          return 1;
        }

        if ((v29 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v26;
        *(a2 - 1) = v16;
        v30 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v10 = *(a2 - 1);
        v11 = a1[3];
        v12 = bswap64(*v10);
        v13 = bswap64(*v11);
        if (v12 == v13 && (v12 = bswap64(v10[1]), v13 = bswap64(v11[1]), v12 == v13) && (v12 = bswap64(v10[2]), v13 = bswap64(v11[2]), v12 == v13) && (v12 = bswap64(v10[3]), v13 = bswap64(v11[3]), v12 == v13))
        {
          v14 = 0;
        }

        else if (v12 < v13)
        {
          v14 = -1;
        }

        else
        {
          v14 = 1;
        }

        if ((v14 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[3] = v10;
        *(a2 - 1) = v11;
        v42 = a1[2];
        v30 = a1[3];
        v43 = bswap64(*v30);
        v44 = bswap64(*v42);
        if (v43 != v44)
        {
          goto LABEL_91;
        }

        v43 = bswap64(v30[1]);
        v44 = bswap64(v42[1]);
        if (v43 == v44 && (v43 = bswap64(v30[2]), v44 = bswap64(v42[2]), v43 == v44) && (v43 = bswap64(v30[3]), v44 = bswap64(v42[3]), v43 == v44))
        {
          v45 = 0;
        }

        else
        {
LABEL_91:
          v45 = v43 < v44 ? -1 : 1;
        }

        if ((v45 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[2] = v30;
        a1[3] = v42;
        v55 = a1[1];
        v56 = bswap64(*v30);
        v57 = bswap64(*v55);
        if (v56 != v57)
        {
          goto LABEL_149;
        }

        v56 = bswap64(v30[1]);
        v57 = bswap64(v55[1]);
        if (v56 == v57 && (v56 = bswap64(v30[2]), v57 = bswap64(v55[2]), v56 == v57) && (v56 = bswap64(v30[3]), v57 = bswap64(v55[3]), v56 == v57))
        {
          v58 = 0;
        }

        else
        {
LABEL_149:
          v58 = v56 < v57 ? -1 : 1;
        }

        if ((v58 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v30;
        a1[2] = v55;
        break;
      default:
        goto LABEL_22;
    }

    v31 = *a1;
    v32 = bswap64(*v30);
    v33 = bswap64(**a1);
    if (v32 == v33 && (v32 = bswap64(v30[1]), v33 = bswap64(v31[1]), v32 == v33) && (v32 = bswap64(v30[2]), v33 = bswap64(v31[2]), v32 == v33) && (v32 = bswap64(v30[3]), v33 = bswap64(v31[3]), v32 == v33))
    {
      v34 = 0;
    }

    else if (v32 < v33)
    {
      v34 = -1;
    }

    else
    {
      v34 = 1;
    }

    if (v34 < 0)
    {
      *a1 = v30;
      a1[1] = v31;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = bswap64(*v5);
    v8 = bswap64(**a1);
    if (v7 == v8 && (v7 = bswap64(v5[1]), v8 = bswap64(v6[1]), v7 == v8) && (v7 = bswap64(v5[2]), v8 = bswap64(v6[2]), v7 == v8) && (v7 = bswap64(v5[3]), v8 = bswap64(v6[3]), v7 == v8))
    {
      v9 = 0;
    }

    else if (v7 < v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v9 < 0)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_22:
  v20 = a1 + 2;
  v21 = *a1;
  v22 = a1[1];
  v23 = bswap64(*v22);
  v24 = bswap64(**a1);
  if (v23 == v24 && (v23 = bswap64(v22[1]), v24 = bswap64(v21[1]), v23 == v24) && (v23 = bswap64(v22[2]), v24 = bswap64(v21[2]), v23 == v24) && (v23 = bswap64(v22[3]), v24 = bswap64(v21[3]), v23 == v24))
  {
    v25 = 0;
  }

  else if (v23 < v24)
  {
    v25 = -1;
  }

  else
  {
    v25 = 1;
  }

  v35 = *v20;
  v36 = bswap64(**v20);
  v37 = bswap64(*v22);
  if (v36 == v37 && (v36 = bswap64(v35[1]), v37 = bswap64(v22[1]), v36 == v37) && (v36 = bswap64(v35[2]), v37 = bswap64(v22[2]), v36 == v37) && (v36 = bswap64(v35[3]), v37 = bswap64(v22[3]), v36 == v37))
  {
    v38 = 0;
  }

  else if (v36 < v37)
  {
    v38 = -1;
  }

  else
  {
    v38 = 1;
  }

  if (v25 < 0)
  {
    v50 = a1;
    v51 = a1 + 2;
    if (v38 < 0)
    {
      goto LABEL_114;
    }

    *a1 = v22;
    a1[1] = v21;
    v52 = bswap64(*v35);
    v53 = bswap64(*v21);
    if (v52 != v53)
    {
      goto LABEL_141;
    }

    v52 = bswap64(v35[1]);
    v53 = bswap64(v21[1]);
    if (v52 == v53 && (v52 = bswap64(v35[2]), v53 = bswap64(v21[2]), v52 == v53) && (v52 = bswap64(v35[3]), v53 = bswap64(v21[3]), v52 == v53))
    {
      v54 = 0;
    }

    else
    {
LABEL_141:
      v54 = v52 < v53 ? -1 : 1;
    }

    v50 = a1 + 1;
    v51 = a1 + 2;
    if (v54 < 0)
    {
      goto LABEL_114;
    }
  }

  else if (v38 < 0)
  {
    a1[1] = v35;
    *v20 = v22;
    v39 = bswap64(*v35);
    v40 = bswap64(*v21);
    if (v39 != v40)
    {
      goto LABEL_110;
    }

    v39 = bswap64(v35[1]);
    v40 = bswap64(v21[1]);
    if (v39 == v40 && (v39 = bswap64(v35[2]), v40 = bswap64(v21[2]), v39 == v40) && (v39 = bswap64(v35[3]), v40 = bswap64(v21[3]), v39 == v40))
    {
      v41 = 0;
    }

    else
    {
LABEL_110:
      v41 = v39 < v40 ? -1 : 1;
    }

    v50 = a1;
    v51 = a1 + 1;
    if (v41 < 0)
    {
LABEL_114:
      *v50 = v35;
      *v51 = v21;
    }
  }

  v59 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v60 = 0;
  for (i = 24; ; i += 8)
  {
    v62 = *v59;
    v63 = *v20;
    v64 = bswap64(**v59);
    v65 = bswap64(*v63);
    if (v64 != v65 || (v64 = bswap64(v62[1]), v65 = bswap64(v63[1]), v64 != v65) || (v64 = bswap64(v62[2]), v65 = bswap64(v63[2]), v64 != v65) || (v64 = bswap64(v62[3]), v65 = bswap64(v63[3]), v64 != v65))
    {
      v66 = v64 < v65 ? -1 : 1;
      if (v66 < 0)
      {
        v67 = i;
        while (1)
        {
          *(a1 + v67) = v63;
          v68 = v67 - 8;
          if (v67 == 8)
          {
            break;
          }

          v63 = *(a1 + v67 - 16);
          v69 = bswap64(*v62);
          v70 = bswap64(*v63);
          if (v69 == v70 && (v69 = bswap64(v62[1]), v70 = bswap64(v63[1]), v69 == v70) && (v69 = bswap64(v62[2]), v70 = bswap64(v63[2]), v69 == v70) && (v69 = bswap64(v62[3]), v70 = bswap64(v63[3]), v69 == v70))
          {
            v71 = 0;
          }

          else if (v69 < v70)
          {
            v71 = -1;
          }

          else
          {
            v71 = 1;
          }

          v67 = v68;
          if ((v71 & 0x80000000) == 0)
          {
            v72 = (a1 + v68);
            goto LABEL_138;
          }
        }

        v72 = a1;
LABEL_138:
        *v72 = v62;
        if (++v60 == 8)
        {
          break;
        }
      }
    }

    v20 = v59++;
    if (v59 == a2)
    {
      return 1;
    }
  }

  return v59 + 1 == a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,false>(uint64_t result, uint64_t *a2, void **a3, uint64_t a4, char a5)
{
  v6 = a3;
  v7 = result;
LABEL_2:
  v493 = a2 - 1;
  v495 = a2;
  v481 = a2 - 3;
  v482 = a2 - 2;
  while (1)
  {
    v8 = v7;
    v9 = v495;
    v10 = v495 - v8;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(v8, v8 + 1, v493, v6);
        case 4:

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(v8, v8 + 1, v8 + 2, v493, v6);
        case 5:

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(v8, v8 + 1, v8 + 2, v8 + 3, v493, v6);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v219 = *(v495 - 1);
        v220 = *v8;
        v221 = *v6[1];
        v222 = (*v6)[37] + *(*v6 + 70) - (*v6)[37] + *(*v6 + 72);
        v223 = *(v221 + 4 * *v8);
        v224 = (v222 - *(v221 + 4 * v219));
        v225 = (v222 - v223);
        v226 = (v224 - *v224);
        if (*v226 >= 5u && (v227 = v226[2]) != 0)
        {
          v228 = (v224 + v227);
          v229 = *v228;
          v230 = v228 + v229 + 4;
          v231 = *(v228 + v229);
        }

        else
        {
          v230 = 0;
          v231 = 0;
        }

        v356 = (v225 - *v225);
        if (*v356 >= 5u && (v357 = v356[2]) != 0)
        {
          v358 = (v225 + v357);
          v359 = *v358;
          v360 = v358 + v359 + 4;
          v361 = *(v358 + v359);
        }

        else
        {
          v360 = 0;
          v361 = 0;
        }

        if (v361 >= v231)
        {
          v362 = v231;
        }

        else
        {
          v362 = v361;
        }

        result = memcmp(v230, v360, v362);
        if (result)
        {
          if ((result & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (v231 >= v361)
        {
          return result;
        }

        *v8 = v219;
        *(v495 - 1) = v220;
        return result;
      }
    }

    v498 = v8;
    if (v10 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v8 == v495)
      {
        return result;
      }

      v275 = (v10 - 2) >> 1;
      v520 = *v6;
      v488 = v6[1];
      v276 = v275;
      v515 = v495 - v8;
      v503 = v275;
      while (1)
      {
        v277 = v276;
        if (v275 < v276)
        {
          goto LABEL_371;
        }

        v278 = (2 * v276) | 1;
        v279 = &v498[v278];
        v280 = 2 * v276 + 2;
        v494 = v276;
        if (v280 >= v10)
        {
          v281 = *v488;
          v282 = v520[37];
          v509 = v520[36];
          v283 = (*(v520 + 70) - v282 + v509);
        }

        else
        {
          v281 = *v488;
          v282 = v520[37];
          v283 = *(v520 + 70) - v282 + v520[36];
          v284 = (v282 + v283 - *(*v488 + 4 * *v279));
          v285 = (v284 - *v284);
          v509 = v520[36];
          if (*v285 >= 5u && (v286 = v285[2]) != 0)
          {
            v287 = (v284 + v286);
            v288 = *v287;
            v289 = v287 + v288 + 4;
            v290 = *(v287 + v288);
          }

          else
          {
            v289 = 0;
            v290 = 0;
          }

          v291 = (v282 + v283 - *(v281 + 4 * *(v279 + 2)));
          v292 = (v291 - *v291);
          if (*v292 >= 5u && (v293 = v292[2]) != 0)
          {
            v294 = (v291 + v293);
            v295 = *v294;
            v296 = v294 + v295 + 4;
            v297 = *(v294 + v295);
          }

          else
          {
            v296 = 0;
            v297 = 0;
          }

          if (v297 >= v290)
          {
            v298 = v290;
          }

          else
          {
            v298 = v297;
          }

          v299 = memcmp(v289, v296, v298);
          if (!v299)
          {
            v277 = v494;
            if (v290 >= v297)
            {
              goto LABEL_316;
            }

LABEL_315:
            ++v279;
            v278 = v280;
            goto LABEL_316;
          }

          v277 = v494;
          if (v299 < 0)
          {
            goto LABEL_315;
          }
        }

LABEL_316:
        v300 = &v498[v277];
        v301 = *v279;
        v302 = v282 + v283;
        v303 = (v282 + v283 - *(v281 + 4 * *v279));
        v304 = *(v281 + 4 * *v300);
        v305 = (v303 - *v303);
        v492 = *v300;
        if (*v305 >= 5u && (v306 = v305[2]) != 0)
        {
          v307 = (v303 + v306);
          v308 = *v307;
          v309 = v307 + v308 + 4;
          v310 = *(v307 + v308);
        }

        else
        {
          v309 = 0;
          v310 = 0;
        }

        v311 = (v302 - v304);
        v312 = (v311 - *v311);
        if (*v312 >= 5u && (v313 = v312[2]) != 0)
        {
          v314 = (v311 + v313);
          v315 = *v314;
          v316 = v314 + v315 + 4;
          v317 = *(v314 + v315);
        }

        else
        {
          v316 = 0;
          v317 = 0;
        }

        if (v317 >= v310)
        {
          v318 = v310;
        }

        else
        {
          v318 = v317;
        }

        result = memcmp(v309, v316, v318);
        if (result)
        {
          v6 = a3;
          v10 = v515;
          v277 = v494;
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_332;
          }

          goto LABEL_371;
        }

        v319 = v310 >= v317;
        v6 = a3;
        v10 = v515;
        v277 = v494;
        if (v319)
        {
LABEL_332:
          v505 = -v304;
          v510 = v509 - v282;
          while (1)
          {
            v320 = v279;
            *v300 = v301;
            if (v275 < v278)
            {
LABEL_370:
              v6 = a3;
              *v320 = v492;
              v277 = v494;
              goto LABEL_371;
            }

            v321 = 2 * v278;
            v278 = (2 * v278) | 1;
            v279 = &v498[v278];
            v322 = v321 + 2;
            v323 = v520[35];
            if (v322 >= v10)
            {
              v324 = (v323 + v510);
              goto LABEL_350;
            }

            v324 = (v323 + v510);
            v325 = (v282 + v324 - *(v281 + 4 * *v279));
            v326 = (v325 - *v325);
            if (*v326 >= 5u && (v327 = v326[2]) != 0)
            {
              v328 = (v325 + v327);
              v329 = *v328;
              v330 = v328 + v329 + 4;
              v331 = *(v328 + v329);
            }

            else
            {
              v330 = 0;
              v331 = 0;
            }

            v332 = (v282 + v324 - *(v281 + 4 * *(v279 + 2)));
            v333 = (v332 - *v332);
            if (*v333 >= 5u && (v334 = v333[2]) != 0)
            {
              v335 = (v332 + v334);
              v336 = *v335;
              v337 = v335 + v336 + 4;
              v338 = *(v335 + v336);
            }

            else
            {
              v337 = 0;
              v338 = 0;
            }

            v339 = v338 >= v331 ? v331 : v338;
            v340 = memcmp(v330, v337, v339);
            if (v340)
            {
              break;
            }

            v319 = v331 >= v338;
            v275 = v503;
            if (!v319)
            {
              goto LABEL_349;
            }

LABEL_350:
            v301 = *v279;
            v341 = (v282 + v324 - *(v281 + 4 * *v279));
            v342 = (v341 - *v341);
            if (*v342 >= 5u && (v343 = v342[2]) != 0)
            {
              v344 = (v341 + v343);
              v345 = *v344;
              v346 = v344 + v345 + 4;
              v347 = *(v344 + v345);
            }

            else
            {
              v346 = 0;
              v347 = 0;
            }

            v348 = (v282 + v324 + v505);
            v349 = (v348 - *v348);
            if (*v349 >= 5u && (v350 = v349[2]) != 0)
            {
              v351 = (v348 + v350);
              v352 = *v351;
              v353 = v351 + v352 + 4;
              v354 = *(v351 + v352);
            }

            else
            {
              v353 = 0;
              v354 = 0;
            }

            if (v354 >= v347)
            {
              v355 = v347;
            }

            else
            {
              v355 = v354;
            }

            result = memcmp(v346, v353, v355);
            v10 = v515;
            if (!result)
            {
              if (v347 == v354)
              {
                result = 0;
              }

              else
              {
                if (v347 < v354)
                {
                  goto LABEL_370;
                }

                result = 1;
              }
            }

            v300 = v320;
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_370;
            }
          }

          v275 = v503;
          if ((v340 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

LABEL_349:
          ++v279;
          v278 = v322;
          goto LABEL_350;
        }

LABEL_371:
        v276 = v277 - 1;
        if (!v277)
        {
          v363 = v495;
          v364 = v498;
          while (1)
          {
            v496 = v363;
            v365 = 0;
            v366 = *v364;
            v367 = (v10 - 2) >> 1;
            v368 = *v6;
            v516 = *v364;
            v521 = v6[1];
            do
            {
              v369 = v364;
              v370 = &v364[v365];
              v364 = v370 + 1;
              v371 = 2 * v365;
              v365 = (2 * v365) | 1;
              v372 = v371 + 2;
              if (v371 + 2 >= v10)
              {
                goto LABEL_402;
              }

              v373 = v10;
              v376 = *(v370 + 4);
              v375 = v370 + 2;
              v374 = v376;
              v377 = v368[37] + *(v368 + 70) - v368[37] + *(v368 + 72);
              v378 = (v377 - *(*v521 + 4 * *(v375 - 2)));
              v379 = (v378 - *v378);
              if (*v379 >= 5u && (v380 = v379[2]) != 0)
              {
                v381 = (v378 + v380);
                v382 = *v381;
                v383 = v381 + v382 + 4;
                v384 = *(v381 + v382);
              }

              else
              {
                v383 = 0;
                v384 = 0;
              }

              v385 = (v377 - *(*v521 + 4 * v374));
              v386 = (v385 - *v385);
              if (*v386 >= 5u && (v387 = v386[2]) != 0)
              {
                v388 = (v385 + v387);
                v389 = *v388;
                v390 = v388 + v389 + 4;
                v391 = *(v388 + v389);
              }

              else
              {
                v390 = 0;
                v391 = 0;
              }

              if (v391 >= v384)
              {
                v392 = v384;
              }

              else
              {
                v392 = v391;
              }

              result = memcmp(v383, v390, v392);
              if (result)
              {
                v10 = v373;
                if ((result & 0x80000000) == 0)
                {
                  goto LABEL_402;
                }

LABEL_401:
                v364 = v375;
                v365 = v372;
                goto LABEL_402;
              }

              v10 = v373;
              if (v384 < v391)
              {
                goto LABEL_401;
              }

LABEL_402:
              *v369 = *v364;
            }

            while (v365 <= v367);
            v363 = v496 - 1;
            if (v364 == v496 - 1)
            {
              *v364 = v516;
              goto LABEL_442;
            }

            *v364 = *v363;
            *v363 = v516;
            v393 = (v364 - v498 + 8) >> 3;
            v394 = v393 < 2;
            v395 = v393 - 2;
            if (v394)
            {
              goto LABEL_442;
            }

            v517 = v10;
            v396 = v395 >> 1;
            v397 = &v498[v395 >> 1];
            v398 = *v397;
            v399 = *v521;
            v400 = *(*v521 + 4 * *v397);
            v401 = v368[36];
            v522 = v368[37];
            v402 = v522 + (*(v368 + 70) - v522 + v401);
            v403 = (v402 - v400);
            v404 = (v403 - *v403);
            v497 = v496 - 1;
            if (*v404 >= 5u && (v405 = v404[2]) != 0)
            {
              v406 = (v403 + v405);
              v407 = *v406;
              v408 = v406 + v407 + 4;
              v409 = *(v406 + v407);
            }

            else
            {
              v408 = 0;
              v409 = 0;
            }

            v511 = *v364;
            v410 = *(v399 + 4 * *v364);
            v411 = (v402 - v410);
            v412 = (v411 - *v411);
            if (*v412 >= 5u && (v413 = v412[2]) != 0)
            {
              v414 = (v411 + v413);
              v415 = *v414;
              v416 = v414 + v415 + 4;
              v417 = *(v414 + v415);
            }

            else
            {
              v416 = 0;
              v417 = 0;
            }

            if (v417 >= v409)
            {
              v418 = v409;
            }

            else
            {
              v418 = v417;
            }

            result = memcmp(v408, v416, v418);
            if (result)
            {
              v363 = v497;
              v10 = v517;
              if ((result & 0x80000000) == 0)
              {
                goto LABEL_442;
              }
            }

            else
            {
              v363 = v497;
              v10 = v517;
              if (v409 >= v417)
              {
                goto LABEL_442;
              }
            }

            v419 = -v410;
            v420 = v401 - v522;
            do
            {
              v421 = v397;
              *v364 = v398;
              if (!v396)
              {
                break;
              }

              v396 = (v396 - 1) >> 1;
              v397 = &v498[v396];
              v398 = *v397;
              v422 = v522 + (v420 + *(v368 + 70));
              v423 = (v422 - *(v399 + 4 * *v397));
              v424 = (v423 - *v423);
              if (*v424 >= 5u && (v425 = v424[2]) != 0)
              {
                v426 = (v423 + v425);
                v427 = *v426;
                v428 = v426 + v427 + 4;
                v429 = *(v426 + v427);
              }

              else
              {
                v428 = 0;
                v429 = 0;
              }

              v430 = (v422 + v419);
              v431 = (v430 - *v430);
              if (*v431 >= 5u && (v432 = v431[2]) != 0)
              {
                v433 = (v430 + v432);
                v434 = *v433;
                v435 = v433 + v434 + 4;
                v436 = *(v433 + v434);
              }

              else
              {
                v435 = 0;
                v436 = 0;
              }

              if (v436 >= v429)
              {
                v437 = v429;
              }

              else
              {
                v437 = v436;
              }

              result = memcmp(v428, v435, v437);
              if (!result)
              {
                if (v429 >= v436)
                {
                  break;
                }

                result = 0xFFFFFFFFLL;
              }

              v364 = v421;
            }

            while ((result & 0x80000000) != 0);
            *v421 = v511;
            v363 = v497;
            v10 = v517;
LABEL_442:
            v394 = v10-- <= 2;
            v364 = v498;
            v6 = a3;
            if (v394)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = &v8[v10 >> 1];
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(&v8[v10 >> 1], v8, v493, v6);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(v8, &v8[v10 >> 1], v493, v6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(v8 + 1, v12 - 1, v482, v6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(v8 + 2, &v8[v11 + 1], v481, v6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(v12 - 1, v12, &v8[v11 + 1], v6);
      v13 = *v8;
      *v8 = *v12;
      *v12 = v13;
    }

    v14 = *v8;
    v15 = *v6;
    v16 = *v6[1];
    v518 = v16;
    v486 = *v8;
    v487 = a4 - 1;
    v504 = *v6;
    if (a5)
    {
      v17 = v15[37];
      v484 = v15[36];
      v18 = (*(v15 + 70) - v17 + v484);
      v19 = -*(v16 + 4 * v14);
LABEL_32:
      v40 = 0;
      v506 = v17;
      v41 = v17 + v18;
      v513 = v19;
      v42 = (v17 + v18 + v19);
      v43 = (v42 - *v42);
      v44 = *v43;
      do
      {
        v45 = v40;
        v46 = *(v8 + v40 + 8);
        v47 = (v41 - *(v518 + 4 * v46));
        v48 = (v47 - *v47);
        if (*v48 >= 5u && (v49 = v48[2]) != 0)
        {
          v50 = (v47 + v49);
          v51 = *v50;
          v52 = v50 + v51 + 4;
          v53 = *(v50 + v51);
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        if (v44 >= 5 && v43[2])
        {
          v54 = (v42 + v43[2]);
          v55 = *v54;
          v56 = v54 + v55 + 4;
          v57 = *(v54 + v55);
        }

        else
        {
          v56 = 0;
          v57 = 0;
        }

        if (v57 >= v53)
        {
          v58 = v53;
        }

        else
        {
          v58 = v57;
        }

        v59 = memcmp(v52, v56, v58);
        if (!v59)
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = -1;
        }

        v40 = v45 + 8;
      }

      while (v59 < 0);
      v501 = (v8 + v45);
      v60 = v8 + v45 + 8;
      v61 = v493;
      v62 = v518;
      if (v45)
      {
        do
        {
          v63 = v61;
          v64 = (v41 - *(v518 + 4 * *v61));
          v65 = (v64 - *v64);
          if (*v65 >= 5u && (v66 = v65[2]) != 0)
          {
            v67 = (v64 + v66);
            v68 = *v67;
            v69 = v67 + v68 + 4;
            v70 = *(v67 + v68);
          }

          else
          {
            v69 = 0;
            v70 = 0;
          }

          if (v44 >= 5 && v43[2])
          {
            v71 = (v42 + v43[2]);
            v72 = *v71;
            v73 = v71 + v72 + 4;
            v74 = *(v71 + v72);
          }

          else
          {
            v73 = 0;
            v74 = 0;
          }

          if (v74 >= v70)
          {
            v75 = v70;
          }

          else
          {
            v75 = v74;
          }

          v76 = memcmp(v69, v73, v75);
          if (!v76)
          {
            if (v70 == v74)
            {
              v76 = 0;
            }

            else
            {
              if (v70 < v74)
              {
                break;
              }

              v76 = 1;
            }
          }

          v61 = v63 - 1;
        }

        while ((v76 & 0x80000000) == 0);
      }

      else
      {
        v77 = v493;
        do
        {
          v63 = v77 + 1;
          if (v60 >= (v77 + 1))
          {
            break;
          }

          v78 = v77;
          v79 = (v41 - *(v518 + 4 * *v77));
          v80 = (v79 - *v79);
          v63 = v78;
          if (*v80 >= 5u && (v81 = v80[2]) != 0)
          {
            v82 = (v79 + v81);
            v83 = *v82;
            v84 = v82 + v83 + 4;
            v85 = *(v82 + v83);
          }

          else
          {
            v84 = 0;
            v85 = 0;
          }

          if (v44 >= 5 && v43[2])
          {
            v86 = (v42 + v43[2]);
            v87 = *v86;
            v88 = v86 + v87 + 4;
            v89 = *(v86 + v87);
          }

          else
          {
            v88 = 0;
            v89 = 0;
          }

          if (v89 >= v85)
          {
            v90 = v85;
          }

          else
          {
            v90 = v89;
          }

          v91 = memcmp(v84, v88, v90);
          if (!v91)
          {
            if (v85 == v89)
            {
              v91 = 0;
            }

            else
            {
              if (v85 < v89)
              {
                break;
              }

              v91 = 1;
            }
          }

          v77 = v63 - 1;
        }

        while ((v91 & 0x80000000) == 0);
      }

      v491 = v60;
      v92 = v501;
      if (v60 < v63)
      {
        v502 = v484 - v506;
        v93 = *v63;
        v94 = v60;
        v485 = v63;
        v95 = v63;
        do
        {
          *v94 = v93;
          *v95 = v46;
          v96 = v506 + (v502 + *(v504 + 70));
          v97 = (v96 + v513);
          v98 = (v97 - *v97);
          v99 = *v98;
          v100 = v94 + 1;
          do
          {
            v94 = v100;
            v46 = *v100;
            v101 = (v96 - *(v62 + 4 * *v100));
            v102 = (v101 - *v101);
            if (*v102 >= 5u && (v103 = v102[2]) != 0)
            {
              v104 = (v101 + v103);
              v105 = *v104;
              v106 = v104 + v105 + 4;
              v107 = *(v104 + v105);
            }

            else
            {
              v106 = 0;
              v107 = 0;
            }

            if (v99 >= 5 && v98[2])
            {
              v108 = (v97 + v98[2]);
              v109 = *v108;
              v110 = v108 + v109 + 4;
              v111 = *(v108 + v109);
            }

            else
            {
              v110 = 0;
              v111 = 0;
            }

            if (v111 >= v107)
            {
              v112 = v107;
            }

            else
            {
              v112 = v111;
            }

            v113 = memcmp(v106, v110, v112);
            if (!v113)
            {
              if (v107 >= v111)
              {
                break;
              }

              v113 = -1;
            }

            v100 = v94 + 1;
          }

          while (v113 < 0);
          v114 = v95 - 1;
          do
          {
            v95 = v114;
            v93 = *v114;
            v115 = (v96 - *(v518 + 4 * *v114));
            v116 = (v115 - *v115);
            if (*v116 >= 5u && (v117 = v116[2]) != 0)
            {
              v118 = (v115 + v117);
              v119 = *v118;
              v120 = v118 + v119 + 4;
              v121 = *(v118 + v119);
            }

            else
            {
              v120 = 0;
              v121 = 0;
            }

            if (v99 >= 5 && v98[2])
            {
              v122 = (v97 + v98[2]);
              v123 = *v122;
              v124 = v122 + v123 + 4;
              v125 = *(v122 + v123);
            }

            else
            {
              v124 = 0;
              v125 = 0;
            }

            if (v125 >= v121)
            {
              v126 = v121;
            }

            else
            {
              v126 = v125;
            }

            v127 = memcmp(v120, v124, v126);
            if (!v127)
            {
              if (v121 == v125)
              {
                v127 = 0;
              }

              else
              {
                if (v121 < v125)
                {
                  break;
                }

                v127 = 1;
              }
            }

            v114 = v95 - 1;
          }

          while ((v127 & 0x80000000) == 0);
          v62 = v518;
        }

        while (v94 < v95);
        v92 = v94 - 1;
        v63 = v485;
      }

      a4 = v487;
      v6 = a3;
      if (v92 != v498)
      {
        *v498 = *v92;
      }

      *v92 = v486;
      if (v491 < v63)
      {
LABEL_129:
        result = std::__introsort<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,false>(v498, v92, a3, v487, a5 & 1);
        a5 = 0;
        v7 = v92 + 1;
      }

      else
      {
        v128 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *>(v498, v92, a3);
        v7 = v92 + 1;
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *>(v92 + 1, v495, a3);
        if (result)
        {
          a2 = v92;
          v7 = v498;
          if (v128)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v128)
        {
          goto LABEL_129;
        }
      }
    }

    else
    {
      v17 = v15[37];
      v18 = *(v15 + 70) - v17 + v15[36];
      v20 = v17 + v18;
      v21 = (v17 + v18 - *(v16 + 4 * *(v8 - 2)));
      v22 = (v21 - *v21);
      v484 = v15[36];
      if (*v22 >= 5u && (v23 = v22[2]) != 0)
      {
        v24 = (v21 + v23);
        v25 = *v24;
        v26 = v24 + v25 + 4;
        v27 = *(v24 + v25);
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      v28 = *v6[1];
      v29 = *(v16 + 4 * v14);
      v490 = v17 + v18;
      v500 = v20 - v29;
      v30 = (v20 - v29 - *(v20 - v29));
      v31 = *v30;
      if (v31 < 5)
      {
        v32 = v20 - v29 - *(v20 - v29);
      }

      else
      {
        v32 = v20 - v29 - *(v20 - v29);
        v33 = v30[2];
        if (v33)
        {
          v34 = (v500 + v33);
          v35 = *v34;
          v36 = v34 + v35 + 4;
          v37 = *(v34 + v35);
          goto LABEL_26;
        }
      }

      v36 = 0;
      v37 = 0;
LABEL_26:
      v512 = -v29;
      if (v37 >= v27)
      {
        v38 = v27;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v26, v36, v38);
      if (v39)
      {
        if (v39 < 0)
        {
          goto LABEL_31;
        }
      }

      else if (v27 < v37)
      {
LABEL_31:
        v8 = v498;
        v19 = v512;
        goto LABEL_32;
      }

      if (v31 < 5)
      {
        v132 = 0;
        v133 = 0;
        v129 = v32;
      }

      else
      {
        v129 = v32;
        if (*(v32 + 4))
        {
          v130 = (v500 + *(v32 + 4));
          v131 = *v130;
          v132 = v130 + v131 + 4;
          v133 = *(v130 + v131);
        }

        else
        {
          v132 = 0;
          v133 = 0;
        }
      }

      v134 = (v490 - *(v28 + 4 * *v493));
      v135 = (v134 - *v134);
      if (*v135 >= 5u && (v136 = v135[2]) != 0)
      {
        v137 = (v134 + v136);
        v138 = *v137;
        v139 = v137 + v138 + 4;
        v140 = *(v137 + v138);
      }

      else
      {
        v139 = 0;
        v140 = 0;
      }

      if (v140 >= v133)
      {
        v141 = v133;
      }

      else
      {
        v141 = v140;
      }

      result = memcmp(v132, v139, v141);
      v507 = v17;
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_145;
        }
      }

      else if (v133 < v140)
      {
LABEL_145:
        v142 = v498 + 1;
        do
        {
          v7 = v142;
          if (v31 >= 5 && *(v129 + 4))
          {
            v143 = (v500 + *(v129 + 4));
            v144 = *v143;
            v145 = v143 + v144 + 4;
            v146 = *(v143 + v144);
          }

          else
          {
            v145 = 0;
            v146 = 0;
          }

          v147 = (v490 - *(v28 + 4 * *v7));
          v148 = (v147 - *v147);
          if (*v148 >= 5u && (v149 = v148[2]) != 0)
          {
            v150 = (v147 + v149);
            v151 = *v150;
            v152 = v150 + v151 + 4;
            v153 = *(v150 + v151);
          }

          else
          {
            v152 = 0;
            v153 = 0;
          }

          if (v153 >= v146)
          {
            v154 = v146;
          }

          else
          {
            v154 = v153;
          }

          result = memcmp(v145, v152, v154);
          if (!result)
          {
            if (v146 == v153)
            {
              result = 0;
            }

            else
            {
              if (v146 < v153)
              {
                goto LABEL_184;
              }

              result = 1;
            }
          }

          v142 = v7 + 1;
        }

        while ((result & 0x80000000) == 0);
        goto LABEL_184;
      }

      v155 = v498 + 1;
      do
      {
        v7 = v155;
        if (v155 >= v495)
        {
          break;
        }

        if (v31 >= 5 && *(v129 + 4))
        {
          v156 = (v500 + *(v129 + 4));
          v157 = *v156;
          v158 = v156 + v157 + 4;
          v159 = *(v156 + v157);
        }

        else
        {
          v158 = 0;
          v159 = 0;
        }

        v160 = (v490 - *(v28 + 4 * *v7));
        v161 = (v160 - *v160);
        if (*v161 >= 5u && (v162 = v161[2]) != 0)
        {
          v163 = (v160 + v162);
          v164 = *v163;
          v165 = v163 + v164 + 4;
          v166 = *(v163 + v164);
        }

        else
        {
          v165 = 0;
          v166 = 0;
        }

        if (v166 >= v159)
        {
          v167 = v159;
        }

        else
        {
          v167 = v166;
        }

        result = memcmp(v158, v165, v167);
        if (!result)
        {
          if (v159 == v166)
          {
            result = 0;
          }

          else
          {
            if (v159 < v166)
            {
              break;
            }

            result = 1;
          }
        }

        v155 = v7 + 1;
      }

      while ((result & 0x80000000) == 0);
LABEL_184:
      v168 = v129;
      v169 = v495;
      if (v7 < v495)
      {
        v170 = v493;
        do
        {
          v169 = v170;
          if (v31 >= 5 && *(v168 + 4))
          {
            v171 = (v500 + *(v168 + 4));
            v172 = *v171;
            v173 = v171 + v172 + 4;
            v174 = *(v171 + v172);
          }

          else
          {
            v173 = 0;
            v174 = 0;
          }

          v175 = (v490 - *(v28 + 4 * *v169));
          v176 = (v175 - *v175);
          if (*v176 >= 5u && (v177 = v176[2]) != 0)
          {
            v178 = (v175 + v177);
            v179 = *v178;
            v180 = v178 + v179 + 4;
            v181 = *(v178 + v179);
          }

          else
          {
            v180 = 0;
            v181 = 0;
          }

          if (v181 >= v174)
          {
            v182 = v174;
          }

          else
          {
            v182 = v181;
          }

          result = memcmp(v173, v180, v182);
          if (!result)
          {
            if (v174 >= v181)
            {
              break;
            }

            result = 0xFFFFFFFFLL;
          }

          v170 = v169 - 1;
        }

        while ((result & 0x80000000) != 0);
      }

      if (v7 < v169)
      {
        v183 = *v7;
        v184 = *v169;
        do
        {
          *v7 = v184;
          *v169 = v183;
          v185 = v507 + (v484 - v507 + *(v15 + 70));
          v186 = v185 + v512;
          v187 = (v185 + v512 - *(v185 + v512));
          v188 = *v187;
          v189 = v7 + 1;
          do
          {
            v7 = v189;
            v183 = *v189;
            v190 = *(v518 + 4 * *v189);
            if (v188 >= 5 && v187[2])
            {
              v191 = (v186 + v187[2]);
              v192 = *v191;
              v193 = v191 + v192 + 4;
              v194 = *(v191 + v192);
            }

            else
            {
              v193 = 0;
              v194 = 0;
            }

            v195 = (v185 - v190);
            v196 = (v195 - *v195);
            if (*v196 >= 5u && (v197 = v196[2]) != 0)
            {
              v198 = (v195 + v197);
              v199 = *v198;
              v200 = v198 + v199 + 4;
              v201 = *(v198 + v199);
            }

            else
            {
              v200 = 0;
              v201 = 0;
            }

            if (v201 >= v194)
            {
              v202 = v194;
            }

            else
            {
              v202 = v201;
            }

            v203 = memcmp(v193, v200, v202);
            if (!v203)
            {
              if (v194 == v201)
              {
                v203 = 0;
              }

              else
              {
                if (v194 < v201)
                {
                  break;
                }

                v203 = 1;
              }
            }

            v189 = v7 + 1;
          }

          while ((v203 & 0x80000000) == 0);
          v204 = (v169 - 1);
          do
          {
            v169 = v204;
            v184 = *v204;
            v205 = *(v518 + 4 * *v204);
            if (v188 >= 5 && v187[2])
            {
              v206 = (v186 + v187[2]);
              v207 = *v206;
              v208 = v206 + v207 + 4;
              v209 = *(v206 + v207);
            }

            else
            {
              v208 = 0;
              v209 = 0;
            }

            v210 = (v185 - v205);
            v211 = (v210 - *v210);
            if (*v211 >= 5u && (v212 = v211[2]) != 0)
            {
              v213 = (v210 + v212);
              v214 = *v213;
              v215 = v213 + v214 + 4;
              v216 = *(v213 + v214);
            }

            else
            {
              v215 = 0;
              v216 = 0;
            }

            if (v216 >= v209)
            {
              v217 = v209;
            }

            else
            {
              v217 = v216;
            }

            result = memcmp(v208, v215, v217);
            if (!result)
            {
              if (v209 >= v216)
              {
                break;
              }

              result = 0xFFFFFFFFLL;
            }

            v204 = (v169 - 1);
          }

          while ((result & 0x80000000) != 0);
          v15 = v504;
        }

        while (v7 < v169);
      }

      v218 = v7 - 1;
      if (v7 - 1 != v498)
      {
        *v498 = *v218;
      }

      a5 = 0;
      a4 = v487;
      *v218 = v486;
      v6 = a3;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (v8 == v495)
    {
      return result;
    }

    v438 = v8 + 1;
    if (v8 + 1 == v495)
    {
      return result;
    }

    v439 = *v6;
    v440 = *v6[1];
    v441 = (*v6)[37];
    v442 = (*v6)[36] - v441;
    while (1)
    {
      v443 = v8;
      v444 = v438;
      v445 = *(v440 + 4 * v8[1]);
      v446 = v441 + (v442 + *(v439 + 70));
      v447 = (v446 - v445 - *(v446 - v445));
      v499 = v444;
      v523 = v8[1];
      if (*v447 >= 5u && (v448 = v447[2]) != 0)
      {
        v449 = (v446 - v445 + v448);
        v450 = *v449;
        v451 = v449 + v450 + 4;
        v452 = *(v449 + v450);
      }

      else
      {
        v451 = 0;
        v452 = 0;
      }

      v453 = *v443;
      v454 = (v446 - *(v440 + 4 * *v443));
      v455 = (v454 - *v454);
      if (*v455 >= 5u && (v456 = v455[2]) != 0)
      {
        v457 = (v454 + v456);
        v458 = *v457;
        v459 = v457 + v458 + 4;
        v460 = *(v457 + v458);
      }

      else
      {
        v459 = 0;
        v460 = 0;
      }

      if (v460 >= v452)
      {
        v461 = v452;
      }

      else
      {
        v461 = v460;
      }

      result = memcmp(v451, v459, v461);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_480;
        }
      }

      else if (v452 >= v460)
      {
        goto LABEL_480;
      }

      v462 = -v445;
      do
      {
        v463 = v443;
        v465 = *--v443;
        v464 = v465;
        v443[2] = v453;
        v466 = v441 + (v442 + *(v439 + 70));
        v467 = (v466 + v462 - *(v466 + v462));
        if (*v467 >= 5u && (v468 = v467[2]) != 0)
        {
          v469 = (v466 + v462 + v468);
          v470 = *v469;
          v471 = v469 + v470 + 4;
          v472 = *(v469 + v470);
        }

        else
        {
          v471 = 0;
          v472 = 0;
        }

        v473 = (v466 - *(v440 + 4 * v464));
        v474 = (v473 - *v473);
        if (*v474 >= 5u && (v475 = v474[2]) != 0)
        {
          v476 = (v473 + v475);
          v477 = *v476;
          v478 = v476 + v477 + 4;
          v479 = *(v476 + v477);
        }

        else
        {
          v478 = 0;
          v479 = 0;
        }

        if (v479 >= v472)
        {
          v480 = v472;
        }

        else
        {
          v480 = v479;
        }

        result = memcmp(v471, v478, v480);
        if (!result)
        {
          if (v472 >= v479)
          {
            break;
          }

          result = 0xFFFFFFFFLL;
        }

        v453 = v464;
      }

      while ((result & 0x80000000) != 0);
      *v463 = v523;
      v9 = v495;
LABEL_480:
      v8 = v499;
      v438 = v499 + 1;
      if (v499 + 1 == v9)
      {
        return result;
      }
    }
  }

  if (v8 == v495)
  {
    return result;
  }

  v232 = v8 + 1;
  if (v8 + 1 == v495)
  {
    return result;
  }

  v233 = 0;
  v234 = *v6;
  v235 = *v6[1];
  v236 = (*v6)[36];
  v237 = (*v6)[37];
  v238 = v236 - v237;
  v239 = v8;
  while (2)
  {
    v240 = v232;
    v241 = *(v235 + 4 * v239[1]);
    v242 = v237 + (v238 + *(v234 + 70));
    v243 = (v242 - v241 - *(v242 - v241));
    v514 = v239[1];
    v519 = v240;
    if (*v243 >= 5u && (v244 = v243[2]) != 0)
    {
      v245 = (v242 - v241 + v244);
      v246 = *v245;
      v247 = v245 + v246 + 4;
      v248 = *(v245 + v246);
    }

    else
    {
      v247 = 0;
      v248 = 0;
    }

    v249 = *v239;
    v250 = (v242 - *(v235 + 4 * *v239));
    v251 = (v250 - *v250);
    if (*v251 >= 5u && (v252 = v251[2]) != 0)
    {
      v253 = (v250 + v252);
      v254 = *v253;
      v255 = v253 + v254 + 4;
      v256 = *(v253 + v254);
    }

    else
    {
      v255 = 0;
      v256 = 0;
    }

    if (v256 >= v248)
    {
      v257 = v248;
    }

    else
    {
      v257 = v256;
    }

    result = memcmp(v247, v255, v257);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        goto LABEL_295;
      }
    }

    else if (v248 >= v256)
    {
      goto LABEL_295;
    }

    v258 = -v241;
    v508 = v233;
    while (2)
    {
      *(v498 + v233 + 8) = v249;
      if (!v233)
      {
        v259 = v498;
        goto LABEL_294;
      }

      v259 = v239;
      v260 = v237 + (v238 + *(v234 + 70));
      v261 = (v260 + v258 - *(v260 + v258));
      if (*v261 >= 5u && (v262 = v261[2]) != 0)
      {
        v263 = (v260 + v258 + v262);
        v264 = *v263;
        v265 = v263 + v264 + 4;
        v266 = *(v263 + v264);
      }

      else
      {
        v265 = 0;
        v266 = 0;
      }

      v249 = *(v498 + v233 - 8);
      v267 = (v260 - *(v235 + 4 * v249));
      v268 = (v267 - *v267);
      if (*v268 >= 5u && (v269 = v268[2]) != 0)
      {
        v270 = (v267 + v269);
        v271 = *v270;
        v272 = v270 + v271 + 4;
        v273 = *(v270 + v271);
      }

      else
      {
        v272 = 0;
        v273 = 0;
      }

      if (v273 >= v266)
      {
        v274 = v266;
      }

      else
      {
        v274 = v273;
      }

      result = memcmp(v265, v272, v274);
      if (result)
      {
LABEL_290:
        v239 = v259 - 1;
        v233 -= 8;
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_294;
        }

        continue;
      }

      break;
    }

    if (v266 < v273)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_290;
    }

    v259 = (v498 + v233);
LABEL_294:
    *v259 = v514;
    v233 = v508;
LABEL_295:
    v239 = v519;
    v232 = v519 + 1;
    v233 += 8;
    if (v519 + 1 != v495)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, void **a4)
{
  v4 = *a4;
  v5 = *a4[1];
  v88 = *a2;
  v6 = (*a4)[37];
  v89 = (*a4)[36];
  v7 = v6 + (*(*a4 + 70) - v6 + v89);
  v90 = *a1;
  v8 = *(v5 + 4 * *a1);
  v9 = (v7 - *(v5 + 4 * *a2));
  v10 = (v7 - v8);
  v11 = (v9 - *v9);
  v12 = *v11;
  if (v12 >= 5 && v11[2])
  {
    v13 = (v9 + v11[2]);
    v14 = *v13;
    v15 = v13 + v14 + 4;
    v16 = *(v13 + v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = (v10 - *v10);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v19 = (v10 + v18);
    v20 = *v19;
    v21 = v19 + v20 + 4;
    v22 = *(v19 + v20);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (v22 >= v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = v22;
  }

  v24 = memcmp(v15, v21, v23);
  if (v24)
  {
    if (v24 < 0)
    {
LABEL_14:
      v25 = *a3;
      v26 = (v7 - *(v5 + 4 * *a3));
      v27 = (v26 - *v26);
      if (*v27 >= 5u && (v28 = v27[2]) != 0)
      {
        v29 = (v26 + v28);
        v30 = *v29;
        v31 = v29 + v30 + 4;
        v32 = *(v29 + v30);
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      if (v12 >= 5 && v11[2])
      {
        v41 = (v9 + v11[2]);
        v42 = *v41;
        v43 = v41 + v42 + 4;
        v44 = *(v41 + v42);
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      if (v44 >= v32)
      {
        v49 = v32;
      }

      else
      {
        v49 = v44;
      }

      result = memcmp(v31, v43, v49);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
LABEL_35:
          *a1 = v25;
          *a3 = v90;
          return result;
        }
      }

      else if (v32 < v44)
      {
        goto LABEL_35;
      }

      v52 = -v8;
      *a1 = v88;
      *a2 = v90;
      v53 = *a3;
      v54 = v6 + (v89 - v6 + v4[70]);
      v55 = (v54 - *(v5 + 4 * *a3));
      v56 = (v54 + v52);
      v57 = (v55 - *v55);
      if (*v57 >= 5u && (v58 = v57[2]) != 0)
      {
        v59 = (v55 + v58);
        v60 = *v59;
        v61 = v59 + v60 + 4;
        v62 = *(v59 + v60);
      }

      else
      {
        v61 = 0;
        v62 = 0;
      }

      v74 = (v56 - *v56);
      if (*v74 >= 5u && (v75 = v74[2]) != 0)
      {
        v76 = (v56 + v75);
        v77 = *v76;
        v78 = v76 + v77 + 4;
        v79 = *(v76 + v77);
      }

      else
      {
        v78 = 0;
        v79 = 0;
      }

      if (v79 >= v62)
      {
        v86 = v62;
      }

      else
      {
        v86 = v79;
      }

      result = memcmp(v61, v78, v86);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if (v62 >= v79)
      {
        return result;
      }

      *a2 = v53;
      *a3 = v90;
      return result;
    }
  }

  else if (v16 < v22)
  {
    goto LABEL_14;
  }

  v33 = *a3;
  v34 = (v7 - *(v5 + 4 * *a3));
  v35 = (v34 - *v34);
  if (*v35 >= 5u && (v36 = v35[2]) != 0)
  {
    v37 = (v34 + v36);
    v38 = *v37;
    v39 = v37 + v38 + 4;
    v40 = *(v37 + v38);
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  if (v12 >= 5 && v11[2])
  {
    v45 = (v9 + v11[2]);
    v46 = *v45;
    v47 = v45 + v46 + 4;
    v48 = *(v45 + v46);
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  if (v48 >= v40)
  {
    v51 = v40;
  }

  else
  {
    v51 = v48;
  }

  result = memcmp(v39, v47, v51);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v40 >= v48)
  {
    return result;
  }

  *a2 = v33;
  *a3 = v88;
  v63 = *a2;
  v64 = *a1;
  v65 = v6 + (v89 - v6 + v4[70]);
  v66 = (v65 - *(v5 + 4 * *a2));
  v67 = (v65 - *(v5 + 4 * *a1));
  v68 = (v66 - *v66);
  if (*v68 >= 5u && (v69 = v68[2]) != 0)
  {
    v70 = (v66 + v69);
    v71 = *v70;
    v72 = v70 + v71 + 4;
    v73 = *(v70 + v71);
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v80 = (v67 - *v67);
  if (*v80 >= 5u && (v81 = v80[2]) != 0)
  {
    v82 = (v67 + v81);
    v83 = *v82;
    v84 = v82 + v83 + 4;
    v85 = *(v82 + v83);
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  if (v85 >= v73)
  {
    v87 = v73;
  }

  else
  {
    v87 = v85;
  }

  result = memcmp(v72, v84, v87);
  if (!result)
  {
    if (v73 >= v85)
    {
      return result;
    }

    goto LABEL_76;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_76:
    *a1 = v63;
    *a2 = v64;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void **a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(a1, a2, a3, a5);
  v8 = *a4;
  v9 = *a3;
  v10 = *a5;
  v11 = *a5[1];
  v13 = v10[36];
  v12 = v10[37];
  v14 = v12 + (*(v10 + 70) - v12 + v13);
  v15 = (v14 - *(v11 + 4 * *a4));
  v16 = (v14 - *(v11 + 4 * *a3));
  v17 = (v15 - *v15);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v19 = (v15 + v18);
    v20 = *v19;
    v21 = v19 + v20 + 4;
    v22 = *(v19 + v20);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = (v16 - *v16);
  if (*v23 >= 5u && (v24 = v23[2]) != 0)
  {
    v25 = (v16 + v24);
    v26 = *v25;
    v27 = v25 + v26 + 4;
    v28 = *(v25 + v26);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  if (v28 >= v22)
  {
    v29 = v22;
  }

  else
  {
    v29 = v28;
  }

  result = memcmp(v21, v27, v29);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v22 >= v28)
  {
    return result;
  }

  *a3 = v8;
  *a4 = v9;
  v31 = *a3;
  v32 = *a2;
  v33 = v12 + (v13 - v12 + *(v10 + 70));
  v34 = (v33 - *(v11 + 4 * *a3));
  v35 = (v33 - *(v11 + 4 * *a2));
  v36 = (v34 - *v34);
  if (*v36 >= 5u && (v37 = v36[2]) != 0)
  {
    v38 = (v34 + v37);
    v39 = *v38;
    v40 = v38 + v39 + 4;
    v41 = *(v38 + v39);
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v42 = (v35 - *v35);
  if (*v42 >= 5u && (v43 = v42[2]) != 0)
  {
    v44 = (v35 + v43);
    v45 = *v44;
    v46 = v44 + v45 + 4;
    v47 = *(v44 + v45);
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  if (v47 >= v41)
  {
    v48 = v41;
  }

  else
  {
    v48 = v47;
  }

  result = memcmp(v40, v46, v48);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v41 >= v47)
  {
    return result;
  }

  *a2 = v31;
  *a3 = v32;
  v49 = *a2;
  v50 = *a1;
  v51 = v12 + (v13 - v12 + *(v10 + 70));
  v52 = (v51 - *(v11 + 4 * *a2));
  v53 = (v51 - *(v11 + 4 * *a1));
  v54 = (v52 - *v52);
  if (*v54 >= 5u && (v55 = v54[2]) != 0)
  {
    v56 = (v52 + v55);
    v57 = *v56;
    v58 = v56 + v57 + 4;
    v59 = *(v56 + v57);
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v60 = (v53 - *v53);
  if (*v60 >= 5u && (v61 = v60[2]) != 0)
  {
    v62 = (v53 + v61);
    v63 = *v62;
    v64 = v62 + v63 + 4;
    v65 = *(v62 + v63);
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  if (v65 >= v59)
  {
    v66 = v59;
  }

  else
  {
    v66 = v65;
  }

  result = memcmp(v58, v64, v66);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v59 >= v65)
  {
    return result;
  }

  *a1 = v49;
  *a2 = v50;
  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void **a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(a1, a2, a3, a4, a6);
  v9 = *a5;
  v10 = *a4;
  v11 = *a6;
  v12 = *a6[1];
  v13 = v11[36];
  v14 = v11[37];
  v15 = v14 + (*(v11 + 70) - v14 + v13);
  v16 = (v15 - *(v12 + 4 * *a5));
  v17 = (v15 - *(v12 + 4 * *a4));
  v18 = (v16 - *v16);
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v20 = (v16 + v19);
    v21 = *v20;
    v22 = v20 + v21 + 4;
    v23 = *(v20 + v21);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = (v17 - *v17);
  if (*v24 >= 5u && (v25 = v24[2]) != 0)
  {
    v26 = (v17 + v25);
    v27 = *v26;
    v28 = v26 + v27 + 4;
    v29 = *(v26 + v27);
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  if (v29 >= v23)
  {
    v30 = v23;
  }

  else
  {
    v30 = v29;
  }

  result = memcmp(v22, v28, v30);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v23 >= v29)
  {
    return result;
  }

  *a4 = v9;
  *a5 = v10;
  v32 = *a4;
  v33 = *a3;
  v34 = v13 - v14;
  v35 = v14 + (v13 - v14 + *(v11 + 70));
  v36 = (v35 - *(v12 + 4 * *a4));
  v37 = (v35 - *(v12 + 4 * *a3));
  v38 = (v36 - *v36);
  if (*v38 >= 5u && (v39 = v38[2]) != 0)
  {
    v40 = (v36 + v39);
    v41 = *v40;
    v42 = v40 + v41 + 4;
    v43 = *(v40 + v41);
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v44 = (v37 - *v37);
  if (*v44 >= 5u && (v45 = v44[2]) != 0)
  {
    v46 = (v37 + v45);
    v47 = *v46;
    v48 = v46 + v47 + 4;
    v49 = *(v46 + v47);
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  if (v49 >= v43)
  {
    v50 = v43;
  }

  else
  {
    v50 = v49;
  }

  result = memcmp(v42, v48, v50);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v43 >= v49)
  {
    return result;
  }

  *a3 = v32;
  *a4 = v33;
  v51 = *a3;
  v52 = *a2;
  v53 = v14 + (v34 + *(v11 + 70));
  v54 = (v53 - *(v12 + 4 * *a3));
  v55 = (v53 - *(v12 + 4 * *a2));
  v56 = (v54 - *v54);
  if (*v56 >= 5u && (v57 = v56[2]) != 0)
  {
    v58 = (v54 + v57);
    v59 = *v58;
    v60 = v58 + v59 + 4;
    v61 = *(v58 + v59);
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v62 = (v55 - *v55);
  if (*v62 >= 5u && (v63 = v62[2]) != 0)
  {
    v64 = (v55 + v63);
    v65 = *v64;
    v66 = v64 + v65 + 4;
    v67 = *(v64 + v65);
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  if (v67 >= v61)
  {
    v68 = v61;
  }

  else
  {
    v68 = v67;
  }

  result = memcmp(v60, v66, v68);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v61 >= v67)
  {
    return result;
  }

  *a2 = v51;
  *a3 = v52;
  v69 = *a2;
  v70 = *a1;
  v71 = v14 + (v34 + *(v11 + 70));
  v72 = (v71 - *(v12 + 4 * *a2));
  v73 = (v71 - *(v12 + 4 * *a1));
  v74 = (v72 - *v72);
  if (*v74 >= 5u && (v75 = v74[2]) != 0)
  {
    v76 = (v72 + v75);
    v77 = *v76;
    v78 = v76 + v77 + 4;
    v79 = *(v76 + v77);
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v80 = (v73 - *v73);
  if (*v80 >= 5u && (v81 = v80[2]) != 0)
  {
    v82 = (v73 + v81);
    v83 = *v82;
    v84 = v82 + v83 + 4;
    v85 = *(v82 + v83);
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  if (v85 >= v79)
  {
    v86 = v79;
  }

  else
  {
    v86 = v85;
  }

  result = memcmp(v78, v84, v86);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v79 >= v85)
  {
    return result;
  }

  *a1 = v69;
  *a2 = v70;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *>(uint64_t *a1, uint64_t *a2, void **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *a3[1];
      v8 = (*a3)[37] + *(*a3 + 70) - (*a3)[37] + *(*a3 + 72);
      v9 = *(v7 + 4 * *a1);
      v10 = (v8 - *(v7 + 4 * v5));
      v11 = (v8 - v9);
      v12 = (v10 - *v10);
      if (*v12 >= 5u && (v13 = v12[2]) != 0)
      {
        v14 = (v10 + v13);
        v15 = *v14;
        v16 = v14 + v15 + 4;
        v17 = *(v14 + v15);
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v60 = (v11 - *v11);
      if (*v60 >= 5u && (v61 = v60[2]) != 0)
      {
        v62 = (v11 + v61);
        v63 = *v62;
        v64 = v62 + v63 + 4;
        v65 = *(v62 + v63);
      }

      else
      {
        v64 = 0;
        v65 = 0;
      }

      if (v65 >= v17)
      {
        v66 = v17;
      }

      else
      {
        v66 = v65;
      }

      v67 = memcmp(v16, v64, v66);
      if (v67)
      {
        if ((v67 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v17 >= v65)
      {
        return 1;
      }

      *a1 = v5;
      *(a2 - 1) = v6;
      return 1;
    }
  }

  v18 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a3);
  v19 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v74 = 0;
  v70 = 0;
  v20 = *a3;
  v21 = *a3[1];
  v22 = v20[37];
  v69 = v20[36];
  while (2)
  {
    v71 = *v19;
    v23 = *(v21 + 4 * *v19);
    v24 = v22 + (*(v20 + 70) - v22 + v69);
    v25 = (v24 - v23 - *(v24 - v23));
    v73 = v19;
    if (*v25 >= 5u && (v26 = v25[2]) != 0)
    {
      v27 = (v24 - v23 + v26);
      v28 = *v27;
      v29 = v27 + v28 + 4;
      v30 = *(v27 + v28);
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    v31 = *v18;
    v32 = (v24 - *(v21 + 4 * *v18));
    v33 = (v32 - *v32);
    if (*v33 >= 5u && (v34 = v33[2]) != 0)
    {
      v35 = (v32 + v34);
      v36 = *v35;
      v37 = v35 + v36 + 4;
      v38 = *(v35 + v36);
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    if (v38 >= v30)
    {
      v39 = v30;
    }

    else
    {
      v39 = v38;
    }

    v40 = memcmp(v29, v37, v39);
    if (v40)
    {
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v30 >= v38)
    {
      goto LABEL_50;
    }

    v41 = -v23;
    v42 = v74;
    while (1)
    {
      *(a1 + v42 + 24) = v31;
      if (v42 == -16)
      {
        v43 = a1;
        goto LABEL_49;
      }

      v43 = v18;
      v44 = v22 + (v69 - v22 + *(v20 + 70));
      v45 = (v44 + v41 - *(v44 + v41));
      if (*v45 >= 5u && (v46 = v45[2]) != 0)
      {
        v47 = (v44 + v41 + v46);
        v48 = *v47;
        v49 = v47 + v48 + 4;
        v50 = *(v47 + v48);
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      v31 = *(a1 + v42 + 8);
      v51 = (v44 - *(v21 + 4 * v31));
      v52 = (v51 - *v51);
      if (*v52 >= 5u && (v53 = v52[2]) != 0)
      {
        v54 = (v51 + v53);
        v55 = *v54;
        v56 = v54 + v55 + 4;
        v57 = *(v54 + v55);
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      v58 = v57 >= v50 ? v50 : v57;
      v59 = memcmp(v49, v56, v58);
      if (!v59)
      {
        break;
      }

LABEL_45:
      v18 = v43 - 1;
      v42 -= 8;
      if ((v59 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v50 < v57)
    {
      v59 = -1;
      goto LABEL_45;
    }

    v43 = (a1 + v42 + 16);
LABEL_49:
    *v43 = v71;
    if (++v70 != 8)
    {
LABEL_50:
      v18 = v73;
      v74 += 8;
      v19 = v73 + 1;
      if (v73 + 1 == a2)
      {
        return 1;
      }

      continue;
    }

    return v73 + 1 == a2;
  }
}

void sub_185C9A0D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1865FF210](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t MetalScriptSerializer::MetalScriptSerializer(uint64_t a1, char a2, uint64_t a3)
{
  *a1 = &unk_1EF475698;
  *(a1 + 8) = a2;
  std::__function::__value_func<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::__value_func[abi:ne200100](a1 + 16, a3);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_185DB8250;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 256;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = xmmword_185DD3AB0;
  *(a1 + 416) = 0x20000000;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1065353216;
  return a1;
}

MTLMetalScriptSerializer *MetalScriptSerializer::addLibrary(MetalScriptSerializer *this, flatbuffers::FlatBufferBuilder **a2)
{
  v4 = *(this + 50);
  *(this + 50) = v4 + 1;
  MTLMetalScriptSerializer::makeNumberString(v4, __p);
  v6 = MTLMetalScriptSerializer::addString((this + 48), __p);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = MTLMetalScriptSerializer::addString((this + 48), a2[1], v5);
  *(this + 118) = 1;
  v8 = *(this + 22);
  v9 = *(this + 20) - *(this + 24);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 4, v6);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 6, v7);
  v10 = flatbuffers::FlatBufferBuilder::EndTable((this + 48), v9 + v8);
  v12 = *(this + 19);
  v11 = *(this + 20);
  if (v12 >= v11)
  {
    v14 = *(this + 18);
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 2;
    v17 = v16 + 1;
    if ((v16 + 1) >> 62)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v18 = v11 - v14;
    if (v18 >> 1 > v17)
    {
      v17 = v18 >> 1;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
    v20 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this + 144, v20);
    }

    v21 = (v12 - v14) >> 2;
    v22 = (4 * v16);
    v23 = (4 * v16 - 4 * v21);
    *v22 = v10;
    v13 = v22 + 1;
    memcpy(v23, v14, v15);
    v24 = *(this + 18);
    *(this + 18) = v23;
    *(this + 19) = v13;
    *(this + 20) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v12 = v10;
    v13 = v12 + 4;
  }

  *(this + 19) = v13;
  return v4;
}

void sub_185C9A344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MetalScriptSerializer::addSpecializedFunction(uint64_t a1, int *a2)
{
  v4 = (a2 + 2);
  MetalScriptSerializer::makeFunctionString(*a2, *(a2 + 1), &__p);
  v5 = MTLMetalScriptSerializer::addString((a1 + 48), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 408);
  *(a1 + 408) = v6 + 1;
  MTLMetalScriptSerializer::makeNumberString(v6, &__p);
  v8 = MTLMetalScriptSerializer::addString((a1 + 48), &__p);
  v40 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *(a2 + 5);
  if (v9 && ([v9 isEqualToString:*v4] & 1) == 0)
  {
    v10 = MTLMetalScriptSerializer::addString((a1 + 48), *(a2 + 5), &v7->super.super.isa);
    v39 = 1;
  }

  else
  {
    v39 = 0;
    v10 = 0;
  }

  v11 = MTLMetalScriptSerializer::addFunctionConstants((a1 + 48), *(a2 + 4), v7);
  *(a1 + 118) = 1;
  v12 = *(a1 + 88);
  v13 = *(a1 + 80) - *(a1 + 96);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 48), 4, v8);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 48), 6, v5);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 48), 8, v10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 48), 12, v11);
  v14 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 48), v13 + v12);
  v16 = *(a1 + 176);
  v15 = *(a1 + 184);
  if (v16 >= v15)
  {
    v18 = *(a1 + 168);
    v19 = v16 - v18;
    v20 = (v16 - v18) >> 2;
    v21 = v20 + 1;
    if ((v20 + 1) >> 62)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v22 = v15 - v18;
    if (v22 >> 1 > v21)
    {
      v21 = v22 >> 1;
    }

    v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
    v24 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v23)
    {
      v24 = v21;
    }

    if (v24)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1 + 168, v24);
    }

    v25 = (v16 - v18) >> 2;
    v26 = (4 * v20);
    v27 = (4 * v20 - 4 * v25);
    *v26 = v14;
    v17 = v26 + 1;
    memcpy(v27, v18, v19);
    v28 = *(a1 + 168);
    *(a1 + 168) = v27;
    *(a1 + 176) = v17;
    *(a1 + 184) = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v16 = v14;
    v17 = v16 + 4;
  }

  *(a1 + 176) = v17;
  if (a2[14])
  {
    if (v39)
    {
      v29 = (a2 + 10);
    }

    else
    {
      v29 = v4;
    }

    v30 = v40;
    MetalScriptSerializer::makeFunctionString(v40, *v29, &__p);
    v31 = MTLMetalScriptSerializer::addString((a1 + 48), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v32 = *(a2 + 8);
    if (v32 == 6)
    {
      *(a1 + 118) = 1;
      v35 = *(a1 + 88);
      v36 = *(a1 + 80) - *(a1 + 96);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 48), 6, v31);
      LODWORD(__p.__r_.__value_.__l.__data_) = flatbuffers::FlatBufferBuilder::EndTable((a1 + 48), v36 + v35);
      std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 288), &__p);
    }

    else if (v32 == 5)
    {
      *(a1 + 118) = 1;
      v33 = *(a1 + 88);
      v34 = *(a1 + 80) - *(a1 + 96);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 48), 6, v31);
      LODWORD(__p.__r_.__value_.__l.__data_) = flatbuffers::FlatBufferBuilder::EndTable((a1 + 48), v34 + v33);
      std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 264), &__p);
    }
  }

  else
  {
    if (v39)
    {
      v29 = (a2 + 10);
    }

    else
    {
      v29 = v4;
    }

    v30 = v40;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, [*(a2 + 6) cStringUsingEncoding:4]);
  v37 = *v29;
  p_p = &__p;
  v38 = std::__hash_table<std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 360), &__p.__r_.__value_.__l.__data_);
  v38[5] = v30;
  v38[6] = v37;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_185C9A6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MetalScriptSerializer::addBinaryFunction(uint64_t a1, void **a2)
{
  MetalScriptSerializer::makeFunctionString(*a2, a2[1], &__p);
  v4 = MTLMetalScriptSerializer::addString((a1 + 48), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = a2[3];
  if (v5 == 6)
  {
    *(a1 + 118) = 1;
    v8 = *(a1 + 88);
    v9 = *(a1 + 80) - *(a1 + 96);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 48), 6, v4);
    LODWORD(__p.__r_.__value_.__l.__data_) = flatbuffers::FlatBufferBuilder::EndTable((a1 + 48), v9 + v8);
    std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 288), &__p);
  }

  else if (v5 == 5)
  {
    *(a1 + 118) = 1;
    v6 = *(a1 + 88);
    v7 = *(a1 + 80) - *(a1 + 96);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 48), 6, v4);
    LODWORD(__p.__r_.__value_.__l.__data_) = flatbuffers::FlatBufferBuilder::EndTable((a1 + 48), v7 + v6);
    std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 264), &__p);
  }
}

void sub_185C9A7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MetalScriptSerializer::addComputePipelineDescriptor(MetalScriptSerializer *this, id *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a2[9] _descriptorPrivate];
  v3 = a2[9];
  operator new();
}

void sub_185C9AA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MetalScriptSerializer::addRenderPipelineDescriptor(MetalScriptSerializer *this, id *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a2[9] _descriptorPrivate];
  v3 = a2[9];
  operator new();
}

void sub_185C9AD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t MetalScriptSerializer::nextStitchedLibraryIndex(MetalScriptSerializer *this)
{
  v1 = *(this + 52);
  *(this + 52) = v1 + 1;
  return v1;
}

void MetalScriptSerializer::addStitchedLibrary(MetalScriptSerializer *this, MTLStitchedLibraryDescriptor *a2, MTLMetalScriptSerializer *a3)
{
  v23[4] = *MEMORY[0x1E69E9840];
  MTLMetalScriptSerializer::makeNumberString(a3, __p);
  v23[0] = &unk_1EF475820;
  v23[1] = this;
  v23[3] = v23;
  v5 = MTLMetalScriptSerializer::buildStitchingGraphFromDescriptor(this + 48, __p, a2, v23);
  v7 = *(this + 40);
  v6 = *(this + 41);
  if (v7 >= v6)
  {
    v9 = *(this + 39);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this + 312, v15);
    }

    v16 = (v7 - v9) >> 2;
    v17 = (4 * v11);
    v18 = (4 * v11 - 4 * v16);
    *v17 = v5;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = *(this + 39);
    *(this + 39) = v18;
    *(this + 40) = v8;
    *(this + 41) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = v5;
    v8 = v7 + 4;
  }

  *(this + 40) = v8;
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](v23);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void MetalScriptSerializer::addTileRenderPipelineDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [*(a2 + 72) _descriptorPrivate];
  v3 = *(a2 + 72);
  operator new();
}

void sub_185C9B1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MetalScriptSerializer::addMeshRenderPipelineDescriptor(MetalScriptSerializer *this, id *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a2[9] _descriptorPrivate];
  v3 = a2[9];
  operator new();
}

void sub_185C9B520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t MetalScriptSerializer::finalize(MetalScriptSerializer *this)
{
  v2 = *(this + 19) - *(this + 18);
  if (v2)
  {
    v3 = *(this + 18);
  }

  else
  {
    v3 = &flatbuffers::data<flatbuffers::Offset<Mtl::PathLibrary>,std::allocator<flatbuffers::Offset<Mtl::PathLibrary>>>(std::vector<flatbuffers::Offset<Mtl::PathLibrary>> const&)::t;
  }

  v54 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v3, v2 >> 2);
  v4 = *(this + 40) - *(this + 39);
  if (v4)
  {
    v5 = *(this + 39);
  }

  else
  {
    v5 = &flatbuffers::data<flatbuffers::Offset<Mtl::StitchedLibrary>,std::allocator<flatbuffers::Offset<Mtl::StitchedLibrary>>>(std::vector<flatbuffers::Offset<Mtl::StitchedLibrary>> const&)::t;
  }

  v55 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v5, v4 >> 2);
  v6 = *(this + 22) - *(this + 21);
  if (v6)
  {
    v7 = *(this + 21);
  }

  else
  {
    v7 = &flatbuffers::data<flatbuffers::Offset<Mtl::SpecializedFunctionLibrary>,std::allocator<flatbuffers::Offset<Mtl::SpecializedFunctionLibrary>>>(std::vector<flatbuffers::Offset<Mtl::SpecializedFunctionLibrary>> const&)::t;
  }

  v8 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v7, v6 >> 2);
  v9 = *(this + 25) - *(this + 24);
  if (v9)
  {
    v10 = *(this + 24);
  }

  else
  {
    v10 = &flatbuffers::data<flatbuffers::Offset<Mtl::ComputePipelineDescriptor>,std::allocator<flatbuffers::Offset<Mtl::ComputePipelineDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::ComputePipelineDescriptor>> const&)::t;
  }

  v53 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v10, v9 >> 2);
  v11 = *(this + 28) - *(this + 27);
  if (v11)
  {
    v12 = *(this + 27);
  }

  else
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<Mtl::RenderPipelineDescriptor>,std::allocator<flatbuffers::Offset<Mtl::RenderPipelineDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::RenderPipelineDescriptor>> const&)::t;
  }

  v52 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v12, v11 >> 2);
  v13 = *(this + 43) - *(this + 42);
  if (v13)
  {
    v14 = *(this + 42);
  }

  else
  {
    v14 = &flatbuffers::data<flatbuffers::Offset<Mtl::MeshRenderPipelineDescriptor>,std::allocator<flatbuffers::Offset<Mtl::MeshRenderPipelineDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::MeshRenderPipelineDescriptor>> const&)::t;
  }

  v15 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v14, v13 >> 2);
  v16 = *(this + 31) - *(this + 30);
  if (v16)
  {
    v17 = *(this + 30);
  }

  else
  {
    v17 = &flatbuffers::data<flatbuffers::Offset<Mtl::TileRenderPipelineDescriptor>,std::allocator<flatbuffers::Offset<Mtl::TileRenderPipelineDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::TileRenderPipelineDescriptor>> const&)::t;
  }

  v18 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v17, v16 >> 2);
  v19 = *(this + 34) - *(this + 33);
  if (v19)
  {
    v20 = *(this + 33);
  }

  else
  {
    v20 = &flatbuffers::data<flatbuffers::Offset<Mtl::VisibleFunctionDescriptor>,std::allocator<flatbuffers::Offset<Mtl::VisibleFunctionDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::VisibleFunctionDescriptor>> const&)::t;
  }

  v21 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v20, v19 >> 2);
  v22 = *(this + 37) - *(this + 36);
  if (v22)
  {
    v23 = *(this + 36);
  }

  else
  {
    v23 = &flatbuffers::data<flatbuffers::Offset<Mtl::IntersectionFunctionDescriptor>,std::allocator<flatbuffers::Offset<Mtl::IntersectionFunctionDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::IntersectionFunctionDescriptor>> const&)::t;
  }

  v24 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 48), v23, v22 >> 2);
  v25 = *(this + 20);
  *(this + 118) = 1;
  v26 = *(this + 22);
  v27 = v25 - *(this + 24);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 4, v54);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 6, v8);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 8, v55);
  v28 = flatbuffers::FlatBufferBuilder::EndTable((this + 48), v27 + v26);
  *(this + 118) = 1;
  v29 = *(this + 22);
  v30 = *(this + 20) - *(this + 24);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 4, v53);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 6, v52);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 10, v15);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 8, v18);
  v31 = flatbuffers::FlatBufferBuilder::EndTable((this + 48), v30 + v29);
  *(this + 118) = 1;
  v32 = *(this + 22);
  v33 = *(this + 20) - *(this + 24);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 6, v21);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 4, v24);
  v34 = flatbuffers::FlatBufferBuilder::EndTable((this + 48), v33 + v32);
  v72 = 0x300000000;
  v73 = 0;
  *(this + 118) = 1;
  v35 = *(this + 22);
  v36 = *(this + 20) - *(this + 24);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>((this + 48), 4, &v72);
  v37 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 48, 2);
  flatbuffers::FlatBufferBuilder::TrackField(this + 6, 6, v37);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 12, v28);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 14, v31);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 48), 16, v34);
  v38 = flatbuffers::FlatBufferBuilder::EndTable((this + 48), v36 + v35);
  flatbuffers::FlatBufferBuilder::Finish((this + 48), v38, "MTLP", 0);
  v60 = 0;
  v61 = &v60;
  v62 = 0x6012000000;
  v63 = __Block_byref_object_copy__2;
  v64 = __Block_byref_object_dispose__2;
  v65 = &unk_185DF1D43;
  v39 = *(this + 56);
  v41 = *(this + 10);
  v40 = *(this + 11);
  v42 = *(this + 12);
  v66 = *(this + 6);
  v67 = v39;
  v68 = v40;
  v69 = v41;
  v70 = v42;
  v71 = (v41 + v40 - v42);
  if (v39 == 1)
  {
    *(this + 6) = 0;
    *(this + 56) = 0;
  }

  *(this + 5) = 0u;
  *(this + 6) = 0u;
  if (MEMORY[0x1EEE98810] && (*(this + 8) & 1) != 0)
  {
    flatbuffers::IDLOptions::IDLOptions(v58);
    v58[1] = 1;
    v59 = 256;
    flatbuffers::Parser::Parser(v57, v58);
  }

  v43 = objc_alloc(MEMORY[0x1E695DEF0]);
  v44 = v61[10];
  v45 = v61[11];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = ___ZN21MetalScriptSerializer8finalizeEv_block_invoke_2;
  v56[3] = &unk_1E6EEB3B8;
  v56[4] = &v60;
  v46 = [v43 initWithBytesNoCopy:v44 length:v45 deallocator:v56];
  for (i = *(this + 55); i; i = *i)
  {
    dispatch_release(*i[2]);
    v48 = i[2];
    if (v48)
    {
      for (j = 0; j != -9; j -= 3)
      {
        v50 = v48[j + 22];
        if (v50)
        {
          v48[j + 23] = v50;
          operator delete(v50);
        }
      }

      MEMORY[0x1865FF210](v48, 0x10A0C403A971839);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(this + 53);
  _Block_object_dispose(&v60, 8);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v66);
  return v46;
}

void sub_185C9BB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30)
{
  flatbuffers::Parser::~Parser(&a30);
  flatbuffers::IDLOptions::~IDLOptions(&STACK[0x560]);
  _Block_object_dispose((v31 - 200), 8);
  flatbuffers::DetachedBuffer::~DetachedBuffer((v30 + 48));
  _Unwind_Resume(a1);
}

void MetalScriptSerializer::~MetalScriptSerializer(MetalScriptSerializer *this)
{
  MetalScriptSerializer::~MetalScriptSerializer(this);

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF475698;
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 424);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 360);
  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
  }

  v5 = *(this + 33);
  if (v5)
  {
    *(this + 34) = v5;
    operator delete(v5);
  }

  v6 = *(this + 30);
  if (v6)
  {
    *(this + 31) = v6;
    operator delete(v6);
  }

  v7 = *(this + 27);
  if (v7)
  {
    *(this + 28) = v7;
    operator delete(v7);
  }

  v8 = *(this + 24);
  if (v8)
  {
    *(this + 25) = v8;
    operator delete(v8);
  }

  v9 = *(this + 21);
  if (v9)
  {
    *(this + 22) = v9;
    operator delete(v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    *(this + 19) = v10;
    operator delete(v10);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 48));
  std::__function::__value_func<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::~__value_func[abi:ne200100](this + 16);
}

void MetalScriptSerializer::makeFunctionString(MetalScriptSerializer *this@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  if (a2 && ![a2 isEqualToString:&stru_1EF478240])
  {
    MTLMetalScriptSerializer::makeNumberString(this, &v12);
    v7 = std::string::insert(&v12, 0, "alias:");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v13, "#");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v14, [a2 cStringUsingEncoding:4]);
    *a3 = *v11;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_185C9BD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<unsigned long,NSString *>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185C9BFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C9C070(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MetalScriptSerializer::addComputePipelineDescriptor(MTLPipelineLibrarySerializer::ComputePipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addComputePipelineDescriptor(MTLPipelineLibrarySerializer::ComputePipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF475720;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MetalScriptSerializer::addComputePipelineDescriptor(MTLPipelineLibrarySerializer::ComputePipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addComputePipelineDescriptor(MTLPipelineLibrarySerializer::ComputePipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 8);
  std::function<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::operator()(v4 + 16, *a2);
  MetalScriptSerializer::makeFunctionString(v4, v5, a3);
}

uint64_t std::__function::__func<MetalScriptSerializer::addComputePipelineDescriptor(MTLPipelineLibrarySerializer::ComputePipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addComputePipelineDescriptor(MTLPipelineLibrarySerializer::ComputePipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void MetalScriptSerializer::makeFunctionString(uint64_t a1@<X0>, _DWORD *a2@<X1>, std::string *a3@<X8>)
{
  v7 = *a2;
  v6 = (a2 + 2);
  v5 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [*v6 cStringUsingEncoding:4]);
    v8 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 360), __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = v8[5];
    v6 = (v8 + 6);
  }

  MetalScriptSerializer::makeFunctionString(v5, *v6, a3);
}

void sub_185C9C294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MetalScriptSerializer::addRenderPipelineDescriptor(MTLPipelineLibrarySerializer::RenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addRenderPipelineDescriptor(MTLPipelineLibrarySerializer::RenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF4757A0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MetalScriptSerializer::addRenderPipelineDescriptor(MTLPipelineLibrarySerializer::RenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addRenderPipelineDescriptor(MTLPipelineLibrarySerializer::RenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 8);
  std::function<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::operator()(v4 + 16, *a2);
  MetalScriptSerializer::makeFunctionString(v4, v5, a3);
}

uint64_t std::__function::__func<MetalScriptSerializer::addRenderPipelineDescriptor(MTLPipelineLibrarySerializer::RenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addRenderPipelineDescriptor(MTLPipelineLibrarySerializer::RenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MetalScriptSerializer::addStitchedLibrary(MTLStitchedLibraryDescriptor const*,unsigned long)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addStitchedLibrary(MTLStitchedLibraryDescriptor const*,unsigned long)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF475820;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MetalScriptSerializer::addStitchedLibrary(MTLStitchedLibraryDescriptor const*,unsigned long)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addStitchedLibrary(MTLStitchedLibraryDescriptor const*,unsigned long)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 8);
  std::function<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::operator()(v4 + 16, *a2);
  MetalScriptSerializer::makeFunctionString(v4, v5, a3);
}

uint64_t std::__function::__func<MetalScriptSerializer::addStitchedLibrary(MTLStitchedLibraryDescriptor const*,unsigned long)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addStitchedLibrary(MTLStitchedLibraryDescriptor const*,unsigned long)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MetalScriptSerializer::addTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::TileRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::TileRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF4758A0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MetalScriptSerializer::addTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::TileRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::TileRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 8);
  std::function<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::operator()(v4 + 16, *a2);
  MetalScriptSerializer::makeFunctionString(v4, v5, a3);
}

uint64_t std::__function::__func<MetalScriptSerializer::addTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::TileRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::TileRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MetalScriptSerializer::addMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF475920;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MetalScriptSerializer::addMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 8);
  std::function<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::operator()(v4 + 16, *a2);
  MetalScriptSerializer::makeFunctionString(v4, v5, a3);
}

uint64_t std::__function::__func<MetalScriptSerializer::addMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1},std::allocator<objc_object  {objcproto11MTLFunction}*>,std::basic_string<char,std::char_traits<char>,MetalScriptSerializer::addMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor const&)::{lambda(objc_object  {objcproto11MTLFunction}*)#1}<char>> ()(objc_object  {objcproto11MTLFunction})>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 __Block_byref_object_copy__28(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__29(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t ___ZN21MetalScriptSerializer8finalizeEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 71) < 0)
  {
    **(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else
  {
    *(v1 + 48) = 0;
    *(v1 + 71) = 0;
  }

  return result;
}

void ___ZN21MetalScriptSerializer8finalizeEv_block_invoke_2(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0u;
  v4 = 0u;
  flatbuffers::DetachedBuffer::operator=((*(*(a1 + 32) + 8) + 48), &v1);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v1);
}

void *flatbuffers::DetachedBuffer::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a1 + 2;
    v4 = a1[2];
    if (v4)
    {
      v6 = *a1;
      if (*a1)
      {
        v7 = a1[3];
        (*(*v6 + 24))(v6);
      }

      else
      {
        MEMORY[0x1865FF1F0](v4, 0x1000C8077774924);
      }
    }

    if (*(a1 + 8) == 1 && *a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *v5 = 0u;
    *(a1 + 2) = 0u;
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    a1[2] = *(a2 + 16);
    *(a1 + 3) = *(a2 + 24);
    a1[5] = *(a2 + 40);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  return a1;
}

uint64_t std::__function::__value_func<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::~__value_func[abi:ne200100](uint64_t a1)
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

double MTLGetEnvDefaultDouble(const char *a1, double a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return strtod(v3, 0);
}

double deltaInMilliseconds(uint64_t a1)
{
  if (initTimebaseInfo(void)::onceToken != -1)
  {
    deltaInMilliseconds_cold_1();
  }

  return *&gMachTimeToNS * (mach_absolute_time() - a1) * 0.000001;
}

uint64_t _MTLHashForData@<X0>(NSObject *a1@<X0>, void *a2@<X8>)
{
  bzero(a2, 0x20uLL);
  CC_SHA256_Init(&c);
  if (a1)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v4 = dispatch_data_create_map(a1, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v4);
  }

  return CC_SHA256_Final(a2, &c);
}

uint64_t MTLHashArray(void *a1, int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1 || a2)
  {
    v5 = 3735928559;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [a1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(a1);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) hash];
          if (a3)
          {
            v12 = v8 & 0x3F;
            v13 = v11 << v8++;
            v11 = (v11 >> (v12 ^ 0x3Fu)) | v13;
          }

          v5 ^= v11;
        }

        v7 = [a1 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 3405691582;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t MTLCompareArray(void *a1, void *a2, char a3, char a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v8 = [a1 count];
  if (v8 != [a2 count])
  {
    return 0;
  }

  if (!v8)
  {
    if (a1)
    {
      v11 = a2 == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (a3)
    {
      return 1;
    }

    else
    {
      return v12;
    }
  }

  if (a4)
  {
    if (a2)
    {

      return [a1 isEqualToArray:a2];
    }

    return 0;
  }

  if (!(v8 >> 17))
  {
    std::vector<BOOL>::vector(&__p, v8);
    v13 = 0;
    v10 = 0;
    do
    {
      v14 = 0;
      while (1)
      {
        if ([objc_msgSend(a1 objectAtIndexedSubscript:{v13), "isEqual:", objc_msgSend(a2, "objectAtIndexedSubscript:", v14)}])
        {
          v15 = *(__p + (v14 >> 6));
          if ((v15 & (1 << v14)) == 0)
          {
            break;
          }
        }

        if (v8 == ++v14)
        {
          goto LABEL_29;
        }
      }

      *(__p + (v14 >> 6)) = v15 | (1 << v14);
      v10 = v8 <= ++v13;
    }

    while (v13 != v8);
    v10 = 1;
LABEL_29:
    if (__p)
    {
      operator delete(__p);
    }

    return v10;
  }

  v16 = [MEMORY[0x1E696AB50] setWithArray:a1];
  v17 = [MEMORY[0x1E696AB50] setWithArray:a2];

  return [v16 isEqualToSet:v17];
}

void sub_185C9D014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

dispatch_data_t _MTLDispatchDataToNSData(dispatch_object_t object, size_t *a2)
{
  if (a2)
  {
    v3 = a2[1];
    v4 = *a2;

    return dispatch_data_create_subrange(object, v4, v3);
  }

  else
  {
    dispatch_retain(object);
    return object;
  }
}

uint64_t MTLCompareFunctionList(void *a1, void *a2)
{
  if (!a1)
  {
    v4 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = [a1 isEmpty] ^ 1;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [a2 isEmpty] ^ 1;
LABEL_6:
  if (a1 == a2 || ((v4 | v5) & 1) == 0)
  {
    return 1;
  }

  return [a1 isEqual:a2];
}

uint64_t MTLHashDictionary(void *a1)
{
  v1 = [a1 allKeys];

  return MTLHashArray(v1, 1, 0);
}

uint64_t MTLCompareDictionary(void *a1, void *a2)
{
  if (a1 == a2 || ![a1 count] && !objc_msgSend(a2, "count"))
  {
    return 1;
  }

  return [a1 isEqualToDictionary:a2];
}

dispatch_object_t MTLNewReflectionBlock(dispatch_object_t object, dispatch_object_t a2, int a3)
{
  v4 = a2;
  v5 = object;
  if (object && !a2)
  {
    dispatch_retain(object);
    return v5;
  }

  if (object)
  {
    v16 = 0;
    buffer_ptr = 0;
    subrange = dispatch_data_create_subrange(object, 0, 0x50uLL);
    v7 = dispatch_data_create_map(subrange, &buffer_ptr, &v16);
    v8 = buffer_ptr;
    v9 = *(buffer_ptr + 5);
    if (v9)
    {
      v10 = dispatch_data_create_subrange(v5, *(buffer_ptr + 4), v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = v8[7];
    if (v13)
    {
      v12 = dispatch_data_create_subrange(v5, v8[6], v13);
    }

    else
    {
      v12 = 0;
    }

    v14 = v8[3];
    if (v14)
    {
      v11 = dispatch_data_create_subrange(v5, v8[2], v14);
    }

    else
    {
      v11 = 0;
    }

    dispatch_release(v7);
    dispatch_release(subrange);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  dispatch_retain(v4);
  switch(a3)
  {
    case 1:
      if (v11)
      {
        dispatch_release(v11);
      }

      v11 = v4;
      break;
    case 4:
      if (v12)
      {
        dispatch_release(v12);
      }

      v12 = v4;
      break;
    case 2:
      if (v10)
      {
        dispatch_release(v10);
      }

      goto LABEL_29;
    default:
      dispatch_release(v4);
      break;
  }

  v4 = v10;
LABEL_29:
  v5 = _MTLNewReflectionBlock(v11, v4, v12);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  return v5;
}

uint64_t MTLNewAirntReflections(NSObject *a1, dispatch_data_t *a2, dispatch_data_t *a3)
{
  if (!a1)
  {
    return 0;
  }

  v11 = 0;
  buffer_ptr = 0;
  v6 = dispatch_data_create_map(a1, &buffer_ptr, &v11);
  v7 = buffer_ptr;
  if (*buffer_ptr == 0x8EF13C710 && (v8 = *(buffer_ptr + 5)) != 0 && *(buffer_ptr + 7))
  {
    *a2 = dispatch_data_create_subrange(a1, *(buffer_ptr + 4), v8);
    *a3 = dispatch_data_create_subrange(a1, v7[6], v7[7]);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  dispatch_release(v6);
  return v9;
}

void MTLGetCompilerWorkingDir(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (v3)
  {
    v4 = [v3 UTF8String];
  }

  else
  {
    v4 = getcwd(v6, 0x400uLL);
    if (!v4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      goto LABEL_5;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(a1, v4);
LABEL_5:
  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t MTLSizeToNSArray(void *a1, uint64_t *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*a1];
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1[1], v4}];
  v7[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[2]];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  *a2 = result;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL parseDecompressionResult(int a1, void **a2)
{
  if (a1)
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    switch(a1)
    {
      case -8:
        if (v3)
        {
          parseDecompressionResult(v3, v4, v5, v6, v7, v8, v9, v10);
        }

        break;
      case -7:
        if (v3)
        {
          parseDecompressionResult(v3, v4, v5, v6, v7, v8, v9, v10);
        }

        break;
      case -3:
        if (v3)
        {
          parseDecompressionResult(v3, v4, v5, v6, v7, v8, v9, v10);
        }

        break;
      default:
        if (v3)
        {
          parseDecompressionResult(v3, v4, v5, v6, v7, v8, v9, v10);
        }

        break;
    }
  }

  return a1 == 0;
}

BOOL MTLDecompressData(char *a1, uint64_t a2, char *a3, unsigned int a4)
{
  *destLen = a2;
  v4 = BZ2_bzBuffToBuffDecompress(a1, destLen, a3, a4, 0, 0);
  return parseDecompressionResult(v4, v5);
}

double ___ZL16initTimebaseInfov_block_invoke()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  result = v0 / v1;
  gMachTimeToNS = *&result;
  return result;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(a1, v2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

__CFString *MTLMutabilityString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEB3D8[a1];
  }
}

__CFString *MTLRoundingModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEB3F0[a1];
  }
}

uint64_t pipelineBufferFormattedDescription(uint64_t a1, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v3 = [a2 _descriptorPrivate];
  v6[0] = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v6[1] = @"mutability =";
  v6[2] = off_1E6EEB408[*v3 & 3];
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:{3), "componentsJoinedByString:", @" "}];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t pipelineBufferDefaultFormattedDescription(uint64_t a1)
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v3[1] = @"mutability =";
  v3[2] = @"MTLMutabilityDefault";
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:{3), "componentsJoinedByString:", @" "}];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLPipelineBufferDescriptorDescription(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Mutability";
  v4[0] = off_1E6EEB408[*[a1 _descriptorPrivate] & 3];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLPipelineBufferDescriptorDefaultDescription()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"Mutability";
  v3[0] = @"MTLMutabilityDefault";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void std::vector<__CFString const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<__CFString const*>::__append(a1, a2 - v2);
  }
}

void std::vector<MTLDebugLocation *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<MTLDebugLocation *>::__append(a1, a2 - v2);
  }
}

void std::vector<__CFString const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<MTLDebugLocation *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t MTLGetBaseCachePath(void)
{
  if (MTLGetBaseCachePath(void)::onceToken != -1)
  {
    MTLGetBaseCachePath();
  }

  return MTLGetBaseCachePath(void)::result;
}

void ___Z19MTLGetBaseCachePathv_block_invoke()
{
  v3 = 0;
  BaseCacheFolder = getBaseCacheFolder(&v3);
  if (BaseCacheFolder)
  {
    v1 = BaseCacheFolder;
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    MTLGetBaseCachePath(void)::result = [v2 initWithBytesNoCopy:v1 length:v3 encoding:4 freeWhenDone:1];
    if (!MTLGetBaseCachePath(void)::result)
    {
      free(v1);
    }
  }
}

uint64_t MTLGetModulesCachePath()
{
  if (MTLGetModulesCachePath::onceToken != -1)
  {
    MTLGetModulesCachePath_cold_1();
  }

  return MTLGetModulesCachePath::result;
}

uint64_t MTLGetGPUArchiverCachePath()
{
  if (MTLGetGPUArchiverCachePath::onceToken != -1)
  {
    MTLGetGPUArchiverCachePath_cold_1();
  }

  return MTLGetGPUArchiverCachePath::result;
}

void __MTLGetGPUArchiverCachePath_block_invoke()
{
  v3 = 0;
  GPUArchiverCacheMainFolder = getGPUArchiverCacheMainFolder(&v3);
  if (GPUArchiverCacheMainFolder)
  {
    v1 = GPUArchiverCacheMainFolder;
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    MTLGetGPUArchiverCachePath::result = [v2 initWithBytesNoCopy:v1 length:v3 encoding:4 freeWhenDone:1];
    if (!MTLGetGPUArchiverCachePath::result)
    {
      free(v1);
    }
  }
}

void MTLSetShaderCachePath(void *a1)
{
  v1 = [a1 UTF8String];

  setShaderCacheMainFolder(v1);
}

uint64_t getShaderCachePath()
{
  if (MTLGetShaderCachePath::onceToken != -1)
  {
    MTLGetShaderCachePath_cold_1();
  }

  return MTLGetShaderCachePath::result;
}

void setShaderCachePath(void *a1)
{
  v1 = [a1 UTF8String];

  setShaderCacheMainFolder(v1);
}

uint64_t _MTLHashState(int *a1, unint64_t a2)
{
  v2 = a2 ^ 0x123456;
  if (a2 >= 4)
  {
    do
    {
      v3 = *a1++;
      v2 = (1540483477 * ((1540483477 * v3) ^ ((1540483477 * v3) >> 24))) ^ (1540483477 * v2);
      a2 -= 4;
    }

    while (a2 > 3);
  }

  return (1540483477 * (v2 ^ (v2 >> 13))) ^ ((1540483477 * (v2 ^ (v2 >> 13))) >> 15);
}

uint64_t indirectArgumentFormattedDescription(uint64_t a1, const MTLArgumentDescriptorPrivate *a2)
{
  v7[18] = *MEMORY[0x1E69E9840];
  v3 = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  if (a2->constantBlockAlignment)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  }

  else
  {
    v4 = @"default";
  }

  v7[0] = v3;
  v7[1] = @"dataType =";
  v7[2] = MTLDataTypeString(a2->dataType);
  v7[3] = v3;
  v7[4] = @"index =";
  v7[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->index];
  v7[6] = v3;
  v7[7] = @"arrayLength =";
  v7[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2->arrayLength];
  v7[9] = v3;
  v7[10] = @"access =";
  v7[11] = argumentAccessNames(a2->access);
  v7[12] = v3;
  v7[13] = @"textureType =";
  v7[14] = MTLTextureTypeString(a2->textureType);
  v7[15] = v3;
  v7[16] = @"constantBlockAlignment =";
  v7[17] = v4;
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:{18), "componentsJoinedByString:", @" "}];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLOverrideDeviceCreationFlags(uint64_t result)
{
  _are_device_creation_flags_overriden = 1;
  _overriden_device_creation_flags = result;
  return result;
}

uint64_t MTLGetOverridenDeviceCreationFlags(void *a1)
{
  v1 = _are_device_creation_flags_overriden;
  if (a1 && _are_device_creation_flags_overriden)
  {
    *a1 = _overriden_device_creation_flags;
  }

  return v1;
}

uint64_t MTLEnvVarAggregator::GET_MTL_LEGACY_COMPILER_PROCESS_COUNT(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_LEGACY_COMPILER_PROCESS_COUNT();
  }

  if (MTLEnvVarAggregator::GET_MTL_LEGACY_COMPILER_PROCESS_COUNT(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_LEGACY_COMPILER_PROCESS_COUNT(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

uint64_t pipelineDumper(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = MTLCopyAllDevices();
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [(NSArray *)v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v6 + 1) + 8 * v4++) dumpPipelineDescriptorsIfRequested];
      }

      while (v2 != v4);
      result = [(NSArray *)v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v2 = result;
    }

    while (result);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *generateNSError(void *result, NSString *a2, MTLLibraryError a3, NSString *a4)
{
  if (result)
  {
    v6 = result;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:a4 forKey:*MEMORY[0x1E696A578]];
    result = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:a2 code:a3 userInfo:v7];
    *v6 = result;
  }

  return result;
}

id getSubDictionary(NSDictionary *a1, NSString *a2, NSError **a3)
{
  v4 = [(NSDictionary *)a1 objectForKeyedSubscript:a2];
  if (!v4 || (v5 = v4, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a3)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metal package" forKey:*MEMORY[0x1E696A578]];
      v5 = 0;
      *a3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v6];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t getVersionValue(NSDictionary *a1, NSString *a2, NSError **a3)
{
  v4 = [(NSDictionary *)a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    return [v4 integerValue];
  }

  else
  {
    if (a3)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metal package" forKey:*MEMORY[0x1E696A578]];
      *a3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v6];
    }

    return 0;
  }
}

id getStringInDictionary(NSDictionary *a1, NSString *a2, NSError **a3)
{
  v4 = [(NSDictionary *)a1 objectForKeyedSubscript:a2];
  if (!v4 || (v5 = v4, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a3)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metal package" forKey:*MEMORY[0x1E696A578]];
      v5 = 0;
      *a3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v6];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_185CA25C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void _MTLCompilerWarningLog(NSError *a1)
{
  if (_MTLCompilerWarningLog(NSError *)::onceToken != -1)
  {
    _MTLCompilerWarningLog();
  }

  v2 = _MTLCompilerWarningLog(NSError *)::compilerWarningLogObject;
  if (os_log_type_enabled(_MTLCompilerWarningLog(NSError *)::compilerWarningLogObject, OS_LOG_TYPE_ERROR))
  {
    _MTLCompilerWarningLog(a1, v2);
  }
}

__CFString *_MTLLibraryTypeString(uint64_t a1)
{
  v1 = @"MTLLibraryTypeDynamic";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLLibraryTypeExecutable";
  }
}

void sub_185CA3200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_185CA3670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185CA3874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185CA39D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t errorMessageFromContext(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v7++), "string")}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  result = [v2 componentsJoinedByString:@"\n"];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185CA3CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t validateMTLStitchedLibraryDescriptor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 functionGraphs])
      {
        [a1 functionGraphs];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([objc_msgSend(a1 "functionGraphs")])
          {
            if ([a1 functions])
            {
              [a1 functions];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([objc_msgSend(a1 "functions")])
                {
                  if ([objc_msgSend(a1 "functions")])
                  {
                    v10 = 0;
                    while (1)
                    {
                      [objc_msgSend(a1 "functions")];
                      if (![objc_opt_class() conformsToProtocol:&unk_1EF4F4B58])
                      {
                        break;
                      }

                      if (++v10 >= [objc_msgSend(a1 "functions")])
                      {
                        goto LABEL_13;
                      }
                    }

                    _MTLMessageContextPush_(a2, 8, @"descriptor.functions[%lu] does not conform to MTLFunction.", v11, v12, v13, v14, v15, v10);
                    return 0;
                  }

LABEL_13:
                  if (![a1 isMemberOfClass:objc_opt_class()])
                  {
                    return 1;
                  }

                  if ([a1 binaryArchives])
                  {
                    [a1 binaryArchives];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([objc_msgSend(a1 "binaryArchives")])
                      {
                        v16 = 0;
                        while (1)
                        {
                          [objc_msgSend(a1 "binaryArchives")];
                          if (![objc_opt_class() conformsToProtocol:&unk_1EF4DF090])
                          {
                            break;
                          }

                          ++v16;
                          v17 = [objc_msgSend(a1 "binaryArchives")];
                          result = 1;
                          if (v16 >= v17)
                          {
                            return result;
                          }
                        }

                        v20 = v16;
                        v19 = @"descriptor.binaryArchives[%lu] does not conform to MTLBinaryArchive.";
                        goto LABEL_34;
                      }

                      return 1;
                    }

                    v19 = @"descriptor.binaryArchives is not an NSArray.";
                  }

                  else
                  {
                    v19 = @"descriptor.binaryArchives cannot be nil.";
                  }
                }

                else
                {
                  v19 = @"descriptor.functions cannot be empty.";
                }
              }

              else
              {
                v19 = @"descriptor.functions is not an NSArray.";
              }
            }

            else
            {
              v19 = @"descriptor.functions cannot be nil.";
            }
          }

          else
          {
            v19 = @"descriptor.functionGraphs cannot be empty.";
          }
        }

        else
        {
          v19 = @"descriptor.functionGraphs is not an NSArray.";
        }
      }

      else
      {
        v19 = @"descriptor.functionGraphs cannot be nil.";
      }
    }

    else
    {
      v19 = @"descriptor is not a MTLStitchedLibraryDescriptor.";
    }
  }

  else
  {
    v19 = @"descriptor cannot be nil.";
  }

LABEL_34:
  _MTLMessageContextPush_(a2, 8, v19, a4, a5, a6, a7, a8, v20);
  return 0;
}

id newDAGStringFromFunctionGraphs(void *a1, char a2, uint64_t a3)
{
  v106 = *MEMORY[0x1E69E9840];
  v104 = a3;
  if (newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::onceToken != -1)
  {
    newDAGStringFromFunctionGraphs();
  }

  v103 = newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::staticAllowBadLegacyDAGs & 1 | ((a2 & 4) != 0);
  v102 = 0;
  v100 = 0;
  v101 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"DAGS {\n"];
  if ([a1 count])
  {
    do
    {
      v4 = [a1 objectAtIndexedSubscript:v100];
      v99 = v4;
      if (!v102)
      {
        if (v4 || (v102 = 1, _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu] cannot be nil.", v5, v6, v7, v8, v9, v100), !v102))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v102 = 1;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            newDAGStringFromFunctionGraphs(&v104, v10, v11, v12, v13, v14, v15, v16);
          }

          if (!v102)
          {
            v102 = [v99 functionName] == 0;
            if (![v99 functionName])
            {
              _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].functionName cannot be nil", v17, v18, v19, v20, v21, v100);
            }

            if (!v102)
            {
              [v99 functionName];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v102 = 1;
              }

              [v99 functionName];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].functionName is not an NSString.", v22, v23, v24, v25, v26, v100);
              }

              if (!v102)
              {
                v102 = [objc_msgSend(v99 "functionName")] != 0;
                if ([objc_msgSend(v99 "functionName")])
                {
                  _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].functionName cannot be empty.", v27, v28, v29, v30, v31, v100);
                }

                if (!v102)
                {
                  [v101 appendString:{objc_msgSend(v99, "functionName")}];
                  if (!v102)
                  {
                    [v101 appendString:@" {\n"];
                    if (!v102)
                    {
                      v102 = [v99 attributes] == 0;
                      if (![v99 attributes])
                      {
                        _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].attributes cannot be nil.", v32, v33, v34, v35, v36, v100);
                      }

                      if (!v102)
                      {
                        [v99 attributes];
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v102 = 1;
                        }

                        [v99 attributes];
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].attributes is not an NSArray.", v37, v38, v39, v40, v41, v100);
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

      if (v102 || ![objc_msgSend(v99 "attributes")])
      {
        goto LABEL_45;
      }

      v42 = 0;
      v43 = 0;
      do
      {
        [objc_msgSend(v99 "attributes")];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v102)
          {
            [v101 appendString:@"ALWAYS_INLINE;\n"];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v102)
            {
              [v101 appendString:@"KERNEL;\n"];
            }

            v42 = 1;
          }

          else if (!v102)
          {
            v102 = 1;
            v44 = v104;
            v45 = v100;
            v46 = objc_opt_class();
            NSStringFromClass(v46);
            _MTLMessageContextPush_(v44, 8, @"functionGraphs[%lu].attributes[%lu] is of incorrect type: %@.", v47, v48, v49, v50, v51, v45);
          }
        }

        ++v43;
      }

      while (v43 < [objc_msgSend(v99 "attributes")]);
      if ((v42 & 1) == 0)
      {
LABEL_45:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & !v102) == 1)
        {
          [v101 appendString:@"KERNEL;\n"];
        }
      }

      if (![v99 outputNode] && !v102)
      {
        v102 = [v99 nodes] == 0;
        if (![v99 nodes])
        {
          _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].nodes cannot be nil if functionGraphs[%lu].outputNode is nil.", v52, v53, v54, v55, v56, v100);
        }

        if (!v102)
        {
          v102 = [objc_msgSend(v99 "nodes")] == 0;
          if (![objc_msgSend(v99 "nodes")])
          {
            _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].nodes cannot be empty if functionGraphs[%lu].outputNode is nil.", v57, v58, v59, v60, v61, v100);
          }
        }
      }

      memset(v97, 0, sizeof(v97));
      v98 = 1.0;
      v96 = -1;
      if (!v102)
      {
        if ([v99 nodes])
        {
          v62 = [objc_msgSend(v99 "nodes")];
          std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(v97, vcvtps_u32_f32(v62 / v98));
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v63 = [v99 nodes];
          v64 = [v63 countByEnumeratingWithState:&v91 objects:v105 count:16];
          if (v64)
          {
            v65 = 0;
            v66 = *v92;
            do
            {
              for (i = 0; i != v64; ++i)
              {
                if (*v92 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v95 = 0;
                v95 = *(*(&v91 + 1) + 8 * i);
                v68 = v95;
                if (v68 == [v99 outputNode] && (v103 & 1) == 0)
                {
                  v96 = v65;
                }

                v69 = std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>(v97, &v95);
                if (v69)
                {
                  if (!(v102 | v103))
                  {
                    v102 = 1;
                    v88 = v69[3];
                    _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].nodes[%lu] was listed again in the same graph at .nodes[%lu].", v70, v71, v72, v73, v74, v100);
                  }
                }

                else
                {
                  v90[0] = &v95;
                  std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(v97, &v95)[3] = v65;
                }

                ++v65;
              }

              v64 = [v63 countByEnumeratingWithState:&v91 objects:v105 count:16];
            }

            while (v64);
          }
        }
      }

      v90[0] = &v102;
      v90[1] = &v104;
      v90[2] = &v100;
      v90[3] = &v101;
      v90[4] = &v99;
      v90[5] = &v103;
      v90[6] = &v96;
      v90[7] = v97;
      if (!v102)
      {
        [v99 nodes];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v102 = 1;
        }

        [v99 nodes];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          _MTLMessageContextPush_(v104, 8, @"functionGraphs[%lu].nodes is not an NSArray.", v75, v76, v77, v78, v79, v100);
        }
      }

      v80 = v102;
      if (!v102)
      {
        for (j = 0; j < [objc_msgSend(v99 "nodes")]; ++j)
        {
          v82 = [objc_msgSend(v99 "nodes")];
          newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator()(v90, v82, j, j == v96);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v83 = [v82 isEarlyReturn];
            if (v102)
            {
              v84 = 0;
            }

            else
            {
              v84 = v83;
            }

            if (v84 == 1)
            {
              [v101 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"NODE(node_early_return) : EARLY_RETURN, NODE(node_%lu);\n", j)}];
            }
          }
        }

        v80 = v102;
      }

      if (!v80 && v96 == -1)
      {
        if ([v99 outputNode])
        {
          newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator()(v90, [v99 outputNode], -1, 1);
        }

        v80 = v102;
      }

      if (!v80)
      {
        [v101 appendString:@"}\n"];
      }

      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v97);
      v85 = ++v100;
    }

    while (v85 < [a1 count]);
  }

  if (v102 || ([v101 appendString:@"}\n"], v102))
  {
    [v101 setString:&stru_1EF478240];
  }

  result = v101;
  v87 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185CA4B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CA4DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CA7A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CA7C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1865FF210](v16, v15);
  _Unwind_Resume(a1);
}

uint64_t MTLResolveFileURL(NSURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (![(NSURL *)a1 isFileURL])
  {
    return 0;
  }

  v2 = realpath_DARWIN_EXTSN([(NSURL *)a1 fileSystemRepresentation], 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E695DFF8]);
  v5 = [v4 initFileURLWithPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v3)}];
  free(v3);
  return v5;
}

void sub_185CA7DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CA7F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1865FF210](v15, v14);
  _Unwind_Resume(a1);
}

uint64_t MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE();
  }

  if (MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

uint64_t MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT();
  }

  if (MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

uint64_t MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER();
  }

  if (MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

__CFString *_MTLGPUFamilyString(uint64_t a1)
{
  if (a1 > 1009)
  {
    if (a1 > 3002)
    {
      if (a1 <= 4001)
      {
        if (a1 == 3003)
        {
          return @"MTLGPUFamilyCommon3";
        }

        if (a1 == 4001)
        {
          return @"MTLGPUFamilyMacCatalyst1";
        }
      }

      else
      {
        switch(a1)
        {
          case 4002:
            return @"MTLGPUFamilyMacCatalyst2";
          case 5001:
            return @"MTLGPUFamilyMetal3";
          case 5002:
            return @"MTLGPUFamilyMetal4";
        }
      }
    }

    else if (a1 <= 2001)
    {
      if (a1 == 1010)
      {
        return @"MTLGPUFamilyApple10";
      }

      if (a1 == 2001)
      {
        return @"MTLGPUFamilyMac1";
      }
    }

    else
    {
      switch(a1)
      {
        case 2002:
          return @"MTLGPUFamilyMac2";
        case 3001:
          return @"MTLGPUFamilyCommon1";
        case 3002:
          return @"MTLGPUFamilyCommon2";
      }
    }

    return @"Unknown";
  }

  if (a1 <= 1004)
  {
    if (a1 > 1001)
    {
      if (a1 == 1002)
      {
        return @"MTLGPUFamilyApple2";
      }

      if (a1 == 1003)
      {
        return @"MTLGPUFamilyApple3";
      }

      return @"MTLGPUFamilyApple4";
    }

    if (a1 != -1009)
    {
      if (a1 == 1001)
      {
        return @"MTLGPUFamilyApple1";
      }

      return @"Unknown";
    }

    return @"MTLGPUFamilyApple9";
  }

  if (a1 > 1006)
  {
    if (a1 == 1007)
    {
      return @"MTLGPUFamilyApple7";
    }

    if (a1 == 1008)
    {
      return @"MTLGPUFamilyApple8";
    }

    return @"MTLGPUFamilyApple9";
  }

  if (a1 == 1005)
  {
    return @"MTLGPUFamilyApple5";
  }

  else
  {
    return @"MTLGPUFamilyApple6";
  }
}

void MTLValidateFeatureSupportWithContext(id *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = _MTLMessageTypeFromFailureType(a3);
  if (([a1[44] supportForFeature:a2] & 1) == 0)
  {
    v8 = [a1[44] requirementForFeature:a2];
    if (v8)
    {
      v14 = v8;
      if (([a1 supportsFamily:v8] & 1) == 0)
      {
        v15 = [a1[44] nameForFeature:a2];
        _MTLGPUFamilyString(v14);
        _MTLMessageContextPush_(a4, v7, @"%@ is only supported on %@ and later.", v16, v17, v18, v19, v20, v15);
      }
    }

    else
    {
      v21 = [a1[44] nameForFeature:a2];
      _MTLMessageContextPush_(a4, v7, @"%@ is not supported on this device", v9, v10, v11, v12, v13, v21);
    }
  }
}

uint64_t _MTLFeatureSetDictionary()
{
  if (_MTLFeatureSetDictionary::onceToken != -1)
  {
    _MTLFeatureSetDictionary_cold_1();
  }

  v1 = _MTLFeatureSetDictionary::featureSetDictionary;

  return [v1 copy];
}

uint64_t logCompileTimeStatsMode(void)
{
  if (logCompileTimeStatsMode(void)::onceToken != -1)
  {
    logCompileTimeStatsMode();
  }

  return logCompileTimeStatsMode(void)::shouldLogStats;
}

void writeCompileTimeStatsJSONFile(void)
{
  CompileStatsJSONPath = getCompileStatsJSONPath();
  if (CompileStatsJSONPath)
  {
    v1 = CompileStatsJSONPath;
    if (getCompilePerformanceQueue(void)::onceToken != -1)
    {
      writeCompileTimeStatsJSONFile();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___Z29writeCompileTimeStatsJSONFilev_block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = v1;
    dispatch_sync(getCompilePerformanceQueue(void)::_compilePerformanceStatsQueue, block);
  }
}

void ___Z29writeCompileTimeStatsJSONFilev_block_invoke(uint64_t a1)
{
  if (getCompilePerformanceDictionary(void)::onceToken != -1)
  {
    ___Z29writeCompileTimeStatsJSONFilev_block_invoke_cold_1();
  }

  v2 = getCompilePerformanceDictionary(void)::_compilePerformanceStatistics;
  if (getCompilePerformanceDictionary(void)::_compilePerformanceStatistics)
  {
    v12 = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DFC0]) initToFileAtPath:*(a1 + 32) append:0];
    if (!v10)
    {
      ___Z29writeCompileTimeStatsJSONFilev_block_invoke_cold_2(0, v3, v4, v5, v6, v7, v8, v9, v11);
    }

    [v10 open];
    [MEMORY[0x1E696ACB0] writeJSONObject:v2 toStream:v10 options:1 error:&v12];
    if (v12)
    {
      ___Z29writeCompileTimeStatsJSONFilev_block_invoke_cold_3(v12);
    }

    [v10 close];
  }
}

double getCompileTimeInMS(NSDictionary *a1, NSString *a2)
{
  v2 = [(NSDictionary *)a1 objectForKey:a2];
  if (v2)
  {
    return [v2 unsignedLongLongValue] * 0.000001;
  }

  else
  {
    return 0.0;
  }
}

void logCompileTimeForPipeline(NSDictionary *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)a1 objectForKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
  v3 = [(NSDictionary *)a1 objectForKey:MTLCompileTimeStatisticsKeyTotal[0]];
  if (v3)
  {
    v4 = [v3 unsignedLongLongValue] * 0.000001;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [-[NSDictionary objectForKey:](a1 objectForKey:{MTLCompileTimeStatisticsKeyCachedFunction[0]), "BOOLValue"}];
  if (v2 && v4 != 0.0 && (v5 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = [v2 UTF8String];
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Done compiling Metal function '%s': %f ms", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void logCompileTimeForLibrary(NSDictionary *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)a1 objectForKey:MTLLibraryPerformanceKeyFunctionNames];
  v3 = [(NSDictionary *)a1 objectForKey:MTLLibraryPerformanceKeyTotalFrontendTotalTime];
  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
    v5 = v2 != 0;
    if (v2)
    {
      v6 = v4 * 0.000001;
      if (v6 != 0.0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315394;
          v13 = [objc_msgSend(v2 "description")];
          v14 = 2048;
          v15 = v6;
          _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Done compiling Metal library with functions '%s': %f ms", &v12, 0x16u);
        }

        v5 = 1;
      }
    }
  }

  else
  {
    v5 = v2 != 0;
  }

  v7 = [(NSDictionary *)a1 objectForKey:MTLLibraryPerformanceKeyFunctionSpecialization];
  if (v7)
  {
    v8 = [v7 unsignedLongLongValue] * 0.000001;
    v9 = v8 != 0.0 && v5;
    if (v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [objc_msgSend(v2 "description")];
      v12 = 136315394;
      v13 = v10;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Done compiling Metal function specialization for '%s': %f ms", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t _MTLCompileTimeStatistics()
{
  if (getCompilePerformanceDictionary(void)::onceToken != -1)
  {
    ___Z29writeCompileTimeStatsJSONFilev_block_invoke_cold_1();
  }

  return getCompilePerformanceDictionary(void)::_compilePerformanceStatistics;
}

void writeCompileTimeStatistics(int a1, NSDictionary *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  writeCompileTimeStatsJSONFile();
  if (logCompileTimeStatsMode(void)::onceToken != -1)
  {
    logCompileTimeStatsMode();
  }

  if (logCompileTimeStatsMode(void)::shouldLogStats == 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        v5 = "library";
      }

      else
      {
        v5 = "pipeline";
      }

      v11 = 136315394;
      v12 = v5;
      v13 = 2080;
      v14 = [-[NSDictionary debugDescription](a2 "debugDescription")];
      _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Done compiling Metal %s, compile statistics: %s", &v11, 0x16u);
    }

    goto LABEL_18;
  }

  if (logCompileTimeStatsMode(void)::shouldLogStats != 1)
  {
    goto LABEL_18;
  }

  if (a1)
  {
    v4 = *MEMORY[0x1E69E9840];

    logCompileTimeForLibrary(a2);
    return;
  }

  v6 = [(NSDictionary *)a2 objectForKey:MTLPipelinePerformanceKeyVertexShader[0]];
  v7 = v6;
  if (v6)
  {
    logCompileTimeForPipeline(v6);
  }

  v8 = [(NSDictionary *)a2 objectForKey:MTLPipelinePerformanceKeyFragmentShader[0]];
  if (v8)
  {
    logCompileTimeForPipeline(v8);
    if (v7)
    {
LABEL_18:
      v9 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  logCompileTimeForPipeline(a2);
}

void _MTLAddCompileLibraryPerformanceStatistics(NSDictionary *a1)
{
  if ((addCompileTimeDictionary(a1, MTLCompileTimeStatisticsKeyLibrariesFromSource) & 1) == 0)
  {
    v1 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v1)
    {
      _MTLAddCompileLibraryPerformanceStatistics_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

uint64_t addCompileTimeDictionary(NSDictionary *a1, NSString *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (getCompilePerformanceDictionary(void)::onceToken != -1)
  {
    ___Z29writeCompileTimeStatsJSONFilev_block_invoke_cold_1();
  }

  v4 = [getCompilePerformanceDictionary(void)::_compilePerformanceStatistics objectForKey:a2];
  if (v4)
  {
    if (getCompilePerformanceQueue(void)::onceToken != -1)
    {
      writeCompileTimeStatsJSONFile();
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZL24addCompileTimeDictionaryP12NSDictionaryP8NSString_block_invoke;
    v6[3] = &unk_1E6EEB5C0;
    v6[4] = v4;
    v6[5] = a1;
    dispatch_sync(getCompilePerformanceQueue(void)::_compilePerformanceStatsQueue, v6);
    v4 = 1;
    writeCompileTimeStatistics(1, a1);
  }

  return v4;
}

void _MTLAddCompileDynamicLibraryPerformanceStatistics(NSDictionary *a1)
{
  if ((addCompileTimeDictionary(a1, MTLCompileTimeStatisticsKeyDynamicLibraries) & 1) == 0)
  {
    v1 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v1)
    {
      _MTLAddCompileDynamicLibraryPerformanceStatistics_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

void _MTLAddCompileBinaryFunctionPerformanceStatistics(NSDictionary *a1)
{
  if ((addCompileTimeDictionary(a1, MTLCompileTimeStatisticsKeyBinaryFunctions) & 1) == 0)
  {
    v1 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v1)
    {
      _MTLAddCompileBinaryFunctionPerformanceStatistics_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

void _MTLAddCompilePipelinePerformanceStatistics(NSDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (getCompilePerformanceDictionary(void)::onceToken != -1)
    {
      ___Z29writeCompileTimeStatsJSONFilev_block_invoke_cold_1();
    }

    v4 = [objc_msgSend(getCompilePerformanceDictionary(void)::_compilePerformanceStatistics objectForKey:{MTLCompileTimeStatisticsKeyPipelines), "objectForKey:", a2}];
    if (getCompilePerformanceQueue(void)::onceToken != -1)
    {
      writeCompileTimeStatsJSONFile();
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___MTLAddCompilePipelinePerformanceStatistics_block_invoke;
    v5[3] = &unk_1E6EEB5C0;
    v5[4] = v4;
    v5[5] = a1;
    dispatch_sync(getCompilePerformanceQueue(void)::_compilePerformanceStatsQueue, v5);
    writeCompileTimeStatistics(0, a1);
  }
}

os_log_t ___ZL22_MTLCompilerWarningLogP7NSError_block_invoke()
{
  result = os_log_create("com.apple.Metal", "Metal Compiler Warning");
  _MTLCompilerWarningLog(NSError *)::compilerWarningLogObject = result;
  return result;
}

uint64_t ___ZL30newDAGStringFromFunctionGraphsP7NSArrayIP25MTLFunctionStitchingGraphEmP18_MTLMessageContext_block_invoke()
{
  result = dyld_program_sdk_at_least();
  newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::staticAllowBadLegacyDAGs = result ^ 1;
  return result;
}

void *std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
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
        if (result[2] == *a2)
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

void *std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
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

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

dispatch_queue_t ___ZL26getCompilePerformanceQueuev_block_invoke()
{
  result = dispatch_queue_create(0, 0);
  getCompilePerformanceQueue(void)::_compilePerformanceStatsQueue = result;
  return result;
}

void ___ZL31getCompilePerformanceDictionaryv_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  getCompilePerformanceDictionary(void)::_compilePerformanceStatistics = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9[0] = MTLCompileTimeStatisticsKeyLibrariesFromSource;
  v9[1] = MTLCompileTimeStatisticsKeyDynamicLibraries;
  v9[2] = MTLCompileTimeStatisticsKeyBinaryFunctions;
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<NSString *>::__init_with_size[abi:ne200100]<NSString * const*,NSString * const*>(&__p, v9, &v10, 3uLL);
  v0 = __p;
  v1 = v7;
  if (__p != v7)
  {
    do
    {
      [getCompilePerformanceDictionary(void)::_compilePerformanceStatistics setObject:objc_msgSend(MEMORY[0x1E695DF70] forKey:{"array"), *v0++}];
    }

    while (v0 != v1);
  }

  v2 = [MEMORY[0x1E695DF90] dictionary];
  [getCompilePerformanceDictionary(void)::_compilePerformanceStatistics setObject:v2 forKey:MTLCompileTimeStatisticsKeyPipelines];
  v3 = [MEMORY[0x1E695DF70] array];
  [v2 setObject:v3 forKey:MTLCompileTimeStatisticsKeyPipelinesCompute];
  v4 = [MEMORY[0x1E695DF70] array];
  [v2 setObject:v4 forKey:MTLCompileTimeStatisticsKeyPipelinesRender];
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t std::vector<NSString *>::__init_with_size[abi:ne200100]<NSString * const*,NSString * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185CAA734(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice initDefaultLogState]::$_0 &&>>(uint64_t **a1)
{
  v1 = **a1;
  result = [**v1 newLogStateWithDescriptor:*(**v1 + 360) error:*(v1 + 8)];
  *(**v1 + 608) = result;
  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice initProgressTracking]::$_1 &&>>(id ****a1)
{
  v1 = **a1;
  if ([objc_msgSend(**v1 "name")])
  {
    v2 = 1;
  }

  else if ([objc_msgSend(**v1 "name")])
  {
    v2 = [**v1 supportsFamily:2002] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *v1;
  *(**v1 + 328) = v2;
  if (*(*v3 + 328) == 1)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Metal"];
    if (!v4)
    {
      v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v5)
      {
        std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice initProgressTracking]::$_1 &&>>(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    v13 = [v4 URLForResource:@"MTLECBE" withExtension:@"metallib"];
    if (!v13)
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice initProgressTracking]::$_1 &&>>(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    v26 = 0;
    v22 = [**v1 newLibraryWithURL:v13 error:&v26];
    v23 = objc_opt_new();
    v24 = [v22 newFunctionWithName:@"progressTrackVertex"];
    [v23 setVertexFunction:v24];

    [v23 setRasterizationEnabled:0];
    [objc_msgSend(objc_msgSend(v23 "colorAttachments")];
    [v23 setInputPrimitiveTopology:1];
    [v23 setLabel:@"MTLECBE"];
    *(**v1 + 42) = [**v1 newRenderPipelineStateWithDescriptor:v23 error:&v26];
    [v23 setVertexFunction:0];

    v25 = [v22 newFunctionWithName:@"progressTrackKernel"];
    *(**v1 + 43) = [**v1 newComputePipelineStateWithFunction:v25 error:&v26];
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice getCompilerConnectionManager:]::$_2 &&>>(uint64_t ****a1)
{
  v1 = **a1;
  v2 = **v1;
  v3 = *v1[1];
  MTLCreateCompilerConnectionManager();
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice getCompilerConnectionManager:]::$_3 &&>>(uint64_t ****a1)
{
  v1 = **a1;
  v2 = **v1;
  v3 = *v1[1];
  MTLCreateCompilerConnectionManager();
}

uint64_t OUTLINED_FUNCTION_0_6()
{
  result = **(v0 + 8);
  v3 = **(v0 + 16);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{
  result = **(v0 + 8);
  v3 = **(v0 + 16);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  result = **(v0 + 8);
  v2 = **(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return [v1 isMemberOfClass:a1];
}

uint64_t OUTLINED_FUNCTION_8()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_9()
{
  v2 = *(v0 + 3784);

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_13()
{
  v3 = *(v0 + 920);

  return [v1 conformsToProtocol:v3];
}

uint64_t OUTLINED_FUNCTION_14()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return objc_opt_isKindOfClass();
}

__n128 prepareVisibleFunctionHeader(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = [a1 libraryData];
  [a1 pluginData];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  (*(*v6 + 208))(v6, [a1 bitCodeOffset], objc_msgSend(a1, "bitCodeFileSize"), &v16, &v17, &v15);
  v7 = *a3;
  *(a2 + 8) = *a3;
  v8 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v8 = v17;
  }

  *(a2 + 12) = v8;
  *a3 = v8 + v7;
  v9 = [objc_msgSend(a1 "pluginData")];
  v10 = *a3;
  *(a2 + 16) = *a3;
  *(a2 + 20) = v9;
  *a3 = v10 + v9;
  [objc_msgSend(a1 "name")];
  v11 = [objc_msgSend(a1 "name")];
  v12 = v11 + 8;
  *a2 = *a3;
  *(a2 + 4) = v11 + 1;
  *(a2 + 6) = [a1 bitcodeType];
  v13 = [a1 bitCodeHash];
  result = *(v13 + 16);
  *(a2 + 24) = *v13;
  *(a2 + 40) = result;
  *a3 += v12 & 0xFFFFFFF8;
  return result;
}

_MTLLibrary *MTLCompilerFunctionRequest::setLibrary(_MTLLibrary *this, _MTLLibrary *a2)
{
  label = this[3].super._label;
  if (label != a2)
  {
    v4 = this;
    if (label)
    {
    }

    this = a2;
    v4[3].super._label = &this->super.super.isa;
  }

  return this;
}

uint64_t MTLCompilerFunctionRequest::copyLinkData(MTLCompilerFunctionRequest *this, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(this + 30))
  {
    return 0;
  }

  result = *(this + 22);
  if (result)
  {
    v6 = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(result, &buffer_ptr, &v6);
    memcpy(a2, buffer_ptr + v6 - *(this + 30), *(this + 30));
    dispatch_release(v5);
    return 1;
  }

  return result;
}

char *MTLCompilerFunctionRequest::setBinaryArchiveID(MTLCompilerFunctionRequest *this, const char *__s)
{
  v4 = *(this + 37);
  if (v4)
  {
    free(v4);
  }

  v5 = strlen(__s);
  v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
  *(this + 37) = v6;

  return strcpy(v6, __s);
}

void std::vector<MTLBuildBinaryRequest>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLBuildBinaryRequest>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLBuildBinaryRequest>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MTLCompilerConnection::~MTLCompilerConnection(MTLCompilerConnection *this)
{
  *this = &unk_1EF475C30;
  v2 = *(this + 13);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    dispatch_release(v3);
  }

  v6 = (this + 64);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  MTLCompilerConnection::~MTLCompilerConnection(this);

  JUMPOUT(0x1865FF210);
}

void ___ZN21MTLCompilerConnection15scheduleRequestEbNSt3__110shared_ptrI19MTLSchedulerRequestEERNS0_11unique_lockINS0_5mutexEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = (*(v1 + 88) + 88);
  v7 = 1;
  std::mutex::lock(v6);
  v2 = *(v1 + 88);
  std::shared_ptr<MTLCompilerConnection>::shared_ptr[abi:ne200100]<MTLCompilerConnection,0>(&v4, (v1 + 8));
  v3 = 2;
  MTLCompilerScheduler::attemptWorksteal(v2, v4, &v6, &v3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 == 1)
  {
    std::mutex::unlock(v6);
  }
}

void sub_185CAC0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::mutex *a13, char a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21MTLCompilerConnection15scheduleRequestEbNSt3__110shared_ptrI19MTLSchedulerRequestEERNS0_11unique_lockINS0_5mutexEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = (*(v1 + 88) + 88);
  v5 = 1;
  std::mutex::lock(v4);
  v2 = *(v1 + 88);
  v3 = 1;
  MTLCompilerScheduler::attemptWorksteal(v2, v1, &v4, &v3);
  if (v5 == 1)
  {
    std::mutex::unlock(v4);
  }
}

void sub_185CAC168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

void sub_185CAC5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *MTLCPUCacheModeString(uint64_t a1)
{
  v1 = @"Invalid";
  if (!a1)
  {
    v1 = @"MTLCPUCacheModeDefaultCache";
  }

  if (a1 == 1)
  {
    return @"MTLCPUCacheModeWriteCombined";
  }

  else
  {
    return v1;
  }
}

__CFString *MTLStorageModeString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1E6EEB7C8 + a1);
  }
}

void *MTLTextureUsageString(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if (!a1)
  {
    [v2 appendString:@"MTLTextureUsageUnknown"];
    return v3;
  }

  v4 = (a1 & 1) == 0;
  if (a1)
  {
    [v2 appendFormat:@"%s%@", "", @"MTLTextureUsageShaderRead"];
  }

  if ((a1 & 2) != 0)
  {
    if (a1)
    {
      v5 = " ";
    }

    else
    {
      v5 = "";
    }

    [v3 appendFormat:@"%s%@", v5, @"MTLTextureUsageShaderWrite"];
    v4 = 0;
    if ((a1 & 4) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    v6 = "";
  }

  else
  {
    v6 = " ";
  }

  [v3 appendFormat:@"%s%@", v6, @"MTLTextureUsageRenderTarget"];
  v4 = 0;
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_19:
  if (v4)
  {
    v7 = "";
  }

  else
  {
    v7 = " ";
  }

  [v3 appendFormat:@"%s%@", v7, @"MTLTextureUsagePixelFormatView"];
  v4 = 0;
  if ((a1 & 0x4000) == 0)
  {
LABEL_8:
    if ((a1 & 0x10000) == 0)
    {
      return v3;
    }

    goto LABEL_27;
  }

LABEL_23:
  if (v4)
  {
    v8 = "";
  }

  else
  {
    v8 = " ";
  }

  [v3 appendFormat:@"%s%@", v8, @"MTLTextureUsageNoConcurrentAccess"];
  v4 = 0;
  if ((a1 & 0x10000) != 0)
  {
LABEL_27:
    if (v4)
    {
      v9 = "";
    }

    else
    {
      v9 = " ";
    }

    [v3 appendFormat:@"%s%@", v9, @"MTLTextureUsageBlockWritesOnly"];
  }

  return v3;
}

__CFString *MTLUnmappedDepthValueString(uint64_t a1)
{
  v1 = @"Invalid";
  if (a1 == 1)
  {
    v1 = @"MTLUnmappedDepthValueOne";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLUnmappedDepthValueZero";
  }
}

__CFString *MTLTextureCompressionTypeString(uint64_t a1)
{
  v1 = @"Invalid";
  if (a1 == 1)
  {
    v1 = @"MTLTextureCompressionTypeLossy";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLTextureCompressionTypeLossless";
  }
}

__CFString *MTLTextureAccessPatternString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1E6EEB7E8 + a1);
  }
}

void validateMTLTextureType(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 0xA)
  {
    _MTLMessageContextPush_(a2, 4, @"type (%lu) is not a valid MTLTextureType.", a4, a5, a6, a7, a8, a1);
  }
}

uint64_t enableTextureUsageUnknownDefault()
{
  if ((gEnableTextureUsageUnknownDefaultInitialized & 1) == 0)
  {
    v0 = getenv("MTL_ENABLE_TEXTURE_USAGE_UNKNOWN_DEFAULT");
    if (v0 && *v0 == 49)
    {
      gEnableTextureUsageUnknownDefault = 1;
    }

    gEnableTextureUsageUnknownDefaultInitialized = 1;
  }

  return gEnableTextureUsageUnknownDefault;
}

void _validateTextureUsage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = a1 & 0xFFFFFFFFFFFEBFC0;
    if (a2)
    {
      if (v8)
      {
        _MTLMessageContextPush_(a2, 4, @"MTLTextureUsage has unknown bits 0x%lx.", a4, a5, a6, a7, a8, v8);
      }
    }

    else if (v8)
    {
      _validateTextureUsage_cold_1(v8, 0, a3, a4, a5, a6, a7, a8);
    }
  }
}

void _mtlValidateTextureUsage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = a1 & 0xFFFFFFFFFFFEBFC0;
    if (v8)
    {
      _validateTextureUsage_cold_1(v8, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

uint64_t MTLTextureSwizzleViewSwizzle(unsigned int a1, unsigned int a2)
{
  v2 = vshlq_u32(vdupq_n_s32(a2), xmmword_185DE1D20);
  v3.i64[0] = 0xFE000000FELL;
  v3.i64[1] = 0xFE000000FELL;
  v4.i64[0] = 0x1000000010;
  v4.i64[1] = 0x1000000010;
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vshlq_u32(vandq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v2, v3)), v2, vshlq_u32(vdupq_n_s32(a1), vsubq_s32(v4, vandq_s8(vshlq_n_s32(v2, 3uLL), vdupq_n_s32(0x7F8u))))), v5), xmmword_185DE1D30);
  *v6.i8 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  return (v6.i32[0] | v6.i32[1]);
}

void *MTLTextureSwizzleString(unsigned int a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  [v2 appendFormat:@"["];
  for (i = 3; ; --i)
  {
    if (a1 > 2u)
    {
      switch(a1)
      {
        case 3u:
          v4 = v2;
          v5 = @"MTLTextureSwizzleGreen";
          break;
        case 4u:
          v4 = v2;
          v5 = @"MTLTextureSwizzleBlue";
          break;
        case 5u:
          v4 = v2;
          v5 = @"MTLTextureSwizzleAlpha";
          break;
        default:
LABEL_13:
          [v2 appendFormat:@"Unknown(%u)", a1];
          goto LABEL_17;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        v4 = v2;
        v5 = @"MTLTextureSwizzleOne";
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_13;
        }

        v4 = v2;
        v5 = @"MTLTextureSwizzleRed";
      }
    }

    else
    {
      v4 = v2;
      v5 = @"MTLTextureSwizzleZero";
    }

    [v4 appendFormat:v5, v7];
LABEL_17:
    if (!i)
    {
      break;
    }

    [v2 appendFormat:@", "];
    a1 >>= 8;
  }

  [v2 appendFormat:@"]"];
  return v2;
}

__CFString *MTLTextureCompressionModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1E6EEB7B0 + a1);
  }
}

uint64_t MTLGetDisallowedTextureUsagesWhenSwizzling(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

id _copyIOSurfaceDevice(__IOSurface *a1)
{
  v1 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CEF8]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v1 objectForKeyedSubscript:kMetalRegistryID])
  {
    goto LABEL_5;
  }

  v3 = [objc_msgSend(v2 objectForKeyedSubscript:{kMetalRegistryID), "unsignedLongLongValue"}];
  v4 = MTLCreateSystemDefaultDevice();
  if ([v4 registryID] != v3)
  {

LABEL_5:
    v4 = 0;
  }

  return v4;
}

uint64_t MTLCalculateSourceBufferSizeAndAlignment(void *a1, void *a2, unint64_t *a3, char a4, uint64_t a5, unint64_t *a6, uint64_t *a7)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  MTLPixelFormatGetInfoForDevice([a1 device], objc_msgSend(a1, "pixelFormat"), &v25);
  v13 = *(&v26 + 1);
  if ((WORD4(v25) & 0x400) != 0)
  {
    v14 = *(&v27 + 1);
  }

  else
  {
    v14 = 1;
  }

  v15 = [a1 sampleCount] * v13;
  v16 = [a1 width];
  v17 = [a1 height] >> a4;
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = *a3;
  v19 = a3[1];
  if ((BYTE9(v25) & 4) != 0)
  {
    v20 = v16 >> a4;
    if (v16 >> a4 <= 1)
    {
      v20 = 1;
    }

    if (*a2 + v18 == v20)
    {
      v18 = (v18 + v27 - 1) / v27 * v27;
    }

    if (a2[1] + v19 == v17)
    {
      v19 = (v19 + *(&v27 + 1) - 1) / *(&v27 + 1) * *(&v27 + 1);
    }
  }

  result = [a1 textureType];
  if (result && (result = [a1 textureType], result != 1))
  {
    v23 = v19 / v14 * a5;
  }

  else
  {
    v22 = v27;
    if ((BYTE9(v25) & 4) == 0)
    {
      v22 = 1;
    }

    v23 = (v18 + v22 - 1) / v22 * v22 * v15;
  }

  *a6 = v23;
  *a7 = v15;
  return result;
}

void *_MTLAdjustMTLSize@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a2;
  *(a5 + 16) = *(a2 + 16);
  if ((*(a4 + 9) & 4) != 0)
  {
    if (*a2 + *result == *a3)
    {
      *a5 = (*a2 + *(a4 + 32) - 1) / *(a4 + 32) * *(a4 + 32);
    }

    v5 = *(a2 + 8);
    if (v5 + result[1] == a3[1])
    {
      *(a5 + 8) = (v5 + *(a4 + 40) - 1) / *(a4 + 40) * *(a4 + 40);
    }

    v6 = *(a2 + 16);
    if (v6 + result[2] == a3[2])
    {
      *(a5 + 16) = (v6 + *(a4 + 48) - 1) / *(a4 + 48) * *(a4 + 48);
    }
  }

  return result;
}

MTLIOCompressionContext MTLIOCreateCompressionContext(const char *path, MTLIOCompressionMethod type, size_t chunkSize)
{
  if (chunkSize)
  {
    v5 = chunkSize;
  }

  else
  {
    v5 = 0x10000;
  }

  v6 = malloc_type_calloc(0x30uLL, 1uLL, 0x1020040C5F5BA8FuLL);
  v7 = v6;
  if (type < (MTLIOCompressionMethodLZBitmap|MTLIOCompressionMethodLZFSE))
  {
    v6[8] = dword_185DE1DE0[type];
    v8 = open(path, 1538);
    *v7 = v8;
    if ((v8 & 0x80000000) == 0)
    {
      if (!chmod(path, 0x1A4u))
      {
        v7[2] = 0;
        *(v7 + 2) = v5;
        *(v7 + 3) = 0;
        operator new();
      }

      close(*v7);
    }
  }

  free(v7);
  return 0;
}

void MTLIOCompressionContextAppendData(MTLIOCompressionContext context, const void *data, size_t size)
{
  v4 = *(context + 5);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *v4;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void const*,unsigned long>>>(*(context + 5), v11);
    }

    v12 = (16 * v8);
    *v12 = data;
    v12[1] = size;
    v7 = 16 * v8 + 16;
    v13 = *(v4 + 8) - *v4;
    v14 = (16 * v8 - v13);
    memcpy(v14, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = data;
    v6[1] = size;
    v7 = (v6 + 2);
  }

  *(v4 + 8) = v7;
}

MTLIOCompressionStatus MTLIOFlushAndDestroyCompressionContext(MTLIOCompressionContext context)
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v2 = *(context + 5);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    goto LABEL_47;
  }

  v5 = 0;
  v6 = *(context + 2);
  v7 = *v2;
  do
  {
    v5 += v7[1];
    v7 += 2;
  }

  while (v7 != v4);
  if (v3 == v4)
  {
    goto LABEL_47;
  }

  do
  {
    v8 = *v3;
    if (*v3)
    {
      v9 = v3[1];
      while (1)
      {
        v10 = v8;
        if (v9 < v6)
        {
          break;
        }

        __p[0] = v8;
        __p[1] = v6;
        std::vector<std::pair<unsigned char *,unsigned long>>::push_back[abi:ne200100](&v41, __p);
        std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::push_back[abi:ne200100](&v44, &v41);
        v5 -= v6;
        v11 = *(context + 2);
        v42 = v41;
        v9 -= v6;
        if (v9)
        {
          v8 = &v10[v6];
          v6 = v11;
          if (v10)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      __p[0] = v8;
      __p[1] = v9;
      std::vector<std::pair<unsigned char *,unsigned long>>::push_back[abi:ne200100](&v41, __p);
      v5 -= v9;
      if (v5)
      {
        v11 = (v6 - v9);
      }

      else
      {
        std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::push_back[abi:ne200100](&v44, &v41);
        v5 = 0;
        v11 = *(context + 2);
        v42 = v41;
      }
    }

    else
    {
      v11 = v6;
    }

LABEL_15:
    v3 += 2;
    v6 = v11;
  }

  while (v3 != v4);
  if (v45 == v44)
  {
LABEL_47:
    close(*context);
    v34 = *(context + 5);
    if (v34)
    {
      v35 = *v34;
      if (*v34)
      {
        *(v34 + 8) = v35;
        operator delete(v35);
      }

      MEMORY[0x1865FF210](v34, 0x20C40960023A9);
    }

    free(context);
LABEL_52:
    v33 = MTLIOCompressionStatusError;
    goto LABEL_53;
  }

  v12 = malloc_type_malloc(*(context + 2), 0x100004077774924uLL);
  v13 = malloc_type_malloc(*(context + 2), 0x100004077774924uLL);
  __buf = malloc_type_malloc(v45 - v44, 0x10000406CB41D2EuLL);
  *(context + 3) = 0xAAAAAAAAAAAAAAABLL * (v45 - v44);
  pwrite(*context, context + 8, 0x18uLL, 0);
  pwrite(*context, __buf, 24 * *(context + 3), 24);
  v14 = *(context + 3);
  v15 = v44;
  v38 = v45;
  if (v44 != v45)
  {
    v16 = 0;
    v17 = 24 * v14 + 24;
    src_buffer = v13;
    while (1)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<std::pair<unsigned char *,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned char *,unsigned long>*,std::pair<unsigned char *,unsigned long>*>(__p, *v15, v15[1], (v15[1] - *v15) >> 4);
      v19 = __p[0];
      v18 = __p[1];
      if (__p[0] == __p[1])
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        v21 = v13;
        do
        {
          v22 = *v19;
          v23 = v19[1];
          v19 += 2;
          memcpy(v21, v22, v23);
          v21 += v23;
          v20 += v23;
        }

        while (v19 != v18);
      }

      v13 = src_buffer;
      v24 = compression_encode_buffer(v12, *(context + 2), src_buffer, v20, 0, *(context + 8));
      v25 = &__buf[24 * v16];
      v26 = v24 ? v12 : src_buffer;
      v27 = v24 ? v24 : v20;
      *v25 = v24 != 0;
      *(v25 + 1) = v17;
      *(v25 + 2) = v27;
      v28 = pwrite(*context, v26, v27, v17);
      if (v28 == -1)
      {
        close(*context);
        v29 = *(context + 5);
        if (v29)
        {
          v30 = *v29;
          if (*v29)
          {
            *(v29 + 8) = v30;
            operator delete(v30);
          }

          MEMORY[0x1865FF210](v29, 0x20C40960023A9);
        }

        free(context);
        free(__buf);
        free(v12);
        free(src_buffer);
      }

      else
      {
        v17 += v27;
        ++v16;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v28 == -1)
      {
        goto LABEL_52;
      }

      v15 += 3;
      if (v15 == v38)
      {
        v14 = *(context + 3);
        break;
      }
    }
  }

  *(context + 2) = -1159983122;
  pwrite(*context, __buf, 24 * v14, 24);
  pwrite(*context, context + 8, 0x18uLL, 0);
  close(*context);
  v31 = *(context + 5);
  if (v31)
  {
    v32 = *v31;
    if (*v31)
    {
      *(v31 + 8) = v32;
      operator delete(v32);
    }

    MEMORY[0x1865FF210](v31, 0x20C40960023A9);
  }

  free(context);
  free(__buf);
  free(v12);
  free(v13);
  v33 = MTLIOCompressionStatusComplete;
LABEL_53:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  v41 = &v44;
  std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&v41);
  return v33;
}

void sub_185CB0678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t MTLCreateCompressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MTLIOCompressor alloc];

  return [(MTLIOCompressor *)v6 initWithType:a1 dst:a2 chunkSize:a3];
}

void std::vector<std::pair<unsigned char *,unsigned long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned char *,unsigned long>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::__emplace_back_slow_path<std::vector<std::pair<unsigned char *,unsigned long>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<unsigned char *,unsigned long>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *MTLIOCreateDecompressionContext(int a1, unint64_t a2)
{
  v4 = malloc_type_malloc(0x78uLL, 0x10300400BF515CFuLL);
  *v4 = a1;
  *(v4 + 7) = 850045863;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 14) = 0;
  pread(a1, v4 + 2, 0x18uLL, 0);
  if (v4[2] == -1159983122)
  {
    v5 = malloc_type_malloc(24 * *(v4 + 3), 0x10000406CB41D2EuLL);
    *(v4 + 5) = v5;
    pread(a1, v5, 24 * *(v4 + 3), 24);
    if (a2 >= 5)
    {
      MTLReleaseAssertionFailure("MTLIOCreateDecompressionContext", 377, "0 && unsupported compression method", 0, v6, v7, v8, v9, v11);
    }

    v4[8] = dword_185DE1DE0[a2];
    *(v4 + 6) = malloc_type_malloc(*(v4 + 2), 0x100004077774924uLL);
  }

  else
  {
    free(v4);
    return 0;
  }

  return v4;
}

void MTLIODestroyDecompressionContext(uint64_t a1)
{
  free(*(a1 + 48));
  free(*(a1 + 40));
  pthread_mutex_destroy((a1 + 56));

  free(a1);
}

uint64_t MTLIODecompressionContextStagingBufferSize(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = 0;
  v5 = *(a1 + 16);
  v6 = (a3 + a2) % v5;
  v7 = v6 == 0;
  v8 = v5 - v6;
  if (v7)
  {
    v8 = 0;
  }

  v9 = a3 / v5;
  v10 = (v8 + a3 + a2) / v5;
  if (v9 < v10)
  {
    result = 0;
    v11 = *(a1 + 40);
    do
    {
      result += *(v11 + 24 * v9++ + 16);
    }

    while (v9 < v10);
  }

  return result;
}

uint64_t MTLIODecompressionContextRead(uint64_t a1, uint8_t *__dst, uint8_t *__buf, size_t __nbyte, size_t a5, unint64_t a6, int a7)
{
  v9 = __buf;
  v12 = *(a1 + 16);
  v13 = a6 / v12;
  v14 = (a6 + a5) % v12;
  v15 = v12 - v14;
  v29 = v14;
  if (!v14)
  {
    v15 = 0;
  }

  dst_size = *(a1 + 16);
  v16 = (v15 + a6 + a5) / v12;
  if (a7)
  {
    pread(*a1, __buf, __nbyte, *(*(a1 + 40) + 24 * v13 + 8));
  }

  if (v13 < v16)
  {
    v17 = 0;
    v28 = v16 - 1;
    v18 = dst_size - (a6 - v13 * dst_size);
    if (v18 >= a5)
    {
      v18 = a5;
    }

    v30 = v18;
    v31 = a6 - v13 * dst_size;
    v19 = v13;
    v32 = v16;
    v33 = v13;
    while (1)
    {
      v20 = v30;
      v21 = v31;
      if (v19 == v13)
      {
        goto LABEL_12;
      }

      v22 = 0;
      v21 = 0;
      v20 = v29;
      if (!v29)
      {
        v23 = dst_size;
        v24 = __dst;
        goto LABEL_13;
      }

      v23 = dst_size;
      v24 = __dst;
      if (v19 == v28)
      {
LABEL_12:
        v24 = *(a1 + 48);
        pthread_mutex_lock((a1 + 56));
        v22 = 1;
        v23 = v20;
      }

LABEL_13:
      v25 = *(a1 + 40) + 24 * v19;
      if (*v25)
      {
        compression_decode_buffer(v24, dst_size, v9, *(v25 + 16), 0, *(a1 + 32));
      }

      else
      {
        memcpy(v24, v9, dst_size);
      }

      v26 = *(*(a1 + 40) + 24 * v19 + 16);
      if (v22)
      {
        memcpy(__dst, &v24[v21], v23);
        pthread_mutex_unlock((a1 + 56));
      }

      v17 += v23;
      v9 += v26;
      __dst += v23;
      ++v19;
      v13 = v33;
      if (v19 >= v32)
      {
        return v17;
      }
    }
  }

  return 0;
}

void MTLIODecompressionContextValidate(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = (*(a1 + 40) + 16);
    v4 = 24;
    while (!*(v3 - 16))
    {
      v5 = *v3;
      v3 += 3;
      v4 += v5;
      if (!--v1)
      {
        return;
      }
    }

    v6 = *(a1 + 16);
    v7 = *v3;
    v8 = malloc_type_malloc(*v3, 0x100004077774924uLL);
    pread(*a1, v8, v7, v4);
    compression_decode_buffer(*(a1 + 48), v6, v8, v7, 0, *(a1 + 32));

    free(v8);
  }
}

void std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned char *,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<unsigned char *,unsigned long>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::pair<unsigned char *,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned char *,unsigned long>*,std::pair<unsigned char *,unsigned long>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::pair<unsigned char *,unsigned long>>>::__emplace_back_slow_path<std::vector<std::pair<unsigned char *,unsigned long>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::pair<unsigned char *,unsigned long>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::pair<unsigned char *,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned char *,unsigned long>*,std::pair<unsigned char *,unsigned long>*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::pair<unsigned char *,unsigned long>>>::~__split_buffer(&v14);
  return v8;
}

void sub_185CB0F9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::pair<unsigned char *,unsigned long>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::pair<unsigned char *,unsigned long>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<std::pair<unsigned char *,unsigned long>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<std::pair<unsigned char *,unsigned long>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::pair<unsigned char *,unsigned long>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t std::vector<std::pair<unsigned char *,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned char *,unsigned long>*,std::pair<unsigned char *,unsigned long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned char *,unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185CB10F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned char *,unsigned long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned char *,unsigned long>>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void const*,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

os_log_t ___Z26MTLPipelineLibraryDebugLogv_block_invoke()
{
  result = os_log_create("com.apple.Metal", "PipelineLibrary");
  MTLPipelineLibraryDebugLog(void)::pipelineLibLogObject = result;
  return result;
}

uint64_t MTLPipelineDescriptions::MTLPipelineDescriptions(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = 0;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 16) = dispatch_queue_create("pipelineDescriptions queue", 0);
  return a1;
}

unsigned __int8 *MTLSerializer::SerializedString::getValue(MTLSerializer::SerializedString *this)
{
  result = *this;
  if (result)
  {
    v3 = *(this + 1);
    if (!v3)
    {
LABEL_6:
      abort();
    }

    v4 = result;
    while (*v4++)
    {
      if (!--v3)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

void MTLPipelineDescriptions::initializeDescriptorHash(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZNK23MTLPipelineDescriptions24initializeDescriptorHashEPbRNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN13MTLSerializer29SerializedCompactPropertyListENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_SA_EEEEEEjj_block_invoke;
  v6[3] = &__block_descriptor_64_e5_v8__0l;
  v6[4] = a1;
  v6[5] = a2;
  v7 = a4;
  v8 = a5;
  v6[6] = a3;
  dispatch_sync(v5, v6);
}

void *SpecialPipelineDescriptorDeserializer::SpecialPipelineDescriptorDeserializer(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1EF475D60;
  result[1] = a2;
  result[2] = a3;
  return result;
}

void *MTLPipelineDescriptions::newComputePipelineDescriptor(MTLPipelineDescriptions *this, char *a2, _MTLPipelineCache *a3, NSError **a4)
{
  v8 = this + 25;
  v9 = (this + 72);
  v10 = *(this + 2);
  block = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = ___ZNK23MTLPipelineDescriptions24initializeDescriptorHashEPbRNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN13MTLSerializer29SerializedCompactPropertyListENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_SA_EEEEEEjj_block_invoke;
  v29 = &__block_descriptor_64_e5_v8__0l;
  v30 = this;
  v31 = v8;
  v33 = 0x600000002;
  v32 = v9;
  dispatch_sync(v10, &block);
  std::string::basic_string[abi:ne200100]<0>(&block, a2);
  v11 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(v9, &block);
  v12 = v11;
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"compute pipeline %s not found in pipelineLibrary.", a2];
    if (!a4)
    {
      return 0;
    }

    v22 = [MEMORY[0x1E695DF20] dictionaryWithObject:v21 forKey:*MEMORY[0x1E696A578]];
    v23 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v22];
    v20 = 0;
    *a4 = v23;
    return v20;
  }

  operator delete(block);
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  v25 = *(v12 + 5);
  block = &unk_1EF475D60;
  v27 = this;
  v28 = a3;
  v20 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newComputePipelineDescriptor(&block, &v25);
  if (!v20)
  {
    MTLPipelineDescriptions::newComputePipelineDescriptor(a2, v13, v14, v15, v16, v17, v18, v19);
  }

  return v20;
}

void sub_185CB5180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer MTLPipelineDescriptions::libraryPaths@<X0>(std::__split_buffer<std::string>::pointer this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  size = this[8].__r_.__value_.__l.__size_;
  for (i = this[8].__r_.__value_.__r.__words[2]; size != i; size += 2)
  {
    this = std::vector<std::string>::push_back[abi:ne200100](a2, size);
  }

  return this;
}

void sub_185CB51FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_185CB55E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::vector<MTLPipelineDescriptions::LibraryReference>::__construct_one_at_end[abi:ne200100]<MTLPipelineDescriptions::LibraryReference const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  *(a1 + 8) = v4 + 32;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLPipelineDescriptions::LibraryReference>,MTLPipelineDescriptions::LibraryReference*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__shared_ptr_emplace<MTLPipelineDescriptions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF475DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void sub_185CB6328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t MTLCreateSimulatorDevice()
{
  if (MTLCreateSimulatorDevice::onceToken != -1)
  {
    MTLCreateSimulatorDevice_cold_1();
  }

  return MTLCreateSimulatorDevice::device;
}

void __MTLCreateSimulatorDevice_block_invoke()
{
  MTLDeviceArrayInitialize();
  if (!_MTLIsInternalBuild())
  {
    return;
  }

  v0 = dlopen("/System/Library/PrivateFrameworks/MTLSimDriver.framework/MTLSimDriver", 5);
  if (!v0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __MTLCreateSimulatorDevice_block_invoke_cold_2();
    }

    goto LABEL_12;
  }

  v1 = dlsym(v0, "MTLCreateSimulatorDevice");
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __MTLCreateSimulatorDevice_block_invoke_cold_1();
    }

LABEL_12:
    MTLCreateSimulatorDevice::device = 0;
    return;
  }

  v2 = v1();
  MTLCreateSimulatorDevice::device = v2;
  if (v2)
  {

    MTLAddDevice(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

NSArray *MTLCopyAllDevices(void)
{
  MTLDeviceArrayInitialize();
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__5;
  v7 = __Block_byref_object_dispose__5;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MTLCopyAllDevices_block_invoke;
  block[3] = &unk_1E6EEB598;
  block[4] = &v3;
  dispatch_sync(_deviceArrayQueue, block);
  v0 = v4[5];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __MTLCopyAllDevices_block_invoke(uint64_t a1)
{
  result = [_deviceArray copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

BOOL MTLCountersLayerEnabled()
{
  if (initWrapperType(void)::pred != -1)
  {
    MTLDeviceArrayInitialize();
  }

  return wrapperType == 3;
}

uint64_t MTLWrapWithDebugDevice(uint64_t a1)
{
  v2 = objc_alloc(_MTLGetToolsClass(&cfstr_Mtldebugdevice.isa));

  return [v2 initWithBaseObject:a1 parent:0];
}

uint64_t MTLWrapWithTelemetryDevice(uint64_t a1)
{
  v2 = objc_alloc(_MTLGetToolsClass(&cfstr_Mtltelemetryde.isa));

  return [v2 initWithBaseObject:a1 parent:0];
}

uint64_t MTLWrapWithCountersDevice(uint64_t a1)
{
  v2 = objc_alloc(_MTLGetToolsClass(&cfstr_Mtlcountersdev.isa));

  return [v2 initWithBaseObject:a1 parent:0];
}

uint64_t MTLWrapWithGPUDebugDevice(void *a1)
{
  v2 = _MTLGetToolsClass(&cfstr_Mtlgpudebugdev.isa);
  if (_MTLGetMTLCompilerLLVMVersionForDevice(a1) <= 32023)
  {
    v2 = _MTLGetToolsClass(&cfstr_Mtllegacysvdev.isa);
  }

  v3 = [v2 alloc];

  return [v3 initWithBaseObject:a1 parent:0];
}

uint64_t MTLWrapWithAllDebugDevice(void *a1)
{
  v1 = MTLWrapWithGPUDebugDevice(a1);
  v2 = [objc_alloc(_MTLGetToolsClass(&cfstr_Mtldebugdevice.isa)) initWithBaseObject:v1 parent:0];

  return v2;
}

uint64_t _MTLGetToolsClass(NSString *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.gpusw.MetalTools"];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithCString:"/System/Library/PrivateFrameworks/MetalTools.framework" encoding:1];
    v3 = [MEMORY[0x1E696AAE8] bundleWithPath:v4];
  }

  v5 = [v3 classNamed:a1];
  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t MTLCompilerConnectionManagerInternal::MTLCompilerConnectionManagerInternal(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 54) = 0;
  *(a1 + 64) = 0;
  *a1 = &unk_1EF475E50;
  *(a1 + 88) = 850045863;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v5 = MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER(0, 0) || MTLEnvVarAggregator::GET_USE_MONOLITHIC_COMPILER(0, 0);
  *(a1 + 36) = v5;
  v6 = MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER_LLVM_VERSION(0, "", v4);
  if (*v6 && atoi(v6) != *(a1 + 32))
  {
    *(a1 + 36) = 0;
  }

  return a1;
}

void sub_185CB7D2C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void MTLCompilerConnectionManagerInternal::~MTLCompilerConnectionManagerInternal(MTLCompilerConnectionManagerInternal *this)
{
  *this = &unk_1EF475E50;
  v2 = *(this + 8);
  if (*(this + 9) != v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v2 + 16 * v3;
      free(*v5);
      *v5 = 0;
      v6 = *(v5 + 8);
      if (v6)
      {
        dispatch_release(v6);
      }

      *(v5 + 8) = 0;
      v3 = v4;
      v2 = *(this + 8);
      ++v4;
    }

    while (v3 < (*(this + 9) - v2) >> 4);
  }

  std::mutex::~mutex((this + 88));
  v7 = *(this + 8);
  if (v7)
  {
    *(this + 9) = v7;
    operator delete(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

{
  MTLCompilerConnectionManagerInternal::~MTLCompilerConnectionManagerInternal(this);

  JUMPOUT(0x1865FF210);
}

uint64_t MTLCompilerConnectionManagerInternal::getThreadsPerProcessCount(MTLCompilerConnectionManagerInternal *this)
{
  v4 = (this + 88);
  v5 = 1;
  std::mutex::lock((this + 88));
  if ((*(this + 61) & 1) == 0)
  {
    (*(*this + 96))(this, &v4);
  }

  {
    MTLCompilerConnectionManagerInternal::getThreadsPerProcessCount(void)::fromEnv = MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER(0, 0);
  }

  v2 = MTLCompilerConnectionManagerInternal::getThreadsPerProcessCount(void)::fromEnv;
  if (MTLCompilerConnectionManagerInternal::getThreadsPerProcessCount(void)::fromEnv <= 0)
  {
    v2 = *(this + 14);
  }

  if (v5 == 1)
  {
    std::mutex::unlock(v4);
  }

  return v2;
}

void sub_185CB7F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

void MTLCompilerConnectionManagerInternal::setCompilerProcessesCount(MTLCompilerConnectionManagerInternal *this, unsigned int a2)
{
  v5 = (this + 88);
  v6 = 1;
  std::mutex::lock((this + 88));
  if ((*(this + 36) & 1) == 0)
  {
    if ((*(this + 61) & 1) == 0)
    {
      (*(*this + 96))(this, &v5);
    }

    {
      MTLCompilerConnectionManagerInternal::setCompilerProcessesCount::fromEnv = MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(0, 0);
    }

    if (!MTLCompilerConnectionManagerInternal::setCompilerProcessesCount::fromEnv)
    {
      {
        MTLCompilerConnectionManagerInternal::setCompilerProcessesCount::maxCount = MTLGetMaximumCompilerProcessesCount();
      }

      v4 = MTLCompilerConnectionManagerInternal::setCompilerProcessesCount::maxCount;
      if (MTLCompilerConnectionManagerInternal::setCompilerProcessesCount::maxCount >= a2)
      {
        v4 = a2;
      }

      *(this + 10) = v4;
    }
  }

  if (v6 == 1)
  {
    std::mutex::unlock(v5);
  }
}

void sub_185CB80A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLCompilerConnectionManagerInternal::maximizeCompilerProcessesCount(MTLCompilerConnectionManagerInternal *this)
{
  v2 = MTLGetOptimalCompilerProcessesCount();
  v3 = *(*this + 48);

  return v3(this, v2);
}
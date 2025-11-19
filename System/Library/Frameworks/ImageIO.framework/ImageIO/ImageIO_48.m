void **std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::push_back[abi:fe200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void XMPUtils::SeparateArrayItems(XMPUtils *this, XMPMeta *a2, char *a3, const char *a4, char *a5, const char *a6)
{
  v7 = a4;
  if (sUseNewCoreAPIs)
  {

    XMPUtils::SeparateArrayItems_v2(this, a2, a3, a4, a5, a6);
    return;
  }

  if (!a2 || !a3 || !a5)
  {
    XMPUtils::SeparateArrayItems();
  }

  memset(&v68, 0, sizeof(v68));
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v11 = VerifySetOptions(a4 & 0xEFFFFFFF, 0);
  if ((v11 & 0xFFFFE1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Options can only provide array form";
    *(exception + 16) = 0;
  }

  memset(v61, 0, sizeof(v61));
  ExpandXPath(a2, a3, v61);
  Node = FindNode(this + 224, v61, 0, 0, 0);
  if (Node)
  {
    v13 = *(Node + 8);
    v14 = "Named property must be non-alternate array";
    if ((v13 & 0x1E00) == 0 || (v13 & 0x800) != 0)
    {
LABEL_15:
      v15 = __cxa_allocate_exception(0x18uLL);
      *v15 = 102;
      v15[1] = v14;
      *(v15 + 16) = 0;
    }

    if (v11 && v11 != (*(Node + 8) & 0x1E00))
    {
      v14 = "Mismatch of specified and existing array form";
      goto LABEL_15;
    }
  }

  else
  {
    Node = FindNode(this + 224, v61, 1, v11 | 0x200u, 0);
    if (!Node)
    {
      v52 = __cxa_allocate_exception(0x18uLL);
      *v52 = 102;
      v52[1] = "Failed to create named array";
      *(v52 + 16) = 0;
    }
  }

  v16 = *(Node + 72);
  __p = 0;
  v59 = 0;
  v60 = 0;
  v53 = Node + 72;
  v17 = Node;
  std::vector<XMP_Node *>::__init_with_size[abi:fe200100]<XMP_Node **,XMP_Node **>(&__p, v16, *(Node + 80), (*(Node + 80) - v16) >> 3);
  v54 = __p;
  v55 = v59;
  v56 = (v59 - __p) >> 3;
  *(v17 + 80) = *(v17 + 72);
  v18 = strlen(a5);
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    if (v56 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v56;
    }

    while (1)
    {
      while (1)
      {
        ClassifyCharacter(a5, v20, &v64, &v66, &v62);
        if ((v64 & 0xFFFFFFFB) == 0)
        {
          break;
        }

        v20 += v66;
        if (v20 >= v19)
        {
          goto LABEL_98;
        }
      }

      if (v64 == 4)
      {
        v22 = v62;
        ClosingQuote = GetClosingQuote(v62);
        v24 = v66;
        std::string::erase(&v68, 0, 0xFFFFFFFFFFFFFFFFLL);
        v25 = v24 + v20;
        if (v25 < v19)
        {
          while (1)
          {
            ClassifyCharacter(a5, v25, &v64, &v66, &v62);
            if (v64 != 4)
            {
              break;
            }

            v26 = v62;
            v27 = v62 == v22 || v62 == ClosingQuote;
            if (!v27 && (v22 != 12317 || (v62 & 0xFFFFFFFFFFFFFFFELL) != 0x301E))
            {
              break;
            }

            v28 = v66;
            v29 = v66 + v25;
            if (v66 + v25 >= v19)
            {
              v65 = 3;
              v67 = 0;
              v30 = 59;
              v63 = 59;
            }

            else
            {
              ClassifyCharacter(a5, v66 + v25, &v65, &v67, &v63);
              v30 = v63;
            }

            if (v26 != v30)
            {
              if (v26 == ClosingQuote || v22 == 12317 && (v26 & 0xFFFFFFFFFFFFFFFELL) == 0x301E)
              {
                goto LABEL_75;
              }

              std::string::basic_string[abi:fe200100]<0>(&__str, a5);
              std::string::append(&v68, &__str, v25, v28);
              goto LABEL_45;
            }

            std::string::basic_string[abi:fe200100]<0>(&__str, a5);
            std::string::append(&v68, &__str, v25, v28);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v25 += v67;
LABEL_47:
            v25 += v28;
            v29 = v25;
            if (v25 >= v19)
            {
              goto LABEL_75;
            }
          }

          std::string::basic_string[abi:fe200100]<0>(&__str, a5);
          v28 = v66;
          std::string::append(&v68, &__str, v25, v66);
LABEL_45:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_47;
        }

        v29 = v25;
      }

      else
      {
        v29 = v20;
        if (v20 < v19)
        {
          v29 = v20;
          do
          {
            ClassifyCharacter(a5, v29, &v64, &v66, &v62);
            v32 = (v7 & 0x10000000) == 0 || v64 != 2;
            if ((v64 & 0xFFFFFFFB) != 0 && v32)
            {
              if (v64 != 1)
              {
                break;
              }

              v33 = v66 + v29;
              if (v66 + v29 >= v19)
              {
                break;
              }

              ClassifyCharacter(a5, v66 + v29, &v65, &v67, &v63);
              v34 = (v7 & 0x10000000) != 0 && v65 == 2;
              v35 = !v34;
              if ((v65 & 0xFFFFFFFB) != 0 && v35)
              {
                break;
              }
            }

            else
            {
              v33 = v66 + v29;
            }

            v29 = v33;
          }

          while (v33 < v19);
        }

        std::string::basic_string[abi:fe200100]<0>(&__str, a5);
        std::string::assign(&v68, &__str, v20, v29 - v20);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

LABEL_75:
      if (v55 != v54)
      {
        break;
      }

      v36 = 0;
LABEL_94:
      __str.__r_.__value_.__r.__words[0] = 0;
      if (v36 == v56)
      {
        operator new();
      }

      if (v36 >= (v59 - __p) >> 3)
      {
        goto LABEL_114;
      }

      __str.__r_.__value_.__r.__words[0] = *(__p + v36);
      *(__p + v36) = 0;
      std::vector<IIO_Writer *>::push_back[abi:fe200100](v53, &__str);
      v20 = v29;
      if (v29 >= v19)
      {
        goto LABEL_98;
      }
    }

    v36 = 0;
    v37 = __p;
    v38 = (v59 - __p) >> 3;
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v68.__r_.__value_.__l.__size_;
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v68;
    }

    else
    {
      v40 = v68.__r_.__value_.__r.__words[0];
    }

    while (v38 != v36)
    {
      v41 = v37[v36];
      if (v41)
      {
        v42 = *(v41 + 63);
        v43 = v42;
        if ((v42 & 0x80u) != 0)
        {
          v42 = *(v41 + 48);
        }

        if (size == v42)
        {
          v46 = *(v41 + 40);
          v44 = v41 + 40;
          v45 = v46;
          v47 = (v43 >= 0 ? v44 : v45);
          if (!memcmp(v40, v47, size))
          {
            goto LABEL_94;
          }
        }
      }

      if (v21 == ++v36)
      {
        v36 = v21;
        goto LABEL_94;
      }
    }

LABEL_114:
    __break(1u);
    return;
  }

LABEL_98:
  if (v55 != v54)
  {
    v48 = 0;
    if (v56 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v56;
    }

    while (v48 < (v59 - __p) >> 3)
    {
      v50 = *(__p + v48);
      if (v50)
      {
        (*(*v50 + 8))(v50);
      }

      if (v49 == ++v48)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_114;
  }

LABEL_106:
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  __p = v61;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }
}

void sub_18613E960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *__p, uint64_t a22, uint64_t a23, char a24)
{
  __p = &a24;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(a1);
}

void XMPUtils::ApplyTemplate(XMPUtils *this, XMPMeta *a2, const XMPMeta *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  if (!sUseNewCoreAPIs)
  {
    v6 = a3 & 6;
    if ((a3 & 0x10) != 0 && (v7 = *(this + 38) - *(this + 37)) != 0)
    {
      v8 = v7 >> 3;
      while (1)
      {
        --v8;
        v9 = *(v5 + 37);
        if (v8 >= (*(v5 + 38) - v9) >> 3)
        {
          break;
        }

        v10 = *(v9 + 8 * v8);
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *(v10 + 16);
        }

        SchemaNode = FindSchemaNode(v4 + 224, v11, 0, 0);
        if (SchemaNode)
        {
          v13 = *(v10 + 80) - *(v10 + 72);
          if (v13)
          {
            v14 = SchemaNode;
            v15 = v13 >> 3;
            while (1)
            {
              --v15;
              v16 = *(v10 + 72);
              if (v15 >= (*(v10 + 80) - v16) >> 3)
              {
                goto LABEL_74;
              }

              v17 = *(v16 + 8 * v15);
              if ((v3 & 1) == 0 && IsInternalProperty((v10 + 16), (v17 + 16)))
              {
                goto LABEL_20;
              }

              v18 = (v17 + 16);
              if (*(v17 + 39) < 0)
              {
                v18 = *v18;
              }

              if (FindChildNode(v14, v18, 0, 0))
              {
LABEL_20:
                if (!v15)
                {
                  break;
                }
              }

              else
              {
                (*(*v17 + 8))(v17);
                v19 = *(v10 + 72);
                v20 = *(v10 + 80);
                if (v20 == v19 + 8 * v15)
                {
                  goto LABEL_74;
                }

                v21 = v19 + 8 * v15;
                v22 = v20 - (v21 + 8);
                if (v20 != v21 + 8)
                {
                  memmove((v19 + 8 * v15), (v21 + 8), v20 - (v21 + 8));
                }

                *(v10 + 80) = v21 + v22;
                if (!v15)
                {
                  break;
                }
              }
            }
          }
        }

        else if (v3)
        {
          XMP_Node::RemoveChildren(v10);
        }

        else
        {
          v23 = *(v10 + 80) - *(v10 + 72);
          if (v23)
          {
            v24 = v23 >> 3;
            do
            {
              --v24;
              v25 = *(v10 + 72);
              if (v24 >= (*(v10 + 80) - v25) >> 3)
              {
                goto LABEL_74;
              }

              v26 = *(v25 + 8 * v24);
              if (!IsInternalProperty((v10 + 16), v26 + 2))
              {
                if (v26)
                {
                  (*(*v26 + 8))(v26);
                }

                v27 = *(v10 + 72);
                v28 = *(v10 + 80);
                if (v28 == v27 + 8 * v24)
                {
                  goto LABEL_74;
                }

                v29 = v27 + 8 * v24;
                v30 = v28 - (v29 + 8);
                if (v28 != v29 + 8)
                {
                  memmove((v27 + 8 * v24), (v29 + 8), v28 - (v29 + 8));
                }

                *(v10 + 80) = v29 + v30;
              }
            }

            while (v24);
          }
        }

        v5 = this;
        if (*(v10 + 72) == *(v10 + 80))
        {
          (*(*v10 + 8))(v10);
          v31 = *(this + 37);
          v32 = *(this + 38);
          if (v32 == v31 + 8 * v8)
          {
            break;
          }

          v33 = v31 + 8 * v8;
          v34 = v32 - (v33 + 8);
          if (v32 != v33 + 8)
          {
            memmove((v31 + 8 * v8), (v33 + 8), v32 - (v33 + 8));
          }

          *(this + 38) = v33 + v34;
          if (!v8)
          {
            goto LABEL_48;
          }
        }

        else if (!v8)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_48:
      if (!((v6 != 0) | ((v3 & 8) >> 3)))
      {
        return;
      }

      v35 = *(v4 + 38) - *(v4 + 37);
      if (!v35)
      {
        return;
      }

      v36 = 0;
      v37 = v35 >> 3;
      if (v37 <= 1)
      {
        v37 = 1;
      }

      v50 = v37;
      v51 = v4;
      while (1)
      {
        v38 = *(v4 + 37);
        if (v36 >= (*(v4 + 38) - v38) >> 3)
        {
          break;
        }

        v39 = *(v38 + 8 * v36);
        __dst = 0;
        v40 = (v39 + 16);
        if (*(v39 + 39) < 0)
        {
          v40 = *(v39 + 16);
        }

        v53 = FindSchemaNode(v5 + 224, v40, 0, &__dst);
        if (!v53)
        {
          operator new();
        }

        v41 = *(v39 + 80) - *(v39 + 72);
        if (v41)
        {
          v42 = 0;
          v43 = v41 >> 3;
          if (v43 <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = v43;
          }

          do
          {
            v45 = *(v39 + 72);
            if (v42 >= (*(v39 + 80) - v45) >> 3)
            {
              goto LABEL_74;
            }

            v46 = *(v45 + 8 * v42);
            if ((v3 & 1) != 0 || !IsInternalProperty((v39 + 16), v46 + 2))
            {
              AppendSubtree(v46, v53, (v3 & 8) != 0, v6 != 0, ((v3 & 0x10) == 0) & (v3 >> 2));
            }
          }

          while (v44 != ++v42);
        }

        v5 = this;
        v4 = v51;
        if (*(v53 + 9) == *(v53 + 10))
        {
          (*(*v53 + 8))(v53);
          v47 = __dst;
          v48 = *(this + 38);
          if (v48 == __dst)
          {
            break;
          }

          v49 = v48 - (__dst + 8);
          if (v48 != __dst + 8)
          {
            memmove(__dst, __dst + 8, v48 - (__dst + 8));
          }

          *(this + 38) = &v47[v49];
        }

        if (++v36 == v50)
        {
          return;
        }
      }
    }

LABEL_74:
    __break(1u);
    return;
  }

  XMPUtils::ApplyTemplate_v2(this, a2, a3);
}

uint64_t AppendSubtree(const XMP_Node *a1, XMP_Node *a2, BOOL a3, _BOOL4 a4, _BOOL4 a5)
{
  __dst = 0;
  v10 = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    v10 = *v10;
  }

  result = FindChildNode(a2, v10, 0, &__dst);
  v12 = result;
  v13 = *(a1 + 2);
  v14 = v13 & 0x1F00;
  if ((v13 & 0x1F00) != 0)
  {
    if (*(a1 + 9) != *(a1 + 10))
    {
      goto LABEL_5;
    }

LABEL_16:
    if (a5 && result)
    {
LABEL_18:
      result = (*(*v12 + 8))(v12);
      v16 = __dst;
      v17 = *(a2 + 10);
      if (v17 == __dst)
      {
        goto LABEL_95;
      }

      v18 = v17 - (__dst + 8);
      if (v17 != __dst + 8)
      {
        result = memmove(__dst, __dst + 8, v17 - (__dst + 8));
      }

      *(a2 + 10) = &v16[v18];
    }

    return result;
  }

  if ((*(a1 + 63) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 6))
    {
      goto LABEL_16;
    }
  }

  else if (!*(a1 + 63))
  {
    goto LABEL_16;
  }

LABEL_5:
  if (!result)
  {
    CloneSubtree(a1, a2);
  }

  v15 = (v13 & 0x1F00) != 0 && a3;
  if (!v15 && a4)
  {
    std::string::operator=((result + 40), (a1 + 40));
    *(v12 + 2) = *(a1 + 2);
    XMP_Node::RemoveChildren(v12);
    XMP_Node::RemoveQualifiers(v12);
    result = CloneOffspring(a1, v12, 1);
    if ((*(v12 + 9) & 0x1F) != 0 && *(v12 + 9) == *(v12 + 10))
    {
      return DeleteSubtree(__dst);
    }

    return result;
  }

  if ((v13 & 0x1F00) == 0 || v14 != (*(result + 8) & 0x1F00))
  {
    return result;
  }

  if (v14 == 256)
  {
    v19 = *(a1 + 10) - *(a1 + 9);
    if (v19)
    {
      v20 = 0;
      v21 = v19 >> 3;
      while (1)
      {
        v22 = *(a1 + 9);
        if (v20 >= (*(a1 + 10) - v22) >> 3)
        {
          goto LABEL_95;
        }

        result = AppendSubtree(*(v22 + 8 * v20), v12, a3, a4, a5);
        if (a5 && *(v12 + 9) == *(v12 + 10))
        {
          goto LABEL_18;
        }

        if (v21 == ++v20)
        {
          return result;
        }
      }
    }

    return result;
  }

  if ((v13 & 0x1000) != 0)
  {
    if (!a3)
    {
      AppendSubtree();
    }

    v32 = *(a1 + 10) - *(a1 + 9);
    if (!v32)
    {
      return result;
    }

    v33 = 0;
    v34 = v32 >> 3;
    while (1)
    {
      v35 = *(a1 + 9);
      if (v33 >= (*(a1 + 10) - v35) >> 3)
      {
        goto LABEL_95;
      }

      v36 = *(v35 + 8 * v33);
      v37 = *(v36 + 96);
      if (v37 != *(v36 + 104))
      {
        v38 = *v37;
        v39 = (v38 + 16);
        v40 = *(v38 + 39);
        if (v40 < 0)
        {
          if (*(v38 + 24) != 8)
          {
            goto LABEL_60;
          }

          v39 = *v39;
        }

        else if (v40 != 8)
        {
          goto LABEL_60;
        }

        if (*v39 == 0x676E616C3A6C6D78)
        {
          result = LookupLangItem(v12, (v38 + 40));
          v41 = *(v36 + 63);
          if (v41 < 0)
          {
            v41 = *(v36 + 48);
          }

          if (v41)
          {
            if (result == -1)
            {
              v51 = *(v36 + 96);
              if (*(v36 + 104) != v51)
              {
                v52 = *v51;
                v53 = *v51 + 40;
                v54 = *(v52 + 63);
                if (v54 < 0)
                {
                  if (*(v52 + 48) != 9)
                  {
                    goto LABEL_92;
                  }

                  v53 = *v53;
                }

                else if (v54 != 9)
                {
                  goto LABEL_92;
                }

                v55 = *v53;
                v56 = *(v53 + 8);
                v57 = v55 == 0x6C75616665642D78 && v56 == 116;
                if (v57 && *(v12 + 9) != *(v12 + 10))
                {
                  operator new();
                }

LABEL_92:
                CloneSubtree(v36, v12);
              }

LABEL_95:
              __break(1u);
              AppendSubtree();
            }

            if (a4)
            {
              v42 = *(v12 + 9);
              if (result >= ((*(v12 + 10) - v42) >> 3))
              {
                goto LABEL_95;
              }

              result = std::string::operator=((*(v42 + 8 * result) + 40), (v36 + 40));
            }
          }

          else if (a5 && result != -1)
          {
            v43 = result;
            v44 = *(v12 + 9);
            v45 = *(v12 + 10);
            if (result >= ((v45 - v44) >> 3))
            {
              goto LABEL_95;
            }

            result = *(v44 + 8 * result);
            if (result)
            {
              result = (*(*result + 8))(result);
              v44 = *(v12 + 9);
              v45 = *(v12 + 10);
            }

            if (v45 == v44 + 8 * v43)
            {
              goto LABEL_95;
            }

            v46 = v44 + 8 * v43;
            v47 = v45 - (v46 + 8);
            if (v45 != v46 + 8)
            {
              result = memmove(v46, (v46 + 8), v45 - (v46 + 8));
              v44 = *(v12 + 9);
            }

            *(v12 + 10) = v46 + v47;
            if (v44 == v46 + v47)
            {
              result = (*(*v12 + 8))(v12);
              v48 = __dst;
              v49 = *(a2 + 10);
              if (v49 == __dst)
              {
                goto LABEL_95;
              }

              v50 = v49 - (__dst + 8);
              if (v49 != __dst + 8)
              {
                result = memmove(__dst, __dst + 8, v49 - (__dst + 8));
              }

              *(a2 + 10) = &v48[v50];
            }
          }
        }
      }

LABEL_60:
      if (v34 == ++v33)
      {
        return result;
      }
    }
  }

  if ((v13 & 0x200) != 0)
  {
    v23 = *(a1 + 10) - *(a1 + 9);
    if (v23)
    {
      v24 = 0;
      v25 = v23 >> 3;
      while (1)
      {
        v26 = *(a1 + 9);
        if (v24 >= (*(a1 + 10) - v26) >> 3)
        {
          goto LABEL_95;
        }

        v27 = *(v26 + 8 * v24);
        v28 = *(v12 + 10) - *(v12 + 9);
        if (!v28)
        {
LABEL_46:
          CloneSubtree(v27, v12);
        }

        v29 = 0;
        v30 = v28 >> 3;
        while (1)
        {
          v31 = *(v12 + 9);
          if (v29 >= (*(v12 + 10) - v31) >> 3)
          {
            goto LABEL_95;
          }

          result = ItemValuesMatch(v27, *(v31 + 8 * v29));
          if (result)
          {
            break;
          }

          if (v30 == ++v29)
          {
            goto LABEL_46;
          }
        }

        if (++v24 == v25)
        {
          return result;
        }
      }
    }
  }

  return result;
}

void XMPUtils::RemoveProperties(XMPUtils *this, XMPMeta *a2, char *a3, const char *a4)
{
  v4 = a4;
  if (sUseNewCoreAPIs)
  {

    XMPUtils::RemoveProperties_v2(this, a2, a3, a4);
    return;
  }

  if (!a2 || !a3)
  {
LABEL_49:
    XMPUtils::RemoveProperties();
  }

  if (*a3)
  {
    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Property name requires schema namespace";
      *(exception + 16) = 0;
    }

    *&__n[4] = 0;
    v34 = 0;
    v35 = 0;
    ExpandXPath(a2, a3, &__n[4]);
    __dst = 0;
    Node = FindNode(this + 224, &__n[4], 0, 0, &__dst);
    if (!Node)
    {
      goto LABEL_18;
    }

    if ((v4 & 1) == 0)
    {
      if (v34 == *&__n[4] || (v34 - *&__n[4]) <= 0x20)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (IsInternalProperty(*&__n[4], (*&__n[4] + 32)))
      {
LABEL_18:
        __dst = &__n[4];
        std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__dst);
        return;
      }
    }

    v8 = Node[8];
    (*(*Node + 8))(Node);
    v9 = __dst;
    v10 = v8[10];
    if (v10 != __dst)
    {
      v11 = v10 - (__dst + 8);
      if (v10 != __dst + 8)
      {
        memmove(__dst, __dst + 8, v10 - (__dst + 8));
      }

      v8[10] = &v9[v11];
      DeleteEmptySchema(v8);
      goto LABEL_18;
    }

    goto LABEL_48;
  }

  if (*a2)
  {
    *&__n[4] = 0;
    if (FindSchemaNode(this + 224, a2, 0, &__n[4]))
    {
      RemoveSchemaChildren(*&__n[4], v4 & 1);
    }

    if ((v4 & 0x800) != 0)
    {
      __dst = 0;
      *__n = 0;
      XMPMeta::GetNamespacePrefix(a2, &__dst, __n, v12);
      v13 = sRegisteredAliasMap + 8;
      v14 = *sRegisteredAliasMap;
      if (*sRegisteredAliasMap != sRegisteredAliasMap + 8)
      {
        do
        {
          v15 = (v14 + 4);
          if (*(v14 + 55) < 0)
          {
            v15 = *v15;
          }

          if (!strncmp(v15, __dst, *__n))
          {
            v32 = 0;
            v16 = FindNode(this + 224, v14 + 7, 0, 0, &v32);
            if (v16)
            {
              v17 = v16;
              v18 = v16;
              do
              {
                v19 = v18;
                v18 = *(v18 + 64);
              }

              while ((*(v18 + 8) & 0x80000000) == 0);
              if ((v4 & 1) != 0 || !IsInternalProperty((v18 + 16), (v19 + 16)))
              {
                v20 = v17[8];
                (*(*v17 + 8))(v17);
                v21 = v32;
                v22 = v20[10];
                if (v22 == v32)
                {
                  goto LABEL_48;
                }

                v23 = v22 - (v32 + 8);
                if (v22 != v32 + 8)
                {
                  memmove(v32, v32 + 8, v22 - (v32 + 8));
                }

                v20[10] = &v21[v23];
                DeleteEmptySchema(v20);
              }
            }
          }

          v24 = v14[1];
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v14[2];
              v26 = *v25 == v14;
              v14 = v25;
            }

            while (!v26);
          }

          v14 = v25;
        }

        while (v25 != v13);
      }
    }
  }

  else
  {
    v27 = *(this + 38);
    v28 = v27 - *(this + 37);
    if (v28)
    {
      v29 = v28 >> 3;
      v30 = (v27 - 8);
      do
      {
        --v29;
        RemoveSchemaChildren(v30, v4 & 1);
        v30 -= 8;
      }

      while (v29);
    }
  }
}

void sub_18613F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t RemoveSchemaChildren(char *__dst, char a2)
{
  v2 = *__dst;
  if ((*(*__dst + 8) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  v4 = *(v2 + 80);
  v5 = v4 - *(v2 + 72);
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v5 >> 3;
  v8 = v4 - 8;
  v9 = -v4;
  do
  {
    if ((a2 & 1) != 0 || (result = IsInternalProperty((v2 + 16), (*v8 + 16)), (result & 1) == 0))
    {
      result = *v8;
      if (*v8)
      {
        result = (*(*result + 8))(result);
      }

      v11 = *(v2 + 80);
      if (v11 == v8)
      {
        goto LABEL_20;
      }

      v12 = v9 + v11;
      if (v8 + 8 != v11)
      {
        result = memmove(v8, (v8 + 8), v9 + v11);
      }

      *(v2 + 80) = v8 + v12;
    }

    v8 -= 8;
    v9 += 8;
    --v7;
  }

  while (v7);
  if (*(v2 + 72) == *(v2 + 80))
  {
LABEL_14:
    v13 = *(v2 + 64);
    v14 = *(v13 + 80);
    if (v14 != __dst)
    {
      v15 = v14 - (__dst + 8);
      if (v14 != __dst + 8)
      {
        memmove(__dst, __dst + 8, v14 - (__dst + 8));
      }

      *(v13 + 80) = &__dst[v15];
      v16 = *(*v2 + 8);

      return v16(v2);
    }

LABEL_20:
    __break(1u);
LABEL_21:
    RemoveSchemaChildren();
  }

  return result;
}

void XMPUtils::DuplicateSubtree(XMPUtils *this, const XMPMeta *a2, XMPMeta *__s1, char *a4, char *a5, char *a6, const char *a7)
{
  v8 = a6;
  v9 = a5;
  if (!sUseNewCoreAPIs)
  {
    memset(v55, 0, sizeof(v55));
    memset(v54, 0, sizeof(v54));
    if (__s1 && *__s1)
    {
      if (a4 && *a4)
      {
        v14 = "(dest != 0) && (destNS != 0) && (destRoot != 0)";
        v15 = 1800;
        if (a2 && a5 && a6)
        {
          if (!*a5)
          {
            v9 = __s1;
          }

          if (!*a6)
          {
            v8 = a4;
          }

          v16 = strcmp(__s1, "*");
          v17 = strcmp(v9, "*");
          if (v16)
          {
            v18 = v17 == 0;
          }

          else
          {
            v18 = 1;
          }

          v19 = v18;
          if (this == a2 && v19)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 4;
            v46 = "Can't duplicate tree onto itself";
            goto LABEL_90;
          }

          if (!(v17 | v16))
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 4;
            v46 = "Use Clone for full tree to full tree";
            goto LABEL_90;
          }

          if (!v16)
          {
            ExpandXPath(v9, v8, v54);
            Node = FindNode(a2 + 224, v54, 0, 0, 0);
            if (!Node || (*(Node + 9) & 1) == 0)
            {
              exception = __cxa_allocate_exception(0x18uLL);
              *exception = 102;
              v46 = "Destination must be an existing struct";
              goto LABEL_90;
            }

            if (*(Node + 72) != *(Node + 80))
            {
              if ((a7 & 0x20000000) == 0)
              {
                exception = __cxa_allocate_exception(0x18uLL);
                *exception = 102;
                v46 = "Destination must be an empty struct";
                goto LABEL_90;
              }

              XMP_Node::RemoveChildren(Node);
            }

            v25 = *(this + 38) - *(this + 37);
            if (v25)
            {
              v26 = 0;
              v27 = v25 >> 3;
              if (v27 <= 1)
              {
                v27 = 1;
              }

              v49 = v27;
              do
              {
                v28 = *(this + 37);
                if (v26 >= (*(this + 38) - v28) >> 3)
                {
                  goto LABEL_93;
                }

                v29 = *(v28 + 8 * v26);
                if (*(v29 + 80) != *(v29 + 72))
                {
                  if ((*(v29 + 80) - *(v29 + 72)) >> 3)
                  {
                    operator new();
                  }

                  goto LABEL_93;
                }
              }

              while (++v26 != v49);
            }

LABEL_74:
            v53[0] = v54;
            std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v53);
            v54[0] = v55;
            std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v54);
            return;
          }

          if (v17)
          {
            ExpandXPath(__s1, a4, v55);
            ExpandXPath(v9, v8, v54);
            v20 = FindNode(this + 224, v55, 0, 0, 0);
            if (v20)
            {
              if (FindNode(a2 + 224, v54, 0, 0, 0))
              {
                exception = __cxa_allocate_exception(0x18uLL);
                *exception = 102;
                v46 = "Destination subtree must not exist";
              }

              else
              {
                v21 = FindNode(a2 + 224, v54, 1, 0, 0);
                v22 = v21;
                if (v21)
                {
                  if (this == a2)
                  {
                    v23 = v21;
                    do
                    {
                      if (v23 == v20)
                      {
                        v42 = __cxa_allocate_exception(0x18uLL);
                        *v42 = 102;
                        v42[1] = "Destination subtree is within the source subtree";
                        *(v42 + 16) = 0;
                      }

                      v23 = *(v23 + 64);
                    }

                    while (v23);
                  }

                  std::string::operator=((v21 + 40), (v20 + 40));
                  *(v22 + 2) = *(v20 + 8);
                  CloneOffspring(v20, v22, 0);
                  goto LABEL_74;
                }

                exception = __cxa_allocate_exception(0x18uLL);
                *exception = 102;
                v46 = "Can't create destination root node";
              }
            }

            else
            {
              exception = __cxa_allocate_exception(0x18uLL);
              *exception = 102;
              v46 = "Can't find source subtree";
            }

LABEL_90:
            exception[1] = v46;
            *(exception + 16) = 0;
          }

          memset(v53, 0, sizeof(v53));
          ExpandXPath(__s1, a4, v53);
          v30 = FindNode(this + 224, v53, 0, 0, 0);
          v31 = v30;
          if (v30 && (*(v30 + 9) & 1) != 0)
          {
            if (*(a2 + 37) == *(a2 + 38))
            {
LABEL_56:
              __p[0] = 0;
              __p[1] = 0;
              v52 = 0;
              memset(__s, 0, sizeof(__s));
              v32 = *(v31 + 80) - *(v31 + 72);
              if (v32)
              {
                v33 = 0;
                v34 = v32 >> 3;
                if (v34 <= 1)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = v34;
                }

                while (1)
                {
                  v36 = *(v31 + 72);
                  if (v33 >= (*(v31 + 80) - v36) >> 3)
                  {
                    break;
                  }

                  v37 = *(v36 + 8 * v33);
                  v38 = std::string::find((v37 + 16), 58, 0);
                  if (v38 != -1)
                  {
                    v39 = v37 + 16;
                    if (*(v37 + 39) < 0)
                    {
                      v39 = *(v37 + 16);
                    }

                    MEMORY[0x186602530](__p, v39, v38);
                    if (v52 >= 0)
                    {
                      v41 = __p;
                    }

                    else
                    {
                      v41 = __p[0];
                    }

                    if (XMPMeta::GetNamespaceURI(v41, &__s[4], __s, v40))
                    {
                      if (FindSchemaNode(a2 + 224, *&__s[4], 1, 0))
                      {
                        operator new();
                      }

                      v43 = __cxa_allocate_exception(0x18uLL);
                      *v43 = 101;
                      v43[1] = "Failed to find destination schema";
                      *(v43 + 16) = 0;
                    }

                    v44 = __cxa_allocate_exception(0x18uLL);
                    *v44 = 101;
                    v44[1] = "Source field namespace is not global";
                    *(v44 + 16) = 0;
                  }

                  if (v35 == ++v33)
                  {
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    goto LABEL_73;
                  }
                }

LABEL_93:
                __break(1u);
                return;
              }

LABEL_73:
              __p[0] = v53;
              std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](__p);
              goto LABEL_74;
            }

            if ((a7 & 0x20000000) != 0)
            {
              XMP_Node::RemoveChildren(a2 + 28);
              goto LABEL_56;
            }

            v47 = "Destination tree must be empty";
          }

          else
          {
            v47 = "Source must be an existing struct";
          }

          v48 = __cxa_allocate_exception(0x18uLL);
          *v48 = 102;
          v48[1] = v47;
          *(v48 + 16) = 0;
        }
      }

      else
      {
        v14 = "(sourceRoot != 0) && (*sourceRoot != 0)";
        v15 = 1799;
      }
    }

    else
    {
      v14 = "(sourceNS != 0) && (*sourceNS != 0)";
      v15 = 1798;
    }

    __assert_rtn("DuplicateSubtree", "XMPUtils-FileInfo.cpp", v15, v14);
  }

  {
    __cxa_bad_cast();
  }

  XMPUtils::DuplicateSubtree_v2(this, a2, __s1, a4, v9, v8, a7);
}

void sub_1861400D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char ***__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char **a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25)
{
  __p = &a19;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  a19 = &a22;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a19);
  a22 = &a25;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t CodePointToUTF8(unint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  if (a1 >= 0x80)
  {
    v4 = 0;
    do
    {
      v5 = a1;
      *(v10 + v4 + 7) = a1 & 0x3F | 0x80;
      a1 >>= 6;
      --v4;
    }

    while (v5 > 0x3F);
    if ((v4 + 1) <= 0xFFFFFFFFFFFFFFFALL)
    {
      CodePointToUTF8();
    }

    if ((v5 & 0x3F) != 0)
    {
      v6 = 0;
      do
      {
        ++v6;
        v7 = v5 > 1;
        v5 >>= 1;
      }

      while (v7);
    }

    else
    {
      v6 = 0;
    }

    if (v6 <= v4 + 7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 9;
    }

    v3 = v4 - v8 + 16;
    if (v3 >= 7)
    {
      CodePointToUTF8();
    }

    v2 = v8 - v4 - 8;
    *(&v10[2] + v4 - v8) |= 255 << (v4 - v8 + 16);
  }

  else
  {
    HIBYTE(v10[0]) = a1;
    v2 = 1;
    v3 = 7;
  }

  return MEMORY[0x186602530](a2, v10 + v3, v2);
}

uint64_t ItemValuesMatch(const XMP_Node *a1, const XMP_Node *a2)
{
  v4 = *(a1 + 2);
  if ((v4 & 0x1F00) == 0x100)
  {
    v28 = *(a1 + 9);
    v27 = *(a1 + 10);
    if (v27 - v28 != *(a2 + 10) - *(a2 + 9))
    {
      return 0;
    }

    if (v27 != v28)
    {
      v29 = 0;
      v30 = (v27 - v28) >> 3;
      while (1)
      {
        v31 = *(a1 + 9);
        if (v29 >= (*(a1 + 10) - v31) >> 3)
        {
          break;
        }

        v32 = *(v31 + 8 * v29);
        v33 = v32 + 16;
        if (v32[39] < 0)
        {
          v33 = *v33;
        }

        result = FindChildNode(a2, v33, 0, 0);
        if (!result)
        {
          return result;
        }

        if ((ItemValuesMatch(v32, result) & 1) == 0)
        {
          return 0;
        }

        if (v30 == ++v29)
        {
          return 1;
        }
      }

      goto LABEL_58;
    }

    return 1;
  }

  if ((v4 & 0x1F00) != 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_59;
    }

    v35 = *(a1 + 10) - *(a1 + 9);
    if (v35)
    {
      v36 = 0;
      v37 = v35 >> 3;
      while (1)
      {
        v38 = *(a1 + 9);
        if (v36 >= (*(a1 + 10) - v38) >> 3)
        {
          goto LABEL_58;
        }

        v39 = *(a2 + 10) - *(a2 + 9);
        if (!v39)
        {
          return 0;
        }

        v40 = 0;
        v41 = *(v38 + 8 * v36);
        v42 = v39 >> 3;
        while (1)
        {
          v43 = *(a2 + 9);
          if (v40 >= (*(a2 + 10) - v43) >> 3)
          {
            goto LABEL_58;
          }

          if (ItemValuesMatch(v41, *(v43 + 8 * v40)))
          {
            break;
          }

          if (v42 == ++v40)
          {
            return 0;
          }
        }

        if (++v36 == v37)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v5 = *(a1 + 63);
  if (v5 >= 0)
  {
    v6 = *(a1 + 63);
  }

  else
  {
    v6 = *(a1 + 6);
  }

  v7 = *(a2 + 63);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 6);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v9 = v5 >= 0 ? (a1 + 40) : *(a1 + 5);
  v10 = v8 >= 0 ? (a2 + 40) : *(a2 + 5);
  if (memcmp(v9, v10, v6) || (v4 & 0x40) != (*(a2 + 2) & 0x40))
  {
    return 0;
  }

  if ((v4 & 0x40) == 0)
  {
    return 1;
  }

  v11 = *(a1 + 12);
  if (*(a1 + 13) == v11 || (v12 = *(a2 + 12), *(a2 + 13) == v12))
  {
LABEL_58:
    __break(1u);
LABEL_59:
    ItemValuesMatch();
  }

  v13 = *v11;
  v14 = *v12;
  v15 = *(v13 + 63);
  if (v15 >= 0)
  {
    v16 = *(v13 + 63);
  }

  else
  {
    v16 = *(v13 + 48);
  }

  v17 = *(v14 + 63);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v14 + 48);
  }

  if (v16 == v17)
  {
    v21 = *(v13 + 40);
    v19 = v13 + 40;
    v20 = v21;
    v22 = (v15 >= 0 ? v19 : v20);
    v25 = *(v14 + 40);
    v23 = v14 + 40;
    v24 = v25;
    v26 = (v18 >= 0 ? v23 : v24);
    if (!memcmp(v22, v26, v16))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t std::vector<XMP_Node *>::__init_with_size[abi:fe200100]<XMP_Node **,XMP_Node **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<XMP_Node *>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_18614055C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<XMP_Node *>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:fe200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:fe200100](uint64_t a1, uint64_t a2)
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

    std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, v2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void *std::__fill_n_BOOL[abi:fe200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
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

void std::__fill_n_BOOL[abi:fe200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
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

void XMPUtils::CatenateArrayItems_v2()
{
  __assert_rtn("CatenateArrayItems_v2", "XMPUtils-FileInfo.cpp", 901, "(separator != 0) && (quotes != 0) && (catedStr != 0)");
}

{
  __assert_rtn("CatenateArrayItems_v2", "XMPUtils-FileInfo.cpp", 900, "(schemaNS != 0) && (arrayName != 0)");
}

void XMPUtils::CatenateArrayItems()
{
  __assert_rtn("CatenateArrayItems", "XMPUtils-FileInfo.cpp", 1019, "(separator != 0) && (quotes != 0) && (catedStr != 0)");
}

{
  __assert_rtn("CatenateArrayItems", "XMPUtils-FileInfo.cpp", 1018, "(schemaNS != 0) && (arrayName != 0)");
}

void AppendSubtree()
{
  __assert_rtn("AppendSubtree", "XMPUtils-FileInfo.cpp", 800, "mergeCompound");
}

{
  __assert_rtn("AppendSubtree", "XMPUtils-FileInfo.cpp", 741, "(destNode == 0) || (! destNode->value.empty()) || (! destNode->children.empty())");
}

void CodePointToUTF8()
{
  __assert_rtn("CodePointToUTF8", "XMPUtils-FileInfo.cpp", 360, "(0 <= i) && (i <= 6)");
}

{
  __assert_rtn("CodePointToUTF8", "XMPUtils-FileInfo.cpp", 350, "(2 <= byteCount) && (byteCount <= 6)");
}

uint64_t PhotoDataUtils::GetNativeInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v7 = *(a4 + 8);
    v8 = *(a4 + 16);
    if (v7)
    {
      if (v8)
      {
        v9 = 0;
        while (a3 == 36867 || a3 == 306)
        {
          v10 = v7[v9];
          if (v10 != 58)
          {
            goto LABEL_10;
          }

LABEL_11:
          if (v8 == ++v9)
          {
            return 0;
          }
        }

        v10 = v7[v9];
LABEL_10:
        if ((v10 | 0x20) != 0x20)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      LODWORD(v9) = 0;
LABEL_16:
      if (v9 != v8)
      {
        v11 = TrimTrailingSpaces(v7, v8);
        *(a4 + 16) = v11;
        return v11 != 0;
      }
    }

    else if (v8)
    {
      PhotoDataUtils::GetNativeInfo();
    }

    return 0;
  }

  return result;
}

unint64_t PhotoDataUtils::GetNativeInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  IPTC_Manager::GetDataSet(a1, a2, a5, 0);
  v8 = v7;
  v9 = ignoreLocalText != 1 || v7 == 0;
  if (!v9 && (*(a1 + 46) & 1) == 0)
  {
    v10 = 0;
    v13 = 0uLL;
    while (1)
    {
      IPTC_Manager::GetDataSet(a1, a2, &v13, v10);
      v11 = !v13.n128_u32[1] || v13.n128_u64[1] == 0;
      if (v11 || ReconcileUtils::IsASCII(v13.n128_u64[1], v13.n128_u32[1]))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v10 = v8;
        break;
      }
    }

    if (v10 == v8)
    {
      return 0;
    }
  }

  return v8;
}

BOOL PhotoDataUtils::IsValueDifferent(uint64_t a1, const void **a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  if (!ReconcileUtils::IsUTF8(*(a1 + 8), v4))
  {
    if ((ignoreLocalText & 1) == 0)
    {
      ReconcileUtils::LocalToUTF8(*(a1 + 8), *(a1 + 16), a3);
      goto LABEL_7;
    }

    return 0;
  }

  MEMORY[0x186602530](a3, *(a1 + 8), *(a1 + 16));
LABEL_7:
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  v10 = *(a2 + 23);
  v11 = v10;
  if (v10 < 0)
  {
    v10 = a2[1];
  }

  if (v9 != v10)
  {
    return 1;
  }

  if (v8 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  return memcmp(v12, v13, v9) != 0;
}

unint64_t PhotoDataUtils::IsValueDifferent(PhotoDataUtils *this, const IPTC_Manager *a2, const IPTC_Manager *a3)
{
  v3 = a3;
  v19 = 0uLL;
  IPTC_Manager::GetDataSet(this, a3, &v19, 0);
  v7 = v6;
  if (v6)
  {
    v18 = 0uLL;
    IPTC_Manager::GetDataSet(a2, v3, &v18, 0);
    if (v7 == v8)
    {
      v9 = 0;
      memset(&v17, 0, sizeof(v17));
      memset(&__p, 0, sizeof(__p));
      while (1)
      {
        if (!ignoreLocalText || (*(this + 46) & 1) != 0 || (IPTC_Manager::GetDataSet(this, v3, &v19, v9), v19.n128_u32[1]) && v19.n128_u64[1] && ReconcileUtils::IsASCII(v19.n128_u64[1], v19.n128_u32[1]))
        {
          IPTC_Manager::GetDataSet_UTF8(this, v3, &__p, v9);
          IPTC_Manager::GetDataSet_UTF8(a2, v3, &v17, v9);
          v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          if (v11)
          {
            size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
            if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v17.__r_.__value_.__l.__size_;
            }

            if (v11 != size)
            {
              break;
            }

            v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v14 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v17 : v17.__r_.__value_.__r.__words[0];
            if (memcmp(v13, v14, v11))
            {
              break;
            }
          }
        }

        if (v7 == ++v9)
        {
          v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v9 = v7;
          break;
        }
      }

      v7 = v9 != v7;
      if (v10 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      return 1;
    }
  }

  return v7;
}

void sub_186140EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PhotoDataUtils::Import2WayExif (uint64_t a1, uint64_t a2)
{
  v146 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 73);
  v133 = 0;
  __src = 0;
  __len = 0;
  v132 = 0;
  ImportTIFF_StandardMappings(0, a1, a2);
  ImportTIFF_StandardMappings(2u, a1, a2);
  ImportTIFF_StandardMappings(3u, a1, a2);
  v5 = (*(*a1 + 24))(a1, 2, 42032, &v133);
  if (WORD1(v133) == 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1 && HIDWORD(v133) != 0)
  {
    ImportSingleTIFF(&v133, v4, a2, "http://ns.adobe.com/exif/1.0/aux/", "OwnerName");
  }

  v8 = (*(*a1 + 24))(a1, 2, 42033, &v133);
  if (WORD1(v133) == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1 && HIDWORD(v133) != 0)
  {
    ImportSingleTIFF(&v133, v4, a2, "http://ns.adobe.com/exif/1.0/aux/", "SerialNumber");
  }

  v11 = (*(*a1 + 24))(a1, 2, 42036, &v133);
  if (WORD1(v133) == 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1 && HIDWORD(v133))
  {
    ImportSingleTIFF(&v133, v4, a2, "http://ns.adobe.com/exif/1.0/aux/", "Lens");
  }

  if (TXMPMeta<std::string>::GetProperty(a2, "http://cipa.jp/exif/1.0/", "LensSpecification", 0, &v132) && (v132 & 0x200) != 0)
  {
    memset(__dst, 0, 24);
    *__str = 0;
    v144 = 0;
    v145 = 0;
    v13 = TXMPMeta<std::string>::CountArrayItems(a2, "http://cipa.jp/exif/1.0/", "LensSpecification");
    if (v13)
    {
      TXMPMeta<std::string>::GetArrayItem(a2, "http://cipa.jp/exif/1.0/", "LensSpecification", 1, __dst, 0);
      if (v13 >= 2)
      {
        v14 = v13 - 1;
        v15 = 2;
        do
        {
          std::string::push_back(__dst, 32);
          TXMPMeta<std::string>::GetArrayItem(a2, "http://cipa.jp/exif/1.0/", "LensSpecification", v15, __str, 0);
          if (v145 >= 0)
          {
            v16 = __str;
          }

          else
          {
            v16 = *__str;
          }

          if (v145 >= 0)
          {
            v17 = HIBYTE(v145);
          }

          else
          {
            v17 = v144;
          }

          std::string::append(__dst, v16, v17);
          v15 = (v15 + 1);
          --v14;
        }

        while (v14);
      }
    }

    if (__dst[23] >= 0)
    {
      v18 = __dst;
    }

    else
    {
      v18 = *__dst;
    }

    TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/aux/", "LensInfo", v18, 0x20000000);
    if (SHIBYTE(v145) < 0)
    {
      operator delete(*__str);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  v19 = (*(*a1 + 24))(a1, 3, 6, &v133);
  if (WORD1(v133) == 5)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1 && HIDWORD(v133) == 1)
  {
    v21 = (*(a1 + 16))(__src);
    v22 = (*(a1 + 16))(__src + 4);
    if (v22 >= 0)
    {
      v23 = v21;
    }

    else
    {
      v23 = -v21;
    }

    if (v22 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = -v22;
    }

    if (v23 < 0)
    {
      TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "GPSAltitudeRef", "1", 0);
      v25 = -v23;
      goto LABEL_57;
    }

    if (v22 < 0)
    {
      v25 = -v21;
LABEL_57:
      memset(__dst, 0, 32);
      snprintf(__dst, 0x20uLL, "%lu/%lu", v25, v24);
      TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "GPSAltitude", __dst, 0);
    }
  }

  v26 = (*(*a1 + 24))(a1, 2, 36867, &v133);
  DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal");
  if (v26)
  {
    if (WORD1(v133) == 2 && !DoesPropertyExist)
    {
      ImportTIFF_Date(a1, &v133, a2, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal");
    }
  }

  v29 = (*(*a1 + 24))(a1, 0, 306, &v133);
  v30 = TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/xap/1.0/", "ModifyDate");
  if (v29)
  {
    if (WORD1(v133) == 2 && !v30)
    {
      ImportTIFF_Date(a1, &v133, a2, "http://ns.adobe.com/xap/1.0/", "ModifyDate");
    }
  }

  memset(__dst, 0, 24);
  *__str = 0;
  v32 = (*(*a1 + 24))(a1, 2, 36864, __dst);
  if (*&__dst[2] == 7)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = 1;
  if (v33 == 1 && *&__dst[4] == 4)
  {
    v34 = strncmp(*&__dst[8], "0230", 4uLL) >> 31;
  }

  v35 = (*(*a1 + 56))(a1, 2, 34855, __str);
  v36 = v35;
  if (*__str < 0xFFFFu)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    if (v35 && (*__str < 0xFFFFu || !TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings")))
    {
      TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
      TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1024, "", 0);
      TXMPMeta<std::string>::SetProperty_Int(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings[1]", *__str, 0);
    }

    goto LABEL_106;
  }

  v136 = 0;
  *v137 = 0;
  if ((*(*a1 + 56))(a1, 2, 34864, v137))
  {
    TXMPMeta<std::string>::SetProperty_Int(a2, "http://cipa.jp/exif/1.0/", "SensitivityType", *v137, 0);
    v38 = 0;
    v39 = 1;
    if (*v137 <= 7u)
    {
      if (((1 << v137[0]) & 0xE8) != 0)
      {
        v39 = 0;
        v38 = 34867;
      }

      else if (((1 << v137[0]) & 0x12) != 0)
      {
        v39 = 0;
        v38 = 34865;
      }

      else if (*v137 == 2)
      {
        v39 = 0;
        v38 = 34866;
      }
    }
  }

  else
  {
    v38 = 0;
    v39 = 1;
  }

  if ((*(*a1 + 56))(a1, 2, 34865, &v136))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "StandardOutputSensitivity", v136, 0);
  }

  if ((*(*a1 + 56))(a1, 2, 34866, &v136))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "RecommendedExposureIndex", v136, 0);
  }

  if ((*(*a1 + 56))(a1, 2, 34867, &v136))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "ISOSpeed", v136, 0);
  }

  if ((*(*a1 + 56))(a1, 2, 34868, &v136))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "ISOSpeedLatitudeyyy", v136, 0);
  }

  if ((*(*a1 + 56))(a1, 2, 34869, &v136))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "ISOSpeedLatitudezzz", v136, 0);
  }

  if (v37)
  {
    TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
    TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1024, "", 0);
    TXMPMeta<std::string>::SetProperty_Int(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings[1]", *__str, 0);
    v40 = "PhotographicSensitivity";
    v41 = "http://cipa.jp/exif/1.0/";
    v42 = *__str;
LABEL_101:
    TXMPMeta<std::string>::SetProperty_Int(a2, v41, v40, v42, 0);
    goto LABEL_106;
  }

  if (v36)
  {
    if (*__str != 0xFFFF)
    {
      __assert_rtn("ImportTIFF_PhotographicSensitivity", "ReconcileTIFF.cpp", 2002, "valueTag34855 == 65535");
    }

    TXMPMeta<std::string>::SetProperty_Int(a2, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", 0xFFFFLL, 0);
  }

  if ((v39 & 1) == 0)
  {
    v88 = (*(*a1 + 24))(a1, 2, v38, __dst);
    v89 = *&__dst[2] == 4 ? v88 : 0;
    if (v89 == 1 && *&__dst[4] == 1)
    {
      TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
      TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1024, "", 0);
      v42 = (*(a1 + 16))(*&__dst[8]);
      v40 = "ISOSpeedRatings[1]";
      v41 = "http://ns.adobe.com/exif/1.0/";
      goto LABEL_101;
    }
  }

LABEL_106:
  v43 = (*(*a1 + 24))(a1, 0, 315, &v133);
  if (((v43 | TXMPMeta<std::string>::DoesPropertyExist(a2, "http://purl.org/dc/elements/1.1/", "creator")) & 1) == 0 && (*(*a1 + 24))(a1, 2, 42032, &v133))
  {
    memset(__dst, 0, 24);
    v44 = __len;
    if (__len >= 0x17)
    {
      operator new();
    }

    __dst[23] = __len;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    __dst[v44] = 0;
    if (__dst[23] >= 0)
    {
      v45 = __dst;
    }

    else
    {
      v45 = *__dst;
    }

    TXMPMeta<std::string>::AppendArrayItem(a2, "http://purl.org/dc/elements/1.1/", "creator", 1024, v45, 0);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  v46 = (*(*a1 + 24))(a1, 2, 36864, &v133);
  if (WORD1(v133) == 7)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v47 == 1 && HIDWORD(v133) == 4)
  {
    __dst[4] = 0;
    *__dst = 0;
    *__dst = *__src;
    __dst[4] = 0;
    TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "ExifVersion", __dst, 0);
  }

  v48 = (*(*a1 + 24))(a1, 2, 40960, &v133);
  if (WORD1(v133) == 7)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49 == 1 && HIDWORD(v133) == 4)
  {
    __dst[4] = 0;
    *__dst = 0;
    *__dst = *__src;
    __dst[4] = 0;
    TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "FlashpixVersion", __dst, 0);
  }

  v50 = (*(*a1 + 24))(a1, 2, 37121, &v133);
  if (WORD1(v133) == 7)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  if (v51 == 1 && HIDWORD(v133) == 4)
  {
    ImportArrayTIFF_Byte(&v133, a2, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration");
  }

  if ((*(*a1 + 24))(a1, 2, 37510, &v133))
  {
    ImportTIFF_EncodedString(a1, &v133, a2, "UserComment", 1);
  }

  if ((*(*a1 + 24))(a1, 2, 34856, &v133))
  {
    ImportConversionTable(&v133, v4, a2, "OECF");
  }

  v52 = (*(*a1 + 24))(a1, 2, 37385, &v133);
  if (WORD1(v133) == 3)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  if (v53 == 1 && HIDWORD(v133) == 1)
  {
    v54 = bswap32(*__src) >> 16;
    if (v4)
    {
      v55 = *__src;
    }

    else
    {
      v55 = v54;
    }

    if (v55)
    {
      v56 = "True";
    }

    else
    {
      v56 = "False";
    }

    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "Fired", v56, 0);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "Return", ImportTIFF_Flash(TIFF_Manager::TagInfo const&,BOOL,TXMPMeta<std::string> *,char const*,char const*)::sTwoBits[(v55 >> 1) & 3], 0);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "Mode", ImportTIFF_Flash(TIFF_Manager::TagInfo const&,BOOL,TXMPMeta<std::string> *,char const*,char const*)::sTwoBits[(v55 >> 3) & 3], 0);
    if ((v55 & 0x20) != 0)
    {
      v57 = "True";
    }

    else
    {
      v57 = "False";
    }

    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "Function", v57, 0);
    if ((v55 & 0x40) != 0)
    {
      v58 = "True";
    }

    else
    {
      v58 = "False";
    }

    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "RedEyeMode", v58, 0);
  }

  if ((*(*a1 + 24))(a1, 2, 41484, &v133))
  {
    ImportConversionTable(&v133, v4, a2, "SpatialFrequencyResponse");
  }

  v59 = (*(*a1 + 24))(a1, 2, 41728, &v133);
  if (WORD1(v133) == 7)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (v60 == 1 && HIDWORD(v133) == 1)
  {
    ImportSingleTIFF_Byte(&v133, a2, "http://ns.adobe.com/exif/1.0/", "FileSource");
  }

  v61 = (*(*a1 + 24))(a1, 2, 41729, &v133);
  if (WORD1(v133) == 7)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  if (v62 == 1 && HIDWORD(v133) == 1)
  {
    ImportSingleTIFF_Byte(&v133, a2, "http://ns.adobe.com/exif/1.0/", "SceneType");
  }

  if ((*(*a1 + 24))(a1, 2, 41730, &v133))
  {
    v63 = __src;
    v64 = __len;
    v65 = *(__src + 1);
    v66 = bswap32(*__src) >> 16;
    if (v4)
    {
      v67 = *__src;
    }

    else
    {
      v67 = v66;
    }

    *__str = 0;
    v144 = 0;
    LODWORD(v145) = 0;
    memset(__dst, 0, 24);
    snprintf(__str, 0x14uLL, "%d", v67);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "CFAPattern", "http://ns.adobe.com/exif/1.0/", "Columns", __str, 0);
    v68 = __rev16(v65);
    if (v4)
    {
      v69 = v65;
    }

    else
    {
      v69 = v68;
    }

    snprintf(__str, 0x14uLL, "%d", v69);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "CFAPattern", "http://ns.adobe.com/exif/1.0/", "Rows", __str, 0);
    v70 = v64 - 4;
    v71 = v69 * v67;
    if (v70 == v71)
    {
      TXMPUtils<std::string>::ComposeStructFieldPath("http://ns.adobe.com/exif/1.0/", "CFAPattern", "http://ns.adobe.com/exif/1.0/", "Values", __dst);
      if (v71)
      {
        v72 = (v63 + 4);
        do
        {
          snprintf(__str, 0x14uLL, "%hu", *v72);
          if (__dst[23] >= 0)
          {
            v73 = __dst;
          }

          else
          {
            v73 = *__dst;
          }

          TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", v73, 1024, __str, 0);
          ++v72;
          --v70;
        }

        while (v70);
      }
    }

    else
    {
      TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "CFAPattern");
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  if ((*(*a1 + 24))(a1, 2, 41995, &v133))
  {
    v74 = __src;
    v75 = __len;
    v76 = *__src;
    v77 = *(__src + 1);
    v78 = *(a1 + 73);
    v79 = bswap32(v76) >> 16;
    if (!*(a1 + 73))
    {
      LOWORD(v76) = v79;
    }

    *v137 = 0;
    v138 = 0;
    v139 = 0;
    snprintf(v137, 0x14uLL, "%d", v76);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "DeviceSettingDescription", "http://ns.adobe.com/exif/1.0/", "Columns", v137, 0);
    v80 = __rev16(v77);
    if (v78)
    {
      v80 = v77;
    }

    snprintf(v137, 0x14uLL, "%d", v80);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "DeviceSettingDescription", "http://ns.adobe.com/exif/1.0/", "Rows", v137, 0);
    memset(__dst, 0, 24);
    TXMPUtils<std::string>::ComposeStructFieldPath("http://ns.adobe.com/exif/1.0/", "DeviceSettingDescription", "http://ns.adobe.com/exif/1.0/", "Settings", __dst);
    v81 = &v74[v75];
    v82 = (v74 + 4);
    *__str = 0;
    v144 = 0;
    v145 = 0;
    while (v82 < v81)
    {
      v83 = 0;
      v84 = v82;
      do
      {
        v85 = *v84++;
        ++v83;
      }

      while (v85);
      if (v84 > v81)
      {
        TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "DeviceSettingDescription");
        break;
      }

      FromUTF16(v82, v83);
      if (__dst[23] >= 0)
      {
        v86 = __dst;
      }

      else
      {
        v86 = *__dst;
      }

      if (v145 >= 0)
      {
        v87 = __str;
      }

      else
      {
        v87 = *__str;
      }

      TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", v86, 1024, v87, 0);
      v82 = v84;
    }

    if (SHIBYTE(v145) < 0)
    {
      operator delete(*__str);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  v90 = (*(*a1 + 24))(a1, 3, 0, &v133);
  if (WORD1(v133) == 1)
  {
    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

  if (v91 == 1 && HIDWORD(v133) == 4)
  {
    memset(__dst, 0, 20);
    snprintf(__dst, 0x14uLL, "%u.%u.%u.%u", *__src, *(__src + 1), *(__src + 2), *(__src + 3));
    TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "GPSVersionID", __dst, 0);
  }

  if ((*(*a1 + 24))(a1, 3, 2, &v133))
  {
    ImportTIFF_GPSCoordinate(a1, &v133, a2, "GPSLatitude");
  }

  if ((*(*a1 + 24))(a1, 3, 4, &v133))
  {
    ImportTIFF_GPSCoordinate(a1, &v133, a2, "GPSLongitude");
  }

  v93 = (*(*a1 + 24))(a1, 3, 7, &v133);
  if (WORD1(v133) == 5)
  {
    v94 = v93;
  }

  else
  {
    v94 = 0;
  }

  if (v94 == 1 && HIDWORD(v133) == 3)
  {
    v96 = *(a1 + 73);
    *__str = 0;
    v144 = 0;
    v145 = 0;
    if (((*(*a1 + 24))(a1, 3, 29, __str) & 1) != 0 || ((*(*a1 + 24))(a1, 2, 36867, __str) & 1) != 0 || (*(*a1 + 24))(a1, 2, 36868, __str))
    {
      v97 = v144[4];
      if (v97 == 58 || v97 == 45)
      {
        v98 = v144[7];
        if ((v98 == 58 || v98 == 45) && (v144[10] | 0x20) == 0x20)
        {
          v99 = 0;
          v100 = 0;
          v101 = *__src;
          v102 = *(__src + 1);
          v103 = *(__src + 2);
          v104 = *(__src + 3);
          v105 = *(__src + 4);
          v106 = bswap32(*__src);
          v107 = bswap32(v102);
          v108 = bswap32(v103);
          v109 = bswap32(v104);
          if ((v96 & 1) == 0)
          {
            v101 = v106;
          }

          v110 = bswap32(v105);
          if ((v96 & 1) == 0)
          {
            v102 = v107;
          }

          v111 = bswap32(*(__src + 5));
          if (v96)
          {
            v112 = *(__src + 5);
          }

          else
          {
            v103 = v108;
            v104 = v109;
            v105 = v110;
            v112 = v111;
          }

          v113 = v101 / v102;
          v114 = v113;
          v115 = v103 / v104;
          v116 = v105 / v112 + (v115 - v115) * 60.0 + (v113 - v113) * 3600.0;
          v117 = v116;
          v118 = (v116 - v116) * 1000000000.0 + 0.5;
          *&__dst[24] = 0x10000;
          do
          {
            v119 = v99;
            if (v100 == 4)
            {
              break;
            }

            v120 = v144[v100];
            v121 = v120 - 58;
            v99 = v120 + 10 * v119 - 48;
            ++v100;
          }

          while (v121 > 0xFFFFFFF5);
          v122 = 0;
          v123 = 0;
          *__dst = v119;
          do
          {
            v124 = v123;
            if (v122 == 2)
            {
              break;
            }

            v125 = v144[v122 + 5];
            v126 = v125 - 58;
            v123 = v125 + 10 * v124 - 48;
            ++v122;
          }

          while (v126 > 0xFFFFFFF5);
          v127 = 0;
          v128 = 0;
          *&__dst[4] = v124;
          do
          {
            v129 = v128;
            if (v127 == 2)
            {
              break;
            }

            v130 = v144[v127 + 8];
            v131 = v130 - 58;
            v128 = v130 + 10 * v129 - 48;
            ++v127;
          }

          while (v131 > 0xFFFFFFF5);
          *&__dst[8] = __PAIR64__(v114, v129);
          *&__dst[16] = v115;
          *&__dst[20] = v117;
          v142 = v118;
          *&__dst[27] = 0;
          v141 = 0;
          TXMPMeta<std::string>::SetProperty_Date(a2, "http://ns.adobe.com/exif/1.0/", "GPSTimeStamp", __dst, 0);
        }
      }
    }
  }

  if ((*(*a1 + 24))(a1, 3, 20, &v133))
  {
    ImportTIFF_GPSCoordinate(a1, &v133, a2, "GPSDestLatitude");
  }

  if ((*(*a1 + 24))(a1, 3, 22, &v133))
  {
    ImportTIFF_GPSCoordinate(a1, &v133, a2, "GPSDestLongitude");
  }

  if ((*(*a1 + 24))(a1, 3, 27, &v133))
  {
    ImportTIFF_EncodedString(a1, &v133, a2, "GPSProcessingMethod", 0);
  }

  if ((*(*a1 + 24))(a1, 3, 28, &v133))
  {
    ImportTIFF_EncodedString(a1, &v133, a2, "GPSAreaInformation", 0);
  }
}

void sub_1861429D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (*(v2 - 89) < 0)
    {
      operator delete(*(v2 - 112));
    }

    if (v5 < 0)
    {
      operator delete(v4);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18614241CLL);
  }

  _Unwind_Resume(a1);
}

void ImportTIFF_StandardMappings(unsigned int a1, unsigned __int8 *a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v70 = a2[73];
  v73 = 0;
  v74 = 0;
  v75 = 0;
  if (a1)
  {
    if (a1 == 3)
    {
      v4 = &sGPSInfoIFDMappings;
    }

    else
    {
      if (a1 != 2)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 9;
        exception[1] = "Invalid IFD for standard mappings";
        *(exception + 16) = 0;
      }

      v4 = &sExifIFDMappings;
    }
  }

  else
  {
    v4 = &sPrimaryIFDMappings;
  }

  v5 = *v4;
  if (v5 != 0xFFFF)
  {
    v6 = 0;
    do
    {
      v7 = &v4[16 * v6];
      v8 = *(v7 + 1);
      v9 = v8 == 1 || v7[1] == 2;
      v10 = *(v7 + 3);
      if (!*v10)
      {
        goto LABEL_136;
      }

      if (((*(*a2 + 24))(a2, a1, v5, &v73) & 1) == 0)
      {
        goto LABEL_136;
      }

      if (a2[74] == 1)
      {
        v11 = v75;
        v12 = (*(*a2 + 64))(a2);
        v13 = v74;
        if ((*(*a2 + 72))(a2) - v13 + v12 < v11)
        {
          goto LABEL_136;
        }
      }

      if (WORD1(v73) == 7)
      {
        v66 = 1265;
        v67 = "ImportTIFF_StandardMappings";
        v68 = "tagInfo.type != kTIFF_UndefinedType";
        goto LABEL_135;
      }

      if (WORD1(v73) - 14 < 0xFFFFFFF3)
      {
        v66 = 1197;
        v67 = "ImportTIFF_CheckStandardMapping";
        v68 = "(kTIFF_ByteType <= tagInfo.type) && (tagInfo.type <= kTIFF_LastType)";
        goto LABEL_135;
      }

      v14 = v7[1];
      if (v14 >= 0xE)
      {
        v66 = 1198;
        v67 = "ImportTIFF_CheckStandardMapping";
        v68 = "mapInfo.type <= kTIFF_LastType";
LABEL_135:
        __assert_rtn(v67, "ReconcileTIFF.cpp", v66, v68);
      }

      if (WORD1(v73) != v14)
      {
        v15 = kTIFF_IsIntegerType;
        if (kTIFF_IsIntegerType[v7[1]] == 1 || (v15 = kTIFF_IsRationalType, kTIFF_IsRationalType[v7[1]] == 1))
        {
          if ((v15[WORD1(v73)] & 1) == 0)
          {
            goto LABEL_136;
          }
        }

        else if (kTIFF_IsFloatType[v7[1]] != 1 || kTIFF_IsFloatType[WORD1(v73)] != 1)
        {
          goto LABEL_136;
        }
      }

      if (v8 != 1 || HIDWORD(v73) == 1)
      {
        v16 = *(v7 + 2);
        if (v9)
        {
          ImportSingleTIFF(&v73, v70, a3, v16, v10);
        }

        else if (WORD1(v73) <= 5u)
        {
          if (WORD1(v73) <= 2u)
          {
            if (WORD1(v73) == 1)
            {
              ImportArrayTIFF_Byte(&v73, a3, v16, v10);
            }

            else if (WORD1(v73) == 2)
            {
              v32 = TrimTrailingSpaces(v74, v75);
              LODWORD(v75) = v32;
              if (v32)
              {
                v33 = v74;
                v34 = v32;
                v35 = *(v74 + v32 - 1);
                IsUTF8 = ReconcileUtils::IsUTF8(v74, v32);
                if (v35)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = IsUTF8;
                }

                memset(__str, 0, sizeof(__str));
                *&v77 = 0;
                if (v37)
                {
                  v38 = &v33[v34];
                  goto LABEL_129;
                }

                if (IsUTF8)
                {
                  MEMORY[0x186602530](__str, v33, v75);
LABEL_123:
                  v65 = BYTE7(v77);
                  if ((SBYTE7(v77) & 0x80u) == 0)
                  {
                    v33 = __str;
                  }

                  else
                  {
                    v33 = *__str;
                  }

                  if (SBYTE7(v77) < 0)
                  {
                    v65 = *&__str[8];
                  }

                  v38 = &v33[v65];
LABEL_129:
                  TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
                  while (v33 < v38)
                  {
                    TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, v33, 0);
                    v33 += strlen(v33) + 1;
                  }
                }

                else if ((ignoreLocalText & 1) == 0)
                {
                  ReconcileUtils::LocalToUTF8(v33, v75, __str);
                  goto LABEL_123;
                }

                if (SBYTE7(v77) < 0)
                {
                  operator delete(*__str);
                }
              }
            }
          }

          else if (WORD1(v73) == 3)
          {
            v52 = v74;
            TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
            if (HIDWORD(v73))
            {
              v53 = 0;
              do
              {
                v54 = *(v52 + v53);
                v55 = bswap32(v54) >> 16;
                if (!v70)
                {
                  LOWORD(v54) = v55;
                }

                memset(__str, 0, sizeof(__str));
                LODWORD(v77) = 0;
                snprintf(__str, 0x14uLL, "%hu", v54);
                TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                ++v53;
              }

              while (v53 < HIDWORD(v73));
            }
          }

          else if (WORD1(v73) == 4)
          {
            v39 = v74;
            TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
            if (HIDWORD(v73))
            {
              v40 = 0;
              do
              {
                LODWORD(v41) = *(v39 + v40);
                v42 = bswap32(v41);
                if (v70)
                {
                  v41 = v41;
                }

                else
                {
                  v41 = v42;
                }

                memset(__str, 0, sizeof(__str));
                LODWORD(v77) = 0;
                snprintf(__str, 0x14uLL, "%lu", v41);
                TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                ++v40;
              }

              while (v40 < HIDWORD(v73));
            }
          }

          else
          {
            v21 = v74;
            TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
            if (HIDWORD(v73))
            {
              v22 = 0;
              do
              {
                LODWORD(v23) = *v21;
                LODWORD(v24) = v21[1];
                v25 = bswap32(*v21);
                v26 = bswap32(v24);
                if (v70)
                {
                  v23 = v23;
                }

                else
                {
                  v23 = v25;
                }

                if (v70)
                {
                  v24 = v24;
                }

                else
                {
                  v24 = v26;
                }

                v78 = 0;
                *__str = 0u;
                v77 = 0u;
                snprintf(__str, 0x28uLL, "%lu/%lu", v23, v24);
                TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                ++v22;
                v21 += 2;
              }

              while (v22 < HIDWORD(v73));
            }
          }
        }

        else if (WORD1(v73) > 9u)
        {
          switch(WORD1(v73))
          {
            case 0xAu:
              v59 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v60 = 0;
                do
                {
                  v61 = *v59;
                  v62 = v59[1];
                  v63 = bswap32(*v59);
                  v64 = bswap32(v62);
                  if (!v70)
                  {
                    v61 = v63;
                    v62 = v64;
                  }

                  v78 = 0;
                  *__str = 0u;
                  v77 = 0u;
                  snprintf(__str, 0x28uLL, "%ld/%ld", v61, v62);
                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                  ++v60;
                  v59 += 2;
                }

                while (v60 < HIDWORD(v73));
              }

              break;
            case 0xBu:
              v47 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v48 = 0;
                do
                {
                  v49 = *(v47 + v48);
                  v50 = COERCE_FLOAT(bswap32(LODWORD(v49)));
                  if (!v70)
                  {
                    v49 = v50;
                  }

                  memset(__str, 0, sizeof(__str));
                  *&v77 = 0;
                  TXMPUtils<std::string>::ConvertFromFloat("", __str, v49);
                  if ((SBYTE7(v77) & 0x80u) == 0)
                  {
                    v51 = __str;
                  }

                  else
                  {
                    v51 = *__str;
                  }

                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, v51, 0);
                  if (SBYTE7(v77) < 0)
                  {
                    operator delete(*__str);
                  }

                  ++v48;
                }

                while (v48 < HIDWORD(v73));
              }

              break;
            case 0xCu:
              v27 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v28 = 0;
                do
                {
                  v29 = *(v27 + v28);
                  v30 = COERCE_DOUBLE(bswap64(*&v29));
                  if (!v70)
                  {
                    v29 = v30;
                  }

                  memset(__str, 0, sizeof(__str));
                  *&v77 = 0;
                  TXMPUtils<std::string>::ConvertFromFloat("", __str, v29);
                  if ((SBYTE7(v77) & 0x80u) == 0)
                  {
                    v31 = __str;
                  }

                  else
                  {
                    v31 = *__str;
                  }

                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, v31, 0);
                  if (SBYTE7(v77) < 0)
                  {
                    operator delete(*__str);
                  }

                  ++v28;
                }

                while (v28 < HIDWORD(v73));
              }

              break;
          }
        }

        else
        {
          switch(WORD1(v73))
          {
            case 6u:
              v56 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v57 = 0;
                do
                {
                  v58 = *(v56 + v57);
                  memset(__str, 0, sizeof(__str));
                  LODWORD(v77) = 0;
                  snprintf(__str, 0x14uLL, "%hd", v58);
                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                  ++v57;
                }

                while (v57 < HIDWORD(v73));
              }

              break;
            case 8u:
              v43 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v44 = 0;
                do
                {
                  v45 = *(v43 + v44);
                  v46 = bswap32(v45) >> 16;
                  if (!v70)
                  {
                    LOWORD(v45) = v46;
                  }

                  memset(__str, 0, sizeof(__str));
                  LODWORD(v77) = 0;
                  snprintf(__str, 0x14uLL, "%hd", v45);
                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                  ++v44;
                }

                while (v44 < HIDWORD(v73));
              }

              break;
            case 9u:
              v17 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v18 = 0;
                do
                {
                  v19 = *(v17 + v18);
                  v20 = bswap32(v19);
                  if (!v70)
                  {
                    v19 = v20;
                  }

                  memset(__str, 0, sizeof(__str));
                  LODWORD(v77) = 0;
                  snprintf(__str, 0x14uLL, "%ld", v19);
                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                  ++v18;
                }

                while (v18 < HIDWORD(v73));
              }

              break;
          }
        }
      }

LABEL_136:
      ++v6;
      v5 = v4[16 * v6];
    }

    while (v5 != 0xFFFF);
  }
}

void ImportSingleTIFF(uint64_t a1, int a2, uint64_t a3, char *a4, char *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 2);
  if (v9 <= 5)
  {
    if (*(a1 + 2) <= 2u)
    {
      if (v9 == 1)
      {

        ImportSingleTIFF_Byte(a1, a3, a4, a5);
      }

      else if (v9 == 2)
      {
        v18 = TrimTrailingSpaces(*(a1 + 8), *(a1 + 16));
        *(a1 + 16) = v18;
        if (v18)
        {
          v19 = *(a1 + 8);
          v20 = *(v19 + v18 - 1);
          IsUTF8 = ReconcileUtils::IsUTF8(v19, v18);
          if (v20)
          {
            v22 = 0;
          }

          else
          {
            v22 = IsUTF8;
          }

          if (v22 == 1)
          {
            TXMPMeta<std::string>::SetProperty(a3, a4, a5, v19, 0);
            return;
          }

          memset(__str, 0, sizeof(__str));
          *&v39 = 0;
          if (IsUTF8)
          {
            MEMORY[0x186602530](__str, v19, *(a1 + 16));
          }

          else
          {
            if (ignoreLocalText)
            {
              return;
            }

            ReconcileUtils::LocalToUTF8(v19, *(a1 + 16), __str);
          }

          if ((SBYTE7(v39) & 0x80u) == 0)
          {
            v37 = __str;
          }

          else
          {
            v37 = *__str;
          }

          TXMPMeta<std::string>::SetProperty(a3, a4, a5, v37, 0);
          if (SBYTE7(v39) < 0)
          {
            operator delete(*__str);
          }
        }
      }
    }

    else
    {
      switch(v9)
      {
        case 3u:
          v29 = **(a1 + 8);
          v30 = bswap32(v29) >> 16;
          if (!a2)
          {
            LOWORD(v29) = v30;
          }

          memset(__str, 0, sizeof(__str));
          LODWORD(v39) = 0;
          snprintf(__str, 0x14uLL, "%hu", v29);
          TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
          break;
        case 4u:
          LODWORD(v23) = **(a1 + 8);
          v24 = bswap32(v23);
          if (a2)
          {
            v23 = v23;
          }

          else
          {
            v23 = v24;
          }

          memset(__str, 0, sizeof(__str));
          LODWORD(v39) = 0;
          snprintf(__str, 0x14uLL, "%lu", v23);
          TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
          break;
        case 5u:
          v12 = *(a1 + 8);
          LODWORD(v13) = *v12;
          LODWORD(v12) = *(v12 + 4);
          v14 = bswap32(v13);
          v15 = bswap32(v12);
          if (a2)
          {
            v13 = v13;
          }

          else
          {
            v13 = v14;
          }

          if (a2)
          {
            v12 = v12;
          }

          else
          {
            v12 = v15;
          }

          v40 = 0;
          *__str = 0u;
          v39 = 0u;
          snprintf(__str, 0x28uLL, "%lu/%lu", v13, v12);
          TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
          break;
      }
    }
  }

  else if (*(a1 + 2) > 9u)
  {
    switch(v9)
    {
      case 0xAu:
        v32 = *(a1 + 8);
        v34 = *v32;
        v33 = v32[1];
        v35 = bswap32(v34);
        v36 = bswap32(v33);
        if (!a2)
        {
          v34 = v35;
          v33 = v36;
        }

        v40 = 0;
        *__str = 0u;
        v39 = 0u;
        snprintf(__str, 0x28uLL, "%ld/%ld", v34, v33);
        TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
        break;
      case 0xBu:
        v27 = **(a1 + 8);
        v28 = COERCE_FLOAT(bswap32(LODWORD(v27)));
        if (!a2)
        {
          v27 = v28;
        }

        TXMPMeta<std::string>::SetProperty_Float(a3, a4, a5, 0, v27);
        break;
      case 0xCu:
        v16 = **(a1 + 8);
        v17 = COERCE_DOUBLE(bswap64(*&v16));
        if (!a2)
        {
          v16 = v17;
        }

        TXMPMeta<std::string>::SetProperty_Float(a3, a4, a5, 0, v16);
        break;
    }
  }

  else
  {
    switch(v9)
    {
      case 6u:
        v31 = **(a1 + 8);
        memset(__str, 0, sizeof(__str));
        LODWORD(v39) = 0;
        snprintf(__str, 0x14uLL, "%hd", v31);
        TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
        break;
      case 8u:
        v25 = **(a1 + 8);
        v26 = bswap32(v25) >> 16;
        if (!a2)
        {
          LOWORD(v25) = v26;
        }

        memset(__str, 0, sizeof(__str));
        LODWORD(v39) = 0;
        snprintf(__str, 0x14uLL, "%hd", v25);
        TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
        break;
      case 9u:
        v10 = **(a1 + 8);
        v11 = bswap32(v10);
        if (!a2)
        {
          v10 = v11;
        }

        memset(__str, 0, sizeof(__str));
        LODWORD(v39) = 0;
        snprintf(__str, 0x14uLL, "%ld", v10);
        TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
        break;
    }
  }
}

void sub_186143A40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1861438BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_186143A58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1861438BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_186143A70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1861438BCLL);
  }

  _Unwind_Resume(a1);
}

void ImportTIFF_Date(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v6 = *a2;
  if (v6 == 306)
  {
    v7 = 36880;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 306)
  {
    v8 = 37520;
  }

  else
  {
    v8 = 0;
  }

  if (v6 == 36867)
  {
    v9 = 36881;
  }

  else
  {
    v9 = v7;
  }

  if (v6 == 36867)
  {
    v10 = 37521;
  }

  else
  {
    v10 = v8;
  }

  if (v6 == 36868)
  {
    v11 = 36882;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == 36868)
  {
    v12 = 37522;
  }

  else
  {
    v12 = v10;
  }

  if (a2[1] != 2 || *(a2 + 1) != 20)
  {
    return;
  }

  v14 = *(a2 + 1);
  if (v14[4] != 58 || v14[7] != 58 || v14[10] != 32 || v14[13] != 58 || v14[16] != 58)
  {
    return;
  }

  v18 = 0;
  v19 = 0;
  *v94 = 0;
  do
  {
    v20 = v18;
    if (v19 == 4)
    {
      break;
    }

    v21 = v14[v19];
    v22 = v21 - 58;
    v18 = v21 + 10 * v20 - 48;
    ++v19;
  }

  while (v22 > 0xFFFFFFF5);
  v23 = 0;
  v24 = 0;
  LODWORD(v91) = v20;
  do
  {
    v25 = v24;
    if (v23 == 2)
    {
      break;
    }

    v26 = v14[v23 + 5];
    v27 = v26 - 58;
    v24 = v26 + 10 * v25 - 48;
    ++v23;
  }

  while (v27 > 0xFFFFFFF5);
  v28 = 0;
  v29 = 0;
  DWORD1(v91) = v25;
  do
  {
    v30 = v29;
    if (v28 == 2)
    {
      break;
    }

    v31 = v14[v28 + 8];
    v32 = v31 - 58;
    v29 = v31 + 10 * v30 - 48;
    ++v28;
  }

  while (v32 > 0xFFFFFFF5);
  DWORD2(v91) = v30;
  if (v25 | v20 | v30)
  {
    v94[0] = 1;
  }

  v33 = 0;
  v34 = 0;
  do
  {
    v35 = v34;
    if (v33 == 2)
    {
      break;
    }

    v36 = v14[v33 + 11];
    v37 = v36 - 58;
    v34 = v36 + 10 * v35 - 48;
    ++v33;
  }

  while (v37 > 0xFFFFFFF5);
  v38 = 0;
  v39 = 0;
  HIDWORD(v91) = v35;
  do
  {
    v40 = v39;
    if (v38 == 2)
    {
      break;
    }

    v41 = v14[v38 + 14];
    v42 = v41 - 58;
    v39 = v41 + 10 * v40 - 48;
    ++v38;
  }

  while (v42 > 0xFFFFFFF5);
  v43 = 0;
  v44 = 0;
  v92 = v40;
  v45 = v14 + 17;
  do
  {
    v46 = v44;
    if (v43 == 2)
    {
      break;
    }

    v47 = v45[v43];
    v48 = v47 - 58;
    v44 = v47 + 10 * v46 - 48;
    ++v43;
  }

  while (v48 > 0xFFFFFFF5);
  v93 = v46;
  v95 = 0;
  if (v40 | v35 | v46)
  {
    v94[1] = 1;
  }

  *&v94[10] = 0;
  *&v94[2] = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v49 = (*(*a1 + 24))(a1, 2, v12, &v88);
  if (WORD1(v88) == 2)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50 == 1)
  {
    v51 = 0;
    v52 = v89;
    do
    {
      v53 = v51;
      if (v52 >= &v89[v90])
      {
        break;
      }

      v54 = *v52++;
      v51 = v54 + 10 * v51 - 48;
    }

    while ((v54 - 58) > 0xFFFFFFF5);
    if (*v89 - 48 > 9)
    {
      v55 = 0;
    }

    else
    {
      v55 = 0;
      do
      {
        v56 = v89[++v55];
      }

      while ((v56 - 48) < 0xA);
      if (v55 > 8)
      {
LABEL_67:
        v95 = v53;
        if (v53)
        {
          v94[1] = 1;
        }

        goto LABEL_69;
      }
    }

    v57.i64[1] = 0x100000001;
    v57.i64[0] = v53 | 0x100000000;
    v58 = vdupq_n_s64(8 - v55);
    v59 = 4;
    v60.i64[0] = 0xA0000000ALL;
    v60.i64[1] = 0xA0000000ALL;
    do
    {
      v61 = v57;
      v57 = vmulq_s32(v57, v60);
      v59 -= 4;
    }

    while (((12 - v55) & 0xFFFFFFFFFFFFFFFCLL) + v59 != 4);
    v62 = vdupq_n_s64(-v59);
    v63 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vorrq_s8(v62, xmmword_186205EC0), v58), vcgtq_u64(vorrq_s8(v62, xmmword_186205EB0), v58)), v61, v57);
    *v63.i8 = vmul_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    v53 = v63.i32[0] * v63.i32[1];
    goto LABEL_67;
  }

LABEL_69:
  v85 = 0;
  __s1 = 0;
  v87 = 0;
  v64 = (*(*a1 + 24))(a1, 2, 36864, &v85);
  if (WORD1(v85) == 7)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 == 1 && HIDWORD(v85) == 4;
  if (v66 && (strncmp(__s1, "0231", 4uLL) & 0x80000000) == 0)
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v67 = (*(*a1 + 24))(a1, 2, v11, &v82);
    v68 = WORD1(v82) == 2 ? v67 : 0;
    if (v68 == 1 && HIDWORD(v82) == 7)
    {
      v70 = *v83;
      if (v70 == 43 || v70 == 45 || v83[3] == 58)
      {
        v71 = 0;
        v72 = 0;
        if (v70 == 45)
        {
          v73 = -1;
        }

        else
        {
          v73 = 1;
        }

        v94[3] = v73;
        do
        {
          v74 = v71;
          if (v72 == 2)
          {
            break;
          }

          v75 = v83[++v72];
          v76 = v75 - 58;
          v71 = v75 + 10 * v74 - 48;
        }

        while (v76 > 0xFFFFFFF5);
        v77 = 0;
        v78 = 0;
        *&v94[4] = v74;
        do
        {
          v79 = v78;
          if (v77 == 2)
          {
            break;
          }

          v80 = v83[v77 + 4];
          v81 = v80 - 58;
          v78 = v80 + 10 * v79 - 48;
          ++v77;
        }

        while (v81 > 0xFFFFFFF5);
        *&v94[8] = v79;
        v94[2] = 1;
      }
    }
  }

  TXMPMeta<std::string>::SetProperty_Date(a3, a4, a5, &v91, 0);
}

void sub_186144020(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186144008);
}

void ImportArrayTIFF_Byte(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  TXMPMeta<std::string>::DeleteProperty(a2, a3, a4);
  if (*(a1 + 4))
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + v9);
      *__str = 0;
      v12 = 0;
      v13 = 0;
      snprintf(__str, 0x14uLL, "%hu", v10);
      TXMPMeta<std::string>::AppendArrayItem(a2, a3, a4, 1024, __str, 0);
      ++v9;
    }

    while (v9 < *(a1 + 4));
  }
}

void sub_186144120(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1861440E8);
  }

  _Unwind_Resume(a1);
}

void ImportTIFF_EncodedString(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5)
{
  memset(&v13, 0, sizeof(v13));
  if (TIFF_Manager::DecodeString(a1, *(a2 + 8), *(a2 + 16), &v13))
  {
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    v10 = TrimTrailingSpaces(v9, size);
    if (v10 != size)
    {
      std::string::erase(&v13, v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v13.__r_.__value_.__l.__size_;
    }

    if (v11)
    {
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v13;
      }

      else
      {
        v12 = v13.__r_.__value_.__r.__words[0];
      }

      if (a5)
      {
        TXMPMeta<std::string>::SetLocalizedText(a3, "http://ns.adobe.com/exif/1.0/", a4, "", "x-default", v12, 0);
      }

      else
      {
        TXMPMeta<std::string>::SetProperty(a3, "http://ns.adobe.com/exif/1.0/", a4, v12, 0);
      }
    }
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_186144250(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18614423CLL);
}

void ImportConversionTable(unsigned __int16 *a1, int a2, uint64_t a3, char *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v35 = v4;
  if (v4 != 34856 && v4 != 41484)
  {
    ImportConversionTable();
  }

  TXMPMeta<std::string>::DeleteProperty(a3, "http://ns.adobe.com/exif/1.0/", a4);
  v10 = *(a1 + 1);
  v11 = *(a1 + 4);
  v12 = v10[1];
  v13 = bswap32(*v10) >> 16;
  if (a2)
  {
    LOWORD(v14) = *v10;
  }

  else
  {
    LOWORD(v14) = v13;
  }

  v41 = 0;
  *__str = 0u;
  v40 = 0u;
  snprintf(__str, 0x28uLL, "%d", v14);
  v36 = a4;
  TXMPMeta<std::string>::SetStructField(a3, "http://ns.adobe.com/exif/1.0/", a4, "http://ns.adobe.com/exif/1.0/", "Columns", __str, 0);
  v15 = __rev16(v12);
  if (a2)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  snprintf(__str, 0x28uLL, "%d", v16);
  TXMPMeta<std::string>::SetStructField(a3, "http://ns.adobe.com/exif/1.0/", a4, "http://ns.adobe.com/exif/1.0/", "Rows", __str, 0);
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  TXMPUtils<std::string>::ComposeStructFieldPath("http://ns.adobe.com/exif/1.0/", a4, "http://ns.adobe.com/exif/1.0/", "Names", __p);
  v17 = v10 + v11;
  v18 = (v10 + 2);
  v19 = v14;
  if (v14)
  {
    v34 = "OECF-SFR name overflow";
    v14 = v14;
    while (1)
    {
      v20 = strlen(v18) + 1;
      v21 = &v18[v20];
      if (&v18[v20] > v17)
      {
        goto LABEL_46;
      }

      if (!ReconcileUtils::IsUTF8(v18, v20))
      {
        break;
      }

      if (v38 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      TXMPMeta<std::string>::AppendArrayItem(a3, "http://ns.adobe.com/exif/1.0/", v22, 1024, v18, 0);
      v18 = v21;
      if (!--v14)
      {
        goto LABEL_22;
      }
    }

    v34 = "OECF-SFR name error";
LABEL_46:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    exception[1] = v34;
    *(exception + 16) = 0;
  }

  v21 = (v10 + 2);
LABEL_22:
  if (v17 - v21 != 8 * v19 * v16)
  {
    v33 = __cxa_allocate_exception(0x18uLL);
    *v33 = 5;
    v33[1] = "OECF-SFR data overflow";
    *(v33 + 16) = 0;
  }

  TXMPUtils<std::string>::ComposeStructFieldPath("http://ns.adobe.com/exif/1.0/", v36, "http://ns.adobe.com/exif/1.0/", "Values", __p);
  v23 = v16 * v19;
  if (v23)
  {
    if (v35 == 34856)
    {
      v24 = "%ld/%ld";
    }

    else
    {
      v24 = "%lu/%lu";
    }

    do
    {
      LODWORD(v25) = *v21;
      LODWORD(v26) = v21[1];
      v27 = bswap32(*v21);
      v28 = bswap32(v26);
      if (a2)
      {
        v25 = v25;
      }

      else
      {
        v25 = v27;
      }

      if (a2)
      {
        v26 = v26;
      }

      else
      {
        v26 = v28;
      }

      if (v26)
      {
        v29 = 1;
      }

      else
      {
        v29 = v25 == 0;
      }

      if (!v29)
      {
        v32 = __cxa_allocate_exception(0x18uLL);
        *v32 = 5;
        v32[1] = "OECF-SFR data overflow";
        *(v32 + 16) = 0;
      }

      snprintf(__str, 0x28uLL, v24, v25, v26);
      if (v38 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      TXMPMeta<std::string>::AppendArrayItem(a3, "http://ns.adobe.com/exif/1.0/", v30, 1024, __str, 0);
      v21 += 2;
      --v23;
    }

    while (v23);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186144620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    TXMPMeta<std::string>::DeleteProperty(v19, "http://ns.adobe.com/exif/1.0/", a13);
    __cxa_end_catch();
    JUMPOUT(0x186144538);
  }

  _Unwind_Resume(exception_object);
}

void ImportSingleTIFF_Byte(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = **(a1 + 8);
  *__str = 0;
  v9 = 0;
  v10 = 0;
  snprintf(__str, 0x14uLL, "%hu", v7);
  TXMPMeta<std::string>::SetProperty(a2, a3, a4, __str, 0);
}

void sub_186144744(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x186144714);
  }

  _Unwind_Resume(a1);
}

void ImportTIFF_GPSCoordinate(unsigned __int8 *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2) == 5 && *(a2 + 4))
  {
    v7 = a1[73];
    v8 = *a2 - 1;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v9 = (*(*a1 + 24))(a1, 3, v8, &v33);
    v10 = HIDWORD(v33) ? v9 : 0;
    if (v10)
    {
      v11 = *v34;
      if ((v11 - 69) <= 0x12 && ((1 << (v11 - 69)) & 0x44201) != 0)
      {
        v13 = *(a2 + 8);
        if (v7)
        {
          v14 = 1;
        }

        else
        {
          v14 = 0x1000000;
        }

        v15 = *v13;
        v16 = v13[1];
        v17 = *(a2 + 4);
        if (v17 < 2)
        {
          v19 = 0;
          v20 = 0;
          v18 = v14;
        }

        else
        {
          v19 = v13[2];
          v18 = v13[3];
          if (v17 == 2)
          {
            v20 = 0;
          }

          else
          {
            v20 = v13[4];
            v14 = v13[5];
          }
        }

        v21 = bswap32(v15);
        v22 = bswap32(v16);
        v23 = bswap32(v19);
        v24 = bswap32(v18);
        v25 = bswap32(v20);
        v26 = bswap32(v14);
        if (v7)
        {
          v21 = v15;
          v22 = v16;
          v27 = v19;
        }

        else
        {
          v27 = v23;
        }

        v38 = 0;
        if (v7)
        {
          v28 = v20;
        }

        else
        {
          v18 = v24;
          v28 = v25;
        }

        if ((v7 & 1) == 0)
        {
          v14 = v26;
        }

        *__str = 0uLL;
        v37 = 0uLL;
        if (v22 == 1 && v18 == 1 && v14 == 1)
        {
          snprintf(__str, 0x28uLL, "%lu,%lu,%lu%c");
LABEL_31:
          TXMPMeta<std::string>::SetProperty(a3, "http://ns.adobe.com/exif/1.0/", a4, __str, 0);
          return;
        }

        if ((v22 || !v21) && (v18 || !v27) && (v14 || !v28))
        {
          if (v18 <= v22)
          {
            v29 = v22;
          }

          else
          {
            v29 = v18;
          }

          if (v14 <= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = v14;
          }

          v31 = 1;
          if (v30 >= 0xB)
          {
            do
            {
              ++v31;
              v32 = v30 > 0x6D;
              v30 /= 0xAu;
            }

            while (v32);
          }

          snprintf(__str, 0x28uLL, "%.0f,%.*f%c");
          goto LABEL_31;
        }
      }
    }
  }
}

void sub_186144A34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18614491CLL);
  }

  _Unwind_Resume(a1);
}

void PhotoDataUtils::Import3WayItems(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v39 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0uLL;
  memset(v33, 0, sizeof(v33));
  v32[0] = &unk_1EF4F1590;
  v32[1] = v33;
  if (!a4)
  {
    PhotoDataUtils::ExportIPTC(a3, v32);
  }

  LocalizedText = TXMPMeta<std::string>::GetLocalizedText(a3, "http://purl.org/dc/elements/1.1/", "rights", "", "x-default", 0, v40, 0);
  NativeInfo = PhotoDataUtils::GetNativeInfo(a2, 116, v9, 0, &v34);
  if (NativeInfo)
  {
    v11 = 1;
  }

  else
  {
    v11 = LocalizedText;
  }

  if (v11)
  {
    if (NativeInfo && (a4 == 0 || !LocalizedText))
    {
      PhotoDataUtils::ImportIPTC_LangAlt(a2, a3, 116, "http://purl.org/dc/elements/1.1/", "rights");
    }
  }

  else
  {
    v12 = PhotoDataUtils::GetNativeInfo(a1, 0, 33432, &v35);
    v13 = v37;
    if (v37 > 1)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14 == 1)
    {
      v15 = 0;
      do
      {
        if (!*(v36 + v15))
        {
          *(v36 + v15) = 10;
          v13 = v37;
        }

        ++v15;
      }

      while (v15 < (v13 - 1));
    }

    else if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (PhotoDataUtils::IsValueDifferent(&v35, v40, __p))
    {
      if (v39 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      TXMPMeta<std::string>::SetLocalizedText(a3, "http://purl.org/dc/elements/1.1/", "rights", "", "x-default", v16, 0);
    }
  }

LABEL_25:
  v17 = TXMPMeta<std::string>::GetLocalizedText(a3, "http://purl.org/dc/elements/1.1/", "description", "", "x-default", 0, v40, 0);
  v19 = PhotoDataUtils::GetNativeInfo(a2, 120, v18, 0, &v34);
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17;
  }

  if (v20)
  {
    if (v19 && (a4 == 0 || !v17))
    {
      PhotoDataUtils::ImportIPTC_LangAlt(a2, a3, 120, "http://purl.org/dc/elements/1.1/", "description");
    }
  }

  else if (PhotoDataUtils::GetNativeInfo(a1, 0, 270, &v35) && PhotoDataUtils::IsValueDifferent(&v35, v40, __p))
  {
    if (v39 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    TXMPMeta<std::string>::SetLocalizedText(a3, "http://purl.org/dc/elements/1.1/", "description", "", "x-default", v21, 0);
  }

  DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a3, "http://purl.org/dc/elements/1.1/", "creator");
  PhotoDataUtils::GetNativeInfo(a1, 0, 315, &v35);
  v24 = PhotoDataUtils::GetNativeInfo(a2, 80, v23, 0, &v34);
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = DoesPropertyExist;
  }

  if (v25)
  {
    if (v24 && (a4 == 0 || !DoesPropertyExist))
    {
      PhotoDataUtils::ImportIPTC_Array(a2, a3, 80, "http://purl.org/dc/elements/1.1/", "creator");
    }
  }

  else if (PhotoDataUtils::GetNativeInfo(a1, 0, 315, &v35) && PhotoDataUtils::IsValueDifferent(&v35, v40, __p))
  {
    TXMPUtils<std::string>::SeparateArrayItems(a3, "http://purl.org/dc/elements/1.1/", "creator", 0x10000400, __p);
  }

  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0uLL;
  Property = TXMPMeta<std::string>::GetProperty(a3, "http://ns.adobe.com/xap/1.0/", "CreateDate", v51, 0);
  v28 = PhotoDataUtils::GetNativeInfo(a2, 62, v27, 0, &v47);
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = Property;
  }

  if (v29)
  {
    if (v28 && (a4 == 0 || !Property))
    {
      PhotoDataUtils::ImportIPTC_Date(62, a2, a3);
    }
  }

  else
  {
    v30 = PhotoDataUtils::GetNativeInfo(a1, 2, 36868, &v48);
    if (WORD1(v48) == 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v31 == 1)
    {
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      TIFF_FileWriter::TIFF_FileWriter(v45);
      v42 = 0;
      __s2 = 0;
      v44 = 0;
      ExportTIFF_Date(a3, "http://ns.adobe.com/xap/1.0/", "CreateDate", v45, 36868);
      if (!TIFF_FileWriter::GetTag(v45, 2, 0x9004u, &v42) || v50 != v44 || strncmp(v49, __s2, v50))
      {
        ImportTIFF_Date(a1, &v48, a3, "http://ns.adobe.com/xap/1.0/", "CreateDate");
      }

      TIFF_FileWriter::~TIFF_FileWriter(v45);
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  IPTC_Writer::~IPTC_Writer(v32);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }
}

void sub_186144FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  TIFF_FileWriter::~TIFF_FileWriter(&a35);
  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  IPTC_Writer::~IPTC_Writer(&a9);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void PhotoDataUtils::ExportExif (uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  memset(&__str, 0, sizeof(__str));
  v71 = 0;
  HIBYTE(v70) = 0;
  LODWORD(v70) = 0;
  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, &v70) && (v70 & 0x200) != 0 && TXMPMeta<std::string>::GetArrayItem(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1, &__str, 0))
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", p_str, 0);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "CameraOwnerName") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/aux/", "OwnerName", &__str, 0))
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &__str;
    }

    else
    {
      v5 = __str.__r_.__value_.__r.__words[0];
    }

    TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "CameraOwnerName", v5, 0);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "BodySerialNumber") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/aux/", "SerialNumber", &__str, 0))
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__str;
    }

    else
    {
      v6 = __str.__r_.__value_.__r.__words[0];
    }

    TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "BodySerialNumber", v6, 0);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "LensModel") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/aux/", "Lens", &__str, 0))
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__str;
    }

    else
    {
      v7 = __str.__r_.__value_.__r.__words[0];
    }

    TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "LensModel", v7, 0);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "LensSpecification") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/aux/", "LensInfo", &__str, 0))
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v79 = 0;
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v9 = 0;
      do
      {
        v10 = std::string::find(&__str, 32, v9);
        if (v10 == v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
          if (v10 == -1)
          {
            v11 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              v11 = __str.__r_.__value_.__l.__size_;
            }
          }

          std::string::basic_string(&v77, &__str, v9, v11 - v9, v74);
          if (SBYTE7(v79) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *&v77.__r_.__value_.__l.__data_;
          *&v79 = *(&v77.__r_.__value_.__l + 2);
          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = v77.__r_.__value_.__r.__words[0];
          }

          TXMPMeta<std::string>::AppendArrayItem(a1, "http://cipa.jp/exif/1.0/", "LensSpecification", 1024, v12, 0);
        }

        v9 = v11 + 1;
        v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = __str.__r_.__value_.__l.__size_;
        }
      }

      while (v9 < v13);
      if (SBYTE7(v79) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  ExportTIFF_StandardMappings(0, a2, a1);
  ExportTIFF_StandardMappings(2, a2, a1);
  ExportTIFF_StandardMappings(3, a2, a1);
  v69 = 0;
  if ((*(*a2 + 128))(a2, 3, 6, &v69))
  {
    if (v69 < 0)
    {
      v14 = -HIDWORD(v69);
      v16 = -v69;
      v15 = -v69 < 0;
      LODWORD(v69) = -v69;
      HIDWORD(v69) = -HIDWORD(v69);
      if (!v15)
      {
        goto LABEL_56;
      }
    }

    else if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    TIFF_Manager::SetTag_Byte(a2, 3, 5, 1);
    v14 = HIDWORD(v69);
    v16 = -v69;
    LODWORD(v69) = -v69;
LABEL_56:
    TIFF_Manager::SetTag_Rational(a2, 3, 6, v16, v14);
  }

LABEL_57:
  ExportTIFF_LocTextASCII(a1, "description", a2, 270);
  ExportTIFF_EncodedString(a1, "UserComment", a2, 2, 37510, 1);
  if ((*(*a2 + 24))(a2, 2, 36868, 0))
  {
    ExportTIFF_Date(a1, "http://ns.adobe.com/xap/1.0/", "CreateDate", a2, 36868);
  }

  ExportTIFF_Date(a1, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal", a2, 36867);
  ExportTIFF_Date(a1, "http://ns.adobe.com/xap/1.0/", "ModifyDate", a2, 306);
  __p[0] = 0;
  __p[1] = 0;
  *&v79 = 0;
  LODWORD(v77.__r_.__value_.__l.__data_) = 0;
  if (TXMPMeta<std::string>::GetProperty(a1, "http://purl.org/dc/elements/1.1/", "creator", 0, &v77))
  {
    if ((v77.__r_.__value_.__s.__data_[1] & 2) != 0)
    {
      TXMPUtils<std::string>::CatenateArrayItems(a1, "http://purl.org/dc/elements/1.1/", "creator", 0, 0, 0x10000400u, __p);
      std::string::push_back(__p, 0);
      v17 = (SBYTE7(v79) & 0x80u) == 0 ? BYTE7(v79) : LODWORD(__p[1]);
      v18 = (SBYTE7(v79) & 0x80u) == 0 ? __p : __p[0];
      (*(*a2 + 32))(a2, 0, 315, 2, v17, v18);
      if (SBYTE7(v79) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    (*(*a2 + 40))(a2, 0, 315);
  }

  ExportTIFF_LocTextASCII(a1, "rights", a2, 33432);
  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "ExifVersion", &__str, 0))
  {
    v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __str.__r_.__value_.__l.__size_;
    }

    if (v19 == 4 && ((*(*a2 + 24))(a2, 2, 36864, 0) & 1) == 0)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &__str;
      }

      else
      {
        v20 = __str.__r_.__value_.__r.__words[0];
      }

      (*(*a2 + 32))(a2, 2, 36864, 7, 4, v20);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  *&v79 = 0;
  memset(&v77, 0, sizeof(v77));
  *v73 = 0;
  *v74 = 0;
  v21 = (*(*a2 + 24))(a2, 2, 36864, __p);
  if (WORD1(__p[0]) == 7)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1 && HIDWORD(__p[0]) == 4 && (strncmp(__p[1], "0230", 4uLL) & 0x80000000) == 0)
  {
    if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, v74) && (v74[1] & 2) != 0 && TXMPMeta<std::string>::CountArrayItems(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings") >= 1)
    {
      TXMPMeta<std::string>::GetArrayItem(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1, &v77, 0);
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v77;
      }

      else
      {
        v24 = v77.__r_.__value_.__r.__words[0];
      }

      TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", v24, 0);
    }

    TXMPMeta<std::string>::DeleteProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
    Property_Int = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", v73, 0);
    if (*v73 < 0x10000u && Property_Int)
    {
      if (((*(*a2 + 24))(a2, 2, 34855, __p) & 1) == 0)
      {
        TIFF_Manager::SetTag_Short(a2, 2, 34855, v73[0]);
      }
    }

    else if (Property_Int)
    {
      v27 = (*(*a2 + 24))(a2, 2, 34855, 0);
      v28 = (*(*a2 + 24))(a2, 2, 34864, 0);
      v29 = (*(*a2 + 24))(a2, 2, 34867, 0);
      DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "SensitivityType");
      v31 = TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "ISOSpeed");
      if (((v27 | v28 | v29) & 1) == 0)
      {
        v32 = v31;
        TIFF_Manager::SetTag_Short(a2, 2, 34855, 0xFFFFLL);
        if (!DoesPropertyExist && !v32)
        {
          TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "SensitivityType", "3", 0);
          TXMPMeta<std::string>::SetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "ISOSpeed", *v73, 0);
        }
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34864, __p) & 1) == 0)
    {
      v33 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "SensitivityType", v73, 0);
      if (*v73 < 0x10000u && v33)
      {
        TIFF_Manager::SetTag_Short(a2, 2, 34864, v73[0]);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34865, __p) & 1) == 0)
    {
      v35 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "StandardOutputSensitivity", v73, 0);
      if (*v73 >= 0 && v35)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34865, *v73);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34866, __p) & 1) == 0)
    {
      v37 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "RecommendedExposureIndex", v73, 0);
      if (*v73 >= 0 && v37)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34866, *v73);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34867, __p) & 1) == 0)
    {
      v39 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "ISOSpeed", v73, 0);
      if (*v73 >= 0 && v39)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34867, *v73);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34868, __p) & 1) == 0)
    {
      v41 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "ISOSpeedLatitudeyyy", v73, 0);
      if (*v73 >= 0 && v41)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34868, *v73);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34869, __p) & 1) == 0)
    {
      v43 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "ISOSpeedLatitudezzz", v73, 0);
      if (*v73 >= 0 && v43)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34869, *v73);
      }
    }
  }

  else if ((TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, v74) && ((v74[1] & 2) == 0 || TXMPMeta<std::string>::CountArrayItems(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings") < 1 || TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings[1]", v73, 0)) || TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", v73, 0)) && !v73[1])
  {
    TXMPMeta<std::string>::DeleteProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
    if (((*(*a2 + 24))(a2, 2, 34855, __p) & 1) == 0)
    {
      TIFF_Manager::SetTag_Short(a2, 2, 34855, v73[0]);
    }
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration") && TXMPMeta<std::string>::CountArrayItems(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration") == 4 && ((*(*a2 + 24))(a2, 2, 37121, 0) & 1) == 0)
  {
    LODWORD(__p[0]) = 0;
    TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration[1]", &v71, 0);
    LOBYTE(__p[0]) = v71;
    TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration[2]", &v71, 0);
    BYTE1(__p[0]) = v71;
    TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration[3]", &v71, 0);
    BYTE2(__p[0]) = v71;
    TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration[4]", &v71, 0);
    BYTE3(__p[0]) = v71;
    (*(*a2 + 32))(a2, 2, 37121, 7, 4, __p);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a1, "http://ns.adobe.com/exif/1.0/", "Flash") && ((*(*a2 + 24))(a2, 2, 37385, 0) & 1) == 0)
  {
    LOBYTE(__p[0]) = 0;
    Property_Bool = TXMPMeta<std::string>::GetProperty_Bool(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:Fired", __p, 0);
    v46 = LOBYTE(__p[0]);
    v47 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:Return", &v71, 0);
    v48 = v71;
    v49 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:Mode", &v71, 0);
    v50 = v71;
    v51 = TXMPMeta<std::string>::GetProperty_Bool(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:Function", __p, 0);
    v52 = LOBYTE(__p[0]);
    v53 = TXMPMeta<std::string>::GetProperty_Bool(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:RedEyeMode", __p, 0);
    v54 = 2 * (v48 & 3);
    if (!v47)
    {
      v54 = 0;
    }

    v55 = v54 | Property_Bool & v46;
    v56 = 8 * (v50 & 3);
    if (!v49)
    {
      v56 = 0;
    }

    v57 = v55 | v56;
    if ((v51 & v52) != 0)
    {
      v57 |= 0x20u;
    }

    if ((v53 & __p[0]) != 0)
    {
      v57 |= 0x40u;
    }

    TIFF_Manager::SetTag_Short(a2, 2, 37385, v57);
  }

  if (TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "FileSource", &v71, 0) && ((*(*a2 + 24))(a2, 2, 41728, 0) & 1) == 0)
  {
    HIBYTE(v70) = v71;
    (*(*a2 + 32))(a2, 2, 41728, 7, 1, &v70 + 7);
  }

  if (TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "SceneType", &v71, 0) && ((*(*a2 + 24))(a2, 2, 41729, 0) & 1) == 0)
  {
    HIBYTE(v70) = v71;
    (*(*a2 + 32))(a2, 2, 41729, 7, 1, &v70 + 7);
  }

  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "GPSVersionID", &__str, 0) && ((*(*a2 + 24))(a2, 3, 0, 0) & 1) == 0)
  {
    LODWORD(v77.__r_.__value_.__l.__data_) = 0;
    __p[0] = 0;
    __p[1] = 0;
    v58 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    if (sscanf(v58, "%u.%u.%u.%u", __p, __p + 4, &__p[1], __p | 0xC) == 4)
    {
      v59.i64[0] = 0xFF000000FFLL;
      v59.i64[1] = 0xFF000000FFLL;
      if ((vaddvq_s32(vandq_s8(vcgtq_u32(*__p, v59), xmmword_1862294D0)) & 0xF) == 0)
      {
        v77.__r_.__value_.__s.__data_[0] = __p[0];
        v77.__r_.__value_.__s.__data_[1] = BYTE4(__p[0]);
        v77.__r_.__value_.__s.__data_[2] = __p[1];
        v77.__r_.__value_.__s.__data_[3] = BYTE4(__p[1]);
        (*(*a2 + 32))(a2, 3, 0, 1, 4, &v77);
      }
    }
  }

  ExportTIFF_GPSCoordinate(a1, "GPSLatitude", a2, 2);
  ExportTIFF_GPSCoordinate(a1, "GPSLongitude", a2, 4);
  v80 = 0;
  *__p = 0u;
  v79 = 0u;
  if (TXMPMeta<std::string>::GetProperty_Date(a1, "http://ns.adobe.com/exif/1.0/", "GPSTimeStamp", __p, 0))
  {
    TXMPUtils<std::string>::ConvertToUTCTime(__p);
    memset(&v77, 0, sizeof(v77));
    (*(a2 + 48))(HIDWORD(__p[1]), &v77);
    (*(a2 + 48))(1, &v77.__r_.__value_.__s.__data_[4]);
    (*(a2 + 48))(v79, &v77.__r_.__value_.__l.__size_);
    (*(a2 + 48))(1, &v77.__r_.__value_.__s.__data_[12]);
    v60 = HIDWORD(v80);
    if (HIDWORD(v80))
    {
      v61 = DWORD1(v79);
      *v74 = 0;
      v75 = 0;
      v76 = 0;
      v62 = (*(*a2 + 24))(a2, 3, 7, v74);
      v63 = 1000000;
      if (*&v74[2] == 5)
      {
        v64 = v62;
      }

      else
      {
        v64 = 0;
      }

      if (v64 == 1 && *&v74[4] == 3)
      {
        v65 = (*(a2 + 16))(v75 + 20);
        if (v65 == 1)
        {
          v63 = 1000000;
        }

        else
        {
          v63 = v65;
        }
      }

      for (i = (v60 / 1000000000.0 + v61) * v63 + 0.5; i > 4000000000.0; v63 = v63 / 0xAuLL)
      {
        i = i / 10.0;
      }

      (*(a2 + 48))(i, &v77.__r_.__value_.__r.__words[2]);
      (*(a2 + 48))(v63, &v77.__r_.__value_.__s.__data_[20]);
    }

    else
    {
      (*(a2 + 48))(DWORD1(v79), &v77.__r_.__value_.__r.__words[2]);
      (*(a2 + 48))(1, &v77.__r_.__value_.__s.__data_[20]);
    }

    (*(*a2 + 32))(a2, 3, 7, 5, 3, &v77);
    *v74 = 0;
    v75 = 0;
    snprintf(v74, 0xCuLL, "%04d:%02d:%02d", LODWORD(__p[0]), HIDWORD(__p[0]), LODWORD(__p[1]));
    if (!BYTE2(v75))
    {
      (*(*a2 + 32))(a2, 3, 29, 2, 11, v74);
    }
  }

  else
  {
    (*(*a2 + 40))(a2, 3, 7);
    (*(*a2 + 40))(a2, 3, 29);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a1, "http://ns.adobe.com/exif/1.0/", "GPSDestLatitude") && ((*(*a2 + 24))(a2, 3, 20, 0) & 1) == 0)
  {
    ExportTIFF_GPSCoordinate(a1, "GPSDestLatitude", a2, 20);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a1, "http://ns.adobe.com/exif/1.0/", "GPSDestLongitude") && ((*(*a2 + 24))(a2, 3, 22, 0) & 1) == 0)
  {
    ExportTIFF_GPSCoordinate(a1, "GPSDestLongitude", a2, 22);
  }

  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "GPSProcessingMethod", &__str, 0))
  {
    v67 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v67 = __str.__r_.__value_.__l.__size_;
    }

    if (v67 && ((*(*a2 + 24))(a2, 3, 27, 0) & 1) == 0)
    {
      ExportTIFF_EncodedString(a1, "GPSProcessingMethod", a2, 3, 27, 0);
    }
  }

  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "GPSAreaInformation", &__str, 0))
  {
    v68 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = __str.__r_.__value_.__l.__size_;
    }

    if (v68 && ((*(*a2 + 24))(a2, 3, 28, 0) & 1) == 0)
    {
      ExportTIFF_EncodedString(a1, "GPSAreaInformation", a2, 3, 28, 0);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1861468C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x186145E5CLL);
  }

  _Unwind_Resume(exception_object);
}

void ExportTIFF_StandardMappings(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v49 = a2[73];
  memset(v55, 0, sizeof(v55));
  __p = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  if (a1)
  {
    if (a1 == 3)
    {
      v5 = &sGPSInfoIFDMappings;
    }

    else
    {
      if (a1 != 2)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 9;
        exception[1] = "Invalid IFD for standard mappings";
        *(exception + 16) = 0;
      }

      v5 = &sExifIFDMappings;
    }
  }

  else
  {
    v5 = &sPrimaryIFDMappings;
  }

  v6 = *v5;
  if (v6 == 0xFFFF)
  {
    return;
  }

  v7 = 0;
  while (1)
  {
    v8 = &v5[16 * v7];
    v9 = *(v8 + 8);
    if (!*(v8 + 8))
    {
      goto LABEL_15;
    }

    v10 = *(v8 + 3);
    if (!*v10)
    {
      goto LABEL_15;
    }

    v11 = (*(*a2 + 24))(a2, a1, v6, v55);
    v12 = v11;
    v13 = v9 == 3 ? v11 : 0;
    if (v13)
    {
      goto LABEL_15;
    }

    v14 = *(v8 + 2);
    if (!TXMPMeta<std::string>::GetProperty(a3, v14, v10, &__p, &v51))
    {
      v20 = v12 ^ 1;
      if (v9 != 1)
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_15;
      }

LABEL_36:
      (*(*a2 + 40))(a2, a1, v6);
      goto LABEL_15;
    }

    if (WORD1(v55[0]) == 7)
    {
      __assert_rtn("ExportTIFF_StandardMappings", "ReconcileTIFF.cpp", 2701, "tagInfo.type != kTIFF_UndefinedType");
    }

    v15 = *(v8 + 1);
    if (v15 != 1)
    {
      v16 = v8[1];
      if (v16 != 2)
      {
        break;
      }
    }

    if ((v51 & 0x1F00) != 0)
    {
      goto LABEL_15;
    }

    v17 = v8[1];
    if (v15 != 1 && v17 != 2)
    {
      v18 = 2517;
      v30 = "ExportSingleTIFF";
      v31 = "(mapInfo.count == 1) || (mapInfo.type == kTIFF_ASCIIType)";
      goto LABEL_129;
    }

    if (!*v10)
    {
      v18 = 2518;
      v30 = "ExportSingleTIFF";
      goto LABEL_127;
    }

    v63 = 0;
    v18 = 2585;
    if (v17 <= 2)
    {
      if (v17)
      {
        if (v17 == 1)
        {
          *v62 = 0;
          if (v54 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (sscanf(p_p, "%hu%c", v62, &v63) == 1)
          {
            TIFF_Manager::SetTag_Byte(a2, a1, v6, v62[0]);
          }
        }

        else
        {
          if (v54 >= 0)
          {
            v28 = HIBYTE(v54);
          }

          else
          {
            v28 = v53;
          }

          if (v54 >= 0)
          {
            v29 = &__p;
          }

          else
          {
            v29 = __p;
          }

          (*(*a2 + 32))(a2, a1, v6, 2, (v28 + 1), v29);
        }
      }

      else
      {
        *v59 = 0;
        if (v54 >= 0)
        {
          v36 = &__p;
        }

        else
        {
          v36 = __p;
        }

        if (sscanf(v36, "%lu%c", v59, &v63) == 1)
        {
          if (*v59 >> 16)
          {
            TIFF_Manager::SetTag_Long(a2, a1, v6, *v59);
          }

          else
          {
            TIFF_Manager::SetTag_Short(a2, a1, v6, LOWORD(v59[0]));
          }
        }
      }

      goto LABEL_15;
    }

    if (v17 <= 4)
    {
      if (v17 == 3)
      {
        *v61 = 0;
        if (v54 >= 0)
        {
          v37 = &__p;
        }

        else
        {
          v37 = __p;
        }

        if (sscanf(v37, "%lu%c", v61, &v63) == 1)
        {
          TIFF_Manager::SetTag_Short(a2, a1, v6, v61[0]);
        }
      }

      else
      {
        *v60 = 0;
        if (v54 >= 0)
        {
          v19 = &__p;
        }

        else
        {
          v19 = __p;
        }

        if (sscanf(v19, "%lu%c", v60, &v63) == 1)
        {
          TIFF_Manager::SetTag_Long(a2, a1, v6, v60[0]);
        }
      }

      goto LABEL_15;
    }

    if (v17 == 5)
    {
      *v58 = 0;
      if (v54 >= 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      if (DecodeRational(v38, &v58[1], v58))
      {
        TIFF_Manager::SetTag_Rational(a2, a1, v6, v58[1], v58[0]);
      }

      goto LABEL_15;
    }

    v30 = "ExportSingleTIFF";
    v31 = "false";
    if (v17 != 10)
    {
      goto LABEL_129;
    }

    v56 = 0;
    *v57 = 0;
    if (v54 >= 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p;
    }

    v33 = sscanf(v32, "%ld/%ld%c", v57, &v56, &v63);
    if (v33 == 1)
    {
      v34 = 1;
      v56 = 1;
    }

    else
    {
      if (v33 != 2)
      {
        goto LABEL_15;
      }

      v34 = v56;
    }

    TIFF_Manager::SetTag_SRational(a2, a1, v6, v57[0], v34);
LABEL_15:
    ++v7;
    v6 = v5[16 * v7];
    if (v6 == 0xFFFF)
    {
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p);
      }

      return;
    }
  }

  if ((v51 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  if (!*v10)
  {
    v18 = 2604;
    v30 = "ExportArrayTIFF";
LABEL_127:
    v31 = "mapInfo.name[0] != 0";
LABEL_129:
    __assert_rtn(v30, "ReconcileTIFF.cpp", v18, v31);
  }

  if (v16 != 5 && v16 != 3)
  {
    v18 = 2605;
    v30 = "ExportArrayTIFF";
    v31 = "(mapInfo.type == kTIFF_ShortType) || (mapInfo.type == kTIFF_RationalType)";
    goto LABEL_129;
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a3, v14, v10))
  {
    v18 = 2606;
    v30 = "ExportArrayTIFF";
    v31 = "xmp.DoesPropertyExist(xmpNS, xmpArray)";
    goto LABEL_129;
  }

  v21 = TXMPMeta<std::string>::CountArrayItems(a3, v14, v10);
  if (!v21)
  {
    goto LABEL_36;
  }

  v48 = v21;
  if (v16 != 5)
  {
    v46 = v21;
    memset(&v71, 0, sizeof(v71));
    LOWORD(__u) = 0;
    std::vector<unsigned short>::assign(&v71, v21, &__u);
    begin = v71.__begin_;
    if (v71.__end_ != v71.__begin_)
    {
      __u = 0;
      v69 = 0;
      v70 = 0;
      v23 = 1;
      LODWORD(v66[0]) = 0;
      do
      {
        TXMPUtils<std::string>::ComposeArrayItemPath(v14, v10, v23, &__u);
        if (v70 >= 0)
        {
          p_u = &__u;
        }

        else
        {
          p_u = __u;
        }

        TXMPMeta<std::string>::GetProperty_Int(a3, v14, p_u, v66, 0);
        v25 = v66[0];
        v26 = bswap32(LOWORD(v66[0])) >> 16;
        if (!v49)
        {
          v25 = v26;
        }

        *begin = v25;
        begin = (begin + 2);
        ++v23;
      }

      while (v23 <= v48);
      if (v71.__end_ != v71.__begin_)
      {
        (*(*a2 + 32))(a2, a1, v6, 3, v46);
        goto LABEL_54;
      }
    }

    goto LABEL_135;
  }

  v47 = v21;
  memset(&v71, 0, sizeof(v71));
  LODWORD(__u) = 0;
  std::vector<unsigned int>::assign(&v71, 2 * v21, &__u);
  v39 = v71.__begin_;
  if (v71.__end_ == v71.__begin_)
  {
    goto LABEL_135;
  }

  v69 = 0;
  v70 = 0;
  v66[0] = 0;
  v66[1] = 0;
  v67 = 0;
  __u = 0;
  v65 = 0;
  v40 = 1;
  v64 = 0;
  do
  {
    TXMPUtils<std::string>::ComposeArrayItemPath(v14, v10, v40, &__u);
    if (v70 >= 0)
    {
      v41 = &__u;
    }

    else
    {
      v41 = __u;
    }

    if (!TXMPMeta<std::string>::GetProperty(a3, v14, v41, v66, 0) || (v67 >= 0 ? (v42 = v66) : (v42 = v66[0]), !DecodeRational(v42, &v65, &v64)))
    {
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v70) < 0)
      {
        operator delete(__u);
      }

      v27 = v71.__begin_;
      if (v71.__begin_)
      {
        v71.__end_ = v71.__begin_;
LABEL_119:
        operator delete(v27);
      }

      goto LABEL_15;
    }

    v43 = v65;
    v44 = v64;
    if ((v49 & 1) == 0)
    {
      v43 = bswap32(v65);
      v65 = v43;
      v44 = bswap32(v64);
      v64 = v44;
    }

    *v39 = v43;
    v39[1] = v44;
    v39 += 2;
    ++v40;
  }

  while (v40 <= v48);
  if (v71.__end_ != v71.__begin_)
  {
    (*(*a2 + 32))(a2, a1, v6, 5, v47);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66[0]);
    }

LABEL_54:
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__u);
    }

    v27 = v71.__begin_;
    if (v71.__begin_)
    {
      v71.__end_ = v71.__begin_;
      goto LABEL_119;
    }

    goto LABEL_15;
  }

LABEL_135:
  __break(1u);
}

void sub_186147324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ExportTIFF_LocTextASCII(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (TXMPMeta<std::string>::GetLocalizedText(a1, "http://purl.org/dc/elements/1.1/", a2, "", "x-default", 0, &__p, 0))
  {
    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = v9;
    }

    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    (*(*a3 + 32))(a3, 0, a4, 2, (v6 + 1), p_p);
  }

  else
  {
    (*(*a3 + 40))(a3, 0, a4);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void sub_186147444(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186147434);
}

void ExportTIFF_EncodedString(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *__s = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  if (!TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", a2, __s, &v22))
  {
    (*(*a3 + 40))(a3, a4, a5);
    goto LABEL_29;
  }

  if (a6)
  {
    if ((v22 & 0x1000) == 0 || !TXMPMeta<std::string>::GetLocalizedText(a1, "http://ns.adobe.com/exif/1.0/", a2, "", "x-default", 0, __s, 0))
    {
      goto LABEL_29;
    }
  }

  else if ((v22 & 0x1F00) != 0)
  {
    goto LABEL_29;
  }

  v12 = 0;
  v13 = __s;
  if (v25 < 0)
  {
    v13 = *__s;
  }

  while (1)
  {
    if ((v25 & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v25);
      if (v12 >= HIBYTE(v25))
      {
        v16 = __s;
        v17 = 1;
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v14 = v24;
    if (v12 >= v24)
    {
      break;
    }

LABEL_14:
    if (v14 < v12)
    {
      __break(1u);
      return;
    }

    v15 = v13[v12++];
    if (v15 < 0)
    {
      v17 = 2;
      goto LABEL_18;
    }
  }

  v17 = 1;
LABEL_18:
  if (v25 >= 0)
  {
    v16 = __s;
  }

  else
  {
    v16 = *__s;
  }

LABEL_21:
  v18 = strlen(v16);
  if (v18 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v21 = v18;
  if (v18)
  {
    memmove(&__dst, v16, v18);
  }

  *(&__dst + v19) = 0;
  (*(*a3 + 176))(a3, a4, a5, &__dst, v17);
  if (v21 < 0)
  {
    operator delete(__dst);
  }

LABEL_29:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(*__s);
  }
}

void sub_1861476B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186147694);
}

void ExportTIFF_Date(uint64_t a1, _BYTE *a2, _BYTE *a3, TIFF_Manager *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a5 == 306)
  {
    v7 = 36880;
  }

  else
  {
    v7 = 0;
  }

  if (a5 == 306)
  {
    v8 = 37520;
  }

  else
  {
    v8 = 0;
  }

  if (a5 == 306)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  if (a5 == 36867)
  {
    v10 = 36881;
  }

  else
  {
    v10 = v7;
  }

  if (a5 == 36867)
  {
    v11 = 37521;
  }

  else
  {
    v11 = v8;
  }

  if (a5 == 36867)
  {
    v9 = 2;
  }

  v30 = 0;
  v31 = 0;
  if (a5 == 36868)
  {
    v12 = 36882;
  }

  else
  {
    v12 = v10;
  }

  if (a5 == 36868)
  {
    v13 = 37522;
  }

  else
  {
    v13 = v11;
  }

  v32 = 0;
  if (a5 == 36868)
  {
    v14 = 2;
  }

  else
  {
    v14 = v9;
  }

  if (TXMPMeta<std::string>::GetProperty(a1, a2, a3, &v30, 0))
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    if (v32 >= 0)
    {
      v15 = &v30;
    }

    else
    {
      v15 = v30;
    }

    TXMPUtils<std::string>::ConvertToDate(v15, &v27);
    *__str = 0;
    v34 = 0;
    v35 = 0;
    snprintf(__str, 0x18uLL, "%04d:%02d:%02d %02d:%02d:%02d", v27, DWORD1(v27), DWORD2(v27), HIDWORD(v27), v28, DWORD1(v28));
    v16 = HIBYTE(v32);
    if (v32 < 0)
    {
      v16 = v31;
    }

    if (v16 <= 0x11)
    {
      *(&v35 + 1) = 8224;
      if (v16 <= 0xE)
      {
        HIWORD(v34) = 8224;
        if (v16 <= 0xB)
        {
          *(&v34 + 3) = 8224;
          if (v16 <= 8)
          {
            LOWORD(v34) = 8224;
            if (v16 <= 5)
            {
              *&__str[5] = 8224;
              if (!v16)
              {
                *__str = 538976288;
              }
            }
          }
        }
      }
    }

    TIFF_Manager::SetTag_ASCII(a4, v14, a5, __str);
    if (HIDWORD(v29))
    {
      snprintf(__str, 0x18uLL, "%09d", HIDWORD(v29));
      v17 = strlen(__str);
      v18 = v17 - 1;
      if (v17 != 1)
      {
        do
        {
          if (__str[v18] != 48)
          {
            break;
          }

          __str[v18--] = 0;
        }

        while (v18);
      }

      TIFF_Manager::SetTag_ASCII(a4, 2, v13, __str);
    }

    else
    {
      (*(*a4 + 40))(a4, 2, v13);
    }

    v24 = 0;
    __s1 = 0;
    v26 = 0;
    v19 = (*(*a4 + 24))(a4, 2, 36864, &v24);
    if (WORD1(v24) == 7)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 == 1 && HIDWORD(v24) == 4;
    if (v21 && (strncmp(__s1, "0231", 4uLL) & 0x80000000) == 0)
    {
      if (BYTE10(v28) && (BYTE11(v28) == 1 || BYTE11(v28) == 255))
      {
        *&__s[3] = 0;
        *__s = 0;
        v22 = 43;
        if (BYTE11(v28) == 255)
        {
          v22 = 45;
        }

        snprintf(__s, 7uLL, "%c%02d:%02d", v22, HIDWORD(v28), v29);
        TIFF_Manager::SetTag_ASCII(a4, 2, v12, __s);
      }

      else
      {
        (*(*a4 + 40))(a4, 2, v12);
      }
    }
  }

  else
  {
    (*(*a4 + 40))(a4, v14, a5);
    (*(*a4 + 40))(a4, 2, v13);
    (*(*a4 + 40))(a4, 2, v12);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }
}

void sub_186147AE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (*(v2 - 81) < 0)
    {
      operator delete(*(v2 - 104));
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x186147AB4);
  }

  _Unwind_Resume(exception_object);
}

void ExportTIFF_GPSCoordinate(uint64_t a1, _BYTE *a2, void (**a3)(void, void), uint64_t a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    ExportTIFF_GPSCoordinate();
  }

  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  v33 = 0;
  if (!TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", a2, __p, &v33))
  {
    (*(*a3 + 5))(a3, 3, (a4 - 1));
    (*(*a3 + 5))(a3, 3, a4);
    goto LABEL_41;
  }

  if ((v33 & 0x1F00) != 0)
  {
    goto LABEL_41;
  }

  v6 = HIBYTE(v35);
  v7 = __p[0];
  if (v35 >= 0)
  {
    v7 = __p;
  }

  do
  {
    v7 = (v7 + 1);
    v8 = *(v7 - 1);
  }

  while (v8 == 32 || v8 == 9);
  if ((v8 - 58) < 0xF6u)
  {
LABEL_41:
    if (SHIBYTE(v35) < 0)
    {
      goto LABEL_42;
    }

    return;
  }

  LODWORD(v10) = 0;
  do
  {
    v10 = 10 * v10 + (v8 - 48);
    v11 = *v7;
    v7 = (v7 + 1);
    LOBYTE(v8) = v11;
  }

  while ((v11 - 48) < 0xA);
  while (v8 <= 0x1Fu)
  {
    if (v8 != 9)
    {
      goto LABEL_20;
    }

LABEL_15:
    v12 = *v7;
    v7 = (v7 + 1);
    LOBYTE(v8) = v12;
  }

  if (v8 == 32)
  {
    goto LABEL_15;
  }

  if (v8 != 44 && v8 != 59)
  {
LABEL_20:
    v7 = (v7 - 1);
  }

  while (1)
  {
    v13 = *v7;
    if (v13 != 32 && v13 != 9)
    {
      break;
    }

    v7 = (v7 + 1);
  }

  if ((v13 - 48) > 9)
  {
    v15 = 0;
    goto LABEL_45;
  }

  LODWORD(v15) = 0;
  v7 = (v7 + 1);
  do
  {
    v15 = 10 * v15 + (v13 - 48);
    v16 = *v7;
    v7 = (v7 + 1);
    v13 = v16;
  }

  while ((v16 - 48) < 0xA);
  if (v13 == 46)
  {
    v13 = *v7;
    if ((v13 - 48) <= 9)
    {
      LODWORD(v17) = 1;
      do
      {
        v18 = 10 * v15 + (v13 - 48);
        if (v17 <= 0x186A0)
        {
          v15 = v18;
        }

        else
        {
          v15 = v15;
        }

        if (v17 <= 0x186A0)
        {
          v17 = (10 * v17);
        }

        else
        {
          v17 = v17;
        }

        v19 = *(v7 + 1);
        v7 = (v7 + 1);
        LOBYTE(v13) = v19;
      }

      while ((v19 - 48) < 0xA);
      v20 = 0;
      goto LABEL_47;
    }

LABEL_45:
    v20 = 0;
    goto LABEL_46;
  }

  v7 = (v7 - 1);
  while (2)
  {
    v30 = *v7;
    if (v30 <= 0x1F)
    {
      if (v30 != 9)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }

    if (v30 == 32)
    {
LABEL_75:
      v7 = (v7 + 1);
      continue;
    }

    break;
  }

  if (v30 == 44 || v30 == 59)
  {
    goto LABEL_80;
  }

LABEL_81:
  while (1)
  {
    v13 = *v7;
    if (v13 != 9 && v13 != 32)
    {
      break;
    }

LABEL_80:
    v7 = (v7 + 1);
  }

  if ((v13 - 48) > 9)
  {
    goto LABEL_45;
  }

  LODWORD(v20) = 0;
  do
  {
    v20 = 10 * v20 + (v13 - 48);
    v31 = *(v7 + 1);
    v7 = (v7 + 1);
    LOBYTE(v13) = v31;
  }

  while ((v31 - 48) < 0xA);
LABEL_46:
  v17 = 1;
LABEL_47:
  v21 = v7 + 1;
  while (2)
  {
    if (v13 <= 0x1Fu)
    {
      if (v13 != 9)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (v13 == 32)
    {
LABEL_52:
      v22 = *v21++;
      LOBYTE(v13) = v22;
      continue;
    }

    break;
  }

  if (v13 != 44 && v13 != 59)
  {
LABEL_55:
    --v21;
  }

  while (1)
  {
    v23 = *v21;
    if (v23 != 32 && v23 != 9)
    {
      break;
    }

    ++v21;
  }

  v32 = 0;
  v25 = *v21;
  LOBYTE(v32) = v25;
  if ((v25 - 97) <= 0x19)
  {
    LOBYTE(v25) = v25 - 32;
    LOBYTE(v32) = v25;
  }

  v26 = v25 - 69;
  v27 = v26 > 0x12;
  v28 = (1 << v26) & 0x44201;
  if (!v27 && v28 != 0)
  {
    (*(*a3 + 4))(a3, 3, (a4 - 1), 2, 2, &v32);
    v36 = 0;
    v37 = 0;
    v38[0] = 0;
    (a3)[6](v10, &v36);
    (a3)[6](1, &v36 + 4);
    (a3)[6](v15, &v37);
    (a3)[6](v17, &v37 + 4);
    (a3)[6](v20, v38);
    (a3)[6](1, v38 + 4);
    (*(*a3 + 4))(a3, 3, a4, 5, 3, &v36);
    v6 = HIBYTE(v35);
  }

  if (v6 < 0)
  {
LABEL_42:
    operator delete(__p[0]);
  }
}

unint64_t TrimTrailingSpaces(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = &a1[a2 - 1];
  if ((*v2 | 0x20) != 0x20)
  {
    return a2;
  }

  if (a2 < 1)
  {
    TrimTrailingSpaces();
  }

  v3 = a2;
  while ((*v2 | 0x20) == 0x20)
  {
    --v2;
    if (--v3 < 1)
    {
      v2 = a1 - 1;
      break;
    }
  }

  v4 = v2 + 1;
  result = v4 - a1;
  if (result > a2)
  {
    TrimTrailingSpaces();
  }

  if (result < a2)
  {
    *v4 = 0;
  }

  return result;
}

uint64_t DecodeRational(const char *a1, unsigned int *a2, unsigned int *a3)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v5 = sscanf(a1, "%lu/%lu%c", &v10, &v9, &v8);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = 0;
  if (v5 == 2)
  {
    v5 = v9;
LABEL_4:
    *a2 = v10;
    *a3 = v5;
    return 1;
  }

  return v6;
}

_WORD *std::vector<unsigned short>::assign(void *a1, unint64_t a2, __int16 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v5 <= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v5;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<unsigned short>::__vallocate[abi:fe200100](a1, v8);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 1;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 1;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    v15 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = result + 4;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_186205EC0)));
      if (vuzp1_s8(vuzp1_s16(v18, *v14.i8), *v14.i8).u8[0])
      {
        *(v16 - 4) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v14), *&v14).i8[1])
      {
        *(v16 - 3) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_186205EB0)))), *&v14).i8[2])
      {
        *(v16 - 2) = v13;
        *(v16 - 1) = v13;
      }

      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_186205EA0)));
      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i32[1])
      {
        *v16 = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i8[5])
      {
        v16[1] = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_186205E90))))).i8[6])
      {
        v16[2] = v13;
        v16[3] = v13;
      }

      v12 += 8;
      v16 += 8;
    }

    while (v15 != v12);
  }

  v20 = a2 - v10;
  if (a2 <= v10)
  {
    a1[1] = &result[a2];
  }

  else
  {
    v21 = 0;
    v22 = v9 + 2 * v20;
    v23 = *a3;
    v24 = (2 * a2 - (v9 - result) - 2) >> 1;
    v25 = vdupq_n_s64(v24);
    v26 = (v24 & 0x7FFFFFFFFFFFFFF8) + 8;
    v27 = (v9 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205EC0)));
      if (vuzp1_s8(vuzp1_s16(v29, *v25.i8), *v25.i8).u8[0])
      {
        *(v27 - 4) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v25), *&v25).i8[1])
      {
        *(v27 - 3) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205EB0)))), *&v25).i8[2])
      {
        *(v27 - 2) = v23;
        *(v27 - 1) = v23;
      }

      v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205EA0)));
      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i32[1])
      {
        *v27 = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i8[5])
      {
        v27[1] = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205E90))))).i8[6])
      {
        v27[2] = v23;
        v27[3] = v23;
      }

      v21 += 8;
      v27 += 8;
    }

    while (v26 != v21);
    a1[1] = v22;
  }

  return result;
}

void std::vector<unsigned int>::assign(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v7 = value >> 1;
      if (value >> 1 <= __n)
      {
        v7 = __n;
      }

      if (value >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<unsigned int>::__vallocate[abi:fe200100](this, v8);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *__u;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = begin + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_186205EC0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_186205EB0)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = &end[v20];
    v23 = *__u;
    v24 = (4 * __n - (end - begin) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = end + 2;
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_186205EC0)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_186205EB0)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    this->__end_ = v22;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void std::vector<unsigned short>::__vallocate[abi:fe200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<char,char>>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void std::vector<unsigned int>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void TrimTrailingSpaces()
{
  __assert_rtn("TrimTrailingSpaces", "ReconcileTIFF.cpp", 247, "(lastChar == firstChar-1) || ((lastChar >= firstChar) && (*lastChar != ' ') && (*lastChar != 0))");
}

{
  __assert_rtn("TrimTrailingSpaces", "ReconcileTIFF.cpp", 250, "newLen <= origLen");
}

void *AdobeXMPCore_Int::IArrayNode_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x634172724E6F6465)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634172724E6F6465, a3, exception);
      }

      return (this + *(*this - 808));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal((this + *(*this - 816)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634172724E6F6465, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::IArrayNode_I::GetInterfacePointer(AdobeXMPCore_Int::IArrayNode_I *this, uint64_t a2, int a3)
{
  return AdobeXMPCore_Int::IArrayNode_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IArrayNode_I::GetInterfacePointerInternal((this + *(*this - 720)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IArrayNode_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IArrayNode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IArrayNode_I::getInterfacePointer(AdobeXMPCore_Int::IArrayNode_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::IArrayNode_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IArrayNode_I::getInterfacePointer((this + *(*this - 728)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IArrayNode_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::IArrayNode_v1,unsigned int,AdobeXMPCore::IArrayNode_v1::eArrayForm>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::IArrayNode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_1861492B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186149294);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::IArrayNode_I::insertNodeAtIndex(AdobeXMPCore_Int::IArrayNode_I *this, AdobeXMPCore::INode_v1 *a2, uint64_t a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 808);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v8);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IArrayNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,unsigned long long>(a4, this + v7, AdobeXMPCore::IArrayNode_v1::InsertNodeAtIndex, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IArrayNode_I.cpp", 72, &v8, a3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }
}

void sub_1861494E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IArrayNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,unsigned long long>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  return v8(v9, a7, a8);
}

uint64_t AdobeXMPCore_Int::IArrayNode_I::replaceNodeAtIndex(AdobeXMPCore_Int::IArrayNode_I *this, AdobeXMPCore::INode_v1 *a2, uint64_t a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 808);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v10);
  v8 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,unsigned long long>(a4, this + v7, AdobeXMPCore::IArrayNode_v1::ReplaceNodeAtIndex, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IArrayNode_I.cpp", 82, &v10, a3);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

void sub_1861497A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_186149930(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186149914);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

BOOL GIF_CheckFormat(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1195984416)
  {
    GIF_CheckFormat();
  }

  if ((*(*a3 + 24))(a3) < 6)
  {
    return 0;
  }

  v7 = 0;
  v6 = 0;
  (*(*a3 + 16))(a3, 0, 0);
  (**a3)(a3, &v6, 6, 0);
  return v6 == 944130375 && v7 == 24889;
}

void GIF_MetaHandler::~GIF_MetaHandler(void **this)
{
  XMPFileHandler::~XMPFileHandler(this);

  JUMPOUT(0x186602850);
}

uint64_t GIF_MetaHandler::CacheFileData(GIF_MetaHandler *this)
{
  *(this + 21) = 0;
  v2 = *(*(this + 1) + 232);
  result = GIF_MetaHandler::ParseGIFBlocks(this, v2);
  if (result)
  {
    v4 = this + 56;
    v5 = std::string::assign((this + 56), *(this + 26), 32);
    GIF_MetaHandler::SeekFile(v5, v2, *(this + 12), 0);
    if (*(this + 79) < 0)
    {
      v4 = *v4;
    }

    result = (**v2)(v2, v4, *(this + 26), 1);
    *(this + 4) = *(this + 12);
    *(this + 10) = *(this + 26);
    *(this + 21) = 1;
  }

  return result;
}

uint64_t GIF_MetaHandler::ParseGIFBlocks(uint64_t a1, uint64_t (***a2)(void, char *, uint64_t, uint64_t))
{
  v28[2] = *MEMORY[0x1E69E9840];
  ((*a2)[2])(a2, 0, 0);
  v27 = 0;
  v26 = 0;
  v4 = (**a2)(a2, &v26, 6, 0);
  if (v26 != 944130375 || v27 != 24889)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    exception[1] = "XMP_Enforce failed: (memcmp( buffer, \\x47\\x49\\x46\\x38\\x39\\x61, 6) == 0) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPFiles/source/FileHandlers/GIF_Handler.cpp at line 158";
    *(exception + 16) = 0;
  }

  GIF_MetaHandler::ReadLogicalScreenDesc(v4, a2);
  v6 = ((*a2)[2])(a2, 0, 1);
  if (v6 == ((*a2)[3])(a2))
  {
LABEL_33:
    v17 = __cxa_allocate_exception(0x18uLL);
    *v17 = 108;
    v17[1] = "No trailer exists for GIF file";
    *(v17 + 16) = 0;
  }

  v7 = 0;
  while (1)
  {
    v25 = 0;
    v8 = (**a2)(a2, &v25, 1, 0);
    if (v25 == 33)
    {
      v24 = 0;
      *v23 = 0;
      (**a2)(a2, &v24, 1, 0);
      v11 = (**a2)(a2, v23, 1, 0);
      v12 = *v23;
      if (v24 == 255 && *v23 == 11)
      {
        memset(v28, 0, 11);
        (**a2)(a2, v28, 11, 1);
        if (v28[0] == 0x6174614420504D58 && *(v28 + 3) == 0x504D586174614420)
        {
          *(a1 + 96) = ((*a2)[2])(a2, 0, 1);
          v7 = 1;
        }

        v22 = 0;
        v14 = (**a2)(a2, &v22, 1, 0);
        while (v22)
        {
          GIF_MetaHandler::SeekFile(v14, a2, v22, 1);
          v14 = (**a2)(a2, &v22, 1, 0);
        }

        if (v7)
        {
          v15 = ((*a2)[2])(a2, 0, 1) - *(a1 + 96);
          if (v15 <= 257)
          {
            v20 = __cxa_allocate_exception(0x18uLL);
            *v20 = 108;
            v20[1] = "corrupt GIF File.";
            *(v20 + 16) = 0;
          }

          *(a1 + 104) = v15 - 258;
        }
      }

      else
      {
        for (; *v23; v12 = *v23)
        {
          GIF_MetaHandler::SeekFile(v11, a2, v12, 1);
          v11 = (**a2)(a2, v23, 1, 0);
        }
      }

      goto LABEL_32;
    }

    if (v25 != 44)
    {
      break;
    }

    LOBYTE(v28[0]) = 0;
    GIF_MetaHandler::SeekFile(v8, a2, 8, 1);
    v9 = (**a2)(a2, v28, 1, 0);
    if (SLOBYTE(v28[0]) < 0)
    {
      v9 = GIF_MetaHandler::SeekFile(v9, a2, 3 << ((v28[0] & 7) + 1), 1);
    }

    GIF_MetaHandler::SeekFile(v9, a2, 1, 1);
    v23[0] = 0;
    v10 = (**a2)(a2, v23, 1, 0);
    while (v23[0])
    {
      GIF_MetaHandler::SeekFile(v10, a2, v23[0], 1);
      v10 = (**a2)(a2, v23, 1, 0);
    }

LABEL_32:
    v16 = ((*a2)[2])(a2, 0, 1);
    if (v16 == ((*a2)[3])(a2))
    {
      goto LABEL_33;
    }
  }

  if (v25 != 59)
  {
    v19 = __cxa_allocate_exception(0x18uLL);
    *v19 = 116;
    v19[1] = "Invaild GIF Block";
    *(v19 + 16) = 0;
  }

  *(a1 + 112) = ((*a2)[2])(a2, 0, 1) - 1;
  return v7 & 1;
}

uint64_t GIF_MetaHandler::SeekFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a2 + 24))(a2) < a3 || a4 == 1 && (v7 = (*(*a2 + 16))(a2, 0, 1) + a3, v7 > (*(*a2 + 24))(a2)))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Out of range seek operation";
    *(exception + 16) = 0;
  }

  v8 = *(*a2 + 16);

  return v8(a2, a3, a4);
}

void GIF_MetaHandler::ProcessXMP(GIF_MetaHandler *this)
{
  *(this + 22) = 1;
  v2 = *(this + 79);
  if (v2 < 0)
  {
    if (!*(this + 8))
    {
      return;
    }
  }

  else if (!*(this + 79))
  {
    return;
  }

  if ((*(this + 21) & 1) == 0)
  {
    GIF_MetaHandler::ProcessXMP();
  }

  if ((v2 & 0x80000000) != 0)
  {
    v3 = *(this + 7);
    v2 = *(this + 8);
  }

  else
  {
    v3 = this + 56;
  }

  TXMPMeta<std::string>::ParseFromBuffer(this + 80, v3, v2, 0);
  *(this + 21) = 1;
}

uint64_t GIF_MetaHandler::ReadLogicalScreenDesc(uint64_t a1, uint64_t (***a2)(void, char *, uint64_t, void))
{
  v5 = 0;
  GIF_MetaHandler::SeekFile(a1, a2, 4, 1);
  v3 = (**a2)(a2, &v5, 1, 0);
  result = GIF_MetaHandler::SeekFile(v3, a2, 2, 1);
  if (v5 < 0)
  {
    return GIF_MetaHandler::SeekFile(result, a2, 3 << ((v5 & 7u) + 1), 1);
  }

  return result;
}

uint64_t GIF_MetaHandler::UpdateFile(uint64_t this, int a2)
{
  if (a2)
  {
    GIF_MetaHandler::UpdateFile();
  }

  v2 = this;
  if (*(this + 23) == 1)
  {
    v3 = *(*(this + 8) + 232);
    v4 = *(this + 79);
    if (v4 < 0)
    {
      v4 = *(this + 64);
    }

    if (*(this + 104) == v4)
    {
      v5 = (this + 56);
      GIF_MetaHandler::SeekFile(this, v3, *(this + 32), 0);
      if (v2[79] < 0)
      {
        v5 = *v5;
      }

      this = (*(*v3 + 8))(v3, v5, v4);
    }

    else
    {
      v6 = (*(*v3 + 40))(v3);
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 9;
        exception[1] = "Failure creating GIF temp file";
        *(exception + 16) = 0;
      }

      (*(*v2 + 80))(v2, v6);
      this = (*(*v3 + 48))(v3);
    }

    v2[23] = 0;
  }

  return this;
}

void GIF_MetaHandler::WriteTempFile(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 23) & 1) == 0)
  {
    GIF_MetaHandler::WriteTempFile();
  }

  v4 = *(*(a1 + 8) + 232);
  (*(*v4 + 16))(v4, 0, 0);
  (*(*a2 + 32))(a2, 0);
  if (*(a1 + 96))
  {
    XIO::Copy(v4, a2);
    v5 = *(a1 + 79);
    if (v5 < 0)
    {
      v6 = *(a1 + 56);
      v5 = *(a1 + 64);
    }

    else
    {
      v6 = a1 + 56;
    }

    (*(*a2 + 8))(a2, v6, v5);
    (*(*v4 + 16))(v4, *(a1 + 104), 1);
    (*(*v4 + 24))(v4);
    (*(*v4 + 16))(v4, 0, 1);

    XIO::Copy(v4, a2);
  }

  else
  {
    if (!*(a1 + 112))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 108;
      exception[1] = "Not able to write XMP packet in GIF file";
      *(exception + 16) = 0;
    }

    XIO::Copy(v4, a2);
    v11 = 33;
    (*(*a2 + 8))(a2, &v11, 1);
    v12 = -1;
    (*(*a2 + 8))(a2, &v12, 1);
    v13 = 11;
    (*(*a2 + 8))(a2, &v13, 1);
    (*(*a2 + 8))(a2, "XMP DataXMP", 11);
    v7 = *(a1 + 79);
    if (v7 < 0)
    {
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
    }

    else
    {
      v8 = a1 + 56;
    }

    (*(*a2 + 8))(a2, v8, v7);
    v10 = 1;
    (*(*a2 + 8))(a2, &v10, 1);
    v10 = -1;
    do
    {
      (*(*a2 + 8))(a2, &v10, 1);
      --v10;
    }

    while (v10);
    (*(*a2 + 8))(a2, &v10, 1);
    (*(*a2 + 8))(a2, &v10, 1);
    (*(*v4 + 24))(v4);
    (*(*v4 + 16))(v4, 0, 1);
    XIO::Copy(v4, a2);
  }
}

void sub_18614AE28(void *a1, int a2)
{
  v4 = v3;
  MEMORY[0x186602850](v4, 0x10B3C403726CC03);
  if (a2 == 3)
  {
    v7 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v7;
    v8 = *(v7 + 1);
    if (!v8)
    {
      v8 = "";
    }

    *v2 = v8;
    *(v2 + 8) = "XMP";
  }

  else
  {
    v9 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v10 = (*(*v9 + 16))(v9);
      v11 = "";
      if (v10)
      {
        v11 = v10;
      }
    }

    else
    {
      *(v2 + 32) = 14;
      v11 = "Caught unknown exception";
    }

    *v2 = v11;
  }

  __cxa_end_catch();
}

void WXMPFiles_DecrementRefCount_1(_DWORD *a1)
{
  if (voidResult(void)::onceToken != -1)
  {
    WXMPFiles_Terminate_1_cold_1();
  }

  v2 = gVoidResult;
  v5 = (a1 + 4);
  XMP_ReadWriteLock::Acquire((a1 + 4), 1);
  *v2 = 0;
  v3 = a1[2];
  if (v3 <= 0)
  {
    __assert_rtn("WXMPFiles_DecrementRefCount_1", "WXMPFiles.cpp", 135, "thiz->clientRefs > 0");
  }

  v4 = v3 - 1;
  a1[2] = v4;
  if (!v4)
  {
    XMP_ReadWriteLock::Release((a1 + 4));
    v5 = 0;
    (*(*a1 + 8))(a1);
  }

  XMP_AutoLock::~XMP_AutoLock(&v5);
}

void sub_18614AFF0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18614AFA8);
}

void sub_18614AFFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPFiles_OpenFile_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  *(a5 + 32) = XMPFiles::OpenFile(a1, a2, a3, a4);
  XMP_AutoLock::~XMP_AutoLock(&v10);
}

void WXMPFiles_CloseFile_1(uint64_t a1, char a2, void *a3)
{
  v6 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a3 = 0;
  XMPFiles::CloseFile(a1, a2);
  XMP_AutoLock::~XMP_AutoLock(&v6);
}

void WXMPFiles_PutXMP_1(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, void *a5)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  if (a2)
  {
    TXMPMeta<std::string>::TXMPMeta(v10, a2);
    XMPFiles::PutXMP(a1, v10);
    TXMPMeta<std::string>::~TXMPMeta(v10);
  }

  else
  {
    XMPFiles::PutXMP(a1, a3, a4);
  }

  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void sub_18614B320(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    *(v10 + 32) = *v12;
    v13 = *(v12 + 1);
    if (!v13)
    {
      v13 = "";
    }

    *v10 = v13;
    *(v10 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v10 + 32) = 13;
      v15 = (*(*v14 + 16))(v14);
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }

      *v10 = v16;
      __cxa_end_catch();
    }

    else
    {
      *(v10 + 32) = 14;
      *v10 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x18614B300);
}

void sub_18614B3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPFiles_CanPutXMP_1(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  if (a2)
  {
    TXMPMeta<std::string>::TXMPMeta(v10, a2);
    *(a5 + 32) = XMPFiles::CanPutXMP(a1, v10);
    TXMPMeta<std::string>::~TXMPMeta(v10);
  }

  else
  {
    *(a5 + 32) = XMPFiles::CanPutXMP(a1, a3, a4);
  }

  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void sub_18614B4B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    *(v10 + 32) = *v12;
    v13 = *(v12 + 1);
    if (!v13)
    {
      v13 = "";
    }

    *v10 = v13;
    *(v10 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v10 + 32) = 13;
      v15 = (*(*v14 + 16))(v14);
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }

      *v10 = v16;
      __cxa_end_catch();
    }

    else
    {
      *(v10 + 32) = 14;
      *v10 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x18614B490);
}

void sub_18614B580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPFiles_Initialize_1_cold_1(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  OUTLINED_FUNCTION_1_23(v1);
  OUTLINED_FUNCTION_0_40("XMP");

  __cxa_end_catch();
}

void AdobeXMPCore_Int::ArrayNodeImpl::ArrayNodeImpl(void *a1, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3)
{
  a1[23] = &unk_1EF4F4FF0;
  *a1 = &unk_1EF4F4818;
  a1[5] = off_1EF4F4AC0;
  *(a1 + unk_1EF4F47D0) = &unk_1EF4F4B20;
  *a1 = &unk_1EF4F41C0;
  *(a1 + unk_1EF4F4180) = off_1EF4F44D8;
  *(a1 + *(*a1 - 72)) = &unk_1EF4F4538;
  a1[20] = &unk_1EF4F6B88;
  a1[7] = &unk_1EF4F6388;
  *a1 = &unk_1EF4F67F8;
  a1[5] = off_1EF4F6A18;
  a1[23] = &unk_1EF4F6B00;
  *(a1 + unk_1EF4F6160 + 56) = &unk_1EF4F6A78;
  *(a1 + *(a1[7] - 560) + 56) = &unk_1EF4F6B00;
  a1[6] = &unk_1EF4F5300;
  *a1 = &unk_1EF4F5838;
  a1[5] = off_1EF4F5AE0;
  a1[23] = &unk_1EF4F60B0;
  *(a1 + unk_1EF4F5048 + 48) = &unk_1EF4F5D90;
  *(a1 + *(a1[6] - 704) + 48) = &unk_1EF4F6028;
  *(a1 + *(a1[6] - 712) + 48) = &unk_1EF4F60B0;
  *a1 = &unk_1EF4F2FF8;
  *(a1 + unk_1EF4F2FC0) = &unk_1EF4F2FF8;
  *(a1 + *(*a1 - 64)) = off_1EF4F3320;
  *(a1 + *(*a1 - 72)) = &unk_1EF4F3E58;
  *(a1 + *(*a1 - 816)) = &unk_1EF4F3618;
  *(a1 + *(*a1 - 824)) = &unk_1EF4F3B38;
  *(a1 + *(*a1 - 832)) = &unk_1EF4F3DD0;
  *(a1 + *(*a1 - 840)) = &unk_1EF4F3E58;
  a1[20] = off_1EF4F8918;
  a1[21] = 0;
  *a1 = off_1EF4F8978;
  a1[24] = 0;
  a1[25] = 0;
  a1[22] = 0;
  a1[23] = off_1EF4F8A00;
  AdobeXMPCore_Int::NodeImpl::NodeImpl((a1 + 7), off_1EF4F2C20, a2, a3);
}

void sub_18614BC5C(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(v1, off_1EF4F2C88);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4F2C70);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::GetChildNodeType(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 896) + 8, 0);
  v2 = *(this + 2);
  if (*(this + 3) == v2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = (*(**v2 + 40))();
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  return v3;
}

void sub_18614BD38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::GetNodeAtIndex(AdobeXMPCore_Int::ArrayNodeImpl *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 - 1;
  memset(v8, 0, sizeof(v8));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v8, this + *(*this - 896) + 8, 0);
  v6 = *(this + 2);
  if (v5 < (*(this + 3) - v6) >> 4)
  {
    v7 = *(v6 + 16 * v5);
    (**&v7[*(*v7 - 56)])(&v7[*(*v7 - 56)]);
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, v7);
  }

  *a3 = 0;
  a3[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v8);
}

void sub_18614BE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::InsertNodeAtIndex(void *a1, uint64_t *a2, uint64_t a3)
{
  v12 = 0;
  v13 = a3;
  v5 = a3 - 1;
  v10 = 0;
  v11 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v10, a1 + *(*a1 - 896) + 8, 0);
  if (v5 > (a1[3] - a1[2]) >> 4)
  {
    v9[0] = 0;
    v9[1] = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v10);
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*a1 + 784))(a1, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  if (v7)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v10, a1 + *(*a1 - 896) + 8, 1);
    v8 = *a2;
    (**(*a2 + *(**a2 - 56)))(*a2 + *(**a2 - 56));
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(v9, v8);
  }
}

void sub_18614C36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a5);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

__n128 *std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::insert(void *a1, __n128 *a2, __n128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v28 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(a1, v15);
    }

    v25 = 0;
    v26 = 16 * v16;
    v27 = (16 * v16);
    std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1>>::emplace_back<std::shared_ptr<AdobeXMPCore::INode_v1>>(&v25, a3);
    v17 = v26;
    memcpy(v27, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v26;
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(&v25);
    return v17;
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a1[1] = v6 + 1;
  }

  else
  {
    std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::__move_range(a1, a2, v6, &a2[1]);
    v8 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v9 = v4->n128_u64[1];
    *v4 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    }
  }

  return v4;
}

void sub_18614C534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::RemoveNodeAtIndex(__int128 **this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  (*(*this + 82))(this);
  if (*a3)
  {
    memset(v16, 0, sizeof(v16));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v16, this + *(*this - 112) + 8, 1);
    v6 = this[3];
    v7 = &this[2][a2];
    v8 = v7 - 1;
    if (v6 == v7 - 1)
    {
      __break(1u);
    }

    else
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *>(&v17, v7, v6, (v7 - 1));
      v10 = v9;
      for (i = this[3]; i != v10; --i)
      {
        v12 = *(i - 1);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v12);
        }
      }

      this[3] = v10;
      v13 = *(*(**a3 + 280))(*a3);
      (*(v13 + 504))();
      v14 = this[3];
      while (v8 != v14)
      {
        v15 = (*(**v8 + 280))(*v8);
        (*(*v15 + 544))(v15, a2++);
        ++v8;
      }

      AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v16);
    }
  }
}

void sub_18614C72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a9);
  v11 = *(v9 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::ReplaceNodeAtIndex@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  v13 = *a2;
  v14 = v8;
  v15 = a3;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(*a1 + 784))(a1, &v13))
  {
    (*(*a1 + 656))(&v11, a1, a3);
    v9 = v11 != 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  if (!v9)
  {
    v13 = 0;
    v14 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  *a4 = 0;
  a4[1] = 0;
  (*(*a1 + 680))(a1, a3);
  return (*(*a1 + 664))(a1, a2, a3);
}

void sub_18614CAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::AppendNode(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 560))(a1);
  v5 = *(*a1 + 664);

  return v5(a1, a2, v4 + 1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::Iterator(AdobeXMPCore_Int::ArrayNodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v7, 0, sizeof(v7));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, this + *(*this - 896) + 8, 0);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = v4;
  if (v4 != v5)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
}

void sub_18614CCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void *AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::TNodeIteratorImpl(void *result, void *a2, void *a3)
{
  result[4] = &unk_1EF4F9048;
  *result = &unk_1EF4F8DA8;
  result[3] = off_1EF4F8E48;
  *(result + unk_1EF4F8D18) = &unk_1EF4F8EA8;
  result[5] = 0;
  result[6] = 0;
  *result = &unk_1EF4F8B30;
  result[3] = &unk_1EF4F8BD0;
  result[4] = &unk_1EF4F8C38;
  result[1] = *a2;
  result[2] = *a3;
  return result;
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::ChildCount(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 896) + 8, 0);
  v2 = (*(this + 3) - *(this + 2)) >> 4;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

BOOL AdobeXMPCore_Int::ArrayNodeImpl::HasContent(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 896) + 8, 0);
  v2 = *(this + 3) != *(this + 2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

void AdobeXMPCore_Int::ArrayNodeImpl::ClearContents(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v6, 0, sizeof(v6));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v6, this + *(*this - 896) + 8, 1);
  v3 = *(this + 2);
  v4 = *(this + 3);
  v2 = (this + 16);
  while (v3 != v4)
  {
    v5 = (*(**v3 + 280))(*v3);
    (*(*v5 + 504))(v5, 0);
    v3 += 2;
  }

  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](v2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v6);
}

void sub_18614D0B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

uint64_t *AdobeXMPCore_Int::ArrayNodeImpl::CloneContents@<X0>(uint64_t *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a2 || a4 || (this[3] == this[2] ? (v5 = a3 == 0) : (v5 = 1), v5))
  {
    v6 = *this;
    v7 = *(this + *(*this - 880) + 16);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v6 = *this;
    }

    v8 = *(this + *(v6 - 880) + 32);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::IArrayNode_I::CreateArrayNode();
  }

  *a5 = 0;
  a5[1] = 0;
  return this;
}

void sub_18614D358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ArrayNodeImpl::resetChangesForChildren(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 896) + 8, 0);
  v3 = *(this + 2);
  v2 = *(this + 3);
  while (v3 != v2)
  {
    v4 = *v3;
    v3 += 2;
    (*(*v4 + 216))(v4);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::CheckSuitabilityToBeUsedAsChildNode(uint64_t a1, void *a2)
{
  v4 = AdobeXMPCore_Int::CompositeNodeImpl::CheckSuitabilityToBeUsedAsChildNode(a1 + *(*a1 - 872), a2);
  if (v4)
  {
    v5 = (*(*a1 + 648))(a1);
    if (v5 != -1 && v5 != (*(**a2 + 40))())
    {
      AdobeXMPCore_Int::IError_I::CreateError();
    }
  }

  return v4;
}

void sub_18614D974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  AdobeXMPCore_Int::NodeImpl::~NodeImpl((v2 + 56), off_1EF4F2C20);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((this + 184), off_1EF4F2C88);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 160), off_1EF4F2C70);
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((this + *(*this - 24)));
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((this + *(*this - 24)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(void *a1)
{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((a1 + *(*a1 - 48)));
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((a1 + *(*a1 - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(AdobeXMPCore_Int::ArrayNodeImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 864)) = a2[1];
  *(this + *(*this - 808)) = a2[2];
  *(this + *(*this - 688)) = a2[3];
  *(this + *(*this - 544)) = a2[4];
  *(this + *(*this - 56)) = a2[5];
  *(this + *(*this - 64)) = a2[6];
  *(this + *(*this - 72)) = a2[7];
  *(this + *(*this - 816)) = a2[8];
  *(this + *(*this - 824)) = a2[9];
  *(this + *(*this - 832)) = a2[10];
  *(this + *(*this - 840)) = a2[11];
  *(this + *(*this - 872)) = a2[12];
  *(this + *(*this - 880)) = a2[13];
  *(this + *(*this - 888)) = a2[14];
  *(this + *(*this - 896)) = a2[15];
  v3 = (this + 16);
  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&v3);
}

void *std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::INode_v1> *,std::shared_ptr<AdobeXMPCore::INode_v1> *,std::shared_ptr<AdobeXMPCore::INode_v1> *>(&v11, a2, v7, v6);
}

__n128 std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1>>::emplace_back<std::shared_ptr<AdobeXMPCore::INode_v1>>(__int128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 3;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(v9, v8);
    }

    v6 = (v5 - *a1 + 1 + ((v5 - *a1 + 1) >> 63)) >> 1;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *>(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    a1[1] -= v6;
    a1[2] = v7;
  }

  result = *a2;
  *v4 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++a1[2];
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::INode_v1> *,std::shared_ptr<AdobeXMPCore::INode_v1> *,std::shared_ptr<AdobeXMPCore::INode_v1> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::~TNodeIteratorImpl(uint64_t a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + 32), off_1EF4F8CF0);

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::GetNodeType(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != *(a1 + 16))
  {
    v2 = *v1;
    v3 = (*v1 + *(**v1 - 56));
    (**v3)(v3);
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(&v5, v2);
  }

  return 0;
}

void sub_18614E7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::GetNode@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 != *(result + 16))
  {
    v4 = *v3;
    v5 = (*v3 + *(**v3 - 56));
    (**v5)(v5);

    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a2, v4);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

char *AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::Next@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 2);
  v4 = *(result + 1) + 16;
  *(result + 1) = v4;
  if (v4 != v3)
  {
    v5 = result;
    (**&result[*(*result - 176)])(&result[*(*result - 176)]);
    std::shared_ptr<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(&v6, v5);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void virtual thunk toAdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::~TNodeIteratorImpl(void *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 24) + 32), off_1EF4F8CF0);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 24) + 32), off_1EF4F8CF0);

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4F8CF0);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4F8CF0);

  JUMPOUT(0x186602850);
}

void sub_18614EAE0(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 176) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 176) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_18614ECCC(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 880) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::ArrayNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ArrayNodeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ArrayNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ArrayNodeImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 880) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ArrayNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ArrayNodeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::ConfigurableImpl::SetParameter(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = (*(*(a1 + *(*a1 - 304)) + 208))(a1 + *(*a1 - 304));
  v51 = v7;
  if (*(a1 + 48) == 1)
  {
    v8 = v7.i32[0] >> 8;
    v9 = v7.u8[2];
    v10 = v7.u8[3];
    v11 = HIDWORD(*&v7);
    v12 = *&v7 >> 40;
    v13 = HIWORD(*&v7);
    v14 = vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v7, 0xBFBFBFBFBFBFBFBFLL));
    v15 = v7.i8[0] | 0x20;
    if ((v14.i8[0] & 1) == 0)
    {
      v15 = v7.i8[0];
    }

    if (v14.i8[1])
    {
      LOBYTE(v8) = v7.i8[1] | 0x20;
    }

    if (v14.i8[2])
    {
      v9 = v7.i8[2] | 0x20;
    }

    if (v14.i8[3])
    {
      v10 = v7.i8[3] | 0x20;
    }

    if (v14.i8[4])
    {
      LOBYTE(v11) = v7.i8[4] | 0x20;
    }

    if (v14.i8[5])
    {
      LOBYTE(v12) = v7.i8[5] | 0x20;
    }

    if (v14.i8[6])
    {
      LOBYTE(v13) = v7.i8[6] | 0x20;
    }

    if (v14.i8[7])
    {
      v16 = v7.u8[7] | 0x20u;
    }

    else
    {
      v16 = HIBYTE(*&v7);
    }

    v51 = (v13 << 48) | (v16 << 56) | (v12 << 40) | (v11 << 32) | (v10 << 24) | (v9 << 16) | (v8 << 8) | v15;
  }

  v17 = (*(*(a1 + *(*a1 - 304)) + 200))(a1 + *(*a1 - 304), &v51);
  v50 = 0;
  if (v17)
  {
    AdobeXMPCore_Int::NotifyError("Key is not valid", &v51, v17, a3, a4, 0, &v50);
  }

  memset(v49, 0, sizeof(v49));
  (*(*(a1 + *(*a1 - 304)) + 256))(&v47, a1 + *(*a1 - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v49, &v47, 1);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v48);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v21 = *(v18 + 8);
    v19 = v18 + 8;
    v20 = v21;
    if (!v21)
    {
      goto LABEL_33;
    }

    v22 = v19;
    do
    {
      v23 = *(v20 + 32);
      v24 = v23 >= v51;
      v25 = v23 < v51;
      if (v24)
      {
        v22 = v20;
      }

      v20 = *(v20 + 8 * v25);
    }

    while (v20);
    if (v22 == v19 || v51 < *(v22 + 32))
    {
LABEL_33:
      AdobeXMPCore_Int::NotifyError("Key is not supported", &v51, 1, a3, a4, 0, &v50);
    }
  }

  v26 = (*(*a1 + 216))(a1, &v51, a3, a4);
  if (v26)
  {
LABEL_35:
    v29 = *(a1 + 16);
    v28 = a1 + 16;
    v27 = v29;
    if (!v29)
    {
      goto LABEL_43;
    }

    v30 = v28;
    do
    {
      v31 = *(v27 + 32);
      v24 = v31 >= v51;
      v32 = v31 < v51;
      if (v24)
      {
        v30 = v27;
      }

      v27 = *(v27 + 8 * v32);
    }

    while (v27);
    if (v30 != v28 && v51 >= *(v30 + 32))
    {
      v33 = *(v30 + 40);
      v50 = *(v30 + 48);
    }

    else
    {
LABEL_43:
      v33 = 0;
    }

    AdobeXMPCore_Int::NotifyError("Validation failed for the parameter, type and value combination", &v51, v26, a3, a4, v33, &v50);
  }

  v34 = *(a1 + 40);
  if (v34)
  {
    v37 = *(v34 + 8);
    v35 = v34 + 8;
    v36 = v37;
    if (v37)
    {
      v38 = v35;
      do
      {
        v39 = *(v36 + 32);
        v24 = v39 >= v51;
        v40 = v39 < v51;
        if (v24)
        {
          v38 = v36;
        }

        v36 = *(v36 + 8 * v40);
      }

      while (v36);
      if (v38 != v35 && v51 >= *(v38 + 32) && *(v38 + 40) != a3)
      {
        v26 = 2;
        goto LABEL_35;
      }
    }
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    v41 = *(a1 + 16);
    if (v41)
    {
      v42 = a1 + 16;
      do
      {
        v43 = *(v41 + 32);
        v24 = v43 >= v51;
        v44 = v43 < v51;
        if (v24)
        {
          v42 = v41;
        }

        v41 = *(v41 + 8 * v44);
      }

      while (v41);
      if (v42 != a1 + 16 && v51 >= *(v42 + 32) && *(v42 + 40) != a3)
      {
        v26 = 3;
        goto LABEL_35;
      }
    }
  }

  v45 = *a4;
  v47 = &v51;
  v46 = std::__tree<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 8, &v51);
  *(v46 + 10) = a3;
  v46[6] = v45;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v49);
}

void sub_18614F2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void sub_18614F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  JUMPOUT(0x18614F2D4);
}

void AdobeXMPCore_Int::NotifyError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t *a7)
{
  v12 = 0;
  if (a4 > 7)
  {
    if (a4 == 8)
    {
      LOBYTE(v12) = *a5;
      AdobeXMPCore_Int::NotifyError<char const*>(a1, a2, a3, a4, &v12, a6, a7);
    }

    if (a4 == 16)
    {
      v11 = *a5;

      AdobeXMPCore_Int::NotifyError<double>(a1, a2, a3, a4, a6, a7, v11);
    }
  }

  else
  {
    switch(a4)
    {
      case 1:
        v9 = *a5;

        AdobeXMPCore_Int::NotifyError<BOOL>(a1, a2, a3, a4, v9, a6, a7);
      case 2:
        v10 = *a5;

        AdobeXMPCore_Int::NotifyError<unsigned long long>(a1, a2, a3, a4, v10, a6, a7);
      case 4:
        v7 = *a5;

        AdobeXMPCore_Int::NotifyError<long long>(a1, a2, a3, a4, v7, a6, a7);
    }
  }

  v8 = *a5;

  AdobeXMPCore_Int::NotifyError<void *>(a1, a2, a3, a4, v8, a6, a7);
}

uint64_t AdobeXMPCore_Int::ConfigurableImpl::GetParameter(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = (*(*(a1 + *(*a1 - 304)) + 208))(a1 + *(*a1 - 304));
  v8 = v7;
  v30 = v7;
  if (*(a1 + 48) == 1)
  {
    v9 = v7.i32[0] >> 8;
    v10 = v7.u8[2];
    v11 = v7.u8[3];
    v12 = HIDWORD(*&v7);
    v13 = *&v7 >> 40;
    v14 = HIWORD(*&v7);
    v15 = vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v7, 0xBFBFBFBFBFBFBFBFLL));
    v16 = v7.i8[0] | 0x20;
    if ((v15.i8[0] & 1) == 0)
    {
      v16 = v7.i8[0];
    }

    if (v15.i8[1])
    {
      LOBYTE(v9) = v7.i8[1] | 0x20;
    }

    if (v15.i8[2])
    {
      v10 = v7.i8[2] | 0x20;
    }

    if (v15.i8[3])
    {
      v11 = v7.i8[3] | 0x20;
    }

    if (v15.i8[4])
    {
      LOBYTE(v12) = v7.i8[4] | 0x20;
    }

    if (v15.i8[5])
    {
      LOBYTE(v13) = v7.i8[5] | 0x20;
    }

    if (v15.i8[6])
    {
      LOBYTE(v14) = v7.i8[6] | 0x20;
    }

    if (v15.i8[7])
    {
      v17 = v7.u8[7] | 0x20u;
    }

    else
    {
      v17 = HIBYTE(*&v7);
    }

    v8 = (v14 << 48) | (v17 << 56) | (v13 << 40) | (v12 << 32) | (v11 << 24) | (v10 << 16) | (v9 << 8) | v16;
    v30 = v8;
  }

  memset(v29, 0, sizeof(v29));
  (*(*(a1 + *(*a1 - 304)) + 256))(&v27, a1 + *(*a1 - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v29, &v27, 0);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v28);
  }

  v20 = *(a1 + 16);
  v19 = a1 + 16;
  v18 = v20;
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v19;
  do
  {
    v22 = *(v18 + 32);
    v23 = v22 >= v8;
    v24 = v22 < v8;
    if (v23)
    {
      v21 = v18;
    }

    v18 = *(v18 + 8 * v24);
  }

  while (v18);
  if (v21 != v19 && v8 >= *(v21 + 32))
  {
    if (*(v21 + 40) != a3)
    {
      v27 = 0;
      v28 = 0;
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    *a4 = *(v21 + 48);
    v25 = 1;
  }

  else
  {
LABEL_30:
    v25 = 0;
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v29);
  return v25;
}

void sub_18614F8B0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a3);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a5);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

BOOL AdobeXMPCore_Int::ConfigurableImpl::RemoveParameter(AdobeXMPCore_Int::ConfigurableImpl *this, const unint64_t *a2)
{
  v3 = (*(*(this + *(*this - 304)) + 208))(this + *(*this - 304), a2);
  v18 = v3;
  if (*(this + 48) == 1)
  {
    v4 = v3.i32[0] >> 8;
    v5 = v3.u8[2];
    v6 = v3.u8[3];
    v7 = HIDWORD(*&v3);
    v8 = *&v3 >> 40;
    v9 = HIWORD(*&v3);
    v10 = vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v3, 0xBFBFBFBFBFBFBFBFLL));
    v11 = v3.i8[0] | 0x20;
    if ((v10.i8[0] & 1) == 0)
    {
      v11 = v3.i8[0];
    }

    if (v10.i8[1])
    {
      LOBYTE(v4) = v3.i8[1] | 0x20;
    }

    if (v10.i8[2])
    {
      v5 = v3.i8[2] | 0x20;
    }

    if (v10.i8[3])
    {
      v6 = v3.i8[3] | 0x20;
    }

    if (v10.i8[4])
    {
      LOBYTE(v7) = v3.i8[4] | 0x20;
    }

    if (v10.i8[5])
    {
      LOBYTE(v8) = v3.i8[5] | 0x20;
    }

    if (v10.i8[6])
    {
      LOBYTE(v9) = v3.i8[6] | 0x20;
    }

    if (v10.i8[7])
    {
      v12 = v3.u8[7] | 0x20u;
    }

    else
    {
      v12 = HIBYTE(*&v3);
    }

    v18 = (v9 << 48) | (v12 << 56) | (v8 << 40) | (v7 << 32) | (v6 << 24) | (v5 << 16) | (v4 << 8) | v11;
  }

  memset(v17, 0, sizeof(v17));
  (*(*(this + *(*this - 304)) + 256))(&v15, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v17, &v15, 1);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  v13 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__erase_unique<unsigned long>(this + 1, &v18) != 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v17);
  return v13;
}

void sub_18614FB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ConfigurableImpl::GetAllParameters(AdobeXMPCore_Int::ConfigurableImpl *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v20, 0, sizeof(v20));
  (*(*(this + *(*this - 304)) + 256))(&v18, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v20, &v18, 0);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  std::vector<unsigned long long>::reserve(a2, *(this + 3));
  v4 = *(this + 1);
  v5 = this + 16;
  if (v4 != this + 16)
  {
    v6 = a2[1];
    do
    {
      v7 = a2[2];
      if (v6 >= v7)
      {
        v8 = *a2;
        v9 = v6 - *a2;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a2, v13);
        }

        *(8 * v10) = *(v4 + 4);
        v6 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6 = *(v4 + 4);
        v6 += 8;
      }

      a2[1] = v6;
      v15 = *(v4 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v4 + 2);
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
    }

    while (v16 != v5);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v20);
}

void sub_18614FD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}
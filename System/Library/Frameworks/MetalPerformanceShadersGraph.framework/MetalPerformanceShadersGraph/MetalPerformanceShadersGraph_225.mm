char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParamDecl(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54[0] = a1;
  v54[1] = &v55;
  v2 = *a1;
  if (*(a1 + 8) - *a1 < 2uLL)
  {
    return 0;
  }

  switch(*v2)
  {
    case 0x7954:
      *a1 = v2 + 1;
      v6 = *(a1 + 4904);
      v7 = v6[1];
      if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v8 = malloc(0x1000uLL);
        if (!v8)
        {
          goto LABEL_62;
        }

        v7 = 0;
        *v8 = v6;
        v8[1] = 0;
        v6 = v8;
        *(a1 + 4904) = v8;
      }

      v6[1] = v7 + 32;
      v9 = v6 + v7;
      result = v9 + 16;
      v9[24] = 35;
      *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x500;
      *(v9 + 2) = &unk_1F5B409D0;
      *(v9 + 4) = v5;
      return result;
    case 0x6B54:
      *a1 = v2 + 1;
      v10 = *(a1 + 778);
      *(a1 + 778) = 1;
      if (result)
      {
        v11 = result;
        v13 = *(a1 + 4904);
        v14 = v13[1];
        if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v15 = malloc(0x1000uLL);
          if (!v15)
          {
            goto LABEL_62;
          }

          v14 = 0;
          *v15 = v13;
          v15[1] = 0;
          v13 = v15;
          *(a1 + 4904) = v15;
        }

        v13[1] = v14 + 32;
        v16 = v13 + v14;
        result = v16 + 16;
        v16[24] = 36;
        *(v16 + 25) = *(v16 + 25) & 0xF000 | 0x500;
        *(v16 + 2) = &unk_1F5B40A48;
        *(v16 + 4) = v11;
        *(v16 + 5) = v12;
      }

      *(a1 + 778) = v10;
      return result;
    case 0x6E54:
      *a1 = v2 + 1;
      if (!result)
      {
        return result;
      }

      v18 = result;
      v19 = *(a1 + 4904);
      v20 = v19[1];
      if ((v20 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v21 = malloc(0x1000uLL);
        if (!v21)
        {
          goto LABEL_62;
        }

        v20 = 0;
        *v21 = v19;
        v21[1] = 0;
        v19 = v21;
        *(a1 + 4904) = v21;
      }

      v19[1] = v20 + 32;
      v22 = v19 + v20;
      result = v22 + 16;
      v22[24] = 37;
      *(v22 + 25) = *(v22 + 25) & 0xF000 | 0x500;
      *(v22 + 2) = &unk_1F5B40AC0;
      *(v22 + 4) = v17;
      *(v22 + 5) = v18;
      return result;
    case 0x7454:
      *a1 = v2 + 1;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v26 = *(a1 + 672);
      v27 = *(a1 + 664);
      v28 = v26 - v27;
      v51 = (v26 - v27) >> 3;
      v52[0] = v53;
      v52[1] = v53;
      v52[2] = v54;
      memset(v53, 0, sizeof(v53));
      if (v26 == *(a1 + 680))
      {
        if (v27 == (a1 + 688))
        {
          v29 = malloc(2 * v28);
          if (!v29)
          {
            goto LABEL_61;
          }

          if (v26 != v27)
          {
            v30 = v29;
            memmove(v29, v27, v28);
            v29 = v30;
          }

          *(a1 + 664) = v29;
        }

        else
        {
          v29 = realloc(v27, 2 * v28);
          *(a1 + 664) = v29;
          if (!v29)
          {
LABEL_61:
            abort();
          }
        }

        v26 = &v29[v28];
        *(a1 + 680) = &v29[8 * (v28 >> 2)];
      }

      v31 = (v24 - v25) >> 3;
      *v26 = v52;
      *(a1 + 672) = v26 + 8;
      v32 = (a1 + 40);
      v33 = *a1;
      v34 = *(a1 + 8);
      do
      {
        if (v33 != v34 && *v33 == 69)
        {
          v42 = 0;
          goto LABEL_54;
        }

        if (!result)
        {
          goto LABEL_58;
        }

        v35 = *(a1 + 24);
        if (v35 == *(a1 + 32))
        {
          v36 = result;
          v37 = *(a1 + 16);
          v38 = v35 - v37;
          if (v37 == v32)
          {
            v39 = malloc(2 * (v35 - v37));
            if (!v39)
            {
              goto LABEL_61;
            }

            if (v35 != v32)
            {
              v40 = v39;
              memmove(v39, v37, v38);
              v39 = v40;
            }

            *(a1 + 16) = v39;
          }

          else
          {
            v39 = realloc(*(a1 + 16), 2 * (v35 - v37));
            *(a1 + 16) = v39;
            if (!v39)
            {
              goto LABEL_61;
            }
          }

          v35 = &v39[v38];
          *(a1 + 32) = &v39[8 * (v38 >> 2)];
          result = v36;
        }

        *v35 = result;
        *(a1 + 24) = v35 + 8;
        v33 = *a1;
        v34 = *(a1 + 8);
      }

      while (*a1 == v34 || *v33 != 81);
      *a1 = v33 + 1;
      v41 = *(a1 + 778);
      *(a1 + 778) = 1;
      *(a1 + 778) = v41;
      if (!result)
      {
LABEL_58:
        *(a1 + 672) = *(a1 + 664) + 8 * v51;
        if (v52[0] != v53)
        {
          v50 = result;
          free(v52[0]);
          return v50;
        }

        return result;
      }

      v33 = *a1;
      if (*a1 == *(a1 + 8) || (v42 = result, *v33 != 69))
      {
        result = 0;
        goto LABEL_58;
      }

LABEL_54:
      *a1 = v33 + 1;
      v45 = v44;
      v46 = *(a1 + 4904);
      v47 = v46[1];
      if ((v47 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_57:
        v46[1] = v47 + 48;
        v49 = v46 + v47;
        result = v49 + 16;
        v49[24] = 38;
        *(v49 + 25) = *(v49 + 25) & 0xF000 | 0x500;
        *(v49 + 2) = &unk_1F5B40B38;
        *(v49 + 4) = v23;
        *(v49 + 5) = v43;
        *(v49 + 6) = v45;
        *(v49 + 7) = v42;
        goto LABEL_58;
      }

      v48 = malloc(0x1000uLL);
      if (v48)
      {
        v47 = 0;
        *v48 = v46;
        v48[1] = 0;
        v46 = v48;
        *(a1 + 4904) = v48;
        goto LABEL_57;
      }

LABEL_62:
      std::terminate();
      break;
  }

  if (*v2 != 28756)
  {
    return 0;
  }

  *a1 = v2 + 1;
  if (result)
  {
  }

  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ClosureTypeName,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,std::string_view &>(uint64_t a1, __n128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  v11 = *(a1 + 4904);
  v12 = v11[1];
  if ((v12 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = malloc(0x1000uLL);
    if (!v14)
    {
      std::terminate();
    }

    v12 = 0;
    *v14 = v11;
    v14[1] = 0;
    v11 = v14;
    *(a1 + 4904) = v14;
  }

  v11[1] = v12 + 80;
  v15 = v11 + v12;
  v15[24] = 52;
  v16 = *(v15 + 25) & 0xF000 | 0x540;
  *(v15 + 2) = &unk_1F5B40C28;
  result = *a2;
  *(v15 + 6) = a3;
  v18 = *a4;
  *(v15 + 9) = a5;
  v19 = *a6;
  *(v15 + 25) = v16;
  *(v15 + 2) = result;
  *(v15 + 56) = v18;
  *(v15 + 5) = v19;
  return result;
}

char *llvm::itanium_demangle::UnnamedTypeName::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 8) > v6)
  {
    v7 = (v5 + 1000);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_22;
    }

    v5 = a2[1];
  }

  *&v5[v4] = 0x64656D616E6E7527;
  v10 = (a2[1] + 8);
  a2[1] = v10;
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 16);
    v13 = v10 + v11;
    v14 = a2[2];
    v15 = *a2;
    if (v10 + v11 > v14)
    {
      if (2 * v14 <= v13 + 992)
      {
        v16 = v13 + 992;
      }

      else
      {
        v16 = 2 * v14;
      }

      a2[2] = v16;
      v15 = realloc(v15, v16);
      *a2 = v15;
      if (!v15)
      {
        goto LABEL_22;
      }

      v10 = a2[1];
    }

    memcpy(&v15[v10], v12, v11);
    v10 = &a2[1][v11];
    a2[1] = v10;
  }

  v17 = a2[2];
  result = *a2;
  if (v10 + 1 > v17)
  {
    v19 = v10 + 993;
    v20 = 2 * v17;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    a2[2] = v21;
    result = realloc(result, v21);
    *a2 = result;
    if (result)
    {
      v10 = a2[1];
      goto LABEL_21;
    }

LABEL_22:
    abort();
  }

LABEL_21:
  result[v10] = 39;
  ++a2[1];
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParamDecl(llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,8ul> *)::{lambda(llvm::itanium_demangle::TemplateParamKind)#1}::operator()(uint64_t *a1, size_t __size)
{
  v2 = __size;
  v4 = *a1;
  v5 = *a1 + 4 * __size;
  v6 = *(v5 + 792);
  *(v5 + 792) = v6 + 1;
  v7 = *(v4 + 4904);
  v8 = v7[1];
  if ((v8 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v9 = malloc(0x1000uLL);
    if (!v9)
    {
      std::terminate();
    }

    v8 = 0;
    *v9 = v7;
    v9[1] = 0;
    v7 = v9;
    *(v4 + 4904) = v9;
  }

  v7[1] = v8 + 32;
  v10 = v7 + v8;
  result = v10 + 16;
  v10[24] = 33;
  *(v10 + 25) = *(v10 + 25) & 0xF000 | 0x540;
  *(v10 + 2) = &unk_1F5B40958;
  *(v10 + 7) = v2;
  *(v10 + 8) = v6;
  v12 = *a1[1];
  if (v12)
  {
    v13 = *(v12 + 8);
    if (v13 == *(v12 + 16))
    {
      v14 = (v10 + 16);
      v15 = *v12;
      v16 = &v13[-*v12];
      if (*v12 == v12 + 24)
      {
        v17 = malloc(2 * v16);
        if (!v17)
        {
          goto LABEL_17;
        }

        if (v13 != v15)
        {
          v18 = v17;
          memmove(v17, v15, v16);
          v17 = v18;
        }

        *v12 = v17;
      }

      else
      {
        v17 = realloc(*v12, 2 * v16);
        *v12 = v17;
        if (!v17)
        {
LABEL_17:
          abort();
        }
      }

      v13 = &v17[v16];
      *(v12 + 16) = &v17[8 * (v16 >> 2)];
      result = v14;
    }

    *v13 = result;
    *(v12 + 8) = v13 + 8;
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::TemplateParamPackDecl,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 32;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 39;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x500;
  *(v7 + 2) = &unk_1F5B40BB0;
  *(v7 + 4) = a2;
  return result;
}

_DWORD *llvm::itanium_demangle::SyntheticTemplateParamName::printLeft(_DWORD *result, char **a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = result[3];
  switch(v3)
  {
    case 2:
      v5 = a2 + 1;
      v21 = a2[1];
      v22 = a2[2];
      v23 = *a2;
      if ((v21 + 3) > v22)
      {
        v24 = result;
        v25 = (v21 + 995);
        v26 = 2 * v22;
        if (v26 <= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        a2[2] = v27;
        v28 = realloc(v23, v27);
        *a2 = v28;
        if (!v28)
        {
          goto LABEL_39;
        }

        v23 = v28;
        v21 = *v5;
        result = v24;
      }

      v29 = &v21[v23];
      v29[2] = 84;
      *v29 = 21540;
      v20 = 3;
      goto LABEL_26;
    case 1:
      v5 = a2 + 1;
      v4 = a2[1];
      v14 = a2[2];
      v7 = *a2;
      if ((v4 + 2) > v14)
      {
        v15 = result;
        v16 = (v4 + 994);
        v17 = 2 * v14;
        if (v17 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        a2[2] = v18;
        v19 = realloc(v7, v18);
        *a2 = v19;
        if (!v19)
        {
          goto LABEL_39;
        }

        v7 = v19;
        v4 = *v5;
        result = v15;
      }

      v13 = 20004;
      goto LABEL_18;
    case 0:
      v5 = a2 + 1;
      v4 = a2[1];
      v6 = a2[2];
      v7 = *a2;
      if ((v4 + 2) > v6)
      {
        v8 = result;
        v9 = (v4 + 994);
        v10 = 2 * v6;
        if (v10 <= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        a2[2] = v11;
        v12 = realloc(v7, v11);
        *a2 = v12;
        if (!v12)
        {
          goto LABEL_39;
        }

        v7 = v12;
        v4 = *v5;
        result = v8;
      }

      v13 = 21540;
LABEL_18:
      *&v4[v7] = v13;
      v20 = 2;
LABEL_26:
      *v5 += v20;
      break;
  }

  v30 = result[4];
  if (v30)
  {
    v31 = 0;
    v32 = (v30 - 1);
    do
    {
      v40[v31-- + 20] = (v32 % 0xA) | 0x30;
      v33 = v32 >= 9;
      v34 = v32 == 9;
      v32 /= 0xAuLL;
    }

    while (!v34 && v33);
    if (v31)
    {
      v35 = *a2;
      v36 = a2[1];
      v37 = &v36[-v31];
      v38 = a2[2];
      if (&v36[-v31] <= v38)
      {
LABEL_37:
        result = memcpy(&v36[v35], &v40[v31 + 21], -v31);
        a2[1] -= v31;
        return result;
      }

      if (2 * v38 <= (v37 + 992))
      {
        v39 = (v37 + 992);
      }

      else
      {
        v39 = 2 * v38;
      }

      a2[2] = v39;
      v35 = realloc(v35, v39);
      *a2 = v35;
      if (v35)
      {
        v36 = a2[1];
        goto LABEL_37;
      }

LABEL_39:
      abort();
    }
  }

  return result;
}

char *llvm::itanium_demangle::TypeTemplateParamDecl::printLeft(uint64_t a1, char **a2)
{
  result = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if ((v4 + 9) > v5)
  {
    v6 = (v4 + 1001);
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    result = realloc(result, v8);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = a2[1];
  }

  v9 = &v4[result];
  *v9 = *"typename ";
  v9[8] = 32;
  a2[1] += 9;
  return result;
}

uint64_t llvm::itanium_demangle::TypeTemplateParamDecl::printRight(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*v3 + 40);

    return v5(v3, a2);
  }

  return result;
}

void *llvm::itanium_demangle::ConstrainedTypeTemplateParamDecl::printLeft(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    (*(*v3 + 40))(v3, a2);
  }

  result = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 1 > v6)
  {
    v7 = v5 + 993;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    result = realloc(result, v9);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v5 = *(a2 + 8);
  }

  *(result + v5) = 32;
  ++*(a2 + 8);
  return result;
}

uint64_t llvm::itanium_demangle::ConstrainedTypeTemplateParamDecl::printRight(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*v3 + 40);

    return v5(v3, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::NonTypeTemplateParamDecl::printLeft(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 24) + 32))(*(a1 + 24));
  result = *(a1 + 24);
  v5 = *(result + 9);
  if ((v5 & 0xC0) == 0x80)
  {
    result = (**result)(result, a2);
    if (result)
    {
      return result;
    }
  }

  else if (v5 < 0x40)
  {
    return result;
  }

  result = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v6 + 1 > v7)
  {
    v8 = v6 + 993;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    result = realloc(result, v10);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v6 = a2[1];
  }

  *(result + v6) = 32;
  ++a2[1];
  return result;
}

uint64_t llvm::itanium_demangle::NonTypeTemplateParamDecl::printRight(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *(**(a1 + 24) + 40);

  return v5();
}

char *llvm::itanium_demangle::TemplateTemplateParamDecl::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v6 + 9 > v7)
  {
    v8 = v6 + 1001;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    *(a2 + 16) = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_28;
    }

    v6 = *(a2 + 8);
  }

  v11 = &v5[v6];
  *v11 = *"template<";
  v11[8] = 60;
  v12 = *(a2 + 8) + 9;
  *(a2 + 8) = v12;
  if (*(a1 + 32))
  {
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = v12;
      if ((v14 & 1) == 0)
      {
        v16 = *(a2 + 16);
        v17 = *a2;
        if (v12 + 2 <= v16)
        {
          v20 = v12;
        }

        else
        {
          v18 = 2 * v16;
          if (v18 <= v12 + 994)
          {
            v19 = v12 + 994;
          }

          else
          {
            v19 = v18;
          }

          *(a2 + 16) = v19;
          v17 = realloc(v17, v19);
          *a2 = v17;
          if (!v17)
          {
            goto LABEL_28;
          }

          v20 = *(a2 + 8);
        }

        *&v17[v20] = 8236;
        v15 = *(a2 + 8) + 2;
        *(a2 + 8) = v15;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 24) + 8 * v13), a2, 18, 0);
      if (v15 == *(a2 + 8))
      {
        *(a2 + 8) = v12;
        if (++v13 == *(a1 + 32))
        {
          break;
        }
      }

      else
      {
        v14 = 0;
        v12 = *(a2 + 8);
        if (++v13 == *(a1 + 32))
        {
          break;
        }
      }
    }
  }

  v21 = *(a2 + 16);
  result = *a2;
  if (v12 + 11 > v21)
  {
    v23 = 2 * v21;
    if (v23 <= v12 + 1003)
    {
      v24 = v12 + 1003;
    }

    else
    {
      v24 = v23;
    }

    *(a2 + 16) = v24;
    result = realloc(result, v24);
    *a2 = result;
    if (result)
    {
      v12 = *(a2 + 8);
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  v25 = &result[v12];
  *v25 = *"> typename ";
  *(v25 + 7) = 543518049;
  *(a2 + 8) += 11;
  *(a2 + 32) = v4;
  return result;
}

uint64_t llvm::itanium_demangle::TemplateTemplateParamDecl::printRight(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  result = (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v4 + 40))(v4, a2);
  }

  if (*(a1 + 40))
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    if ((v7 + 10) > v8)
    {
      v9 = (v7 + 1002);
      v10 = 2 * v8;
      if (v10 <= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      a2[2] = v11;
      v6 = realloc(v6, v11);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    v12 = &v7[v6];
    *v12 = *" requires ";
    *(v12 + 4) = 8307;
    a2[1] += 10;
    v13 = *(a1 + 40);
    result = (*(*v13 + 32))(v13, a2);
    if ((*(v13 + 9) & 0xC0) != 0x40)
    {
      v14 = *(*v13 + 40);

      return v14(v13, a2);
    }
  }

  return result;
}

char *llvm::itanium_demangle::TemplateParamPackDecl::printLeft(uint64_t a1, char **a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  result = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if ((v4 + 3) > v5)
  {
    v6 = (v4 + 995);
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    result = realloc(result, v8);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = a2[1];
  }

  v9 = &v4[result];
  v9[2] = 46;
  *v9 = 11822;
  a2[1] += 3;
  return result;
}

char *llvm::itanium_demangle::ClosureTypeName::printLeft(void *a1, void **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 7) > v6)
  {
    v7 = (v5 + 999);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_24;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *(v10 + 3) = 1633968749;
  *v10 = 1835101223;
  v11 = a2[1] + 7;
  a2[1] = v11;
  v12 = a1[9];
  if (v12)
  {
    v13 = a1[8];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = realloc(v16, v17);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = a2[1] + v12;
    a2[1] = v11;
  }

  v18 = a2[2];
  v19 = *a2;
  if (v11 + 1 <= v18)
  {
    goto LABEL_21;
  }

  v20 = v11 + 993;
  v21 = 2 * v18;
  if (v21 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  a2[2] = v22;
  v19 = realloc(v19, v22);
  *a2 = v19;
  if (!v19)
  {
LABEL_24:
    abort();
  }

  v11 = a2[1];
LABEL_21:
  *(v19 + v11) = 39;
  a2[1] = a2[1] + 1;

  return llvm::itanium_demangle::ClosureTypeName::printDeclarator(a1, a2);
}

char *llvm::itanium_demangle::ClosureTypeName::printDeclarator(void *a1, uint64_t a2)
{
  if (a1[3])
  {
    v4 = *(a2 + 32);
    *(a2 + 32) = 0;
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (v6 + 1 > v7)
    {
      v8 = v6 + 993;
      v9 = 2 * v7;
      if (v9 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      *(a2 + 16) = v10;
      v5 = realloc(v5, v10);
      *a2 = v5;
      if (!v5)
      {
        goto LABEL_83;
      }

      v6 = *(a2 + 8);
    }

    v5[v6] = 60;
    v11 = *(a2 + 8) + 1;
    *(a2 + 8) = v11;
    if (a1[3])
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = v11;
        if ((v13 & 1) == 0)
        {
          v15 = *(a2 + 16);
          v16 = *a2;
          if (v11 + 2 <= v15)
          {
            v19 = v11;
          }

          else
          {
            v17 = 2 * v15;
            if (v17 <= v11 + 994)
            {
              v18 = v11 + 994;
            }

            else
            {
              v18 = v17;
            }

            *(a2 + 16) = v18;
            v16 = realloc(v16, v18);
            *a2 = v16;
            if (!v16)
            {
              goto LABEL_83;
            }

            v19 = *(a2 + 8);
          }

          *&v16[v19] = 8236;
          v14 = *(a2 + 8) + 2;
          *(a2 + 8) = v14;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(a1[2] + 8 * v12), a2, 18, 0);
        if (v14 == *(a2 + 8))
        {
          *(a2 + 8) = v11;
          if (++v12 == a1[3])
          {
            break;
          }
        }

        else
        {
          v13 = 0;
          v11 = *(a2 + 8);
          if (++v12 == a1[3])
          {
            break;
          }
        }
      }
    }

    v20 = *(a2 + 16);
    v21 = *a2;
    if (v11 + 1 > v20)
    {
      v22 = 2 * v20;
      if (v22 <= v11 + 993)
      {
        v23 = v11 + 993;
      }

      else
      {
        v23 = v22;
      }

      *(a2 + 16) = v23;
      v21 = realloc(v21, v23);
      *a2 = v21;
      if (!v21)
      {
        goto LABEL_83;
      }

      v11 = *(a2 + 8);
    }

    v21[v11] = 62;
    ++*(a2 + 8);
    *(a2 + 32) = v4;
  }

  v24 = *(a2 + 8);
  if (a1[4])
  {
    v25 = *(a2 + 16);
    v26 = *a2;
    if (v24 + 10 > v25)
    {
      v27 = v24 + 1002;
      v28 = 2 * v25;
      if (v28 <= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      *(a2 + 16) = v29;
      v26 = realloc(v26, v29);
      *a2 = v26;
      if (!v26)
      {
        goto LABEL_83;
      }

      v24 = *(a2 + 8);
    }

    v30 = &v26[v24];
    *v30 = *" requires ";
    *(v30 + 4) = 8307;
    *(a2 + 8) += 10;
    v31 = a1[4];
    (*(*v31 + 32))(v31, a2);
    if ((*(v31 + 9) & 0xC0) != 0x40)
    {
      (*(*v31 + 40))(v31, a2);
    }

    v32 = *a2;
    v33 = *(a2 + 8);
    v34 = *(a2 + 16);
    if (v33 + 1 > v34)
    {
      v35 = v33 + 993;
      v36 = 2 * v34;
      if (v36 <= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      *(a2 + 16) = v37;
      v32 = realloc(v32, v37);
      *a2 = v32;
      if (!v32)
      {
        goto LABEL_83;
      }

      v33 = *(a2 + 8);
    }

    v32[v33] = 32;
    v24 = *(a2 + 8) + 1;
    *(a2 + 8) = v24;
  }

  ++*(a2 + 32);
  v38 = v24 + 1;
  v39 = *(a2 + 16);
  v40 = *a2;
  if (v24 + 1 > v39)
  {
    v41 = v24 + 993;
    if (2 * v39 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v39;
    }

    *(a2 + 16) = v42;
    v40 = realloc(v40, v42);
    *a2 = v40;
    if (!v40)
    {
      goto LABEL_83;
    }

    v24 = *(a2 + 8);
    v38 = v24 + 1;
  }

  *(a2 + 8) = v38;
  v40[v24] = 40;
  v43 = *(a2 + 8);
  if (a1[6])
  {
    v44 = 0;
    v45 = 1;
    while (1)
    {
      v46 = v43;
      if ((v45 & 1) == 0)
      {
        v47 = *(a2 + 16);
        v48 = *a2;
        if (v43 + 2 <= v47)
        {
          v51 = v43;
        }

        else
        {
          v49 = 2 * v47;
          if (v49 <= v43 + 994)
          {
            v50 = v43 + 994;
          }

          else
          {
            v50 = v49;
          }

          *(a2 + 16) = v50;
          v48 = realloc(v48, v50);
          *a2 = v48;
          if (!v48)
          {
            goto LABEL_83;
          }

          v51 = *(a2 + 8);
        }

        *&v48[v51] = 8236;
        v46 = *(a2 + 8) + 2;
        *(a2 + 8) = v46;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[5] + 8 * v44), a2, 18, 0);
      if (v46 == *(a2 + 8))
      {
        *(a2 + 8) = v43;
        if (++v44 == a1[6])
        {
          break;
        }
      }

      else
      {
        v45 = 0;
        v43 = *(a2 + 8);
        if (++v44 == a1[6])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v52 = v43 + 1;
  v53 = *(a2 + 16);
  result = *a2;
  if (v43 + 1 > v53)
  {
    v55 = 2 * v53;
    if (v55 <= v43 + 993)
    {
      v56 = v43 + 993;
    }

    else
    {
      v56 = v55;
    }

    *(a2 + 16) = v56;
    result = realloc(result, v56);
    *a2 = result;
    if (!result)
    {
      goto LABEL_83;
    }

    v43 = *(a2 + 8);
    v52 = v43 + 1;
  }

  *(a2 + 8) = v52;
  result[v43] = 41;
  if (!a1[7])
  {
    return result;
  }

  v57 = *a2;
  v58 = *(a2 + 8);
  v59 = *(a2 + 16);
  if (v58 + 10 > v59)
  {
    v60 = v58 + 1002;
    v61 = 2 * v59;
    if (v61 <= v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = v61;
    }

    *(a2 + 16) = v62;
    v57 = realloc(v57, v62);
    *a2 = v57;
    if (v57)
    {
      v58 = *(a2 + 8);
      goto LABEL_78;
    }

LABEL_83:
    abort();
  }

LABEL_78:
  v63 = &v57[v58];
  *v63 = *" requires ";
  *(v63 + 4) = 8307;
  *(a2 + 8) += 10;
  v64 = a1[7];
  result = (*(*v64 + 32))(v64, a2);
  if ((*(v64 + 9) & 0xC0) != 0x40)
  {
    v65 = *(*v64 + 40);

    return v65(v64, a2);
  }

  return result;
}

char *llvm::itanium_demangle::LambdaExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 2) > v6)
  {
    v7 = (v5 + 994);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  *&v5[v4] = 23899;
  v10 = (a2[1] + 2);
  a2[1] = v10;
  v11 = *(a1 + 16);
  if (*(v11 + 8) == 52)
  {
    llvm::itanium_demangle::ClosureTypeName::printDeclarator(v11, a2);
    v10 = a2[1];
  }

  v12 = a2[2];
  result = *a2;
  if (v10 + 5 > v12)
  {
    v14 = v10 + 997;
    v15 = 2 * v12;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    result = realloc(result, v16);
    *a2 = result;
    if (result)
    {
      v10 = a2[1];
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  v17 = &result[v10];
  v17[4] = 125;
  *v17 = 774778491;
  a2[1] += 5;
  return result;
}

char *llvm::itanium_demangle::EnumLiteral::printLeft(void *a1, char **a2)
{
  ++*(a2 + 8);
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 + 1;
  v7 = a2[2];
  if ((v5 + 1) > v7)
  {
    v8 = (v5 + 993);
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_40;
    }

    v5 = a2[1];
    v6 = v5 + 1;
  }

  a2[1] = v6;
  v5[v4] = 40;
  v10 = a1[2];
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  --*(a2 + 8);
  result = *a2;
  v12 = a2[1];
  v13 = v12 + 1;
  v14 = a2[2];
  if ((v12 + 1) > v14)
  {
    v15 = (v12 + 993);
    if (2 * v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 2 * v14;
    }

    a2[2] = v16;
    result = realloc(result, v16);
    *a2 = result;
    if (!result)
    {
      goto LABEL_40;
    }

    v12 = a2[1];
    v13 = v12 + 1;
  }

  a2[1] = v13;
  v12[result] = 41;
  v17 = a1[3];
  if (*v17 != 110)
  {
    v24 = a1[4];
    if (!v24)
    {
      return result;
    }

    v33 = *a2;
    v34 = a2[1];
    v35 = &v34[v24];
    v36 = a2[2];
    if (&v34[v24] > v36)
    {
      if (2 * v36 <= (v35 + 992))
      {
        v37 = (v35 + 992);
      }

      else
      {
        v37 = 2 * v36;
      }

      a2[2] = v37;
      v33 = realloc(v33, v37);
      *a2 = v33;
      if (!v33)
      {
        goto LABEL_40;
      }

      v34 = a2[1];
    }

    v31 = &v34[v33];
    v32 = v17;
    goto LABEL_38;
  }

  result = *a2;
  v18 = a2[1];
  v19 = v18 + 1;
  v20 = a2[2];
  if ((v18 + 1) > v20)
  {
    v21 = (v18 + 993);
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    a2[2] = v22;
    result = realloc(result, v22);
    *a2 = result;
    if (!result)
    {
      goto LABEL_40;
    }

    v18 = a2[1];
    v19 = v18 + 1;
  }

  a2[1] = v19;
  v18[result] = 45;
  v23 = a1[4];
  v24 = v23 - 1;
  if (v23 == 1)
  {
    return result;
  }

  v25 = a1[3];
  v26 = *a2;
  v27 = a2[1];
  v28 = &v27[v24];
  v29 = a2[2];
  if (&v27[v24] <= v29)
  {
    goto LABEL_29;
  }

  if (2 * v29 <= (v28 + 992))
  {
    v30 = (v28 + 992);
  }

  else
  {
    v30 = 2 * v29;
  }

  a2[2] = v30;
  v26 = realloc(v26, v30);
  *a2 = v26;
  if (!v26)
  {
LABEL_40:
    abort();
  }

  v27 = a2[1];
LABEL_29:
  v31 = &v27[v26];
  v32 = (v25 + 1);
LABEL_38:
  result = memcpy(v31, v32, v24);
  a2[1] += v24;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::FunctionParam,std::string_view &>(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 32;
  v7 = v3 + v4;
  v7[24] = 67;
  v8 = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B40D90;
  result = *a2;
  *(v7 + 25) = v8;
  *(v7 + 2) = result;
  return result;
}

char *llvm::itanium_demangle::FunctionParam::printLeft(uint64_t a1, char **a2)
{
  result = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 2) > v6)
  {
    v7 = (v5 + 994);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    result = realloc(result, v9);
    *a2 = result;
    if (!result)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  *&v5[result] = 28774;
  v10 = (a2[1] + 2);
  a2[1] = v10;
  v11 = *(a1 + 24);
  if (!v11)
  {
    return result;
  }

  v12 = *(a1 + 16);
  v13 = v10 + v11;
  v14 = a2[2];
  v15 = *a2;
  if (v10 + v11 > v14)
  {
    if (2 * v14 <= v13 + 992)
    {
      v16 = v13 + 992;
    }

    else
    {
      v16 = 2 * v14;
    }

    a2[2] = v16;
    v15 = realloc(v15, v16);
    *a2 = v15;
    if (v15)
    {
      v10 = a2[1];
      goto LABEL_14;
    }

LABEL_16:
    abort();
  }

LABEL_14:
  result = memcpy(&v15[v10], v12, v11);
  a2[1] += v11;
  return result;
}

char *llvm::itanium_demangle::FoldExpr::printLeft(uint64_t a1, uint64_t a2)
{
  v59[0] = a2;
  v59[1] = a1;
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_71;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  if (*(a1 + 48) != 1)
  {
    llvm::itanium_demangle::FoldExpr::printLeft(llvm::itanium_demangle::OutputBuffer &)const::{lambda(void)#1}::operator()(v59);
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v12 + 1 <= v13)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v30 = *(a2 + 8);
    v29 = *(a2 + 16);
    v31 = *a2;
    if (v30 + 3 <= v29)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  llvm::itanium_demangle::Node::printAsOperand(v10, a2, 3, 1);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  if (v12 + 1 > v13)
  {
LABEL_12:
    v14 = v12 + 993;
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    *(a2 + 16) = v16;
    v11 = realloc(v11, v16);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_71;
    }

    v12 = *(a2 + 8);
  }

LABEL_17:
  v11[v12] = 32;
  v17 = *(a2 + 8) + 1;
  *(a2 + 8) = v17;
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = v17 + v18;
    v21 = *(a2 + 16);
    v22 = *a2;
    if (v17 + v18 > v21)
    {
      if (2 * v21 <= v20 + 992)
      {
        v23 = v20 + 992;
      }

      else
      {
        v23 = 2 * v21;
      }

      *(a2 + 16) = v23;
      v22 = realloc(v22, v23);
      *a2 = v22;
      if (!v22)
      {
        goto LABEL_71;
      }

      v17 = *(a2 + 8);
    }

    memcpy(&v22[v17], v19, v18);
    v17 = *(a2 + 8) + v18;
    *(a2 + 8) = v17;
  }

  v24 = *(a2 + 16);
  v25 = *a2;
  if (v17 + 1 > v24)
  {
    v26 = v17 + 993;
    v27 = 2 * v24;
    if (v27 <= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    *(a2 + 16) = v28;
    v25 = realloc(v25, v28);
    *a2 = v25;
    if (!v25)
    {
      goto LABEL_71;
    }

    v17 = *(a2 + 8);
  }

  v25[v17] = 32;
  v29 = *(a2 + 16);
  v30 = *(a2 + 8) + 1;
  *(a2 + 8) = v30;
  v31 = *a2;
  if (v30 + 3 > v29)
  {
LABEL_32:
    v32 = v30 + 995;
    v33 = 2 * v29;
    if (v33 <= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    *(a2 + 16) = v34;
    v31 = realloc(v31, v34);
    *a2 = v31;
    if (!v31)
    {
      goto LABEL_71;
    }

    v30 = *(a2 + 8);
  }

LABEL_37:
  v35 = &v31[v30];
  v35[2] = 46;
  *v35 = 11822;
  v36 = *(a2 + 8);
  v37 = v36 + 3;
  *(a2 + 8) = v36 + 3;
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 24))
  {
    v38 = *(a2 + 16);
    v39 = *a2;
    if (v36 + 4 > v38)
    {
      if (2 * v38 <= v36 + 996)
      {
        v40 = v36 + 996;
      }

      else
      {
        v40 = 2 * v38;
      }

      *(a2 + 16) = v40;
      v39 = realloc(v39, v40);
      *a2 = v39;
      if (!v39)
      {
        goto LABEL_71;
      }

      v37 = *(a2 + 8);
    }

    v39[v37] = 32;
    v41 = *(a2 + 8) + 1;
    *(a2 + 8) = v41;
    v42 = *(a1 + 40);
    if (v42)
    {
      v43 = *(a1 + 32);
      v44 = v41 + v42;
      v45 = *(a2 + 16);
      v46 = *a2;
      if (v41 + v42 > v45)
      {
        if (2 * v45 <= v44 + 992)
        {
          v47 = v44 + 992;
        }

        else
        {
          v47 = 2 * v45;
        }

        *(a2 + 16) = v47;
        v46 = realloc(v46, v47);
        *a2 = v46;
        if (!v46)
        {
          goto LABEL_71;
        }

        v41 = *(a2 + 8);
      }

      memcpy(&v46[v41], v43, v42);
      v41 = *(a2 + 8) + v42;
      *(a2 + 8) = v41;
    }

    v48 = *(a2 + 16);
    v49 = *a2;
    if (v41 + 1 > v48)
    {
      v50 = v41 + 993;
      v51 = 2 * v48;
      if (v51 <= v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = v51;
      }

      *(a2 + 16) = v52;
      v49 = realloc(v49, v52);
      *a2 = v49;
      if (!v49)
      {
        goto LABEL_71;
      }

      v41 = *(a2 + 8);
    }

    v49[v41] = 32;
    ++*(a2 + 8);
    if (*(a1 + 48) == 1)
    {
      llvm::itanium_demangle::FoldExpr::printLeft(llvm::itanium_demangle::OutputBuffer &)const::{lambda(void)#1}::operator()(v59);
    }

    else
    {
      llvm::itanium_demangle::Node::printAsOperand(*(a1 + 24), a2, 3, 1);
    }
  }

  --*(a2 + 32);
  result = *a2;
  v54 = *(a2 + 8);
  v55 = v54 + 1;
  v56 = *(a2 + 16);
  if (v54 + 1 > v56)
  {
    v57 = v54 + 993;
    if (2 * v56 <= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = 2 * v56;
    }

    *(a2 + 16) = v58;
    result = realloc(result, v58);
    *a2 = result;
    if (result)
    {
      v54 = *(a2 + 8);
      v55 = v54 + 1;
      goto LABEL_68;
    }

LABEL_71:
    abort();
  }

LABEL_68:
  *(a2 + 8) = v55;
  result[v54] = 41;
  return result;
}

void *llvm::itanium_demangle::FoldExpr::printLeft(llvm::itanium_demangle::OutputBuffer &)const::{lambda(void)#1}::operator()(char ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  *(v3 + 8) = *(*a1 + 8) + 1;
  v4 = *v3;
  v5 = v3[1];
  v6 = v5 + 1;
  v7 = v3[2];
  if ((v5 + 1) > v7)
  {
    v8 = (v5 + 993);
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    v3[2] = v9;
    v4 = realloc(v4, v9);
    *v3 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = v3[1];
    v6 = v5 + 1;
  }

  v3[1] = v6;
  v5[v4] = 40;
  v10 = v2[2];
  v20 = 42;
  v21 = 1344;
  v19 = &unk_1F5B40E80;
  v22 = v10;
  v11 = *a1;
  llvm::itanium_demangle::ParameterPackExpansion::printLeft(&v19, *a1);
  if ((v21 & 0xC0) != 0x40)
  {
    (v19)[5](&v19, v11);
  }

  v12 = *a1;
  --*(v12 + 8);
  result = *v12;
  v14 = v12[1];
  v15 = v14 + 1;
  v16 = v12[2];
  if ((v14 + 1) > v16)
  {
    v17 = (v14 + 993);
    if (2 * v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 2 * v16;
    }

    v12[2] = v18;
    result = realloc(result, v18);
    *v12 = result;
    if (result)
    {
      v14 = v12[1];
      v15 = v14 + 1;
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  v12[1] = v15;
  v14[result] = 41;
  return result;
}

uint64_t llvm::itanium_demangle::ParameterPackExpansion::printLeft(uint64_t a1, char **a2)
{
  v4 = a2[3];
  a2[3] = -1;
  v5 = a2[1];
  v6 = *(a1 + 16);
  result = (*(*v6 + 32))(v6);
  if ((*(v6 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v6 + 40))(v6, a2);
  }

  v8 = *(a2 + 7);
  if (v8 == -1)
  {
    result = *a2;
    v17 = a2[1];
    v18 = a2[2];
    if ((v17 + 3) > v18)
    {
      v19 = (v17 + 995);
      v20 = 2 * v18;
      if (v20 <= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      a2[2] = v21;
      result = realloc(result, v21);
      *a2 = result;
      if (!result)
      {
LABEL_25:
        abort();
      }

      v17 = a2[1];
    }

    v22 = &v17[result];
    v22[2] = 46;
    *v22 = 11822;
    v5 = (a2[1] + 3);
    goto LABEL_23;
  }

  if (!v8)
  {
LABEL_23:
    a2[1] = v5;
    goto LABEL_24;
  }

  if (v8 >= 2)
  {
    for (i = 1; i != v8; ++i)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[2];
      if ((v11 + 2) > v12)
      {
        v13 = (v11 + 994);
        v14 = 2 * v12;
        if (v14 <= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        a2[2] = v15;
        v10 = realloc(v10, v15);
        *a2 = v10;
        if (!v10)
        {
          goto LABEL_25;
        }

        v11 = a2[1];
      }

      *&v11[v10] = 8236;
      a2[1] += 2;
      *(a2 + 6) = i;
      v16 = *(a1 + 16);
      result = (*(*v16 + 32))(v16, a2);
      if ((*(v16 + 9) & 0xC0) != 0x40)
      {
        result = (*(*v16 + 40))(v16, a2);
      }
    }
  }

LABEL_24:
  a2[3] = v4;
  return result;
}

uint64_t llvm::itanium_demangle::BracedExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 + 1;
  v8 = a2[2];
  if (v4 == 1)
  {
    if (v7 > v8)
    {
      v9 = (v6 + 993);
      if (2 * v8 <= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 2 * v8;
      }

      a2[2] = v10;
      v5 = realloc(v5, v10);
      *a2 = v5;
      if (!v5)
      {
        goto LABEL_37;
      }

      v6 = a2[1];
      v7 = v6 + 1;
    }

    a2[1] = v7;
    v6[v5] = 91;
    v11 = *(a1 + 16);
    (*(*v11 + 32))(v11, a2);
    if ((*(v11 + 9) & 0xC0) != 0x40)
    {
      (*(*v11 + 40))(v11, a2);
    }

    v12 = *a2;
    v13 = a2[1];
    v14 = v13 + 1;
    v15 = a2[2];
    if ((v13 + 1) > v15)
    {
      v16 = (v13 + 993);
      if (2 * v15 <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v12 = realloc(v12, v17);
      *a2 = v12;
      if (!v12)
      {
        goto LABEL_37;
      }

      v13 = a2[1];
      v14 = v13 + 1;
    }

    a2[1] = v14;
    v13[v12] = 93;
  }

  else
  {
    if (v7 > v8)
    {
      v18 = (v6 + 993);
      if (2 * v8 <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = 2 * v8;
      }

      a2[2] = v19;
      v5 = realloc(v5, v19);
      *a2 = v5;
      if (!v5)
      {
        goto LABEL_37;
      }

      v6 = a2[1];
      v7 = v6 + 1;
    }

    a2[1] = v7;
    v6[v5] = 46;
    v20 = *(a1 + 16);
    (*(*v20 + 32))(v20, a2);
    if ((*(v20 + 9) & 0xC0) != 0x40)
    {
      (*(*v20 + 40))(v20, a2);
    }
  }

  v21 = *(a1 + 24);
  if (*(v21 + 8) - 81 < 2)
  {
    goto LABEL_33;
  }

  v22 = *a2;
  v23 = a2[1];
  v24 = a2[2];
  if ((v23 + 3) > v24)
  {
    v25 = (v23 + 995);
    v26 = 2 * v24;
    if (v26 <= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    a2[2] = v27;
    v22 = realloc(v22, v27);
    *a2 = v22;
    if (v22)
    {
      v23 = a2[1];
      goto LABEL_32;
    }

LABEL_37:
    abort();
  }

LABEL_32:
  v28 = &v23[v22];
  v28[2] = 32;
  *v28 = 15648;
  a2[1] += 3;
  v21 = *(a1 + 24);
LABEL_33:
  result = (*(*v21 + 32))(v21, a2);
  if ((*(v21 + 9) & 0xC0) != 0x40)
  {
    v30 = *(*v21 + 40);

    return v30(v21, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::BracedRangeExpr::printLeft(void *a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 + 1;
  v7 = a2[2];
  if ((v5 + 1) > v7)
  {
    v8 = (v5 + 993);
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    v5 = a2[1];
    v6 = v5 + 1;
  }

  a2[1] = v6;
  v5[v4] = 91;
  v10 = a1[2];
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 5) > v13)
  {
    v14 = (v12 + 997);
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    v11 = realloc(v11, v16);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_35;
    }

    v12 = a2[1];
  }

  v17 = &v12[v11];
  v17[4] = 32;
  *v17 = 774778400;
  a2[1] += 5;
  v18 = a1[3];
  (*(*v18 + 32))(v18, a2);
  if ((*(v18 + 9) & 0xC0) != 0x40)
  {
    (*(*v18 + 40))(v18, a2);
  }

  v19 = *a2;
  v20 = a2[1];
  v21 = v20 + 1;
  v22 = a2[2];
  if ((v20 + 1) > v22)
  {
    v23 = (v20 + 993);
    if (2 * v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = 2 * v22;
    }

    a2[2] = v24;
    v19 = realloc(v19, v24);
    *a2 = v19;
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = a2[1];
    v21 = v20 + 1;
  }

  a2[1] = v21;
  v20[v19] = 93;
  v25 = a1[4];
  if (*(v25 + 8) - 81 < 2)
  {
    goto LABEL_31;
  }

  v26 = *a2;
  v27 = a2[1];
  v28 = a2[2];
  if ((v27 + 3) > v28)
  {
    v29 = (v27 + 995);
    v30 = 2 * v28;
    if (v30 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    a2[2] = v31;
    v26 = realloc(v26, v31);
    *a2 = v26;
    if (v26)
    {
      v27 = a2[1];
      goto LABEL_30;
    }

LABEL_35:
    abort();
  }

LABEL_30:
  v32 = &v27[v26];
  v32[2] = 32;
  *v32 = 15648;
  a2[1] += 3;
  v25 = a1[4];
LABEL_31:
  result = (*(*v25 + 32))(v25, a2);
  if ((*(v25 + 9) & 0xC0) != 0x40)
  {
    v34 = *(*v25 + 40);

    return v34(v25, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::InitListExpr::printLeft(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4)
  {
    result = (*(*v4 + 48))(v4, a2, a1 + 3);
    if (result)
    {
      return result;
    }

    v6 = a1[2];
    (*(*v6 + 32))(v6, a2);
    if ((*(v6 + 9) & 0xC0) != 0x40)
    {
      (*(*v6 + 40))(v6, a2);
    }
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = v8 + 1;
  v10 = a2[2];
  if (v8 + 1 > v10)
  {
    v11 = v8 + 993;
    if (2 * v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2 * v10;
    }

    a2[2] = v12;
    v7 = realloc(v7, v12);
    *a2 = v7;
    if (!v7)
    {
      goto LABEL_33;
    }

    v8 = a2[1];
    v9 = v8 + 1;
  }

  a2[1] = v9;
  v7[v8] = 123;
  v13 = a2[1];
  if (a1[4])
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = v13;
      if ((v15 & 1) == 0)
      {
        v17 = a2[2];
        v18 = *a2;
        if (v13 + 2 <= v17)
        {
          v21 = v13;
        }

        else
        {
          v19 = 2 * v17;
          if (v19 <= v13 + 994)
          {
            v20 = v13 + 994;
          }

          else
          {
            v20 = v19;
          }

          a2[2] = v20;
          v18 = realloc(v18, v20);
          *a2 = v18;
          if (!v18)
          {
            goto LABEL_33;
          }

          v21 = a2[1];
        }

        *&v18[v21] = 8236;
        v16 = a2[1] + 2;
        a2[1] = v16;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[3] + 8 * v14), a2, 18, 0);
      if (v16 == a2[1])
      {
        a2[1] = v13;
        if (++v14 == a1[4])
        {
          break;
        }
      }

      else
      {
        v15 = 0;
        v13 = a2[1];
        if (++v14 == a1[4])
        {
          break;
        }
      }
    }
  }

  v22 = v13 + 1;
  v23 = a2[2];
  result = *a2;
  if (v13 + 1 <= v23)
  {
    goto LABEL_31;
  }

  v24 = 2 * v23;
  if (v24 <= v13 + 993)
  {
    v25 = v13 + 993;
  }

  else
  {
    v25 = v24;
  }

  a2[2] = v25;
  result = realloc(result, v25);
  *a2 = result;
  if (!result)
  {
LABEL_33:
    abort();
  }

  v13 = a2[1];
  v22 = v13 + 1;
LABEL_31:
  a2[1] = v22;
  *(result + v13) = 125;
  return result;
}

void *llvm::itanium_demangle::PointerToMemberConversionExpr::printLeft(uint64_t a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_30;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  *(v4 + v5) = 40;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  --*(a2 + 32);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = v12 + 1;
  v14 = *(a2 + 16);
  if (v12 + 1 > v14)
  {
    v15 = v12 + 993;
    if (2 * v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 2 * v14;
    }

    *(a2 + 16) = v16;
    v11 = realloc(v11, v16);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_30;
    }

    v12 = *(a2 + 8);
    v13 = v12 + 1;
  }

  *(a2 + 8) = v13;
  *(v11 + v12) = 41;
  ++*(a2 + 32);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = v18 + 1;
  v20 = *(a2 + 16);
  if (v18 + 1 > v20)
  {
    v21 = v18 + 993;
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    *(a2 + 16) = v22;
    v17 = realloc(v17, v22);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_30;
    }

    v18 = *(a2 + 8);
    v19 = v18 + 1;
  }

  *(a2 + 8) = v19;
  *(v17 + v18) = 40;
  v23 = *(a1 + 24);
  (*(*v23 + 32))(v23, a2);
  if ((*(v23 + 9) & 0xC0) != 0x40)
  {
    (*(*v23 + 40))(v23, a2);
  }

  --*(a2 + 32);
  result = *a2;
  v25 = *(a2 + 8);
  v26 = v25 + 1;
  v27 = *(a2 + 16);
  if (v25 + 1 > v27)
  {
    v28 = v25 + 993;
    if (2 * v27 <= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = 2 * v27;
    }

    *(a2 + 16) = v29;
    result = realloc(result, v29);
    *a2 = result;
    if (result)
    {
      v25 = *(a2 + 8);
      v26 = v25 + 1;
      goto LABEL_29;
    }

LABEL_30:
    abort();
  }

LABEL_29:
  *(a2 + 8) = v26;
  *(result + v25) = 41;
  return result;
}

char *llvm::itanium_demangle::ExprRequirement::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 1) > v6)
  {
    v7 = (v5 + 993);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_50;
    }

    v5 = a2[1];
  }

  v5[v4] = 32;
  v10 = a2[1];
  v11 = v10 + 1;
  a2[1] = v10 + 1;
  if ((*(a1 + 24) & 1) != 0 || *(a1 + 32))
  {
    ++*(a2 + 8);
    v12 = v10 + 2;
    v13 = a2[2];
    v14 = *a2;
    if ((v10 + 2) > v13)
    {
      if (2 * v13 <= (v10 + 994))
      {
        v15 = (v10 + 994);
      }

      else
      {
        v15 = 2 * v13;
      }

      a2[2] = v15;
      v14 = realloc(v14, v15);
      *a2 = v14;
      if (!v14)
      {
        goto LABEL_50;
      }

      v11 = a2[1];
      v12 = v11 + 1;
    }

    a2[1] = v12;
    v11[v14] = 123;
  }

  v16 = *(a1 + 16);
  (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    (*(*v16 + 40))(v16, a2);
  }

  if ((*(a1 + 24) & 1) != 0 || *(a1 + 32))
  {
    --*(a2 + 8);
    v17 = *a2;
    v18 = a2[1];
    v19 = v18 + 1;
    v20 = a2[2];
    if ((v18 + 1) > v20)
    {
      v21 = (v18 + 993);
      if (2 * v20 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = 2 * v20;
      }

      a2[2] = v22;
      v17 = realloc(v17, v22);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_50;
      }

      v18 = a2[1];
      v19 = v18 + 1;
    }

    a2[1] = v19;
    v18[v17] = 125;
    if (*(a1 + 24))
    {
      v23 = *a2;
      v24 = a2[1];
      v25 = a2[2];
      if ((v24 + 9) > v25)
      {
        v26 = (v24 + 1001);
        v27 = 2 * v25;
        if (v27 <= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        a2[2] = v28;
        v23 = realloc(v23, v28);
        *a2 = v23;
        if (!v23)
        {
          goto LABEL_50;
        }

        v24 = a2[1];
      }

      v29 = &v24[v23];
      *v29 = *" noexcept";
      v29[8] = 116;
      a2[1] += 9;
    }
  }

  if (*(a1 + 32))
  {
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    if ((v31 + 4) > v32)
    {
      v33 = (v31 + 996);
      v34 = 2 * v32;
      if (v34 <= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v34;
      }

      a2[2] = v35;
      v30 = realloc(v30, v35);
      *a2 = v30;
      if (!v30)
      {
        goto LABEL_50;
      }

      v31 = a2[1];
    }

    *&v31[v30] = 540945696;
    a2[1] += 4;
    v36 = *(a1 + 32);
    (*(*v36 + 32))(v36, a2);
    if ((*(v36 + 9) & 0xC0) != 0x40)
    {
      (*(*v36 + 40))(v36, a2);
    }
  }

  result = *a2;
  v38 = a2[1];
  v39 = v38 + 1;
  v40 = a2[2];
  if ((v38 + 1) > v40)
  {
    v41 = (v38 + 993);
    if (2 * v40 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v40;
    }

    a2[2] = v42;
    result = realloc(result, v42);
    *a2 = result;
    if (result)
    {
      v38 = a2[1];
      v39 = v38 + 1;
      goto LABEL_49;
    }

LABEL_50:
    abort();
  }

LABEL_49:
  a2[1] = v39;
  v38[result] = 59;
  return result;
}

char *llvm::itanium_demangle::TypeRequirement::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 10) > v6)
  {
    v7 = (v5 + 1002);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *" typename ";
  *(v10 + 4) = 8293;
  a2[1] += 10;
  v11 = *(a1 + 16);
  (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    (*(*v11 + 40))(v11, a2);
  }

  result = *a2;
  v13 = a2[1];
  v14 = v13 + 1;
  v15 = a2[2];
  if ((v13 + 1) > v15)
  {
    v16 = (v13 + 993);
    if (2 * v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = 2 * v15;
    }

    a2[2] = v17;
    result = realloc(result, v17);
    *a2 = result;
    if (result)
    {
      v13 = a2[1];
      v14 = v13 + 1;
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  a2[1] = v14;
  v13[result] = 59;
  return result;
}

char *llvm::itanium_demangle::NestedRequirement::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 10) > v6)
  {
    v7 = (v5 + 1002);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *" requires ";
  *(v10 + 4) = 8307;
  a2[1] += 10;
  v11 = *(a1 + 16);
  (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    (*(*v11 + 40))(v11, a2);
  }

  result = *a2;
  v13 = a2[1];
  v14 = v13 + 1;
  v15 = a2[2];
  if ((v13 + 1) > v15)
  {
    v16 = (v13 + 993);
    if (2 * v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = 2 * v15;
    }

    a2[2] = v17;
    result = realloc(result, v17);
    *a2 = result;
    if (result)
    {
      v13 = a2[1];
      v14 = v13 + 1;
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  a2[1] = v14;
  v13[result] = 59;
  return result;
}

char *llvm::itanium_demangle::RequiresExpr::printLeft(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 8 > v6)
  {
    v7 = v5 + 1000;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_71;
    }

    v5 = *(a2 + 8);
  }

  *&v4[v5] = 0x7365726975716572;
  v10 = *(a2 + 8);
  v11 = v10 + 8;
  *(a2 + 8) = v10 + 8;
  if (a1[3])
  {
    v12 = v10 + 9;
    v13 = *(a2 + 16);
    v14 = *a2;
    if (v10 + 9 > v13)
    {
      if (2 * v13 <= v10 + 1001)
      {
        v15 = v10 + 1001;
      }

      else
      {
        v15 = 2 * v13;
      }

      *(a2 + 16) = v15;
      v14 = realloc(v14, v15);
      *a2 = v14;
      if (!v14)
      {
        goto LABEL_71;
      }

      v11 = *(a2 + 8);
      v12 = v11 + 1;
    }

    *(a2 + 8) = v12;
    v14[v11] = 32;
    ++*(a2 + 32);
    v16 = *a2;
    v17 = *(a2 + 8);
    v18 = v17 + 1;
    v19 = *(a2 + 16);
    if (v17 + 1 > v19)
    {
      v20 = v17 + 993;
      if (2 * v19 <= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = 2 * v19;
      }

      *(a2 + 16) = v21;
      v16 = realloc(v16, v21);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_71;
      }

      v17 = *(a2 + 8);
      v18 = v17 + 1;
    }

    *(a2 + 8) = v18;
    v16[v17] = 40;
    v22 = *(a2 + 8);
    if (a1[3])
    {
      v23 = 0;
      v24 = 1;
      while (1)
      {
        v25 = v22;
        if ((v24 & 1) == 0)
        {
          v26 = *(a2 + 16);
          v27 = *a2;
          if (v22 + 2 <= v26)
          {
            v30 = v22;
          }

          else
          {
            v28 = 2 * v26;
            if (v28 <= v22 + 994)
            {
              v29 = v22 + 994;
            }

            else
            {
              v29 = v28;
            }

            *(a2 + 16) = v29;
            v27 = realloc(v27, v29);
            *a2 = v27;
            if (!v27)
            {
              goto LABEL_71;
            }

            v30 = *(a2 + 8);
          }

          *&v27[v30] = 8236;
          v25 = *(a2 + 8) + 2;
          *(a2 + 8) = v25;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(a1[2] + 8 * v23), a2, 18, 0);
        if (v25 == *(a2 + 8))
        {
          *(a2 + 8) = v22;
          if (++v23 == a1[3])
          {
            break;
          }
        }

        else
        {
          v24 = 0;
          v22 = *(a2 + 8);
          if (++v23 == a1[3])
          {
            break;
          }
        }
      }
    }

    --*(a2 + 32);
    v31 = v22 + 1;
    v32 = *(a2 + 16);
    v33 = *a2;
    if (v22 + 1 > v32)
    {
      v34 = 2 * v32;
      if (v34 <= v22 + 993)
      {
        v35 = v22 + 993;
      }

      else
      {
        v35 = v34;
      }

      *(a2 + 16) = v35;
      v33 = realloc(v33, v35);
      *a2 = v33;
      if (!v33)
      {
        goto LABEL_71;
      }

      v22 = *(a2 + 8);
      v31 = v22 + 1;
    }

    *(a2 + 8) = v31;
    v33[v22] = 41;
    v11 = *(a2 + 8);
  }

  v36 = v11 + 1;
  v37 = *(a2 + 16);
  v38 = *a2;
  if (v11 + 1 > v37)
  {
    v39 = v11 + 993;
    if (2 * v37 <= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = 2 * v37;
    }

    *(a2 + 16) = v40;
    v38 = realloc(v38, v40);
    *a2 = v38;
    if (!v38)
    {
      goto LABEL_71;
    }

    v11 = *(a2 + 8);
    v36 = v11 + 1;
  }

  *(a2 + 8) = v36;
  v38[v11] = 32;
  ++*(a2 + 32);
  v41 = *a2;
  v42 = *(a2 + 8);
  v43 = v42 + 1;
  v44 = *(a2 + 16);
  if (v42 + 1 > v44)
  {
    v45 = v42 + 993;
    if (2 * v44 <= v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = 2 * v44;
    }

    *(a2 + 16) = v46;
    v41 = realloc(v41, v46);
    *a2 = v41;
    if (!v41)
    {
      goto LABEL_71;
    }

    v42 = *(a2 + 8);
    v43 = v42 + 1;
  }

  *(a2 + 8) = v43;
  v41[v42] = 123;
  v47 = a1[5];
  if (v47)
  {
    v48 = a1[4];
    v49 = 8 * v47;
    do
    {
      v50 = *v48;
      (*(**v48 + 32))(*v48, a2);
      if ((*(v50 + 9) & 0xC0) != 0x40)
      {
        (*(*v50 + 40))(v50, a2);
      }

      ++v48;
      v49 -= 8;
    }

    while (v49);
  }

  v51 = *a2;
  v52 = *(a2 + 8);
  v53 = v52 + 1;
  v54 = *(a2 + 16);
  if (v52 + 1 > v54)
  {
    v55 = v52 + 993;
    if (2 * v54 <= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = 2 * v54;
    }

    *(a2 + 16) = v56;
    v51 = realloc(v51, v56);
    *a2 = v51;
    if (!v51)
    {
      goto LABEL_71;
    }

    v52 = *(a2 + 8);
    v53 = v52 + 1;
  }

  *(a2 + 8) = v53;
  v51[v52] = 32;
  --*(a2 + 32);
  result = *a2;
  v58 = *(a2 + 8);
  v59 = v58 + 1;
  v60 = *(a2 + 16);
  if (v58 + 1 > v60)
  {
    v61 = v58 + 993;
    if (2 * v60 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = 2 * v60;
    }

    *(a2 + 16) = v62;
    result = realloc(result, v62);
    *a2 = result;
    if (result)
    {
      v58 = *(a2 + 8);
      v59 = v58 + 1;
      goto LABEL_70;
    }

LABEL_71:
    abort();
  }

LABEL_70:
  *(a2 + 8) = v59;
  result[v58] = 125;
  return result;
}

char *llvm::itanium_demangle::SubobjectExpr::printLeft(void *a1, char **a2)
{
  v4 = a1[3];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_56;
    }

    v6 = a2[1];
  }

  *&v6[v5] = 15406;
  a2[1] += 2;
  v11 = a1[2];
  (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    (*(*v11 + 40))(v11, a2);
  }

  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if ((v13 + 11) > v14)
  {
    v15 = (v13 + 1003);
    v16 = 2 * v14;
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    a2[2] = v17;
    v12 = realloc(v12, v17);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_56;
    }

    v13 = a2[1];
  }

  v18 = &v13[v12];
  *v18 = *" at offset ";
  *(v18 + 7) = 544499059;
  v19 = a2[1];
  v20 = v19 + 11;
  a2[1] = v19 + 11;
  v21 = a1[5];
  if (!v21)
  {
    v36 = a2[2];
    v37 = *a2;
    if ((v19 + 12) > v36)
    {
      if (2 * v36 <= (v19 + 1004))
      {
        v38 = (v19 + 1004);
      }

      else
      {
        v38 = 2 * v36;
      }

      a2[2] = v38;
      v37 = realloc(v37, v38);
      *a2 = v37;
      if (!v37)
      {
        goto LABEL_56;
      }

      v20 = a2[1];
    }

    v20[v37] = 48;
    v21 = 1;
    goto LABEL_48;
  }

  v22 = a1[4];
  v23 = a2[2];
  v24 = *a2;
  if (*v22 != 110)
  {
    v39 = &v20[v21];
    if (&v20[v21] > v23)
    {
      if (2 * v23 <= (v39 + 992))
      {
        v40 = (v39 + 992);
      }

      else
      {
        v40 = 2 * v23;
      }

      a2[2] = v40;
      v24 = realloc(v24, v40);
      *a2 = v24;
      if (!v24)
      {
        goto LABEL_56;
      }

      v20 = a2[1];
    }

    v34 = &v20[v24];
    v35 = v22;
    goto LABEL_47;
  }

  if ((v19 + 12) > v23)
  {
    if (2 * v23 <= (v19 + 1004))
    {
      v25 = (v19 + 1004);
    }

    else
    {
      v25 = 2 * v23;
    }

    a2[2] = v25;
    v24 = realloc(v24, v25);
    *a2 = v24;
    if (!v24)
    {
      goto LABEL_56;
    }

    v20 = a2[1];
  }

  v20[v24] = 45;
  v26 = a2[1];
  v27 = (v26 + 1);
  a2[1] = v26 + 1;
  v28 = a1[5];
  v21 = v28 - 1;
  if (v28 != 1)
  {
    v29 = a1[4];
    v30 = &v26[v28];
    v31 = a2[2];
    v32 = *a2;
    if (v30 > v31)
    {
      if (2 * v31 <= v30 + 992)
      {
        v33 = v30 + 992;
      }

      else
      {
        v33 = 2 * v31;
      }

      a2[2] = v33;
      v32 = realloc(v32, v33);
      *a2 = v32;
      if (!v32)
      {
        goto LABEL_56;
      }

      v27 = a2[1];
    }

    v34 = &v32[v27];
    v35 = (v29 + 1);
LABEL_47:
    memcpy(v34, v35, v21);
LABEL_48:
    v27 = &a2[1][v21];
    a2[1] = v27;
  }

  v41 = a2[2];
  result = *a2;
  if (v27 + 1 > v41)
  {
    v43 = v27 + 993;
    v44 = 2 * v41;
    if (v44 <= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    a2[2] = v45;
    result = realloc(result, v45);
    *a2 = result;
    if (result)
    {
      v27 = a2[1];
      goto LABEL_55;
    }

LABEL_56:
    abort();
  }

LABEL_55:
  result[v27] = 62;
  ++a2[1];
  return result;
}

void *llvm::itanium_demangle::SizeofParamPackExpr::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 9 > v6)
  {
    v7 = v5 + 1001;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a2 + 8);
  }

  v10 = &v4[v5];
  *v10 = *"sizeof...";
  v10[8] = 46;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = v12 + 9;
  *(a2 + 8) = v12 + 9;
  ++*(a2 + 32);
  v14 = v12 + 10;
  v15 = *(a2 + 16);
  if (v12 + 10 > v15)
  {
    if (2 * v15 <= v12 + 1002)
    {
      v16 = v12 + 1002;
    }

    else
    {
      v16 = 2 * v15;
    }

    *(a2 + 16) = v16;
    v11 = realloc(v11, v16);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_20;
    }

    v13 = *(a2 + 8);
    v14 = v13 + 1;
  }

  *(a2 + 8) = v14;
  *(v11 + v13) = 40;
  v17 = *(a1 + 16);
  v25 = 42;
  v26 = 1344;
  v24 = &unk_1F5B40E80;
  v27 = v17;
  llvm::itanium_demangle::ParameterPackExpansion::printLeft(&v24, a2);
  --*(a2 + 32);
  result = *a2;
  v19 = *(a2 + 8);
  v20 = v19 + 1;
  v21 = *(a2 + 16);
  if (v19 + 1 > v21)
  {
    v22 = v19 + 993;
    if (2 * v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = 2 * v21;
    }

    *(a2 + 16) = v23;
    result = realloc(result, v23);
    *a2 = result;
    if (result)
    {
      v19 = *(a2 + 8);
      v20 = v19 + 1;
      goto LABEL_19;
    }

LABEL_20:
    abort();
  }

LABEL_19:
  *(a2 + 8) = v20;
  *(result + v19) = 41;
  return result;
}

void *llvm::itanium_demangle::NodeArrayNode::printLeft(void *result, char **a2)
{
  if (result[3])
  {
    v3 = result;
    v4 = 0;
    v5 = a2[1];
    v6 = 1;
    do
    {
      while (1)
      {
        v7 = v5;
        if ((v6 & 1) == 0)
        {
          v8 = a2[2];
          v9 = *a2;
          if (v5 + 2 <= v8)
          {
            v12 = v5;
          }

          else
          {
            v10 = 2 * v8;
            if (v10 <= v5 + 994)
            {
              v11 = v5 + 994;
            }

            else
            {
              v11 = v10;
            }

            a2[2] = v11;
            v9 = realloc(v9, v11);
            *a2 = v9;
            if (!v9)
            {
              abort();
            }

            v12 = a2[1];
          }

          *&v9[v12] = 8236;
          v7 = (a2[1] + 2);
          a2[1] = v7;
        }

        result = llvm::itanium_demangle::Node::printAsOperand(*(v3[2] + 8 * v4), a2, 18, 0);
        if (v7 != a2[1])
        {
          break;
        }

        a2[1] = v5;
        if (++v4 == v3[3])
        {
          return result;
        }
      }

      v6 = 0;
      v5 = a2[1];
      ++v4;
    }

    while (v4 != v3[3]);
  }

  return result;
}

uint64_t llvm::itanium_demangle::ThrowExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 6) > v6)
  {
    v7 = (v5 + 998);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *(v10 + 2) = 8311;
  *v10 = 1869768820;
  a2[1] += 6;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnresolvedType(unsigned __int8 **a1, size_t a2)
{
  if (a1[1] != *a1)
  {
    v2 = **a1;
    if (v2 == 68)
    {
      v3 = a1;
      if (!result)
      {
        return result;
      }

      v5 = v3;
      v6 = v3[38];
      if (v6 != v3[39])
      {
        goto LABEL_19;
      }

      v7 = result;
      v8 = v3[37];
      v9 = v6 - v8;
      v10 = 2 * (v6 - v8);
      if (v8 == (v3 + 40))
      {
        v11 = malloc(2 * (v6 - v8));
        if (v11)
        {
          if (v6 == v8)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

LABEL_24:
        abort();
      }

LABEL_17:
      v11 = realloc(v8, v10);
      v5 = v3;
      v3[37] = v11;
      if (v11)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

    if (v2 == 84)
    {
      v3 = a1;
      if (!result)
      {
        return result;
      }

      v5 = v3;
      v6 = v3[38];
      if (v6 != v3[39])
      {
        goto LABEL_19;
      }

      v7 = result;
      v8 = v3[37];
      v9 = v6 - v8;
      v10 = 2 * (v6 - v8);
      if (v8 == (v3 + 40))
      {
        v11 = malloc(2 * (v6 - v8));
        if (v11)
        {
          if (v6 == (v3 + 40))
          {
LABEL_10:
            v5 = v3;
            v3[37] = v11;
LABEL_18:
            v6 = &v11[v9];
            v5[39] = &v11[8 * (v9 >> 2)];
            result = v7;
LABEL_19:
            *v6 = result;
            v5[38] = v6 + 8;
            return result;
          }

LABEL_9:
          v12 = v11;
          memmove(v11, v8, v9);
          v11 = v12;
          goto LABEL_10;
        }

        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSimpleId(uint64_t a1)
{
  if (v2)
  {
    if (*(a1 + 8) != *a1 && **a1 == 73)
    {
      v3 = v2;
      if (v4)
      {
        v5 = *(a1 + 4904);
        v6 = v5[1];
        if ((v6 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v7 = v4;
          v8 = malloc(0x1000uLL);
          if (!v8)
          {
            std::terminate();
          }

          v6 = 0;
          *v8 = v5;
          v8[1] = 0;
          v5 = v8;
          *(a1 + 4904) = v8;
          v4 = v7;
        }

        v5[1] = v6 + 32;
        v9 = v5 + v6;
        v9[24] = 45;
        *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
        *(v9 + 2) = &unk_1F5B41C18;
        *(v9 + 4) = v3;
        *(v9 + 5) = v4;
      }
    }
  }
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseBaseUnresolvedName(uint64_t a1, size_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    if ((*(MEMORY[0x1E69E9830] + 60) & 0x400) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  v5 = *v3;
  if ((v5 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x400) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (&v4[-*a1] < 2)
  {
    goto LABEL_7;
  }

  if (*v3 == 28260)
  {
    v14 = (v3 + 2);
    *a1 = v14;
    if (v4 == v14)
    {
      if ((*(MEMORY[0x1E69E9830] + 60) & 0x400) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *v14;
      if (v15 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x400) == 0)
      {
LABEL_23:
        if (!v16)
        {
          return;
        }

        goto LABEL_24;
      }
    }

    v16 = v22;
    if (!v22)
    {
      return;
    }

LABEL_24:
    v17 = *(a1 + 4904);
    v18 = v17[1];
    if ((v18 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v19 = v16;
      v20 = malloc(0x1000uLL);
      if (!v20)
      {
        goto LABEL_33;
      }

      v18 = 0;
      *v20 = v17;
      v20[1] = 0;
      v17 = v20;
      *(a1 + 4904) = v20;
      v16 = v19;
    }

    v17[1] = v18 + 32;
    v21 = v17 + v18;
    v21[24] = 50;
    *(v21 + 25) = *(v21 + 25) & 0xF000 | 0x540;
    *(v21 + 2) = &unk_1F5B41510;
    *(v21 + 4) = v16;
    return;
  }

  if (*v3 == 28271)
  {
    *a1 = v3 + 2;
    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_7:
  if (!v6)
  {
    return;
  }

LABEL_8:
  if (*(a1 + 8) != *a1 && **a1 == 73)
  {
    v7 = v6;
    if (v8)
    {
      v9 = *(a1 + 4904);
      v10 = v9[1];
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_14:
        v9[1] = v10 + 32;
        v13 = v9 + v10;
        v13[24] = 45;
        *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
        *(v13 + 2) = &unk_1F5B41C18;
        *(v13 + 4) = v7;
        *(v13 + 5) = v8;
        return;
      }

      v11 = v8;
      v12 = malloc(0x1000uLL);
      if (v12)
      {
        v10 = 0;
        *v12 = v9;
        v12[1] = 0;
        v9 = v12;
        *(a1 + 4904) = v12;
        v8 = v11;
        goto LABEL_14;
      }

LABEL_33:
      std::terminate();
    }
  }
}

uint64_t llvm::itanium_demangle::QualifiedName::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  *&v6[v5] = 14906;
  a2[1] += 2;
  v11 = *(a1 + 24);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseOperatorName(uint64_t a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (&v3[-*a1] < 2)
  {
    goto LABEL_24;
  }

  v4 = 0;
  v5 = *v2;
  v6 = 61;
  do
  {
    v7 = (v4 + v6) >> 1;
    if (*v8 < v5)
    {
      v4 = v7 + 1;
    }

    else if (*v8 == v5)
    {
      if (v8[1] >= v2[1])
      {
        v6 = (v4 + v6) >> 1;
      }

      else
      {
        v4 = v7 + 1;
      }
    }

    else
    {
      v6 = (v4 + v6) >> 1;
    }
  }

  while (v6 != v4);
  if (*v9 == v5 && v9[1] == v2[1])
  {
    *a1 = v2 + 2;
    v10 = v9[2];
    if (v10 == 8)
    {
      v11 = *(a1 + 776);
      *(a1 + 776) = 0;
      v12 = *(a1 + 777);
      if (a2)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(a1 + 777);
      }

      *(a1 + 777) = v14;
      if (!result)
      {
        v21 = a1;
LABEL_52:
        *(v21 + 777) = v12;
        *(v21 + 776) = v11;
        return result;
      }

      v17 = result;
      if (a2)
      {
        *a2 = 1;
      }

      v18 = *(a1 + 4904);
      v19 = v18[1];
      if ((v19 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        v21 = a1;
        goto LABEL_51;
      }

      v20 = malloc(0x1000uLL);
      if (v20)
      {
        v19 = 0;
        *v20 = v18;
        v20[1] = 0;
        v18 = v20;
        v21 = a1;
        *(a1 + 4904) = v20;
LABEL_51:
        v18[1] = v19 + 32;
        v40 = v18 + v19;
        result = v40 + 16;
        v40[24] = 4;
        *(v40 + 25) = *(v40 + 25) & 0xF000 | 0x540;
        *(v40 + 2) = &unk_1F5B41588;
        *(v40 + 4) = v17;
        goto LABEL_52;
      }

LABEL_53:
      std::terminate();
    }

    if (v10 <= 0xA && (v10 != 4 || (v9[3] & 1) != 0))
    {
      v33 = *(v9 + 1);
      v35 = strlen(v33);
      v36 = *(a1 + 4904);
      v37 = v36[1];
      if ((v37 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v38 = malloc(0x1000uLL);
        if (!v38)
        {
          goto LABEL_53;
        }

        v37 = 0;
        *v38 = v36;
        v38[1] = 0;
        v36 = v38;
        *(a1 + 4904) = v38;
      }

      v36[1] = v37 + 32;
      v39 = v36 + v37;
      result = v39 + 16;
      v39[24] = 8;
      *(v39 + 25) = *(v39 + 25) & 0xF000 | 0x540;
      *(v39 + 2) = &unk_1F5B3FF08;
      *(v39 + 4) = v33;
      *(v39 + 5) = v35;
      return result;
    }

    return 0;
  }

  if (*v2 == 26988)
  {
    *a1 = v2 + 2;
    if (result)
    {
      v23 = result;
      v30 = *(a1 + 4904);
      v31 = v30[1];
      if ((v31 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v32 = malloc(0x1000uLL);
        if (!v32)
        {
          goto LABEL_53;
        }

        v31 = 0;
        *v32 = v30;
        v32[1] = 0;
        v30 = v32;
        *(a1 + 4904) = v32;
      }

      v30[1] = v31 + 32;
      v27 = v30 + v31;
      result = v27 + 16;
      v27[24] = 20;
      *(v27 + 25) = *(v27 + 25) & 0xF000 | 0x540;
      v28 = &unk_1F5B41600;
LABEL_40:
      *(v27 + 2) = v28;
      *(v27 + 4) = v23;
    }
  }

  else
  {
LABEL_24:
    if (v2 == v3)
    {
      return 0;
    }

    else
    {
      if (*v2 != 118)
      {
        return 0;
      }

      *a1 = v2 + 1;
      if (v3 == v2 + 1 || v2[1] - 48 > 9)
      {
        return 0;
      }

      *a1 = v2 + 2;
      if (result)
      {
        v23 = result;
        v24 = *(a1 + 4904);
        v25 = v24[1];
        if ((v25 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v26 = malloc(0x1000uLL);
          if (!v26)
          {
            goto LABEL_53;
          }

          v25 = 0;
          *v26 = v24;
          v26[1] = 0;
          v24 = v26;
          *(a1 + 4904) = v26;
        }

        v24[1] = v25 + 32;
        v27 = v24 + v25;
        result = v27 + 16;
        v27[24] = 4;
        *(v27 + 25) = *(v27 + 25) & 0xF000 | 0x540;
        v28 = &unk_1F5B41588;
        goto LABEL_40;
      }
    }
  }

  return result;
}

uint64_t llvm::itanium_demangle::DtorName::printLeft(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (v4 + 1 > v5)
  {
    v6 = v4 + 993;
    v7 = 2 * v5;
    if (v7 > v6)
    {
      v6 = v7;
    }

    a2[2] = v6;
    v8 = a2;
    v3 = realloc(v3, v6);
    *v8 = v3;
    if (!v3)
    {
      abort();
    }

    a2 = v8;
    v4 = v8[1];
  }

  *(v3 + v4) = 126;
  ++a2[1];
  v9 = *(**(a1 + 16) + 32);

  return v9();
}

uint64_t llvm::itanium_demangle::ConversionOperatorType::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 9) > v6)
  {
    v7 = (v5 + 1001);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *"operator ";
  v10[8] = 32;
  a2[1] += 9;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::LiteralOperator::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 11) > v6)
  {
    v7 = (v5 + 1003);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *"operator ";
  *(v10 + 7) = 539107954;
  a2[1] += 11;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::GlobalQualifiedName::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 2) > v6)
  {
    v7 = (v5 + 994);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  *&v5[v4] = 14906;
  a2[1] += 2;
  v10 = *(a1 + 16);
  result = (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    v12 = *(*v10 + 40);

    return v12(v10, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseAbiTags(uint64_t a1, char *a2)
{
  v2 = a2;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return a2;
  }

  while (*v4 == 66)
  {
    *a1 = v4 + 1;
    if (v3 == v4 + 1 || v4[1] - 58 < 0xFFFFFFF6)
    {
      return 0;
    }

    v9 = 0;
    v10 = v4 + 2;
    v11 = v4 + 2;
    do
    {
      v12 = v9;
      v13 = v11;
      v14 = v10;
      *a1 = v11;
      v15 = *(v11 - 1);
      v9 = v15 + 10 * v9 - 48;
      if (v11 == v3)
      {
        break;
      }

      ++v11;
      ++v10;
    }

    while (*v13 - 48 <= 9);
    if (v3 - v14 < v9)
    {
      return 0;
    }

    *a1 = &v13[10 * v12 - 48 + v15];
    if (!v9)
    {
      return 0;
    }

    v16 = *(a1 + 4904);
    v17 = v16[1];
    if ((v17 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v18 = malloc(0x1000uLL);
      if (!v18)
      {
        std::terminate();
      }

      v17 = 0;
      *v18 = v16;
      v18[1] = 0;
      v16 = v18;
      *(a1 + 4904) = v18;
    }

    v16[1] = v17 + 48;
    v6 = v16 + v17;
    result = v6 + 16;
    v8 = *(v2 + 9);
    v6[24] = 9;
    *(v6 + 25) = *(v6 + 25) & 0xF000 | v8 & 0xFC0;
    *(v6 + 2) = &unk_1F5B417E0;
    *(v6 + 4) = v2;
    *(v6 + 5) = v14;
    *(v6 + 6) = v9;
    v4 = *a1;
    v3 = *(a1 + 8);
    v2 = result;
    if (*a1 == v3)
    {
      return result;
    }
  }

  return v2;
}

void *llvm::itanium_demangle::SpecialSubstitution::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 5) > v6)
  {
    v7 = (v5 + 997);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_30;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[4] = 58;
  *v10 = 979661939;
  v11 = (a2[1] + 5);
  a2[1] = v11;
  v12 = *(a1 + 12);
  if (v12 > 2)
  {
    v18 = "basic_ostream";
    v19 = 7;
    if (v12 != 4)
    {
      v19 = 8;
      v18 = "basic_iostream";
    }

    if (v12 == 3)
    {
      v14 = 7;
    }

    else
    {
      v14 = v19;
    }

    if (v12 == 3)
    {
      v20 = "basic_istream";
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    if (!v12)
    {
      v13 = "allocator";
      v14 = 9;
      v15 = v11 + 9;
      v16 = a2[2];
      v17 = *a2;
      if (v11 + 9 <= v16)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    if (v12 == 1)
    {
      v13 = "basic_string";
      v14 = 12;
      v15 = v11 + 12;
      v16 = a2[2];
      v17 = *a2;
      if (v11 + 12 <= v16)
      {
        goto LABEL_29;
      }

LABEL_24:
      if (2 * v16 <= v15 + 992)
      {
        v21 = v15 + 992;
      }

      else
      {
        v21 = 2 * v16;
      }

      a2[2] = v21;
      v17 = realloc(v17, v21);
      *a2 = v17;
      if (v17)
      {
        v11 = a2[1];
        goto LABEL_29;
      }

LABEL_30:
      abort();
    }

    v20 = "basic_string";
    v14 = 6;
  }

  v13 = v20 + 6;
  v15 = v11 + v14;
  v16 = a2[2];
  v17 = *a2;
  if (v11 + v14 > v16)
  {
    goto LABEL_24;
  }

LABEL_29:
  result = memcpy(&v17[v11], v13, v14);
  a2[1] += v14;
  return result;
}

char *llvm::itanium_demangle::SpecialSubstitution::getBaseName(llvm::itanium_demangle::SpecialSubstitution *this)
{
  v1 = *(this + 3);
  if (v1 > 2)
  {
    v3 = "basic_ostream";
    if (v1 != 4)
    {
      v3 = "basic_iostream";
    }

    if (v1 == 3)
    {
      v4 = "basic_istream";
    }

    else
    {
      v4 = v3;
    }

    return (v4 + 6);
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      return "basic_string";
    }

    else
    {
      return "string";
    }
  }

  else
  {
    return "allocator";
  }
}

char *llvm::itanium_demangle::ExpandedSpecialSubstitution::printLeft(_DWORD *a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 5) > v6)
  {
    v7 = (v5 + 997);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[4] = 58;
  *v10 = 979661939;
  a2[1] += 5;
  result = (*(*a1 + 56))(a1);
  if (v12)
  {
    v13 = result;
    v14 = v12;
    v15 = *a2;
    v16 = a2[1];
    v17 = &v16[v12];
    v18 = a2[2];
    if (&v16[v12] > v18)
    {
      if (2 * v18 <= (v17 + 992))
      {
        v19 = (v17 + 992);
      }

      else
      {
        v19 = 2 * v18;
      }

      a2[2] = v19;
      v15 = realloc(v15, v19);
      *a2 = v15;
      if (!v15)
      {
        goto LABEL_38;
      }

      v16 = a2[1];
    }

    result = memcpy(&v16[v15], v13, v14);
    a2[1] += v14;
  }

  if (a1[3] < 2u)
  {
    return result;
  }

  v20 = *a2;
  v21 = a2[1];
  v22 = a2[2];
  if ((v21 + 29) > v22)
  {
    v23 = (v21 + 1021);
    v24 = 2 * v22;
    if (v24 <= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    a2[2] = v25;
    v20 = realloc(v20, v25);
    *a2 = v20;
    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = a2[1];
  }

  qmemcpy(&v21[v20], "<char, std::char_traits<char>", 29);
  v26 = a2[1];
  v27 = (v26 + 29);
  a2[1] = v26 + 29;
  if (a1[3] == 2)
  {
    v28 = a2[2];
    v29 = *a2;
    if ((v26 + 51) > v28)
    {
      if (2 * v28 <= (v26 + 1043))
      {
        v30 = (v26 + 1043);
      }

      else
      {
        v30 = 2 * v28;
      }

      a2[2] = v30;
      v29 = realloc(v29, v30);
      *a2 = v29;
      if (!v29)
      {
        goto LABEL_38;
      }

      v27 = a2[1];
    }

    qmemcpy(&v29[v27], ", std::allocator<char>", 22);
    v27 = (a2[1] + 22);
    a2[1] = v27;
  }

  v31 = a2[2];
  result = *a2;
  if (v27 + 1 > v31)
  {
    v32 = v27 + 993;
    v33 = 2 * v31;
    if (v33 <= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    a2[2] = v34;
    result = realloc(result, v34);
    *a2 = result;
    if (result)
    {
      v27 = a2[1];
      goto LABEL_36;
    }

LABEL_38:
    abort();
  }

LABEL_36:
  result[v27] = 62;
  ++a2[1];
  return result;
}

char *llvm::itanium_demangle::AbiTagAttr::printLeft(uint64_t a1, char **a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 5) > v6)
  {
    v7 = (v5 + 997);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_22;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[4] = 58;
  *v10 = 1768055131;
  v11 = (a2[1] + 5);
  a2[1] = v11;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(a1 + 24);
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = realloc(v16, v17);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_22;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = &a2[1][v12];
    a2[1] = v11;
  }

  v18 = a2[2];
  result = *a2;
  if (v11 + 1 > v18)
  {
    v20 = v11 + 993;
    v21 = 2 * v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    a2[2] = v22;
    result = realloc(result, v22);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      goto LABEL_21;
    }

LABEL_22:
    abort();
  }

LABEL_21:
  result[v11] = 93;
  ++a2[1];
  return result;
}

char *llvm::itanium_demangle::StructuredBindingName::printLeft(uint64_t a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 91;
  v10 = *(a2 + 8);
  if (*(a1 + 24))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v10;
      if ((v12 & 1) == 0)
      {
        v14 = *(a2 + 16);
        v15 = *a2;
        if (v10 + 2 <= v14)
        {
          v18 = v10;
        }

        else
        {
          v16 = 2 * v14;
          if (v16 <= v10 + 994)
          {
            v17 = v10 + 994;
          }

          else
          {
            v17 = v16;
          }

          *(a2 + 16) = v17;
          v15 = realloc(v15, v17);
          *a2 = v15;
          if (!v15)
          {
            goto LABEL_28;
          }

          v18 = *(a2 + 8);
        }

        *&v15[v18] = 8236;
        v13 = *(a2 + 8) + 2;
        *(a2 + 8) = v13;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 16) + 8 * v11), a2, 18, 0);
      if (v13 == *(a2 + 8))
      {
        *(a2 + 8) = v10;
        if (++v11 == *(a1 + 24))
        {
          break;
        }
      }

      else
      {
        v12 = 0;
        v10 = *(a2 + 8);
        if (++v11 == *(a1 + 24))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v19 = v10 + 1;
  v20 = *(a2 + 16);
  result = *a2;
  if (v10 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v10 + 993)
    {
      v23 = v10 + 993;
    }

    else
    {
      v23 = v22;
    }

    *(a2 + 16) = v23;
    result = realloc(result, v23);
    *a2 = result;
    if (result)
    {
      v10 = *(a2 + 8);
      v19 = v10 + 1;
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  *(a2 + 8) = v19;
  result[v10] = 93;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ExpandedSpecialSubstitution,llvm::itanium_demangle::SpecialSubstitution *>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v7 = v4 + 16;
  v3[1] = v7;
  result = v3 + v7;
  LODWORD(v7) = *(a2 + 12);
  result[8] = 47;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = &unk_1F5B41780;
  *(result + 3) = v7;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CtorDtorName,llvm::itanium_demangle::Node *&,BOOL,int &>(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v7 = *(a1 + 4904);
  v8 = v7[1];
  if ((v8 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc(0x1000uLL);
    if (!v10)
    {
      std::terminate();
    }

    v8 = 0;
    *v10 = v7;
    v10[1] = 0;
    v7 = v10;
    *(a1 + 4904) = v10;
  }

  v7[1] = v8 + 32;
  v11 = v7 + v8;
  result = v11 + 16;
  v11[24] = 49;
  *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
  *(v11 + 2) = &unk_1F5B418D0;
  *(v11 + 4) = a2;
  v11[40] = a3 & 1;
  *(v11 + 11) = a4;
  return result;
}

void *llvm::itanium_demangle::CtorDtorName::printLeft(uint64_t a1, char **a2)
{
  v3 = a1;
  if (*(a1 + 24) == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    if ((v5 + 1) > v6)
    {
      v7 = v3;
      if (2 * v6 <= (v5 + 993))
      {
        v8 = (v5 + 993);
      }

      else
      {
        v8 = 2 * v6;
      }

      a2[2] = v8;
      v4 = realloc(v4, v8);
      *a2 = v4;
      if (!v4)
      {
        goto LABEL_18;
      }

      v5 = a2[1];
      v3 = v7;
    }

    v5[v4] = 126;
    ++a2[1];
  }

  result = (*(**(v3 + 16) + 56))(*(v3 + 16));
  if (!v10)
  {
    return result;
  }

  v11 = result;
  v12 = v10;
  v13 = *a2;
  v14 = a2[1];
  v15 = &v14[v10];
  v16 = a2[2];
  if (&v14[v10] > v16)
  {
    if (2 * v16 <= (v15 + 992))
    {
      v17 = (v15 + 992);
    }

    else
    {
      v17 = 2 * v16;
    }

    a2[2] = v17;
    v13 = realloc(v13, v17);
    *a2 = v13;
    if (v13)
    {
      v14 = a2[1];
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_16:
  result = memcpy(&v14[v13], v11, v12);
  a2[1] += v12;
  return result;
}

uint64_t llvm::itanium_demangle::ModuleEntity::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = v6 + 1;
  v8 = *(a2 + 16);
  if (v6 + 1 > v8)
  {
    v9 = v6 + 993;
    if (2 * v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 2 * v8;
    }

    *(a2 + 16) = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = *(a2 + 8);
    v7 = v6 + 1;
  }

  *(a2 + 8) = v7;
  *(v5 + v6) = 64;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::MemberLikeFriendName::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 9) > v7)
  {
    v8 = (v6 + 1001);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  v11 = &v6[v5];
  *v11 = *"::friend ";
  v11[8] = 32;
  a2[1] += 9;
  v12 = *(a1 + 24);
  result = (*(*v12 + 32))(v12, a2);
  if ((*(v12 + 9) & 0xC0) != 0x40)
  {
    v14 = *(*v12 + 40);

    return v14(v12, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::NestedName::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  *&v6[v5] = 14906;
  a2[1] += 2;
  v11 = *(a1 + 24);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::LocalName,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 4904);
  v6 = v5[1];
  if ((v6 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc(0x1000uLL);
    if (!v8)
    {
      std::terminate();
    }

    v6 = 0;
    *v8 = v5;
    v8[1] = 0;
    v5 = v8;
    *(a1 + 4904) = v8;
  }

  v5[1] = v6 + 32;
  v9 = v5 + v6;
  result = v9 + 16;
  v9[24] = 26;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B41AB0;
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  return result;
}

uint64_t llvm::itanium_demangle::LocalName::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  *&v6[v5] = 14906;
  a2[1] += 2;
  v11 = *(a1 + 24);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::ParameterPack::hasRHSComponentSlow(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(a1 + 24) > v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = 0;
  v6 = *(a1 + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  v3 = *(*(a1 + 16) + 8 * v2);
  v4 = *(v3 + 9);
  if ((v4 & 0xC0) == 0x80)
  {
    return (**v3)(v3);
  }

  else
  {
    return v4 < 0x40;
  }
}

uint64_t llvm::itanium_demangle::ParameterPack::hasArraySlow(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(a1 + 24) > v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = 0;
  v6 = *(a1 + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  v3 = *(*(a1 + 16) + 8 * v2);
  v4 = v3[10] & 3;
  if (v4 == 2)
  {
    return (*(*v3 + 8))();
  }

  else
  {
    return v4 == 0;
  }
}

uint64_t llvm::itanium_demangle::ParameterPack::hasFunctionSlow(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(a1 + 24) > v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = 0;
  v6 = *(a1 + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  v3 = *(*(a1 + 16) + 8 * v2);
  v4 = (*(v3 + 9) >> 10) & 3;
  if (v4 == 2)
  {
    return (*(*v3 + 16))();
  }

  else
  {
    return v4 == 0;
  }
}

uint64_t llvm::itanium_demangle::ParameterPack::getSyntaxNode(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(result + 24) <= v2)
    {
      return result;
    }

    return (*(**(*(result + 16) + 8 * v2) + 24))();
  }

  v2 = 0;
  v3 = *(result + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v3;
  if (v3)
  {
    return (*(**(*(result + 16) + 8 * v2) + 24))();
  }

  return result;
}

uint64_t llvm::itanium_demangle::ParameterPack::printLeft(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(result + 24) <= v2)
    {
      return result;
    }

    return (*(**(*(result + 16) + 8 * v2) + 32))();
  }

  v2 = 0;
  v3 = *(result + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v3;
  if (v3)
  {
    return (*(**(*(result + 16) + 8 * v2) + 32))();
  }

  return result;
}

uint64_t llvm::itanium_demangle::ParameterPack::printRight(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(result + 24) <= v2)
    {
      return result;
    }

    return (*(**(*(result + 16) + 8 * v2) + 40))();
  }

  v2 = 0;
  v3 = *(result + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v3;
  if (v3)
  {
    return (*(**(*(result + 16) + 8 * v2) + 40))();
  }

  return result;
}

char *llvm::itanium_demangle::TemplateArgs::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v6 + 1 > v7)
  {
    v8 = v6 + 993;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    *(a2 + 16) = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_28;
    }

    v6 = *(a2 + 8);
  }

  v5[v6] = 60;
  v11 = *(a2 + 8) + 1;
  *(a2 + 8) = v11;
  if (*(a1 + 24))
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v11;
      if ((v13 & 1) == 0)
      {
        v15 = *(a2 + 16);
        v16 = *a2;
        if (v11 + 2 <= v15)
        {
          v19 = v11;
        }

        else
        {
          v17 = 2 * v15;
          if (v17 <= v11 + 994)
          {
            v18 = v11 + 994;
          }

          else
          {
            v18 = v17;
          }

          *(a2 + 16) = v18;
          v16 = realloc(v16, v18);
          *a2 = v16;
          if (!v16)
          {
            goto LABEL_28;
          }

          v19 = *(a2 + 8);
        }

        *&v16[v19] = 8236;
        v14 = *(a2 + 8) + 2;
        *(a2 + 8) = v14;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 16) + 8 * v12), a2, 18, 0);
      if (v14 == *(a2 + 8))
      {
        *(a2 + 8) = v11;
        if (++v12 == *(a1 + 24))
        {
          break;
        }
      }

      else
      {
        v13 = 0;
        v11 = *(a2 + 8);
        if (++v12 == *(a1 + 24))
        {
          break;
        }
      }
    }
  }

  v20 = *(a2 + 16);
  result = *a2;
  if (v11 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v11 + 993)
    {
      v23 = v11 + 993;
    }

    else
    {
      v23 = v22;
    }

    *(a2 + 16) = v23;
    result = realloc(result, v23);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  result[v11] = 62;
  ++*(a2 + 8);
  *(a2 + 32) = v4;
  return result;
}

uint64_t llvm::itanium_demangle::NameWithTemplateArgs::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *(a1 + 24);
  result = (*(*v5 + 32))(v5, a2);
  if ((*(v5 + 9) & 0xC0) != 0x40)
  {
    v7 = *(*v5 + 40);

    return v7(v5, a2);
  }

  return result;
}

void *llvm::itanium_demangle::TemplateArgumentPack::printLeft(void *result, char **a2)
{
  if (result[3])
  {
    v3 = result;
    v4 = 0;
    v5 = a2[1];
    v6 = 1;
    do
    {
      while (1)
      {
        v7 = v5;
        if ((v6 & 1) == 0)
        {
          v8 = a2[2];
          v9 = *a2;
          if (v5 + 2 <= v8)
          {
            v12 = v5;
          }

          else
          {
            v10 = 2 * v8;
            if (v10 <= v5 + 994)
            {
              v11 = v5 + 994;
            }

            else
            {
              v11 = v10;
            }

            a2[2] = v11;
            v9 = realloc(v9, v11);
            *a2 = v9;
            if (!v9)
            {
              abort();
            }

            v12 = a2[1];
          }

          *&v9[v12] = 8236;
          v7 = (a2[1] + 2);
          a2[1] = v7;
        }

        result = llvm::itanium_demangle::Node::printAsOperand(*(v3[2] + 8 * v4), a2, 18, 0);
        if (v7 != a2[1])
        {
          break;
        }

        a2[1] = v5;
        if (++v4 == v3[3])
        {
          return result;
        }
      }

      v6 = 0;
      v5 = a2[1];
      ++v4;
    }

    while (v4 != v3[3]);
  }

  return result;
}

uint64_t llvm::itanium_demangle::TemplateParamQualifiedArg::printLeft(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*v3 + 40);

    return v5(v3, a2);
  }

  return result;
}

void *llvm::itanium_demangle::EnableIfAttr::printLeft(uint64_t a1, void **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 12) > v6)
  {
    v7 = (v5 + 1004);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *" [enable_if:";
  *(v10 + 2) = 979790175;
  v11 = a2[1] + 12;
  a2[1] = v11;
  if (*(a1 + 24))
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v11;
      if ((v13 & 1) == 0)
      {
        v15 = a2[2];
        v16 = *a2;
        if (v11 + 2 <= v15)
        {
          v19 = v11;
        }

        else
        {
          v17 = 2 * v15;
          if (v17 <= v11 + 994)
          {
            v18 = v11 + 994;
          }

          else
          {
            v18 = v17;
          }

          a2[2] = v18;
          v16 = realloc(v16, v18);
          *a2 = v16;
          if (!v16)
          {
            goto LABEL_28;
          }

          v19 = a2[1];
        }

        *&v16[v19] = 8236;
        v14 = a2[1] + 2;
        a2[1] = v14;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 16) + 8 * v12), a2, 18, 0);
      if (v14 == a2[1])
      {
        a2[1] = v11;
        if (++v12 == *(a1 + 24))
        {
          break;
        }
      }

      else
      {
        v13 = 0;
        v11 = a2[1];
        if (++v12 == *(a1 + 24))
        {
          break;
        }
      }
    }
  }

  v20 = v11 + 1;
  v21 = a2[2];
  result = *a2;
  if (v11 + 1 > v21)
  {
    v23 = 2 * v21;
    if (v23 <= v11 + 993)
    {
      v24 = v11 + 993;
    }

    else
    {
      v24 = v23;
    }

    a2[2] = v24;
    result = realloc(result, v24);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      v20 = v11 + 1;
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  a2[1] = v20;
  *(result + v11) = 93;
  return result;
}

uint64_t llvm::itanium_demangle::ExplicitObjectParameter::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 5) > v6)
  {
    v7 = (v5 + 997);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[4] = 32;
  *v10 = 1936287860;
  a2[1] += 5;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::FunctionEncoding::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
    v5 = *(a1 + 16);
    v6 = *(v5 + 9);
    if ((v6 & 0xC0) == 0x80)
    {
      if ((**v5)(v5, a2))
      {
        goto LABEL_13;
      }
    }

    else if (v6 < 0x40)
    {
      goto LABEL_13;
    }

    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    if (v8 + 1 > v9)
    {
      v10 = v8 + 993;
      v11 = 2 * v9;
      if (v11 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      *(a2 + 16) = v12;
      v7 = realloc(v7, v12);
      *a2 = v7;
      if (!v7)
      {
        abort();
      }

      v8 = *(a2 + 8);
    }

    *(v7 + v8) = 32;
    ++*(a2 + 8);
  }

LABEL_13:
  v13 = *(a1 + 24);
  result = (*(*v13 + 32))(v13, a2);
  if ((*(v13 + 9) & 0xC0) != 0x40)
  {
    v15 = *(*v13 + 40);

    return v15(v13, a2);
  }

  return result;
}

char *llvm::itanium_demangle::FunctionEncoding::printRight(uint64_t a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_85;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  v10 = *(a2 + 8);
  if (*(a1 + 40))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v10;
      if ((v12 & 1) == 0)
      {
        v14 = *(a2 + 16);
        v15 = *a2;
        if (v10 + 2 <= v14)
        {
          v18 = v10;
        }

        else
        {
          v16 = 2 * v14;
          if (v16 <= v10 + 994)
          {
            v17 = v10 + 994;
          }

          else
          {
            v17 = v16;
          }

          *(a2 + 16) = v17;
          v15 = realloc(v15, v17);
          *a2 = v15;
          if (!v15)
          {
            goto LABEL_85;
          }

          v18 = *(a2 + 8);
        }

        *&v15[v18] = 8236;
        v13 = *(a2 + 8) + 2;
        *(a2 + 8) = v13;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 32) + 8 * v11), a2, 18, 0);
      if (v13 == *(a2 + 8))
      {
        *(a2 + 8) = v10;
        if (++v11 == *(a1 + 40))
        {
          break;
        }
      }

      else
      {
        v12 = 0;
        v10 = *(a2 + 8);
        if (++v11 == *(a1 + 40))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v19 = v10 + 1;
  v20 = *(a2 + 16);
  v21 = *a2;
  if (v10 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v10 + 993)
    {
      v23 = v10 + 993;
    }

    else
    {
      v23 = v22;
    }

    *(a2 + 16) = v23;
    v21 = realloc(v21, v23);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_85;
    }

    v10 = *(a2 + 8);
    v19 = v10 + 1;
  }

  *(a2 + 8) = v19;
  v21[v10] = 41;
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 40))(result, a2);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    result = *a2;
    v26 = *(a2 + 8);
    v27 = *(a2 + 16);
    if (v26 + 6 > v27)
    {
      v28 = v26 + 998;
      v29 = 2 * v27;
      if (v29 <= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      *(a2 + 16) = v30;
      result = realloc(result, v30);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v26 = *(a2 + 8);
    }

    v31 = &result[v26];
    *(v31 + 2) = 29811;
    *v31 = 1852793632;
    *(a2 + 8) += 6;
    v25 = *(a1 + 64);
  }

  if ((v25 & 2) != 0)
  {
    result = *a2;
    v32 = *(a2 + 8);
    v33 = *(a2 + 16);
    if (v32 + 9 > v33)
    {
      v34 = v32 + 1001;
      v35 = 2 * v33;
      if (v35 <= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      *(a2 + 16) = v36;
      result = realloc(result, v36);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v32 = *(a2 + 8);
    }

    v37 = &result[v32];
    *v37 = *" volatile";
    v37[8] = 101;
    *(a2 + 8) += 9;
    v25 = *(a1 + 64);
  }

  if ((v25 & 4) != 0)
  {
    result = *a2;
    v38 = *(a2 + 8);
    v39 = *(a2 + 16);
    if (v38 + 9 > v39)
    {
      v40 = v38 + 1001;
      v41 = 2 * v39;
      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      *(a2 + 16) = v42;
      result = realloc(result, v42);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v38 = *(a2 + 8);
    }

    v43 = &result[v38];
    *v43 = *" restrict";
    v43[8] = 116;
    *(a2 + 8) += 9;
  }

  v44 = *(a1 + 68);
  if (v44 == 2)
  {
    result = *a2;
    v51 = *(a2 + 8);
    v52 = *(a2 + 16);
    if (v51 + 3 > v52)
    {
      v53 = v51 + 995;
      v54 = 2 * v52;
      if (v54 <= v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = v54;
      }

      *(a2 + 16) = v55;
      result = realloc(result, v55);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v51 = *(a2 + 8);
    }

    v56 = &result[v51];
    v56[2] = 38;
    *v56 = 9760;
    v50 = 3;
    goto LABEL_69;
  }

  if (v44 == 1)
  {
    result = *a2;
    v45 = *(a2 + 8);
    v46 = *(a2 + 16);
    if (v45 + 2 > v46)
    {
      v47 = v45 + 994;
      v48 = 2 * v46;
      if (v48 <= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      *(a2 + 16) = v49;
      result = realloc(result, v49);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v45 = *(a2 + 8);
    }

    *&result[v45] = 9760;
    v50 = 2;
LABEL_69:
    *(a2 + 8) += v50;
  }

  v57 = *(a1 + 48);
  if (v57)
  {
    result = (*(*v57 + 32))(*(a1 + 48), a2);
    if ((*(v57 + 9) & 0xC0) != 0x40)
    {
      result = (*(*v57 + 40))(v57, a2);
    }
  }

  if (*(a1 + 56))
  {
    v58 = *a2;
    v59 = *(a2 + 8);
    v60 = *(a2 + 16);
    if (v59 + 10 <= v60)
    {
      goto LABEL_80;
    }

    v61 = v59 + 1002;
    v62 = 2 * v60;
    if (v62 <= v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = v62;
    }

    *(a2 + 16) = v63;
    v58 = realloc(v58, v63);
    *a2 = v58;
    if (v58)
    {
      v59 = *(a2 + 8);
LABEL_80:
      v64 = &v58[v59];
      *v64 = *" requires ";
      *(v64 + 4) = 8307;
      *(a2 + 8) += 10;
      v65 = *(a1 + 56);
      result = (*(*v65 + 32))(v65, a2);
      if ((*(v65 + 9) & 0xC0) != 0x40)
      {
        v66 = *(*v65 + 40);

        return v66(v65, a2);
      }

      return result;
    }

LABEL_85:
    abort();
  }

  return result;
}

char *llvm::itanium_demangle::DotSuffix::printLeft(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = a2[1];
  }

  *&v6[v5] = 10272;
  v11 = (a2[1] + 2);
  a2[1] = v11;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[3];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = realloc(v16, v17);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = &a2[1][v12];
    a2[1] = v11;
  }

  v18 = a2[2];
  result = *a2;
  if (v11 + 1 > v18)
  {
    v20 = v11 + 993;
    v21 = 2 * v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    a2[2] = v22;
    result = realloc(result, v22);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  result[v11] = 41;
  ++a2[1];
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseFunctionType(uint64_t a1, size_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3 || *v4 != 114)
  {
    v5 = 0;
    if (v4 == v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = ++v4;
    v5 = 4;
    if (v4 == v3)
    {
      goto LABEL_8;
    }
  }

  if (*v4 == 86)
  {
    *a1 = ++v4;
    v5 |= 2u;
  }

LABEL_8:
  if (v4 != v3 && *v4 == 75)
  {
    *a1 = ++v4;
    v5 |= 1u;
  }

  if ((v3 - v4) < 2)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_33;
  }

  if (*v4 == 28484)
  {
    *a1 = v4 + 2;
    v17 = *(a1 + 4904);
    v18 = v17[1];
    if ((v18 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v19 = malloc(0x1000uLL);
      if (!v19)
      {
        goto LABEL_84;
      }

      v18 = 0;
      *v19 = v17;
      v19[1] = 0;
      v17 = v19;
      *(a1 + 4904) = v19;
    }

    v17[1] = v18 + 32;
    v20 = v17 + v18;
    v6 = v20 + 16;
    v20[24] = 8;
    *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
    *(v20 + 2) = &unk_1F5B3FF08;
    *(v20 + 4) = "noexcept";
    *(v20 + 5) = 8;
    goto LABEL_33;
  }

  if (*v4 != 20292)
  {
    if (*v4 == 30532)
    {
      v7 = v4 + 2;
      *a1 = v7;
      v8 = (*(a1 + 24) - *(a1 + 16)) >> 3;
      v9 = (a1 + 40);
      while (v7 == v3 || *v7 != 69)
      {
        if (!v12)
        {
          return;
        }

        v11 = *(a1 + 24);
        if (v11 == *(a1 + 32))
        {
          v13 = v12;
          v14 = *(a1 + 16);
          v15 = v11 - v14;
          if (v14 == v9)
          {
            v10 = malloc(2 * (v11 - v14));
            if (!v10)
            {
LABEL_83:
              abort();
            }

            if (v11 != v9)
            {
              v16 = v10;
              memmove(v10, v14, v15);
              v10 = v16;
            }

            *(a1 + 16) = v10;
          }

          else
          {
            v10 = realloc(*(a1 + 16), 2 * (v11 - v14));
            *(a1 + 16) = v10;
            if (!v10)
            {
              goto LABEL_83;
            }
          }

          v11 = &v10[v15];
          *(a1 + 32) = &v10[8 * (v15 >> 2)];
          v12 = v13;
        }

        *v11 = v12;
        *(a1 + 24) = v11 + 1;
        v7 = *a1;
        v3 = *(a1 + 8);
      }

      *a1 = v7 + 1;
      v53 = v52;
      v54 = *(a1 + 4904);
      v55 = v54[1];
      if ((v55 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v56 = malloc(0x1000uLL);
        if (!v56)
        {
          goto LABEL_84;
        }

        v55 = 0;
        *v56 = v54;
        v56[1] = 0;
        v54 = v56;
        *(a1 + 4904) = v56;
      }

      v54[1] = v55 + 32;
      v57 = v54 + v55;
      v6 = v57 + 16;
      v57[24] = 18;
      *(v57 + 25) = *(v57 + 25) & 0xF000 | 0x540;
      *(v57 + 2) = &unk_1F5B41FD8;
      *(v57 + 4) = v51;
      *(v57 + 5) = v53;
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  *a1 = v4 + 2;
  if (!v35)
  {
    return;
  }

  v36 = *a1;
  if (*a1 == *(a1 + 8) || *v36 != 69)
  {
    return;
  }

  *a1 = v36 + 1;
  v37 = *(a1 + 4904);
  v38 = v37[1];
  if ((v38 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v39 = v35;
    v40 = malloc(0x1000uLL);
    if (!v40)
    {
      goto LABEL_84;
    }

    v38 = 0;
    *v40 = v37;
    v40[1] = 0;
    v37 = v40;
    *(a1 + 4904) = v40;
    v35 = v39;
  }

  v37[1] = v38 + 32;
  v41 = v37 + v38;
  v6 = v41 + 16;
  v41[24] = 17;
  *(v41 + 25) = *(v41 + 25) & 0xF000 | 0x540;
  *(v41 + 2) = &unk_1F5B41F60;
  *(v41 + 4) = v35;
LABEL_33:
  v21 = *a1;
  v22 = *(a1 + 8);
  if (&v22[-*a1] >= 2 && *v21 == 30788)
  {
    v21 += 2;
    *a1 = v21;
    if (v21 == v22)
    {
      return;
    }
  }

  else if (v21 == v22)
  {
    return;
  }

  if (*v21 == 70)
  {
    *a1 = v21 + 1;
    if (v21 + 1 != v22 && v21[1] == 89)
    {
      *a1 = v21 + 2;
    }

    if (v23)
    {
      v58 = v23;
      v59 = (*(a1 + 24) - *(a1 + 16)) >> 3;
      v24 = (a1 + 40);
      v25 = *a1;
      v26 = *(a1 + 8);
      if (*a1 != v26)
      {
        goto LABEL_44;
      }

      do
      {
        do
        {
          while (1)
          {
LABEL_46:
            if ((v26 - v25) >= 2)
            {
              if (*v25 == 17746)
              {
                v42 = 1;
                v43 = 2;
                goto LABEL_75;
              }

              if (*v25 == 17743)
              {
                v43 = 2;
                v42 = 2;
                goto LABEL_75;
              }
            }

            if (!v28)
            {
              return;
            }

            v29 = *(a1 + 24);
            if (v29 == *(a1 + 32))
            {
              break;
            }

            *v29 = v28;
            *(a1 + 24) = v29 + 1;
            v25 = *a1;
            v26 = *(a1 + 8);
            if (*a1 != v26)
            {
              goto LABEL_44;
            }
          }

          v30 = v28;
          v31 = *(a1 + 16);
          v32 = v29 - v31;
          if (v31 == v24)
          {
            v33 = malloc(2 * (v29 - v31));
            if (!v33)
            {
              goto LABEL_83;
            }

            if (v29 != v24)
            {
              v34 = v33;
              memmove(v33, v31, v32);
              v33 = v34;
            }

            *(a1 + 16) = v33;
          }

          else
          {
            v33 = realloc(*(a1 + 16), 2 * (v29 - v31));
            *(a1 + 16) = v33;
            if (!v33)
            {
              goto LABEL_83;
            }
          }

          *(a1 + 32) = &v33[8 * (v32 >> 2)];
          *&v33[v32] = v30;
          *(a1 + 24) = &v33[v32 + 8];
          v25 = *a1;
          v26 = *(a1 + 8);
        }

        while (*a1 == v26);
LABEL_44:
        while (1)
        {
          v27 = *v25;
          if (v27 != 118)
          {
            break;
          }

          *a1 = v25 + 1;
          v25 = *a1;
          v26 = *(a1 + 8);
          if (*a1 == v26)
          {
            goto LABEL_46;
          }
        }
      }

      while (v27 != 69);
      v42 = 0;
      v43 = 1;
LABEL_75:
      *a1 = v25 + v43;
      v46 = v45;
      v47 = *(a1 + 4904);
      v48 = v47[1];
      if ((v48 - 4016) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_78;
      }

      v49 = malloc(0x1000uLL);
      if (v49)
      {
        v48 = 0;
        *v49 = v47;
        v49[1] = 0;
        v47 = v49;
        *(a1 + 4904) = v49;
LABEL_78:
        v47[1] = v48 + 64;
        v50 = v47 + v48;
        v50[24] = 16;
        *(v50 + 25) = *(v50 + 25) & 0xF000 | 0x100;
        *(v50 + 2) = &unk_1F5B42050;
        *(v50 + 4) = v58;
        *(v50 + 5) = v44;
        *(v50 + 6) = v46;
        *(v50 + 14) = v5;
        v50[60] = v42;
        *(v50 + 8) = v6;
        return;
      }

LABEL_84:
      std::terminate();
    }
  }
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseQualifiedType(unsigned __int8 **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    goto LABEL_7;
  }

  v4 = *v3;
  if (v4 == 114)
  {
    *a1 = ++v3;
    v5 = 4;
    if (v3 == v2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v4 != 85)
  {
LABEL_7:
    v5 = 0;
    if (v3 == v2)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (*v3 == 86)
    {
      *a1 = ++v3;
      v5 |= 2u;
    }

LABEL_12:
    if (v3 != v2 && *v3 == 75)
    {
      *a1 = v3 + 1;
      v5 |= 1u;
    }

    if (v6 && v5)
    {
      v7 = a1[613];
      v8 = *(v7 + 1);
      if ((v8 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v9 = v6;
        v10 = malloc(0x1000uLL);
        if (!v10)
        {
          goto LABEL_57;
        }

        v8 = 0;
        *v10 = v7;
        *(v10 + 1) = 0;
        v7 = v10;
        a1[613] = v10;
        v6 = v9;
      }

      *(v7 + 1) = v8 + 32;
      v11 = &v7[v8];
      v12 = *(v6 + 9);
      v11[24] = 3;
      *(v11 + 25) = *(v11 + 25) & 0xF000 | v12 & 0xFC0;
      *(v11 + 2) = &unk_1F5B421B8;
      *(v11 + 7) = v5;
      *(v11 + 4) = v6;
      return;
    }

    return;
  }

  *a1 = v3 + 1;
  if (v2 != v3 + 1 && v3[1] - 58 >= 0xFFFFFFF6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v14;
      v16 = v13;
      v17 = &v3[v13];
      v18 = &v3[v13 + 2];
      *a1 = v18;
      v19 = v3[v13 + 1];
      v14 = v19 + 10 * v14 - 48;
      if (v18 == v2)
      {
        break;
      }

      ++v13;
    }

    while (*v18 - 48 <= 9);
    if (v2 - v3 - v16 - 2 >= v14)
    {
      v20 = &v3[10 * v15 - 46 + v16 + v19];
      *a1 = v20;
      if (v14)
      {
        if (v14 >= 9 && (*(v17 + 2) == 0x746F7270636A626FLL ? (v21 = v17[10] == 111) : (v21 = 0), v21))
        {
          v30 = &v3[v16 + 11];
          v31 = &v3[10 * v15 - 46 + v16 + v19];
          *a1 = v30;
          a1[1] = v31;
          if (v30 == v31 || *v30 - 58 < 0xFFFFFFF6)
          {
            goto LABEL_48;
          }

          v32 = 0;
          v33 = v17 + 12;
          v34 = 10 * v15;
          v35 = v34 + v19 - 58;
          while (1)
          {
            *a1 = v33;
            v32 = *(v33 - 1) + 10 * v32 - 48;
            if (!v35)
            {
              break;
            }

            v36 = v33 + 1;
            v37 = *v33 - 48;
            --v35;
            ++v33;
            if (v37 > 9)
            {
              v31 = (v36 - 1);
              break;
            }
          }

          if (&v3[v16 - 46 + v34 - v31 + v19] < v32)
          {
LABEL_48:
            *a1 = v20;
            a1[1] = v2;
            return;
          }

          *a1 = v20;
          a1[1] = v2;
          if (v32)
          {
            if (v38)
            {
              v39 = v38;
              v40 = a1[613];
              v41 = *(v40 + 1);
              if ((v41 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
              {
                v42 = malloc(0x1000uLL);
                if (!v42)
                {
                  goto LABEL_57;
                }

                v41 = 0;
                *v42 = v40;
                *(v42 + 1) = 0;
                v40 = v42;
                a1[613] = v42;
              }

              *(v40 + 1) = v41 + 48;
              v43 = &v40[v41];
              v43[24] = 11;
              *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
              *(v43 + 2) = &unk_1F5B420C8;
              *(v43 + 4) = v39;
              *(v43 + 5) = v31;
              *(v43 + 6) = v32;
            }
          }
        }

        else
        {
          if (v20 == v2 || *v20 != 73)
          {
            v23 = 0;
          }

          else
          {
            v23 = v22;
            if (!v22)
            {
              return;
            }
          }

          if (v24)
          {
            v25 = v24;
            v26 = a1[613];
            v27 = *(v26 + 1);
            if ((v27 - 4032) > 0xFFFFFFFFFFFFF00FLL)
            {
LABEL_40:
              *(v26 + 1) = v27 + 48;
              v29 = &v26[v27];
              v29[24] = 2;
              *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
              *(v29 + 2) = &unk_1F5B42140;
              *(v29 + 4) = v25;
              *(v29 + 5) = v18;
              *(v29 + 6) = v14;
              *(v29 + 7) = v23;
              return;
            }

            v28 = malloc(0x1000uLL);
            if (v28)
            {
              v27 = 0;
              *v28 = v26;
              *(v28 + 1) = 0;
              v26 = v28;
              a1[613] = v28;
              goto LABEL_40;
            }

LABEL_57:
            std::terminate();
          }
        }
      }
    }
  }
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::TransformedType,std::string_view &,llvm::itanium_demangle::Node *&>(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = *(a1 + 4904);
  v6 = v5[1];
  if ((v6 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc(0x1000uLL);
    if (!v8)
    {
      std::terminate();
    }

    v6 = 0;
    *v8 = v5;
    v8[1] = 0;
    v5 = v8;
    *(a1 + 4904) = v8;
  }

  v5[1] = v6 + 48;
  v9 = v5 + v6;
  v9[24] = 7;
  v10 = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B42230;
  result = *a2;
  *(v9 + 25) = v10;
  *(v9 + 2) = result;
  *(v9 + 6) = a3;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::BinaryFPType,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 32;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 31;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B422A8;
  *(v7 + 4) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::BitIntType,llvm::itanium_demangle::Node *&,BOOL &>(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 4904);
  v6 = v5[1];
  if ((v6 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc(0x1000uLL);
    if (!v8)
    {
      std::terminate();
    }

    v6 = 0;
    *v8 = v5;
    v8[1] = 0;
    v5 = v8;
    *(a1 + 4904) = v8;
  }

  v5[1] = v6 + 32;
  v9 = v5 + v6;
  result = v9 + 16;
  v9[24] = 32;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B42320;
  *(v9 + 4) = a2;
  v9[40] = a3 & 1;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PostfixQualifiedType,llvm::itanium_demangle::Node *&,std::string_view &>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v5 = *(a1 + 4904);
  v6 = v5[1];
  if ((v6 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc(0x1000uLL);
    if (!v8)
    {
      std::terminate();
    }

    v6 = 0;
    *v8 = v5;
    v8[1] = 0;
    v5 = v8;
    *(a1 + 4904) = v8;
  }

  v5[1] = v6 + 48;
  v9 = v5 + v6;
  v9[24] = 5;
  v10 = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B42398;
  *(v9 + 4) = a2;
  result = *a3;
  *(v9 + 25) = v10;
  *(v9 + 40) = result;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseVectorType(void *a1, size_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (&v2[-*a1] < 2 || *v3 != 30276)
  {
    return;
  }

  v4 = v3 + 1;
  *a1 = v3 + 1;
  v5 = a1;
  if (v2 == (v3 + 1) || *v4 < 49)
  {
    goto LABEL_16;
  }

  if (*v4 > 0x39u)
  {
    if (*v4 == 95)
    {
      *a1 = v3 + 3;
      if (!v8)
      {
        return;
      }

      v9 = v8;
      v10 = v5[613];
      v11 = v10[1];
      if ((v11 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v12 = v8;
        v13 = malloc(0x1000uLL);
        if (!v13)
        {
          goto LABEL_44;
        }

        v11 = 0;
        *v13 = v10;
        v13[1] = 0;
        v10 = v13;
        v5[613] = v13;
        v9 = v12;
      }

      v10[1] = v11 + 32;
      v14 = v10 + v11;
      v14[24] = 29;
      *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x540;
      *(v14 + 2) = &unk_1F5B42488;
      *(v14 + 4) = v9;
      *(v14 + 5) = 0;
      return;
    }

LABEL_16:
    if (!v15)
    {
      return;
    }

    v16 = *v5;
    if (*v5 == v5[1])
    {
      return;
    }

    if (*v16 != 95)
    {
      return;
    }

    v17 = v15;
    *v5 = v16 + 1;
    if (!v18)
    {
      return;
    }

    v19 = v18;
    v20 = v5[613];
    v21 = v20[1];
    if ((v21 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v22 = v18;
      v23 = malloc(0x1000uLL);
      if (!v23)
      {
        goto LABEL_44;
      }

      v21 = 0;
      *v23 = v20;
      v23[1] = 0;
      v20 = v23;
      v5[613] = v23;
      v19 = v22;
    }

    v20[1] = v21 + 32;
    v24 = v20 + v21;
    v24[24] = 29;
    *(v24 + 25) = *(v24 + 25) & 0xF000 | 0x540;
    *(v24 + 2) = &unk_1F5B42488;
    *(v24 + 4) = v19;
    *(v24 + 5) = v17;
    return;
  }

  v6 = MEMORY[0x1E69E9830];
  if ((*(MEMORY[0x1E69E9830] + 4 * *v4 + 60) & 0x400) != 0)
  {
    v25 = (v3 + 1);
    while (1)
    {
      v26 = *v25;
      if (v26 < 0 || (*(v6 + 4 * v26 + 60) & 0x400) == 0)
      {
        break;
      }

      *a1 = ++v25;
      if (v25 == v2)
      {
        v25 = v2;
        break;
      }
    }

    v7 = v25 - v4;
  }

  else
  {
    v4 = 0;
    v7 = 0;
  }

  v27 = a1[613];
  v28 = v27[1];
  if ((v28 - 4048) > 0xFFFFFFFFFFFFF00FLL)
  {
    goto LABEL_33;
  }

  v29 = malloc(0x1000uLL);
  if (!v29)
  {
LABEL_44:
    std::terminate();
  }

  v30 = v29;
  v28 = 0;
  *v29 = v27;
  v29[1] = 0;
  v27 = v29;
  a1 = v5;
  v5[613] = v30;
LABEL_33:
  v27[1] = v28 + 32;
  v31 = v27 + v28;
  v32 = v27 + v28 + 16;
  v31[24] = 8;
  *(v31 + 25) = *(v31 + 25) & 0xF000 | 0x540;
  *(v31 + 2) = &unk_1F5B3FF08;
  *(v31 + 4) = v4;
  *(v31 + 5) = v7;
  v33 = *a1;
  v34 = a1[1];
  if (*a1 != v34 && *v33 == 95)
  {
    *a1 = v33 + 1;
    if (v33 + 1 == v34 || v33[1] != 112)
    {
      if (v35)
      {
      }
    }

    else
    {
      *a1 = v33 + 2;
    }
  }
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseClassEnumType(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 < 2uLL)
  {
LABEL_2:
  }

  switch(*v1)
  {
    case 0x7354:
      v3 = "struct";
      v4 = 6;
      *a1 = v1 + 1;
      v5 = a1;
      if (!v6)
      {
        return 0;
      }

      break;
    case 0x7554:
      v3 = "union";
      v4 = 5;
      *a1 = v1 + 1;
      v5 = a1;
      if (!v6)
      {
        return 0;
      }

      break;
    case 0x6554:
      v3 = "enum";
      v4 = 4;
      *a1 = v1 + 1;
      v5 = a1;
      if (!v6)
      {
        return 0;
      }

      break;
    default:
      goto LABEL_2;
  }

  v7 = v5[613];
  v8 = v7[1];
  if ((v8 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v9 = v6;
    v10 = malloc(0x1000uLL);
    if (!v10)
    {
      std::terminate();
    }

    v8 = 0;
    *v10 = v7;
    v10[1] = 0;
    v7 = v10;
    v5[613] = v10;
    v6 = v9;
  }

  v7[1] = v8 + 48;
  v11 = v7 + v8;
  v11[24] = 6;
  *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
  *(v11 + 2) = &unk_1F5B425F0;
  *(v11 + 4) = v3;
  *(v11 + 5) = v4;
  *(v11 + 6) = v6;
  return v7 + v8 + 16;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PointerType,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 32;
  v7 = v3 + v4;
  result = v7 + 16;
  v9 = *(a2 + 9);
  v7[24] = 12;
  *(v7 + 25) = v9 & 0xC0 | 0x500 | *(v7 + 25) & 0xF000;
  *(v7 + 2) = &unk_1F5B42668;
  *(v7 + 4) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ReferenceType,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::ReferenceKind>(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 4904);
  v6 = v5[1];
  if ((v6 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc(0x1000uLL);
    if (!v8)
    {
      std::terminate();
    }

    v6 = 0;
    *v8 = v5;
    v8[1] = 0;
    v5 = v8;
    *(a1 + 4904) = v8;
  }

  v5[1] = v6 + 32;
  v9 = v5 + v6;
  result = v9 + 16;
  v11 = *(a2 + 9);
  v9[24] = 13;
  *(v9 + 25) = v11 & 0xC0 | 0x500 | *(v9 + 25) & 0xF000;
  *(v9 + 2) = &unk_1F5B426E0;
  *(v9 + 4) = a2;
  *(v9 + 10) = a3;
  v9[44] = 0;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PostfixQualifiedType,llvm::itanium_demangle::Node *&,char const(&)[9]>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 48;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 5;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B42398;
  *(v7 + 4) = a2;
  *(v7 + 5) = " complex";
  *(v7 + 6) = 8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PostfixQualifiedType,llvm::itanium_demangle::Node *&,char const(&)[11]>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc(0x1000uLL);
    if (!v6)
    {
      std::terminate();
    }

    v4 = 0;
    *v6 = v3;
    v6[1] = 0;
    v3 = v6;
    *(a1 + 4904) = v6;
  }

  v3[1] = v4 + 48;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 5;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B42398;
  *(v7 + 4) = a2;
  *(v7 + 5) = " imaginary";
  *(v7 + 6) = 10;
  return result;
}

char *llvm::itanium_demangle::NoexceptSpec::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 8 > v6)
  {
    v7 = v5 + 1000;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a2 + 8);
  }

  *&v4[v5] = 0x7470656378656F6ELL;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = v11 + 8;
  *(a2 + 8) = v11 + 8;
  ++*(a2 + 32);
  v13 = v11 + 9;
  v14 = *(a2 + 16);
  if (v11 + 9 > v14)
  {
    if (2 * v14 <= v11 + 1001)
    {
      v15 = v11 + 1001;
    }

    else
    {
      v15 = 2 * v14;
    }

    *(a2 + 16) = v15;
    v10 = realloc(v10, v15);
    *a2 = v10;
    if (!v10)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v13 = v12 + 1;
  }

  *(a2 + 8) = v13;
  v10[v12] = 40;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v17 = *(a2 + 8);
  v18 = v17 + 1;
  v19 = *(a2 + 16);
  if (v17 + 1 > v19)
  {
    v20 = v17 + 993;
    if (2 * v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = 2 * v19;
    }

    *(a2 + 16) = v21;
    result = realloc(result, v21);
    *a2 = result;
    if (result)
    {
      v17 = *(a2 + 8);
      v18 = v17 + 1;
      goto LABEL_19;
    }

LABEL_20:
    abort();
  }

LABEL_19:
  *(a2 + 8) = v18;
  result[v17] = 41;
  return result;
}

char *llvm::itanium_demangle::DynamicExceptionSpec::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 5 > v6)
  {
    v7 = v5 + 997;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_34;
    }

    v5 = *(a2 + 8);
  }

  v10 = &v4[v5];
  v10[4] = 119;
  *v10 = 1869768820;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = v12 + 5;
  *(a2 + 8) = v12 + 5;
  ++*(a2 + 32);
  v14 = v12 + 6;
  v15 = *(a2 + 16);
  if (v12 + 6 > v15)
  {
    if (2 * v15 <= v12 + 998)
    {
      v16 = v12 + 998;
    }

    else
    {
      v16 = 2 * v15;
    }

    *(a2 + 16) = v16;
    v11 = realloc(v11, v16);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_34;
    }

    v13 = *(a2 + 8);
    v14 = v13 + 1;
  }

  *(a2 + 8) = v14;
  v11[v13] = 40;
  v17 = *(a2 + 8);
  if (*(a1 + 24))
  {
    v18 = 0;
    v19 = 1;
    while (1)
    {
      v20 = v17;
      if ((v19 & 1) == 0)
      {
        v21 = *(a2 + 16);
        v22 = *a2;
        if (v17 + 2 <= v21)
        {
          v25 = v17;
        }

        else
        {
          v23 = 2 * v21;
          if (v23 <= v17 + 994)
          {
            v24 = v17 + 994;
          }

          else
          {
            v24 = v23;
          }

          *(a2 + 16) = v24;
          v22 = realloc(v22, v24);
          *a2 = v22;
          if (!v22)
          {
            goto LABEL_34;
          }

          v25 = *(a2 + 8);
        }

        *&v22[v25] = 8236;
        v20 = *(a2 + 8) + 2;
        *(a2 + 8) = v20;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 16) + 8 * v18), a2, 18, 0);
      if (v20 == *(a2 + 8))
      {
        *(a2 + 8) = v17;
        if (++v18 == *(a1 + 24))
        {
          break;
        }
      }

      else
      {
        v19 = 0;
        v17 = *(a2 + 8);
        if (++v18 == *(a1 + 24))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v26 = v17 + 1;
  v27 = *(a2 + 16);
  result = *a2;
  if (v17 + 1 > v27)
  {
    v29 = 2 * v27;
    if (v29 <= v17 + 993)
    {
      v30 = v17 + 993;
    }

    else
    {
      v30 = v29;
    }

    *(a2 + 16) = v30;
    result = realloc(result, v30);
    *a2 = result;
    if (result)
    {
      v17 = *(a2 + 8);
      v26 = v17 + 1;
      goto LABEL_33;
    }

LABEL_34:
    abort();
  }

LABEL_33:
  *(a2 + 8) = v26;
  result[v17] = 41;
  return result;
}

void *llvm::itanium_demangle::FunctionType::printLeft(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  result = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 + 1 > v5)
  {
    v6 = v4 + 993;
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    *(a2 + 16) = v8;
    result = realloc(result, v8);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = *(a2 + 8);
  }

  *(result + v4) = 32;
  ++*(a2 + 8);
  return result;
}

char *llvm::itanium_demangle::FunctionType::printRight(uint64_t a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_80;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  v10 = *(a2 + 8);
  if (*(a1 + 32))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v10;
      if ((v12 & 1) == 0)
      {
        v14 = *(a2 + 16);
        v15 = *a2;
        if (v10 + 2 <= v14)
        {
          v18 = v10;
        }

        else
        {
          v16 = 2 * v14;
          if (v16 <= v10 + 994)
          {
            v17 = v10 + 994;
          }

          else
          {
            v17 = v16;
          }

          *(a2 + 16) = v17;
          v15 = realloc(v15, v17);
          *a2 = v15;
          if (!v15)
          {
            goto LABEL_80;
          }

          v18 = *(a2 + 8);
        }

        *&v15[v18] = 8236;
        v13 = *(a2 + 8) + 2;
        *(a2 + 8) = v13;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 24) + 8 * v11), a2, 18, 0);
      if (v13 == *(a2 + 8))
      {
        *(a2 + 8) = v10;
        if (++v11 == *(a1 + 32))
        {
          break;
        }
      }

      else
      {
        v12 = 0;
        v10 = *(a2 + 8);
        if (++v11 == *(a1 + 32))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v19 = v10 + 1;
  v20 = *(a2 + 16);
  v21 = *a2;
  if (v10 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v10 + 993)
    {
      v23 = v10 + 993;
    }

    else
    {
      v23 = v22;
    }

    *(a2 + 16) = v23;
    v21 = realloc(v21, v23);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_80;
    }

    v10 = *(a2 + 8);
    v19 = v10 + 1;
  }

  *(a2 + 8) = v19;
  v21[v10] = 41;
  result = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
  v25 = *(a1 + 40);
  if (v25)
  {
    result = *a2;
    v26 = *(a2 + 8);
    v27 = *(a2 + 16);
    if (v26 + 6 > v27)
    {
      v28 = v26 + 998;
      v29 = 2 * v27;
      if (v29 <= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      *(a2 + 16) = v30;
      result = realloc(result, v30);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v26 = *(a2 + 8);
    }

    v31 = &result[v26];
    *(v31 + 2) = 29811;
    *v31 = 1852793632;
    *(a2 + 8) += 6;
    v25 = *(a1 + 40);
  }

  if ((v25 & 2) != 0)
  {
    result = *a2;
    v32 = *(a2 + 8);
    v33 = *(a2 + 16);
    if (v32 + 9 > v33)
    {
      v34 = v32 + 1001;
      v35 = 2 * v33;
      if (v35 <= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      *(a2 + 16) = v36;
      result = realloc(result, v36);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v32 = *(a2 + 8);
    }

    v37 = &result[v32];
    *v37 = *" volatile";
    v37[8] = 101;
    *(a2 + 8) += 9;
    v25 = *(a1 + 40);
  }

  if ((v25 & 4) != 0)
  {
    result = *a2;
    v38 = *(a2 + 8);
    v39 = *(a2 + 16);
    if (v38 + 9 > v39)
    {
      v40 = v38 + 1001;
      v41 = 2 * v39;
      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      *(a2 + 16) = v42;
      result = realloc(result, v42);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v38 = *(a2 + 8);
    }

    v43 = &result[v38];
    *v43 = *" restrict";
    v43[8] = 116;
    *(a2 + 8) += 9;
  }

  v44 = *(a1 + 44);
  if (v44 == 2)
  {
    result = *a2;
    v51 = *(a2 + 8);
    v52 = *(a2 + 16);
    if (v51 + 3 > v52)
    {
      v53 = v51 + 995;
      v54 = 2 * v52;
      if (v54 <= v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = v54;
      }

      *(a2 + 16) = v55;
      result = realloc(result, v55);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v51 = *(a2 + 8);
    }

    v56 = &result[v51];
    v56[2] = 38;
    *v56 = 9760;
    v50 = 3;
  }

  else
  {
    if (v44 != 1)
    {
      goto LABEL_68;
    }

    result = *a2;
    v45 = *(a2 + 8);
    v46 = *(a2 + 16);
    if (v45 + 2 > v46)
    {
      v47 = v45 + 994;
      v48 = 2 * v46;
      if (v48 <= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      *(a2 + 16) = v49;
      result = realloc(result, v49);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v45 = *(a2 + 8);
    }

    *&result[v45] = 9760;
    v50 = 2;
  }

  *(a2 + 8) += v50;
LABEL_68:
  if (!*(a1 + 48))
  {
    return result;
  }

  v57 = *a2;
  v58 = *(a2 + 8);
  v59 = v58 + 1;
  v60 = *(a2 + 16);
  if (v58 + 1 > v60)
  {
    v61 = v58 + 993;
    if (2 * v60 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = 2 * v60;
    }

    *(a2 + 16) = v62;
    v57 = realloc(v57, v62);
    *a2 = v57;
    if (v57)
    {
      v58 = *(a2 + 8);
      v59 = v58 + 1;
      goto LABEL_75;
    }

LABEL_80:
    abort();
  }

LABEL_75:
  *(a2 + 8) = v59;
  v57[v58] = 32;
  v63 = *(a1 + 48);
  result = (*(*v63 + 32))(v63, a2);
  if ((*(v63 + 9) & 0xC0) != 0x40)
  {
    v64 = *(*v63 + 40);

    return v64(v63, a2);
  }

  return result;
}

char *llvm::itanium_demangle::ObjCProtoName::printLeft(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 1) > v7)
  {
    v8 = (v6 + 993);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = realloc(v5, v10);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = a2[1];
  }

  v6[v5] = 60;
  v11 = (a2[1] + 1);
  a2[1] = v11;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[3];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = realloc(v16, v17);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = &a2[1][v12];
    a2[1] = v11;
  }

  v18 = a2[2];
  result = *a2;
  if (v11 + 1 > v18)
  {
    v20 = v11 + 993;
    v21 = 2 * v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    a2[2] = v22;
    result = realloc(result, v22);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  result[v11] = 62;
  ++a2[1];
  return result;
}

uint64_t llvm::itanium_demangle::VendorExtQualType::printLeft(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  result = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 1) > v7)
  {
    v8 = (v6 + 993);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    result = realloc(result, v10);
    *a2 = result;
    if (!result)
    {
      goto LABEL_23;
    }

    v6 = a2[1];
  }

  v6[result] = 32;
  v11 = (a2[1] + 1);
  a2[1] = v11;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[3];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 <= v15)
    {
LABEL_16:
      result = memcpy(&v16[v11], v13, v12);
      a2[1] += v12;
      goto LABEL_17;
    }

    if (2 * v15 <= v14 + 992)
    {
      v17 = v14 + 992;
    }

    else
    {
      v17 = 2 * v15;
    }

    a2[2] = v17;
    v16 = realloc(v16, v17);
    *a2 = v16;
    if (v16)
    {
      v11 = a2[1];
      goto LABEL_16;
    }

LABEL_23:
    abort();
  }

LABEL_17:
  v18 = a1[5];
  if (v18)
  {
    result = (*(*v18 + 32))(v18, a2);
    if ((*(v18 + 9) & 0xC0) != 0x40)
    {
      v19 = *(*v18 + 40);

      return v19(v18, a2);
    }
  }

  return result;
}

uint64_t llvm::itanium_demangle::QualType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

uint64_t llvm::itanium_demangle::QualType::hasArraySlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1[10] & 3;
  if (v2 == 2)
  {
    return (*(*v1 + 8))();
  }

  else
  {
    return v2 == 0;
  }
}

uint64_t llvm::itanium_demangle::QualType::hasFunctionSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (*(v1 + 9) >> 10) & 3;
  if (v2 == 2)
  {
    return (*(*v1 + 16))();
  }

  else
  {
    return v2 == 0;
  }
}

_DWORD *llvm::itanium_demangle::QualType::printLeft(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));

  return llvm::itanium_demangle::QualType::printQuals(a1, a2);
}

_DWORD *llvm::itanium_demangle::QualType::printQuals(_DWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = result[3];
  if (v4)
  {
    result = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v5 + 6 > v6)
    {
      v7 = v5 + 998;
      v8 = 2 * v6;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      result = realloc(result, v9);
      *a2 = result;
      if (!result)
      {
        goto LABEL_26;
      }

      v5 = *(a2 + 8);
    }

    v10 = result + v5;
    *(v10 + 2) = 29811;
    *v10 = 1852793632;
    *(a2 + 8) += 6;
    v4 = v3[3];
  }

  if ((v4 & 2) != 0)
  {
    result = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v11 + 9 > v12)
    {
      v13 = v11 + 1001;
      v14 = 2 * v12;
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      *(a2 + 16) = v15;
      result = realloc(result, v15);
      *a2 = result;
      if (!result)
      {
        goto LABEL_26;
      }

      v11 = *(a2 + 8);
    }

    v16 = result + v11;
    *v16 = *" volatile";
    v16[8] = 101;
    *(a2 + 8) += 9;
    v4 = v3[3];
  }

  if ((v4 & 4) == 0)
  {
    return result;
  }

  result = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  if (v17 + 9 > v18)
  {
    v19 = v17 + 1001;
    v20 = 2 * v18;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    *(a2 + 16) = v21;
    result = realloc(result, v21);
    *a2 = result;
    if (result)
    {
      v17 = *(a2 + 8);
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

LABEL_24:
  v22 = result + v17;
  *v22 = *" restrict";
  v22[8] = 116;
  *(a2 + 8) += 9;
  return result;
}

char *llvm::itanium_demangle::TransformedType::printLeft(void *a1, char **a2)
{
  v4 = a1[3];
  v5 = a2[1];
  if (v4)
  {
    v6 = a1[2];
    v7 = v5 + v4;
    v8 = a2[2];
    v9 = *a2;
    if (v5 + v4 > v8)
    {
      if (2 * v8 <= v7 + 992)
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = 2 * v8;
      }

      a2[2] = v10;
      v9 = realloc(v9, v10);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_24;
      }

      v5 = a2[1];
    }

    memcpy(&v9[v5], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  v11 = v5 + 1;
  v12 = a2[2];
  v13 = *a2;
  if (v5 + 1 > v12)
  {
    v14 = v5 + 993;
    if (2 * v12 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * v12;
    }

    a2[2] = v15;
    v13 = realloc(v13, v15);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v5 = a2[1];
    v11 = v5 + 1;
  }

  a2[1] = v11;
  v13[v5] = 40;
  v16 = a1[4];
  (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    (*(*v16 + 40))(v16, a2);
  }

  result = *a2;
  v18 = a2[1];
  v19 = v18 + 1;
  v20 = a2[2];
  if ((v18 + 1) > v20)
  {
    v21 = (v18 + 993);
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    a2[2] = v22;
    result = realloc(result, v22);
    *a2 = result;
    if (result)
    {
      v18 = a2[1];
      v19 = v18 + 1;
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  a2[1] = v19;
  v18[result] = 41;
  return result;
}

uint64_t llvm::itanium_demangle::BinaryFPType::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 6) > v6)
  {
    v7 = (v5 + 998);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = realloc(v4, v9);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *(v10 + 2) = 29793;
  *v10 = 1869366879;
  a2[1] += 6;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *llvm::itanium_demangle::BitIntType::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = *(a2 + 16);
    v6 = *a2;
    if (v4 + 9 > v5)
    {
      v7 = v4 + 1001;
      v8 = 2 * v5;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      v6 = realloc(v6, v9);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_28;
      }

      v4 = *(a2 + 8);
    }

    v10 = &v6[v4];
    *v10 = *"unsigned ";
    v10[8] = 32;
    v4 = *(a2 + 8) + 9;
    *(a2 + 8) = v4;
  }

  v11 = *(a2 + 16);
  v12 = *a2;
  if (v4 + 7 > v11)
  {
    v13 = v4 + 999;
    v14 = 2 * v11;
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    *(a2 + 16) = v15;
    v12 = realloc(v12, v15);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_28;
    }

    v4 = *(a2 + 8);
  }

  v16 = &v12[v4];
  *(v16 + 3) = 1953384820;
  *v16 = 1953055327;
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = v18 + 7;
  *(a2 + 8) = v18 + 7;
  ++*(a2 + 32);
  v20 = v18 + 8;
  v21 = *(a2 + 16);
  if (v18 + 8 > v21)
  {
    if (2 * v21 <= v18 + 1000)
    {
      v22 = v18 + 1000;
    }

    else
    {
      v22 = 2 * v21;
    }

    *(a2 + 16) = v22;
    v17 = realloc(v17, v22);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_28;
    }

    v19 = *(a2 + 8);
    v20 = v19 + 1;
  }

  *(a2 + 8) = v20;
  v17[v19] = 40;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v24 = *(a2 + 8);
  v25 = v24 + 1;
  v26 = *(a2 + 16);
  if (v24 + 1 > v26)
  {
    v27 = v24 + 993;
    if (2 * v26 <= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = 2 * v26;
    }

    *(a2 + 16) = v28;
    result = realloc(result, v28);
    *a2 = result;
    if (result)
    {
      v24 = *(a2 + 8);
      v25 = v24 + 1;
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  *(a2 + 8) = v25;
  result[v24] = 41;
  return result;
}

void *llvm::itanium_demangle::PostfixQualifiedType::printLeft(uint64_t a1, char **a2)
{
  result = (*(**(a1 + 16) + 32))(*(a1 + 16));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = *a2;
    v8 = a2[1];
    v9 = &v8[v5];
    v10 = a2[2];
    if (&v8[v5] > v10)
    {
      if (2 * v10 <= (v9 + 992))
      {
        v11 = (v9 + 992);
      }

      else
      {
        v11 = 2 * v10;
      }

      a2[2] = v11;
      v7 = realloc(v7, v11);
      *a2 = v7;
      if (!v7)
      {
        abort();
      }

      v8 = a2[1];
    }

    result = memcpy(&v8[v7], v6, v5);
    a2[1] += v5;
  }

  return result;
}
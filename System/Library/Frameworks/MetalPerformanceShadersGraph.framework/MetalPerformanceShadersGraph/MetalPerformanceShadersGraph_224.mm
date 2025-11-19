char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[27],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "covariant return thunk to ";
  *(v7 + 5) = 26;
  *(v7 + 6) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CtorVtableSpecialName,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9[24] = 22;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B3FE90;
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[41],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "thread-local initialization routine for ";
  *(v7 + 5) = 40;
  *(v7 + 6) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[18],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "virtual thunk to ";
  *(v7 + 5) = 17;
  *(v7 + 6) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[22],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "non-virtual thunk to ";
  *(v7 + 5) = 21;
  *(v7 + 6) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[25],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 21;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FE08;
  *(v7 + 4) = "reference temporary for ";
  *(v7 + 5) = 24;
  *(v7 + 6) = a2;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseModuleNameOpt(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v6 = (a1 + 320);
    while (*v2 == 87)
    {
      *a1 = v2 + 1;
      if (v2 + 1 == v3 || v2[1] != 80)
      {
        v12 = 0;
        if (!v13)
        {
          return 1;
        }
      }

      else
      {
        *a1 = v2 + 2;
        v12 = 1;
        if (!v13)
        {
          return 1;
        }
      }

      v14 = v13;
      v15 = *a2;
      v8 = *(a1 + 4904);
      v7 = v8[1];
      if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v16 = malloc(0x1000uLL);
        if (!v16)
        {
          std::terminate();
        }

        v7 = 0;
        *v16 = v8;
        v16[1] = 0;
        v8 = v16;
        *(a1 + 4904) = v16;
      }

      v8[1] = v7 + 48;
      v9 = v8 + v7;
      v10 = v9 + 16;
      v9[24] = 27;
      *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
      *(v9 + 2) = &unk_1F5B3FF80;
      *(v9 + 4) = v15;
      *(v9 + 5) = v14;
      v9[48] = v12;
      *a2 = (v9 + 16);
      v11 = *(a1 + 304);
      if (v11 == *(a1 + 312))
      {
        v17 = *(a1 + 296);
        v18 = v11 - v17;
        if (v17 == v6)
        {
          v19 = malloc(2 * (v11 - v17));
          if (!v19)
          {
LABEL_25:
            abort();
          }

          if (v11 != v6)
          {
            v20 = v19;
            memmove(v19, v17, v18);
            v19 = v20;
          }

          *(a1 + 296) = v19;
        }

        else
        {
          v19 = realloc(*(a1 + 296), 2 * (v11 - v17));
          *(a1 + 296) = v19;
          if (!v19)
          {
            goto LABEL_25;
          }
        }

        *(a1 + 312) = &v19[8 * (v18 >> 2)];
        *&v19[v18] = v10;
        *(a1 + 304) = &v19[v18 + 8];
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }

      else
      {
        *v11 = v10;
        *(a1 + 304) = v11 + 8;
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t llvm::itanium_demangle::SpecialName::printLeft(void *a1, char **a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = realloc(v6, v10);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = a1[4];
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::CtorVtableSpecialName::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 24) > v6)
  {
    v7 = (v5 + 1016);
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
      goto LABEL_19;
    }

    v5 = a2[1];
  }

  qmemcpy(&v5[v4], "construction vtable for ", 24);
  a2[1] += 24;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 4) > v13)
  {
    v14 = (v12 + 996);
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
    if (v11)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_19:
    abort();
  }

LABEL_15:
  *&v12[v11] = 762210605;
  a2[1] += 4;
  v17 = *(a1 + 24);
  result = (*(*v17 + 32))(v17, a2);
  if ((*(v17 + 9) & 0xC0) != 0x40)
  {
    v19 = *(*v17 + 40);

    return v19(v17, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSourceName(unsigned __int8 **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 != *a1 && *v2 - 58 >= 0xFFFFFFF6)
  {
    v3 = 0;
    v4 = (v2 + 1);
    v5 = v2 + 1;
    do
    {
      v6 = v3;
      v7 = v5;
      v8 = v4;
      *a1 = v5;
      v9 = *(v5 - 1);
      v3 = v9 + 10 * v3 - 48;
      if (v5 == v1)
      {
        break;
      }

      ++v5;
      ++v4;
    }

    while (*v7 - 48 <= 9);
    if (v3 - 1 < v1 - v8)
    {
      *a1 = &v7[10 * v6 - 48 + v9];
      if (v3 >= 0xA && ((v10 = *v7, v11 = *(v7 + 4), v10 == 0x5F4C41424F4C475FLL) ? (v12 = v11 == 20063) : (v12 = 0), v12))
      {
        v13 = a1[613];
        v14 = *(v13 + 1);
        if ((v14 - 4048) > 0xFFFFFFFFFFFFF00FLL)
        {
          v8 = "(anonymous namespace)";
          v3 = 21;
          goto LABEL_16;
        }

        v15 = a1;
        v16 = malloc(0x1000uLL);
        if (v16)
        {
          v14 = 0;
          *v16 = v13;
          *(v16 + 1) = 0;
          v3 = 21;
          v13 = v16;
          v8 = "(anonymous namespace)";
          goto LABEL_15;
        }
      }

      else
      {
        v13 = a1[613];
        v14 = *(v13 + 1);
        if ((v14 - 4048) > 0xFFFFFFFFFFFFF00FLL)
        {
LABEL_16:
          *(v13 + 1) = v14 + 32;
          v17 = &v13[v14];
          result = (v17 + 16);
          v17[24] = 8;
          *(v17 + 25) = *(v17 + 25) & 0xF000 | 0x540;
          *(v17 + 2) = &unk_1F5B3FF08;
          *(v17 + 4) = v8;
          *(v17 + 5) = v3;
          return result;
        }

        v15 = a1;
        v16 = malloc(0x1000uLL);
        if (v16)
        {
          v14 = 0;
          *v16 = v13;
          *(v16 + 1) = 0;
          v13 = v16;
LABEL_15:
          v15[613] = v16;
          goto LABEL_16;
        }
      }

      std::terminate();
    }
  }

  return 0;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameType,std::string_view &>(uint64_t a1, __n128 *a2)
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
  v7[24] = 8;
  v8 = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FF08;
  result = *a2;
  *(v7 + 25) = v8;
  *(v7 + 2) = result;
  return result;
}

void *llvm::itanium_demangle::NameType::printLeft(void *result, char **a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = result[2];
    v5 = *a2;
    v6 = a2[1];
    v7 = &v6[v2];
    v8 = a2[2];
    if (&v6[v2] > v8)
    {
      if (2 * v8 <= (v7 + 992))
      {
        v9 = (v7 + 992);
      }

      else
      {
        v9 = 2 * v8;
      }

      a2[2] = v9;
      v5 = realloc(v5, v9);
      *a2 = v5;
      if (!v5)
      {
        abort();
      }

      v6 = a2[1];
    }

    result = memcpy(&v6[v5], v4, v2);
    a2[1] += v2;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ModuleName::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(*(a1 + 16), a2);
    if ((*(v4 + 9) & 0xC0) != 0x40)
    {
      (*(*v4 + 40))(v4, a2);
    }

    if (*(a1 + 16))
    {
      if (*(a1 + 32))
      {
        v5 = 58;
      }

      else
      {
        v5 = 46;
      }

      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = v7 + 1;
      v9 = *(a2 + 16);
      if (v7 + 1 <= v9)
      {
        goto LABEL_17;
      }

LABEL_12:
      v10 = v7 + 993;
      if (2 * v9 <= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 2 * v9;
      }

      *(a2 + 16) = v11;
      v6 = realloc(v6, v11);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = *(a2 + 8);
      v8 = v7 + 1;
      goto LABEL_17;
    }
  }

  if (*(a1 + 32) != 1)
  {
    goto LABEL_18;
  }

  v5 = 58;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v7 + 1;
  v9 = *(a2 + 16);
  if (v7 + 1 > v9)
  {
    goto LABEL_12;
  }

LABEL_17:
  *(a2 + 8) = v8;
  *(v6 + v7) = v5;
LABEL_18:
  v12 = *(a1 + 24);
  result = (*(*v12 + 32))(v12, a2);
  if ((*(v12 + 9) & 0xC0) != 0x40)
  {
    v14 = *(*v12 + 40);

    return v14(v12, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnscopedName(void *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4 - *a1 >= 2 && *v3 == 29779)
  {
    *a1 = v3 + 1;
    v12 = a1[613];
    v13 = v12[1];
    if ((v13 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v14 = a3;
      v15 = a1;
      v16 = a2;
      v17 = malloc(0x1000uLL);
      if (!v17)
      {
        std::terminate();
      }

      v18 = v17;
      v13 = 0;
      *v17 = v12;
      v17[1] = 0;
      v12 = v17;
      a1 = v15;
      v15[613] = v18;
      a2 = v16;
      a3 = v14;
    }

    v12[1] = v13 + 32;
    v19 = v12 + v13;
    v5 = v12 + v13 + 16;
    v19[24] = 8;
    *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
    *(v19 + 2) = &unk_1F5B3FF08;
    *(v19 + 4) = "std";
    *(v19 + 5) = 3;
    v3 = *a1;
    if (a1[1] == *a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  if (*v3 != 83)
  {
LABEL_14:
    v10 = 0;
    v11 = v5;
  }

  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (result)
  {
    v10 = result;
    if (result[8] == 27)
    {
      a2 = v7;
      a1 = v8;
      v11 = v5;
    }

    result = 0;
    if (v6 && !v5)
    {
      *v6 = 1;
      return v10;
    }
  }

  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateArgs(uint64_t a1, int a2)
{
  v2 = *a1;
  if (*a1 == *(a1 + 8) || *v2 != 73)
  {
    return;
  }

  v4 = v2 + 1;
  *a1 = v4;
  if (a2)
  {
    v5 = *(a1 + 664);
    *(a1 + 672) = v5;
    if (v5 == *(a1 + 680))
    {
      if (v5 == (a1 + 688))
      {
        v5 = malloc(0);
        if (!v5)
        {
          goto LABEL_85;
        }

        *(a1 + 664) = v5;
      }

      else
      {
        v5 = realloc(v5, 0);
        *(a1 + 664) = v5;
        if (!v5)
        {
LABEL_85:
          abort();
        }
      }

      *(a1 + 680) = v5;
    }

    v18 = (a1 + 576);
    *v5 = a1 + 576;
    *(a1 + 672) = v5 + 1;
    *(a1 + 584) = *(a1 + 576);
    v57 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v19 = (a1 + 40);
    v9 = a1 + 4904;
    v20 = (a1 + 600);
    v4 = *a1;
    v21 = *(a1 + 8);
    while (1)
    {
      if (v4 != v21 && *v4 == 69)
      {
        v17 = 0;
        v7 = v57;
        goto LABEL_80;
      }

      if (!v22)
      {
        return;
      }

      v23 = v22;
      v24 = *(a1 + 24);
      if (v24 == *(a1 + 32))
      {
        v40 = *(a1 + 16);
        v41 = v24 - v40;
        if (v40 == v19)
        {
          v42 = malloc(2 * (v24 - v40));
          if (!v42)
          {
            goto LABEL_85;
          }

          if (v24 != v19)
          {
            v43 = v42;
            memmove(v42, v40, v41);
            v42 = v43;
          }

          *(a1 + 16) = v42;
        }

        else
        {
          v42 = realloc(*(a1 + 16), 2 * (v24 - v40));
          *(a1 + 16) = v42;
          if (!v42)
          {
            goto LABEL_85;
          }
        }

        *(a1 + 32) = &v42[8 * (v41 >> 2)];
        *&v42[v41] = v23;
        *(a1 + 24) = &v42[v41 + 8];
        v25 = *(v23 + 8);
        if (v25 == 34)
        {
          goto LABEL_65;
        }

LABEL_36:
        if (v25 == 41)
        {
          v26 = *(v23 + 16);
          v27 = *(v23 + 24);
          v28 = *v9;
          v29 = *(*v9 + 8);
          if ((v29 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v30 = malloc(0x1000uLL);
            if (!v30)
            {
              goto LABEL_86;
            }

            v29 = 0;
            *v30 = v28;
            v30[1] = 0;
            v28 = v30;
            *v9 = v30;
          }

          v28[1] = v29 + 32;
          v31 = v28 + v29;
          v23 = v28 + v29 + 16;
          v31[24] = 40;
          v32 = *(v31 + 25) & 0xF000;
          *(v31 + 2) = &unk_1F5B41B28;
          *(v31 + 4) = v26;
          *(v31 + 5) = v27;
          v33 = v32 | 0xA80;
          *(v31 + 25) = v32 | 0xA80;
          v34 = 8 * v27;
          if (v27)
          {
            v35 = 8 * v27;
            v36 = v26;
            while ((*(*v36 + 9) & 0x300) == 0x100)
            {
              v36 += 8;
              v35 -= 8;
              if (!v35)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
LABEL_44:
            v33 = v32 | 0x980;
            *(v23 + 9) = v32 | 0x980;
          }

          if (v27)
          {
            v37 = 8 * v27;
            v38 = v26;
            while ((*(*v38 + 9) & 0xC00) == 0x400)
            {
              v38 += 8;
              v37 -= 8;
              if (!v37)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
LABEL_49:
            v33 = v33 & 0xF3FF | 0x400;
            *(v23 + 9) = v33;
          }

          if (v27)
          {
            while ((*(*v26 + 9) & 0xC0) == 0x40)
            {
              v26 += 8;
              v34 -= 8;
              if (!v34)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
LABEL_53:
            *(v23 + 9) = v33 & 0xFF3F | 0x40;
          }
        }

        v39 = *(a1 + 584);
        if (v39 != *(a1 + 592))
        {
          goto LABEL_55;
        }

LABEL_66:
        v44 = *v18;
        v45 = v39 - *v18;
        if (*v18 == v20)
        {
          v46 = malloc(2 * v45);
          if (!v46)
          {
            goto LABEL_85;
          }

          if (v39 != v20)
          {
            v47 = v46;
            memmove(v46, v44, v45);
            v46 = v47;
          }

          *v18 = v46;
        }

        else
        {
          v46 = realloc(*v18, 2 * v45);
          *v18 = v46;
          if (!v46)
          {
            goto LABEL_85;
          }
        }

        *(a1 + 592) = &v46[8 * (v45 >> 2)];
        *&v46[v45] = v23;
        *(a1 + 584) = &v46[v45 + 8];
        v4 = *a1;
        v21 = *(a1 + 8);
        if (*a1 != v21)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *v24 = v22;
        *(a1 + 24) = v24 + 8;
        v25 = *(v22 + 8);
        if (v25 != 34)
        {
          goto LABEL_36;
        }

LABEL_65:
        v23 = *(v23 + 24);
        v39 = *(a1 + 584);
        if (v39 == *(a1 + 592))
        {
          goto LABEL_66;
        }

LABEL_55:
        *v39 = v23;
        *(a1 + 584) = v39 + 1;
        v4 = *a1;
        v21 = *(a1 + 8);
        if (*a1 != v21)
        {
LABEL_30:
          if (*v4 == 81)
          {
            v7 = v57;
            goto LABEL_77;
          }
        }
      }
    }
  }

  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v8 = (a1 + 40);
  v9 = a1 + 4904;
  do
  {
    do
    {
      while (1)
      {
        if (v4 != v6 && *v4 == 69)
        {
          v17 = 0;
          goto LABEL_80;
        }

        if (!v10)
        {
          return;
        }

        v11 = *(a1 + 24);
        if (v11 == *(a1 + 32))
        {
          break;
        }

        *v11 = v10;
        *(a1 + 24) = v11 + 8;
        v4 = *a1;
        v6 = *(a1 + 8);
        if (*a1 != v6)
        {
          goto LABEL_9;
        }
      }

      v12 = v10;
      v13 = *(a1 + 16);
      v14 = v11 - v13;
      if (v13 == v8)
      {
        v15 = malloc(2 * (v11 - v13));
        if (!v15)
        {
          goto LABEL_85;
        }

        if (v11 != v8)
        {
          v16 = v15;
          memmove(v15, v13, v14);
          v15 = v16;
        }

        *(a1 + 16) = v15;
      }

      else
      {
        v15 = realloc(*(a1 + 16), 2 * (v11 - v13));
        *(a1 + 16) = v15;
        if (!v15)
        {
          goto LABEL_85;
        }
      }

      *(a1 + 32) = &v15[8 * (v14 >> 2)];
      *&v15[v14] = v12;
      *(a1 + 24) = &v15[v14 + 8];
      v4 = *a1;
      v6 = *(a1 + 8);
    }

    while (*a1 == v6);
LABEL_9:
    ;
  }

  while (*v4 != 81);
LABEL_77:
  *a1 = v4 + 1;
  v48 = *(a1 + 778);
  *(a1 + 778) = 1;
  *(a1 + 778) = v48;
  if (!v49)
  {
    return;
  }

  v4 = *a1;
  if (*a1 == *(a1 + 8))
  {
    return;
  }

  v17 = v49;
  if (*v4 != 69)
  {
    return;
  }

LABEL_80:
  *a1 = v4 + 1;
  v52 = v51;
  v53 = *(a1 + 4904);
  v54 = v53[1];
  if ((v54 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v55 = malloc(0x1000uLL);
    if (!v55)
    {
LABEL_86:
      std::terminate();
    }

    v54 = 0;
    *v55 = v53;
    v55[1] = 0;
    v53 = v55;
    *v9 = v55;
  }

  v53[1] = v54 + 48;
  v56 = v53 + v54;
  v56[24] = 43;
  *(v56 + 25) = *(v56 + 25) & 0xF000 | 0x540;
  *(v56 + 2) = &unk_1F5B41BA0;
  *(v56 + 4) = v50;
  *(v56 + 5) = v52;
  *(v56 + 6) = v17;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameWithTemplateArgs,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9[24] = 45;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B41C18;
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParam(uint64_t a1, size_t __size)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2 || *v3 != 84)
  {
    return 0;
  }

  v4 = v3 + 1;
  *a1 = v3 + 1;
  if (v3 + 1 == v2 || *v4 != 76)
  {
    v9 = 0;
    if (v4 != v2)
    {
      goto LABEL_15;
    }

    return 0;
  }

  *a1 = v3 + 2;
  if (v2 == v3 + 2 || v3[2] - 58 < 0xFFFFFFF6)
  {
    return 0;
  }

  v5 = 0;
  v6 = v3 + 4;
  do
  {
    v4 = v6;
    v7 = v6 - 1;
    *a1 = v6 - 1;
    v5 = *(v6 - 2) + 10 * v5 - 48;
    if (v6 - 1 == v2)
    {
      break;
    }

    v8 = *(v6++ - 1) - 48;
  }

  while (v8 <= 9);
  if (v7 == v2)
  {
    return 0;
  }

  if (*(v4 - 1) != 95)
  {
    return 0;
  }

  v9 = v5 + 1;
  *a1 = v4;
  if (v4 == v2)
  {
    return 0;
  }

LABEL_15:
  v10 = *v4;
  if (v10 == 95)
  {
    v11 = 0;
    *a1 = v4 + 1;
    if (*(a1 + 778) == 1)
    {
LABEL_17:
      v12 = *(a1 + 4904);
      v13 = v12[1];
      if ((v13 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_20:
        v12[1] = v13 + 32;
        v16 = v12 + v13;
        v17 = (v16 + 16);
        v16[24] = 8;
        *(v16 + 25) = *(v16 + 25) & 0xF000 | 0x540;
        *(v16 + 2) = &unk_1F5B3FF08;
        *(v16 + 4) = v3;
        *(v16 + 5) = v4 - v3;
        return v17;
      }

      v14 = a1;
      v15 = malloc(0x1000uLL);
      if (v15)
      {
        v13 = 0;
        *v15 = v12;
        v15[1] = 0;
        v12 = v15;
        *(v14 + 4904) = v15;
        goto LABEL_20;
      }

LABEL_53:
      std::terminate();
    }
  }

  else
  {
    if ((v10 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v19 = 0;
    v20 = v4 + 1;
    do
    {
      *a1 = v20;
      if (v20 == v2)
      {
        return 0;
      }

      v19 = *(v20 - 1) + 10 * v19 - 48;
      v22 = *v20++;
      v21 = v22;
    }

    while ((v22 - 48) <= 9);
    if (v21 != 95)
    {
      return 0;
    }

    v11 = v19 + 1;
    v4 = v20 - 1;
    *a1 = v20;
    if (*(a1 + 778) == 1)
    {
      goto LABEL_17;
    }
  }

  if (*(a1 + 777) == 1 && !v9)
  {
    v23 = *(a1 + 4904);
    v24 = v23[1];
    if ((v24 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v25 = a1;
      v26 = malloc(0x1000uLL);
      if (!v26)
      {
        goto LABEL_53;
      }

      v27 = v26;
      v24 = 0;
      *v26 = v23;
      v26[1] = 0;
      v23 = v26;
      a1 = v25;
      *(v25 + 4904) = v27;
    }

    v23[1] = v24 + 48;
    v28 = v23 + v24;
    v17 = v23 + v24 + 16;
    v28[24] = 44;
    *(v28 + 25) = *(v28 + 25) & 0xF000 | 0xA80;
    *(v28 + 2) = &unk_1F5B3FFF8;
    *(v28 + 4) = v11;
    *(v28 + 5) = 0;
    v28[48] = 0;
    v29 = *(a1 + 728);
    if (v29 == *(a1 + 736))
    {
      v30 = *(a1 + 720);
      v31 = v29 - v30;
      v32 = a1;
      if (v30 == (a1 + 744))
      {
        v40 = malloc(2 * (v29 - v30));
        if (!v40)
        {
          goto LABEL_54;
        }

        v33 = v40;
        if (v29 != v30)
        {
          memmove(v40, v30, v29 - v30);
        }

        a1 = v32;
        *(v32 + 720) = v33;
      }

      else
      {
        v33 = realloc(*(a1 + 720), 2 * (v29 - v30));
        a1 = v32;
        *(v32 + 720) = v33;
        if (!v33)
        {
LABEL_54:
          abort();
        }
      }

      v29 = &v33[v31];
      *(a1 + 736) = &v33[8 * (v31 >> 2)];
    }

    *v29 = v17;
    *(a1 + 728) = v29 + 1;
    return v17;
  }

  v34 = *(a1 + 664);
  v35 = (*(a1 + 672) - v34) >> 3;
  if (v9 < v35)
  {
    v36 = *(v34 + 8 * v9);
    if (v36)
    {
      v38 = v36;
      v37 = *v36;
      if (v11 < (v38[1] - v37) >> 3)
      {
        return *(v37 + 8 * v11);
      }
    }
  }

  v17 = 0;
  if (v9 <= v35 && *(a1 + 784) == v9)
  {
    if (v9 == v35)
    {
      v41 = 0;
      v39 = a1;
      llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 664), &v41);
      a1 = v39;
    }
  }

  return v17;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseDecltype(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 0;
  }

  if (*v1 != 68)
  {
    return 0;
  }

  *a1 = v1 + 1;
  if (v1 + 1 == v2 || (v1[1] | 0x20) != 0x74)
  {
    return 0;
  }

  *a1 = v1 + 2;
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (*a1 == *(a1 + 8) || *v5 != 69)
  {
    return 0;
  }

  *a1 = v5 + 1;
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = result;
    v9 = malloc(0x1000uLL);
    if (!v9)
    {
      std::terminate();
    }

    v7 = 0;
    *v9 = v6;
    v9[1] = 0;
    v6 = v9;
    *(a1 + 4904) = v9;
    result = v8;
  }

  v6[1] = v7 + 64;
  v10 = v6 + v7;
  v10[24] = 60;
  *(v10 + 25) = *(v10 + 25) & 0xF000 | 0x540;
  *(v10 + 2) = &unk_1F5B40598;
  *(v10 + 4) = "decltype";
  *(v10 + 5) = 8;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  *(v10 + 6) = result;
  return (v10 + 16);
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSubstitution(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  if (*v2 != 83)
  {
    return 0;
  }

  v3 = v2 + 1;
  *a1 = v2 + 1;
  if (v1 == v2 + 1)
  {
    return 0;
  }

  v4 = *v3;
  if (*v3 < 97)
  {
    if (v4 == 95)
    {
      *a1 = v2 + 2;
      v7 = a1[37];
      if (v7 != a1[38])
      {
        return *v7;
      }

      return 0;
    }

    if (v4 < 48)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v4 > 0x7A)
  {
LABEL_16:
    if (v4 < 0x3A || v4 - 65 <= 0x19)
    {
      v9 = 0;
      while (*v3 >= 48)
      {
        if (*v3 < 0x3Au)
        {
          v10 = -48;
        }

        else
        {
          if (*v3 - 65 > 0x19)
          {
            break;
          }

          v10 = -55;
        }

        v9 = *v3++ + 36 * v9 + v10;
        *a1 = v3;
        if (v3 == v1)
        {
          break;
        }
      }

      if (v3 != v1 && *v3 == 95)
      {
        *a1 = v3 + 1;
        v11 = a1[37];
        if (v9 + 1 < ((a1[38] - v11) >> 3))
        {
          return *(v11 + 8 * (v9 + 1));
        }
      }
    }

    return 0;
  }

  if (*v3 > 0x68u)
  {
    switch(v4)
    {
      case 'i':
        v5 = 3;
        break;
      case 'o':
        v5 = 4;
        break;
      case 's':
        v5 = 2;
        break;
      default:
        return 0;
    }
  }

  else
  {
    switch(v4)
    {
      case 'a':
        v5 = 0;
        break;
      case 'b':
        v5 = 1;
        break;
      case 'd':
        v5 = 5;
        break;
      default:
        return 0;
    }
  }

  *a1 = v2 + 2;
  v12 = a1[613];
  v13 = v12[1];
  if ((v13 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = a1;
    v15 = malloc(0x1000uLL);
    if (!v15)
    {
      std::terminate();
    }

    v16 = v15;
    v13 = 0;
    *v15 = v12;
    v15[1] = 0;
    v12 = v15;
    a1 = v14;
    v14[613] = v16;
  }

  v12[1] = v13 + 16;
  v17 = v12 + v13 + 16;
  v17[8] = 48;
  *(v17 + 9) = *(v17 + 9) & 0xF000 | 0x540;
  *(v17 + 3) = v5;
  *v17 = &unk_1F5B416F0;
  v18 = a1;
  if (v19 == v17)
  {
    return v17;
  }

  v20 = v19;
  v21 = v18;
  v22 = v18[38];
  if (v22 == v18[39])
  {
    v23 = v18[37];
    v24 = v22 - v23;
    if (v23 == (v18 + 40))
    {
      v25 = malloc(2 * (v22 - v23));
      if (!v25)
      {
        goto LABEL_56;
      }

      if (v22 != v23)
      {
        v26 = v25;
        memmove(v25, v23, v24);
        v25 = v26;
      }

      v21 = v18;
      v18[37] = v25;
    }

    else
    {
      v25 = realloc(v23, 2 * (v22 - v23));
      v21 = v18;
      v18[37] = v25;
      if (!v25)
      {
LABEL_56:
        abort();
      }
    }

    v22 = &v25[v24];
    v21[39] = &v25[8 * (v24 >> 2)];
  }

  *v22 = v20;
  v21[38] = v22 + 8;
  return v20;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnqualifiedName(uint64_t a1, _BYTE *a2, char *a3, uint64_t a4)
{
  v59 = a4;
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (!a3)
  {
    goto LABEL_8;
  }

  if (v8 == v9)
  {
    v10 = 1;
    if (!v12)
    {
      goto LABEL_75;
    }

    goto LABEL_35;
  }

  if (*v8 == 70)
  {
    v10 = 0;
    *a1 = ++v8;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_8:
    v10 = 1;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  if (*v8 == 76)
  {
    *a1 = ++v8;
  }

LABEL_11:
  if (v9 != v8 && *v8 >= 49)
  {
    v11 = *v8;
    if (v11 <= 0x39)
    {
      if (!v12)
      {
        goto LABEL_75;
      }

      goto LABEL_35;
    }

    if (v11 == 85)
    {
      v12 = v13;
      if (!v13)
      {
        goto LABEL_75;
      }

      goto LABEL_35;
    }
  }

  if ((v9 - v8) >= 2 && *v8 == 17220)
  {
    *a1 = v8 + 2;
    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    if (!result)
    {
      return result;
    }

    v24 = result;
    v25 = (v22 - v23) >> 3;
    v26 = (a1 + 40);
    while (1)
    {
      v27 = *(a1 + 24);
      if (v27 == *(a1 + 32))
      {
        v28 = *(a1 + 16);
        v29 = v27 - v28;
        if (v28 == v26)
        {
          v30 = malloc(2 * (v27 - v28));
          if (!v30)
          {
LABEL_92:
            abort();
          }

          if (v27 != v26)
          {
            v31 = v30;
            memmove(v30, v28, v29);
            v30 = v31;
          }

          *(a1 + 16) = v30;
        }

        else
        {
          v30 = realloc(*(a1 + 16), 2 * (v27 - v28));
          *(a1 + 16) = v30;
          if (!v30)
          {
            goto LABEL_92;
          }
        }

        v27 = &v30[v29];
        *(a1 + 32) = &v30[8 * (v29 >> 2)];
      }

      *v27 = v24;
      *(a1 + 24) = v27 + 8;
      v32 = *a1;
      if (*a1 != *(a1 + 8) && *v32 == 69)
      {
        break;
      }

      result = 0;
      if (!v24)
      {
        return result;
      }
    }

    *a1 = v32 + 1;
    v35 = v34;
    v36 = *(a1 + 4904);
    v37 = v36[1];
    if ((v37 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v38 = malloc(0x1000uLL);
      if (!v38)
      {
        goto LABEL_93;
      }

      v37 = 0;
      *v38 = v36;
      v38[1] = 0;
      v36 = v38;
      *(a1 + 4904) = v38;
    }

    v36[1] = v37 + 32;
    v39 = v36 + v37;
    v12 = v39 + 16;
    v39[24] = 53;
    *(v39 + 25) = *(v39 + 25) & 0xF000 | 0x540;
    *(v39 + 2) = &unk_1F5B41858;
    *(v39 + 4) = v33;
    *(v39 + 5) = v35;
    if (v39 == -16)
    {
      goto LABEL_75;
    }
  }

  else if (v9 == v8 || *v8 - 67 > 1)
  {
    if (!v12)
    {
      goto LABEL_75;
    }
  }

  else
  {
    result = 0;
    if (!a3 || v59)
    {
      return result;
    }

    if (a3[8] == 48)
    {
      v8 = *a1;
      v9 = *(a1 + 8);
    }

    if (v8 == v9)
    {
      return 0;
    }

    v14 = *v8;
    if (v14 == 67)
    {
      v15 = v8 + 1;
      *a1 = v8 + 1;
      if (v8 + 1 == v9 || *v15 != 73)
      {
        v16 = 0;
      }

      else
      {
        v15 = v8 + 2;
        *a1 = v8 + 2;
        v16 = 1;
      }

      if (v9 == v15)
      {
        return 0;
      }

      v45 = *v15;
      if ((v45 - 49) > 4)
      {
        return 0;
      }

      *a1 = v15 + 1;
      if (a2)
      {
        *a2 = 1;
      }

      if (v16)
      {
        if (!result)
        {
          return result;
        }
      }

      v41 = v45 - 48;
      v42 = a1;
      v43 = a3;
      v44 = 0;
    }

    else
    {
      result = 0;
      if ((v9 - v8) < 2)
      {
        return result;
      }

      if (v14 != 68)
      {
        return result;
      }

      result = 0;
      v40 = v8[1];
      if (v40 > 0x35 || ((1 << v40) & 0x37000000000000) == 0)
      {
        return result;
      }

      v41 = v40 - 48;
      *a1 = v8 + 2;
      if (a2)
      {
        *a2 = 1;
      }

      v42 = a1;
      v43 = a3;
      v44 = 1;
    }

    if (!v12)
    {
      goto LABEL_75;
    }
  }

LABEL_35:
  v17 = v59;
  if (v59)
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v20 = malloc(0x1000uLL);
      if (!v20)
      {
        goto LABEL_93;
      }

      v19 = 0;
      *v20 = v18;
      v20[1] = 0;
      v18 = v20;
      *(a1 + 4904) = v20;
    }

    v18[1] = v19 + 32;
    v21 = v18 + v19;
    v21[24] = 28;
    *(v21 + 25) = *(v21 + 25) & 0xF000 | 0x540;
    *(v21 + 2) = &unk_1F5B41948;
    *(v21 + 4) = v17;
    *(v21 + 5) = v12;
    v12 = v21 + 16;
    goto LABEL_76;
  }

LABEL_75:
  if (!v12)
  {
    return 0;
  }

LABEL_76:
  if (result)
  {
    v46 = v10;
  }

  else
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    v54 = *(a1 + 4904);
    v55 = v54[1];
    if ((v55 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v56 = result;
      v57 = malloc(0x1000uLL);
      if (!v57)
      {
        goto LABEL_93;
      }

      v55 = 0;
      *v57 = v54;
      v57[1] = 0;
      v54 = v57;
      *(a1 + 4904) = v57;
      result = v56;
    }

    v54[1] = v55 + 32;
    v58 = v54 + v55;
    v52 = v54 + v55 + 16;
    v58[24] = 25;
    *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
    v53 = &unk_1F5B419C0;
    goto LABEL_90;
  }

  if (a3 && result)
  {
    v47 = *(a1 + 4904);
    v48 = v47[1];
    if ((v48 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_85:
      v47[1] = v48 + 32;
      v51 = v47 + v48;
      v52 = v47 + v48 + 16;
      v51[24] = 24;
      *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
      v53 = &unk_1F5B41A38;
LABEL_90:
      *(v52 + 2) = a3;
      *(v52 + 3) = result;
      result = v52;
      *v52 = v53;
      return result;
    }

    v49 = result;
    v50 = malloc(0x1000uLL);
    if (v50)
    {
      v48 = 0;
      *v50 = v47;
      v50[1] = 0;
      v47 = v50;
      *(a1 + 4904) = v50;
      result = v49;
      goto LABEL_85;
    }

LABEL_93:
    std::terminate();
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameType,char const(&)[5]>(uint64_t a1, char *__s)
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
  v8 = strlen(__s);
  v7[24] = 8;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B3FF08;
  *(v7 + 4) = __s;
  *(v7 + 5) = v8;
  return v7 + 16;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = *(v3 + 9);
  if ((v4 & 0xC0) == 0x80)
  {
    result = (**v3)(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 < 0x40;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasArraySlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = v3[10] & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 8))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasFunctionSlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = (*(v3 + 9) >> 10) & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 16))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::getSyntaxNode(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 24))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::printLeft(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 32))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::printRight(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 40))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseExpr(uint64_t a1, size_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  if (v4 < 2)
  {
    return;
  }

  v6 = *v2;
  v7 = v6 != 29543;
  if (v6 == 29543)
  {
    *a1 = ++v2;
    v4 = v3 - v2;
    if ((v3 - v2) < 2)
    {
      return;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = v2 + 1;
  v11 = *v2;
  v12 = 61;
  do
  {
    v13 = (v9 + v12) >> 1;
    if (*v14 < v11)
    {
      v9 = v13 + 1;
    }

    else if (*v14 == v11)
    {
      if (v14[1] >= *v10)
      {
        v12 = (v9 + v12) >> 1;
      }

      else
      {
        v9 = v13 + 1;
      }
    }

    else
    {
      v12 = (v9 + v12) >> 1;
    }
  }

  while (v12 != v9);
  if (*v15 == v11 && v15[1] == *v10)
  {
    v16 = v2 + 1;
    *a1 = v2 + 1;
    v17 = v15[2];
    v18 = *(v15 + 1);
    v19 = strlen(v18);
    v20 = v19;
    if (v17 > 0xA)
    {
      v21 = *(v15 + 1);
    }

    else
    {
      v21 = (v18 + 8);
      if (v19 == 8)
      {
        v20 = 0;
      }

      else
      {
        v22 = *v21;
        if (v22 == 32)
        {
          v20 = v19 - 9;
        }

        else
        {
          v20 = v19 - 8;
        }

        if (v22 == 32)
        {
          v21 = (v18 + 9);
        }
      }
    }

    v191.n128_u64[0] = v21;
    v191.n128_u64[1] = v20;
    switch(v17)
    {
      case 1u:
        if (v16 == v3 || *v16 != 95)
        {
          if (v115)
          {
          }
        }

        else
        {
          *a1 = v2 + 3;
          v63 = v15[3];
          v192.n128_u64[0] = v21;
          v192.n128_u64[1] = v20;
          if (v64)
          {
          }
        }

        return;
      case 2u:
        v65 = v15[3];
        v192.n128_u64[0] = v21;
        v192.n128_u64[1] = v20;
        if (v66)
        {
          v67 = v66;
          if (v68)
          {
          }
        }

        return;
      case 3u:
        if (v50)
        {
          v51 = v50;
          if (v52)
          {
          }
        }

        return;
      case 4u:
        if (v76)
        {
          v77 = v76;
          if (v78)
          {
          }
        }

        return;
      case 5u:
        v79 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v80 = (a1 + 40);
        while (2)
        {
          if (v16 != v3 && *v16 == 95)
          {
            *a1 = v16 + 1;
            v192.n128_u64[1] = v135;
            if (!v136)
            {
              return;
            }

            v137 = v136;
            v139 = *(a1 + 16);
            v189 = *(a1 + 24);
            if (v138)
            {
              while (1)
              {
                v140 = *a1;
                if (*a1 != *(a1 + 8) && *v140 == 69)
                {
                  break;
                }

                if (!v144)
                {
                  return;
                }

                v143 = *(a1 + 24);
                if (v143 == *(a1 + 32))
                {
                  v145 = v144;
                  v146 = *(a1 + 16);
                  v147 = v143 - v146;
                  if (v146 == v80)
                  {
                    v142 = malloc(2 * (v143 - v146));
                    if (!v142)
                    {
                      goto LABEL_308;
                    }

                    if (v143 != v80)
                    {
                      v148 = v142;
                      memmove(v142, v146, v147);
                      v142 = v148;
                    }

                    *(a1 + 16) = v142;
                  }

                  else
                  {
                    v142 = realloc(*(a1 + 16), 2 * (v143 - v146));
                    *(a1 + 16) = v142;
                    if (!v142)
                    {
                      goto LABEL_308;
                    }
                  }

                  v143 = &v142[v147];
                  *(a1 + 32) = &v142[8 * (v147 >> 2)];
                  v144 = v145;
                }

                *v143 = v144;
                *(a1 + 24) = v143 + 1;
              }
            }

            else
            {
              v140 = *a1;
              if (*a1 == *(a1 + 8) || *v140 != 69)
              {
                return;
              }
            }

            *a1 = v140 + 1;
            *(&v190 + 1) = v141;
            return;
          }

          if (!v83)
          {
            return;
          }

          v82 = *(a1 + 24);
          if (v82 != *(a1 + 32))
          {
            goto LABEL_127;
          }

          v84 = v83;
          v85 = *(a1 + 16);
          v86 = v82 - v85;
          if (v85 == v80)
          {
            v81 = malloc(2 * (v82 - v85));
            if (v81)
            {
              if (v82 != v80)
              {
                v87 = v81;
                memmove(v81, v85, v86);
                v81 = v87;
              }

              *(a1 + 16) = v81;
              goto LABEL_126;
            }
          }

          else
          {
            v81 = realloc(*(a1 + 16), 2 * (v82 - v85));
            *(a1 + 16) = v81;
            if (v81)
            {
LABEL_126:
              v82 = &v81[v86];
              *(a1 + 32) = &v81[8 * (v86 >> 2)];
              v83 = v84;
LABEL_127:
              *v82 = v83;
              *(a1 + 24) = v82 + 1;
              v16 = *a1;
              v3 = *(a1 + 8);
              continue;
            }
          }

          goto LABEL_308;
        }

      case 6u:
        if (!v69)
        {
          return;
        }

        v70 = v69;
        v71 = v15[3];
        v72 = *(a1 + 4904);
        v73 = v72[1];
        if ((v73 - 4048) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_120;
        }

        v74 = malloc(0x1000uLL);
        if (!v74)
        {
          goto LABEL_309;
        }

        v73 = 0;
        *v74 = v72;
        v74[1] = 0;
        v72 = v74;
        *(a1 + 4904) = v74;
LABEL_120:
        v72[1] = v73 + 32;
        v75 = v72 + v73;
        v75[24] = 65;
        *(v75 + 25) = *(v75 + 25) & 0xF000 | (v71 >> 1) | 0x540;
        *(v75 + 2) = &unk_1F5B40340;
        *(v75 + 4) = v70;
        v75[40] = v8;
        v75[41] = v71 & 1;
        return;
      case 7u:
        if (!v93)
        {
          return;
        }

        v94 = v93;
        v95 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v96 = (a1 + 40);
        while (2)
        {
          v100 = *a1;
          if (*a1 != *(a1 + 8) && *v100 == 69)
          {
            *a1 = v100 + 1;
            v192.n128_u64[1] = v150;
            return;
          }

          if (!v99)
          {
            return;
          }

          v98 = *(a1 + 24);
          if (v98 != *(a1 + 32))
          {
            goto LABEL_145;
          }

          v101 = v99;
          v102 = *(a1 + 16);
          v103 = v98 - v102;
          if (v102 == v96)
          {
            v97 = malloc(2 * (v98 - v102));
            if (v97)
            {
              if (v98 != v96)
              {
                v104 = v97;
                memmove(v97, v102, v103);
                v97 = v104;
              }

              *(a1 + 16) = v97;
              goto LABEL_144;
            }
          }

          else
          {
            v97 = realloc(*(a1 + 16), 2 * (v98 - v102));
            *(a1 + 16) = v97;
            if (v97)
            {
LABEL_144:
              v98 = &v97[v103];
              *(a1 + 32) = &v97[8 * (v103 >> 2)];
              v99 = v101;
LABEL_145:
              *v98 = v99;
              *(a1 + 24) = v98 + 1;
              continue;
            }
          }

          goto LABEL_308;
        }

      case 8u:
        v55 = *(a1 + 776);
        *(a1 + 776) = 0;
        *(a1 + 776) = v55;
        if (!v56)
        {
          return;
        }

        v57 = v56;
        v58 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v59 = *a1;
        v60 = *(a1 + 8);
        if (*a1 == v60)
        {
          goto LABEL_250;
        }

        v61 = *v59;
        if (v61 == 95)
        {
          v59 = (v59 + 1);
          *a1 = v59;
          v62 = (a1 + 40);
          while (v59 == v60 || *v59 != 69)
          {
            if (!v107)
            {
              return;
            }

            v106 = *(a1 + 24);
            if (v106 == *(a1 + 32))
            {
              v108 = v107;
              v109 = *(a1 + 16);
              v110 = v106 - v109;
              if (v109 == v62)
              {
                v105 = malloc(2 * (v106 - v109));
                if (!v105)
                {
                  goto LABEL_308;
                }

                if (v106 != v62)
                {
                  v111 = v105;
                  memmove(v105, v109, v110);
                  v105 = v111;
                }

                *(a1 + 16) = v105;
              }

              else
              {
                v105 = realloc(*(a1 + 16), 2 * (v106 - v109));
                *(a1 + 16) = v105;
                if (!v105)
                {
                  goto LABEL_308;
                }
              }

              v106 = &v105[v110];
              *(a1 + 32) = &v105[8 * (v110 >> 2)];
              v107 = v108;
            }

            *v106 = v107;
            *(a1 + 24) = v106 + 1;
            v59 = *a1;
            v60 = *(a1 + 8);
          }

LABEL_248:
          *a1 = v59 + 1;
          v192.n128_u64[1] = v155;
          if (v61 == 95)
          {
            goto LABEL_279;
          }

          goto LABEL_278;
        }

        if (v61 == 69)
        {
          goto LABEL_248;
        }

LABEL_250:
        if (!v156)
        {
          return;
        }

        v157 = *(a1 + 24);
        if (v157 != *(a1 + 32))
        {
          goto LABEL_277;
        }

        v158 = v156;
        v159 = *(a1 + 16);
        v160 = v157 - v159;
        if (v159 == (a1 + 40))
        {
          v161 = malloc(2 * (v157 - v159));
          if (!v161)
          {
            goto LABEL_308;
          }

          if (v157 != (a1 + 40))
          {
            v171 = v161;
            memmove(v161, v159, v160);
            v161 = v171;
          }

          *(a1 + 16) = v161;
        }

        else
        {
          v161 = realloc(*(a1 + 16), 2 * (v157 - v159));
          *(a1 + 16) = v161;
          if (!v161)
          {
LABEL_308:
            abort();
          }
        }

        v157 = &v161[v160];
        *(a1 + 32) = &v161[8 * (v160 >> 2)];
        v156 = v158;
LABEL_277:
        *v157 = v156;
        *(a1 + 24) = v157 + 1;
        v192.n128_u64[1] = v155;
LABEL_278:
        if (v155 != 1)
        {
          return;
        }

LABEL_279:
        return;
      case 9u:
        if (v88)
        {
          v89 = v88;
          if (v90)
          {
            v91 = v90;
            if (v92)
            {
            }
          }
        }

        return;
      case 0xAu:
        return;
      case 0xBu:
        if (v47)
        {
          v48 = v47;
          if (v49)
          {
          }
        }

        return;
      case 0xCu:
        v53 = v15[3];
        if (v53)
        {
        }

        else
        {
        }

        v116 = v54;
        if (!v54)
        {
          return;
        }

        v117 = *(a1 + 4904);
        v118 = v117[1];
        if ((v118 - 4016) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_185;
        }

        v119 = malloc(0x1000uLL);
        if (!v119)
        {
          goto LABEL_309;
        }

        v118 = 0;
        *v119 = v117;
        v119[1] = 0;
        v117 = v119;
        *(a1 + 4904) = v119;
LABEL_185:
        v117[1] = v118 + 64;
        v120 = v117 + v118;
        v120[24] = 60;
        *(v120 + 25) = *(v120 + 25) & 0xF000 | (v53 >> 1) | 0x540;
        *(v120 + 2) = &unk_1F5B40598;
        *(v120 + 4) = v21;
        *(v120 + 5) = v20;
        *(v120 + 7) = 0;
        *(v120 + 8) = 0;
        *(v120 + 6) = v116;
        return;
      default:
        v35 = v15[3];
        if (!v36)
        {
          return;
        }

        v37 = v36;
        v38 = *(a1 + 4904);
        v39 = v38[1];
        if ((v39 - 4032) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_73;
        }

        v40 = malloc(0x1000uLL);
        if (!v40)
        {
          goto LABEL_309;
        }

        v39 = 0;
        *v40 = v38;
        v40[1] = 0;
        v38 = v40;
        *(a1 + 4904) = v40;
LABEL_73:
        v38[1] = v39 + 48;
        v41 = v38 + v39;
        v41[24] = 66;
        *(v41 + 25) = *(v41 + 25) & 0xF000 | (v35 >> 1) | 0x540;
        *(v41 + 2) = &unk_1F5B400E8;
        *(v41 + 4) = v21;
        *(v41 + 5) = v20;
        *(v41 + 6) = v37;
        return;
    }
  }

  switch(v11)
  {
    case 'f':
      v23 = *v10;
      if (v23 != 112)
      {
        if (v23 != 76)
        {
          goto LABEL_81;
        }

        if (v4 == 2)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(v2 + 2);
          if (v24 < 0)
          {
            goto LABEL_81;
          }
        }

        if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) == 0)
        {
LABEL_81:
          if (v2 != v3)
          {
            *a1 = v10;
            if (v3 != v10)
            {
              v43 = *v10;
              if (v43 > 107)
              {
                if (v43 == 108)
                {
                  v45 = 0;
                  v44 = 1;
                }

                else
                {
                  if (v43 != 114)
                  {
                    return;
                  }

                  v44 = 0;
                  v45 = 0;
                }
              }

              else if (v43 == 76)
              {
                v44 = 1;
                v45 = 1;
              }

              else
              {
                if (v43 != 82)
                {
                  return;
                }

                v44 = 0;
                v45 = 1;
              }

              *a1 = v2 + 1;
              if ((v3 - (v2 + 1)) >= 2)
              {
                v124 = 0;
                v125 = *(v2 + 2);
                v126 = 61;
                do
                {
                  v127 = (v124 + v126) >> 1;
                  if (*v128 < v125)
                  {
                    v124 = v127 + 1;
                  }

                  else if (*v128 == v125)
                  {
                    if (v128[1] >= *(v2 + 3))
                    {
                      v126 = (v124 + v126) >> 1;
                    }

                    else
                    {
                      v124 = v127 + 1;
                    }
                  }

                  else
                  {
                    v126 = (v124 + v126) >> 1;
                  }
                }

                while (v126 != v124);
                if (*v129 == v125 && v129[1] == *(v2 + 3))
                {
                  *a1 = v2 + 2;
                  v130 = v129[2];
                  if (v130 == 2 || v130 == 4 && *(*(v129 + 1) + strlen(*(v129 + 1)) - 1) == 42)
                  {
                    if (v131)
                    {
                      v132 = v131;
                      if (v45)
                      {
                        if (!v133)
                        {
                          return;
                        }

                        if (v44)
                        {
                          v134 = v132;
                        }

                        else
                        {
                          v134 = v133;
                        }

                        if (v44)
                        {
                          v132 = v133;
                        }
                      }

                      else
                      {
                        v134 = 0;
                      }

                      v165 = *(v129 + 1);
                      v166 = strlen(v165);
                      v167 = v165 + 8;
                      if (v166 == 8)
                      {
                        v170 = 0;
                      }

                      else
                      {
                        v168 = *v167;
                        v169 = v165 + 9;
                        if (v168 == 32)
                        {
                          v170 = v166 - 9;
                        }

                        else
                        {
                          v170 = v166 - 8;
                        }

                        if (v168 == 32)
                        {
                          v167 = v169;
                        }
                      }

                      v181 = *(a1 + 4904);
                      v182 = v181[1];
                      if ((v182 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
                      {
                        v183 = malloc(0x1000uLL);
                        if (!v183)
                        {
LABEL_309:
                          std::terminate();
                        }

                        v182 = 0;
                        *v183 = v181;
                        v183[1] = 0;
                        v181 = v183;
                        *(a1 + 4904) = v183;
                      }

                      v181[1] = v182 + 64;
                      v184 = v181 + v182;
                      v184[24] = 71;
                      *(v184 + 25) = *(v184 + 25) & 0xF000 | 0x540;
                      *(v184 + 2) = &unk_1F5B40E08;
                      *(v184 + 4) = v132;
                      *(v184 + 5) = v134;
                      *(v184 + 6) = v167;
                      *(v184 + 7) = v170;
                      v184[64] = v44;
                    }
                  }
                }
              }
            }
          }

          return;
        }
      }

      return;
    case 'T':

      return;
    case 'L':

      return;
  }

  if (*v2 == 27753)
  {
    v25 = v2 + 1;
    *a1 = v2 + 1;
    v26 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v27 = (a1 + 40);
    while (v25 == v3 || *v25 != 69)
    {
      if (!v30)
      {
        return;
      }

      v29 = *(a1 + 24);
      if (v29 == *(a1 + 32))
      {
        v31 = v30;
        v32 = *(a1 + 16);
        v33 = v29 - v32;
        if (v32 == v27)
        {
          v28 = malloc(2 * (v29 - v32));
          if (!v28)
          {
            goto LABEL_308;
          }

          if (v29 != v27)
          {
            v34 = v28;
            memmove(v28, v32, v33);
            v28 = v34;
          }

          *(a1 + 16) = v28;
        }

        else
        {
          v28 = realloc(*(a1 + 16), 2 * (v29 - v32));
          *(a1 + 16) = v28;
          if (!v28)
          {
            goto LABEL_308;
          }
        }

        v29 = &v28[v33];
        *(a1 + 32) = &v28[8 * (v33 >> 2)];
        v30 = v31;
      }

      *v29 = v30;
      *(a1 + 24) = v29 + 8;
      v25 = *a1;
      v3 = *(a1 + 8);
    }

    *a1 = v25 + 1;
    v192.n128_u64[1] = v46;
  }

  else
  {
    if ((v3 - v2) >= 2)
    {
      if (*v2 == 25453)
      {
        *a1 = v2 + 1;

        return;
      }

      if (*v2 == 30830)
      {
        *a1 = v2 + 1;
        if (v114)
        {
        }

        return;
      }
    }

    if (v3 != v2 && (v3 - v2) >= 2 && v11 == 114 && (*v10 | 0x20) == 0x71)
    {

      return;
    }

    {

      return;
    }

    {
      if (v42)
      {
      }

      return;
    }

    {
      if (*(a1 + 8) == *a1 || **a1 != 84)
      {
        if (v149)
        {
        }
      }

      else
      {
        if (v113)
        {
        }
      }

      return;
    }

    {
      v121 = (*(a1 + 24) - *(a1 + 16)) >> 3;
      v122 = *a1;
      if (*a1 == *(a1 + 8))
      {
        goto LABEL_189;
      }

LABEL_188:
      if (*v122 == 69)
      {
        *a1 = v122 + 1;
        v192.n128_u64[1] = v162;
      }

      else
      {
LABEL_189:
        while (1)
        {
          v192.n128_u64[0] = v123;
          if (!v123)
          {
            break;
          }

          llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 16), &v192);
          v122 = *a1;
          if (*a1 != *(a1 + 8))
          {
            goto LABEL_188;
          }
        }
      }

      return;
    }

    {
      if (v151)
      {
        v152 = v151;
        v153 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v154 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_244;
        }

LABEL_243:
        if (*v154 == 69)
        {
          *a1 = v154 + 1;
          v192.n128_u64[1] = v180;
        }

        else
        {
LABEL_244:
          while (1)
          {
            if (!v192.n128_u64[0])
            {
              break;
            }

            llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 16), &v192);
            v154 = *a1;
            if (*a1 != *(a1 + 8))
            {
              goto LABEL_243;
            }
          }
        }
      }

      return;
    }

    {

      return;
    }

    {
      if (v164)
      {
      }

      return;
    }

    v172 = *a1;
    if (*a1 == *(a1 + 8) || *v172 != 117)
    {

      return;
    }

    *a1 = v172 + 1;
    if (!v173)
    {
      return;
    }

    v174 = v173;
    v191.n128_u64[0] = 0;
    v175 = (*(*v173 + 56))(v173);
    if (v176 == 8 && *v175 == 0x666F646975755F5FLL)
    {
      v186 = *a1;
      if (*a1 != *(a1 + 8))
      {
        v187 = *v186;
        if (v187 == 122)
        {
          *a1 = v186 + 1;
          goto LABEL_306;
        }

        if (v187 == 116)
        {
          *a1 = v186 + 1;
LABEL_306:
          v191.n128_u64[0] = v188;
          if (!v188)
          {
            return;
          }

          v177 = *(a1 + 24) - *(a1 + 16);
          llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 16), &v191);
LABEL_300:
          v192.n128_u64[1] = v185;
          return;
        }
      }
    }

    v177 = *(a1 + 24) - *(a1 + 16);
    v178 = *a1;
    if (*a1 == *(a1 + 8))
    {
      goto LABEL_287;
    }

LABEL_286:
    if (*v178 == 69)
    {
      *a1 = v178 + 1;
      goto LABEL_300;
    }

LABEL_287:
    while (1)
    {
      v192.n128_u64[0] = v179;
      if (!v179)
      {
        break;
      }

      llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 16), &v192);
      v178 = *a1;
      if (*a1 != *(a1 + 8))
      {
        goto LABEL_286;
      }
    }
  }
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PostfixExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t a2, __n128 *a3, char a4)
{
  v7 = *(a1 + 4904);
  v8 = v7[1];
  if ((v8 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v7[1] = v8 + 48;
  v11 = v7 + v8;
  v11[24] = 56;
  v12 = *(v11 + 25) & 0xF000 | a4 & 0x3F | 0x540;
  *(v11 + 2) = &unk_1F5B40160;
  *(v11 + 4) = a2;
  result = *a3;
  *(v11 + 25) = v12;
  *(v11 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ArraySubscriptExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
  v11[24] = 55;
  *(v11 + 25) = *(v11 + 25) & 0xF000 | a4 & 0x3F | 0x540;
  *(v11 + 2) = &unk_1F5B401D8;
  *(v11 + 4) = a2;
  *(v11 + 5) = a3;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::MemberExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, char a5)
{
  v9 = *(a1 + 4904);
  v10 = v9[1];
  if ((v10 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v12 = malloc(0x1000uLL);
    if (!v12)
    {
      std::terminate();
    }

    v10 = 0;
    *v12 = v9;
    v12[1] = 0;
    v9 = v12;
    *(a1 + 4904) = v12;
  }

  v9[1] = v10 + 48;
  v13 = v9 + v10;
  v13[24] = 58;
  v14 = *(v13 + 25) & 0xF000 | a5 & 0x3F | 0x540;
  *(v13 + 2) = &unk_1F5B40250;
  *(v13 + 4) = a2;
  result = *a3;
  *(v13 + 25) = v14;
  *(v13 + 40) = result;
  *(v13 + 7) = a4;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NewExpr,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,BOOL &,BOOL,llvm::itanium_demangle::Node::Prec>(uint64_t a1, __n128 *a2, uint64_t a3, __int128 *a4, char a5, char a6, char a7)
{
  v13 = *(a1 + 4904);
  v14 = v13[1];
  if ((v14 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc(0x1000uLL);
    if (!v16)
    {
      std::terminate();
    }

    v14 = 0;
    *v16 = v13;
    v16[1] = 0;
    v13 = v16;
    *(a1 + 4904) = v16;
  }

  v13[1] = v14 + 64;
  v17 = v13 + v14;
  v17[24] = 64;
  v18 = *(v17 + 25) & 0xF000 | a7 & 0x3F | 0x540;
  *(v17 + 2) = &unk_1F5B402C8;
  result = *a2;
  *(v17 + 6) = a3;
  v20 = *a4;
  *(v17 + 25) = v18;
  *(v17 + 2) = result;
  *(v17 + 56) = v20;
  v17[72] = a5 & 1;
  v17[73] = a6 & 1;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CallExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t a2, __n128 *a3, char a4)
{
  v7 = *(a1 + 4904);
  v8 = v7[1];
  if ((v8 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v7[1] = v8 + 48;
  v11 = v7 + v8;
  v11[24] = 63;
  v12 = *(v11 + 25) & 0xF000 | a4 & 0x3F | 0x540;
  *(v11 + 2) = &unk_1F5B403B8;
  *(v11 + 4) = a2;
  result = *a3;
  *(v11 + 25) = v12;
  *(v11 + 40) = result;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ConversionExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t a2, __n128 *a3, char a4)
{
  v7 = *(a1 + 4904);
  v8 = v7[1];
  if ((v8 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v7[1] = v8 + 48;
  v11 = v7 + v8;
  v11[24] = 68;
  v12 = *(v11 + 25) & 0xF000 | a4 & 0x3F | 0x540;
  *(v11 + 2) = &unk_1F5B40430;
  *(v11 + 4) = a2;
  result = *a3;
  *(v11 + 25) = v12;
  *(v11 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ConditionalExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *(a1 + 4904);
  v10 = v9[1];
  if ((v10 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v12 = malloc(0x1000uLL);
    if (!v12)
    {
      std::terminate();
    }

    v10 = 0;
    *v12 = v9;
    v12[1] = 0;
    v9 = v12;
    *(a1 + 4904) = v12;
  }

  v9[1] = v10 + 48;
  v13 = v9 + v10;
  result = v13 + 16;
  v13[24] = 57;
  *(v13 + 25) = *(v13 + 25) & 0xF000 | a5 & 0x3F | 0x540;
  *(v13 + 2) = &unk_1F5B404A8;
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  *(v13 + 6) = a4;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CastExpr,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *(a1 + 4904);
  v10 = v9[1];
  if ((v10 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v12 = malloc(0x1000uLL);
    if (!v12)
    {
      std::terminate();
    }

    v10 = 0;
    *v12 = v9;
    v12[1] = 0;
    v9 = v12;
    *(a1 + 4904) = v12;
  }

  v9[1] = v10 + 48;
  v13 = v9 + v10;
  v13[24] = 61;
  v14 = *(v13 + 25) & 0xF000 | a5 & 0x3F;
  *(v13 + 2) = &unk_1F5B40520;
  result = *a2;
  *(v13 + 25) = v14 | 0x540;
  *(v13 + 2) = result;
  *(v13 + 6) = a3;
  *(v13 + 7) = a4;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseExprPrimary(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2 && *v1 == 76)
  {
    v3 = v1 + 1;
    *a1 = v1 + 1;
    v4 = v2 - (v1 + 1);
    if (v2 == v1 + 1)
    {
LABEL_12:
      v8 = a1;
      if (v9)
      {
        v11 = *v8;
        v10 = v8[1];
        if (*v8 != v10)
        {
          v12 = *v8;
          if (*v11 == 110)
          {
            v12 = v11 + 1;
            *v8 = v11 + 1;
          }

          if (v10 != v12)
          {
            v13 = *v12;
            if ((v13 & 0x8000000000000000) == 0)
            {
              v14 = MEMORY[0x1E69E9830];
              if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x400) != 0)
              {
                while (1)
                {
                  v15 = *v12;
                  if (v15 < 0 || (*(v14 + 4 * v15 + 60) & 0x400) == 0)
                  {
                    break;
                  }

                  *v8 = ++v12;
                  if (v12 == v10)
                  {
                    v16 = v10;
                    goto LABEL_244;
                  }
                }

                v16 = v12;
LABEL_244:
                v120.n128_u64[0] = v11;
                v120.n128_u64[1] = v16 - v11;
                if (v16 != v11 && v12 != v10 && *v12 == 69)
                {
                  *v8 = v12 + 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      switch(*v3)
      {
        case 'A':
          v5 = a1;
          if (v6)
          {
            v7 = *v5;
            if (*v5 != v5[1] && *v7 == 69)
            {
              *v5 = v7 + 1;
            }
          }

          return;
        case 'D':
          if (v4 >= 2 && *v3 == 28228)
          {
            v38 = v1 + 3;
            *a1 = v1 + 3;
            if (v1 + 3 != v2 && *v38 == 48)
            {
              v38 = v1 + 4;
              *a1 = v1 + 4;
            }

            if (v38 != v2 && *v38 == 69)
            {
              *a1 = v38 + 1;
            }
          }

          return;
        case 'T':
          return;
        case 'U':
          if (v4 >= 2 && v1[2] == 108)
          {
            v41 = a1;
            if (v42)
            {
              v43 = *v41;
              if (*v41 != v41[1] && *v43 == 69)
              {
                *v41 = v43 + 1;
              }
            }
          }

          return;
        case '_':
          if (v4 >= 2 && *v3 == 23135)
          {
            *a1 = v1 + 3;
            v39 = a1;
            {
              v40 = *v39;
              if (*v39 != *(v39 + 8) && *v40 == 69)
              {
                *v39 = v40 + 1;
              }
            }
          }

          return;
        case 'a':
          *a1 = v1 + 2;
          v17 = "signed char";
          v18 = 11;

          goto LABEL_25;
        case 'b':
          if (v4 >= 3 && (*v3 == 12386 ? (v44 = v1[3] == 69) : (v44 = 0), v44))
          {
            *a1 = v1 + 4;
            v46 = 0;
          }

          else
          {
            v45 = a1;
            {
              return;
            }

            a1 = v45;
            v46 = 1;
          }

          break;
        case 'c':
          *a1 = v1 + 2;
          v17 = "char";
          v18 = 4;

          goto LABEL_25;
        case 'd':
          v90 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 0x11)
          {
            return;
          }

          v91 = v1[2];
          v92 = v91 - 48;
          v93 = v91 - 97;
          if (v92 >= 0xA && v93 > 5)
          {
            return;
          }

          v95 = v1[3];
          v96 = v95 - 48;
          v97 = v95 - 97;
          if (v96 >= 0xA && v97 > 5)
          {
            return;
          }

          v99 = v1[4];
          if ((v99 - 48) >= 0xA && (v99 - 97) > 5)
          {
            return;
          }

          v100 = v1[5];
          if ((v100 - 48) >= 0xA && (v100 - 97) > 5)
          {
            return;
          }

          v101 = v1[6];
          if ((v101 - 48) >= 0xA && (v101 - 97) > 5)
          {
            return;
          }

          v102 = v1[7];
          if ((v102 - 48) >= 0xA && (v102 - 97) > 5)
          {
            return;
          }

          v119 = a1;
          v103 = v1[8];
          if ((v103 - 48) >= 0xA && (v103 - 97) > 5)
          {
            return;
          }

          v104 = v1[9];
          if ((v104 - 48) >= 0xA && (v104 - 97) > 5)
          {
            return;
          }

          v105 = v1[10];
          if ((v105 - 48) >= 0xA && (v105 - 97) > 5)
          {
            return;
          }

          v106 = v1[11];
          if ((v106 - 48) >= 0xA && (v106 - 97) > 5)
          {
            return;
          }

          v107 = v1[12];
          if ((v107 - 48) >= 0xA && (v107 - 97) > 5)
          {
            return;
          }

          v108 = v1[13];
          if ((v108 - 48) >= 0xA && (v108 - 97) > 5)
          {
            return;
          }

          v109 = v1[14];
          if ((v109 - 48) >= 0xA && (v109 - 97) > 5)
          {
            return;
          }

          v110 = v1[15];
          if ((v110 - 48) >= 0xA && (v110 - 97) > 5)
          {
            return;
          }

          v111 = v1[16];
          if ((v111 - 48) >= 0xA && (v111 - 97) > 5)
          {
            return;
          }

          v112 = v1[17];
          if ((v112 - 48) >= 0xA && (v112 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 18;
          if (v1 + 18 == v2 || v1[18] != 69)
          {
            return;
          }

          *a1 = v1 + 19;
          v113 = *(a1 + 4904);
          v114 = v113[1];
          if ((v114 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_233;
          }

          v115 = malloc(0x1000uLL);
          if (!v115)
          {
            goto LABEL_252;
          }

          v114 = 0;
          *v115 = v113;
          v115[1] = 0;
          v113 = v115;
          *(v119 + 4904) = v115;
LABEL_233:
          v113[1] = v114 + 32;
          v116 = v113 + v114;
          v116[24] = 79;
          *(v116 + 25) = *(v116 + 25) & 0xF000 | 0x540;
          *(v116 + 2) = &unk_1F5B40778;
          *(v116 + 4) = v90;
          *(v116 + 5) = 16;
          return;
        case 'e':
          v47 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 0x21)
          {
            return;
          }

          v48 = v1[2];
          v49 = v48 - 48;
          v50 = v48 - 97;
          if (v49 >= 0xA && v50 > 5)
          {
            return;
          }

          v52 = v1[3];
          v53 = v52 - 48;
          v54 = v52 - 97;
          if (v53 >= 0xA && v54 > 5)
          {
            return;
          }

          v56 = v1[4];
          if ((v56 - 48) >= 0xA && (v56 - 97) > 5)
          {
            return;
          }

          v57 = v1[5];
          if ((v57 - 48) >= 0xA && (v57 - 97) > 5)
          {
            return;
          }

          v58 = v1[6];
          if ((v58 - 48) >= 0xA && (v58 - 97) > 5)
          {
            return;
          }

          v59 = v1[7];
          if ((v59 - 48) >= 0xA && (v59 - 97) > 5)
          {
            return;
          }

          v118 = a1;
          v60 = v1[8];
          if ((v60 - 48) >= 0xA && (v60 - 97) > 5)
          {
            return;
          }

          v61 = v1[9];
          if ((v61 - 48) >= 0xA && (v61 - 97) > 5)
          {
            return;
          }

          v62 = v1[10];
          if ((v62 - 48) >= 0xA && (v62 - 97) > 5)
          {
            return;
          }

          v63 = v1[11];
          if ((v63 - 48) >= 0xA && (v63 - 97) > 5)
          {
            return;
          }

          v64 = v1[12];
          if ((v64 - 48) >= 0xA && (v64 - 97) > 5)
          {
            return;
          }

          v65 = v1[13];
          if ((v65 - 48) >= 0xA && (v65 - 97) > 5)
          {
            return;
          }

          v66 = v1[14];
          if ((v66 - 48) >= 0xA && (v66 - 97) > 5)
          {
            return;
          }

          v67 = v1[15];
          if ((v67 - 48) >= 0xA && (v67 - 97) > 5)
          {
            return;
          }

          v68 = v1[16];
          if ((v68 - 48) >= 0xA && (v68 - 97) > 5)
          {
            return;
          }

          v69 = v1[17];
          if ((v69 - 48) >= 0xA && (v69 - 97) > 5)
          {
            return;
          }

          v70 = v1[18];
          if ((v70 - 48) >= 0xA && (v70 - 97) > 5)
          {
            return;
          }

          v71 = v1[19];
          if ((v71 - 48) >= 0xA && (v71 - 97) > 5)
          {
            return;
          }

          v72 = v1[20];
          if ((v72 - 48) >= 0xA && (v72 - 97) > 5)
          {
            return;
          }

          v73 = v1[21];
          if ((v73 - 48) >= 0xA && (v73 - 97) > 5)
          {
            return;
          }

          v74 = v1[22];
          if ((v74 - 48) >= 0xA && (v74 - 97) > 5)
          {
            return;
          }

          v75 = v1[23];
          if ((v75 - 48) >= 0xA && (v75 - 97) > 5)
          {
            return;
          }

          v76 = v1[24];
          if ((v76 - 48) >= 0xA && (v76 - 97) > 5)
          {
            return;
          }

          v77 = v1[25];
          if ((v77 - 48) >= 0xA && (v77 - 97) > 5)
          {
            return;
          }

          v78 = v1[26];
          if ((v78 - 48) >= 0xA && (v78 - 97) > 5)
          {
            return;
          }

          v79 = v1[27];
          if ((v79 - 48) >= 0xA && (v79 - 97) > 5)
          {
            return;
          }

          v80 = v1[28];
          if ((v80 - 48) >= 0xA && (v80 - 97) > 5)
          {
            return;
          }

          v81 = v1[29];
          if ((v81 - 48) >= 0xA && (v81 - 97) > 5)
          {
            return;
          }

          v82 = v1[30];
          if ((v82 - 48) >= 0xA && (v82 - 97) > 5)
          {
            return;
          }

          v83 = v1[31];
          if ((v83 - 48) >= 0xA && (v83 - 97) > 5)
          {
            return;
          }

          v84 = v1[32];
          if ((v84 - 48) >= 0xA && (v84 - 97) > 5)
          {
            return;
          }

          v85 = v1[33];
          if ((v85 - 48) >= 0xA && (v85 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 34;
          if (v1 + 34 == v2 || v1[34] != 69)
          {
            return;
          }

          *a1 = v1 + 35;
          v86 = *(a1 + 4904);
          v87 = v86[1];
          if ((v87 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_190;
          }

          v88 = malloc(0x1000uLL);
          if (!v88)
          {
            goto LABEL_252;
          }

          v87 = 0;
          *v88 = v86;
          v88[1] = 0;
          v86 = v88;
          *(v118 + 4904) = v88;
LABEL_190:
          v86[1] = v87 + 32;
          v89 = v86 + v87;
          v89[24] = 80;
          *(v89 + 25) = *(v89 + 25) & 0xF000 | 0x540;
          *(v89 + 2) = &unk_1F5B407F0;
          *(v89 + 4) = v47;
          *(v89 + 5) = 32;
          return;
        case 'f':
          v19 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 9)
          {
            return;
          }

          v20 = v1[2];
          v21 = v20 - 48;
          v22 = v20 - 97;
          if (v21 >= 0xA && v22 > 5)
          {
            return;
          }

          v24 = v1[3];
          v25 = v24 - 48;
          v26 = v24 - 97;
          if (v25 >= 0xA && v26 > 5)
          {
            return;
          }

          v28 = v1[4];
          if ((v28 - 48) >= 0xA && (v28 - 97) > 5)
          {
            return;
          }

          v29 = v1[5];
          if ((v29 - 48) >= 0xA && (v29 - 97) > 5)
          {
            return;
          }

          v30 = v1[6];
          if ((v30 - 48) >= 0xA && (v30 - 97) > 5)
          {
            return;
          }

          v31 = v1[7];
          if ((v31 - 48) >= 0xA && (v31 - 97) > 5)
          {
            return;
          }

          v117 = a1;
          v32 = v1[8];
          if ((v32 - 48) >= 0xA && (v32 - 97) > 5)
          {
            return;
          }

          v33 = v1[9];
          if ((v33 - 48) >= 0xA && (v33 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 10;
          if (v1 + 10 == v2 || v1[10] != 69)
          {
            return;
          }

          *a1 = v1 + 11;
          v34 = *(a1 + 4904);
          v35 = v34[1];
          if ((v35 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_58;
          }

          v36 = malloc(0x1000uLL);
          if (!v36)
          {
LABEL_252:
            std::terminate();
          }

          v35 = 0;
          *v36 = v34;
          v36[1] = 0;
          v34 = v36;
          *(v117 + 4904) = v36;
LABEL_58:
          v34[1] = v35 + 32;
          v37 = v34 + v35;
          v37[24] = 78;
          *(v37 + 25) = *(v37 + 25) & 0xF000 | 0x540;
          *(v37 + 2) = &unk_1F5B40700;
          *(v37 + 4) = v19;
          *(v37 + 5) = 8;
          return;
        case 'h':
          *a1 = v1 + 2;
          v17 = "unsigned char";
          v18 = 13;

          goto LABEL_25;
        case 'i':
          *a1 = v1 + 2;
          v17 = "";
          v18 = 0;

          goto LABEL_25;
        case 'j':
          *a1 = v1 + 2;
          v17 = "u";
          v18 = 1;

          goto LABEL_25;
        case 'l':
          *a1 = v1 + 2;
          v17 = "l";
          v18 = 1;

          goto LABEL_25;
        case 'm':
          *a1 = v1 + 2;
          v17 = "ul";
          v18 = 2;

          goto LABEL_25;
        case 'n':
          *a1 = v1 + 2;
          v17 = "__int128";
          v18 = 8;

          goto LABEL_25;
        case 'o':
          *a1 = v1 + 2;
          v17 = "unsigned __int128";
          v18 = 17;

          goto LABEL_25;
        case 's':
          *a1 = v1 + 2;
          v17 = "short";
          v18 = 5;

          goto LABEL_25;
        case 't':
          *a1 = v1 + 2;
          v17 = "unsigned short";
          v18 = 14;

          goto LABEL_25;
        case 'w':
          *a1 = v1 + 2;
          v17 = "wchar_t";
          v18 = 7;

          goto LABEL_25;
        case 'x':
          *a1 = v1 + 2;
          v17 = "ll";
          v18 = 2;

          goto LABEL_25;
        case 'y':
          *a1 = v1 + 2;
          v17 = "ull";
          v18 = 3;

LABEL_25:
          return;
        default:
          goto LABEL_12;
      }
    }
  }
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseFunctionParam(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = &v1[-*a1];
  if (v3 >= 3)
  {
    if (*v2 == 28774 && *(v2 + 2) == 84)
    {
      *a1 = v2 + 3;
      v21 = a1[613];
      v22 = v21[1];
      if ((v22 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v24 = malloc(0x1000uLL);
        if (!v24)
        {
          goto LABEL_75;
        }

        v22 = 0;
        *v24 = v21;
        v24[1] = 0;
        v21 = v24;
        a1[613] = v24;
      }

      v21[1] = v22 + 32;
      v25 = v21 + v22;
      v25[24] = 8;
      *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
      *(v25 + 2) = &unk_1F5B3FF08;
      *(v25 + 4) = "this";
      *(v25 + 5) = 4;
      return;
    }
  }

  else if (v3 != 2)
  {
    return;
  }

  if (*v2 == 28774)
  {
    v11 = (v2 + 2);
    *a1 = v2 + 2;
    if ((v2 + 2) != v1 && *v11 == 114)
    {
      v11 = (v2 + 3);
      *a1 = v2 + 3;
    }

    if (v11 != v1 && *v11 == 86)
    {
      *a1 = ++v11;
    }

    if (v11 != v1 && *v11 == 75)
    {
      *a1 = ++v11;
    }

    if (v1 == v11 || (v12 = *v11, v12 < 0) || (v13 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x400) == 0))
    {
      v14 = 0;
      v15 = 0;
      if (v11 == v1)
      {
        return;
      }
    }

    else
    {
      v26 = v11;
      while (1)
      {
        v27 = *v26;
        if (v27 < 0 || (*(v13 + 4 * v27 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v26;
        if (v26 == v1)
        {
          v28 = v1;
          goto LABEL_46;
        }
      }

      v28 = v26;
LABEL_46:
      v14 = v11;
      v15 = v28 - v11;
      v11 = v26;
      if (v26 == v1)
      {
        return;
      }
    }

    if (*v11 != 95)
    {
      return;
    }

    *a1 = (v11 + 1);
    v16 = a1[613];
    v17 = v16[1];
    if ((v17 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_35:
      v16[1] = v17 + 32;
      v20 = v16 + v17;
      v20[24] = 67;
      *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
      *(v20 + 2) = &unk_1F5B40D90;
      *(v20 + 4) = v14;
      *(v20 + 5) = v15;
      return;
    }

    v19 = malloc(0x1000uLL);
    if (v19)
    {
      v17 = 0;
      *v19 = v16;
      v19[1] = 0;
      v16 = v19;
      a1[613] = v19;
      goto LABEL_35;
    }

LABEL_75:
    std::terminate();
  }

  if (*v2 == 19558)
  {
    v5 = (v2 + 2);
    *a1 = v2 + 2;
    if (v1 != (v2 + 2))
    {
      v6 = *v5;
      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = MEMORY[0x1E69E9830];
        if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) != 0)
        {
          v8 = v5;
          while (1)
          {
            v9 = *v8;
            if (v9 < 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0)
            {
              break;
            }

            *a1 = ++v8;
            if (v8 == v1)
            {
              v10 = v1;
              goto LABEL_49;
            }
          }

          v10 = v8;
LABEL_49:
          if (v10 != v5 && v8 != v1 && *v8 == 112)
          {
            v29 = v8 + 1;
            *a1 = (v8 + 1);
            if (v8 + 1 != v1 && *v29 == 114)
            {
              v29 = v8 + 2;
              *a1 = (v8 + 2);
            }

            if (v29 != v1 && *v29 == 86)
            {
              *a1 = ++v29;
            }

            if (v29 != v1 && *v29 == 75)
            {
              *a1 = ++v29;
            }

            if (v1 == v29 || (v30 = *v29, v30 < 0) || (*(v7 + 4 * v30 + 60) & 0x400) == 0)
            {
              v36 = 0uLL;
              if (v29 == v1)
              {
                return;
              }

              goto LABEL_65;
            }

            v31 = v29;
            while (1)
            {
              v32 = *v31;
              if (v32 < 0 || (*(v7 + 4 * v32 + 60) & 0x400) == 0)
              {
                break;
              }

              *a1 = ++v31;
              if (v31 == v1)
              {
                v33 = v1;
                goto LABEL_73;
              }
            }

            v33 = v31;
LABEL_73:
            v34 = v29;
            v35 = v33 - v29;
            v29 = v31;
            v36.n128_u64[0] = v34;
            v36.n128_u64[1] = v35;
            if (v31 != v1)
            {
LABEL_65:
              if (*v29 == 95)
              {
                *a1 = (v29 + 1);
              }
            }
          }
        }
      }
    }
  }
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseBracedExpr(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8) - *a1 < 2uLL || *v1 != 100)
  {
    goto LABEL_13;
  }

  v2 = v1[1];
  if (v2 != 88)
  {
    if (v2 == 120)
    {
      *a1 = v1 + 2;
      if (result)
      {
        v12 = result;
        if (result)
        {
          v13 = result;
          v14 = *(a1 + 4904);
          v15 = v14[1];
          if ((v15 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v16 = malloc(0x1000uLL);
            if (!v16)
            {
              goto LABEL_29;
            }

            v15 = 0;
            *v16 = v14;
            v16[1] = 0;
            v14 = v16;
            *(a1 + 4904) = v16;
          }

          v14[1] = v15 + 48;
          v17 = v14 + v15;
          result = v17 + 16;
          v17[24] = 81;
          *(v17 + 25) = *(v17 + 25) & 0xF000 | 0x540;
          *(v17 + 2) = &unk_1F5B40EF8;
          *(v17 + 4) = v12;
          *(v17 + 5) = v13;
          v17[48] = 1;
          return result;
        }
      }

      return result;
    }

    if (v2 == 105)
    {
      *a1 = v1 + 2;
      if (result)
      {
        v5 = result;
        if (result)
        {
          v6 = result;
          v7 = *(a1 + 4904);
          v8 = v7[1];
          if ((v8 - 4032) > 0xFFFFFFFFFFFFF00FLL)
          {
LABEL_11:
            v7[1] = v8 + 48;
            v10 = v7 + v8;
            result = v10 + 16;
            v10[24] = 81;
            *(v10 + 25) = *(v10 + 25) & 0xF000 | 0x540;
            *(v10 + 2) = &unk_1F5B40EF8;
            *(v10 + 4) = v5;
            *(v10 + 5) = v6;
            v10[48] = 0;
            return result;
          }

          v9 = malloc(0x1000uLL);
          if (v9)
          {
            v8 = 0;
            *v9 = v7;
            v9[1] = 0;
            v7 = v9;
            *(a1 + 4904) = v9;
            goto LABEL_11;
          }

LABEL_29:
          std::terminate();
        }
      }

      return result;
    }

LABEL_13:
  }

  *a1 = v1 + 2;
  if (result)
  {
    v19 = result;
    if (result)
    {
      v20 = result;
      if (result)
      {
        v21 = result;
        v22 = *(a1 + 4904);
        v23 = v22[1];
        if ((v23 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v24 = malloc(0x1000uLL);
          if (!v24)
          {
            goto LABEL_29;
          }

          v23 = 0;
          *v24 = v22;
          v24[1] = 0;
          v22 = v24;
          *(a1 + 4904) = v24;
        }

        v22[1] = v23 + 48;
        v25 = v22 + v23;
        result = v25 + 16;
        v25[24] = 82;
        *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
        *(v25 + 2) = &unk_1F5B40F70;
        *(v25 + 4) = v19;
        *(v25 + 5) = v20;
        *(v25 + 6) = v21;
      }
    }
  }

  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::InitListExpr,decltype(nullptr),llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
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
  v7[24] = 70;
  v8 = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B40FE8;
  *(v7 + 4) = 0;
  result = *a2;
  *(v7 + 25) = v8;
  *(v7 + 40) = result;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parsePointerToMemberConversionExpr(char **a1)
{
  if (result)
  {
    v3 = result;
    if (result)
    {
      v5 = *a1;
      v4 = a1[1];
      if (*a1 == v4)
      {
        return 0;
      }

      v6 = *a1;
      if (*v5 == 110)
      {
        v6 = v5 + 1;
        *a1 = v5 + 1;
      }

      if (v4 == v6 || (v7 = *v6, v7 < 0) || (v8 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x400) == 0))
      {
        v9 = 0;
        v10 = 0;
        v11 = v6;
        if (v6 == v4)
        {
          return 0;
        }
      }

      else
      {
        while (1)
        {
          v12 = *v6;
          if (v12 < 0 || (*(v8 + 4 * v12 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v6;
          if (v6 == v4)
          {
            v13 = v4;
            goto LABEL_17;
          }
        }

        v13 = v6;
LABEL_17:
        v9 = v5;
        v10 = v13 - v5;
        v11 = v6;
        if (v6 == v4)
        {
          return 0;
        }
      }

      if (*v11 != 69)
      {
        return 0;
      }

      *a1 = v11 + 1;
      v14 = a1[613];
      v15 = *(v14 + 1);
      if ((v15 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v16 = result;
        v17 = malloc(0x1000uLL);
        if (!v17)
        {
          std::terminate();
        }

        v15 = 0;
        *v17 = v14;
        *(v17 + 1) = 0;
        v14 = v17;
        a1[613] = v17;
        result = v16;
      }

      *(v14 + 1) = v15 + 48;
      v18 = &v14[v15];
      v18[24] = 69;
      *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x542;
      *(v18 + 2) = &unk_1F5B41060;
      *(v18 + 4) = v3;
      *(v18 + 5) = result;
      result = (v18 + 16);
      *(v18 + 6) = v9;
      *(v18 + 7) = v10;
    }
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnclosingExpr,char const(&)[10],llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 4904);
  v6 = v5[1];
  if ((v6 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
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

  v5[1] = v6 + 64;
  v9 = v5 + v6;
  v9[24] = 60;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | a3 & 0x3F | 0x540;
  result = v9 + 16;
  *(v9 + 2) = &unk_1F5B40598;
  *(v9 + 4) = "noexcept ";
  *(v9 + 5) = 9;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 6) = a2;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseRequiresExpr(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (&v2[-*a1] < 2)
  {
    return 0;
  }

  if (*v1 == 20850)
  {
    v5 = v1 + 1;
    *a1 = v5;
    v6 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v7 = (a1 + 40);
    while (v5 == v2 || *v5 != 95)
    {
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 24);
      if (v9 == *(a1 + 32))
      {
        v10 = result;
        v11 = *(a1 + 16);
        v12 = v9 - v11;
        if (v11 == v7)
        {
          v8 = malloc(2 * (v9 - v11));
          if (!v8)
          {
LABEL_68:
            abort();
          }

          if (v9 != v7)
          {
            v13 = v8;
            memmove(v8, v11, v12);
            v8 = v13;
          }

          *(a1 + 16) = v8;
        }

        else
        {
          v8 = realloc(*(a1 + 16), 2 * (v9 - v11));
          *(a1 + 16) = v8;
          if (!v8)
          {
            goto LABEL_68;
          }
        }

        v9 = &v8[v12];
        *(a1 + 32) = &v8[8 * (v12 >> 2)];
        result = v10;
      }

      *v9 = result;
      *(a1 + 24) = v9 + 1;
      v5 = *a1;
      v2 = *(a1 + 8);
    }

    *a1 = v5 + 1;
    v16 = *a1;
    if (*a1 == *(a1 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*v1 != 29042)
    {
      return 0;
    }

    v14 = 0;
    v15 = 0;
    v16 = v1 + 1;
    *a1 = v16;
    if (v16 == v2)
    {
      return 0;
    }
  }

  v52 = v15;
  v53 = v14;
  v54 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v17 = (a1 + 40);
  while (1)
  {
    v18 = *v16;
    if (v18 == 81)
    {
      *a1 = v16 + 1;
      if (!result)
      {
        return result;
      }

      v31 = result;
      v32 = *(a1 + 4904);
      v33 = v32[1];
      if ((v33 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v34 = malloc(0x1000uLL);
        if (!v34)
        {
          goto LABEL_69;
        }

        v33 = 0;
        *v34 = v32;
        v34[1] = 0;
        v32 = v34;
        *(a1 + 4904) = v34;
      }

      v32[1] = v33 + 32;
      v35 = v32 + v33;
      v29 = v35 + 16;
      v35[24] = 86;
      *(v35 + 25) = *(v35 + 25) & 0xF000 | 0x540;
      *(v35 + 2) = &unk_1F5B411C8;
      *(v35 + 4) = v31;
      v30 = *(a1 + 24);
      if (v30 != *(a1 + 32))
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v18 == 84)
    {
      *a1 = v16 + 1;
      if (!result)
      {
        return result;
      }

      v24 = result;
      v25 = *(a1 + 4904);
      v26 = v25[1];
      if ((v26 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v27 = malloc(0x1000uLL);
        if (!v27)
        {
          goto LABEL_69;
        }

        v26 = 0;
        *v27 = v25;
        v27[1] = 0;
        v25 = v27;
        *(a1 + 4904) = v27;
      }

      v25[1] = v26 + 32;
      v28 = v25 + v26;
      v29 = v28 + 16;
      v28[24] = 85;
      *(v28 + 25) = *(v28 + 25) & 0xF000 | 0x540;
      *(v28 + 2) = &unk_1F5B41150;
      *(v28 + 4) = v24;
      v30 = *(a1 + 24);
      if (v30 != *(a1 + 32))
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v18 != 88)
    {
      return 0;
    }

    *a1 = v16 + 1;
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = *a1;
    v21 = *(a1 + 8);
    if (*a1 == v21 || *v20 != 78)
    {
      v22 = 0;
      if (v20 == v21)
      {
LABEL_30:
        v23 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      *a1 = ++v20;
      v22 = 1;
      if (v20 == v21)
      {
        goto LABEL_30;
      }
    }

    if (*v20 == 82)
    {
      *a1 = v20 + 1;
      v23 = result;
      if (!result)
      {
        return result;
      }

LABEL_46:
      v36 = *(a1 + 4904);
      v37 = v36[1];
      if ((v37 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v23 = 0;
    v36 = *(a1 + 4904);
    v37 = v36[1];
    if ((v37 - 4032) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_51;
    }

LABEL_49:
    v38 = malloc(0x1000uLL);
    if (!v38)
    {
      goto LABEL_69;
    }

    v37 = 0;
    *v38 = v36;
    v38[1] = 0;
    v36 = v38;
    *(a1 + 4904) = v38;
LABEL_51:
    v36[1] = v37 + 48;
    v39 = v36 + v37;
    v29 = v39 + 16;
    v39[24] = 84;
    *(v39 + 25) = *(v39 + 25) & 0xF000 | 0x540;
    *(v39 + 2) = &unk_1F5B410D8;
    *(v39 + 4) = v19;
    v39[40] = v22;
    *(v39 + 6) = v23;
    v30 = *(a1 + 24);
    if (v30 != *(a1 + 32))
    {
      goto LABEL_60;
    }

LABEL_52:
    v40 = *(a1 + 16);
    v41 = v30 - v40;
    if (v40 == v17)
    {
      v42 = malloc(2 * (v30 - v40));
      if (!v42)
      {
        goto LABEL_68;
      }

      if (v30 != v17)
      {
        v43 = v42;
        memmove(v42, v40, v41);
        v42 = v43;
      }

      *(a1 + 16) = v42;
    }

    else
    {
      v42 = realloc(*(a1 + 16), 2 * (v30 - v40));
      *(a1 + 16) = v42;
      if (!v42)
      {
        goto LABEL_68;
      }
    }

    v30 = &v42[v41];
    *(a1 + 32) = &v42[8 * (v41 >> 2)];
LABEL_60:
    *v30 = v29;
    *(a1 + 24) = v30 + 8;
    v16 = *a1;
    v44 = *(a1 + 8);
    if (*a1 == v44)
    {
      return 0;
    }

    if (*v16 == 69)
    {
      break;
    }

    result = 0;
    if (v16 == v44)
    {
      return result;
    }
  }

  *a1 = v16 + 1;
  v47 = v46;
  v48 = *(a1 + 4904);
  v49 = v48[1];
  if ((v49 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v50 = malloc(0x1000uLL);
    if (!v50)
    {
LABEL_69:
      std::terminate();
    }

    v49 = 0;
    *v50 = v48;
    v50[1] = 0;
    v48 = v50;
    *(a1 + 4904) = v50;
  }

  v48[1] = v49 + 48;
  v51 = v48 + v49;
  result = (v51 + 16);
  v51[24] = 83;
  *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
  *(v51 + 2) = &unk_1F5B41240;
  *(v51 + 4) = v52;
  *(v51 + 5) = v53;
  *(v51 + 6) = v45;
  *(v51 + 7) = v47;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSubobjectExpr(char **a1)
{
  if (!result)
  {
    return result;
  }

  v43 = result;
  if (!result)
  {
    return result;
  }

  v3 = result;
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v9 = 0;
    v10 = 0;
    v12 = a1[2];
    v11 = a1[3];
    goto LABEL_41;
  }

  v6 = *a1;
  if (*v5 == 110)
  {
    v6 = v5 + 1;
    *a1 = v5 + 1;
  }

  if (v4 != v6)
  {
    v7 = *v6;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = MEMORY[0x1E69E9830];
      if ((*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x400) != 0)
      {
        while (1)
        {
          v30 = *v6;
          if (v30 < 0 || (*(v8 + 4 * v30 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v6;
          if (v6 == v4)
          {
            v31 = v4;
            goto LABEL_56;
          }
        }

        v31 = v6;
LABEL_56:
        v9 = v5;
        v10 = v31 - v5;
        v5 = v6;
        v12 = a1[2];
        v11 = a1[3];
        if (v6 != v4)
        {
          goto LABEL_10;
        }

LABEL_41:
        if (v5 != v4)
        {
          goto LABEL_44;
        }

        goto LABEL_47;
      }
    }
  }

  v9 = 0;
  v10 = 0;
  v5 = v6;
  v12 = a1[2];
  v11 = a1[3];
  if (v6 == v4)
  {
    goto LABEL_41;
  }

LABEL_10:
  v40 = v12;
  v41 = v11;
  v42 = v9;
  v13 = (a1 + 5);
  v14 = MEMORY[0x1E69E9830];
  while (*v5 == 95)
  {
    v15 = v5 + 1;
    *a1 = v5 + 1;
    if (v4 == v5 + 1 || (v16 = *v15, v16 < 0) || (*(v14 + 4 * v16 + 60) & 0x400) == 0)
    {
      v15 = 0;
      v17 = 0;
      v18 = a1[613];
      v19 = *(v18 + 1);
      if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v27 = v15;
      while (1)
      {
        v28 = *v27;
        if (v28 < 0 || (*(v14 + 4 * v28 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v27;
        if (v27 == v4)
        {
          v27 = v4;
          break;
        }
      }

      v17 = v27 - v15;
      v18 = a1[613];
      v19 = *(v18 + 1);
      if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_17:
        v20 = malloc(0x1000uLL);
        if (!v20)
        {
          goto LABEL_58;
        }

        v19 = 0;
        *v20 = v18;
        *(v20 + 1) = 0;
        v18 = v20;
        a1[613] = v20;
      }
    }

    *(v18 + 1) = v19 + 32;
    v21 = &v18[v19];
    v22 = v21 + 16;
    v21[24] = 8;
    *(v21 + 25) = *(v21 + 25) & 0xF000 | 0x540;
    *(v21 + 2) = &unk_1F5B3FF08;
    *(v21 + 4) = v15;
    *(v21 + 5) = v17;
    v23 = a1[3];
    if (v23 == a1[4])
    {
      v24 = a1[2];
      v25 = v23 - v24;
      if (v24 == v13)
      {
        v26 = malloc(2 * (v23 - v24));
        if (!v26)
        {
LABEL_59:
          abort();
        }

        if (v23 != v13)
        {
          v29 = v26;
          memmove(v26, v24, v25);
          v26 = v29;
        }

        a1[2] = v26;
      }

      else
      {
        v26 = realloc(a1[2], 2 * (v23 - v24));
        a1[2] = v26;
        if (!v26)
        {
          goto LABEL_59;
        }
      }

      a1[4] = &v26[8 * (v25 >> 2)];
      *&v26[v25] = v22;
      a1[3] = &v26[v25 + 8];
      v5 = *a1;
      v4 = a1[1];
      if (*a1 == v4)
      {
        return 0;
      }
    }

    else
    {
      *v23 = v22;
      a1[3] = v23 + 8;
      v5 = *a1;
      v4 = a1[1];
      if (*a1 == v4)
      {
        return 0;
      }
    }
  }

  v9 = v42;
  v12 = v40;
  v11 = v41;
  if (v5 == v4)
  {
LABEL_47:
    v32 = 0;
    if (v5 == v4)
    {
      return 0;
    }

    goto LABEL_48;
  }

LABEL_44:
  if (*v5 != 112)
  {
    goto LABEL_47;
  }

  *a1 = ++v5;
  v32 = 1;
  if (v5 == v4)
  {
    return 0;
  }

LABEL_48:
  if (*v5 != 69)
  {
    return 0;
  }

  *a1 = v5 + 1;
  v35 = v34;
  v36 = a1[613];
  v37 = *(v36 + 1);
  if ((v37 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v38 = malloc(0x1000uLL);
    if (!v38)
    {
LABEL_58:
      std::terminate();
    }

    v37 = 0;
    *v38 = v36;
    *(v38 + 1) = 0;
    v36 = v38;
    a1[613] = v38;
  }

  *(v36 + 1) = v37 + 80;
  v39 = &v36[v37];
  result = (v39 + 16);
  v39[24] = 59;
  *(v39 + 25) = *(v39 + 25) & 0xF000 | 0x540;
  *(v39 + 2) = &unk_1F5B412B8;
  *(v39 + 4) = v43;
  *(v39 + 5) = v3;
  *(v39 + 6) = v9;
  *(v39 + 7) = v10;
  *(v39 + 8) = v33;
  *(v39 + 9) = v35;
  v39[80] = v32;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ParameterPackExpansion,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 42;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B40E80;
  *(v7 + 4) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SizeofParamPackExpr,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 62;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B41330;
  *(v7 + 4) = a2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnclosingExpr,char const(&)[11],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4904);
  v4 = v3[1];
  if ((v4 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
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

  v3[1] = v4 + 64;
  v7 = v3 + v4;
  result = v7 + 16;
  v7[24] = 60;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B40598;
  *(v7 + 4) = "sizeof... ";
  *(v7 + 5) = 10;
  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(v7 + 6) = a2;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NodeArrayNode,llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
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
  v7[24] = 0;
  v8 = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B413A8;
  result = *a2;
  *(v7 + 25) = v8;
  *(v7 + 2) = result;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::InitListExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray>(uint64_t a1, uint64_t a2, __n128 *a3)
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
  v9[24] = 70;
  v10 = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B40FE8;
  *(v9 + 4) = a2;
  result = *a3;
  *(v9 + 25) = v10;
  *(v9 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ThrowExpr,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 72;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B41420;
  *(v7 + 4) = a2;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnresolvedName(uint64_t a1, size_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = &v5[-*a1];
  if (v6 >= 3)
  {
    if (*v4 == 29299 && v4[2] == 78)
    {
      *a1 = v4 + 3;
      if (!v20)
      {
        return;
      }

      v18 = v20;
      if (*(a1 + 8) != *a1 && **a1 == 73)
      {
        if (v21)
        {
          v22 = *(a1 + 4904);
          v23 = v22[1];
          if ((v23 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v24 = v21;
            v25 = malloc(0x1000uLL);
            if (!v25)
            {
              goto LABEL_73;
            }

            v23 = 0;
            *v25 = v22;
            v25[1] = 0;
            v22 = v25;
            *(a1 + 4904) = v25;
            v21 = v24;
          }

          v22[1] = v23 + 32;
          v26 = v22 + v23;
          v26[24] = 45;
          *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
          *(v26 + 2) = &unk_1F5B41C18;
          *(v26 + 4) = v18;
          *(v26 + 5) = v21;
          v18 = v26 + 16;
          goto LABEL_34;
        }

        return;
      }

LABEL_34:
      while (1)
      {
        v28 = *a1;
        if (*a1 != *(a1 + 8) && *v28 == 69)
        {
          break;
        }

        if (!v29)
        {
          return;
        }

        v30 = v29;
        v31 = *(a1 + 4904);
        v32 = v31[1];
        if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v33 = malloc(0x1000uLL);
          if (!v33)
          {
            goto LABEL_73;
          }

          v32 = 0;
          *v33 = v31;
          v33[1] = 0;
          v31 = v33;
          *(a1 + 4904) = v33;
        }

        v31[1] = v32 + 32;
        v27 = v31 + v32;
        v27[24] = 23;
        *(v27 + 25) = *(v27 + 25) & 0xF000 | 0x540;
        *(v27 + 2) = &unk_1F5B41498;
        *(v27 + 4) = v18;
        *(v27 + 5) = v30;
        v18 = v27 + 16;
      }

LABEL_67:
      *a1 = v28 + 1;
      goto LABEL_68;
    }
  }

  else if (v6 != 2)
  {
    goto LABEL_9;
  }

  if (*v4 != 29299)
  {
LABEL_9:
    if (v8 && v2)
    {
      v9 = *(a1 + 4904);
      v10 = v9[1];
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_14:
        v9[1] = v10 + 32;
        v13 = v9 + v10;
        v13[24] = 46;
        *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
        *(v13 + 2) = &unk_1F5B41678;
        *(v13 + 4) = v8;
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

LABEL_73:
      std::terminate();
    }

    return;
  }

  v14 = (v4 + 2);
  *a1 = v14;
  if (v5 == v14)
  {
    if ((*(MEMORY[0x1E69E9830] + 60) & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

  v15 = *v14;
  if ((v15 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x400) != 0)
  {
LABEL_41:
    if (!v34)
    {
      return;
    }

    v35 = v34;
    if (v2)
    {
      v18 = 0;
      while (1)
      {
        v37 = *(a1 + 4904);
        v38 = v37[1];
        if (v18)
        {
          if ((v38 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v39 = malloc(0x1000uLL);
            if (!v39)
            {
              goto LABEL_73;
            }

            v38 = 0;
            *v39 = v37;
            v39[1] = 0;
            v37 = v39;
            *(a1 + 4904) = v39;
          }

          v37[1] = v38 + 32;
          v40 = v37 + v38;
          v40[24] = 23;
          *(v40 + 25) = *(v40 + 25) & 0xF000 | 0x540;
          *(v40 + 2) = &unk_1F5B41498;
          *(v40 + 4) = v18;
          v18 = v40 + 16;
          *(v40 + 5) = v35;
          v28 = *a1;
          if (*a1 == *(a1 + 8))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if ((v38 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v41 = malloc(0x1000uLL);
            if (!v41)
            {
              goto LABEL_73;
            }

            v38 = 0;
            *v41 = v37;
            v41[1] = 0;
            v37 = v41;
            *(a1 + 4904) = v41;
          }

          v37[1] = v38 + 32;
          v42 = v37 + v38;
          v18 = v42 + 16;
          v42[24] = 46;
          *(v42 + 25) = *(v42 + 25) & 0xF000 | 0x540;
          *(v42 + 2) = &unk_1F5B41678;
          *(v42 + 4) = v35;
          v28 = *a1;
          if (*a1 == *(a1 + 8))
          {
            goto LABEL_44;
          }
        }

        if (*v28 == 69)
        {
          goto LABEL_67;
        }

LABEL_44:
        v35 = v36;
        if (!v36)
        {
          return;
        }
      }
    }

    v18 = 0;
    while (1)
    {
      if (v18)
      {
        v44 = *(a1 + 4904);
        v45 = v44[1];
        if ((v45 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v46 = malloc(0x1000uLL);
          if (!v46)
          {
            goto LABEL_73;
          }

          v45 = 0;
          *v46 = v44;
          v46[1] = 0;
          v44 = v46;
          *(a1 + 4904) = v46;
        }

        v44[1] = v45 + 32;
        v47 = v44 + v45;
        v47[24] = 23;
        *(v47 + 25) = *(v47 + 25) & 0xF000 | 0x540;
        *(v47 + 2) = &unk_1F5B41498;
        *(v47 + 4) = v18;
        *(v47 + 5) = v35;
        v18 = v47 + 16;
        v28 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v18 = v35;
        v28 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_58;
        }
      }

      if (*v28 == 69)
      {
        goto LABEL_67;
      }

LABEL_58:
      v35 = v43;
      if (!v43)
      {
        return;
      }
    }
  }

LABEL_19:
  if (!v16)
  {
    return;
  }

  v18 = v16;
  if (*(a1 + 8) != *a1 && **a1 == 73)
  {
    if (!v19)
    {
      return;
    }
  }

LABEL_68:
  if (v48)
  {
    v49 = v48;
    v50 = *(a1 + 4904);
    v51 = v50[1];
    if ((v51 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v52 = malloc(0x1000uLL);
      if (!v52)
      {
        goto LABEL_73;
      }

      v51 = 0;
      *v52 = v50;
      v52[1] = 0;
      v50 = v52;
      *(a1 + 4904) = v52;
    }

    v50[1] = v51 + 32;
    v53 = v50 + v51;
    v53[24] = 23;
    *(v53 + 25) = *(v53 + 25) & 0xF000 | 0x540;
    *(v53 + 2) = &unk_1F5B41498;
    *(v53 + 4) = v18;
    *(v53 + 5) = v49;
  }
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::BinaryExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec &>(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, char a5)
{
  v9 = *(a1 + 4904);
  v10 = v9[1];
  if ((v10 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v12 = malloc(0x1000uLL);
    if (!v12)
    {
      std::terminate();
    }

    v10 = 0;
    *v12 = v9;
    v12[1] = 0;
    v9 = v12;
    *(a1 + 4904) = v12;
  }

  v9[1] = v10 + 48;
  v13 = v9 + v10;
  v13[24] = 54;
  v14 = *(v13 + 25) & 0xF000 | a5 & 0x3F | 0x540;
  *(v13 + 2) = &unk_1F5B40070;
  *(v13 + 4) = a2;
  result = *a3;
  *(v13 + 25) = v14;
  *(v13 + 40) = result;
  *(v13 + 7) = a4;
  return result;
}

char *llvm::itanium_demangle::BinaryExpr::printLeft(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    goto LABEL_2;
  }

  v35 = *(a1 + 24);
  v36 = *(a1 + 32);
  if (v36 != 2)
  {
    if (v36 == 1 && *v35 == 62)
    {
      goto LABEL_44;
    }

LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  if (*v35 != 15934)
  {
    goto LABEL_2;
  }

LABEL_44:
  *(a2 + 32) = 1;
  v37 = *a2;
  v38 = *(a2 + 8);
  v39 = v38 + 1;
  v40 = *(a2 + 16);
  if (v38 + 1 > v40)
  {
    v41 = v38 + 993;
    if (2 * v40 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v40;
    }

    *(a2 + 16) = v42;
    v37 = realloc(v37, v42);
    *a2 = v37;
    if (!v37)
    {
      goto LABEL_51;
    }

    v38 = *(a2 + 8);
    v39 = v38 + 1;
  }

  *(a2 + 8) = v39;
  v37[v38] = 40;
  v4 = 1;
LABEL_3:
  v5 = *(a1 + 9);
  v6 = v5 << 10;
  v7 = (v5 << 10);
  v8 = v5 << 26 >> 26;
  if (v7 == 17408)
  {
    v9 = 15;
  }

  else
  {
    v9 = v8;
  }

  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, v9, v7 != 17408);
  if (*(a1 + 32) == 1)
  {
    v10 = *(a1 + 24);
    if (*v10 == 44)
    {
      v11 = 1;
      v12 = *a2;
      v13 = *(a2 + 8);
      v14 = v13 + 1;
      v15 = *(a2 + 16);
      if (v13 + 1 <= v15)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  if (v17 + 1 > v18)
  {
    v19 = v17 + 993;
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
    v16 = realloc(v16, v21);
    *a2 = v16;
    if (!v16)
    {
      goto LABEL_51;
    }

    v17 = *(a2 + 8);
  }

  v16[v17] = 32;
  v22 = *(a2 + 8) + 1;
  *(a2 + 8) = v22;
  v11 = *(a1 + 32);
  if (v11)
  {
    v10 = *(a1 + 24);
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = v13 + v11;
    v15 = *(a2 + 16);
    if (v13 + v11 <= v15)
    {
LABEL_23:
      memcpy(&v12[v13], v10, v11);
      v22 = *(a2 + 8) + v11;
      *(a2 + 8) = v22;
      goto LABEL_24;
    }

LABEL_18:
    if (2 * v15 <= v14 + 992)
    {
      v23 = v14 + 992;
    }

    else
    {
      v23 = 2 * v15;
    }

    *(a2 + 16) = v23;
    v12 = realloc(v12, v23);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_51;
    }

    v13 = *(a2 + 8);
    goto LABEL_23;
  }

LABEL_24:
  v24 = *(a2 + 16);
  v25 = *a2;
  if (v22 + 1 > v24)
  {
    v26 = v22 + 993;
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
      goto LABEL_51;
    }

    v22 = *(a2 + 8);
  }

  v25[v22] = 32;
  ++*(a2 + 8);
  result = llvm::itanium_demangle::Node::printAsOperand(*(a1 + 40), a2, *(a1 + 9) << 26 >> 26, v6 == 17408);
  if (!v4)
  {
    return result;
  }

  --*(a2 + 32);
  result = *a2;
  v30 = *(a2 + 8);
  v31 = v30 + 1;
  v32 = *(a2 + 16);
  if (v30 + 1 > v32)
  {
    v33 = v30 + 993;
    if (2 * v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 2 * v32;
    }

    *(a2 + 16) = v34;
    result = realloc(result, v34);
    *a2 = result;
    if (result)
    {
      v30 = *(a2 + 8);
      v31 = v30 + 1;
      goto LABEL_37;
    }

LABEL_51:
    abort();
  }

LABEL_37:
  *(a2 + 8) = v31;
  result[v30] = 41;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PrefixExpr,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec &>(uint64_t a1, __n128 *a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 4904);
  v8 = v7[1];
  if ((v8 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v7[1] = v8 + 48;
  v11 = v7 + v8;
  v11[24] = 66;
  v12 = *(v11 + 25) & 0xF000 | a4 & 0x3F;
  *(v11 + 2) = &unk_1F5B400E8;
  result = *a2;
  *(v11 + 25) = v12 | 0x540;
  *(v11 + 2) = result;
  *(v11 + 6) = a3;
  return result;
}

void *llvm::itanium_demangle::PrefixExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = realloc(v6, v10);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 9) << 26 >> 26;

  return llvm::itanium_demangle::Node::printAsOperand(v11, a2, v12, 0);
}

void *llvm::itanium_demangle::PostfixExpr::printLeft(uint64_t a1, char **a2)
{
  result = llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 1);
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

void *llvm::itanium_demangle::ArraySubscriptExpr::printLeft(uint64_t a1, uint64_t a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 0);
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
      goto LABEL_14;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  *(v4 + v5) = 91;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 24), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v11 = *(a2 + 8);
  v12 = v11 + 1;
  v13 = *(a2 + 16);
  if (v11 + 1 > v13)
  {
    v14 = v11 + 993;
    if (2 * v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * v13;
    }

    *(a2 + 16) = v15;
    result = realloc(result, v15);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      v12 = v11 + 1;
      goto LABEL_13;
    }

LABEL_14:
    abort();
  }

LABEL_13:
  *(a2 + 8) = v12;
  *(result + v11) = 93;
  return result;
}

void *llvm::itanium_demangle::MemberExpr::printLeft(uint64_t a1, char **a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 1);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = realloc(v6, v10);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 9) << 26 >> 26;

  return llvm::itanium_demangle::Node::printAsOperand(v11, a2, v12, 0);
}

char *llvm::itanium_demangle::NewExpr::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 56) == 1)
  {
    v5 = *(a2 + 16);
    v6 = *a2;
    if (v4 + 2 > v5)
    {
      v7 = v4 + 994;
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
        goto LABEL_88;
      }

      v4 = *(a2 + 8);
    }

    *&v6[v4] = 14906;
    v4 = *(a2 + 8) + 2;
    *(a2 + 8) = v4;
  }

  v10 = *(a2 + 16);
  v11 = *a2;
  if (v4 + 3 > v10)
  {
    v12 = v4 + 995;
    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    *(a2 + 16) = v14;
    v11 = realloc(v11, v14);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_88;
    }

    v4 = *(a2 + 8);
  }

  v15 = &v11[v4];
  v15[2] = 119;
  *v15 = 25966;
  v16 = *(a2 + 8);
  v17 = v16 + 3;
  *(a2 + 8) = v16 + 3;
  if (*(a1 + 57) == 1)
  {
    v18 = *(a2 + 16);
    v19 = *a2;
    if (v16 + 5 > v18)
    {
      if (2 * v18 <= v16 + 997)
      {
        v20 = v16 + 997;
      }

      else
      {
        v20 = 2 * v18;
      }

      *(a2 + 16) = v20;
      v19 = realloc(v19, v20);
      *a2 = v19;
      if (!v19)
      {
        goto LABEL_88;
      }

      v17 = *(a2 + 8);
    }

    *&v19[v17] = 23899;
    v17 = *(a2 + 8) + 2;
    *(a2 + 8) = v17;
  }

  if (*(a1 + 24))
  {
    ++*(a2 + 32);
    v21 = v17 + 1;
    v22 = *(a2 + 16);
    v23 = *a2;
    if (v17 + 1 > v22)
    {
      v24 = v17 + 993;
      if (2 * v22 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2 * v22;
      }

      *(a2 + 16) = v25;
      v23 = realloc(v23, v25);
      *a2 = v23;
      if (!v23)
      {
        goto LABEL_88;
      }

      v17 = *(a2 + 8);
      v21 = v17 + 1;
    }

    *(a2 + 8) = v21;
    v23[v17] = 40;
    v26 = *(a2 + 8);
    if (*(a1 + 24))
    {
      v27 = 0;
      v28 = 1;
      while (1)
      {
        v29 = v26;
        if ((v28 & 1) == 0)
        {
          v30 = *(a2 + 16);
          v31 = *a2;
          if (v26 + 2 <= v30)
          {
            v34 = v26;
          }

          else
          {
            v32 = 2 * v30;
            if (v32 <= v26 + 994)
            {
              v33 = v26 + 994;
            }

            else
            {
              v33 = v32;
            }

            *(a2 + 16) = v33;
            v31 = realloc(v31, v33);
            *a2 = v31;
            if (!v31)
            {
              goto LABEL_88;
            }

            v34 = *(a2 + 8);
          }

          *&v31[v34] = 8236;
          v29 = *(a2 + 8) + 2;
          *(a2 + 8) = v29;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 16) + 8 * v27), a2, 18, 0);
        if (v29 == *(a2 + 8))
        {
          *(a2 + 8) = v26;
          if (++v27 == *(a1 + 24))
          {
            break;
          }
        }

        else
        {
          v28 = 0;
          v26 = *(a2 + 8);
          if (++v27 == *(a1 + 24))
          {
            break;
          }
        }
      }
    }

    --*(a2 + 32);
    v35 = v26 + 1;
    v36 = *(a2 + 16);
    v37 = *a2;
    if (v26 + 1 > v36)
    {
      v38 = 2 * v36;
      if (v38 <= v26 + 993)
      {
        v39 = v26 + 993;
      }

      else
      {
        v39 = v38;
      }

      *(a2 + 16) = v39;
      v37 = realloc(v37, v39);
      *a2 = v37;
      if (!v37)
      {
        goto LABEL_88;
      }

      v26 = *(a2 + 8);
      v35 = v26 + 1;
    }

    *(a2 + 8) = v35;
    v37[v26] = 41;
    v17 = *(a2 + 8);
  }

  v40 = *(a2 + 16);
  v41 = *a2;
  if (v17 + 1 > v40)
  {
    v42 = v17 + 993;
    v43 = 2 * v40;
    if (v43 <= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    *(a2 + 16) = v44;
    v41 = realloc(v41, v44);
    *a2 = v41;
    if (!v41)
    {
      goto LABEL_88;
    }

    v17 = *(a2 + 8);
  }

  v41[v17] = 32;
  ++*(a2 + 8);
  v45 = *(a1 + 32);
  result = (*(*v45 + 32))(v45, a2);
  if ((*(v45 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v45 + 40))(v45, a2);
  }

  if (*(a1 + 48))
  {
    ++*(a2 + 32);
    v47 = *a2;
    v48 = *(a2 + 8);
    v49 = v48 + 1;
    v50 = *(a2 + 16);
    if (v48 + 1 > v50)
    {
      v51 = v48 + 993;
      if (2 * v50 <= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = 2 * v50;
      }

      *(a2 + 16) = v52;
      v47 = realloc(v47, v52);
      *a2 = v47;
      if (!v47)
      {
        goto LABEL_88;
      }

      v48 = *(a2 + 8);
      v49 = v48 + 1;
    }

    *(a2 + 8) = v49;
    v47[v48] = 40;
    v53 = *(a2 + 8);
    if (*(a1 + 48))
    {
      v54 = 0;
      v55 = 1;
      while (1)
      {
        v56 = v53;
        if ((v55 & 1) == 0)
        {
          v57 = *(a2 + 16);
          v58 = *a2;
          if (v53 + 2 <= v57)
          {
            v61 = v53;
          }

          else
          {
            v59 = 2 * v57;
            if (v59 <= v53 + 994)
            {
              v60 = v53 + 994;
            }

            else
            {
              v60 = v59;
            }

            *(a2 + 16) = v60;
            v58 = realloc(v58, v60);
            *a2 = v58;
            if (!v58)
            {
              goto LABEL_88;
            }

            v61 = *(a2 + 8);
          }

          *&v58[v61] = 8236;
          v56 = *(a2 + 8) + 2;
          *(a2 + 8) = v56;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 40) + 8 * v54), a2, 18, 0);
        if (v56 == *(a2 + 8))
        {
          *(a2 + 8) = v53;
          if (++v54 == *(a1 + 48))
          {
            break;
          }
        }

        else
        {
          v55 = 0;
          v53 = *(a2 + 8);
          if (++v54 == *(a1 + 48))
          {
            break;
          }
        }
      }
    }

    --*(a2 + 32);
    v62 = v53 + 1;
    v63 = *(a2 + 16);
    result = *a2;
    if (v53 + 1 <= v63)
    {
      goto LABEL_86;
    }

    v64 = 2 * v63;
    if (v64 <= v53 + 993)
    {
      v65 = v53 + 993;
    }

    else
    {
      v65 = v64;
    }

    *(a2 + 16) = v65;
    result = realloc(result, v65);
    *a2 = result;
    if (result)
    {
      v53 = *(a2 + 8);
      v62 = v53 + 1;
LABEL_86:
      *(a2 + 8) = v62;
      result[v53] = 41;
      return result;
    }

LABEL_88:
    abort();
  }

  return result;
}

uint64_t llvm::itanium_demangle::DeleteExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = a2[1];
  if (*(a1 + 24) == 1)
  {
    v5 = a2[2];
    v6 = *a2;
    if (v4 + 2 > v5)
    {
      v7 = v4 + 994;
      v8 = 2 * v5;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      a2[2] = v9;
      v6 = realloc(v6, v9);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_33;
      }

      v4 = a2[1];
    }

    *&v6[v4] = 14906;
    v4 = (a2[1] + 2);
    a2[1] = v4;
  }

  v10 = a2[2];
  v11 = *a2;
  if (v4 + 6 > v10)
  {
    v12 = v4 + 998;
    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    a2[2] = v14;
    v11 = realloc(v11, v14);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_33;
    }

    v4 = a2[1];
  }

  v15 = &v11[v4];
  *(v15 + 2) = 25972;
  *v15 = 1701602660;
  v16 = a2[1];
  v17 = (v16 + 6);
  a2[1] = v16 + 6;
  if (*(a1 + 25) == 1)
  {
    v18 = a2[2];
    v19 = *a2;
    if ((v16 + 8) > v18)
    {
      if (2 * v18 <= (v16 + 1000))
      {
        v20 = (v16 + 1000);
      }

      else
      {
        v20 = 2 * v18;
      }

      a2[2] = v20;
      v19 = realloc(v19, v20);
      *a2 = v19;
      if (!v19)
      {
        goto LABEL_33;
      }

      v17 = a2[1];
    }

    *&v19[v17] = 23899;
    v17 = (a2[1] + 2);
    a2[1] = v17;
  }

  v21 = v17 + 1;
  v22 = a2[2];
  v23 = *a2;
  if (v17 + 1 <= v22)
  {
    goto LABEL_29;
  }

  v24 = v17 + 993;
  if (2 * v22 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = 2 * v22;
  }

  a2[2] = v25;
  v23 = realloc(v23, v25);
  *a2 = v23;
  if (!v23)
  {
LABEL_33:
    abort();
  }

  v17 = a2[1];
  v21 = v17 + 1;
LABEL_29:
  a2[1] = v21;
  v23[v17] = 32;
  v26 = *(a1 + 16);
  result = (*(*v26 + 32))(v26, a2);
  if ((*(v26 + 9) & 0xC0) != 0x40)
  {
    v28 = *(*v26 + 40);

    return v28(v26, a2);
  }

  return result;
}

char *llvm::itanium_demangle::CallExpr::printLeft(void *a1, uint64_t a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  ++*(a2 + 32);
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
      goto LABEL_30;
    }

    v6 = *(a2 + 8);
    v7 = v6 + 1;
  }

  *(a2 + 8) = v7;
  v5[v6] = 40;
  v11 = *(a2 + 8);
  if (a1[4])
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
            goto LABEL_30;
          }

          v19 = *(a2 + 8);
        }

        *&v16[v19] = 8236;
        v14 = *(a2 + 8) + 2;
        *(a2 + 8) = v14;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[3] + 8 * v12), a2, 18, 0);
      if (v14 == *(a2 + 8))
      {
        *(a2 + 8) = v11;
        if (++v12 == a1[4])
        {
          break;
        }
      }

      else
      {
        v13 = 0;
        v11 = *(a2 + 8);
        if (++v12 == a1[4])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v20 = v11 + 1;
  v21 = *(a2 + 16);
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

    *(a2 + 16) = v24;
    result = realloc(result, v24);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      v20 = v11 + 1;
      goto LABEL_29;
    }

LABEL_30:
    abort();
  }

LABEL_29:
  *(a2 + 8) = v20;
  result[v11] = 41;
  return result;
}

char *llvm::itanium_demangle::ConversionExpr::printLeft(void *a1, uint64_t a2)
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
      goto LABEL_42;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  v10 = a1[2];
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
      goto LABEL_42;
    }

    v12 = *(a2 + 8);
    v13 = v12 + 1;
  }

  *(a2 + 8) = v13;
  v11[v12] = 41;
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
      goto LABEL_42;
    }

    v18 = *(a2 + 8);
    v19 = v18 + 1;
  }

  *(a2 + 8) = v19;
  v17[v18] = 40;
  v23 = *(a2 + 8);
  if (a1[4])
  {
    v24 = 0;
    v25 = 1;
    while (1)
    {
      v26 = v23;
      if ((v25 & 1) == 0)
      {
        v27 = *(a2 + 16);
        v28 = *a2;
        if (v23 + 2 <= v27)
        {
          v31 = v23;
        }

        else
        {
          v29 = 2 * v27;
          if (v29 <= v23 + 994)
          {
            v30 = v23 + 994;
          }

          else
          {
            v30 = v29;
          }

          *(a2 + 16) = v30;
          v28 = realloc(v28, v30);
          *a2 = v28;
          if (!v28)
          {
            goto LABEL_42;
          }

          v31 = *(a2 + 8);
        }

        *&v28[v31] = 8236;
        v26 = *(a2 + 8) + 2;
        *(a2 + 8) = v26;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[3] + 8 * v24), a2, 18, 0);
      if (v26 == *(a2 + 8))
      {
        *(a2 + 8) = v23;
        if (++v24 == a1[4])
        {
          break;
        }
      }

      else
      {
        v25 = 0;
        v23 = *(a2 + 8);
        if (++v24 == a1[4])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v32 = v23 + 1;
  v33 = *(a2 + 16);
  result = *a2;
  if (v23 + 1 > v33)
  {
    v35 = 2 * v33;
    if (v35 <= v23 + 993)
    {
      v36 = v23 + 993;
    }

    else
    {
      v36 = v35;
    }

    *(a2 + 16) = v36;
    result = realloc(result, v36);
    *a2 = result;
    if (result)
    {
      v23 = *(a2 + 8);
      v32 = v23 + 1;
      goto LABEL_41;
    }

LABEL_42:
    abort();
  }

LABEL_41:
  *(a2 + 8) = v32;
  result[v23] = 41;
  return result;
}

void *llvm::itanium_demangle::ConditionalExpr::printLeft(uint64_t a1, char **a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 0);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 3) > v6)
  {
    v7 = (v5 + 995);
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
  v10[2] = 32;
  *v10 = 16160;
  a2[1] += 3;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 24), a2, 19, 0);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 3) <= v13)
  {
    goto LABEL_13;
  }

  v14 = (v12 + 995);
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
LABEL_16:
    abort();
  }

  v12 = a2[1];
LABEL_13:
  v17 = &v12[v11];
  v17[2] = 32;
  *v17 = 14880;
  a2[1] += 3;
  v18 = *(a1 + 32);

  return llvm::itanium_demangle::Node::printAsOperand(v18, a2, 17, 1);
}

char *llvm::itanium_demangle::CastExpr::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  if (v4)
  {
    v6 = *(a1 + 16);
    v7 = v5 + v4;
    v8 = *(a2 + 16);
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

      *(a2 + 16) = v10;
      v9 = realloc(v9, v10);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_34;
      }

      v5 = *(a2 + 8);
    }

    memcpy(&v9[v5], v6, v4);
    v5 = *(a2 + 8) + v4;
    *(a2 + 8) = v5;
  }

  v11 = *(a2 + 32);
  *(a2 + 32) = 0;
  v12 = *(a2 + 16);
  v13 = *a2;
  if (v5 + 1 > v12)
  {
    v14 = v5 + 993;
    v15 = 2 * v12;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    *(a2 + 16) = v16;
    v13 = realloc(v13, v16);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_34;
    }

    v5 = *(a2 + 8);
  }

  v13[v5] = 60;
  ++*(a2 + 8);
  (*(**(a1 + 32) + 32))(*(a1 + 32), a2);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  if (v18 + 1 > v19)
  {
    v20 = v18 + 993;
    v21 = 2 * v19;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    *(a2 + 16) = v22;
    v17 = realloc(v17, v22);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }

    v18 = *(a2 + 8);
  }

  v17[v18] = 62;
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = v24 + 1;
  *(a2 + 8) = v24 + 1;
  *(a2 + 32) = v11 + 1;
  v26 = v24 + 2;
  v27 = *(a2 + 16);
  if (v24 + 2 > v27)
  {
    if (2 * v27 <= v24 + 994)
    {
      v28 = v24 + 994;
    }

    else
    {
      v28 = 2 * v27;
    }

    *(a2 + 16) = v28;
    v23 = realloc(v23, v28);
    *a2 = v23;
    if (!v23)
    {
      goto LABEL_34;
    }

    v25 = *(a2 + 8);
    v26 = v25 + 1;
  }

  *(a2 + 8) = v26;
  v23[v25] = 40;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 40), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v30 = *(a2 + 8);
  v31 = v30 + 1;
  v32 = *(a2 + 16);
  if (v30 + 1 > v32)
  {
    v33 = v30 + 993;
    if (2 * v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 2 * v32;
    }

    *(a2 + 16) = v34;
    result = realloc(result, v34);
    *a2 = result;
    if (result)
    {
      v30 = *(a2 + 8);
      v31 = v30 + 1;
      goto LABEL_33;
    }

LABEL_34:
    abort();
  }

LABEL_33:
  *(a2 + 8) = v31;
  result[v30] = 41;
  return result;
}

char *llvm::itanium_demangle::EnclosingExpr::printLeft(void *a1, char **a2)
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
        goto LABEL_32;
      }

      v5 = a2[1];
    }

    memcpy(&v9[v5], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  ++*(a2 + 8);
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
      goto LABEL_32;
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

  --*(a2 + 8);
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
      goto LABEL_32;
    }

    v18 = a2[1];
    v19 = v18 + 1;
  }

  a2[1] = v19;
  v18[result] = 41;
  v23 = a1[6];
  if (!v23)
  {
    return result;
  }

  v24 = a1[5];
  v25 = *a2;
  v26 = a2[1];
  v27 = &v26[v23];
  v28 = a2[2];
  if (&v26[v23] > v28)
  {
    if (2 * v28 <= (v27 + 992))
    {
      v29 = (v27 + 992);
    }

    else
    {
      v29 = 2 * v28;
    }

    a2[2] = v29;
    v25 = realloc(v25, v29);
    *a2 = v25;
    if (v25)
    {
      v26 = a2[1];
      goto LABEL_30;
    }

LABEL_32:
    abort();
  }

LABEL_30:
  result = memcpy(&v26[v25], v24, v23);
  a2[1] += v23;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseIntegerLiteral(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = *a1;
  if (*v4 == 110)
  {
    v5 = v4 + 1;
    *a1 = v4 + 1;
  }

  if (v3 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0)
  {
    return 0;
  }

  v7 = MEMORY[0x1E69E9830];
  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
  {
    return 0;
  }

  while (1)
  {
    v9 = *v5;
    if (v9 < 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
    if (v5 == v3)
    {
      v10 = v3;
      goto LABEL_13;
    }
  }

  v10 = v5;
LABEL_13:
  v11 = v10 - v4;
  if (v10 == v4 || v5 == v3 || *v5 != 69)
  {
    return 0;
  }

  *a1 = v5 + 1;
  v12 = *(a1 + 4904);
  v13 = v12[1];
  if ((v13 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v15 = a2;
    v16 = a3;
    v17 = malloc(0x1000uLL);
    if (!v17)
    {
      std::terminate();
    }

    v13 = 0;
    *v17 = v12;
    v17[1] = 0;
    v12 = v17;
    *(a1 + 4904) = v17;
    a3 = v16;
    a2 = v15;
  }

  v12[1] = v13 + 48;
  v18 = v12 + v13;
  v18[24] = 77;
  *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
  *(v18 + 2) = &unk_1F5B40610;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = v4;
  *(v18 + 7) = v11;
  return v12 + v13 + 16;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::BoolExpr,int>(uint64_t a1, int a2)
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
  result[8] = 73;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = &unk_1F5B40688;
  result[11] = a2 != 0;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::StringLiteral,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 74;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B40868;
  *(v7 + 4) = a2;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnnamedTypeName(unsigned __int8 **a1, size_t __size)
{
  if (__size)
  {
    a1[84] = a1[83];
  }

  v3 = *a1;
  v4 = a1[1];
  if ((v4 - *a1) < 2)
  {
    return;
  }

  if (*v3 != 29781)
  {
    if (*v3 != 27733)
    {
      if (*v3 != 25173)
      {
        return;
      }

      v5 = v3 + 2;
      *a1 = v5;
      if (v4 != v5)
      {
        v6 = *v5;
        if ((v6 & 0x8000000000000000) == 0)
        {
          v7 = MEMORY[0x1E69E9830];
          if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) != 0)
          {
            do
            {
              v8 = *v5;
              if (v8 < 0)
              {
                break;
              }

              if ((*(v7 + 4 * v8 + 60) & 0x400) == 0)
              {
                break;
              }

              *a1 = ++v5;
            }

            while (v5 != v4);
          }
        }
      }

      if (v5 == v4 || *v5 != 95)
      {
        return;
      }

      *a1 = v5 + 1;
      v9 = a1[613];
      v10 = *(v9 + 1);
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_19:
        *(v9 + 1) = v10 + 32;
        v12 = &v9[v10];
        v12[24] = 8;
        *(v12 + 25) = *(v12 + 25) & 0xF000 | 0x540;
        *(v12 + 2) = &unk_1F5B3FF08;
        *(v12 + 4) = "'block-literal'";
        *(v12 + 5) = 15;
        return;
      }

      v11 = malloc(0x1000uLL);
      if (v11)
      {
        v10 = 0;
        *v11 = v9;
        *(v11 + 1) = 0;
        v9 = v11;
        a1[613] = v11;
        goto LABEL_19;
      }

LABEL_116:
      std::terminate();
    }

    v22 = v3 + 2;
    *a1 = v3 + 2;
    v23 = a1[84];
    v24 = a1[83];
    v25 = v23 - v24;
    v26 = a1[98];
    a1[98] = ((v23 - v24) >> 3);
    v80 = a1;
    v81 = (v23 - v24) >> 3;
    v82[0] = v83;
    v82[1] = v83;
    v76 = v26;
    v82[2] = &v84;
    memset(v83, 0, sizeof(v83));
    if (v23 != a1[85])
    {
LABEL_46:
      *v23 = v82;
      a1[84] = v23 + 8;
      v33 = a1[2];
      v32 = a1[3];
      v34 = v4 - v22;
      if (v4 != v22)
      {
        v35 = a1 + 5;
        do
        {
          if (*v22 != 84)
          {
            break;
          }

          v39 = v34 < 2 ? 0 : v22[1];
          v40 = memchr("yptnk", v39, 5uLL);
          if (!v40 || v40 - "yptnk" == -1)
          {
            break;
          }

          if (!v38)
          {
            goto LABEL_94;
          }

          v37 = a1[3];
          if (v37 == a1[4])
          {
            v41 = v38;
            v42 = a1[2];
            v43 = v37 - v42;
            if (v42 == v35)
            {
              v36 = malloc(2 * (v37 - v42));
              if (!v36)
              {
                goto LABEL_115;
              }

              if (v37 != v35)
              {
                v44 = v36;
                memmove(v36, v42, v43);
                v36 = v44;
              }

              a1[2] = v36;
            }

            else
            {
              v36 = realloc(a1[2], 2 * (v37 - v42));
              a1[2] = v36;
              if (!v36)
              {
                goto LABEL_115;
              }
            }

            v37 = &v36[v43];
            a1[4] = &v36[8 * (v43 >> 2)];
            v38 = v41;
          }

          *v37 = v38;
          a1[3] = v37 + 8;
          v22 = *a1;
          v34 = a1[1] - *a1;
        }

        while (v34);
      }

      v45 = (v32 - v33) >> 3;
      v79.n128_u64[1] = v46;
      if (!v46)
      {
        a1[84] -= 8;
      }

      v47 = *a1;
      v48 = a1[1];
      if (*a1 == v48)
      {
        v51 = 0;
      }

      else
      {
        if (*v47 == 81)
        {
          *a1 = v47 + 1;
          v49 = *(a1 + 778);
          *(a1 + 778) = 1;
          *(a1 + 778) = v49;
          if (!v50)
          {
            goto LABEL_94;
          }

          v51 = v50;
          v47 = *a1;
          v48 = a1[1];
        }

        else
        {
          v51 = 0;
        }

        if (v48 != v47 && *v47 == 118)
        {
          *a1 = v47 + 1;
LABEL_90:
          *(&v78 + 1) = v61;
          v63 = *a1;
          v62 = a1[1];
          if (*a1 != v62)
          {
            if (*v63 != 81)
            {
              v66 = 0;
              goto LABEL_99;
            }

            *a1 = (v63 + 1);
            v64 = *(a1 + 778);
            *(a1 + 778) = 1;
            *(a1 + 778) = v64;
            if (v65)
            {
              v66 = v65;
              v63 = *a1;
              v62 = a1[1];
LABEL_99:
              v67 = v76;
              if (v63 != v62 && *v63 == 69)
              {
                v68 = v63 + 1;
                *a1 = v68;
                if (v62 != v68)
                {
                  v69 = *v68;
                  if ((v69 & 0x8000000000000000) == 0)
                  {
                    v70 = MEMORY[0x1E69E9830];
                    if ((*(MEMORY[0x1E69E9830] + 4 * v69 + 60) & 0x400) != 0)
                    {
                      v71 = v68;
                      while (1)
                      {
                        v72 = *v71;
                        if (v72 < 0 || (*(v70 + 4 * v72 + 60) & 0x400) == 0)
                        {
                          break;
                        }

                        *a1 = ++v71;
                        if (v71 == v62)
                        {
                          v73 = v62;
                          goto LABEL_113;
                        }
                      }

                      v73 = v71;
LABEL_113:
                      v74 = v68;
                      v75 = v73 - v68;
                      v68 = v71;
                      *&v77 = v74;
                      *(&v77 + 1) = v75;
                      if (v71 == v62)
                      {
                        goto LABEL_95;
                      }

                      goto LABEL_105;
                    }
                  }
                }

                v77 = 0uLL;
                if (v68 != v62)
                {
LABEL_105:
                  if (*v68 == 95)
                  {
                    *a1 = (v68 + 1);
                  }
                }
              }

LABEL_95:
              v80[84] = &v80[83][8 * v81];
              if (v82[0] != v83)
              {
                free(v82[0]);
              }

              a1[98] = v67;
              return;
            }
          }

LABEL_94:
          v67 = v76;
          goto LABEL_95;
        }
      }

      if (!v52)
      {
        goto LABEL_94;
      }

      v53 = a1 + 5;
      while (1)
      {
        v54 = a1[3];
        if (v54 == a1[4])
        {
          v55 = v52;
          v56 = a1[2];
          v57 = v54 - v56;
          if (v56 == v53)
          {
            v58 = malloc(2 * (v54 - v56));
            if (!v58)
            {
              goto LABEL_115;
            }

            if (v54 != v53)
            {
              v59 = v58;
              memmove(v58, v56, v57);
              v58 = v59;
            }

            a1[2] = v58;
          }

          else
          {
            v58 = realloc(a1[2], 2 * (v54 - v56));
            a1[2] = v58;
            if (!v58)
            {
              goto LABEL_115;
            }
          }

          v54 = &v58[v57];
          a1[4] = &v58[8 * (v57 >> 2)];
          v52 = v55;
        }

        *v54 = v52;
        a1[3] = v54 + 8;
        if (a1[1] != *a1)
        {
          v60 = **a1;
          if (v60 == 69 || v60 == 81)
          {
            goto LABEL_90;
          }
        }

        if (!v52)
        {
          goto LABEL_94;
        }
      }
    }

    if (v24 == (a1 + 86))
    {
      v27 = malloc(2 * v25);
      if (v27)
      {
        if (v23 != v24)
        {
          v31 = v27;
          memmove(v27, v24, v25);
          v27 = v31;
        }

        a1[83] = v27;
        goto LABEL_45;
      }
    }

    else
    {
      v27 = realloc(v24, 2 * v25);
      a1[83] = v27;
      if (v27)
      {
        v22 = *a1;
        v4 = a1[1];
LABEL_45:
        v23 = &v27[v25];
        a1[85] = &v27[8 * (v25 >> 2)];
        goto LABEL_46;
      }
    }

LABEL_115:
    abort();
  }

  v13 = v3 + 2;
  *a1 = v13;
  if (v4 == v13 || (v14 = *v13, v14 < 0) || (v15 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x400) == 0))
  {
    v16 = 0;
    v17 = 0;
    if (v13 == v4)
    {
      return;
    }

LABEL_24:
    if (*v13 != 95)
    {
      return;
    }

    *a1 = v13 + 1;
    v18 = a1[613];
    v19 = *(v18 + 1);
    if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v20 = malloc(0x1000uLL);
      if (!v20)
      {
        goto LABEL_116;
      }

      v19 = 0;
      *v20 = v18;
      *(v20 + 1) = 0;
      v18 = v20;
      a1[613] = v20;
    }

    *(v18 + 1) = v19 + 32;
    v21 = &v18[v19];
    v21[24] = 51;
    *(v21 + 25) = *(v21 + 25) & 0xF000 | 0x540;
    *(v21 + 2) = &unk_1F5B408E0;
    *(v21 + 4) = v16;
    *(v21 + 5) = v17;
    return;
  }

  v28 = v13;
  while (1)
  {
    v29 = *v28;
    if (v29 < 0 || (*(v15 + 4 * v29 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v28;
    if (v28 == v4)
    {
      v30 = v4;
      goto LABEL_39;
    }
  }

  v30 = v28;
LABEL_39:
  v16 = v13;
  v17 = v30 - v13;
  v13 = v28;
  if (v28 != v4)
  {
    goto LABEL_24;
  }
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::LambdaExpr,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t a2)
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
  v7[24] = 75;
  *(v7 + 25) = *(v7 + 25) & 0xF000 | 0x540;
  *(v7 + 2) = &unk_1F5B40CA0;
  *(v7 + 4) = a2;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnumLiteral,llvm::itanium_demangle::Node *&,std::string_view &>(uint64_t a1, uint64_t a2, __n128 *a3)
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
  v9[24] = 76;
  v10 = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_1F5B40D18;
  *(v9 + 4) = a2;
  result = *a3;
  *(v9 + 25) = v10;
  *(v9 + 40) = result;
  return result;
}

void *llvm::itanium_demangle::IntegerLiteral::printLeft(void *result, char **a2)
{
  v3 = result;
  if (result[3] >= 4uLL)
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
        goto LABEL_57;
      }

      v5 = a2[1];
      v6 = v5 + 1;
    }

    a2[1] = v6;
    v5[v4] = 40;
    v10 = v3[3];
    v11 = a2[1];
    if (v10)
    {
      v12 = v3[2];
      v13 = v11 + v10;
      v14 = a2[2];
      v15 = *a2;
      if (v11 + v10 > v14)
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
          goto LABEL_57;
        }

        v11 = a2[1];
      }

      memcpy(&v15[v11], v12, v10);
      v11 = &a2[1][v10];
      a2[1] = v11;
    }

    --*(a2 + 8);
    v17 = v11 + 1;
    v18 = a2[2];
    result = *a2;
    if (v11 + 1 > v18)
    {
      v19 = v11 + 993;
      if (2 * v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = 2 * v18;
      }

      a2[2] = v20;
      result = realloc(result, v20);
      *a2 = result;
      if (!result)
      {
        goto LABEL_57;
      }

      v11 = a2[1];
      v17 = v11 + 1;
    }

    a2[1] = v17;
    *(result + v11) = 41;
  }

  v21 = v3[4];
  if (*v21 == 110)
  {
    v23 = (a2 + 1);
    v22 = a2[1];
    v24 = v22 + 1;
    v25 = a2[2];
    result = *a2;
    if (v22 + 1 > v25)
    {
      v26 = v22 + 993;
      if (2 * v25 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = 2 * v25;
      }

      a2[2] = v27;
      result = realloc(result, v27);
      *a2 = result;
      if (!result)
      {
        goto LABEL_57;
      }

      v22 = *v23;
      v24 = *v23 + 1;
    }

    *v23 = v24;
    *(result + v22) = 45;
    v28 = v3[5];
    v29 = v28 - 1;
    if (v28 != 1)
    {
      v30 = v3[4];
      v31 = *a2;
      v32 = a2[1];
      v33 = v32 + v29;
      v34 = a2[2];
      if (v32 + v29 > v34)
      {
        if (2 * v34 <= v33 + 992)
        {
          v35 = v33 + 992;
        }

        else
        {
          v35 = 2 * v34;
        }

        a2[2] = v35;
        v31 = realloc(v31, v35);
        *a2 = v31;
        if (!v31)
        {
          goto LABEL_57;
        }

        v32 = *v23;
      }

      v36 = &v31[v32];
      v37 = (v30 + 1);
LABEL_46:
      result = memcpy(v36, v37, v29);
      *v23 += v29;
    }
  }

  else
  {
    v29 = v3[5];
    if (v29)
    {
      v23 = (a2 + 1);
      v38 = a2[1];
      v39 = v38 + v29;
      v40 = a2[2];
      v41 = *a2;
      if (v38 + v29 > v40)
      {
        if (2 * v40 <= v39 + 992)
        {
          v42 = v39 + 992;
        }

        else
        {
          v42 = 2 * v40;
        }

        a2[2] = v42;
        v41 = realloc(v41, v42);
        *a2 = v41;
        if (!v41)
        {
          goto LABEL_57;
        }

        v38 = *v23;
      }

      v36 = &v41[v38];
      v37 = v21;
      goto LABEL_46;
    }
  }

  v43 = v3[3];
  if (v43 <= 3 && v43)
  {
    v44 = v3[2];
    v45 = *a2;
    v46 = a2[1];
    v47 = &v46[v43];
    v48 = a2[2];
    if (&v46[v43] <= v48)
    {
LABEL_55:
      result = memcpy(&v46[v45], v44, v43);
      a2[1] += v43;
      return result;
    }

    if (2 * v48 <= (v47 + 992))
    {
      v49 = (v47 + 992);
    }

    else
    {
      v49 = 2 * v48;
    }

    a2[2] = v49;
    v45 = realloc(v45, v49);
    *a2 = v45;
    if (v45)
    {
      v46 = a2[1];
      goto LABEL_55;
    }

LABEL_57:
    abort();
  }

  return result;
}

void *llvm::itanium_demangle::BoolExpr::printLeft(uint64_t a1, char **a2)
{
  v3 = *(a1 + 11);
  if (*(a1 + 11))
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = &v6[v4];
  v8 = a2[2];
  if (&v6[v4] > v8)
  {
    if (2 * v8 <= (v7 + 992))
    {
      v9 = (v7 + 992);
    }

    else
    {
      v9 = 2 * v8;
    }

    a2[2] = v9;
    v5 = realloc(v5, v9);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  if (v3)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  result = memcpy(&v6[v5], v10, v4);
  a2[1] += v4;
  return result;
}

void *llvm::itanium_demangle::FloatLiteralImpl<float>::printLeft(void *result, char **a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(result + 3) < 8uLL)
  {
    return result;
  }

  v3 = *(result + 2);
  v4 = *v3;
  if ((v4 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x400) != 0)
  {
    v5 = 208;
    v6 = v3[1];
    if (v6 < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 169;
    v6 = v3[1];
    if (v6 < 0)
    {
LABEL_8:
      v7 = 169;
      v8 = v3[2];
      if (v8 < 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = 208;
  v8 = v3[2];
  if (v8 < 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x400) != 0)
  {
    v9 = -48;
    v10 = v3[3];
    if (v10 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = -87;
  v10 = v3[3];
  if (v10 < 0)
  {
LABEL_16:
    v11 = -87;
    v12 = v3[4];
    if (v12 < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_15:
  if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v11 = -48;
  v12 = v3[4];
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x400) != 0)
  {
    v13 = -48;
    v14 = v3[5];
    if (v14 < 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_20:
  v13 = -87;
  v14 = v3[5];
  if (v14 < 0)
  {
    goto LABEL_24;
  }

LABEL_23:
  if ((*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x400) != 0)
  {
    v15 = -48;
    goto LABEL_26;
  }

LABEL_24:
  v15 = -87;
LABEL_26:
  v16 = v4 + v5;
  v17 = v6 + v7;
  v18 = v8 + v9;
  v19 = v10 + v11;
  v20 = v12 + v13;
  v21 = v3[6];
  v22 = v14 + v15;
  if ((v21 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x400) != 0)
  {
    v23 = v17 + 16 * v16;
    v24 = v19 + 16 * v18;
    v25 = v21 - 48;
    v26 = v3[7];
    v27 = v22 + 16 * v20;
    if (v26 < 0)
    {
LABEL_32:
      v28 = -87;
      goto LABEL_34;
    }
  }

  else
  {
    v23 = v17 + 16 * v16;
    v24 = v19 + 16 * v18;
    v25 = v21 - 87;
    v26 = v3[7];
    v27 = v22 + 16 * v20;
    if (v26 < 0)
    {
      goto LABEL_32;
    }
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x400) == 0)
  {
    goto LABEL_32;
  }

  v28 = -48;
LABEL_34:
  *__str = 0;
  v36 = 0;
  v37 = 0;
  result = snprintf(__str, 0x18uLL, "%af", COERCE_FLOAT((v26 + v28 + 16 * v25) | (v23 << 24) | (v27 << 8) | (v24 << 16)));
  if (result)
  {
    v29 = result;
    v30 = *a2;
    v31 = a2[1];
    v32 = &v31[v29];
    v33 = a2[2];
    if (&v31[v29] > v33)
    {
      if (2 * v33 <= (v32 + 992))
      {
        v34 = (v32 + 992);
      }

      else
      {
        v34 = 2 * v33;
      }

      a2[2] = v34;
      v30 = realloc(v30, v34);
      *a2 = v30;
      if (!v30)
      {
        abort();
      }

      v31 = a2[1];
    }

    result = memcpy(&v31[v30], __str, v29);
    a2[1] += v29;
  }

  return result;
}

void *llvm::itanium_demangle::FloatLiteralImpl<double>::printLeft(void *result, char **a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(result + 3) < 0x10uLL)
  {
    return result;
  }

  v3 = *(result + 2);
  v4 = *v3;
  if ((v4 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x400) != 0)
  {
    v5 = -48;
    v6 = v3[1];
    if (v6 < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = -87;
    v6 = v3[1];
    if (v6 < 0)
    {
LABEL_8:
      v7 = -87;
      v8 = v3[2];
      if (v8 < 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = -48;
  v8 = v3[2];
  if (v8 < 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x400) != 0)
  {
    v9 = -48;
    v10 = v3[3];
    if (v10 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = -87;
  v10 = v3[3];
  if (v10 < 0)
  {
LABEL_16:
    v11 = -87;
    v12 = v3[4];
    if (v12 < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_15:
  if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v11 = -48;
  v12 = v3[4];
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x400) != 0)
  {
    v13 = -48;
    v14 = v3[5];
    if (v14 < 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_20:
  v13 = -87;
  v14 = v3[5];
  if (v14 < 0)
  {
LABEL_24:
    v15 = -87;
    v16 = v3[6];
    if (v16 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_23:
  if ((*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x400) == 0)
  {
    goto LABEL_24;
  }

  v15 = -48;
  v16 = v3[6];
  if (v16 < 0)
  {
    goto LABEL_28;
  }

LABEL_27:
  if ((*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x400) != 0)
  {
    v17 = -48;
    v18 = v3[7];
    if (v18 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_28:
  v17 = -87;
  v18 = v3[7];
  if (v18 < 0)
  {
LABEL_32:
    v19 = -87;
    v20 = v3[8];
    if (v20 < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_31:
  if ((*(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x400) == 0)
  {
    goto LABEL_32;
  }

  v19 = -48;
  v20 = v3[8];
  if (v20 < 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if ((*(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x400) != 0)
  {
    v21 = -48;
    v22 = v3[9];
    if (v22 < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_36:
  v21 = -87;
  v22 = v3[9];
  if (v22 < 0)
  {
LABEL_40:
    v23 = -87;
    v24 = v3[10];
    if (v24 < 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_39:
  if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x400) == 0)
  {
    goto LABEL_40;
  }

  v23 = -48;
  v24 = v3[10];
  if (v24 < 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) != 0)
  {
    v25 = v20 + v21;
    v26 = v22 + v23;
    v27 = v24 - 48;
    v28 = v3[11];
    if (v28 < 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_44:
  v25 = v20 + v21;
  v26 = v22 + v23;
  v27 = v24 - 87;
  v28 = v3[11];
  if (v28 < 0)
  {
    goto LABEL_48;
  }

LABEL_47:
  if ((*(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x400) != 0)
  {
    v29 = -48;
    goto LABEL_50;
  }

LABEL_48:
  v29 = -87;
LABEL_50:
  v30 = v4 + v5;
  v31 = v6 + v7;
  v32 = v8 + v9;
  v33 = v10 + v11;
  v34 = v12 + v13;
  v35 = v14 + v15;
  v36 = v3[12];
  if ((v36 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x400) != 0)
  {
    v37 = -48;
  }

  else
  {
    v37 = -87;
  }

  v38 = v31 + 16 * v30;
  v39 = v33 + 16 * v32;
  v40 = v35 + 16 * v34;
  v41 = v36 + v37;
  v42 = v3[13];
  if ((v42 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x400) != 0)
  {
    v43 = (v42 - 48 + 16 * v41);
    v44 = v3[14];
    if (v44 < 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v43 = (v42 - 87 + 16 * v41);
    v44 = v3[14];
    if (v44 < 0)
    {
      goto LABEL_60;
    }
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x400) != 0)
  {
    v45 = -48;
    goto LABEL_62;
  }

LABEL_60:
  v45 = -87;
LABEL_62:
  v46 = v43 << 48;
  v47 = v3[15];
  if ((v47 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v47 + 60) & 0x400) != 0)
  {
    v48 = -48;
  }

  else
  {
    v48 = -87;
  }

  *(&v49 + 1) = v40;
  *&v49 = (v28 + v29 + 16 * v27) << 40;
  *__str = 0u;
  v57 = 0u;
  result = snprintf(__str, 0x20uLL, "%a", COERCE_DOUBLE((v49 >> 24) & 0xFFFFFFFFFFFF0000 | (v47 + v48 + 16 * (v44 + v45)) | (v38 << 56) | (v46 >> 40) & 0xFF00 | (v39 << 48) | ((((v26 + 16 * v25) << 32) | v49) >> 8) & 0xFF000000 | ((v18 + v19 + 16 * (v16 + v17)) << 32)));
  if (result)
  {
    v50 = result;
    v51 = *a2;
    v52 = a2[1];
    v53 = &v52[v50];
    v54 = a2[2];
    if (&v52[v50] > v54)
    {
      if (2 * v54 <= (v53 + 992))
      {
        v55 = (v53 + 992);
      }

      else
      {
        v55 = 2 * v54;
      }

      a2[2] = v55;
      v51 = realloc(v51, v55);
      *a2 = v51;
      if (!v51)
      {
        abort();
      }

      v52 = a2[1];
    }

    result = memcpy(&v52[v51], __str, v50);
    a2[1] += v50;
  }

  return result;
}

void *llvm::itanium_demangle::FloatLiteralImpl<long double>::printLeft(void *result, char **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(result + 3) < 0x20uLL)
  {
    return result;
  }

  v3 = (*(result + 2) + 1);
  v4 = &v26 + 4;
  v5 = 32;
  v6 = MEMORY[0x1E69E9830];
  do
  {
    v9 = *(v3 - 1);
    if ((v9 & 0x8000000000000000) == 0 && (*(v6 + 4 * v9 + 60) & 0x400) != 0)
    {
      v10 = -48;
      v11 = *v3;
      if (v11 < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v10 = -87;
      v11 = *v3;
      if (v11 < 0)
      {
        goto LABEL_3;
      }
    }

    if ((*(v6 + 4 * v11 + 60) & 0x400) == 0)
    {
LABEL_3:
      v7 = -87;
      goto LABEL_4;
    }

    v7 = -48;
LABEL_4:
    v8 = v11 + v7 + 16 * (v9 + v10);
    v4[4] = v8;
    v3 += 2;
    ++v4;
    v5 -= 2;
  }

  while (v5);
  if (v4 + 3 > &v27)
  {
    v12 = LOBYTE(v27);
    LOBYTE(v27) = v8;
    v4[3] = v12;
    v13 = BYTE1(v27);
    BYTE1(v27) = v4[2];
    v4[2] = v13;
    v14 = BYTE2(v27);
    BYTE2(v27) = v4[1];
    v4[1] = v14;
    v15 = BYTE3(v27);
    BYTE3(v27) = *v4;
    *v4 = v15;
    v16 = BYTE4(v27);
    BYTE4(v27) = *(v4 - 1);
    *(v4 - 1) = v16;
    v17 = BYTE5(v27);
    BYTE5(v27) = *(v4 - 2);
    *(v4 - 2) = v17;
    v18 = BYTE6(v27);
    BYTE6(v27) = *(v4 - 3);
    *(v4 - 3) = v18;
    v19 = HIBYTE(v27);
    HIBYTE(v27) = *(v4 - 4);
    *(v4 - 4) = v19;
  }

  *__str = 0u;
  memset(v29, 0, sizeof(v29));
  result = snprintf(__str, 0x2AuLL, "%LaL", v27);
  if (result)
  {
    v20 = result;
    v21 = *a2;
    v22 = a2[1];
    v23 = &v22[v20];
    v24 = a2[2];
    if (&v22[v20] > v24)
    {
      if (2 * v24 <= (v23 + 992))
      {
        v25 = (v23 + 992);
      }

      else
      {
        v25 = 2 * v24;
      }

      a2[2] = v25;
      v21 = realloc(v21, v25);
      *a2 = v21;
      if (!v21)
      {
        abort();
      }

      v22 = a2[1];
    }

    result = memcpy(&v22[v21], __str, v20);
    a2[1] += v20;
  }

  return result;
}

char *llvm::itanium_demangle::StringLiteral::printLeft(uint64_t a1, char **a2)
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

  *&v5[v4] = 15394;
  a2[1] += 2;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  result = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 2) > v13)
  {
    v14 = (v12 + 994);
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
    result = realloc(result, v16);
    *a2 = result;
    if (result)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  *&v12[result] = 8766;
  a2[1] += 2;
  return result;
}
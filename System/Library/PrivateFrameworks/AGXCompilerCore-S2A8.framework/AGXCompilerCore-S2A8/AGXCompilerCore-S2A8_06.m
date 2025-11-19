uint64_t sub_23C511A84(uint64_t a1)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 560);
  v4 = (v3 - *v3);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = (v3 + v5 + *(v3 + v5));
  }

  else
  {
    v6 = 0;
  }

  v21 = 0;
  v7 = (v6 - *v6);
  if (*v7 >= 0xDu && (v8 = v7[6]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_23C4B15BC(v2, v9, &v21);
  v11 = sub_23C510F9C((a1 + 2432));
  v13 = v12;
  v14 = a1 + *(*a1 - 24);
  v15 = *(a1 + 3837);
  v16 = (*(*(a1 + 2960) + 32) >> 8) & 0xF;
  v17 = *(a1 + 3838);
  v18 = *(v14 + 480);
  v19 = (*(**(v14 + 344) + 432))();
  sub_23C4B2DFC(v11, 4, v19);
  if (v10)
  {
    sub_23C4B02B4(v11, 10, v21);
  }

  sub_23C4B2DFC(v11, 12, *(a1 + 3844));

  return sub_23C4B03D4(v11, v13);
}

uint64_t sub_23C511C08(uint64_t a1, uint64_t *a2, int a3)
{
  v16 = a2;
  v5 = *a2;
  v6 = a1 + *(*a1 - 24);
  v8 = 1416;
  if (*(v6 + 152) == *a2)
  {
    v8 = 1432;
  }

  v9 = 1424;
  if (*(v6 + 152) == *a2)
  {
    v9 = 1440;
  }

  if (a3)
  {
    v8 = v9;
  }

  v7 = *(v6 + 344);
  v10 = *(v7 + v8);
  if (v10)
  {
    v11 = strlen(*(v7 + v8));
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_23C49EB10(v6, v10, v11, v5, v5);
  v15[16] = 257;
  v13 = sub_23C497A7C(v6 + 8, *(v12 + 24), v12, &v16, 1, v15);
  if (a3 == 1)
  {
    return (*(*a1 + 384))(a1, v13);
  }

  return v13;
}

BOOL sub_23C511D44(void *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C503B2C(a1);
    v4 = sub_23C52A7B4(a1);
    v5 = a1 + *(*a1 - 24);
    v5[774] = 1;
    v6 = *(v5 + 186);
    v7 = *(v5 + 184) - *(v5 + 188);
    sub_23C4B5F88(v5 + 88, v3);
    sub_23C4C521C(v5 + 88, v4);
    v8 = a1 + *(*a1 - 24);
    v9 = sub_23C4B03D4((v5 + 704), v7 + v6);
    sub_23C4B1AD8((v8 + 704), v9);
  }

  return v2;
}

void sub_23C511E58(void *a1@<X0>, std::string *a2@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = a1[514];
  sub_23C49F8D0(v35, "AGCVertexContextStateGL");
  sub_23C49F8D0(v33, "vertexUnpackState");
  sub_23C49F8D0(&v38, &unk_23C53F34D);
  if (*(v2 + 80))
  {
    v3 = 0;
    do
    {
      v4 = (v2 + 4 * v3);
      sub_23C49F8D0(&v48, "AGCVertexElement");
      sub_23C49F8D0(&v47, "code");
      sub_23C4B7004(&v50, &v47.__r_.__value_.__l.__data_, *v4);
      sub_23C49F8D0(v45, "components");
      sub_23C4B7004(&v51, v45, v4[1]);
      sub_23C49F8D0(v43, "type");
      sub_23C4B705C(&v52, v43, off_278BBFEE8[v4[2]]);
      sub_23C49F8D0(v41, "normalized");
      sub_23C4B7004(&v53, v41, HIBYTE(*v4) & 1);
      sub_23C49F8D0(&v40, "bgraSwizzle");
      sub_23C4B7004(&v54, &v40.__r_.__value_.__l.__data_, (*v4 >> 25) & 1);
      sub_23C49F8D0(&__p, "unused");
      sub_23C4B7004(v55, &__p.__r_.__value_.__l.__data_, *v4 >> 26);
      sub_23C4D6FAC(&v37, &v48, 0, &v50, 6);
      for (i = 0; i != 0x1FFFFFFFFFFFFFEELL; i -= 3)
      {
        if (SHIBYTE(v55[0].__r_.__value_.__r.__words[i + 2]) < 0)
        {
          operator delete(v55[i / 3].__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v37;
      }

      else
      {
        v6 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      std::string::append(&v38, v6, size);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      ++v3;
    }

    while (v3 < *(v2 + 80));
  }

  sub_23C49F8D0(&v48, "AGCVertexUnpackState");
  sub_23C49F8D0(&v47, "currentAttribs");
  sub_23C4C8324(&v50, &v47.__r_.__value_.__l.__data_, *(v2 + 64));
  sub_23C49F8D0(v45, "instancedAttribs");
  sub_23C4C8324(&v51, v45, *(v2 + 72));
  sub_23C49F8D0(v43, "elementCount");
  sub_23C4C8324(&v52, v43, *(v2 + 80));
  sub_23C49F8D0(v41, "vertexIDCode");
  sub_23C4C8324(&v53, v41, *(v2 + 84));
  sub_23C49F8D0(&v40, "instanceIDCode");
  sub_23C4C8324(&v54, &v40.__r_.__value_.__l.__data_, *(v2 + 85));
  sub_23C49F8D0(&__p, "unused");
  sub_23C4C8324(v55, &__p.__r_.__value_.__l.__data_, *(v2 + 86));
  sub_23C49F8D0(&v37, "elements : ");
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23C49F988(&__dst, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v38;
  }

  sub_23C4D6FAC(&v56, &v37, 0, &__dst, 1);
  sub_23C4D6FAC(&v32, &v48, 0, &v50, 7);
  for (j = 0; j != -21; j -= 3)
  {
    if (SHIBYTE(v56.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v56.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v50, v33, &v32);
  sub_23C49F8D0(&v48, "clip_distance_enable_mask");
  sub_23C4D7674(&v51, &v48.__r_.__value_.__l.__data_, *(v2 + 88));
  sub_23C49F8D0(&v47, "outputPointSize");
  sub_23C4D7674(&v52, &v47.__r_.__value_.__l.__data_, HIBYTE(*(v2 + 88)) & 1);
  sub_23C49F8D0(v45, "shaderDebugEnable");
  sub_23C4D7674(&v53, v45, (*(v2 + 88) >> 9) & 1);
  sub_23C49F8D0(v43, "unused");
  sub_23C4D7674(&v54, v43, *(v2 + 88) >> 10);
  sub_23C4D6FAC(&v31, v35, 0, &v50, 5);
  for (k = 0; k != -15; k -= 3)
  {
    if (SHIBYTE(v54.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v54.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  v10 = a1[515];
  if (v10)
  {
    sub_23C49F8D0(&v37, &unk_23C53F34D);
    for (m = 0; m != 32; ++m)
    {
      sub_23C49F8D0(&v48, "AGCSamplerPCFState");
      sub_23C49F8D0(&v47, "compareFunc");
      sub_23C4B705C(&v50, &v47.__r_.__value_.__l.__data_, off_278BBFF48[*(v10 + 2 * m) & 0xF]);
      sub_23C49F8D0(v45, "clampPCFEnabled");
      sub_23C4D7674(&v51, v45, (*(v10 + 2 * m) >> 4) & 1);
      sub_23C49F8D0(v43, "mipmapMinFilterEnabled");
      sub_23C4D7674(&v52, v43, (*(v10 + 2 * m) >> 5) & 1);
      sub_23C49F8D0(v41, "trilinearMinFilterEnabled");
      sub_23C4D7674(&v53, v41, (*(v10 + 2 * m) >> 6) & 1);
      sub_23C49F8D0(&v40, "linearMinFilterEnabled");
      sub_23C4D7674(&v54, &v40.__r_.__value_.__l.__data_, (*(v10 + 2 * m) >> 7) & 1);
      sub_23C49F8D0(&__p, "linearMagFilterEnabled");
      sub_23C4D7674(v55, &__p.__r_.__value_.__l.__data_, HIBYTE(*(v10 + 2 * m)) & 1);
      sub_23C49F8D0(&v38, "unused");
      sub_23C4D7674(&v56, &v38.__r_.__value_.__l.__data_, *(v10 + 2 * m) >> 9);
      sub_23C4D6FAC(&__dst, &v48, 1, &v50, 7);
      for (n = 0; n != -21; n -= 3)
      {
        if (SHIBYTE(v56.__r_.__value_.__r.__words[n + 2]) < 0)
        {
          operator delete(*(&v56.__r_.__value_.__l.__data_ + n * 8));
        }
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(&v37, p_dst, v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    sub_23C49F8D0(&v48, "AGCSamplerPCFStates");
    sub_23C49F8D0(&v50, "pcf : ");
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&v51, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
    }

    else
    {
      v51 = v37;
    }

    sub_23C4D6FAC(&__p, &v48, 0, &v50, 2);
    for (ii = 0; ii != -6; ii -= 3)
    {
      if (SHIBYTE(v51.__r_.__value_.__r.__words[ii + 2]) < 0)
      {
        operator delete(*(&v50 + ii * 8 + 24));
      }
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_23C49F8D0(&__p, &unk_23C53F34D);
  }

  v16 = a1[516];
  sub_23C49F8D0(&v48, &unk_23C53F34D);
  for (jj = 1; jj != 33; ++jj)
  {
    std::to_string(&v47, v16[jj]);
    v18 = std::string::append(&v47, " ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v50;
    }

    else
    {
      v20 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v50.__r_.__value_.__l.__size_;
    }

    std::string::append(&v48, v20, v21);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

  sub_23C49F8D0(&v47, "AGCSamplerRemapStateGL");
  sub_23C49F8D0(v45, "samplerCount");
  sub_23C4B7004(&v50, v45, *v16);
  sub_23C49F8D0(v43, "samplerToTexUnitMap");
  std::operator+<char>();
  v22 = std::string::append(&v40, "]");
  v23 = v22->__r_.__value_.__r.__words[2];
  *v41 = *&v22->__r_.__value_.__l.__data_;
  v42 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B733C(&v51, v43, v41);
  sub_23C4D6FAC(&v38, &v47, 0, &v50, 2);
  for (kk = 0; kk != -6; kk -= 3)
  {
    if (SHIBYTE(v51.__r_.__value_.__r.__words[kk + 2]) < 0)
    {
      operator delete(*(&v50 + kk * 8 + 24));
    }
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  sub_23C4B7AC8(&v50, &v31.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v38;
  }

  else
  {
    v25 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v38.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v50, v25, v26);
  *a2 = *v27;
  v27->__r_.__value_.__r.__words[0] = 0;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_23C5129F8(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1C880;
  v1[520] = &unk_284F1CA80;
  v2 = v1[517];
  if (v2)
  {
    v1[518] = v2;
    operator delete(v2);
  }

  v3 = v1[510];
  if (v3)
  {
    v1[511] = v3;
    operator delete(v3);
  }

  v4 = v1[487];
  if (v4 != v1 + 489)
  {
    free(v4);
  }

  sub_23C52B334(v1, off_284F1CAE8);
  sub_23C4B130C((v1 + 520));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C512B24(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1C880;
  v1[520] = &unk_284F1CA80;
  v2 = v1[517];
  if (v2)
  {
    v1[518] = v2;
    operator delete(v2);
  }

  v3 = v1[510];
  if (v3)
  {
    v1[511] = v3;
    operator delete(v3);
  }

  v4 = v1[487];
  if (v4 != v1 + 489)
  {
    free(v4);
  }

  sub_23C52B334(v1, off_284F1CAE8);

  return sub_23C4B130C((v1 + 520));
}

uint64_t sub_23C512C00(uint64_t a1)
{
  v2 = a1 + *(*a1 - 24);
  if (*(*(v2 + 344) + 1653))
  {
    goto LABEL_68;
  }

  v3 = *(v2 + 320);
  Function = llvm::Module::getFunction();
  sub_23C5133A0(&v54, *(a1 + 3088));
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v5 = *(Function + 88);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
      v6 = *(Function + 88);
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(Function + 88);
  }

  v6 = v5;
LABEL_7:
  v7 = v6 + 40 * *(Function + 96);
  if (v5 != v7)
  {
    v8 = 0;
    do
    {
      if (*(v5 + 8))
      {
        if (v54)
        {
          v54 = v54 & 0xFC00000000000001 | (2 * (((1 << v8) | (v54 >> 1)) & ~(-1 << (v54 >> 58))));
        }

        else
        {
          *(*v54 + 8 * (v8 >> 6)) |= 1 << v8;
        }
      }

      v5 += 40;
      ++v8;
    }

    while (v5 != v7);
  }

  v9 = *(a1 + 4080);
  if (*(a1 + 4088) != v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v9 + 20 * v10);
      v13 = v12[2];
      if (v13 > 0xA)
      {
        LODWORD(v14) = -1;
      }

      else
      {
        v14 = (qword_23C534E90[v13] * (*v12 + 1) + 3) >> 2;
      }

      v15 = v12[3];
      sub_23C5133A0(&v53, *(a1 + 3088));
      if (v14)
      {
        v16 = v14 + v15;
        if (v53)
        {
          v53 = v53 & 0xFC00000000000001 | (2 * ((((1 << v16) + (-1 << v15)) | (v53 >> 1)) & ~(-1 << (v53 >> 58))));
          goto LABEL_30;
        }

        v17 = v15 >> 6;
        if ((v15 >> 6) == v16 >> 6)
        {
          v18 = (1 << v16) + (-1 << v15);
          v19 = (*v53 + 8 * v17);
LABEL_29:
          *v19 |= v18;
          goto LABEL_30;
        }

        v20 = *v53;
        *(*v53 + 8 * v17) |= -1 << v15;
        v21 = (v15 + 63) & 0xFFFFFFC0;
        if (v21 + 64 <= v16)
        {
          do
          {
            v20[v21 >> 6] = -1;
            v22 = v21 + 64;
            v23 = v21 + 128;
            v21 += 64;
          }

          while (v23 <= v16);
        }

        else
        {
          v22 = (v15 + 63) & 0xFFFFFFC0;
        }

        if (v22 < v16)
        {
          v18 = ~(-1 << v16);
          v19 = &v20[v22 >> 6];
          goto LABEL_29;
        }
      }

LABEL_30:
      if (v53)
      {
        v34 = v53 >> 58;
        if ((v54 & 1) == 0)
        {
          v35 = *(v54 + 64);
          goto LABEL_47;
        }

        if ((((v53 & v54) >> 1) & ~((-1 << v34) | (-1 << (v54 >> 58)))) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v54)
        {
          v34 = *(v53 + 64);
          v35 = v54 >> 58;
LABEL_47:
          if (v35 < v34)
          {
            v34 = v35;
          }

          if (!v34)
          {
LABEL_63:
            v37 = *(a1 + 4080) + 20 * v11;
            v38 = *(a1 + 4088);
            v39 = v38 - (v37 + 20);
            if (v38 != v37 + 20)
            {
              memmove((*(a1 + 4080) + 20 * v11), (v37 + 20), v38 - (v37 + 20));
            }

            *(a1 + 4088) = v37 + v39;
            goto LABEL_66;
          }

          v36 = 0;
          while (2)
          {
            if (v53)
            {
              if (((v53 >> 1) & ~(-1 << (v53 >> 58)) & (1 << v36)) == 0)
              {
                goto LABEL_59;
              }
            }

            else if ((*(*v53 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
            {
              goto LABEL_59;
            }

            if (v54)
            {
              if (((v54 >> 1) & ~(-1 << (v54 >> 58)) & (1 << v36)) != 0)
              {
                goto LABEL_62;
              }
            }

            else if ((*(*v54 + 8 * (v36 >> 6)) & (1 << v36)) != 0)
            {
              goto LABEL_62;
            }

LABEL_59:
            if (v34 == ++v36)
            {
              goto LABEL_63;
            }

            continue;
          }
        }

        LODWORD(v24) = *(v53 + 8);
        v25 = *(v54 + 8);
        if (v25 >= v24)
        {
          v24 = v24;
        }

        else
        {
          v24 = v25;
        }

        if (!v24)
        {
          goto LABEL_63;
        }

        v26 = *v53;
        v27 = *v54;
        v28 = v24 - 1;
        do
        {
          v30 = *v26++;
          v29 = v30;
          v31 = *v27++;
          v32 = v31 & v29;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v28 == 0;
          }

          --v28;
        }

        while (!v33);
        if (!v32)
        {
          goto LABEL_63;
        }
      }

LABEL_62:
      ++v11;
LABEL_66:
      sub_23C51350C(&v53);
      v10 = v11;
      v9 = *(a1 + 4080);
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 4088) - v9) >> 2) > v11);
  }

  sub_23C51350C(&v54);
LABEL_68:
  v40 = *(a1 + 4080);
  if (-858993459 * ((*(a1 + 4088) - v40) >> 2))
  {
    v41 = v40[4];
    v42 = a1 + *(*a1 - 24);
    *(v42 + 774) = 1;
    v43 = *(v42 + 744);
    v44 = *(v42 + 736) - *(v42 + 752);
    sub_23C4B0A04((v42 + 704), 4, *v40);
    sub_23C4B0A04((v42 + 704), 6, *(*(a1 + 4080) + 4));
    sub_23C4B0A04((v42 + 704), 8, *(*(a1 + 4080) + 8));
    v45 = *(*(a1 + 4080) + 12);
    v46 = (v42 + 704);
    if (v41)
    {
      sub_23C4B0A04(v46, 12, v45);
      sub_23C4B2DFC((v42 + 704), 10, *(*(a1 + 4080) + 16));
      sub_23C4B03D4(v42 + 704, v44 + v43);
      sub_23C4B1830(1uLL);
    }

    sub_23C4B0A04(v46, 10, v45);
    sub_23C4B03D4(v42 + 704, v44 + v43);
    operator new();
  }

  v47 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, &unk_27E1F744B, 0);
  v48 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, &unk_27E1F744C, 0);
  v49 = a1 + *(*a1 - 24);
  *(v49 + 774) = 1;
  v50 = *(v49 + 744);
  v51 = *(v49 + 736) - *(v49 + 752);
  sub_23C4B5F88((v49 + 704), v47);
  sub_23C4C521C((v49 + 704), v48);
  return sub_23C4B03D4(v49 + 704, v51 + v50);
}

uint64_t *sub_23C5133A0(uint64_t *result, uint64_t a2)
{
  *result = 1;
  if (a2 > 0x39)
  {
    operator new();
  }

  *result = (a2 << 58) | 1;
  return result;
}

void ***sub_23C51350C(void ***a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0 && v2)
  {
    if (*v2 != v2 + 2)
    {
      free(*v2);
    }

    MEMORY[0x23EED50C0](v2, 0x1080C40EF38A13ELL);
  }

  return a1;
}

uint64_t sub_23C513568(void *a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 160);
    v3 = llvm::ConstantFP::get();
  }

  v5 = llvm::User::operator new(0x58);
  v6 = (a1 + *(*a1 - 24));
  v7 = v6[40];
  v8 = v6[20];
  v19[0] = "agc.vertex_point_size_adjust";
  v20 = 259;
  v16 = *(v6[43] + 836) | 0x100000000;
  v9 = llvm::GlobalVariable::GlobalVariable();
  *(v9 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C((a1 + *(*a1 - 24)));
  v10 = (a1 + *(*a1 - 24));
  v20 = 257;
  v11 = sub_23C497C88(v10 + 1, **(*v5 + 16), v5, 0, v19);
  v12 = *v3;
  v18 = 257;
  v13 = sub_23C49FEB4((v10 + 1), v11, v12, v17);
  v14 = a1 + *(*a1 - 24);
  v20 = 257;
  return sub_23C4A0BD4((v14 + 8), v3, v13, v19);
}

uint64_t sub_23C513724(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  sub_23C4B8D20();
  sub_23C4B8DA4();
  v10 = *(*(a2 + 16) + 8 * a3);
  v11 = sub_23C504F18(a1 + *(*a1 - 24), v10, &v32);
  if ((*(v10 + 8) & 0xFE) == 0x12)
  {
    v12 = *(v10 + 32);
  }

  else
  {
    v12 = 1;
  }

  v31 = 0;
  v33 = 2;
  v13 = sub_23C506AF0(0, a4, &v33, &v31);
  v14 = a4 - 8 * *(a4 + 8);
  v15 = *(v14 + 24);
  if (v15 && *v15)
  {
    v15 = 0;
  }

  v16 = *(v14 + 32);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  v18 = v13 ^ 1;
  if (!v15)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0 && !*v16)
  {
    String = llvm::MDString::getString(v15);
    v21 = *(*sub_23C4B8E28(String, v20) + 8);
    v22 = llvm::MDString::getString(v16);
    v24 = *(*sub_23C4B8F30(v22, v23) + 8);
    if (v21 == 1)
    {
      v24 = 3;
    }

    v25 = v31;
    if (v11 == 1)
    {
      v26 = 6;
    }

    else
    {
      v26 = 3;
    }

    if (v11 == 1)
    {
      v27 = 5;
    }

    else
    {
      v27 = 2;
    }

    if (v11 == 1)
    {
      v28 = 4;
    }

    else
    {
      v28 = 1;
    }

    if (v21)
    {
      v28 = v24;
    }

    if (v21 != 1)
    {
      v27 = v28;
    }

    if (v21 == 2)
    {
      v29 = v26;
    }

    else
    {
      v29 = v27;
    }

    *a5 = v12;
    *(a5 + 4) = v11;
    *(a5 + 8) = v21;
    *(a5 + 12) = v24;
    *(a5 + 16) = v25;
    if (*(a5 + 47) < 0)
    {
      operator delete(*(a5 + 24));
    }

    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 56) = v11 == 1;
    *(a5 + 57) = 0;
    *(a5 + 60) = v29;
    return 1;
  }

  return v17;
}

uint64_t sub_23C5138DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v21 = 0;
  v19[0] = 1;
  result = sub_23C506AF0(0, a3, v19, &v21);
  v10 = *a2;
  if (*a2)
  {
    v11 = *(*a2 + 8) == 18;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v13 = *(v10 + 32);
    if (v13)
    {
      v14 = 0;
      v15 = 4 * v21;
      do
      {
        v16 = a1 + *(*a1 - 24);
        v20 = 257;
        v17 = *(v16 + 24);
        v18 = llvm::ConstantInt::get();
        result = sub_23C5057E8((v16 + 8), a2, v18, v19);
        *a5 |= 1 << (v15 + v14);
        *(a4 + 8 * (v15 + v14++)) = result;
      }

      while (v13 != v14);
    }
  }

  else if (*(a1 + *(*a1 - 24) + 160) == v10)
  {
    v12 = 4 * v21;
    *a5 |= 1 << (4 * v21);
    *(a4 + 8 * v12) = a2;
  }

  return result;
}

uint64_t sub_23C513A58(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4120);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C513A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4128);
  if (*v2 > a2)
  {
    return v2[a2 + 1];
  }

  return a2;
}

uint64_t sub_23C513A94(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  sub_23C529E64(a1);
  Int8PtrTy = llvm::Type::getInt8PtrTy(*(a1 + *(*a1 - 24) + 336), 2);
  v3 = *(a1 + *(*a1 - 24) + 192);
  v4 = *Int8PtrTy;
  v91[0] = Int8PtrTy;
  v91[1] = v3;
  llvm::StructType::get();
  v81 = *(*(a1 + 4112) + 72);
  v82 = *(*(a1 + 4112) + 64);
  v5 = (a1 + 160);
  v6 = *(*(a1 + 160) + 80);
  if (v6)
  {
    v7 = (v6 - 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1;
  if (*(*(a1 + *(*a1 - 24) + 344) + 1653))
  {
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v7);
    sub_23C4FE424(v7, &FirstInsertionPt);
    sub_23C497720(a1 + *(*a1 - 24) + 8, v7, FirstInsertionPt);
    if (*(a1 + 4108) != -1)
    {
      v9 = a1 + *(*a1 - 24);
      v10 = sub_23C52B4D8(a1);
      v11 = *(a1 + *(*a1 - 24) + 192);
      v92 = 257;
      v12 = sub_23C49ACF8(v9 + 8, 49, v10, v11, v91);
      v13 = *(a1 + *(*a1 - 24) + 200);
      v90 = 257;
      sub_23C49ACF8(v9 + 8, 39, v12, v13, v89);
    }

    if (*(a1 + 4104) != -1)
    {
      v30 = a1 + *(*a1 - 24);
      v31 = sub_23C52B4D8(a1);
      v32 = *(a1 + *(*a1 - 24) + 192);
      v92 = 257;
      v33 = sub_23C49ACF8(v30 + 8, 49, v31, v32, v91);
      v34 = *(a1 + *(*a1 - 24) + 200);
      v90 = 257;
      sub_23C49ACF8(v30 + 8, 39, v33, v34, v89);
    }

    llvm::User::operator new(0x58);
    v35 = (a1 + *(*a1 - 24));
    v36 = v35[40];
    v37 = v35[23];
    v91[0] = "agc.primitive_buffer_path";
    v92 = 259;
    v80 = *(v35[43] + 836) | 0x100000000;
    v38 = llvm::GlobalVariable::GlobalVariable();
    *(v38 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v92 = 257;
    *(a1 + 4072) = llvm::BasicBlock::splitBasicBlock();
    v39 = *(a1 + *(*a1 - 24) + 336);
    v91[0] = "primbuf_path";
    v92 = 259;
    v40 = *(a1 + 160);
    operator new();
  }

  *(a1 + 4072) = v7;
  v14 = a1 + *(v8 - 24);
  v15 = llvm::BasicBlock::getFirstInsertionPt(v7);
  if (v15)
  {
    v16 = v15 - 24;
  }

  else
  {
    v16 = 0;
  }

  sub_23C4C30FC(v14 + 8, v16);
  v83 = *(a1 + 3904);
  if (v83)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(*(a1 + 3896) + 4 * v17);
      v20 = *(*(a1 + 4136) + 4 * v19);
      v21 = *(a1 + 4112);
      v22 = *(v5 + *(*a1 - 24));
      llvm::FixedVectorType::get();
      v23 = llvm::UndefValue::get();
      if (v20)
      {
        v85 = v21;
        for (i = 0; i != v20; ++i)
        {
          v25 = a1 + *(*a1 - 24);
          v26 = sub_23C52B4D8(a1);
          v92 = 257;
          v27 = *(v25 + 192);
          v28 = llvm::ConstantInt::get();
          v23 = sub_23C505AA8(v25 + 8, v23, v26, v28, v91);
        }

        v18 += i;
        v29 = sub_23C515B0C(a1, *(v85 + 4 * v19), v23);
        v5 = (a1 + 160);
      }

      else
      {
        v29 = sub_23C515B0C(a1, *(v21 + 4 * v19), v23);
      }

      *(a1 + 3944 + 8 * v19) = v29;
      v17 = (v17 + 1);
    }

    while (v17 != v83);
  }

  v41 = *(a1 + *(*a1 - 24) + 320);
  Function = llvm::Module::getFunction();
  v43 = Function;
  if (Function)
  {
    v44 = *(*(Function + 8) + 24);
  }

  else
  {
    v44 = 0;
  }

  v45 = *(a1 + 4072);
  v89[0] = 0;
  v46 = *(a1 + 160);
  v84 = v44;
  if (*(v46 + 9))
  {
    llvm::Function::BuildLazyArguments(v46);
    v48 = *v5;
    v47 = *(v46 + 11);
    if (*(v48 + 9))
    {
      llvm::Function::BuildLazyArguments(v48);
    }

    v46 = v48;
  }

  else
  {
    v47 = *(v46 + 11);
  }

  v49 = *(v46 + 11) + 40 * *(v46 + 12);
  if (v47 != v49)
  {
    v50 = a1 + 8;
    v51 = 0x747265762E726961;
    v52 = 0x7475706E695F7865;
    do
    {
      if (*(v47 + 8))
      {
        v53 = *(v45 + 40);
        v54 = v53 ? v53 - 24 : 0;
        sub_23C4C30FC(v50 + *(*a1 - 24), v54);
        v55 = *(v47 + 32);
        v56 = *(*(a1 + 72) + 8 * v55);
        if ((sub_23C52EDE4(a1, v47, v55, v56) & 1) == 0)
        {
          String = llvm::MDString::getString(*(v56 - 8 * *(v56 + 8) + 8));
          if (v58 == 16 && *String == v51 && String[1] == v52)
          {
            v60 = *(v56 - 8 * *(v56 + 8) + 16);
            if (v60)
            {
              if (*v60)
              {
                v61 = 0;
              }

              else
              {
                v61 = *(v56 - 8 * *(v56 + 8) + 16);
              }
            }

            else
            {
              v61 = 0;
            }

            v62 = llvm::MDString::getString(v61);
            if (v63 == 12 && (*v62 == 0x61636F6C2E726961 ? (v64 = *(v62 + 8) == 1852795252) : (v64 = 0), v64))
            {
              v74 = *(*(v47 + 8) + 24);
              LODWORD(v91[0]) = 3;
              sub_23C506AF0(0, v56, v91, v89);
              sub_23C514EB4(a1, v74[1], v89[0], 0);
              llvm::Instruction::eraseFromParent(v74);
            }

            else
            {
              v88[0] = 0;
              LODWORD(v91[0]) = 3;
              sub_23C506AF0(0, v56, v91, v88);
              v65 = v88[0];
              v66 = v43;
              v67 = v52;
              v68 = v51;
              v69 = *(a1 + 4112);
              v86 = *(a1 + 3944 + 8 * v88[0]);
              v70 = *a1;
              v71 = *(*(a1 + 4072) + 40);
              if (v71)
              {
                v72 = v71 - 24;
              }

              else
              {
                v72 = 0;
              }

              sub_23C4C30FC(v50 + *(*a1 - 24), v72);
              v73 = (v69 + 4 * v65);
              v51 = v68;
              v52 = v67;
              v43 = v66;
              sub_23C514FDC(a1, v73, *v47, v86);
              llvm::Value::replaceAllUsesWith();
            }
          }
        }
      }

      v47 += 40;
    }

    while (v47 != v49);
  }

  if (v43)
  {
    if (v84)
    {
      if (llvm::Value::getNumUses(v84))
      {
        sub_23C514EB4(a1, v43[1], *(*(a1 + 4112) + 84), 3);
      }

      else
      {
        llvm::Instruction::eraseFromParent(v84);
      }
    }

    llvm::Function::eraseFromParent(v43);
  }

  v75 = *(a1 + *(*a1 - 24) + 320);
  v76 = llvm::Module::getFunction();
  if (v76)
  {
    v77 = v76;
    sub_23C514EB4(a1, *(v76 + 8), WORD2(*(*(a1 + 4112) + 80)) >> 8, 1);
    llvm::Function::eraseFromParent(v77);
  }

  v78 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_23C514EB4(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = *(result + 4112);
    v8 = result + 192;
    v9 = result + 8;
    v10 = a4 & 0xFFFFFFFD;
    v11 = result + 3944;
    do
    {
      v12 = *(v5 + 24);
      v5 = *(v5 + 8);
      v13 = *v6;
      v14 = v12;
      if (v10 == 1)
      {
        v15 = *v6;
        v14 = (v8 + *(v13 - 24));
      }

      v16 = *v14;
      v17 = *v6;
      sub_23C4C30FC(v9 + *(v13 - 24), v12);
      v18 = v6[514];
      v19 = *(v18 + 80);
      if (*(v18 + 80))
      {
        v20 = 0;
        while (*(v7 + 4 * v20) != a3)
        {
          if (v19 == ++v20)
          {
            v21 = 0;
            LODWORD(v20) = v19;
            goto LABEL_12;
          }
        }

        v21 = *(v11 + 8 * v20);
      }

      else
      {
        LODWORD(v20) = 0;
        v21 = 0;
      }

LABEL_12:
      sub_23C514FDC(v6, (v7 + 4 * v20), v16, v21);
      llvm::Value::replaceAllUsesWith();
      result = llvm::Instruction::eraseFromParent(v12);
    }

    while (v5);
  }

  return result;
}

uint64_t sub_23C514FDC(uint64_t *a1, int *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v103 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 8) & 0xFE) == 0x12)
  {
    v8 = *(a3 + 32);
    v5 = **(a3 + 16);
  }

  else
  {
    v8 = 1;
  }

  v9 = *a1;
  v10 = (a1 + *(*a1 - 24));
  if (v5 == v10[20] || v5 == v10[19])
  {
    if (*(a2 + 2) - 9 >= 2)
    {
      v14 = *(*a4 + 32);
      llvm::FixedVectorType::get();
      v9 = *a1;
    }

    v15 = *(a1 + *(v9 - 24) + 160);
    v12 = llvm::ConstantFP::get();
    v16 = *(a1 + *(*a1 - 24) + 160);
    v11 = llvm::ConstantFP::get();
    v17 = *a2;
    if ((*a2 & 0x1000000) == 0)
    {
      v18 = BYTE2(v17);
      if (v18 <= 0xA)
      {
        if (((1 << v18) & 0xAC) != 0)
        {
LABEL_43:
          v19 = a1 + *(*a1 - 24);
          v20 = a4;
          v21 = 1;
          goto LABEL_44;
        }

        if (((1 << v18) & 0x150) != 0)
        {
          v19 = a1 + *(*a1 - 24);
          v20 = a4;
          v21 = 0;
LABEL_44:
          v43 = sub_23C504E2C(v19, v20, v21);
LABEL_63:
          v13 = v43;
          goto LABEL_64;
        }

        if (((1 << v18) & 0x600) != 0)
        {
          v41 = a1 + *(*a1 - 24);
          v42 = *(v41 + 43);
          v94 = *(v41 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v95, (v41 + 8));
          v96 = *(v41 + 26);
          v13 = (*(*v42 + 104))(v42, &v94, 5, *(a1 + *(*a1 - 24) + 160), a4, 0, *(a2 + 2) << 16 == 589824);
          if (!v95)
          {
            goto LABEL_64;
          }

          goto LABEL_60;
        }
      }

      if (v18 != 1)
      {
        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_43;
      }

      v23 = sub_23C504E2C(a1 + *(*a1 - 24), a4, 1);
      v63 = *v23;
LABEL_62:
      v64 = llvm::ConstantFP::get();
      v65 = a1 + *(*a1 - 24);
      v98 = 257;
      v43 = sub_23C49EA2C((v65 + 8), v23, v64, v97);
      goto LABEL_63;
    }

    v13 = 0;
    v22 = BYTE2(v17);
    if (v22 > 6)
    {
      if ((v22 - 9) < 2)
      {
        v39 = a1 + *(*a1 - 24);
        v40 = *(v39 + 43);
        v88 = *(v39 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (v39 + 8));
        v90 = *(v39 + 26);
        v13 = (*(*v40 + 104))(v40, &v88, 5, *(a1 + *(*a1 - 24) + 160), a4, 1, *(a2 + 2) << 16 == 589824);
        if (!v89)
        {
          goto LABEL_64;
        }

LABEL_60:
        llvm::MetadataTracking::untrack();
        goto LABEL_64;
      }

      if (v22 != 7)
      {
        if (v22 != 8)
        {
          goto LABEL_64;
        }

        v32 = 0;
        goto LABEL_35;
      }

      v60 = 8;
    }

    else
    {
      if (v22 <= 4)
      {
        if (v22 == 3)
        {
          v51 = sub_23C504E2C(a1 + *(*a1 - 24), a4, 1);
          v52 = *v51;
          v53 = llvm::ConstantFP::get();
          v54 = *v51;
          v55 = llvm::ConstantFP::get();
          v56 = a1 + *(*a1 - 24);
          v98 = 257;
          v57 = sub_23C49EA2C((v56 + 8), v51, v53, v97);
          v58 = a1 + *(*a1 - 24);
          v59 = *(v58 + 43);
          v91 = *(v58 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (v58 + 8));
          v93 = *(v58 + 26);
          v13 = (*(*v59 + 56))(v59, &v91, v57, v55, 0);
          if (!v92)
          {
            goto LABEL_64;
          }

          goto LABEL_60;
        }

        if (v22 != 4)
        {
          goto LABEL_64;
        }

        v23 = sub_23C504E2C(a1 + *(*a1 - 24), a4, 0);
        v24 = *v23;
        goto LABEL_62;
      }

      if (v22 != 5)
      {
        v32 = 0;
        v22 = 16;
LABEL_35:
        v84 = v22;
        goto LABEL_59;
      }

      v60 = 16;
    }

    v84 = v60;
    v32 = 1;
LABEL_59:
    v61 = a1 + *(*a1 - 24);
    v62 = *(v61 + 43);
    v85 = *(v61 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v86, (v61 + 8));
    v87 = *(v61 + 26);
    v13 = (*(*v62 + 88))(v62, &v85, a4, v84, v32, 32);
    if (!v86)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (v5 != v10[24] && v5 != v10[23])
  {
    v11 = 0;
    v12 = 0;
LABEL_9:
    v13 = 0;
    goto LABEL_64;
  }

  v11 = 0;
  v25 = *(a2 + 2);
  if (v25 <= 0xA)
  {
    if (((1 << v25) & 0x2A8) != 0)
    {
      v33 = *(*a4 + 32);
      v27 = llvm::FixedVectorType::get();
      v34 = *(a1 + *(*a1 - 24) + 192);
      v12 = llvm::ConstantInt::get();
      v35 = *(a1 + *(*a1 - 24) + 192);
      v11 = llvm::ConstantInt::get();
      if (llvm::Type::getScalarSizeInBits(*a4) <= 0x1F)
      {
        v36 = a1 + *(*a1 - 24);
        v98 = 257;
        v37 = (v36 + 8);
        v38 = 40;
LABEL_50:
        v43 = sub_23C49ACF8(v37, v38, a4, v27, v97);
        goto LABEL_63;
      }
    }

    else
    {
      if (((1 << v25) & 0x550) == 0)
      {
        v12 = 0;
        v13 = 0;
        if (*(a2 + 2))
        {
          goto LABEL_64;
        }

        v46 = *(*a4 + 32);
        v47 = llvm::FixedVectorType::get();
        v48 = *(a1 + *(*a1 - 24) + 192);
        v12 = llvm::ConstantInt::get();
        v49 = *(a1 + *(*a1 - 24) + 192);
        v11 = llvm::ConstantInt::get();
        v50 = a1 + *(*a1 - 24);
        v98 = 257;
        v43 = sub_23C4BB4D4((v50 + 8), a4, v47, v97);
        goto LABEL_63;
      }

      v26 = *(*a4 + 32);
      v27 = llvm::FixedVectorType::get();
      v28 = *(a1 + *(*a1 - 24) + 192);
      v12 = llvm::ConstantInt::get();
      v29 = *(a1 + *(*a1 - 24) + 192);
      v11 = llvm::ConstantInt::get();
      v30 = *a4;
      if ((*(*a4 + 8) & 0xFE) == 0x12)
      {
        v31 = *(**(v30 + 2) + 8);
      }

      else
      {
        v31 = *(*a4 + 8);
      }

      if (v31 <= 6)
      {
        v44 = a1 + *(*a1 - 24);
        v98 = 257;
        v43 = sub_23C49B2C8((v44 + 8), a4, v27, v97);
        goto LABEL_63;
      }

      if (llvm::Type::getScalarSizeInBits(v30) <= 0x1F)
      {
        v45 = a1 + *(*a1 - 24);
        v98 = 257;
        v37 = (v45 + 8);
        v38 = 39;
        goto LABEL_50;
      }
    }

    v13 = a4;
    goto LABEL_64;
  }

  v12 = 0;
  v13 = 0;
LABEL_64:
  v66 = *(*v13 + 32);
  v67 = *a2;
  if ((*a2 & 0x2000000) != 0)
  {
    v68 = *(a1 + *(*a1 - 24) + 192);
    v99 = llvm::ConstantInt::get();
    v69 = *(a1 + *(*a1 - 24) + 192);
    v100 = llvm::ConstantInt::get();
    v70 = *(a1 + *(*a1 - 24) + 192);
    v101 = llvm::ConstantInt::get();
    v71 = *(a1 + *(*a1 - 24) + 192);
    v102 = llvm::ConstantInt::get();
    v72 = llvm::ConstantVector::get();
    v73 = a1 + *(*a1 - 24);
    v74 = *v13;
    v75 = llvm::UndefValue::get();
    v98 = 257;
    v13 = sub_23C49A3AC((v73 + 8), v13, v75, v72, v97);
    v67 = *a2;
  }

  v76 = BYTE1(v67);
  v77 = BYTE1(v67) + 1;
  if (v66 > v77)
  {
    v13 = sub_23C505670(a1 + *(*a1 - 24), v13, v77, 0);
  }

  if (v8 == 1 || v8 <= v76)
  {
    v13 = sub_23C505670(a1 + *(*a1 - 24), v13, v8, 1);
  }

  else if (v8 > v77)
  {
    v13 = sub_23C50593C(a1 + *(*a1 - 24), v13, v8);
    do
    {
      if (v77 == 3)
      {
        v78 = v11;
      }

      else
      {
        v78 = v12;
      }

      v79 = a1 + *(*a1 - 24);
      v98 = 257;
      v80 = *(v79 + 24);
      v81 = llvm::ConstantInt::get();
      v13 = sub_23C505AA8((v79 + 8), v13, v78, v81, v97);
      ++v77;
    }

    while (v8 != v77);
  }

  result = sub_23C505300((a1 + *(*a1 - 24)), v13, v5);
  v83 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C515B0C(void *a1, int a2, uint64_t a3)
{
  result = 0;
  if (BYTE2(a2) <= 4u)
  {
    if (BYTE2(a2) > 2u)
    {
      goto LABEL_11;
    }

    if (!BYTE2(a2))
    {
      return a3;
    }

    if (BYTE2(a2) == 1)
    {
LABEL_11:
      v16 = *(a1 + *(*a1 - 24) + 192);
      v11 = llvm::FixedVectorType::get();
      v14 = a1 + *(*a1 - 24);
      v15 = "as_i32";
    }

    else
    {
      v13 = *(a1 + *(*a1 - 24) + 152);
      v11 = llvm::FixedVectorType::get();
      v14 = a1 + *(*a1 - 24);
      v15 = "as_half";
    }

    goto LABEL_14;
  }

  if (BYTE2(a2) > 0xAu)
  {
    return result;
  }

  if (((1 << SBYTE2(a2)) & 0x60) != 0)
  {
    v17 = *(a1 + *(*a1 - 24) + 184);
    v11 = llvm::FixedVectorType::get();
    v14 = a1 + *(*a1 - 24);
    v15 = "as_i16";
LABEL_14:
    v19[0] = v15;
    v20 = 259;
    v12 = (v14 + 8);
    v9 = a3;
    return sub_23C49ACF8(v12, 49, v9, v11, v19);
  }

  if (((1 << SBYTE2(a2)) & 0x180) != 0)
  {
    v18 = *(a1 + *(*a1 - 24) + 176);
    v11 = llvm::FixedVectorType::get();
    v14 = a1 + *(*a1 - 24);
    v15 = "as_i8";
    goto LABEL_14;
  }

  if (((1 << SBYTE2(a2)) & 0x600) == 0)
  {
    return result;
  }

  v6 = a1 + *(*a1 - 24);
  v20 = 257;
  v7 = *(v6 + 24);
  v8 = llvm::ConstantInt::get();
  v9 = sub_23C5057E8((v6 + 8), a3, v8, v19);
  v10 = a1 + *(*a1 - 24);
  v11 = *(v10 + 24);
  v19[0] = "as_packed_i32";
  v20 = 259;
  v12 = (v10 + 8);
  return sub_23C49ACF8(v12, 49, v9, v11, v19);
}

uint64_t sub_23C515D78(uint64_t a1)
{
  sub_23C4FE97C(a1);
  v2 = *(a1 + 4112);
  v3 = *(v2 + 80);
  if (*(v2 + 80))
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 3896);
      v6 = *(a1 + 3904);
      v7 = v5;
      if (v6)
      {
        v8 = 4 * v6;
        v7 = *(a1 + 3896);
        while (*(*(a1 + 4112) + 4 * v4) >= *(*(a1 + 4112) + 4 * *v7))
        {
          ++v7;
          v8 -= 4;
          if (!v8)
          {
            goto LABEL_13;
          }
        }
      }

      if (&v5[v6] == v7)
      {
LABEL_13:
        sub_23C4A72DC(a1 + 3896, v4);
      }

      else
      {
        if (v6 >= *(a1 + 3908))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = *(a1 + 3896);
        v10 = (v9 + v7 - v5);
        *(v9 + 4 * v6) = *(v9 + 4 * v6 - 4);
        v11 = *(a1 + 3904);
        v12 = v9 + 4 * v11 - 4;
        if (v12 != v10)
        {
          memmove(v10 + 1, v10, v12 - v10);
          LODWORD(v11) = *(a1 + 3904);
        }

        *(a1 + 3904) = v11 + 1;
        *v10 = v4;
      }

      ++v4;
    }

    while (v4 != v3);
  }

  v13 = *(a1 + 3904);
  v14 = *(a1 + 4144);
  v15 = *(a1 + 4136);
  v16 = (v14 - v15) >> 2;
  if (v13 > v16)
  {
    v17 = v13 - v16;
    v18 = *(a1 + 4152);
    if (v17 > (v18 - v14) >> 2)
    {
      v19 = v18 - v15;
      if (v19 >> 1 > v13)
      {
        v13 = v19 >> 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v13;
      }

      sub_23C4B1830(v20);
    }

    bzero(*(a1 + 4144), 4 * v17);
    v21 = v14 + 4 * v17;
    goto LABEL_28;
  }

  if (v13 < v16)
  {
    v21 = v15 + 4 * v13;
LABEL_28:
    *(a1 + 4144) = v21;
  }

  v22 = *(a1 + 3904);
  if (v22)
  {
    v62 = 0;
    v23 = 0;
    v24 = 4 * v22;
    while (1)
    {
      v25 = *(*(a1 + 3896) + v23);
      v26 = *(a1 + 4112);
      v27 = *(v26 + 4 * v25);
      v28 = *(v26 + 4 * v25);
      v29 = *(v26 + 80);
      if (v28 == BYTE4(v29))
      {
        v30 = 0;
        v31 = 0;
        v32 = 3;
      }

      else if (v28 == BYTE5(v29))
      {
        v30 = 0;
        v31 = 1;
        v32 = 1;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v30 = 1;
      }

      if (BYTE2(v27) > 0xAu)
      {
        v35 = -1;
      }

      else
      {
        v33 = BYTE1(v27);
        v34 = dword_23C534E60[(v27 >> 16) & 0xF];
        v35 = (v34 + v34 * v33 + 3) >> 2;
      }

      *(*(a1 + 4136) + 4 * v25) = v35;
      v36 = *(v26 + 4 * v25);
      v37 = *(a1 + 3088);
      LODWORD(v63) = BYTE1(v36);
      DWORD1(v63) = v36;
      DWORD2(v63) = BYTE2(v36);
      HIDWORD(v63) = v37;
      v64 = v32;
      sub_23C51640C(a1 + 4080, &v63);
      v38 = *a1;
      if (*(*(a1 + 344 + *(*a1 - 24)) + 1653) != 1)
      {
        goto LABEL_47;
      }

      if (v30)
      {
        v35 = 0;
        HIDWORD(v62) |= *(*(a1 + 4112) + 72) >> *(v26 + 4 * v25);
      }

      else
      {
        if (v28 != BYTE4(v29))
        {
          v35 = 0;
          HIDWORD(v62) |= v31;
          v39 = v31 | v62;
          goto LABEL_46;
        }

        v35 = 0;
      }

      v39 = 1;
LABEL_46:
      LODWORD(v62) = v39;
LABEL_47:
      *(a1 + 3088) += v35;
      v23 += 4;
      if (v24 == v23)
      {
        goto LABEL_50;
      }
    }
  }

  v62 = 0;
  v38 = *a1;
LABEL_50:
  if ((*(*(a1 + *(v38 - 24) + 344) + 1654) & 1) == 0)
  {
    goto LABEL_75;
  }

  v40 = *(a1 + 160);
  if (*(v40 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v42 = *(a1 + 160);
    v41 = *(v40 + 88);
    if (*(v42 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v40 = v42;
  }

  else
  {
    v41 = *(v40 + 88);
  }

  v43 = *(v40 + 88) + 40 * *(v40 + 96);
  if (v41 == v43)
  {
LABEL_75:
    v52 = 0;
    goto LABEL_76;
  }

  while (1)
  {
    v44 = *(*(a1 + 72) + 8 * *(v41 + 32));
    if (*(v41 + 8))
    {
      v45 = v44 == 0;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_74;
    }

    v46 = *(v44 - 8 * *(v44 + 8) + 8);
    if (*v46)
    {
      goto LABEL_74;
    }

    String = llvm::MDString::getString(v46);
    if (v48 != 29)
    {
      goto LABEL_74;
    }

    v49 = bswap64(*String);
    v50 = 0x6169722E76657274;
    if (v49 == 0x6169722E76657274)
    {
      v49 = bswap64(String[1]);
      v50 = 0x65785F7472616E73;
      if (v49 == 0x65785F7472616E73)
      {
        v49 = bswap64(String[2]);
        if (v49 == 0x666F726D5F666565)
        {
          v49 = bswap64(*(String + 21));
          if (v49 == 0x666565646261636BLL)
          {
            v51 = 0;
            goto LABEL_73;
          }

          v50 = 0x666565646261636BLL;
        }

        else
        {
          v50 = 0x666F726D5F666565;
        }
      }
    }

    v51 = v49 < v50 ? -1 : 1;
LABEL_73:
    if (!v51)
    {
      break;
    }

LABEL_74:
    v41 += 40;
    if (v41 == v43)
    {
      goto LABEL_75;
    }
  }

  v52 = 1;
LABEL_76:
  if (v62)
  {
    v53 = *(a1 + *(*a1 - 24) + 344);
    v54 = (*(*v53 + 312))(v53, a1 + 3088, 4);
    v55 = *(*(a1 + 4112) + 84);
    LODWORD(v63) = 0;
    *(&v63 + 4) = v55 | 0x300000000;
    HIDWORD(v63) = v54;
    v64 = 4;
    sub_23C51640C(a1 + 4080, &v63);
    *(a1 + 4104) = v54;
  }

  if ((v62 & 0x100000000) != 0)
  {
    v56 = *(a1 + *(*a1 - 24) + 344);
    v57 = (*(*v56 + 312))(v56, a1 + 3088, 2);
    v58 = (WORD2(*(*(a1 + 4112) + 80)) >> 8);
    LODWORD(v63) = 0;
    *(&v63 + 4) = v58 | 0x300000000;
    HIDWORD(v63) = v57;
    v64 = 2;
    sub_23C51640C(a1 + 4080, &v63);
    *(a1 + 4108) = v57;
  }

  if (v52)
  {
    v59 = *(a1 + *(*a1 - 24) + 344);
    v60 = (*(*v59 + 312))(v59, a1 + 3088, 5);
    *&v63 = 0;
    DWORD2(v63) = 3;
    HIDWORD(v63) = v60;
    v64 = 5;
    sub_23C51640C(a1 + 4080, &v63);
    *(a1 + 3260) = v60;
  }

  return 1;
}

void sub_23C51640C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2) + 1;
    if (v9 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_23C496CE8();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      sub_23C496CE8();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 4);
    v6 = v12 + 20;
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
    *(v4 + 16) = *(a2 + 4);
    *v4 = v5;
    v6 = v4 + 20;
  }

  *(a1 + 8) = v6;
}

void sub_23C516540(void *a1)
{
  *a1 = &unk_284F1C880;
  v2 = (a1 + 520);
  a1[520] = &unk_284F1CA80;
  v3 = a1[517];
  if (v3)
  {
    a1[518] = v3;
    operator delete(v3);
  }

  v4 = a1[510];
  if (v4)
  {
    a1[511] = v4;
    operator delete(v4);
  }

  v5 = a1[487];
  if (v5 != a1 + 489)
  {
    free(v5);
  }

  sub_23C52B334(a1, off_284F1CAE8);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C516610(void *a1)
{
  *a1 = &unk_284F1C880;
  v2 = (a1 + 520);
  a1[520] = &unk_284F1CA80;
  v3 = a1[517];
  if (v3)
  {
    a1[518] = v3;
    operator delete(v3);
  }

  v4 = a1[510];
  if (v4)
  {
    a1[511] = v4;
    operator delete(v4);
  }

  v5 = a1[487];
  if (v5 != a1 + 489)
  {
    free(v5);
  }

  sub_23C52B334(a1, off_284F1CAE8);
  sub_23C4B130C(v2);
  return a1;
}

uint64_t sub_23C5166C0(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23C4B1190(a1 + 4160, a2, *a3);
  v11 = sub_23C52B05C(a1, off_284F1CAE8, a3, a4, 1);
  *a1 = &unk_284F1C880;
  *(a1 + 4160) = &unk_284F1CA80;
  *(a1 + 3896) = a1 + 3912;
  *(a1 + 3904) = 0x800000000;
  *(a1 + 3944) = 0u;
  *(a1 + 3960) = 0u;
  *(a1 + 3976) = 0u;
  *(a1 + 3992) = 0u;
  *(a1 + 4008) = 0u;
  *(a1 + 4024) = 0u;
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4080) = 0;
  *(a1 + 4088) = 0u;
  *(a1 + 4104) = -1;
  *(a1 + 4112) = a4;
  *(a1 + 4120) = a6;
  *(a1 + 4128) = a5;
  *(a1 + 4136) = 0u;
  *(a1 + 4152) = 0;
  *(a1 + 3116) = *(a4 + 88);
  sub_23C52F648(v11);
  return a1;
}

BOOL sub_23C5167F4(void *a1)
{
  v1 = a1;
  result = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (!result)
  {
    return result;
  }

  v3 = sub_23C503B2C(v1);
  v4 = sub_23C52A7B4(v1);
  v5 = v4;
  v6 = *(*v1 - 24);
  v7 = v1 + v6;
  v8 = *(v1 + v6 + 568);
  v100 = v1;
  v94 = v3;
  if (v8)
  {
    v9 = &v8[-*v8];
    if (*v9 >= 5u)
    {
      v10 = *(v9 + 2);
      if (v10)
      {
        v93 = v4;
        v11 = *&v8[v10];
        if (*&v8[v10 + v11])
        {
          v12 = 0;
          v98 = 0;
          v99 = 0;
          v13 = 0;
          v14 = 14;
          do
          {
            v102 = v12;
            v15 = v10;
            v16 = *&v8[v10 - 10 + v11 + v14];
            v17 = v11 + v10 + v16;
            v18 = &v8[v14 + v17];
            v19 = *(v18 - 10);
            v20 = *&v8[v14 - 10 + v17 - v19];
            if (v20 >= 0xB && (v21 = v11 + v15 + v16, *&v8[v21 - v19 + v14]))
            {
              v22 = *&v8[v21 - 10 + v14 + *&v8[v21 - v19 + v14]];
            }

            else
            {
              v22 = 0;
            }

            v23 = *(v1 + 3944);
            v24 = v22 - v23;
            v101 = v13;
            if (v22 >= v23)
            {
              *(v7 + 774) = 1;
              if (v20 < 5)
              {
                v30 = 0;
                v12 = v102;
              }

              else
              {
                v28 = v11 + v15 + v16;
                v29 = *&v8[v14 - 6 + v28 - v19];
                v12 = v102;
                if (v29)
                {
                  v30 = *&v8[v28 - 10 + v14 + v29];
                }

                else
                {
                  v30 = 0;
                }
              }

              v41 = *(v7 + 744);
              v42 = *(v7 + 736) - *(v7 + 752);
              v43 = *(v1 + 4464);
              sub_23C4B0A04((v7 + 704), 4, v30);
              sub_23C4B2DFC((v7 + 704), 6, *(v43 + 8 * v24 + 4));
              v44 = sub_23C4B03D4(v7 + 704, v42 + v41);
              v45 = v99;
              v46 = (v99 >> 2) + 1;
              if (v46 >> 62)
              {
                sub_23C496CE8();
              }

              if (v99 >> 2 != -1)
              {
                if (!(v46 >> 62))
                {
                  operator new();
                }

LABEL_71:
                sub_23C496CE8();
              }

              v52 = (4 * (v99 >> 2));
              *v52 = v44;
              v99 = (v52 + 1);
              memcpy(0, 0, v45);
            }

            else
            {
              *(v7 + 774) = 1;
              if (v20 >= 5 && (v25 = v11 + v15 + v16, (v26 = *&v8[v14 - 6 + v25 - v19]) != 0))
              {
                v27 = *&v8[v25 - 10 + v14 + v26];
              }

              else
              {
                v27 = 0;
              }

              v95 = *(v7 + 752);
              v96 = *(v7 + 736);
              v97 = *(v7 + 744);
              v31 = *(v1 + 3936) + 32 * v22;
              sub_23C4B0A04((v7 + 704), 4, v27);
              sub_23C4B0A04((v7 + 704), 6, *(v31 + 4));
              sub_23C4B2DFC((v7 + 704), 8, *(v31 + 8));
              v32 = v11 + v15 + v16;
              v33 = &v8[v14 + v32 - *(v18 - 10)];
              if (*(v33 - 5) >= 7u && (v34 = *(v33 - 2)) != 0)
              {
                v35 = *&v8[v11 - 10 + v15 + v16 + v14 + v34];
              }

              else
              {
                v35 = 0;
              }

              sub_23C4B0A04((v7 + 704), 10, v35);
              v36 = *(v18 - 10);
              if (*&v8[v14 - 10 + v32 - v36] < 9u)
              {
                v40 = 0;
                v1 = v100;
                v39 = v102;
              }

              else
              {
                v37 = v11 + v15 + v16;
                v38 = *&v8[v14 - 2 + v37 - v36];
                v1 = v100;
                v39 = v102;
                if (v38)
                {
                  v40 = *&v8[v37 - 10 + v14 + v38];
                }

                else
                {
                  v40 = 0;
                }
              }

              sub_23C4B0A04((v7 + 704), 12, v40);
              sub_23C4B0A04((v7 + 704), 14, *(v31 + 20));
              sub_23C4B0A04((v7 + 704), 16, *(v31 + 24));
              sub_23C4B2DFC((v7 + 704), 18, *(v31 + 28));
              v47 = sub_23C4B03D4(v7 + 704, v96 - v95 + v97);
              v48 = v98 - v39;
              v49 = (v98 - v39) >> 2;
              v50 = v49 + 1;
              if ((v49 + 1) >> 62)
              {
                sub_23C496CE8();
              }

              if (-v39 >> 1 > v50)
              {
                v50 = -v39 >> 1;
              }

              if (-v39 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v51 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v51 = v50;
              }

              if (v51)
              {
                if (!(v51 >> 62))
                {
                  operator new();
                }

                goto LABEL_71;
              }

              *(4 * v49) = v47;
              v98 = 4 * v49 + 4;
              memcpy(0, v39, v48);
              v12 = 0;
            }

            v13 = v101 + 1;
            v6 = *(*v1 - 24);
            v7 = v1 + v6;
            v8 = *(v1 + v6 + 568);
            v10 = *&v8[-*v8 + 4];
            v11 = *&v8[v10];
            v14 += 4;
          }

          while (v101 + 1 < *&v8[v10 + v11]);
          v5 = v93;
          v8 = 0;
          v53 = v98;
        }

        else
        {
          v12 = 0;
          v8 = 0;
          v99 = 0;
          v53 = 0;
          v5 = v4;
        }

        goto LABEL_50;
      }
    }

    v12 = 0;
    v8 = 0;
  }

  else
  {
    v12 = 0;
  }

  v99 = 0;
  v53 = 0;
LABEL_50:
  v54 = v1 + v6;
  v55 = v53 - v12;
  *(v54 + 774) = 1;
  v56 = v53;
  sub_23C4B0AD0(v54 + 704, v53 - v12, 4uLL);
  sub_23C4B0AD0(v54 + 704, v55, 4uLL);
  v57 = v56 - v12;
  if (v57)
  {
    v58 = v12;
  }

  else
  {
    v58 = &unk_23C534EE8;
  }

  if (v57)
  {
    v59 = v57 >> 2;
    v60 = v58 - 4;
    do
    {
      v61 = v59 - 1;
      v62 = *&v60[4 * v59];
      sub_23C4B08D8(v54 + 704, 4uLL);
      sub_23C4B0A6C(v54 + 704, *(v54 + 736) - *(v54 + 752) + *(v54 + 744) - v62 + 4);
      v59 = v61;
    }

    while (v61);
  }

  *(v54 + 774) = 0;
  v63 = sub_23C4B0A6C(v54 + 704, v57 >> 2);
  v64 = v100 + *(*v100 - 24);
  *(v64 + 774) = 1;
  sub_23C4B0AD0(v64 + 704, v99 - v8, 4uLL);
  sub_23C4B0AD0(v64 + 704, v99 - v8, 4uLL);
  v65 = v99 - v8;
  if (v99 == v8)
  {
    v66 = &unk_23C534EE9;
  }

  else
  {
    v66 = v8;
  }

  if (v65)
  {
    v67 = v65 >> 2;
    v68 = v66 - 4;
    do
    {
      v69 = v67 - 1;
      v70 = *&v68[4 * v67];
      sub_23C4B08D8(v64 + 704, 4uLL);
      sub_23C4B0A6C(v64 + 704, *(v64 + 736) - *(v64 + 752) + *(v64 + 744) - v70 + 4);
      v67 = v69;
    }

    while (v69);
  }

  *(v64 + 774) = 0;
  v71 = sub_23C4B0A6C(v64 + 704, v65 >> 2);
  v72 = v100 + *(*v100 - 24);
  *(v72 + 774) = 1;
  v73 = *(v72 + 736);
  v74 = *(v72 + 752);
  v75 = *(v72 + 744);
  sub_23C4B0A04((v72 + 704), 4, *(v100 + 3088));
  if (v63)
  {
    sub_23C4B08D8(v72 + 704, 4uLL);
    sub_23C4B0A04((v72 + 704), 6, *(v72 + 736) - *(v72 + 752) + *(v72 + 744) - v63 + 4);
  }

  v76 = v73 - v74;
  if (v71)
  {
    sub_23C4B08D8(v72 + 704, 4uLL);
    sub_23C4B0A04((v72 + 704), 8, *(v72 + 736) - *(v72 + 752) + *(v72 + 744) - v71 + 4);
  }

  v77 = sub_23C4B03D4(v72 + 704, v76 + v75);
  v78 = v100 + *(*v100 - 24);
  *(v78 + 774) = 1;
  v79 = *(v78 + 744);
  v80 = *(v78 + 736) - *(v78 + 752);
  sub_23C4B5F88((v78 + 704), v94);
  sub_23C4C521C((v78 + 704), v5);
  if (v77)
  {
    sub_23C4B08D8(v78 + 704, 4uLL);
    sub_23C4B0A04((v78 + 704), 12, *(v78 + 736) - *(v78 + 752) + *(v78 + 744) - v77 + 4);
  }

  v81 = v100;
  v82 = v100 + *(*v100 - 24);
  v83 = sub_23C4B03D4(v78 + 704, v80 + v79);
  sub_23C4B1AD8(v82 + 704, v83);
  v84 = *(v100 + 3101);
  v85 = *(v100 + 3102);
  v86 = *(v100 + 3156);
  v87 = *(v100 + 3157);
  v88 = *(v100 + 3158);
  v89 = *(v100 + 3159);
  (*(**(v81 + *(*v81 - 24) + 344) + 440))();
  v90 = *(v81 + *(*v81 - 24) + 560);
  v91 = (v90 + *(v90 - *v90 + 4));
  v92 = (v91 + *v91 + *(v91 + *v91 - *(v91 + *v91) + 8));
  return *(v92 + *v92) < 0x21;
}

void sub_23C517184(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  sub_23C49F8D0(v27, "AGCVertexContextStateAGP");
  sub_23C49F8D0(v25, "mutableBuffers");
  v4 = *v3;
  sub_23C4B0E40(v31);
  v5 = sub_23C4AA520(&v32, "0x", 2);
  *(&v32 + *(v32 - 24) + 8) = *(&v32 + *(v32 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EED4FC0](v5, v4);
  std::stringbuf::str();
  sub_23C4B733C(&v37, v25, __p);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v31[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v31 + *(v31[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v32 = v6;
  v33 = MEMORY[0x277D82878] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v34);
  std::iostream::~basic_iostream();
  MEMORY[0x23EED5050](v36);
  sub_23C49F8D0(v31, "genCompilerStatistics");
  sub_23C4B7004(&v38, v31, *(v3 + 3) & 1);
  sub_23C49F8D0(__p, "genTelemetryStatistics");
  sub_23C4B7004(&v39, __p, (*(v3 + 3) >> 1) & 1);
  sub_23C49F8D0(v23, "partition_mode");
  sub_23C4B705C(&v40, v23, off_278BBFFD0[(*(v3 + 3) >> 10) & 3]);
  sub_23C49F8D0(v21, "step_function");
  sub_23C4B705C(&v41, v21, off_278BBFFF0[(*(v3 + 3) >> 12) & 3]);
  sub_23C49F8D0(v19, "vertex_amplification_mode");
  sub_23C4B705C(&v42, v19, off_278BC0010[*(v3 + 3) >> 14]);
  sub_23C49F8D0(v17, "manufactureUnlinkedVaryings");
  sub_23C4B7004(&v43, v17, (*(v3 + 3) >> 20) & 1);
  sub_23C49F8D0(v15, "customBorderColor");
  sub_23C4B7004(&v44, v15, (*(v3 + 3) >> 21) & 1);
  sub_23C49F8D0(v13, "disableTextureRWBoundsCheck");
  sub_23C4B7004(&v45, v13, (*(v3 + 3) >> 22) & 1);
  sub_23C49F8D0(v11, "debugInstrumentationEnabled");
  sub_23C4B7004(&v46, v11, (*(v3 + 3) >> 23) & 1);
  sub_23C49F8D0(v9, "unused");
  sub_23C4B7004(&v47, v9, *(v3 + 15));
  sub_23C4B70B4(a2, v27, &v37, 11);
  v7 = 264;
  do
  {
    if (v37.__r_.__value_.__s.__data_[v7 - 1] < 0)
    {
      operator delete(*&v36[v7 + 128]);
    }

    v7 -= 24;
  }

  while (v7);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C517660(uint64_t a1, llvm::AGX::CompileRequest *this)
{
  if (*(a1 + 3944))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(a1 + 3936) + v4);
      v7 = *v6;
      v8 = v6[3];
      v9 = v6[4];
      llvm::AGX::CompileRequest::addDMAListEntry(this);
      ++v5;
      v4 += 32;
    }

    while (v5 < *(a1 + 3944));
  }

  v10 = *(a1 + *(*a1 - 24) + 344);
  result = (*(*v10 + 320))(v10);
  if ((result & 1) == 0 && *(a1 + 4472))
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a1 + 3944);
    do
    {
      v15 = *(*(a1 + 4464) + v12);
      result = llvm::AGX::CompileRequest::addDMAListEntry(this);
      ++v13;
      ++v14;
      v12 += 8;
    }

    while (v13 < *(a1 + 4472));
  }

  return result;
}

void sub_23C517768(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F1F438;
  v1[568] = &off_284F1F630;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1D438);
  sub_23C4B130C((v1 + 568));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51784C(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C5178EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3928) != 1)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  if (!*(a1 + 3908))
  {
    return 0;
  }

  v5 = *(a1 + 3896);
  if (*(a1 + 3904))
  {
    while (1)
    {
      v6 = *v5;
      if (*v5 && (v6 + 8) != 0)
      {
        break;
      }

      ++v5;
    }
  }

  else
  {
    v6 = *v5;
  }

  v8 = *(v6 + 2);
  v9 = BYTE2(v8);
  v10 = HIBYTE(v8) & 0x7F;
  v11 = v8;
  v12 = BYTE1(v8);
  v13 = *(a1 + 3932) + 1;
  *(a1 + 3932) = v13;
  v14 = v9 == 1;
  if (v9 == 1)
  {
    v15 = 6;
  }

  else
  {
    v15 = 3;
  }

  if (v9 == 1)
  {
    v16 = 5;
  }

  else
  {
    v16 = 2;
  }

  if (v9 == 1)
  {
    v17 = 4;
  }

  else
  {
    v17 = 1;
  }

  if (v11)
  {
    v17 = v12;
  }

  if (v11 != 1)
  {
    v16 = v17;
  }

  if (v11 == 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  *a2 = v10;
  *(a2 + 4) = v9;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  *(a2 + 16) = v13;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 56) = v14;
  *(a2 + 57) = 0;
  *(a2 + 60) = v18;
  v19 = **v5;
  v22[0] = *v5 + 16;
  v22[1] = v19;
  sub_23C4AE5DC(&__dst, v22);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = __dst;
  *(a2 + 40) = v24;
  v20 = *v5;
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v20, (*v20 + 17));
  return 1;
}

uint64_t sub_23C517A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18[0] = a2;
  v18[1] = a3;
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    return 0;
  }

  v9 = Key;
  if (Key == *(a1 + 3904))
  {
    return 0;
  }

  v10 = *(a1 + 3896);
  v11 = *(*(v10 + 8 * Key) + 10);
  if ((v11 - 3) > 2)
  {
    return 0;
  }

  v12 = *(a1 + 3932) + 1;
  *(a1 + 3932) = v12;
  if (a5)
  {
    v13 = 10;
  }

  else
  {
    v13 = 2;
  }

  *a4 = 1;
  *(a4 + 4) = v11;
  *(a4 + 8) = 0x300000001;
  *(a4 + 16) = v12;
  if (*(a4 + 47) < 0)
  {
    operator delete(*(a4 + 24));
  }

  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 57) = a5;
  *(a4 + 60) = v13;
  sub_23C4AE5DC(&__dst, v18);
  if (*(a4 + 47) < 0)
  {
    operator delete(*(a4 + 24));
  }

  *(a4 + 24) = __dst;
  *(a4 + 40) = v17;
  v14 = *(v10 + 8 * v9);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v14, (*v14 + 17));
  return 1;
}

uint64_t sub_23C517BA8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v33[0] = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  v33[1] = v11;
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    return 0;
  }

  v13 = Key;
  if (Key == *(a1 + 3904))
  {
    return 0;
  }

  v14 = *(a1 + 3896);
  v15 = *(*(v14 + 8 * Key) + 8);
  v16 = HIBYTE(v15) & 0x7F;
  v17 = *(*(a2 + 16) + 8 * a3);
  v18 = sub_23C504F18(a1 + *(*a1 - 24), v17, &__dst);
  v19 = (*(v17 + 8) & 0xFE) == 0x12 ? *(v17 + 32) : 1;
  if (BYTE2(v15) != v18 || v16 != v19)
  {
    return 0;
  }

  v22 = *(a1 + 3932) + 1;
  *(a1 + 3932) = v22;
  if (BYTE2(v15) == 1)
  {
    v23 = 6;
  }

  else
  {
    v23 = 3;
  }

  if (BYTE2(v15) == 1)
  {
    v24 = 14;
  }

  else
  {
    v24 = 11;
  }

  if (a6)
  {
    v23 = v24;
  }

  if (BYTE2(v15) == 1)
  {
    v25 = 5;
  }

  else
  {
    v25 = 2;
  }

  if (BYTE2(v15) == 1)
  {
    v26 = 13;
  }

  else
  {
    v26 = 10;
  }

  if (a6)
  {
    v25 = v26;
  }

  if (BYTE2(v15) == 1)
  {
    v27 = 4;
  }

  else
  {
    v27 = 1;
  }

  if (BYTE2(v15) == 1)
  {
    v28 = 12;
  }

  else
  {
    v28 = 9;
  }

  if (a6)
  {
    v27 = v28;
  }

  if (v15)
  {
    v27 = v15;
  }

  if (v15 != 1)
  {
    v25 = v27;
  }

  if (v15 == 2)
  {
    v29 = v23;
  }

  else
  {
    v29 = v25;
  }

  *a5 = v16;
  *(a5 + 4) = BYTE2(v15);
  *(a5 + 8) = v15;
  *(a5 + 12) = BYTE1(v15);
  *(a5 + 16) = v22;
  if (*(a5 + 47) < 0)
  {
    operator delete(*(a5 + 24));
  }

  *(a5 + 40) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 56) = BYTE2(v15) == 1;
  *(a5 + 57) = a6;
  *(a5 + 60) = v29;
  sub_23C4AE5DC(&__dst, v33);
  if (*(a5 + 47) < 0)
  {
    operator delete(*(a5 + 24));
  }

  *(a5 + 24) = __dst;
  *(a5 + 40) = v32;
  v30 = *(v14 + 8 * v13);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v30, (*v30 + 17));
  return 1;
}

void *sub_23C517DD4(void *result, uint64_t *a2, uint64_t a3, uint64_t **a4, _DWORD *a5)
{
  v8 = result;
  v9 = *a2;
  if (*a2)
  {
    v10 = *(*a2 + 8) == 18;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v22 = 0;
    v20[0] = 1;
    result = sub_23C506AF0(0, a3, v20, &v22);
    v14 = *(v9 + 32);
    if (v14)
    {
      v15 = 0;
      v16 = 4 * v22;
      do
      {
        v17 = v8 + *(*v8 - 24);
        v21 = 257;
        v18 = *(v17 + 24);
        v19 = llvm::ConstantInt::get();
        result = sub_23C5057E8((v17 + 8), a2, v19, v20);
        *a5 |= 1 << (v16 + v15);
        a4[(v16 + v15++)] = result;
      }

      while (v14 != v15);
    }
  }

  else if (v9 == *(result + *(*result - 24) + 160))
  {
    *a5 |= 1u;
    *a4 = a2;
  }

  else
  {
    v11 = *(v9 + 32);
    *a5 |= ~(-1 << v11);
    v22 = 0;
    if (v11)
    {
      do
      {
        v12 = *(*v8 - 24);
        v21 = 257;
        result = sub_23C49B32C(v8 + v12 + 8, a2, &v22, 1, v20);
        v13 = v22;
        a4[v22] = result;
        v22 = v13 + 1;
      }

      while (v13 + 1 < v11);
    }
  }

  return result;
}

uint64_t sub_23C517FDC(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = sub_23C5240B0(a1);
  v9 = v2;
  v10 = (a1 + *(*a1 - 24));
  if (**(*(*(a1 + 160) + 24) + 16) == v10[18] && *(v10[43] + 1639) == 1)
  {
    v11 = v10[20];
    v12 = llvm::ConstantFP::get();
    v13 = *(a1 + *(*a1 - 24) + 160);
    v64.__r_.__value_.__r.__words[0] = v12;
    v64.__r_.__value_.__l.__size_ = v12;
    v64.__r_.__value_.__r.__words[2] = v12;
    v65 = llvm::ConstantFP::get();
    v14 = llvm::ConstantVector::get();
    v15 = a1 + *(*a1 - 24);
    v16 = *(a1 + 3288);
    v17 = *(a1 + 3304);
    v18 = *(a1 + 3296);
    v66 = 257;
    v19 = sub_23C49ADDC(v15 + 8, v17, v18, &v64);
    v61 = 257;
    v20 = sub_23C49A474(v15 + 8, v16, v19, &__dst);
    v2 = sub_23C5288D0(a1, v14, v20, 0, 0, *(a1 + 3156));
  }

  v21 = *(a1 + 3908);
  if (v21)
  {
    sub_23C4AA240(v2, "Following fragment input(s) mismatching vertex shader output type(s) or not written by vertex shader: ", v3, v4, v5, v6, v7, v8, v56);
    v29 = *(a1 + 3904);
    if (v29)
    {
        ;
      }
    }

    else
    {
      i = *(a1 + 3896);
    }

    v32 = *(a1 + 3896) + 8 * v29;
    if (i != v32)
    {
      v33 = *i;
      do
      {
        v57 = *v33;
        sub_23C4AA240(v22, "\t%s", v23, v24, v25, v26, v27, v28, v33 + 16);
        do
        {
          v34 = i[1];
          ++i;
          v33 = v34;
          if (v34)
          {
            v35 = v33 + 1 == 0;
          }

          else
          {
            v35 = 1;
          }
        }

        while (v35);
      }

      while (i != v32);
    }

    v36 = *(a1 + 3904);
    if (v36)
    {
        ;
      }
    }

    else
    {
      j = *(a1 + 3896);
    }

    v39 = *(a1 + 3896) + 8 * v36;
    if (j != v39)
    {
      v40 = &unk_23C53F34D;
      v41 = a1 + 408;
      do
      {
        std::string::append((v41 + *(*a1 - 24)), v40);
        v42 = **j;
        v58[0] = *j + 2;
        v58[1] = v42;
        sub_23C4AE5DC(&__str, v58);
        __idx = 0;
        v43 = std::string::find(&__str, "generated(", 0, 0xAuLL);
        if (v43 == -1)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_23C49F988(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __str;
          }
        }

        else
        {
          std::string::basic_string(&v64, &__str, v43 + 10, 0xFFFFFFFFFFFFFFFFLL, &__dst);
          v44 = std::stoi(&v64, &__idx, 10);
          std::string::basic_string(&__dst, &v64, __idx, v44, &v63);
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__r_.__value_.__l.__data_);
          }
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append((v41 + *(*a1 - 24)), p_dst, size);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        do
        {
          v48 = j[1];
          ++j;
          v47 = v48;
          if (v48)
          {
            v49 = v47 + 1 == 0;
          }

          else
          {
            v49 = 1;
          }
        }

        while (v49);
        v40 = ",";
      }

      while (j != v39);
    }
  }

  if (*(a1 + 3144) == 1)
  {
    v50 = *(a1 + *(*a1 - 24) + 320);
    llvm::Module::getOrInsertNamedMetadata();
    if (*(a1 + 3152) > 1u)
    {
      v52 = 0;
    }

    else
    {
      v51 = *(a1 + *(*a1 - 24) + 72);
      v52 = llvm::MDString::get();
    }

    v53 = *(a1 + *(*a1 - 24) + 336);
    v64.__r_.__value_.__r.__words[0] = v52;
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  if (v21)
  {
    result = 0;
  }

  else
  {
    result = v9;
  }

  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C5184A4(uint64_t a1)
{
  v109 = *MEMORY[0x277D85DE8];
  sub_23C529E64(a1);
  v2 = *(a1 + 160);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v4 = *(a1 + 160);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  for (i = *(v2 + 88) + 40 * *(v2 + 96); v3 != i; v3 += 40)
  {
    if (*(v3 + 8))
    {
      v6 = *(*(a1 + 160) + 80);
      v7 = v6 ? v6 - 24 : 0;
      v8 = *a1;
      v9 = *(v7 + 40);
      v10 = v9 ? v9 - 24 : 0;
      sub_23C4DB1C0(a1 + *(*a1 - 24), v10, *(a1 + 40));
      v11 = *(v3 + 32);
      v12 = *(*(a1 + 72) + 8 * v11);
      if ((sub_23C52EDE4(a1, v3, v11, v12) & 1) == 0)
      {
        if (sub_23C4A57A0(*(v12 - 8 * *(v12 + 8) + 8), "air.amplification_count"))
        {
          v13 = *(*a1 - 24);
          v14 = sub_23C527D50(a1);
          *(a1 + 3136) = sub_23C505300((a1 + v13), v14, *v3);
          llvm::Value::replaceAllUsesWith();
          *(a1 + 3145) = 1;
        }

        else if (sub_23C4A57A0(*(v12 - 8 * *(v12 + 8) + 8), "air.amplification_mask"))
        {
          v15 = *(*a1 - 24);
          v16 = sub_23C529724(a1);
          *(a1 + 3136) = sub_23C505300((a1 + v15), v16, *v3);
          llvm::Value::replaceAllUsesWith();
        }

        else if (sub_23C4A57A0(*(v12 - 8 * *(v12 + 8) + 8), "air.amplification_id"))
        {
          v17 = *(*a1 - 24);
          v18 = sub_23C527C64(a1, *(a1 + 3152));
          *(a1 + 3128) = sub_23C505300((a1 + v17), v18, *v3);
          llvm::Value::replaceAllUsesWith();
          *(a1 + 3144) = 1;
        }
      }
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = *(*(a1 + 160) + 80);
  if (v21)
  {
    v22 = (v21 - 24);
  }

  else
  {
    v22 = 0;
  }

  v84 = v22;
  v23 = a1 + 8;
  v88 = a1 + 192;
  v89 = 0;
  v82 = a1 + 320;
  v83 = a1 + 8;
  v24 = a1 + 344;
  do
  {
    v25 = *(v82 + *(*a1 - 24));
    v81 = v19;
    v26 = &(&off_278BBFF90)[2 * v19];
    if (*v26)
    {
      v27 = strlen(*v26);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v80 = Function;
      v29 = *(Function + 8);
      if (v29)
      {
        v30 = *(v26 + 2);
        v85 = v30 << 32;
        do
        {
          v31 = *(v29 + 24);
          v29 = *(v29 + 8);
          if (v31[1])
          {
            if (v30 == 3)
            {
              v32 = v20;
            }

            else
            {
              v32 = v89;
            }

            if (!v32)
            {
              v33 = *(v24 + *(*a1 - 24));
              v34 = (*(*v33 + 312))(v33, a1 + 3088, v30);
              v35 = v30;
              v36 = v20;
              v37 = *(*a1 - 24);
              FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v84);
              sub_23C497720(v23 + v37, v84, FirstInsertionPt);
              v39 = *(*a1 - 24);
              v87 = v34;
              v40 = sub_23C52B4D8(a1);
              v41 = *(v88 + *(*a1 - 24));
              LOWORD(v98) = 257;
              v42 = sub_23C49ACF8(v23 + v39, 49, v40, v41, v94);
              v43 = v42;
              v44 = v89;
              if (v35 == 3)
              {
                v45 = v89;
              }

              else
              {
                v45 = v42;
              }

              v86 = v36;
              if (v35 == 3)
              {
                v20 = v42;
              }

              else
              {
                v20 = v36;
              }

              v30 = v35;
              v46 = *(v24 + *(*a1 - 24));
              if ((*(*v46 + 328))(v46))
              {
                v47 = a1 + *(*a1 - 24);
                v48 = *(v47 + 192);
                v49 = sub_23C4A0414(v47);
                v50 = *(*a1 - 24);
                LOWORD(v98) = 257;
                v23 = a1 + 8;
                v51 = sub_23C497A7C(v83 + v50, **(*v49 + 16), v49, 0, 0, v94);
                v92 = 257;
                v52 = sub_23C49A474(v83 + v50, v43, v51, v91);
                if (v35 != 3)
                {
                  v44 = v52;
                }

                v89 = v44;
                v20 = v86;
                if (v35 == 3)
                {
                  v20 = v52;
                }
              }

              else
              {
                v89 = v45;
                v23 = a1 + 8;
              }

              v53 = *(a1 + 4472);
              if (v53 >= *(a1 + 4476))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(*(a1 + 4464) + 8 * v53) = v85 | v87;
              ++*(a1 + 4472);
              if (v35 == 3)
              {
                v32 = v20;
              }

              else
              {
                v32 = v89;
              }
            }

            v54 = *v31;
            if (*v32 != *v31)
            {
              v55 = *(*a1 - 24);
              LOWORD(v98) = 257;
              sub_23C49ACF8(v23 + v55, 38, v32, v54, v94);
            }

            llvm::Value::replaceAllUsesWith();
          }

          llvm::Instruction::eraseFromParent(v31);
        }

        while (v29);
      }

      llvm::Function::eraseFromParent(v80);
    }

    v19 = v81 + 1;
  }

  while (v81 != 3);
  v94[0] = "air.get_base_vertex.i32";
  v94[1] = "base_vertex";
  v56 = *(*(a1 + *(*a1 - 24) + 344) + 792);
  v95 = (*(*v56 + 136))(v56);
  v96 = 0;
  v97 = "air.get_base_vertex.i16";
  v98 = "base_vertex";
  v57 = *(*(a1 + *(*a1 - 24) + 344) + 792);
  v99 = (*(*v57 + 136))(v57);
  v100 = 0;
  v101 = "air.get_base_instance.i32";
  v102 = "base_instance";
  v58 = *(*(a1 + *(*a1 - 24) + 344) + 792);
  v103 = (*(*v58 + 144))(v58);
  v104 = 1;
  v105 = "air.get_base_instance.i16";
  v106 = "base_instance";
  v59 = *(*(a1 + *(*a1 - 24) + 344) + 792);
  v60 = 0;
  v107 = (*(*v59 + 144))(v59);
  v108 = 1;
  v93[0] = 0;
  v93[1] = 0;
  do
  {
    v61 = *(v82 + *(*a1 - 24));
    v62 = &v94[3 * v60];
    if (*v62)
    {
      v63 = strlen(*v62);
    }

    v64 = llvm::Module::getFunction();
    if (v64)
    {
      v90 = v64;
      v65 = *(v64 + 8);
      while (v65)
      {
        v66 = *(v65 + 24);
        v65 = *(v65 + 8);
        if (v66[1])
        {
          v67 = *(v62 + 5);
          v68 = v93[v67];
          if (!v68)
          {
            v69 = *(v88 + *(*a1 - 24));
            v70 = llvm::PointerType::get();
            if (*v62[1])
            {
              v91[2] = v62[1];
              v71 = 3;
            }

            else
            {
              v71 = 1;
            }

            v91[0] = "agc.buffer_pointers.";
            LOBYTE(v92) = 3;
            HIBYTE(v92) = v71;
            v68 = sub_23C4ED494(a1, v70, v91, *(v62 + 4), 4);
            v93[v67] = v68;
          }

          sub_23C4C30FC(v23 + *(*a1 - 24), v66);
          v72 = *(*a1 - 24);
          v92 = 257;
          v73 = sub_23C497C88((v23 + v72), **(*v68 + 16), v68, 0, v91);
          v74 = *(*a1 - 24);
          v92 = 257;
          v75 = sub_23C497C88((v23 + v74), **(*v73 + 16), v73, 0, v91);
          v76 = *(*a1 - 24);
          v77 = *v66;
          v92 = 257;
          sub_23C49ACF8(v23 + v76, 38, v75, v77, v91);
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v66);
      }

      llvm::Function::eraseFromParent(v90);
    }

    ++v60;
  }

  while (v60 != 4);
  v78 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_23C518E10(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_23C4FE97C(a1);
  if (*(a1 + 3146))
  {
    v2 = a1 + *(*a1 - 24);
    v18 = *(v2 + 192);
    v19 = v18;
    v3 = *(v2 + 336);
    llvm::StructType::get();
    v4 = llvm::PointerType::get();
    v16 = "agc.view_mappings_pointer_global";
    v17 = 259;
    v5 = *(*(a1 + *(*a1 - 24) + 344) + 792);
    v6 = (*(*v5 + 200))(v5);
    *(a1 + 3264) = sub_23C4ED494(a1, v4, &v16, v6, *(a1 + 3148));
  }

  if ((*(*(a1 + *(*a1 - 24) + 344) + 1675) & 1) != 0 || (sub_23C4B8970(), v7 = *(a1 + *(*a1 - 24) + 320), v8 = *(v7 + 32), v9 = v7 + 24, v8 == v7 + 24))
  {
LABEL_15:
    result = 1;
  }

  else
  {
    while (1)
    {
      v10 = v8 ? (v8 - 56) : 0;
      v11 = *(v8 + 8);
      llvm::Value::getName(v10);
      Key = llvm::StringMapImpl::FindKey();
      v13 = Key == -1 || Key == dword_27E1F7458;
      if (!v13 && *(*(qword_27E1F7450 + 8 * Key) + 8) == 3 && *(v8 - 48))
      {
        break;
      }

      v8 = v11;
      if (v11 == v9)
      {
        goto LABEL_15;
      }
    }

    std::string::append((a1 + *(*a1 - 24) + 408), "Texture writes not supported in vertex shaders");
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C519048(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F1F438;
  v1[568] = &off_284F1F630;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1D438);

  return sub_23C4B130C((v1 + 568));
}

void sub_23C519114(uint64_t a1, void *a2, int a3, int a4)
{
  v247 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + *(*a1 - 24) + 344) + 1653) & 1) == 0 && (*(a1 + 4512) || *(a1 + 4520)))
  {
    if (a4 == -1)
    {
      snprintf(__str, 0x20uLL, "arg%d");
    }

    else
    {
      snprintf(__str, 0x20uLL, "arg%d.%d");
    }

    v8 = **(*a2 + 16);
    v227 = v8;
    v9 = *(v8 + 2);
    v10 = v9;
    if ((*(v8 + 2) & 0xFE) == 0x12)
    {
      v10 = *(**(v8 + 2) + 8);
    }

    if (v10 != 15)
    {
      if (v9 > 0x11)
      {
        goto LABEL_29;
      }

      if (((1 << v9) & 0xAC7F) != 0)
      {
        goto LABEL_12;
      }

      if (((1 << v9) & 0x30000) == 0)
      {
LABEL_29:
        if ((*(v8 + 2) & 0xFE) != 0x12 && v9 != 21)
        {
          goto LABEL_193;
        }
      }

      if (!llvm::Type::isSizedDerivedType())
      {
        goto LABEL_193;
      }

LABEL_12:
      v233 = sub_23C49BBA0((a1 + 168), v8);
      LODWORD(v234) = v11;
      v12 = llvm::TypeSize::operator unsigned long long();
      v19 = v12;
      if ((v12 & 3) != 0)
      {
        v206 = v12;
        sub_23C4AA240(v12, "Cannot DMA promote %s : type size %u not a multiple of 4", v13, v14, v15, v16, v17, v18, __str);
        goto LABEL_193;
      }

      v226 = 0;
      v222 = 0;
      v221 = 0;
      v224 = 0;
      v223 = 0;
      v225 = 0;
      v240 = 128;
      v238 = MEMORY[0x23EED4160](0x4000, 8);
      sub_23C51C7C0(&v238);
      LOBYTE(v241) = 0;
      v243 = 0;
      v244 = 1;
      v245 = 0;
      if (!sub_23C51A3EC(a1, a2, __str, &v226, &v221, &v238, v20, v21))
      {
        if (!sub_23C51B2F8(a1, a2, __str, &v227, v22, v23, v24, v25) || (v8 = v227, v233 = sub_23C49BBA0((a1 + 168), v227), LODWORD(v234) = v39, v40 = llvm::TypeSize::operator unsigned long long(), !sub_23C51A3EC(a1, a2, __str, &v226, &v221, &v238, v41, v42)))
        {
LABEL_165:
          if (v243 == 1)
          {
            sub_23C4ED91C(&v241);
            llvm::deallocate_buffer(v241, (16 * v242));
            v243 = 0;
          }

          v191 = v238;
          if (v240)
          {
            v234 = 2;
            v235 = 0;
            v236 = -4096;
            v237 = 0;
            v233 = &unk_284F28A28;
            v229[0] = 2;
            v229[1] = 0;
            v230 = -8192;
            v231 = 0;
            v228 = &unk_284F28A28;
            v192 = v238 + 56;
            v193 = v240 << 7;
            do
            {
              v194 = *(v192 - 32);
              if (v194 != v236 && v194 != v230)
              {
                v196 = *(v192 - 16);
                if (v192 != v196)
                {
                  free(v196);
                  v194 = *(v192 - 32);
                }
              }

              if (v194 != -8192 && v194 != -4096 && v194 != 0)
              {
                llvm::ValueHandleBase::RemoveFromUseList((v192 - 48));
              }

              v192 += 128;
              v193 -= 128;
            }

            while (v193);
            if (v230 != -8192 && v230 != -4096 && v230)
            {
              llvm::ValueHandleBase::RemoveFromUseList(v229);
            }

            if (v236 != -8192 && v236 != -4096 && v236)
            {
              llvm::ValueHandleBase::RemoveFromUseList(&v234);
            }

            v191 = v238;
            v198 = (v240 << 7);
          }

          else
          {
            v198 = 0;
          }

          llvm::deallocate_buffer(v191, v198);
          goto LABEL_193;
        }

        v19 = v40;
      }

      v26 = *(a1 + *(*a1 - 24) + 160);
      v27 = llvm::UndefValue::get();
      v209 = &v235;
      v233 = &v235;
      v234 = 0x800000000;
      v216 = v19 >> 2;
      sub_23C501A64(&v233, v216, v27);
      v228 = ((sub_23C49BBFC((a1 + 168), v8) + 7) >> 3);
      LODWORD(v229[0]) = v28 == 1;
      StructLayout = llvm::TypeSize::operator unsigned long long();
      v36 = StructLayout;
      if ((*(v8 + 2) & 0xFE) != 0x10)
      {
        v43 = 0;
        goto LABEL_72;
      }

      if (!v239)
      {
        goto LABEL_70;
      }

      if (v240)
      {
        v37 = v240 << 7;
        v38 = v238;
        while ((*(*&v38 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          *&v38 += 128;
          v37 -= 128;
          if (!v37)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        v38 = v238;
      }

      v45 = (v238 + (v240 << 7));
      if (v45 == v38)
      {
LABEL_70:
        v36 = 0;
        v43 = 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_72;
      }

      v46 = 0;
      v47 = -1;
      v213 = StructLayout;
      v214 = (v238 + (v240 << 7));
      v212 = v19;
      while (1)
      {
        v48 = *(*&v38 + 24);
        if (*(*&v38 + 48))
        {
          v49 = **(*&v38 + 40);
          if (v49 && *(v49 + 16) == 16)
          {
            break;
          }
        }

        v51 = 0;
        v52 = v36;
LABEL_43:
        if (*(*&v38 + 124) && *(*&v38 + 120) == 1)
        {
          v53 = *v48;
          v215 = v47;
          v228 = ((sub_23C49BBFC((a1 + 168), v53) + 7) >> 3);
          LODWORD(v229[0]) = v54 == 1;
          StructLayout = llvm::TypeSize::operator unsigned long long();
          v52 = (v51 + StructLayout);
          v45 = v214;
          v47 = v215;
        }

        if (v51 < v47)
        {
          v47 = v51;
        }

        if (v46 <= v52)
        {
          v46 = v52;
        }

        do
        {
          *&v38 += 128;
        }

        while (v38 != v45 && (*(*&v38 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v38 == v45)
        {
          v43 = v47 >> 2;
          v36 = v46;
          goto LABEL_72;
        }
      }

      v210 = *(*&v38 + 24);
      v211 = v46;
      v215 = v47;
      v51 = 0;
      v55 = 1;
      v56 = v8;
      while (1)
      {
        v57 = (v49 + 24);
        if (*(v49 + 32) >= 0x41u)
        {
          v57 = *v57;
        }

        v58 = *v57;
        v59 = *(v56 + 8);
        if (!v56 || v59 != 16)
        {
          break;
        }

        if (*(v56 + 12) <= v58)
        {
          goto LABEL_71;
        }

        StructLayout = llvm::DataLayout::getStructLayout();
        v60 = *(StructLayout + 8 * v58 + 16);
        v56 = *(*(v56 + 16) + 8 * v58);
LABEL_65:
        if (!v56)
        {
          goto LABEL_71;
        }

        v51 = (v51 + v60);
        v228 = ((sub_23C49BBFC((a1 + 168), v56) + 7) >> 3);
        LODWORD(v229[0]) = v62 == 1;
        StructLayout = llvm::TypeSize::operator unsigned long long();
        if (v55 < *(*&v38 + 48))
        {
          v49 = *(*(*&v38 + 40) + 8 * v55);
          if (v49)
          {
            ++v55;
            if (*(v49 + 16) == 16)
            {
              continue;
            }
          }
        }

        v52 = (v51 + StructLayout);
        LODWORD(v19) = v212;
        v36 = v213;
        v48 = v210;
        v46 = v211;
        v45 = v214;
        v47 = v215;
        goto LABEL_43;
      }

      if (v56 && v59 == 17 && *(v56 + 32) > v58)
      {
        v56 = *(v56 + 24);
        v228 = sub_23C49BBA0((a1 + 168), v56);
        LODWORD(v229[0]) = v61;
        StructLayout = llvm::TypeSize::operator unsigned long long();
        v60 = StructLayout * v58;
        goto LABEL_65;
      }

LABEL_71:
      v43 = 0;
      LODWORD(v19) = v212;
      v36 = v213;
LABEL_72:
      v63 = v36 + 3;
      v64 = v63 >> 2;
      v65 = (v63 >> 2) - v43;
      v66 = a1 + *(*a1 - 24);
      v67 = *(*(v66 + 344) + 844);
      LODWORD(v68) = v67 - 2;
      if (v67 >= 0x80)
      {
        v68 = 126;
      }

      else
      {
        v68 = v68;
      }

      if (*(a1 + 3088) + v65 >= v68)
      {
        v205 = *(a1 + 3088);
        v206 = v68;
        v204 = (v63 >> 2) - v43;
        sub_23C4AA240(StructLayout, "Cannot DMA promote %s : ran out of vi's, need %u, already allocated %u, limit %u", v30, v31, v32, v33, v34, v35, __str);
      }

      else
      {
        v214 = v43;
        v69 = *(*(a1 + 160) + 80);
        if (v69)
        {
          v70 = v69 - 24;
        }

        else
        {
          v70 = 0;
        }

        v71 = *(v70 + 40);
        if (v71)
        {
          v72 = v71 - 24;
        }

        else
        {
          v72 = 0;
        }

        sub_23C4C30FC(v66 + 8, v72);
        v213 = *(a1 + 3088);
        if (v19 >= 4)
        {
          v73 = 0;
          v74 = (v63 >> 2);
          v75 = v214;
          do
          {
            if (v73 >= v75 && v73 < v74)
            {
              ++*(a1 + 3088);
              v76 = sub_23C52B4D8(a1);
              v233[v73] = v76;
            }

            ++v73;
          }

          while (v216 != v73);
        }

        v77 = v244;
        v219[0] = "vertex_input";
        v220 = 259;
        v218 = 264;
        LODWORD(v217[0]) = a3;
        sub_23C51BBB8(&v228, v219, v217);
        v215 = sub_23C51BC4C(a1, v8, v77, &v233, &v228);
        v205 = v214;
        v206 = (v64 - 1);
        v204 = v216;
        sub_23C4AA240(v215, "DMA promoting %s to VI, attribute size = %u words, only words [%u .. %u] actually used", v78, v79, v80, v81, v82, v83, __str);
        v91 = "false";
        v92 = v226 == 2;
        if (v226 == 2)
        {
          v93 = "true";
        }

        else
        {
          v93 = "false";
        }

        if (v225)
        {
          v91 = "true";
        }

        v204 = HIDWORD(v224);
        v205 = v91;
        v202 = v216;
        v203 = v93;
        v200 = v65;
        v201 = v214;
        sub_23C4AA240(v84, "DMA Entry = {reg_offset: %u, size : %u, offset %u, stride; %u, instanced: %s, div: %u, base_after_divisor: %s}", v85, v86, v87, v88, v89, v90, v213);
        LODWORD(v221) = v213;
        sub_23C4FA168(&v228, a3, a4);
        HIDWORD(v221) = v228;
        v223 = __PAIR64__(v214, v65);
        v94 = v215;
        LODWORD(v224) = v216;
        v222 = v92;
        v95 = sub_23C51BFD8(a1 + 3936, &v221);
        v96 = (*(a1 + 3936) + 32 * *(a1 + 3944));
        v97 = v95[1];
        *v96 = *v95;
        v96[1] = v97;
        ++*(a1 + 3944);
        if (*(v94 + 16) == 60)
        {
          v214 = *(v94 - 4);
        }

        else if (v245 == 1)
        {
          v98 = a1 + *(*a1 - 24);
          LOWORD(v231) = 257;
          v99 = sub_23C506924((v98 + 8), v8, &v228);
          v100 = (a1 + *(*a1 - 24) + 8);
          v214 = v99;
          sub_23C4BA8C0(v100, v94, v99, 0);
        }

        else
        {
          v214 = 0;
        }

        if (v239)
        {
          v101 = a1 + 8;
          v212 = a1 + 192;
          v216 = a1 + 8;
          while (1)
          {
            v102 = v238;
            if (v240)
            {
              v103 = v240 << 7;
              v104 = (v238 + 24);
              v105 = v103;
              while (1)
              {
                v106 = *v104;
                if ((*v104 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  break;
                }

                v104 += 16;
                v105 -= 128;
                if (!v105)
                {
                  v106 = *(v238 + (v240 << 7) + 24);
                  break;
                }
              }

              v107 = v240 << 7;
              v108 = v238;
              do
              {
                if ((*(v108 + 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  goto LABEL_110;
                }

                v108 += 128;
                v107 -= 128;
              }

              while (v107);
              v108 = v238 + (v240 << 7);
LABEL_110:
              while ((v102[3] | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v102 += 16;
                v103 -= 128;
                if (!v103)
                {
                  v102 = (v238 + (v240 << 7));
                  break;
                }
              }
            }

            else
            {
              v106 = *(v238 + 24);
              v108 = v238;
            }

            sub_23C51C054(&v238, v102);
            v109 = *(v108 + 48);
            v110 = sub_23C4C30FC(v101 + *(*a1 - 24), v106);
            if (!v109)
            {
              v122 = *(v108 + 124);
              if (v122 == 3)
              {
                v152 = *(*a1 - 24);
                v153 = *v106;
                v154 = llvm::PointerType::get();
                LOWORD(v231) = 257;
                v155 = sub_23C49ACF8(v101 + v152, 49, v214, v154, &v228);
                v156 = *(*a1 - 24);
                LOWORD(v231) = 257;
                sub_23C497C88((v101 + v156), **(*v155 + 16), v155, 0, &v228);
              }

              else if (v122 == 1)
              {
                sub_23C50593C(a1 + *(*a1 - 24), v94, *(*v106 + 32));
              }

              goto LABEL_160;
            }

            if (*(v108 + 120) != 1)
            {
              MEMORY[0x28223BE20](v110);
              v125 = (&v207 - v124);
              if (v123 >= 0x200)
              {
                v126 = 512;
              }

              else
              {
                v126 = v123;
              }

              bzero(&v207 - v124, v126);
              v127 = *(v212 + *(*a1 - 24));
              v128 = llvm::ConstantInt::get();
              v129 = 0;
              *v125 = v128;
              do
              {
                v125[v129 + 1] = *(*(v108 + 40) + v129 * 8);
                ++v129;
              }

              while (v109 != v129);
              v130 = *(*a1 - 24);
              LOWORD(v231) = 257;
              v131 = sub_23C4ED3A0(a1 + v130, v214, v125, (v109 + 1), &v228);
              if ((*(v108 + 124) | 2) == 3)
              {
                v132 = *(*a1 - 24);
                v133 = **(**(v106 - 4) + 16);
                v134 = llvm::PointerType::get();
                LOWORD(v231) = 257;
                v135 = v216 + v132;
                v101 = v216;
                v131 = sub_23C49ACF8(v135, 49, v131, v134, &v228);
              }

              v136 = *(*a1 - 24);
              LOWORD(v231) = 257;
              sub_23C497C88((v101 + v136), **(*v131 + 16), v131, 0, &v228);
              goto LABEL_160;
            }

            v111 = MEMORY[0x28223BE20](v110);
            v114 = &v207 - ((v113 + 15) & 0x7FFFFFFF0);
            v115 = *(v108 + 40);
            v116 = v114;
            v117 = v109;
            do
            {
              v118 = (*v115 + 24);
              if (*(*v115 + 32) >= 0x41u)
              {
                v118 = *v118;
              }

              *v116++ = *v118;
              v115 += 8;
              --v117;
            }

            while (v117);
            v119 = *(v108 + 124);
            if (v119 <= 1)
            {
              if (v119)
              {
                if (v119 == 1)
                {
                  v120 = *(*a1 - 24);
                  LOWORD(v231) = v112;
                  v121 = sub_23C49B32C(v101 + v120, v94, v114, v109, &v228);
                  sub_23C50593C(a1 + *(*a1 - 24), v121, *(*v106 + 32));
                }
              }

              else
              {
                v157 = *(*a1 - 24);
                LOWORD(v231) = v112;
                sub_23C49B32C(v101 + v157, v94, v114, v109, &v228);
              }

              goto LABEL_160;
            }

            if (v119 != 2)
            {
              if (v119 == 3)
              {
                MEMORY[0x28223BE20](v111);
                v139 = (&v207 - v138);
                if (v137 >= 0x200)
                {
                  v140 = 512;
                }

                else
                {
                  v140 = v137;
                }

                bzero(&v207 - v138, v140);
                v141 = *(v212 + *(*a1 - 24));
                v142 = llvm::ConstantInt::get();
                v143 = 0;
                *v139 = v142;
                do
                {
                  v139[v143 + 1] = *(*(v108 + 40) + v143 * 8);
                  ++v143;
                }

                while (v109 != v143);
                v144 = *(*a1 - 24);
                LOWORD(v231) = 257;
                v145 = sub_23C4ED3A0(a1 + v144, v214, v139, (v109 + 1), &v228);
                v146 = *(*a1 - 24);
                v147 = **(**(v106 - 4) + 16);
                v148 = llvm::PointerType::get();
                LOWORD(v231) = 257;
                v149 = v216 + v146;
                v101 = v216;
                v150 = sub_23C49ACF8(v149, 49, v145, v148, &v228);
                v151 = *(*a1 - 24);
                LOWORD(v231) = 257;
                sub_23C497C88((v101 + v151), **(*v150 + 16), v150, 0, &v228);
                v94 = v215;
              }

              goto LABEL_160;
            }

            v228 = ((sub_23C49BBFC((a1 + 168), *v106) + 7) >> 3);
            LODWORD(v229[0]) = v158 == 1;
            v159 = llvm::TypeSize::operator unsigned long long();
            v160 = *v106;
            if ((*(*v106 + 8) & 0xFE) == 0x10)
            {
              break;
            }

            v164 = *(v106 - 4);
            if (*(v164 + 16) != 62)
            {
              v208 = &v207;
              v177 = **(**(v164 - 32) + 16);
              v178 = v159 >> 2;
              llvm::FixedVectorType::get();
              v179 = llvm::UndefValue::get();
              if (v159 >= 4)
              {
                v180 = 0;
                LODWORD(v213) = v109 - 1;
                if (v178 <= 1)
                {
                  v181 = 1;
                }

                else
                {
                  v181 = v178;
                }

                v210 = v177;
                v211 = v181;
                do
                {
                  v182 = *(*a1 - 24);
                  LOWORD(v231) = 257;
                  v183 = sub_23C49B32C(v216 + v182, v215, v114, v109, &v228);
                  v184 = a1 + *(*a1 - 24);
                  LOWORD(v231) = 257;
                  v185 = sub_23C49ACF8(v184 + 8, 49, v183, v210, &v228);
                  v220 = 257;
                  v186 = *(v184 + 192);
                  v187 = llvm::ConstantInt::get();
                  v179 = sub_23C505AA8(v184 + 8, v179, v185, v187, v219);
                  ++*&v114[4 * v213];
                  ++v180;
                }

                while (v211 != v180);
              }

              v188 = *(*a1 - 24);
              v189 = *v106;
              LOWORD(v231) = 257;
              v101 = v216;
              sub_23C49ACF8(v216 + v188, 49, v179, v189, &v228);
              goto LABEL_159;
            }

            v165 = *(*a1 - 24);
            LOWORD(v231) = 257;
            v166 = sub_23C49B32C(v101 + v165, v94, v114, v109, &v228);
            v167 = *(*a1 - 24);
            v168 = *v106;
            LOWORD(v231) = 257;
            sub_23C49ACF8(v101 + v167, 49, v166, v168, &v228);
LABEL_160:
            v190 = *(v106 - 4);
            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v106);
            if (!*(v190 + 8))
            {
              v232[3] = 0;
              llvm::RecursivelyDeleteTriviallyDeadInstructions();
              sub_23C5021EC(v232);
            }

            if (!v239)
            {
              goto LABEL_163;
            }
          }

          v208 = &v207;
          v161 = *(**(v160 + 16) + 24);
          v213 = v159 >> 2;
          v162 = v161;
          llvm::ArrayType::get(v161, v213);
          v163 = llvm::UndefValue::get();
          LODWORD(v217[0]) = 0;
          if (v159 >= 4)
          {
            do
            {
              v169 = *(*a1 - 24);
              LOWORD(v231) = 257;
              v170 = sub_23C49B32C(v101 + v169, v215, v114, v109, &v228);
              v171 = *(*a1 - 24);
              LOWORD(v231) = 257;
              v172 = sub_23C49ACF8(v216 + v171, 49, v170, v162, &v228);
              v220 = 257;
              v173 = v216 + v171;
              v101 = v216;
              v163 = sub_23C49A744(v173, v163, v172, v217, 1, v219);
              ++*&v114[4 * (v109 - 1)];
              ++LODWORD(v217[0]);
            }

            while (LODWORD(v217[0]) < v213);
          }

          v174 = *v106;
          v175 = llvm::UndefValue::get();
          v176 = *(*a1 - 24);
          LODWORD(v219[0]) = 0;
          LOWORD(v231) = 257;
          sub_23C49A744(v101 + v176, v175, v163, v219, 1, &v228);
LABEL_159:
          v94 = v215;
          goto LABEL_160;
        }
      }

LABEL_163:
      if (v233 != v209)
      {
        free(v233);
      }

      goto LABEL_165;
    }
  }

LABEL_193:
  v199 = *MEMORY[0x277D85DE8];
}

BOOL sub_23C51A3EC(void *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v171 = a3;
  v8 = a1;
  v213 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  if (v9)
  {
    if (!*(v9 + 8))
    {
      v10 = *(v9 + 24);
      if (*(v10 + 16) == 77)
      {
        a2 = v10;
      }
    }
  }

  v169 = a1 + 1;
  v11 = 1;
  do
  {
    v12 = *(a2 + 8);
    result = v12 == 0;
    if (!v12)
    {
      break;
    }

    v14 = *(v12 + 24);
    if (!v14 || *(v14 + 16) != 62)
    {
      sub_23C4AA240(result, "Cannot DMA promote %s : found a non-GEP use", a3, a4, a5, a6, a7, a8, v171);
LABEL_274:
      result = 0;
      break;
    }

    v15 = *(v14 - 32 * (*(v14 + 20) & 0x7FFFFFF) + 32);
    v170 = v12;
    if (v15 && *(v15 + 16) == 67)
    {
      v15 = *(v15 - 32);
    }

    v176 = 1;
    v175 = 0;
    v16 = sub_23C51D0FC(v15, &v176, &v175);
    v23 = 0;
    if (v16)
    {
      if (*(v16 + 16) == 84)
      {
        v23 = *(v16 - 32);
        if (!v23 || *(v23 + 16) || *(v23 + 24) != *(v16 + 72))
        {
          v23 = 0;
        }
      }
    }

    v24 = v8[564];
    if (v23 == v24)
    {
      v25 = 566;
    }

    else
    {
      v25 = 567;
    }

    v26 = v175;
    v27 = v175 != 0;
    if (!v23 || (v28 = v8[v25], v23 != v24) && v23 != v8[565])
    {
      v165 = "Cannot DMA promote %s : GEP not indexed with instance_id/vertex_id";
      goto LABEL_273;
    }

    if (v175 && v175 != v28)
    {
      v165 = "Cannot DMA promote %s: GEP indexed with index type not matching base type";
      goto LABEL_273;
    }

    if (v11)
    {
      v29 = v23 == v24;
      if (v23 == v24)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      *a4 = v30;
      *(a5 + 24) = v176;
      *(a5 + 28) = v27;
      if (v29 && v26)
      {
        v165 = "Cannot DMA promote %s: GEP indexed with vertex_id and divisor with bias";
LABEL_273:
        sub_23C4AA240(v16, v165, v17, v18, v19, v20, v21, v22, v171);
        goto LABEL_274;
      }

      goto LABEL_41;
    }

    if (*a4 == 2)
    {
      v24 = v8[565];
    }

    else if (*a4 != 1)
    {
      goto LABEL_39;
    }

    if (v23 != v24)
    {
      goto LABEL_270;
    }

LABEL_39:
    if (v176 != *(a5 + 24) || *(a5 + 28) != v27)
    {
LABEL_270:
      v165 = "Cannot DMA promote %s : GEP indexed inconsistently";
      goto LABEL_273;
    }

LABEL_41:
    v185 = 0;
    v186 = v14;
    __p = 0;
    v184 = 0;
    v209 = 128;
    v208[0] = MEMORY[0x23EED4160](0x4000, 8);
    sub_23C51D35C(v208);
    LOBYTE(v210) = 0;
    v212 = 0;
    v202 = &v204;
    v203 = 0x800000000;
    LOBYTE(v207) = 0;
    HIDWORD(v207) = 0;
    sub_23C4FA0E4(&v202, (v14 - 32 * (*(v14 + 20) & 0x7FFFFFF) + 64), v14);
    v31 = v203;
    if (v203)
    {
      v32 = 1;
      v33 = v202;
      do
      {
        v34 = *v33++;
        v32 &= *(v34 + 16) == 16;
        --v31;
      }

      while (v31);
    }

    else
    {
      v32 = 1;
    }

    LOBYTE(v207) = v32;
    v35 = sub_23C51D438(v208, v14);
    v36 = sub_23C4A3D80(v35, &v202);
    *(v36 + 80) = v207;
    sub_23C51D518(&__p, &v186);
    v37 = v184;
    if (__p == v184)
    {
      v139 = 1;
      goto LABEL_231;
    }

    while (1)
    {
      v40 = *(v37 - 1);
      v38 = (v37 - 1);
      v39 = v40;
      v196 = 0;
      SourceElementType = sub_23C51C418(*v208, v209, v40, &v196);
      v49 = SourceElementType ? v196 : (*v208 + (v209 << 7));
      v196 = &v198;
      v197 = 0x800000000;
      if (v49[12])
      {
        SourceElementType = sub_23C4A3D80(&v196, (v49 + 10));
        v50 = v197 == 0;
      }

      else
      {
        v50 = 1;
      }

      v201 = *(v49 + 15);
      v184 = v38;
      if (v39 == v14 && v50)
      {
        goto LABEL_72;
      }

      SourceElementType = llvm::GEPOperator::getSourceElementType(v39);
      v51 = *(v39 + 20);
      v52 = v51 & 0x7FFFFFF;
      v53 = (v51 & 0x40000000) != 0 ? *(v39 - 8) : v39 - 32 * v52;
      v54 = (v53 + 32);
      v55 = SourceElementType | 4;
      v56 = (v53 + 32 * v52);
      if ((v53 + 32) == v56)
      {
LABEL_72:
        LODWORD(v173) = 0;
      }

      else
      {
        do
        {
          v57 = v55;
          SourceElementType = v55 & 0xFFFFFFFFFFFFFFF8;
          if ((v55 & 4) == 0 || !SourceElementType)
          {
            v58 = *v54;
            SourceElementType = llvm::StructType::getTypeAtIndex();
          }

          v59 = *(SourceElementType + 8);
          if (SourceElementType && v59 == 17 || SourceElementType && (v59 & 0xFE) == 0x12)
          {
            v55 = *(SourceElementType + 24) | 4;
          }

          else if (v59 == 16)
          {
            v55 = SourceElementType & 0xFFFFFFFFFFFFFFFBLL;
          }

          else
          {
            v55 = 0;
          }

          v54 += 4;
        }

        while (v54 != v56);
        v173 = (v57 >> 2) & 1;
      }

      v60 = *(v39 + 8);
      if (v60)
      {
        break;
      }

LABEL_205:
      v187 = 0;
      if (sub_23C51C418(*v208, v209, v39, &v187))
      {
        v138 = v187;
      }

      else
      {
        v138 = (*v208 + (v209 << 7));
      }

      if ((*v208 + (v209 << 7)) != v138)
      {
        sub_23C51DB68(v208, v138);
      }

      v8 = a1;
      if (v196 != &v198)
      {
        free(v196);
      }

      v37 = v184;
      if (__p == v184)
      {
        v139 = 1;
        goto LABEL_231;
      }
    }

    while (1)
    {
      v61 = *(*(v60 + 24) + 16) <= 0x1Bu ? 0 : *(v60 + 24);
      v62 = *(v61 + 16);
      if (v62 != 60 || v61 == 0)
      {
        break;
      }

      SourceElementType = sub_23C51D618(a6, v61, &v196);
LABEL_204:
      v60 = *(v60 + 8);
      if (!v60)
      {
        goto LABEL_205;
      }
    }

    if (v62 == 62)
    {
      v64 = v61;
    }

    else
    {
      v64 = 0;
    }

    v182 = v64;
    if (v64)
    {
      v65 = (v64 - 4 * (*(v64 + 5) & 0x7FFFFFF))[4];
      if (v65)
      {
        v66 = v65[16] > 0x14u;
      }

      else
      {
        v66 = 1;
      }

      if (v66 || !llvm::Constant::isNullValue(v65))
      {
        if (!v173)
        {
          goto LABEL_228;
        }

        v71 = *(v196 + v197 - 1);
        v72 = (v64 - 4 * (*(v64 + 5) & 0x7FFFFFF))[4];
        if (v72 != llvm::Constant::getNullValue(*v72, v42))
        {
          if (v71 == llvm::Constant::getNullValue(*v71, v73))
          {
            v71 = v72;
          }

          else
          {
            if (*v72 != *v71)
            {
              goto LABEL_228;
            }

            sub_23C4C30FC(v169 + *(*a1 - 24), v64);
            v74 = *(*a1 - 24);
            Name = llvm::Value::getName(v64);
            LOWORD(v190) = 773;
            v187 = Name;
            v188 = v76;
            v189[0] = ".sum";
            v71 = sub_23C49A474(v169 + v74, v72, v71, &v187);
          }
        }

        v187 = v189;
        v188 = 0x800000000;
        if (v197)
        {
          sub_23C4A3D80(&v187, &v196);
          v132 = v188 - 1;
        }

        else
        {
          v132 = -1;
        }

        v195 = v201;
        LODWORD(v188) = v132;
        sub_23C49B500(&v187, v71);
        sub_23C4FA0E4(&v187, v64 - 32 * (*(v64 + 5) & 0x7FFFFFF) + 64, v64);
        v133 = v188;
        if (v188)
        {
          v68 = 1;
          v134 = v187;
          do
          {
            v135 = *v134++;
            v68 &= *(v135 + 16) == 16;
            --v133;
          }

          while (v133);
LABEL_202:
          LOBYTE(v195) = v68;
          v136 = sub_23C51D438(v208, v182);
          v137 = sub_23C4A3D80(v136, &v187);
          *(v137 + 80) = v195;
          sub_23C51D518(&__p, &v182);
          SourceElementType = v187;
          if (v187 != v189)
          {
            free(v187);
          }

          goto LABEL_204;
        }
      }

      else
      {
        v187 = v189;
        v188 = 0x800000000;
        if (v197)
        {
          sub_23C4A3D80(&v187, &v196);
        }

        v195 = v201;
        sub_23C4FA0E4(&v187, v64 - 32 * (*(v64 + 5) & 0x7FFFFFF) + 64, v64);
        if (v201 != 1)
        {
          v68 = 0;
          goto LABEL_202;
        }

        v67 = v188;
        if (v188)
        {
          v68 = 1;
          v69 = v187;
          do
          {
            v70 = *v69++;
            v68 &= *(v70 + 16) == 16;
            --v67;
          }

          while (v67);
          goto LABEL_202;
        }
      }

      v68 = 1;
      goto LABEL_202;
    }

    if (v62 != 77 || v61 == 0)
    {
      sub_23C4AA240(SourceElementType, "Cannot DMA promote %s : GEP not used in a load", v43, v44, v45, v46, v47, v48, v171);
      goto LABEL_228;
    }

    if (*(*v61 + 8) != 15)
    {
      sub_23C4AA240(SourceElementType, "Cannot DMA promote %s : pointer bitcast to non-pointer type", v43, v44, v45, v46, v47, v48, v171);
      goto LABEL_228;
    }

    v78 = *(v61 + 1);
    if (!v78)
    {
      goto LABEL_204;
    }

    v79 = **(**(v61 - 4) + 16);
    v80 = **(*v61 + 16);
    while (2)
    {
      v81 = *(v78 + 24);
      v82 = v81[16];
      if (v81 && v82 == 60)
      {
        if ((*(v79 + 8) & 0xFE) != 0x12)
        {
          goto LABEL_150;
        }

        v83 = *v81;
        if ((*(*v81 + 8) & 0xFE) != 0x12)
        {
          goto LABEL_150;
        }

        if (**(v79 + 16) != **(v83 + 16))
        {
          goto LABEL_150;
        }

        v84 = *(v83 + 32);
        v85 = *(v79 + 32);
        if (v84 <= v85)
        {
          goto LABEL_150;
        }

        v86 = *(v78 + 24);
        while (1)
        {
          v86 = *(v86 + 8);
          if (!v86)
          {
            v100 = 1;
            v101 = "DMA promotion %s : truncated extend bitcast pattern";
            goto LABEL_182;
          }

          v87 = *(v86 + 24);
          v88 = *(v87 + 16);
          if (v87)
          {
            if (v88 == 91)
            {
              break;
            }
          }

          v92 = 0;
          if (!v87)
          {
            goto LABEL_144;
          }

          v96 = v84;
          if (v88 != 89)
          {
            goto LABEL_148;
          }

          v97 = *(v87 - 32);
          if (v97)
          {
            v98 = *(v97 + 16) == 16;
          }

          else
          {
            v98 = 0;
          }

          if (!v98)
          {
            v92 = 0;
LABEL_144:
            v96 = v84;
            goto LABEL_148;
          }

          v99 = (v97 + 24);
          if (*(v97 + 32) >= 0x41u)
          {
            v99 = *v99;
          }

          v92 = *v99;
          v96 = v92 + 1;
LABEL_148:
          if (v92 >= v96 || v96 > v85)
          {
            goto LABEL_150;
          }
        }

        v89 = *(*v87 + 32);
        if (v89)
        {
          v90 = 0;
          v91 = *(v87 + 64);
          v92 = -1;
          while (1)
          {
            v94 = *v91++;
            v93 = v94;
            if ((v94 & 0x80000000) == 0 && v93 < v84)
            {
              SourceElementType = *(v87 - 64);
              if (SourceElementType == v81)
              {
                goto LABEL_131;
              }
            }

            if (v93 >= v84 && v93 < 2 * v84)
            {
              SourceElementType = *(v87 - 32);
              if (SourceElementType == v81)
              {
                break;
              }
            }

LABEL_135:
            if (!--v89)
            {
              v96 = v90 + 1;
              goto LABEL_148;
            }
          }

          v93 = (v93 - v84);
LABEL_131:
          if (v92 >= v93)
          {
            v92 = v93;
          }

          if (v90 <= v93)
          {
            v90 = v93;
          }

          goto LABEL_135;
        }

LABEL_150:
        if (v201 == 1 && (SourceElementType = sub_23C51D748(v80, v79, (a1 + 21), v173), (SourceElementType & 1) != 0))
        {
          v100 = 2;
          v101 = "DMA promotion %s : reinterpreted array bitcast pattern";
        }

        else
        {
          v187 = sub_23C49BBA0((a1 + 21), v80);
          LODWORD(v188) = v120;
          v121 = llvm::TypeSize::operator unsigned long long();
          v177 = sub_23C49BBA0((a1 + 21), v79);
          LODWORD(v178) = v122;
          SourceElementType = llvm::TypeSize::operator unsigned long long();
          if (v121 > SourceElementType)
          {
            sub_23C4AA240(SourceElementType, "DMA promotion %s : unrecognized GEP bitcast pattern: ", v43, v44, v45, v46, v47, v48, v171);
            v177 = 0;
            v178 = 0;
            v179 = 0;
            LODWORD(v188) = 0;
            v191 = 0;
            v192 = 0;
            v193 = 1;
            v189[1] = 0;
            v190 = 0;
            v189[0] = 0;
            v187 = (MEMORY[0x277D821F8] + 16);
            v194 = &v177;
            sub_23C4AE584(&v187);
            v141 = llvm::Value::print(v61, &v187);
            LOBYTE(v148) = v194;
            if (*(v194 + 23) < 0)
            {
              v148 = *v194;
            }

            sub_23C4AA240(v141, "bitcast: %s", v142, v143, v144, v145, v146, v147, v148);
            if (SHIBYTE(v179) < 0)
            {
              *v177 = 0;
              v178 = 0;
            }

            else
            {
              LOBYTE(v177) = 0;
              HIBYTE(v179) = 0;
            }

            v157 = llvm::Value::print(v81, &v187);
            LOBYTE(v164) = v194;
            if (*(v194 + 23) < 0)
            {
              v164 = *v194;
            }

            sub_23C4AA240(v157, "load:    %s", v158, v159, v160, v161, v162, v163, v164);
            llvm::raw_ostream::~raw_ostream(&v187);
            if (SHIBYTE(v179) < 0)
            {
              operator delete(v177);
            }

            goto LABEL_228;
          }

          v100 = 3;
          v101 = "DMA promotion %s : truncate to smaller sized type pattern";
        }

LABEL_182:
        sub_23C4AA240(SourceElementType, v101, v43, v44, v45, v46, v47, v48, v171);
        if (HIDWORD(v201))
        {
          sub_23C4AA240(v123, "DMA promotion %s : can't combine bitcast types", v124, v125, v126, v127, v128, v129, v171);
          goto LABEL_228;
        }

        v187 = v189;
        v188 = 0x800000000;
        if (v197)
        {
          sub_23C4A3D80(&v187, &v196);
        }

        v195 = __PAIR64__(v100, v201);
        sub_23C51D618(a6, v81, &v187);
LABEL_187:
        SourceElementType = v187;
        if (v187 != v189)
        {
          free(v187);
        }

        v78 = *(v78 + 8);
        if (!v78)
        {
          goto LABEL_204;
        }

        continue;
      }

      break;
    }

    if (v82 != 62)
    {
      v81 = 0;
    }

    v181 = v81;
    if (!v81)
    {
      v140 = "Cannot DMA promote %s : unknown GEP bitcast use";
      goto LABEL_220;
    }

    if (HIDWORD(v201))
    {
      v140 = "DMA promotion %s : GEP-of-bitcast can't combine bitcast types";
      goto LABEL_220;
    }

    if (v201 != 1 || (SourceElementType = sub_23C51D748(v80, v79, (a1 + 21), v173), !SourceElementType) || *(v80 + 8) != 16)
    {
      v140 = "Cannot DMA promote %s : unknown GEP-of-bitcast use";
      goto LABEL_220;
    }

    if ((*(v81 + 5) & 0x7FFFFFF) == 4)
    {
      if (*(*(v81 - 12) + 16) >= 0x15u)
      {
        v102 = 0;
      }

      else
      {
        v102 = *(v81 - 12);
      }

      if (*(*(v81 - 8) + 16) >= 0x15u)
      {
        v103 = 0;
      }

      else
      {
        v103 = *(v81 - 8);
      }

      if (v102)
      {
        v104 = v103 == 0;
      }

      else
      {
        v104 = 1;
      }

      if (v104)
      {
        goto LABEL_228;
      }

      if (!llvm::Constant::isNullValue(v102))
      {
        goto LABEL_228;
      }

      isNullValue = llvm::Constant::isNullValue(v103);
      if (!isNullValue)
      {
        goto LABEL_228;
      }

      v112 = *(v196 + v197 - 1);
      v113 = *&v81[-32 * (*(v81 + 5) & 0x7FFFFFF) + 96];
      if (*v113 != *v112)
      {
        goto LABEL_228;
      }

      sub_23C4AA240(isNullValue, "DMA promotion %s : reinterpreted array bitcast pattern (through struct-array GEP)", v106, v107, v108, v109, v110, v111, v171);
      v187 = v189;
      v188 = 0x800000000;
      if (v197)
      {
        sub_23C4A3D80(&v187, &v196);
      }

      v195 = v201;
      v114 = *(*a1 - 24);
      v180 = 257;
      v115 = sub_23C49A474(v169 + v114, v112, v113, &v177);
      v116 = v188;
      *(v187 + v188 - 1) = v115;
      v117 = 1;
      if (v116)
      {
        v118 = v187;
        do
        {
          v119 = *v118++;
          v117 &= *(v119 + 16) == 16;
          --v116;
        }

        while (v116);
      }

      LOBYTE(v195) = v117;
      HIDWORD(v195) = 2;
      v130 = sub_23C51D438(v208, v81);
      v131 = sub_23C4A3D80(v130, &v187);
      *(v131 + 80) = v195;
      sub_23C51D518(&__p, &v181);
      goto LABEL_187;
    }

    v140 = "Cannot DMA promote %s : GEP-of-bitcast needs to index to a scalar";
LABEL_220:
    sub_23C4AA240(SourceElementType, v140, v43, v44, v45, v46, v47, v48, v171);
LABEL_228:
    if (v196 != &v198)
    {
      free(v196);
    }

    v139 = 0;
    v8 = a1;
LABEL_231:
    if (v202 != &v204)
    {
      free(v202);
    }

    if (v212 == 1)
    {
      sub_23C4ED91C(&v210);
      llvm::deallocate_buffer(v210, (16 * v211));
      v212 = 0;
    }

    v149 = v208[0];
    if (v209)
    {
      v203 = 2;
      v204 = 0;
      v205 = -4096;
      v206 = 0;
      v202 = &unk_284F28A50;
      v197 = 2;
      v198 = 0;
      v199 = -8192;
      v200 = 0;
      v196 = &unk_284F28A50;
      v150 = *v208 + 56;
      v151 = v209 << 7;
      do
      {
        v152 = *(v150 - 32);
        if (v152 != v205 && v152 != v199)
        {
          v154 = *(v150 - 16);
          if (v150 != v154)
          {
            free(v154);
            v152 = *(v150 - 32);
          }
        }

        if (v152 != -8192 && v152 != -4096 && v152 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v150 - 48));
        }

        v150 += 128;
        v151 -= 128;
      }

      while (v151);
      if (v199 != -8192 && v199 != -4096 && v199)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v197);
      }

      if (v205 != -8192 && v205 != -4096 && v205)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v203);
      }

      v149 = v208[0];
      v156 = (v209 << 7);
    }

    else
    {
      v156 = 0;
    }

    llvm::deallocate_buffer(v149, v156);
    if (__p)
    {
      operator delete(__p);
    }

    v11 = 0;
    result = 0;
    a2 = v170;
  }

  while ((v139 & 1) != 0);
  v166 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_23C51B2F8(uint64_t a1, void *a2, _BYTE *a3, llvm::Type **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1;
  v104 = *MEMORY[0x277D85DE8];
  v12 = a2[1];
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = 0;
      v17 = *(v12 + 24);
      if (!v17 || *(v17 + 16) != 62)
      {
        goto LABEL_143;
      }

      v18 = *(v17 - 32 * (*(v17 + 20) & 0x7FFFFFF) + 32);
      if (v18)
      {
        if (*(v18 + 16) == 67)
        {
          v18 = *(v18 - 32);
          if (!v18)
          {
            goto LABEL_142;
          }
        }
      }

      v19 = *(v18 + 16);
      if (v19 <= 0x1B)
      {
        if (v19 != 5)
        {
          LODWORD(v20) = 0;
LABEL_34:
          if (v19 != 5)
          {
            goto LABEL_142;
          }

          v21 = *(v18 + 18);
LABEL_37:
          if (v21 == 17)
          {
            goto LABEL_41;
          }

          if (v21 != 25)
          {
            goto LABEL_142;
          }

          goto LABEL_39;
        }

        v21 = *(v18 + 18);
        if (v21 != 13)
        {
          LODWORD(v20) = 0;
          goto LABEL_37;
        }
      }

      else if (v19 != 41)
      {
        LODWORD(v20) = 0;
        goto LABEL_31;
      }

      v22 = *(v18 + 20);
      if ((v22 & 0x40000000) != 0)
      {
        v23 = *(v18 - 8);
      }

      else
      {
        v23 = v18 - 32 * (v22 & 0x7FFFFFF);
      }

      v24 = *(v23 + 32);
      if (v24)
      {
        v25 = *(v24 + 16) == 16;
      }

      else
      {
        v25 = 0;
      }

      if (!v25)
      {
        goto LABEL_142;
      }

      v26 = *(v24 + 32);
      if (v26 > 0x40)
      {
        v20 = **(v24 + 24);
        if (v20 < 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v20 = *(v24 + 24);
        if (v20 << -v26 < 0)
        {
          goto LABEL_142;
        }
      }

      v27 = (v22 & 0x40000000) != 0 ? *(v18 - 8) : (v18 - 32 * (v22 & 0x7FFFFFF));
      v18 = *v27;
      if (!v18)
      {
        goto LABEL_142;
      }

      v19 = *(v18 + 16);
      if (v19 <= 0x1B)
      {
        goto LABEL_34;
      }

LABEL_31:
      if (v19 != 53)
      {
        if (v19 != 45)
        {
          goto LABEL_142;
        }

LABEL_41:
        v30 = *(v18 + 20);
        if ((v30 & 0x40000000) != 0)
        {
          v31 = *(v18 - 8);
        }

        else
        {
          v31 = (v18 - 32 * (v30 & 0x7FFFFFF));
        }

        v32 = v31[4];
        if (v32)
        {
          v33 = *(v32 + 16) == 16;
        }

        else
        {
          v33 = 0;
        }

        if (!v33)
        {
          goto LABEL_142;
        }

        v34 = (v32 + 24);
        if (*(v32 + 32) >= 0x41u)
        {
          v34 = *v34;
        }

        v35 = *v34;
        if (v20 >= *v34)
        {
          goto LABEL_142;
        }

        goto LABEL_68;
      }

LABEL_39:
      v28 = *(v18 + 20);
      if ((v28 & 0x40000000) != 0)
      {
        v29 = *(v18 - 8);
      }

      else
      {
        v29 = v18 - 32 * (v28 & 0x7FFFFFF);
      }

      v36 = *(v29 + 32);
      if (v36)
      {
        v37 = *(v36 + 16) == 16;
      }

      else
      {
        v37 = 0;
      }

      if (!v37)
      {
        goto LABEL_142;
      }

      v38 = (v36 + 24);
      v39 = *(v36 + 32);
      v40 = v38;
      if (v39 >= 0x41)
      {
        v40 = *v38;
      }

      if (*v40 > 0x1FuLL)
      {
        goto LABEL_142;
      }

      if ((v28 & 0x40000000) != 0)
      {
        v31 = *(v18 - 8);
      }

      else
      {
        v31 = (v18 - 32 * (v28 & 0x7FFFFFF));
      }

      if (v39 >= 0x41)
      {
        v38 = *v38;
      }

      v35 = 1 << *v38;
      if (v35 <= v20)
      {
        goto LABEL_142;
      }

LABEL_68:
      v41 = *v31;
      if (v15)
      {
        a1 = sub_23C51D0FC(*v31, v95, &v100);
        if (!a1 || *(a1 + 16) != 84 || (v42 = *(a1 - 32)) == 0 || *(v42 + 16) || *(v42 + 24) != *(a1 + 72) || v42 != v11[564] && v42 != v11[565])
        {
          sub_23C4AA240(a1, "Will not coerce strided access %s : GEP not indexed with instance_id/vertex_id", a3, a4, a5, a6, a7, a8, a3);
          goto LABEL_142;
        }

        v13 = v41;
        v14 = v35;
      }

      else
      {
        v43 = v14 == v35 && v13 == v41;
        v35 = v14;
        if (!v43)
        {
          sub_23C4AA240(a1, "Will not coerce strided access %s : GEP indexed inconsistently", a3, a4, a5, a6, a7, a8, a3);
LABEL_142:
          v16 = 0;
          goto LABEL_143;
        }
      }

      v15 = 0;
      v12 = *(v12 + 8);
      if (!v12)
      {
        goto LABEL_85;
      }
    }
  }

  v35 = 0;
LABEL_85:
  v91[0] = v91;
  v44 = **(*a2 + 16);
  MEMORY[0x28223BE20](a1);
  v47 = v91 - v46;
  if (v45 >= 0x200)
  {
    v48 = 512;
  }

  else
  {
    v48 = v45;
  }

  bzero(v91 - v46, v48);
  if (v35)
  {
    v49 = (v35 + 1) & 0x1FFFFFFFELL;
    v50 = vdupq_n_s64(v35 - 1);
    v51 = xmmword_23C5324B0;
    v52 = v47 + 8;
    v53 = vdupq_n_s64(2uLL);
    do
    {
      v54 = vmovn_s64(vcgeq_u64(v50, v51));
      if (v54.i8[0])
      {
        *(v52 - 1) = v44;
      }

      if (v54.i8[4])
      {
        *v52 = v44;
      }

      v51 = vaddq_s64(v51, v53);
      v52 += 2;
      v49 -= 2;
    }

    while (v49);
  }

  v55 = *(v11 + *(*v11 - 24) + 336);
  v56 = *a3;
  if (*a3)
  {
    v92[2] = a3;
    v57 = 3;
    v58 = 2;
  }

  else
  {
    v57 = 1;
    v58 = 3;
  }

  v92[0] = "agc.struct.coerced_arg";
  v93 = 3;
  v94 = v57;
  v25 = v56 == 0;
  v59 = v92;
  if (v25)
  {
    v59 = "agc.struct.coerced_arg";
  }

  v95[0] = v59;
  v95[2] = "x";
  v96 = v58;
  v97 = 3;
  v100 = v95;
  v102 = v35;
  v103 = 2050;
  v60 = v98;
  llvm::Twine::str(v98, &v100);
  if ((v99 & 0x80000000) == 0 || (v60 = v98[0]) != 0)
  {
    strlen(v60);
  }

  v61 = llvm::StructType::create();
  *a4 = v61;
  if (v99 < 0)
  {
    operator delete(v98[0]);
    v61 = *a4;
  }

  v100 = sub_23C49BBA0((v11 + 21), v61);
  v101 = v62;
  v63 = llvm::TypeSize::operator unsigned long long();
  v16 = (v63 & 3) == 0;
  if ((v63 & 3) != 0)
  {
    sub_23C4AA240(v63, "Will not coerce pointer %s : type size %u not a multiple of 4", v64, v65, v66, v67, v68, v69, a3);
    goto LABEL_143;
  }

  v70 = *a4;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v71 = *(**(*a2 + 16) + 8);
  }

  v72 = llvm::PointerType::get();
  v73 = v11 + 1;
  v74 = *(v11[20] + 80);
  if (v74)
  {
    v75 = v74 - 24;
  }

  else
  {
    v75 = 0;
  }

  v76 = *(v75 + 40);
  if (v76)
  {
    v77 = v76 - 24;
  }

  else
  {
    v77 = 0;
  }

  sub_23C4C30FC(v73 + *(*v11 - 24), v77);
  v78 = *(*v11 - 24);
  v103 = 257;
  v91[2] = v11 + 1;
  v91[3] = sub_23C49ACF8(v73 + v78, 49, a2, v72, &v100);
  v79 = a2[1];
  if (v79)
  {
    v91[1] = v11 + 24;
    while (1)
    {
      v80 = *(v79 + 24);
      v79 = *(v79 + 8);
      if (v80)
      {
        if (*(v80 + 16) == 62)
        {
          break;
        }
      }

      if (!v79)
      {
        goto LABEL_143;
      }
    }

    v81 = *(v80 - 32 * (*(v80 + 20) & 0x7FFFFFF) + 32);
    v82 = *(v81 + 16);
    if (v81 && v82 == 67)
    {
      v81 = *(v81 - 32);
      if (!v81)
      {
        goto LABEL_138;
      }

      v82 = *(v81 + 16);
    }

    if (v82 <= 0x1B)
    {
      if (v82 != 5 || *(v81 + 18) != 13)
      {
        goto LABEL_138;
      }
    }

    else if (v82 != 41)
    {
      goto LABEL_138;
    }

    v83 = *(v81 + 20);
    if ((v83 & 0x40000000) != 0)
    {
      v84 = *(v81 - 8);
    }

    else
    {
      v84 = v81 - 32 * (v83 & 0x7FFFFFF);
    }

    v85 = *(v84 + 32);
    if (*(v85 + 16) == 16)
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    v87 = (v86 + 24);
    if (*(v86 + 32) >= 0x41u)
    {
      v87 = *v87;
    }

    v88 = *v87;
LABEL_138:
    operator new();
  }

LABEL_143:
  v89 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_23C51BBB8(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 32);
  if (!*(a2 + 32) || (v4 = *(a3 + 32), !*(a3 + 32)))
  {
    *(result + 32) = 256;
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(a3 + 1);
    *result = *a3;
    *(result + 16) = v5;
    v6 = a3[4];
LABEL_8:
    *(result + 32) = v6;
    return result;
  }

  if (v4 == 1)
  {
    v7 = *(a2 + 1);
    *result = *a2;
    *(result + 16) = v7;
    v6 = a2[4];
    goto LABEL_8;
  }

  v8 = *(a2 + 33);
  if (v8 == 1)
  {
    v9 = a2;
    a2 = *a2;
    v8 = v9[1];
  }

  else
  {
    LOBYTE(v3) = 2;
  }

  v10 = a3[1];
  if (*(a3 + 33) == 1)
  {
    v11 = *a3;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a3;
  }

  *result = a2;
  *(result + 8) = v8;
  *(result + 16) = v11;
  *(result + 24) = v10;
  *(result + 32) = v3;
  *(result + 33) = v4;
  return result;
}

uint64_t *sub_23C51BC4C(void *a1, llvm::Type *this, int a3, void *a4, uint64_t a5)
{
  v8 = *(this + 2);
  if ((v8 & 0xFE) == 0x10)
  {
    if (a3)
    {
      v9 = v8 & 0x11;
      if (v9 == 17)
      {
        result = sub_23C51CC14(a1, this, 0, a4);
        if (result)
        {
          return result;
        }
      }

      else if (v9 == 16)
      {
        result = sub_23C51C9CC(a1, this, 0, a4, a5);
        if (result)
        {
          return result;
        }
      }
    }

    v34 = sub_23C49BBA0((a1 + 21), this);
    v35 = v11;
    v12 = llvm::TypeSize::operator unsigned long long();
    v13 = llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 192), (v12 >> 2));
    v14 = llvm::UndefValue::get();
    v34 = (sub_23C49BBFC((a1 + 21), this) + 7) >> 3;
    v35 = v15 == 1;
    v16 = llvm::TypeSize::operator unsigned long long();
    v32[0] = 0;
    if (v16 >= 4)
    {
      v17 = 0;
      v18 = v16 >> 2;
      do
      {
        v19 = a1 + *(*a1 - 24);
        v20 = *(*a4 + 8 * v17);
        v21 = *(v19 + 24);
        v36 = 257;
        v22 = sub_23C49ACF8((v19 + 8), 49, v20, v21, &v34);
        v23 = *(*a1 - 24);
        v36 = 257;
        v14 = sub_23C49A744(a1 + v23 + 8, v14, v22, v32, 1, &v34);
        v17 = v32[0] + 1;
        v32[0] = v17;
      }

      while (v17 < v18);
    }

    v24 = (a1 + *(*a1 - 24));
    v36 = 257;
    PointerCast = sub_23C506924(v24 + 1, v13, &v34);
    sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v14, PointerCast, 0);
    v26 = *(*a1 - 24);
    if ((*(*PointerCast + 8) & 0xFE) == 0x12)
    {
      v27 = *(**(*PointerCast + 16) + 8);
    }

    v28 = llvm::PointerType::get();
    v33 = 257;
    if (*PointerCast != v28)
    {
      v29 = (a1 + v26);
      if (PointerCast[16] > 0x14u)
      {
        v36 = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        sub_23C49B15C(v29 + 1, PointerCast, v32);
      }

      else
      {
        PointerCast = (*(*v29[10] + 232))(v29[10], PointerCast, v28);
        if (PointerCast)
        {
          v30 = PointerCast[16] >= 0x1Cu;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          sub_23C49B15C(v29 + 1, PointerCast, v32);
        }
      }
    }

    v31 = (a1 + *(*a1 - 24));
    v36 = 257;
    return sub_23C497C88(v31 + 1, **(*PointerCast + 16), PointerCast, 0, &v34);
  }

  else
  {

    return sub_23C51CD3C(a1, this, 0, a4);
  }
}

unint64_t sub_23C51BFD8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 32 * v2 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = a2 - *a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

int32x2_t sub_23C51C054(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v8[0] = 2;
  v8[1] = 0;
  v9 = -8192;
  v10 = 0;
  sub_23C4DDEAC((a2 + 1), v8);
  v5 = v9;
  a2[4] = v10;
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

void sub_23C51C110(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v29 = 0;
  v5 = sub_23C51C418(*v4, v4[2].i32[0], v13, &v29);
  v6 = *v4 + (v4[2].u32[0] << 7);
  if (v5)
  {
    v7 = v29;
  }

  else
  {
    v7 = v6;
  }

  v8 = v14;
  if ((*v14 + (v14[2].u32[0] << 7)) != v7)
  {
    v25 = v27;
    v26 = 0x800000000;
    if (v7[12])
    {
      sub_23C4A3E4C(&v25, (v7 + 10));
      v8 = v14;
    }

    v28 = *(v7 + 15);
    sub_23C51C054(v8, v7);
    v9 = v14;
    v20 = a2;
    v21 = v23;
    v22 = 0x800000000;
    if (v26)
    {
      sub_23C4A3E4C(&v21, &v25);
      a2 = v20;
    }

    v24 = v28;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F28A28;
    v18 = v9;
    sub_23C4EDBD4(v30, (LODWORD(v16[0]) >> 1) & 3, v16);
    v29 = &unk_284F28A28;
    v32 = v18;
    v33 = v35;
    v34 = 0x800000000;
    if (v22)
    {
      sub_23C4A3E4C(&v33, &v21);
    }

    v36 = v24;
    v19 = 0;
    if ((sub_23C51C418(*v9, *(v9 + 16), v31, &v19) & 1) == 0)
    {
      v10 = sub_23C51C4AC(v9, &v29, v19);
      sub_23C4DDEAC((v10 + 1), v30);
      v10[4] = v32;
      v10[5] = v10 + 7;
      v10[6] = 0x800000000;
      if (v34)
      {
        sub_23C4A3E4C((v10 + 5), &v33);
      }

      v10[15] = v36;
    }

    if (v33 != v35)
    {
      free(v33);
    }

    if (v31 != -8192 && v31 != -4096 && v31)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v30);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v16);
    }

    if (v21 != v23)
    {
      free(v21);
    }

    if (v25 != v27)
    {
      free(v25);
    }
  }

  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C51C418(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = a1 + (v4 << 7);
    v6 = *(v5 + 24);
    if (v6 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = a1 + (v4 << 7);
        v6 = *(v5 + 24);
        v7 = 1;
        if (v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

uint64_t sub_23C51C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C51C560(a1, v6);
  v8 = 0;
  sub_23C51C418(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t sub_23C51C560(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x23EED4160](v8 << 7, 8);
  if (v4)
  {
    sub_23C51C7C0(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_284F28A28;
    v19[0] = 2;
    v19[1] = 0;
    v20 = -8192;
    v9 = (v3 << 7);
    if (v3)
    {
      v10 = 0;
      do
      {
        v11 = &v10[v4];
        v12 = *&v10[v4 + 24];
        if (v12 != v24 && v12 != v20)
        {
          v26 = 0;
          sub_23C51C418(*a1, *(a1 + 16), v12, &v26);
          v14 = v26;
          sub_23C4DDEAC((v26 + 1), v11 + 1);
          v14[4] = *(v11 + 4);
          v14[5] = v14 + 7;
          v14[6] = 0x800000000;
          if (*(v11 + 12))
          {
            sub_23C4A3E4C((v14 + 5), (v11 + 40));
          }

          v14[15] = *&v10[v4 + 120];
          ++*(a1 + 8);
          v15 = *(v11 + 5);
          if (&v10[v4 + 56] != v15)
          {
            free(v15);
          }
        }

        v16 = *(v11 + 3);
        if (v16 != -8192 && v16 != -4096 && v16 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v10[v4 + 8]);
        }

        v10 += 128;
      }

      while (v9 != v10);
      if (v20 != -8192 && v20 != -4096 && v20)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v19);
      }
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    return llvm::deallocate_buffer(v4, v9);
  }

  else
  {

    return sub_23C51C7C0(a1);
  }
}

uint64_t sub_23C51C7C0(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 7));
    result = *result + 8;
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F28A28;
      *(v4 + 3) = v9;
      v5 = v4 + 120;
      result = v4 + 128;
      v2 += 128;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C51C89C(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = sub_23C51C418(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[5];
    if (v5 != (v11 + 7))
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_284F28A28;
    result = sub_23C4DDEAC((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

uint64_t *sub_23C51C9CC(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v11 = llvm::UndefValue::get();
  StructLayout = llvm::DataLayout::getStructLayout();
  v41 = 0;
  if (*(a2 + 12))
  {
    v13 = 0;
    v14 = StructLayout + 16;
    while (1)
    {
      v15 = *(*(a2 + 16) + 8 * v13);
      v16 = *(v14 + 8 * v13);
      v37 = sub_23C49BBA0((a1 + 21), v15);
      LODWORD(v38) = v17;
      v18 = llvm::TypeSize::operator unsigned long long() & 3;
      if ((v16 & 3) != 0 || v18 != 0)
      {
        return 0;
      }

      v20 = a3 + (v16 >> 2);
      v21 = *(v15 + 2);
      if ((v21 & 0xFE) == 0x10)
      {
        v22 = v21 & 0x11;
        if (v22 == 16)
        {
          v40 = 257;
          v23 = sub_23C51C9CC(a1, v15, v20, a4, &v37);
        }

        else
        {
          if (v22 != 17)
          {
            return 0;
          }

          v23 = sub_23C51CC14(a1, v15, v20, a4);
        }
      }

      else
      {
        v23 = sub_23C51CD3C(a1, v15, v20, a4);
      }

      if (!v23)
      {
        return 0;
      }

      v24 = *(*a1 - 24);
      v25 = *(a5 + 32);
      if (v25 == 1)
      {
        break;
      }

      if (*(a5 + 32))
      {
        v30 = *a5;
        v31 = *(a5 + 8);
        v26 = 2;
        if (*(a5 + 33) != 1)
        {
          LOBYTE(v25) = 2;
          v30 = a5;
        }

        v33 = v30;
        v34 = v31;
        v35 = ".elem";
        LOBYTE(v36) = v25;
        HIBYTE(v36) = 3;
        v28 = v5 & 0xFFFFFFFF00000000;
        v5 = v5 & 0xFFFFFFFF00000000 | v41;
        v29 = &v33;
        goto LABEL_22;
      }

      v26 = 0;
      v36 = 256;
      v27 = 1;
LABEL_23:
      LOBYTE(v40) = v26;
      HIBYTE(v40) = v27;
      v11 = sub_23C49A744(a1 + v24 + 8, v11, v23, &v41, 1, &v37);
      v13 = v41 + 1;
      v41 = v13;
      if (v13 >= *(a2 + 12))
      {
        return v11;
      }
    }

    v33 = ".elem";
    v36 = 259;
    v5 = v5 & 0xFFFFFFFF00000000 | v41;
    v26 = 3;
    v28 = v34;
    v29 = ".elem";
LABEL_22:
    v37 = v29;
    v38 = v28;
    v27 = 8;
    v39 = v5;
    goto LABEL_23;
  }

  return v11;
}

uint64_t *sub_23C51CC14(void *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(a2 + 24);
  v17 = sub_23C49BBA0((a1 + 21), v8);
  v18 = v9;
  v10 = llvm::TypeSize::operator unsigned long long();
  if ((*(v8 + 2) & 0xFE) == 0x10 || (v10 & 3) != 0)
  {
    return 0;
  }

  v12 = llvm::UndefValue::get();
  v20 = 0;
  if (*(a2 + 32))
  {
    v13 = v10 >> 2;
    do
    {
      v14 = sub_23C51CD3C(a1, v8, a3, a4);
      v15 = *(*a1 - 24);
      v19 = 257;
      v12 = sub_23C49A744(a1 + v15 + 8, v12, v14, &v20, 1, &v17);
      a3 += v13;
      ++v20;
    }

    while (*(a2 + 32) > v20);
  }

  return v12;
}

uint64_t sub_23C51CD3C(void *a1, llvm::Type *this, unsigned int a3, void *a4)
{
  v4 = a4;
  v53 = *MEMORY[0x277D85DE8];
  if ((*(this + 2) & 0xFE) != 0x12)
  {
    v23 = a1 + *(*a1 - 24);
    v24 = *(*a4 + 8 * a3);
    v48 = 257;
    v25 = sub_23C49ACF8((v23 + 8), 49, v24, this, v47);
LABEL_10:
    v11 = v25;
    goto LABEL_11;
  }

  v8 = **(this + 2);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(this);
  v10 = *(this + 8);
  switch(ScalarSizeInBits)
  {
    case 8:
      v44 = llvm::FixedVectorType::get();
      v45 = a1 + *(*a1 - 24);
      v46 = *(*v4 + 8 * a3);
      v48 = 257;
      v11 = sub_23C49ACF8((v45 + 8), 49, v46, v44, v47);
      if (v10 == 4)
      {
        break;
      }

      v41 = a1 + *(*a1 - 24);
      v42 = v11;
      v43 = v10;
LABEL_17:
      v25 = sub_23C505670(v41, v42, v43, 1);
      goto LABEL_10;
    case 16:
      v28 = llvm::FixedVectorType::get();
      v29 = a1 + *(*a1 - 24);
      v30 = *(*v4 + 8 * a3);
      v48 = 257;
      v11 = sub_23C49ACF8((v29 + 8), 49, v30, v28, v47);
      if ((v10 - 3) > 1)
      {
        break;
      }

      v31 = a1 + *(*a1 - 24);
      v32 = *(*v4 + 8 * (a3 + 1));
      v48 = 257;
      v33 = sub_23C49ACF8((v31 + 8), 49, v32, v28, v47);
      v34 = a1 + *(*a1 - 24);
      v35 = *(v34 + 24);
      v49 = llvm::ConstantInt::get();
      v36 = *(v34 + 24);
      v50 = llvm::ConstantInt::get();
      v37 = *(v34 + 24);
      v51 = llvm::ConstantInt::get();
      v38 = *(v34 + 24);
      v52 = llvm::ConstantInt::get();
      v39 = (*(*v33 + 32) + *(*v11 + 32));
      v40 = llvm::ConstantVector::get();
      v48 = 257;
      v11 = sub_23C49A3AC((v34 + 8), v11, v33, v40, v47);
      if (v10 != 3)
      {
        break;
      }

      v41 = a1 + *(*a1 - 24);
      v42 = v11;
      v43 = 3;
      goto LABEL_17;
    case 32:
      v11 = llvm::UndefValue::get();
      if (v10)
      {
        v12 = 0;
        v13 = a3;
        do
        {
          v14 = *(*a1 - 24);
          v15 = *(*v4 + 8 * (v13 + v12));
          v48 = 257;
          v16 = sub_23C49ACF8(a1 + v14 + 8, 49, v15, v8, v47);
          v17 = v4;
          v18 = v10;
          v19 = a1 + *(*a1 - 24);
          v48 = 257;
          v20 = *(v19 + 24);
          v21 = llvm::ConstantInt::get();
          v22 = (v19 + 8);
          v10 = v18;
          v4 = v17;
          v11 = sub_23C505AA8(v22, v11, v16, v21, v47);
          ++v12;
        }

        while (v10 != v12);
      }

      break;
    default:
      v11 = 0;
      break;
  }

LABEL_11:
  v26 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_23C51D0FC(uint64_t result, int *a2, void *a3)
{
  v3 = *(result + 16);
  if (v3 <= 0x1B)
  {
    if (v3 != 5 || *(result + 18) != 13)
    {
      return result;
    }
  }

  else if (v3 != 41)
  {
    v4 = *(result + 20);
    v5 = 0;
    if ((v4 & 0x40000000) != 0)
    {
      v6 = *(result - 8);
    }

    else
    {
      v6 = (result - 32 * (v4 & 0x7FFFFFF));
    }

    v9 = result;
LABEL_20:
    v13 = *v6;
    v14 = *(v9 + 16);
    if (v14 == 54)
    {
      v17 = *(v9 + 20);
      if ((v17 & 0x40000000) != 0)
      {
        v18 = *(v9 - 8);
      }

      else
      {
        v18 = v9 - 32 * (v17 & 0x7FFFFFF);
      }

      v25 = *(v18 + 32);
      if (v25)
      {
        v26 = *(v25 + 16) == 16;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        if (*(v25 + 32) > 0x40u)
        {
          v27 = **(v25 + 24);
          if (v27 > 0x1F)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v25 + 24);
          if (v27 >= 0x20)
          {
            return result;
          }
        }

        v24 = 1 << v27;
LABEL_75:
        *a2 = v24;
        *a3 = v5;
        return v13;
      }
    }

    else if (v14 == 47)
    {
      v15 = *(v9 + 20);
      v16 = (v15 & 0x40000000) != 0 ? *(v9 - 8) : v9 - 32 * (v15 & 0x7FFFFFF);
      v22 = *(v16 + 32);
      if (v22)
      {
        if (*(v22 + 16) == 16)
        {
          v23 = (v22 + 24);
          if (*(v22 + 32) >= 0x41u)
          {
            v23 = *v23;
          }

          v24 = *v23;
          goto LABEL_75;
        }
      }
    }

    return result;
  }

  v7 = *(result + 20);
  if ((v7 & 0x40000000) != 0)
  {
    v8 = *(result - 8);
  }

  else
  {
    v8 = (result - 32 * (v7 & 0x7FFFFFF));
  }

  v9 = *v8;
  if (v9)
  {
    v10 = *(v9 + 16) >= 0x1Cu;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v9 + 20);
    if ((v11 & 0x7FFFFFF) != 0)
    {
      v12 = (v11 & 0x40000000) != 0 ? *(v9 - 8) : (v9 - 32 * (v11 & 0x7FFFFFF));
      v19 = *v12;
      v20 = *(v19 + 16);
      if (v20 <= 0x1B)
      {
        if (v20 != 5 || *(v19 + 18) != 15)
        {
          return result;
        }
      }

      else if (v20 != 43)
      {
        return result;
      }

      v21 = (v7 & 0x40000000) != 0 ? *(result - 8) : result - 32 * (v7 & 0x7FFFFFF);
      v28 = *(v21 + 32);
      v29 = *(v28 + 16) == 84 ? v28 : 0;
      v30 = *(v19 + 20);
      v31 = (v30 & 0x40000000) != 0 ? *(v19 - 8) : v19 - 32 * (v30 & 0x7FFFFFF);
      v32 = *(v31 + 32);
      v33 = *(v32 + 16) == 84 ? v32 : 0;
      if (v29 && v33)
      {
        v5 = *(v29 - 32);
        if (!v5 || *(v5 + 16) || (v34 = *(v29 + 72), v35 = *(v29 - 32), *(v5 + 24) != v34))
        {
          v35 = 0;
        }

        v36 = *(v33 - 32);
        if (!v36 || *(v36 + 16) || *(v36 + 24) != *(v33 + 72))
        {
          v36 = 0;
        }

        if (v35 == v36 && (*(v5 + 20) & 0x7FFFFFF) == 0)
        {
          if ((v30 & 0x40000000) != 0)
          {
            v6 = *(v19 - 8);
          }

          else
          {
            v6 = (v19 - 32 * (v30 & 0x7FFFFFF));
          }

          goto LABEL_20;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C51D35C(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 7));
    result = *result + 8;
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F28A50;
      *(v4 + 3) = v9;
      v5 = v4 + 120;
      result = v4 + 128;
      v2 += 128;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C51D438(uint64_t a1, uint64_t a2)
{
  sub_23C4EDC2C(&v7, a2);
  v7 = &unk_284F28A50;
  v10 = a1;
  v11 = 0;
  v3 = sub_23C51C418(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = sub_23C51DC24(a1, &v7, v11);
    sub_23C4DDEAC((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = v4 + 56;
    *(v4 + 48) = 0x800000000;
    *(v4 + 120) = 0;
    *(v4 + 124) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

void sub_23C51D518(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_23C496CE8();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_23C496CE8();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_23C51D618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C4EDC2C(&v10, a2);
  v10 = &unk_284F28A28;
  v13 = a1;
  v14 = 0;
  v5 = sub_23C51C418(*a1, *(a1 + 16), v12, &v14);
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v6 = sub_23C51C4AC(a1, &v10, v14);
    sub_23C4DDEAC((v6 + 8), v11);
    *(v6 + 32) = v13;
    *(v6 + 40) = v6 + 56;
    *(v6 + 48) = 0x800000000;
    *(v6 + 120) = 0;
    *(v6 + 124) = 0;
  }

  if (v12 != -8192 && v12 != -4096 && v12 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v11);
  }

  result = sub_23C4A3D80(v6 + 40, a3);
  *(v6 + 120) = *(a3 + 80);
  *(a1 + 64) &= *(a3 + 80);
  v9 = *(a3 + 84);
  *(a1 + 65) |= v9 == 2;
  *(a1 + 66) |= v9 == 3;
  return result;
}

BOOL sub_23C51D748(uint64_t a1, uint64_t a2, llvm::DataLayout *a3, int a4)
{
  if (!a4 || (*(a2 + 8) & 0xFE) == 0x12)
  {
    return 0;
  }

  sub_23C49BBFC(a3, a2);
  if (llvm::TypeSize::operator unsigned long long() != 4)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if ((v7 & 0xFE) != 0x10)
  {
    return 1;
  }

  if ((v7 & 0x11) != 0x10 || *(a1 + 12) != 1)
  {
    return 0;
  }

  result = 0;
  v8 = **(a1 + 16);
  if (v8 && *(v8 + 8) == 17)
  {
    if (*(v8 + 32) == 3)
    {
      v9 = (sub_23C49BBFC(a3, **(v8 + 16)) + 7) >> 3;
      return llvm::TypeSize::operator unsigned long long() == 4;
    }

    return 0;
  }

  return result;
}

void sub_23C51D860(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v29 = 0;
  v5 = sub_23C51C418(*v4, v4[2].i32[0], v13, &v29);
  v6 = *v4 + (v4[2].u32[0] << 7);
  if (v5)
  {
    v7 = v29;
  }

  else
  {
    v7 = v6;
  }

  v8 = v14;
  if ((*v14 + (v14[2].u32[0] << 7)) != v7)
  {
    v25 = v27;
    v26 = 0x800000000;
    if (v7[12])
    {
      sub_23C4A3E4C(&v25, (v7 + 10));
      v8 = v14;
    }

    v28 = *(v7 + 15);
    sub_23C51DB68(v8, v7);
    v9 = v14;
    v20 = a2;
    v21 = v23;
    v22 = 0x800000000;
    if (v26)
    {
      sub_23C4A3E4C(&v21, &v25);
      a2 = v20;
    }

    v24 = v28;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F28A50;
    v18 = v9;
    sub_23C4EDBD4(v30, (LODWORD(v16[0]) >> 1) & 3, v16);
    v29 = &unk_284F28A50;
    v32 = v18;
    v33 = v35;
    v34 = 0x800000000;
    if (v22)
    {
      sub_23C4A3E4C(&v33, &v21);
    }

    v36 = v24;
    v19 = 0;
    if ((sub_23C51C418(*v9, *(v9 + 16), v31, &v19) & 1) == 0)
    {
      v10 = sub_23C51DC24(v9, &v29, v19);
      sub_23C4DDEAC((v10 + 1), v30);
      v10[4] = v32;
      v10[5] = v10 + 7;
      v10[6] = 0x800000000;
      if (v34)
      {
        sub_23C4A3E4C((v10 + 5), &v33);
      }

      v10[15] = v36;
    }

    if (v33 != v35)
    {
      free(v33);
    }

    if (v31 != -8192 && v31 != -4096 && v31)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v30);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v16);
    }

    if (v21 != v23)
    {
      free(v21);
    }

    if (v25 != v27)
    {
      free(v25);
    }
  }

  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

int32x2_t sub_23C51DB68(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v8[0] = 2;
  v8[1] = 0;
  v9 = -8192;
  v10 = 0;
  sub_23C4DDEAC((a2 + 1), v8);
  v5 = v9;
  a2[4] = v10;
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t sub_23C51DC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C51DCD8(a1, v6);
  v8 = 0;
  sub_23C51C418(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t sub_23C51DCD8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x23EED4160](v8 << 7, 8);
  if (v4)
  {
    sub_23C51D35C(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_284F28A50;
    v19[0] = 2;
    v19[1] = 0;
    v20 = -8192;
    v9 = (v3 << 7);
    if (v3)
    {
      v10 = 0;
      do
      {
        v11 = &v10[v4];
        v12 = *&v10[v4 + 24];
        if (v12 != v24 && v12 != v20)
        {
          v26 = 0;
          sub_23C51C418(*a1, *(a1 + 16), v12, &v26);
          v14 = v26;
          sub_23C4DDEAC((v26 + 1), v11 + 1);
          v14[4] = *(v11 + 4);
          v14[5] = v14 + 7;
          v14[6] = 0x800000000;
          if (*(v11 + 12))
          {
            sub_23C4A3E4C((v14 + 5), (v11 + 40));
          }

          v14[15] = *&v10[v4 + 120];
          ++*(a1 + 8);
          v15 = *(v11 + 5);
          if (&v10[v4 + 56] != v15)
          {
            free(v15);
          }
        }

        v16 = *(v11 + 3);
        if (v16 != -8192 && v16 != -4096 && v16 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v10[v4 + 8]);
        }

        v10 += 128;
      }

      while (v9 != v10);
      if (v20 != -8192 && v20 != -4096 && v20)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v19);
      }
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    return llvm::deallocate_buffer(v4, v9);
  }

  else
  {

    return sub_23C51D35C(a1);
  }
}

uint64_t sub_23C51DF38(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = sub_23C51C418(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[5];
    if (v5 != (v11 + 7))
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_284F28A50;
    result = sub_23C4DDEAC((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

uint64_t sub_23C51E068(uint64_t a1)
{
  v2 = sub_23C52A428(a1);
  if (*(a1 + 10) == 1)
  {
    v3 = a1 + *(*a1 - 24);
    if (**(*(*(a1 + 160) + 24) + 16) == *(v3 + 144))
    {
      v4 = *(v3 + 344);
      if (v4[1668] == 1)
      {
        (*(*v4 + 272))(v4, *(a1 + 152));
      }
    }
  }

  if (MGGetBoolAnswer())
  {
    v5 = sub_23C4A2690("AGX_MTL_TESSELLATION_VS_WRITETHROUGH");
    if (v5)
    {
      if (*v5 != 48 && atoi(v5))
      {
        v6 = *(a1 + *(*a1 - 24) + 344);
        (*(*v6 + 304))(v6, *(a1 + 152));
      }
    }
  }

  return v2;
}

uint64_t sub_23C51E194(void *a1)
{
  v2 = sub_23C518E10(a1);
  if (v2)
  {
    v3 = a1 + *(*a1 - 24);
    if ((*(*(v3 + 43) + 1653) & 1) == 0)
    {
      v4 = *(v3 + 40);
      Function = llvm::Module::getFunction();
      a1[564] = Function;
      if (!Function)
      {
        v6 = *(a1 + *(*a1 - 24) + 320);
        a1[564] = llvm::Module::getFunction();
      }

      v7 = *(a1 + *(*a1 - 24) + 320);
      v8 = llvm::Module::getFunction();
      a1[565] = v8;
      if (!v8)
      {
        v9 = *(a1 + *(*a1 - 24) + 320);
        a1[565] = llvm::Module::getFunction();
      }

      v10 = *(a1 + *(*a1 - 24) + 320);
      v11 = llvm::Module::getFunction();
      a1[566] = v11;
      if (!v11)
      {
        v12 = *(a1 + *(*a1 - 24) + 320);
        a1[566] = llvm::Module::getFunction();
      }

      v13 = *(a1 + *(*a1 - 24) + 320);
      v14 = llvm::Module::getFunction();
      a1[567] = v14;
      if (!v14)
      {
        v15 = *(a1 + *(*a1 - 24) + 320);
        a1[567] = llvm::Module::getFunction();
      }
    }
  }

  return v2;
}

void sub_23C51E360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32) > 1u)
  {
    llvm::legacy::PassManager::run(*(*(a1 + *(*a1 - 24) + 400) + 312), *(a1 + *(*a1 - 24) + 320));
    sub_23C4B20A8(a1 + *(*a1 - 24), "After inliner in AGCLLVMAGPVertexShaderRegular::simplifyGenericIR");
    *(a1 + 32) = 1;
  }

  v9 = *(a1 + *(*a1 - 24) + 320);

  sub_23C4D87A4(v9, a2, a3, a4, a5, a6, a7, a8);
}

void sub_23C51E418(void *a1)
{
  *a1 = off_284F1F438;
  v2 = (a1 + 568);
  a1[568] = &off_284F1F630;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1D438);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51E4E8(void *a1)
{
  *a1 = off_284F1F438;
  v2 = (a1 + 568);
  a1[568] = &off_284F1F630;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1D438);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C51E5B4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4544);
  if (v3)
  {
    sub_23C49F8D0(v15, "AGCTessellationDriverState");
    sub_23C49F8D0(v13, "patch_type");
    sub_23C4B705C(&v17, v13, off_278BC0020[*v3 & 3]);
    sub_23C49F8D0(v11, "partition_mode");
    sub_23C4B705C(&v18, v11, off_278BBFFD0[(*v3 >> 2) & 7]);
    sub_23C49F8D0(v9, "step_function");
    sub_23C4B705C(&v19, v9, off_278BBFFF0[*v3 >> 5]);
    sub_23C49F8D0(__p, "unused");
    sub_23C4B7004(&v20, __p, *v3 >> 8);
    sub_23C4B70B4(a2, v15, &v17, 4);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v20.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v20.__r_.__value_.__l.__data_ + i * 8));
      }
    }

    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    sub_23C49F8D0(a2, &unk_23C53F34D);
  }
}

void sub_23C51E7B0(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1D490;
  v1[573] = &unk_284F1D690;
  sub_23C4DE94C((v1 + 569));
  *v1 = &unk_284F1FFB0;
  v1[573] = &off_284F201A8;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1D708);
  sub_23C4B130C((v1 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51E8D8(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1D490;
  v1[573] = &unk_284F1D690;
  sub_23C4DE94C((v1 + 569));
  *v1 = &unk_284F1FFB0;
  v1[573] = &off_284F201A8;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1D708);

  return sub_23C4B130C((v1 + 573));
}

uint64_t sub_23C51E9E8(uint64_t a1)
{
  v2 = *(a1 + 3944);
  if (v2)
  {
    v3 = *(a1 + 3936);
    v4 = v3 + 32 * v2;
    v5 = *(a1 + 4552);
    v6 = *(a1 + 4560);
    v7 = &v5[v6];
    do
    {
      i = v5;
      if (v6)
      {
          ;
        }
      }

      v10 = *(v3 + 4);
      if (i != v7)
      {
        v11 = *i;
        while (*(v11 + 8) != v10)
        {
          do
          {
            v12 = i[1];
            ++i;
            v11 = v12;
            if (v12)
            {
              v13 = v11 == -8;
            }

            else
            {
              v13 = 1;
            }
          }

          while (v13);
          if (i == v7)
          {
            goto LABEL_21;
          }
        }

        v10 = *(v11 + 16);
      }

LABEL_21:
      *(v3 + 4) = v10;
      v3 += 32;
    }

    while (v3 != v4);
  }

  sub_23C503E5C(a1, (a1 + 4552));
  sub_23C5184A4(a1);
  return 1;
}

uint64_t sub_23C51EAB0(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C51EB2C(void *a1)
{
  *a1 = &unk_284F1D490;
  v2 = (a1 + 573);
  a1[573] = &unk_284F1D690;
  sub_23C4DE94C((a1 + 569));
  *a1 = &unk_284F1FFB0;
  a1[573] = &off_284F201A8;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1D708);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51EC40(void *a1)
{
  *a1 = &unk_284F1D490;
  v2 = (a1 + 573);
  a1[573] = &unk_284F1D690;
  sub_23C4DE94C((a1 + 569));
  *a1 = &unk_284F1FFB0;
  a1[573] = &off_284F201A8;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1D708);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C51ED40(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F208B0;
  v1[573] = off_284F20AB0;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F20DA0;
  v1[573] = &off_284F20F98;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1E870);
  sub_23C4B130C((v1 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51EE68(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F208B0;
  v1[573] = off_284F20AB0;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F20DA0;
  v1[573] = &off_284F20F98;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1E870);

  return sub_23C4B130C((v1 + 573));
}

uint64_t sub_23C51EF84(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  result = sub_23C51EAB0(a1);
  if (result)
  {
    v3 = *(a1 + *(*a1 - 24) + 320);
    result = llvm::Module::getFunction();
    if (result)
    {
      v4 = result;
      v5 = sub_23C49EB10(a1 + *(*a1 - 24), "llvm.agx1.nop.dbg", 17, *(a1 + *(*a1 - 24) + 144), *(a1 + *(*a1 - 24) + 184));
      v6 = a1 + 1;
      v7 = *(a1 + *(*a1 - 24) + 184);
      v15[0] = llvm::ConstantInt::get();
      v8 = *(v4 + 1);
      if (v8)
      {
        do
        {
          v9 = *(v8 + 8);
          v10 = *(v8 + 24);
          sub_23C4C30FC(v6 + *(*a1 - 24), v10);
          v11 = *(*a1 - 24);
          v14 = 257;
          sub_23C497A7C(v6 + v11, *(v5 + 24), v5, v15, 1, v13);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v10);
          v8 = v9;
        }

        while (v9);
      }

      llvm::Function::eraseFromParent(v4);
      result = 1;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C51F120(void *a1)
{
  *a1 = off_284F208B0;
  v2 = (a1 + 573);
  a1[573] = off_284F20AB0;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F20DA0;
  a1[573] = &off_284F20F98;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1E870);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51F234(void *a1)
{
  *a1 = off_284F208B0;
  v2 = (a1 + 573);
  a1[573] = off_284F20AB0;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F20DA0;
  a1[573] = &off_284F20F98;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1E870);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C51F334(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1E8D8;
  v1[572] = &unk_284F1EAD8;
  sub_23C4DE94C((v1 + 568));
  *v1 = off_284F21918;
  v1[572] = &off_284F21B10;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1EB50);
  sub_23C4B130C((v1 + 572));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51F45C(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1E8D8;
  v1[572] = &unk_284F1EAD8;
  sub_23C4DE94C((v1 + 568));
  *v1 = off_284F21918;
  v1[572] = &off_284F21B10;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1EB50);

  return sub_23C4B130C((v1 + 572));
}

uint64_t sub_23C51F578(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C51F5F4(void *a1)
{
  *a1 = &unk_284F1E8D8;
  v2 = (a1 + 572);
  a1[572] = &unk_284F1EAD8;
  sub_23C4DE94C((a1 + 568));
  *a1 = off_284F21918;
  a1[572] = &off_284F21B10;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1EB50);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51F708(void *a1)
{
  *a1 = &unk_284F1E8D8;
  v2 = (a1 + 572);
  a1[572] = &unk_284F1EAD8;
  sub_23C4DE94C((a1 + 568));
  *a1 = off_284F21918;
  a1[572] = &off_284F21B10;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1EB50);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C51F808(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1EBB0;
  v1[572] = &unk_284F1EDB0;
  sub_23C4DE94C((v1 + 568));
  *v1 = off_284F22490;
  v1[572] = &off_284F22688;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1EE28);
  sub_23C4B130C((v1 + 572));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51F930(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1EBB0;
  v1[572] = &unk_284F1EDB0;
  sub_23C4DE94C((v1 + 568));
  *v1 = off_284F22490;
  v1[572] = &off_284F22688;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1EE28);

  return sub_23C4B130C((v1 + 572));
}

uint64_t sub_23C51FA4C(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C51FAC8(void *a1)
{
  *a1 = &unk_284F1EBB0;
  v2 = (a1 + 572);
  a1[572] = &unk_284F1EDB0;
  sub_23C4DE94C((a1 + 568));
  *a1 = off_284F22490;
  a1[572] = &off_284F22688;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1EE28);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51FBDC(void *a1)
{
  *a1 = &unk_284F1EBB0;
  v2 = (a1 + 572);
  a1[572] = &unk_284F1EDB0;
  sub_23C4DE94C((a1 + 568));
  *a1 = off_284F22490;
  a1[572] = &off_284F22688;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1EE28);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C51FCDC(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F23008;
  v1[568] = &off_284F23200;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1F100);
  sub_23C4B130C((v1 + 568));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51FDC0(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F23008;
  v1[568] = &off_284F23200;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1F100);

  return sub_23C4B130C((v1 + 568));
}

uint64_t sub_23C51FE98(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C51FF14(void *a1)
{
  *a1 = off_284F23008;
  v2 = (a1 + 568);
  a1[568] = &off_284F23200;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1F100);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51FFE4(void *a1)
{
  *a1 = off_284F23008;
  v2 = (a1 + 568);
  a1[568] = &off_284F23200;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1F100);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C5200A0(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F23B80;
  v1[568] = &off_284F23D78;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1F3D8);
  sub_23C4B130C((v1 + 568));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C520184(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F23B80;
  v1[568] = &off_284F23D78;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1F3D8);

  return sub_23C4B130C((v1 + 568));
}

uint64_t sub_23C52025C(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C5202D8(void *a1)
{
  *a1 = off_284F23B80;
  v2 = (a1 + 568);
  a1[568] = &off_284F23D78;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1F3D8);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C5203A8(void *a1)
{
  *a1 = off_284F23B80;
  v2 = (a1 + 568);
  a1[568] = &off_284F23D78;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1F3D8);
  sub_23C4B130C(v2);
  return a1;
}

uint64_t sub_23C520458(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v8 = a4;
  v11 = sub_23C52B05C(a1, a2 + 1, a3, a4, 0);
  v12 = *a2;
  *v11 = *a2;
  *(a1 + *(v12 - 24)) = a2[7];
  v13 = (a1 + 3896);
  *(a1 + 3912) = 0;
  *(a1 + 3896) = 0u;
  *(a1 + 3916) = 16;
  *(a1 + 3928) = 0;
  *(a1 + 3932) = 0;
  *(a1 + 3936) = a1 + 3952;
  *(a1 + 3944) = 0x1000000000;
  *(a1 + 4464) = a1 + 4480;
  *(a1 + 4472) = 0x400000000;
  if (a5 && a6)
  {
    v14 = (a5 + *a5);
    v15 = (a6 + *a6);
    v16 = (v14 - *v14);
    if (*v16 >= 5u && (v17 = v16[2]) != 0)
    {
      v38 = (v14 + v17 + *(v14 + v17));
    }

    else
    {
      v38 = 0;
    }

    v18 = (v15 - *v15);
    v36 = v8;
    if (*v18 >= 5u && (v19 = v18[2]) != 0)
    {
      v20 = v15 + v19 + *(v15 + v19);
    }

    else
    {
      v20 = 0;
    }

    if (*v38)
    {
      v21 = 0;
      v37 = v20 + 4;
      while (1)
      {
        v22 = *&v37[4 * v21];
        v23 = &v38[v21 + 1] + v38[v21 + 1];
        v24 = strlen((v23 + 4));
        v25 = llvm::StringMapImpl::LookupBucketFor();
        v26 = *v13;
        v27 = v25;
        v28 = *(*v13 + 8 * v25);
        if (v28 == -8)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_26:
        *(v28 + 8) = v22;
        if (++v21 >= *v38)
        {
          goto LABEL_27;
        }
      }

      --*(a1 + 3912);
LABEL_17:
      v29 = MEMORY[0x23EED4160](v24 + 17, 8);
      v30 = v29;
      v31 = v29 + 16;
      if (v24)
      {
        memcpy((v29 + 16), (v23 + 4), v24);
      }

      *(v31 + v24) = 0;
      *v30 = v24;
      *(v30 + 8) = 0;
      *(v26 + 8 * v27) = v30;
      ++*(a1 + 3908);
      for (i = (*(a1 + 3896) + 8 * llvm::StringMapImpl::RehashTable((a1 + 3896))); ; ++i)
      {
        v28 = *i;
        if (*i && v28 != -8)
        {
          break;
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v8 = v36;
    *(a1 + 3928) = (*(v36 + 12) & 0x100000) != 0;
  }

  *(a1 + 3116) = (*(v8 + 12) >> 2);
  *(a1 + 3120) = *(v8 + 8);
  sub_23C52FD10(a1, *(v8 + 12) & 1, (*(v8 + 12) >> 1) & 1);
  *(a1 + 14) = (*(v8 + 12) & 0x800000) != 0;
  *(a1 + 2272) = *v8;
  *(a1 + 3152) = *(v8 + 12) >> 14;
  v34 = *(v8 + 14) & 0xF;
  *(a1 + 3148) = v34;
  if (*(*(a1 + *(*a1 - 24) + 344) + 1676) == 1)
  {
    *(a1 + 3146) = v34 > 1;
    if (v34 >= 2)
    {
      *(a1 + 3152) = 0;
    }
  }

  else
  {
    *(a1 + 3146) = 0;
  }

  *(a1 + 15) = (*(v8 + 12) & 0x400000) != 0;
  *(a1 + 3929) = (*(v8 + 12) & 0x200000) != 0;
  return a1;
}

uint64_t sub_23C5207F0(uint64_t a1, llvm::Module *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = "air.vertex";
  v14 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v13);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (*(Operand + 8) != 4 || !sub_23C4A57A0(*(*(Operand - 8) - 8 * *(*(Operand - 8) + 8)), "air.patch"))
  {
    operator new();
  }

  return (*(**(a1 + 32) + 72))(*(a1 + 32), a1, this, a3, a4, a5);
}

uint64_t sub_23C520968(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_27E1F7488, memory_order_acquire) & 1) == 0)
  {
    v11 = a3;
    v10 = __cxa_guard_acquire(&qword_27E1F7488);
    a3 = v11;
    if (v10)
    {
      qword_27E1F7478 = 0;
      unk_27E1F7480 = 0;
      __cxa_guard_release(&qword_27E1F7488);
      a3 = v11;
    }
  }

  sub_23C520458(a1, a2 + 2, a3, &qword_27E1F7478, 0, 0);
  v7 = a2[1];
  *a1 = v7;
  *(a1 + *(v7 - 24)) = a2[10];
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[11];
  *(a1 + 4544) = a4;
  *(a1 + 4552) = 0u;
  *(a1 + 4568) = 0;
  *(a1 + 4572) = 32;
  return a1;
}

void sub_23C520B30(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F24480;
  v1[573] = off_284F24680;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F24970;
  v1[573] = &off_284F24B68;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1D9E8);
  sub_23C4B130C((v1 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C520C58(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F24480;
  v1[573] = off_284F24680;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F24970;
  v1[573] = &off_284F24B68;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1D9E8);

  return sub_23C4B130C((v1 + 573));
}

void sub_23C520D74(void *a1)
{
  *a1 = off_284F24480;
  v2 = (a1 + 573);
  a1[573] = off_284F24680;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F24970;
  a1[573] = &off_284F24B68;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1D9E8);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C520E88(void *a1)
{
  *a1 = off_284F24480;
  v2 = (a1 + 573);
  a1[573] = off_284F24680;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F24970;
  a1[573] = &off_284F24B68;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1D9E8);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C520F88(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F25270;
  v1[573] = off_284F25470;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F25760;
  v1[573] = &off_284F25958;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1DCD0);
  sub_23C4B130C((v1 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C5210B0(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F25270;
  v1[573] = off_284F25470;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F25760;
  v1[573] = &off_284F25958;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1DCD0);

  return sub_23C4B130C((v1 + 573));
}

void sub_23C5211CC(void *a1)
{
  *a1 = off_284F25270;
  v2 = (a1 + 573);
  a1[573] = off_284F25470;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F25760;
  a1[573] = &off_284F25958;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1DCD0);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C5212E0(void *a1)
{
  *a1 = off_284F25270;
  v2 = (a1 + 573);
  a1[573] = off_284F25470;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F25760;
  a1[573] = &off_284F25958;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1DCD0);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C5213E0(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F26060;
  v1[573] = off_284F26260;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F26550;
  v1[573] = &off_284F26748;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1DFB8);
  sub_23C4B130C((v1 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C521508(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F26060;
  v1[573] = off_284F26260;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F26550;
  v1[573] = &off_284F26748;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1DFB8);

  return sub_23C4B130C((v1 + 573));
}

void sub_23C521624(void *a1)
{
  *a1 = off_284F26060;
  v2 = (a1 + 573);
  a1[573] = off_284F26260;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F26550;
  a1[573] = &off_284F26748;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1DFB8);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C521738(void *a1)
{
  *a1 = off_284F26060;
  v2 = (a1 + 573);
  a1[573] = off_284F26260;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F26550;
  a1[573] = &off_284F26748;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1DFB8);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C521838(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F26E50;
  v1[573] = off_284F27050;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F27340;
  v1[573] = &off_284F27538;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1E2A0);
  sub_23C4B130C((v1 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C521960(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F26E50;
  v1[573] = off_284F27050;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F27340;
  v1[573] = &off_284F27538;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1E2A0);

  return sub_23C4B130C((v1 + 573));
}

void sub_23C521A7C(void *a1)
{
  *a1 = off_284F26E50;
  v2 = (a1 + 573);
  a1[573] = off_284F27050;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F27340;
  a1[573] = &off_284F27538;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1E2A0);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C521B90(void *a1)
{
  *a1 = off_284F26E50;
  v2 = (a1 + 573);
  a1[573] = off_284F27050;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F27340;
  a1[573] = &off_284F27538;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1E2A0);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C521C90(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F27C40;
  v1[573] = off_284F27E40;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F28130;
  v1[573] = &off_284F28328;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1E588);
  sub_23C4B130C((v1 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C521DB8(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = off_284F27C40;
  v1[573] = off_284F27E40;
  sub_23C4DE94C((v1 + 569));
  *v1 = off_284F28130;
  v1[573] = &off_284F28328;
  v2 = v1[558];
  if (v2 != v1 + 560)
  {
    free(v2);
  }

  v3 = v1[492];
  if (v3 != v1 + 494)
  {
    free(v3);
  }

  sub_23C51784C((v1 + 487));
  sub_23C52B334(v1, off_284F1E588);

  return sub_23C4B130C((v1 + 573));
}

void sub_23C521ED4(void *a1)
{
  *a1 = off_284F27C40;
  v2 = (a1 + 573);
  a1[573] = off_284F27E40;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F28130;
  a1[573] = &off_284F28328;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1E588);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C521FE8(void *a1)
{
  *a1 = off_284F27C40;
  v2 = (a1 + 573);
  a1[573] = off_284F27E40;
  sub_23C4DE94C((a1 + 569));
  *a1 = off_284F28130;
  a1[573] = &off_284F28328;
  v3 = a1[558];
  if (v3 != a1 + 560)
  {
    free(v3);
  }

  v4 = a1[492];
  if (v4 != a1 + 494)
  {
    free(v4);
  }

  sub_23C51784C((a1 + 487));
  sub_23C52B334(a1, off_284F1E588);
  sub_23C4B130C(v2);
  return a1;
}

void sub_23C5220DC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_23C49F8D0(v17, "tess_nb_0_");
  sub_23C49F8D0(v18, "tess_nb_1_");
  v5 = &v17[24 * (*a3 & 3)];
  if (v5[23] < 0)
  {
    sub_23C49F988(&__dst, *v5, *(v5 + 1));
  }

  else
  {
    __dst = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (v18[v6 + 23] < 0)
    {
      operator delete(*&v17[v6 + 24]);
    }

    v6 -= 24;
    if (v6 == -48)
    {
      sub_23C49F8D0(v17, "0_");
      sub_23C49F8D0(v18, "1_");
      sub_23C49F8D0(v19, "2_");
      sub_23C49F8D0(v20, "3_");
      v7 = &v17[24 * ((*a3 >> 2) & 7)];
      v8 = v7[23];
      if (v8 >= 0)
      {
        v9 = &v17[24 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = v7[23];
      }

      else
      {
        v10 = *(v7 + 1);
      }

      std::string::append(&__dst, v9, v10);
      v11 = 0;
      while (1)
      {
        if (v20[v11 + 23] < 0)
        {
          operator delete(*&v20[v11]);
        }

        v11 -= 24;
        if (v11 == -96)
        {
          sub_23C49F8D0(v17, "0");
          sub_23C49F8D0(v18, "1");
          sub_23C49F8D0(v19, "2");
          sub_23C49F8D0(v20, "3");
          v12 = &v17[24 * (*a3 >> 5)];
          v13 = v12[23];
          if (v13 >= 0)
          {
            v14 = &v17[24 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = v12[23];
          }

          else
          {
            v15 = *(v12 + 1);
          }

          std::string::append(&__dst, v14, v15);
          v16 = 0;
          while (1)
          {
            if (v20[v16 + 23] < 0)
            {
              operator delete(*&v20[v16]);
            }

            v16 -= 24;
            if (v16 == -96)
            {
              sub_23C4AF200(a2, &__dst);
              operator new();
            }
          }
        }
      }
    }
  }
}

void sub_23C5226F4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_23C49F8D0(v17, "tess_b3_0_");
  sub_23C49F8D0(v18, "tess_b3_1_");
  v5 = &v17[24 * (*a3 & 3)];
  if (v5[23] < 0)
  {
    sub_23C49F988(&__dst, *v5, *(v5 + 1));
  }

  else
  {
    __dst = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (v18[v6 + 23] < 0)
    {
      operator delete(*&v17[v6 + 24]);
    }

    v6 -= 24;
    if (v6 == -48)
    {
      sub_23C49F8D0(v17, "0_");
      sub_23C49F8D0(v18, "1_");
      sub_23C49F8D0(v19, "2_");
      sub_23C49F8D0(v20, "3_");
      v7 = &v17[24 * ((*a3 >> 2) & 7)];
      v8 = v7[23];
      if (v8 >= 0)
      {
        v9 = &v17[24 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = v7[23];
      }

      else
      {
        v10 = *(v7 + 1);
      }

      std::string::append(&__dst, v9, v10);
      v11 = 0;
      while (1)
      {
        if (v20[v11 + 23] < 0)
        {
          operator delete(*&v20[v11]);
        }

        v11 -= 24;
        if (v11 == -96)
        {
          sub_23C49F8D0(v17, "0");
          sub_23C49F8D0(v18, "1");
          sub_23C49F8D0(v19, "2");
          sub_23C49F8D0(v20, "3");
          v12 = &v17[24 * (*a3 >> 5)];
          v13 = v12[23];
          if (v13 >= 0)
          {
            v14 = &v17[24 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = v12[23];
          }

          else
          {
            v15 = *(v12 + 1);
          }

          std::string::append(&__dst, v14, v15);
          v16 = 0;
          while (1)
          {
            if (v20[v16 + 23] < 0)
            {
              operator delete(*&v20[v16]);
            }

            v16 -= 24;
            if (v16 == -96)
            {
              sub_23C4AF200(a2, &__dst);
              operator new();
            }
          }
        }
      }
    }
  }
}
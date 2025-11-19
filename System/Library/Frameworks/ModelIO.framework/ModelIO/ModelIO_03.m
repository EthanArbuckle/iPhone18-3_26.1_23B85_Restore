void sub_239E911EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  sub_239E91E2C(&a68);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  sub_239E88DF8(&STACK[0x330]);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_239E987D0(&a40);

  _Unwind_Resume(a1);
}

std::string *sub_239E91570(std::string *this)
{
  v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = v2;
  v4 = this + v2;
  if (v3 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_;
  }

  if (v3 >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  v7 = MEMORY[0x277D85DE0];
  while (v5 != v6)
  {
    v9 = *--v5;
    v8 = v9;
    if ((v9 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x4000uLL))
      {
LABEL_13:
        v6 = (v5 + 1);
        break;
      }
    }

    else if ((*(v7 + 4 * v8 + 60) & 0x4000) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this + v10;
  if (v11 >= 0)
  {
    v13 = this;
  }

  else
  {
    v12 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    v13 = this->__r_.__value_.__r.__words[0];
  }

  std::string::erase(this, v6 - v13, v12 - v6);
  v14 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v15 = this->__r_.__value_.__r.__words[0];
  if (v14 >= 0)
  {
    v16 = this;
  }

  else
  {
    v16 = this->__r_.__value_.__r.__words[0];
  }

  if (v14 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v18 = (v16 + size);
    v19 = v16;
    do
    {
      v20 = v19->__r_.__value_.__s.__data_[0];
      if ((v20 & 0x80000000) != 0)
      {
        if (!__maskrune(v20, 0x4000uLL))
        {
          goto LABEL_31;
        }
      }

      else if ((*(v7 + 4 * v20 + 60) & 0x4000) == 0)
      {
        goto LABEL_31;
      }

      v19 = (v19 + 1);
      --size;
    }

    while (size);
    v19 = v18;
LABEL_31:
    LOBYTE(v14) = *(&this->__r_.__value_.__s + 23);
    v15 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v19 = v16;
  }

  if ((v14 & 0x80u) == 0)
  {
    v21 = this;
  }

  else
  {
    v21 = v15;
  }

  std::string::erase(this, v16 - v21, v19 - v16);
  return this;
}

void sub_239E916B8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E9170C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E9170C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

std::string *sub_239E9175C@<X0>(const std::string *__s@<X1>, std::string *result@<X0>, std::string *a3@<X8>)
{
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    v6 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v6 = __s;
  }

  v7 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if (v7 >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = result->__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    v9 = HIBYTE(result->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = result->__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
    return std::string::basic_string(a3, __s, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
  }

  if (size >= v9)
  {
    v10 = (v6 + size);
    v11 = v8->__r_.__value_.__s.__data_[0];
    result = v6;
    do
    {
      v12 = size - v9;
      if (v12 == -1)
      {
        break;
      }

      result = memchr(result, v11, v12 + 1);
      if (!result)
      {
        break;
      }

      v13 = result;
      result = memcmp(result, v8, v9);
      if (!result)
      {
        if (v13 == v10 || v13 != v6)
        {
          break;
        }

        return std::string::basic_string(a3, __s, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
      }

      result = (&v13->__r_.__value_.__l.__data_ + 1);
      size = v10 - (&v13->__r_.__value_.__l.__data_ + 1);
    }

    while (size >= v9);
  }

  *&a3->__r_.__value_.__l.__data_ = *&__s->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = __s->__r_.__value_.__r.__words[2];
  __s->__r_.__value_.__l.__size_ = 0;
  __s->__r_.__value_.__r.__words[2] = 0;
  __s->__r_.__value_.__r.__words[0] = 0;
  return result;
}

float32x4_t *sub_239E91870(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
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
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239E91AC8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_239E79870();
}

void *sub_239E91B10(void *result, double a2)
{
  v2 = HIDWORD(a2);
  v3 = *(result + 2);
  if (v3 > 3)
  {
    v3 -= 4;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v7 = MEMORY[0x23EE80140](*result, LODWORD(a2));
      v8 = "//";
      v9 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      v5 = MEMORY[0x23EE80140](*result, LODWORD(a2));
      v6 = sub_239E98B94(v5, "/", 1);
      v7 = MEMORY[0x23EE80140](v6, v2);
      v8 = "/";
      v9 = 1;
    }

    sub_239E98B94(v7, v8, v9);
LABEL_14:

    JUMPOUT(0x23EE80140);
  }

  if (!v3)
  {
    v10 = *result;
    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v4 = MEMORY[0x23EE80140](*result, LODWORD(a2));
    sub_239E98B94(v4, "/", 1);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_239E91C08(uint64_t a1)
{
  *a1 = &unk_284D17508;
  sub_239E91CE0(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_239E91C54(uint64_t a1)
{
  *a1 = &unk_284D17508;
  sub_239E91CE0(a1 + 8, *(a1 + 16));

  JUMPOUT(0x23EE802C0);
}

void sub_239E91CE0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_239E91CE0(a1, *a2);
    sub_239E91CE0(a1, a2[1]);
    sub_239E91D3C((a2 + 4));

    operator delete(a2);
  }
}

void sub_239E91D3C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_239E91D94(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239E954E4(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(v3 + 72) = *(a2 + 72);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239E91E2C(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_239E95924(&v3);
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

uint64_t sub_239E91E88@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_239E959D0(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_239E91F5C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_239E797B4();
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
      sub_239E91AC8(a1, v10);
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
  return v6 - 16;
}

uint64_t sub_239E92038(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_239E797B4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_239E95BB4(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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
  return v6 - 8;
}

uint64_t sub_239E92110(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_239E797B4();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = a1;
    if (v10)
    {
      sub_239E95BFC(a1, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy((v11 - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_239E95C54(v17);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  *(a1 + 8) = v6;
  return v6 - 24;
}

void sub_239E92254(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, _BYTE *a6@<X8>)
{
  v601[2] = *MEMORY[0x277D85DE8];
  v526 = a2;
  v535 = a3;
  v9 = a1[13] - a1[12];
  if (v9)
  {
    LODWORD(v9) = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) == v9 >> 4;
  }

  v523 = v9;
  v531 = a1[9];
  v532 = a1[10];
  v529 = a1[3];
  v530 = a1[4];
  v527 = a1[6];
  v528 = a1[7];
  v571 = 0u;
  v572 = 0u;
  v573 = 1065353216;
  v569 = 0;
  __p = 0;
  v570 = 0;
  v10 = a1[18];
  v543 = a1;
  v544 = a1[19];
  if (v10 == v544)
  {
    v533 = 0;
    v11 = 0;
  }

  else
  {
    v539 = a5;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
      while (v13 != v14)
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v17 = (v15 - *v13) >> 4;
        v18 = a4;
        if (v17 < 4)
        {
          v18 = 1;
        }

        if (v18)
        {
          v19 = (v15 - *v13) >> 4;
        }

        else
        {
          v19 = 3 * v17 - 6;
        }

        for (; v16 != v15; ++v16)
        {
          v584[1] = 0;
          v584[0] = 0;
          *v584 = *v16;
          if (!sub_239E95DE8(&v571, v584))
          {
            v594 = v584;
            sub_239E95ED0(&v571, v584)[2].i32[0] = v12;
            sub_239E8E4FC(&__p, v584);
            ++v12;
          }
        }

        v11 += v19;
        v13 += 24;
      }

      v10 += 80;
    }

    while (v10 != v544);
    v533 = *(&v572 + 1);
    a5 = v539;
  }

  v537 = objc_alloc_init(MDLVertexDescriptor);
  v22 = objc_msgSend_attributes(v537, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0);
  objc_msgSend_setName_(v24, v25, @"position");

  v28 = objc_msgSend_attributes(v537, v26, v27);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, 0);
  objc_msgSend_setFormat_(v30, v31, 786435);

  v34 = objc_msgSend_attributes(v537, v32, v33);
  v36 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, 0);
  objc_msgSend_setBufferIndex_(v36, v37, 0);

  v40 = objc_msgSend_attributes(v537, v38, v39);
  v42 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 0);
  objc_msgSend_setOffset_(v42, v43, 0);

  if (v532 == v531)
  {
    v68 = 1;
    v69 = 12;
  }

  else
  {
    v46 = objc_msgSend_attributes(v537, v44, v45);
    v48 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, 1);
    objc_msgSend_setName_(v48, v49, @"normal");

    v52 = objc_msgSend_attributes(v537, v50, v51);
    v54 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 1);
    objc_msgSend_setFormat_(v54, v55, 786435);

    v58 = objc_msgSend_attributes(v537, v56, v57);
    v60 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, 1);
    objc_msgSend_setBufferIndex_(v60, v61, 0);

    v64 = objc_msgSend_attributes(v537, v62, v63);
    v66 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 1);
    objc_msgSend_setOffset_(v66, v67, 12);

    v68 = 2;
    v69 = 24;
  }

  if (v523)
  {
    v70 = objc_msgSend_attributes(v537, v44, v45);
    v72 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, v68);
    objc_msgSend_setName_(v72, v73, @"color");

    v76 = objc_msgSend_attributes(v537, v74, v75);
    v78 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, v68);
    objc_msgSend_setFormat_(v78, v79, 786436);

    v82 = objc_msgSend_attributes(v537, v80, v81);
    v84 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, v68);
    objc_msgSend_setBufferIndex_(v84, v85, 0);

    v88 = objc_msgSend_attributes(v537, v86, v87);
    v90 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, v68);
    objc_msgSend_setOffset_(v90, v91, v69);

    ++v68;
    v69 += 16;
  }

  if (v530 != v529)
  {
    v92 = objc_msgSend_attributes(v537, v44, v45);
    v94 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, v68);
    objc_msgSend_setName_(v94, v95, @"textureCoordinate");

    v98 = objc_msgSend_attributes(v537, v96, v97);
    v100 = objc_msgSend_objectAtIndexedSubscript_(v98, v99, v68);
    objc_msgSend_setFormat_(v100, v101, 786434);

    v104 = objc_msgSend_attributes(v537, v102, v103);
    v106 = objc_msgSend_objectAtIndexedSubscript_(v104, v105, v68);
    objc_msgSend_setBufferIndex_(v106, v107, 0);

    v110 = objc_msgSend_attributes(v537, v108, v109);
    v112 = objc_msgSend_objectAtIndexedSubscript_(v110, v111, v68);
    objc_msgSend_setOffset_(v112, v113, v69);

    ++v68;
    v69 += 8;
  }

  if (v528 != v527)
  {
    v114 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v44, @"%@2", @"textureCoordinate");
    v117 = objc_msgSend_attributes(v537, v115, v116);
    v118 = v68;
    v120 = objc_msgSend_objectAtIndexedSubscript_(v117, v119, v68);
    objc_msgSend_setName_(v120, v121, v114);

    v124 = objc_msgSend_attributes(v537, v122, v123);
    v126 = objc_msgSend_objectAtIndexedSubscript_(v124, v125, v118);
    objc_msgSend_setFormat_(v126, v127, 786434);

    v130 = objc_msgSend_attributes(v537, v128, v129);
    v132 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, v118);
    objc_msgSend_setBufferIndex_(v132, v133, 0);

    v136 = objc_msgSend_attributes(v537, v134, v135);
    v138 = objc_msgSend_objectAtIndexedSubscript_(v136, v137, v118);
    objc_msgSend_setOffset_(v138, v139, v69);

    v69 += 8;
  }

  v140 = objc_msgSend_layouts(v537, v44, v45);
  v142 = objc_msgSend_objectAtIndexedSubscript_(v140, v141, 0);
  objc_msgSend_setStride_(v142, v143, v69);

  objc_msgSend_setPackedOffsets(v537, v144, v145);
  objc_msgSend_setPackedStrides(v537, v146, v147);
  objc_msgSend__conformVertexBuffers_error_(v535, v148, v537, 0);
  if (!v11)
  {
    v161 = "OBJ file has no faces";
LABEL_37:
    sub_239E552A0(a6, v161);
    v159 = v537;
    goto LABEL_38;
  }

  if (!v533)
  {
    v161 = "No vertices in OBJ file";
    goto LABEL_37;
  }

  v151 = objc_msgSend_layouts(v537, v149, v150);
  v153 = objc_msgSend_objectAtIndexedSubscript_(v151, v152, 0);
  v156 = objc_msgSend_stride(v153, v154, v155);

  v159 = v537;
  if (a5)
  {
    NSLog(&cfstr_CreatingVertex.isa, v533);
  }

  v160 = v543;
  if (!is_mul_ok(v156, v533))
  {
    sub_239E552A0(a6, "Too many vertices in OBJ file");
    goto LABEL_38;
  }

  v520 = v156 * v533;
  if ((a4 & 1) == 0)
  {
    v163 = objc_msgSend_vertexDescriptor(v535, v157, v158);
    v164 = v163 == 0;

    v166 = 4 * v11;
    if (v164)
    {
      v215 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v165, v520);
      v601[0] = v215;
      v217 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v216, v166);
      v601[1] = v217;
      v214 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v218, v601, 2);

      v211 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v219, 1);
      v600[0] = v211;
      v212 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v220, 2);
      v600[1] = v212;
      v213 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v221, v600, 2);
    }

    else
    {
      v167 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v170 = objc_alloc_init(MEMORY[0x277CBEB18]);
      for (i = 0; ; i = v178 + 1)
      {
        v172 = objc_msgSend_vertexDescriptor(v535, v168, v169);
        v175 = objc_msgSend_layouts(v172, v173, v174);
        v178 = i;
        v179 = objc_msgSend_count(v175, v176, v177) > i;

        if (!v179)
        {
          break;
        }

        v182 = objc_msgSend_vertexDescriptor(v535, v180, v181);
        v185 = objc_msgSend_layouts(v182, v183, v184);
        v187 = objc_msgSend_objectAtIndexedSubscript_(v185, v186, v178);
        v190 = objc_msgSend_stride(v187, v188, v189) == 0;

        if (!v190)
        {
          v191 = objc_msgSend_vertexDescriptor(v535, v168, v169);
          v194 = objc_msgSend_layouts(v191, v192, v193);
          v196 = objc_msgSend_objectAtIndexedSubscript_(v194, v195, v178);
          v199 = objc_msgSend_stride(v196, v197, v198);

          v201 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v200, v199 * v533);
          objc_msgSend_addObject_(v167, v202, v201);

          v204 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v203, 1);
          objc_msgSend_addObject_(v170, v205, v204);
        }
      }

      v206 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v180, v166);
      objc_msgSend_addObject_(v167, v207, v206);

      v209 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v208, 2);
      objc_msgSend_addObject_(v170, v210, v209);

      v211 = v167;
      v212 = v170;
      v213 = v212;
      v214 = v211;
    }

    v160 = v543;
  }

  v566 = 0;
  v565 = 0;
  v567 = 0;
  sub_239E95D48(&v565, 2 * v533);
  v563 = 0;
  v562 = 0;
  v564 = 0;
  if (a5)
  {
    NSLog(&cfstr_AddingDSubmesh.isa, 0xCCCCCCCCCCCCCCCDLL * ((v160[19] - v160[18]) >> 4));
  }

  v521 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v534 = v160[18];
  v524 = v160[19];
  if (v534 != v524)
  {
    v227.i32[3] = 0;
    while (1)
    {
      v566 = v565;
      if (a4)
      {
        v228 = *(v534 + 72);
        v229 = v228 - 3;
        v230 = 2;
        if (v228 == 4)
        {
          v230 = 4;
        }

        v231 = 5;
        if (v228 == 1)
        {
          v231 = 0;
        }

        if (v228 == 2)
        {
          v232 = 1;
        }

        else
        {
          v232 = v231;
        }

        if (v229 < 2)
        {
          v232 = v230;
        }

        v538 = v232;
        v233 = *(v534 + 48);
        v234 = *(v534 + 56);
        while (v233 != v234)
        {
          v235 = v233[1] - *v233;
          LODWORD(v584[0]) = v235 >> 4;
          sub_239E73254(&v562, v584);
          if ((v235 >> 4))
          {
            v236 = 0;
            v237 = v235 & 0xFFFFFFFF0;
            do
            {
              v584[0] = (*v233 + v236);
              v238 = sub_239E95ED0(&v571, v584[0]);
              sub_239E73254(&v565, v238[2].i32);
              v236 += 16;
            }

            while (v237 != v236);
          }

          v233 += 3;
        }

        goto LABEL_176;
      }

      v240 = *(v534 + 48);
      v239 = *(v534 + 56);
      if (v240 != v239)
      {
        break;
      }

LABEL_175:
      v538 = 2;
LABEL_176:
      v350 = v566 - v565;
      if (v566 != v565)
      {
        v351 = objc_alloc(MEMORY[0x277CBEA90]);
        v541 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v351, v352, v565, v350, 0);
        v355 = objc_msgSend_bufferAllocator(v535, v353, v354);
        v357 = objc_msgSend_newBufferFromZone_data_type_(v355, v356, 0, v541, 2);

        if (objc_msgSend_conformsToProtocol_(v357, v358, &unk_284D24D98))
        {
          v359 = v357;
          v361 = objc_msgSend_stringByAppendingString_(@"MDL_OBJ", v360, @"-Indices");
          objc_msgSend_setName_(v359, v362, v361);
        }

        if (!v357)
        {
          sub_239E552A0(a6, "Could not allocate index buffer");
          v385 = v541;
          goto LABEL_286;
        }

        v363 = objc_alloc(MEMORY[0x277CCACA8]);
        v365 = (v534 + 24);
        if (*(v534 + 47) < 0)
        {
          v365 = *v365;
        }

        v366 = objc_msgSend_initWithCString_encoding_(v363, v364, v365, 4);
        v552 = 0u;
        v553 = 0u;
        v550 = 0u;
        v551 = 0u;
        v367 = v526;
        v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(v367, v368, &v550, v599, 16);
        if (v371)
        {
          v372 = *v551;
LABEL_184:
          v373 = 0;
          while (1)
          {
            if (*v551 != v372)
            {
              objc_enumerationMutation(v367);
            }

            v374 = *(*(&v550 + 1) + 8 * v373);
            v375 = objc_msgSend_name(v374, v369, v370);
            isEqualToString = objc_msgSend_isEqualToString_(v375, v376, v366);

            if (isEqualToString)
            {
              break;
            }

            if (v371 == ++v373)
            {
              v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(v367, v369, &v550, v599, 16);
              if (v371)
              {
                goto LABEL_184;
              }

              goto LABEL_190;
            }
          }

          v380 = v374;

          if (v380)
          {
            goto LABEL_195;
          }
        }

        else
        {
LABEL_190:
        }

        if (objc_msgSend_count(v367, v378, v379))
        {
          v380 = objc_msgSend_objectAtIndex_(v367, v381, 0);
        }

        else
        {
          v382 = [MDLMaterial alloc];
          v383 = objc_opt_new();
          v380 = objc_msgSend_initWithName_scatteringFunction_(v382, v384, v366, v383);
        }

LABEL_195:
        if (a4)
        {
          v385 = objc_alloc_init(MDLSubmeshTopology);
          v386 = v563;
          v387 = v562;
          v390 = objc_msgSend_bufferAllocator(v535, v388, v389);
          v392 = objc_msgSend_newBufferFromZone_length_type_(v390, v391, 0, (v386 - v387) >> 2, 1);
          objc_msgSend_setFaceTopology_(v385, v393, v392);

          v396 = objc_msgSend_faceTopology(v385, v394, v395);
          LODWORD(v392) = objc_msgSend_conformsToProtocol_(v396, v397, &unk_284D24D98);

          if (v392)
          {
            v400 = objc_msgSend_faceTopology(v385, v398, v399);
            v402 = objc_msgSend_stringByAppendingString_(@"MDL_OBJ", v401, @"-Topology");
            objc_msgSend_setName_(v400, v403, v402);
          }

          v404 = objc_msgSend_faceTopology(v385, v398, v399);
          v405 = v404 == 0;

          if (v405)
          {
            sub_239E552A0(a6, "Could not allocate topology buffer");

            goto LABEL_284;
          }

          v408 = objc_msgSend_faceTopology(v385, v406, v407);
          v411 = objc_msgSend_map(v408, v409, v410);

          v414 = objc_msgSend_bytes(v411, v412, v413);
          v416 = v562;
          if (v563 == v562)
          {
            v418 = (v563 - v562) >> 2;
          }

          else
          {
            v417 = 0;
            do
            {
              *(v414 + v417) = v416[v417];
              ++v417;
              v416 = v562;
              v418 = (v563 - v562) >> 2;
            }

            while (v418 > v417);
          }

          objc_msgSend_setFaceCount_(v385, v415, v418);
        }

        else
        {
          v385 = 0;
        }

        v419 = v534;
        if (*(v534 + 23) < 0)
        {
          v419 = *v534;
        }

        v420 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v378, v419, 4);
        v421 = [MDLSubmesh alloc];
        v423 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v421, v422, v420, v357, (v566 - v565) >> 2, 32, v538, v380, v385);
        objc_msgSend_addObject_(v521, v424, v423);
        v563 = v562;
      }

      v534 += 80;
      if (v534 == v524)
      {
        goto LABEL_210;
      }
    }

    v525 = *(v534 + 56);
    while (1)
    {
      v241 = *v240;
      v242 = v240[1] - *v240;
      v243 = v242 >> 4;
      v561 = 0;
      v560 = 0;
      if ((v242 >> 4) == 3)
      {
        v584[0] = v241;
        HIDWORD(v561) = sub_239E95ED0(&v571, v241)[2].i32[0];
        v584[0] = &(*v240)[1];
        LODWORD(v561) = sub_239E95ED0(&v571, v584[0])[2].i32[0];
        v584[0] = &(*v240)[2];
        v560 = sub_239E95ED0(&v571, v584[0])[2].i32[0];
        sub_239E73254(&v565, &v561 + 1);
        sub_239E73254(&v565, &v561);
        v244 = &v560;
      }

      else if (v243 == 2)
      {
        v584[0] = v241;
        HIDWORD(v561) = sub_239E95ED0(&v571, v241)[2].i32[0];
        v584[0] = &(*v240)[1];
        LODWORD(v561) = sub_239E95ED0(&v571, v584[0])[2].i32[0];
        sub_239E73254(&v565, &v561 + 1);
        v244 = &v561;
        sub_239E73254(&v565, &v561);
      }

      else
      {
        if (v243 != 1)
        {
          v558 = 0;
          v557 = 0;
          v559 = 0;
          if (v243 < 1)
          {
            v248 = 0;
            v247 = 0;
          }

          else
          {
            v245 = 0;
            v246 = (v242 >> 4) & 0x7FFFFFFF;
            do
            {
              LODWORD(v584[0]) = (*v240)[v245].i32[0];
              sub_239E73254(&v557, v584);
              ++v245;
            }

            while (v246 != v245);
            v247 = v558;
            v248 = v557;
          }

          v554 = 0;
          v555 = 0;
          v556 = 0;
          v249 = v247 - v248;
          if (v249 == 16)
          {
            v250 = *v543 + 12 * *v248;
            v227.i64[0] = *v250;
            v227.i32[2] = *(v250 + 8);
            v251 = *v543 + 12 * v248[1];
            v225.i64[0] = *v251;
            v225.i32[2] = *(v251 + 8);
            v252 = *v543 + 12 * v248[2];
            v226.i64[0] = *v252;
            v226.i32[2] = *(v252 + 8);
            v253 = *v543 + 12 * v248[3];
            v224.i64[0] = *v253;
            v224.i32[2] = *(v253 + 8);
            v254 = vsubq_f32(v225, v227);
            v255 = vsubq_f32(v224, v226);
            v256 = vextq_s8(vuzp1q_s32(v254, v254), v254, 0xCuLL);
            v257 = vextq_s8(vuzp1q_s32(v255, v255), v255, 0xCuLL);
            v258 = vsubq_f32(v224, v225);
            v259 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v258, v258), v258, 0xCuLL), v254)), v256, v258);
            v260 = vsubq_f32(v226, v225);
            v261 = vextq_s8(vuzp1q_s32(v260, v260), v260, 0xCuLL);
            v262 = vmlaq_f32(vnegq_f32(vmulq_f32(v257, v260)), v261, v255);
            v263 = vmulq_f32(v259, v262);
            if (((v263.f32[2] + v263.f32[0]) + v263.f32[1]) >= 0.0)
            {
              v279 = vsubq_f32(v226, v227);
              v280 = vmlaq_f32(vnegq_f32(vmulq_f32(v257, v279)), vextq_s8(vuzp1q_s32(v279, v279), v279, 0xCuLL), v255);
              v281 = vmlaq_f32(vnegq_f32(vmulq_f32(v261, v254)), v256, v260);
              v282 = vmulq_f32(v280, v281);
              if (((v282.f32[2] + v282.f32[0]) + v282.f32[1]) >= 0.0)
              {
                v328 = vmulq_f32(v259, v259);
                v329 = vmulq_f32(v262, v262);
                v328.f32[0] = vabds_f32(fabsf((v328.f32[2] + v328.f32[0]) + v328.f32[1]), fabsf((v329.f32[2] + v329.f32[0]) + v329.f32[1]));
                v330 = vmulq_f32(v281, v281);
                v331 = vmulq_f32(v280, v280);
                if (v328.f32[0] >= vabds_f32(fabsf((v330.f32[2] + v330.f32[0]) + v330.f32[1]), fabsf((v331.f32[2] + v331.f32[0]) + v331.f32[1])))
                {
                  *v584 = xmmword_239F9BED0;
                  sub_239E8E4FC(&v554, v584);
                  *v584 = xmmword_239F9BEE0;
                }

                else
                {
                  *v584 = xmmword_239F9BEF0;
                  sub_239E8E4FC(&v554, v584);
                  *v584 = xmmword_239F9BF00;
                }

                sub_239E8E4FC(&v554, v584);
              }

              else
              {
                *v584 = xmmword_239F9BEF0;
                sub_239E8E4FC(&v554, v584);
                *v584 = xmmword_239F9BF00;
                sub_239E8E4FC(&v554, v584);
              }
            }

            else
            {
              *v584 = xmmword_239F9BED0;
              sub_239E8E4FC(&v554, v584);
              *v584 = xmmword_239F9BEE0;
              sub_239E8E4FC(&v554, v584);
            }
          }

          else
          {
            v576 = 0;
            v575 = 0;
            v577 = 0;
            sub_239E96128(&v575, v249 >> 2);
            v574[0] = v574;
            v574[1] = v574;
            v574[2] = 0;
            if (v558 != v557)
            {
              v265 = *v543 + 12 * *v557;
              *&v264 = *v265;
              DWORD2(v264) = *(v265 + 8);
              *v584 = v264;
              sub_239E8E4FC(&v575, v584);
              operator new();
            }

            v266 = v575;
            if (v576 == v575)
            {
              v269 = 0uLL;
            }

            else
            {
              v267 = (v576 - v575) >> 4;
              if (v267 <= 1)
              {
                v268 = 1;
              }

              else
              {
                v268 = (v576 - v575) >> 4;
              }

              v269 = 0uLL;
              v270 = 1;
              v271 = v575;
              do
              {
                v272 = *(v575 + (v270 % v267));
                v273 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v272, v272), v272, 0xCuLL), *v271)), vextq_s8(vuzp1q_s32(*v271, *v271), *v271, 0xCuLL), v272);
                v274 = vmulq_f32(v273, v273);
                v275 = (v274.f32[2] + v274.f32[0]) + v274.f32[1];
                if (v275 >= 0.000001)
                {
                  v276 = v275;
                  v277 = vrsqrte_f32(LODWORD(v275));
                  v278 = vmul_f32(vrsqrts_f32(LODWORD(v276), vmul_f32(v277, v277)), v277);
                  v269 = vmlaq_n_f32(v269, vextq_s8(vuzp1q_s32(v273, v273), v273, 0xCuLL), vmul_f32(v278, vrsqrts_f32(LODWORD(v276), vmul_f32(v278, v278))).f32[0]);
                }

                ++v270;
                ++v271;
                --v268;
              }

              while (v268);
            }

            v283 = vmulq_f32(v269, v269);
            v284 = vaddv_f32(*v283.f32) + v283.f32[2];
            if (v284 >= 0.000001)
            {
              v285 = v284;
              v286 = vrsqrte_f32(LODWORD(v284));
              v287 = vmul_f32(vrsqrts_f32(LODWORD(v285), vmul_f32(v286, v286)), v286);
              v288 = vmulq_n_f32(v269, vmul_f32(v287, vrsqrts_f32(LODWORD(v285), vmul_f32(v287, v287))).f32[0]);
              v289 = *v575;
              v588 = 0;
              __src = 0;
              v589 = 0;
              v290 = vextq_s8(vuzp1q_s32(v288, v288), v288, 0xCuLL);
              *v584 = 0u;
              v585 = 0u;
              v586 = 1065353216;
              if (v576 == v575)
              {
                v316 = 0;
                v327 = 0;
                v582 = 0;
                v581 = 0;
                v583 = 0;
                goto LABEL_147;
              }

              v291 = 0;
              v292 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v289, v289), v289, 0xCuLL), v288)), v289, v290);
              v293 = vextq_s8(vuzp1q_s32(v292, v292), v292, 0xCuLL);
              v294 = vmulq_f32(v292, v292);
              *&v295 = (v294.f32[2] + v294.f32[0]) + v294.f32[1];
              *v294.f32 = vrsqrte_f32(v295);
              *v294.f32 = vmul_f32(vrsqrts_f32(v295, vmul_f32(*v294.f32, *v294.f32)), *v294.f32);
              v540 = vmulq_n_f32(v293, vmul_f32(*v294.f32, vrsqrts_f32(v295, vmul_f32(*v294.f32, *v294.f32))).f32[0]);
              v296 = vmlaq_f32(vnegq_f32(vmulq_f32(v540, v290)), v288, vextq_s8(vuzp1q_s32(v540, v540), v540, 0xCuLL));
              v297 = vextq_s8(vuzp1q_s32(v296, v296), v296, 0xCuLL);
              v298 = vmulq_f32(v296, v296);
              *&v299 = (v298.f32[2] + v298.f32[0]) + v298.f32[1];
              *v298.f32 = vrsqrte_f32(v299);
              *v298.f32 = vmul_f32(vrsqrts_f32(v299, vmul_f32(*v298.f32, *v298.f32)), *v298.f32);
              v536 = vmulq_n_f32(v297, vmul_f32(*v298.f32, vrsqrts_f32(v299, vmul_f32(*v298.f32, *v298.f32))).f32[0]);
              while (1)
              {
                v300 = v266[v291];
                v301 = vmulq_f32(v300, v540);
                v302 = vmulq_f32(v300, v536);
                v303 = vadd_f32(vzip1_s32(*v301.i8, *v302.i8), vzip2_s32(*v301.i8, *v302.i8));
                v304 = vextq_s8(v302, v302, 8uLL);
                *v304.f32 = vadd_f32(v303, vzip1_s32(*&vextq_s8(v301, v301, 8uLL), *v304.f32));
                *&v592 = v304.i64[0];
                v305 = v588;
                if (v588 >= v589)
                {
                  v307 = (v588 - __src) >> 3;
                  if ((v307 + 1) >> 61)
                  {
                    sub_239E797B4();
                  }

                  v308 = (v589 - __src) >> 2;
                  if (v308 <= v307 + 1)
                  {
                    v308 = v307 + 1;
                  }

                  if (v589 - __src >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v309 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v309 = v308;
                  }

                  if (v309)
                  {
                    sub_239E95BB4(&__src, v309);
                  }

                  *(8 * v307) = v304.i64[0];
                  v306 = 8 * v307 + 8;
                  v310 = (8 * v307 - (v588 - __src));
                  memcpy(v310, __src, v588 - __src);
                  v311 = __src;
                  __src = v310;
                  v588 = v306;
                  v589 = 0;
                  if (v311)
                  {
                    operator delete(v311);
                  }
                }

                else
                {
                  *v588 = v304.i64[0];
                  v306 = (v305 + 8);
                }

                v588 = v306;
                if (sub_239E9627C(v584, &v592, v304))
                {
                  v594 = &v592;
                  v313 = sub_239E96378(v584, &v592, v312);
                  ++v313[3].i32[0];
                }

                else
                {
                  v594 = &v592;
                  sub_239E96378(v584, &v592, v312)[3].i32[0] = 0;
                }

                v594 = &v592;
                if (sub_239E96378(v584, &v592, v314)[3].i32[0] >= 3)
                {
                  break;
                }

                ++v291;
                v266 = v575;
                if (v291 >= (v576 - v575) >> 4)
                {
                  v315 = __src;
                  v582 = 0;
                  v581 = 0;
                  v583 = 0;
                  v316 = 0;
                  if (v588 == __src)
                  {
                    v327 = 0;
                  }

                  else
                  {
                    v317 = 0;
                    v318 = (v588 - __src) >> 3;
                    do
                    {
                      v319 = v315[v317++];
                      v320 = v315[v317 % v318];
                      if (v316 >= v583)
                      {
                        v321 = (v316 - v581) >> 4;
                        if ((v321 + 1) >> 60)
                        {
                          sub_239E797B4();
                        }

                        v322 = (v583 - v581) >> 3;
                        if (v322 <= v321 + 1)
                        {
                          v322 = v321 + 1;
                        }

                        if (v583 - v581 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v323 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v323 = v322;
                        }

                        if (v323)
                        {
                          sub_239E91AC8(&v581, v323);
                        }

                        v324 = (16 * v321);
                        *v324 = v319;
                        v324[1] = v320;
                        v316 = (16 * v321 + 16);
                        v325 = v324 - (v582 - v581);
                        memcpy(v325, v581, v582 - v581);
                        v326 = v581;
                        v581 = v325;
                        v582 = v316;
                        v583 = 0;
                        if (v326)
                        {
                          operator delete(v326);
                        }
                      }

                      else
                      {
                        *v316 = v319;
                        *(v316 + 1) = v320;
                        v316 += 16;
                      }

                      v582 = v316;
                      v315 = __src;
                      v318 = (v588 - __src) >> 3;
                    }

                    while (v318 > v317);
                    v327 = v581;
                  }

LABEL_147:
                  v579 = 0;
                  v578 = 0;
                  v580 = 0;
                  sub_239E98290(&v578, v327, v316, (v316 - v327) >> 4);
                  v595 = 0;
                  v594 = 0;
                  v596 = 0;
                  v333 = v578;
                  if (v579 == v578)
                  {
                    v341 = 0;
                    v340 = 0;
                  }

                  else
                  {
                    v334 = 0;
                    v335 = 0;
                    do
                    {
                      v336 = *&v333[v334];
                      v337 = *&v333[v334 + 8];
                      v338 = vcgt_f32(v336, v337);
                      if (v338.i8[0] & 1) != 0 || (vceq_f32(v336, v337).u8[0] & 1) != 0 && (v338.i8[4])
                      {
                        *&v333[v334] = v337;
                        *(v578 + v334 + 8) = v336;
                        v333 = v578;
                      }

                      v592 = 0uLL;
                      v593 = 0;
                      v339 = &v333[v334];
                      *&v592 = *v339;
                      *(&v592 + 1) = v339;
                      LOBYTE(v593) = 1;
                      v590 = 0uLL;
                      v591 = 0;
                      *&v590 = *(v339 + 1);
                      *(&v590 + 1) = v339;
                      sub_239E965D0(&v594, &v592);
                      sub_239E965D0(&v594, &v590);
                      ++v335;
                      v333 = v578;
                      v334 += 16;
                    }

                    while (v335 < (v579 - v578) >> 4);
                    v340 = v594;
                    v341 = v595;
                  }

                  v342 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v341 - v340) >> 3));
                  *&v592 = sub_239E96704;
                  if (v341 == v340)
                  {
                    v343 = 0;
                  }

                  else
                  {
                    v343 = v342;
                  }

                  sub_239E96984(v340, v341, &v592, v343, 1, v332);
                  operator new();
                }
              }

              sub_239E7B644(v584);
              if (__src)
              {
                v588 = __src;
                operator delete(__src);
              }

              v555 = v554;
              if ((((v576 - v575) >> 4) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v344 = 0;
                do
                {
                  LODWORD(v345) = 0;
                  DWORD1(v345) = v344 + 1;
                  *(&v345 + 1) = (v344 + 2);
                  *v584 = v345;
                  sub_239E8E4FC(&v554, v584);
                  v346 = v344 + 2;
                  ++v344;
                }

                while (((v576 - v575) >> 4) - 1 > v346);
              }
            }

            sub_239E9876C(v574);
            if (v575)
            {
              v576 = v575;
              operator delete(v575);
            }

            v239 = v525;
          }

          v558 = v557;
          v347 = v554;
          if (v555 != v554)
          {
            v348 = 0;
            v349 = 0;
            do
            {
              v584[0] = &(*v240)[*&v347[v348]];
              LODWORD(v594) = sub_239E95ED0(&v571, v584[0])[2].i32[0];
              sub_239E73254(&v565, &v594);
              v584[0] = &(*v240)[*&v554[v348 + 4]];
              LODWORD(v594) = sub_239E95ED0(&v571, v584[0])[2].i32[0];
              sub_239E73254(&v565, &v594);
              v584[0] = &(*v240)[*&v554[v348 + 8]];
              LODWORD(v594) = sub_239E95ED0(&v571, v584[0])[2].i32[0];
              sub_239E73254(&v565, &v594);
              ++v349;
              v347 = v554;
              v348 += 16;
            }

            while (v349 < (v555 - v554) >> 4);
          }

          if (v347)
          {
            v555 = v347;
            operator delete(v347);
          }

          if (v557)
          {
            v558 = v557;
            operator delete(v557);
          }

          goto LABEL_80;
        }

        v584[0] = v241;
        HIDWORD(v561) = sub_239E95ED0(&v571, v241)[2].i32[0];
        sub_239E73254(&v565, &v561 + 1);
        v244 = &v561 + 1;
        sub_239E73254(&v565, &v561 + 1);
      }

      sub_239E73254(&v565, v244);
LABEL_80:
      v240 += 3;
      if (v240 == v239)
      {
        goto LABEL_175;
      }
    }
  }

LABEL_210:
  v425 = objc_msgSend_vertexDescriptor(v535, v222, v223);
  v426 = v425 == 0;

  if (v426)
  {
    v429 = objc_msgSend_bufferAllocator(v535, v427, v428);
    v431 = objc_msgSend_newBufferFromZone_length_type_(v429, v432, 0, v520, 1);
  }

  else
  {
    v429 = objc_alloc_init(MDLMeshBufferDataAllocator);
    v431 = objc_msgSend_newBuffer_type_(v429, v430, v520, 1);
  }

  v385 = v431;

  if (!v385)
  {
    sub_239E552A0(a6, "Could not allocate vertex buffer");
    goto LABEL_286;
  }

  if (objc_msgSend_conformsToProtocol_(v385, v433, &unk_284D24D98))
  {
    v436 = v385;
    v438 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v437, @"%@-%@", @"MDL_OBJ", @"position");
    objc_msgSend_setName_(v436, v439, v438);
  }

  v440 = objc_msgSend_map(v385, v434, v435);
  v443 = objc_msgSend_bytes(v440, v441, v442);

  v444 = 0;
  v445 = 6;
  if (v532 == v531)
  {
    v445 = 3;
  }

  v446 = 4;
  if (!v523)
  {
    v446 = 0;
  }

  v447 = 2;
  if (v530 == v529)
  {
    v448 = 0;
  }

  else
  {
    v448 = 2;
  }

  if (v528 == v527)
  {
    v447 = 0;
  }

  v449 = v448 + v445 + v447 + v446;
  v450 = *v543;
  v451 = 0xAAAAAAAAAAAAAAABLL * ((v543[1] - *v543) >> 2);
  v452 = __p;
  v453 = v543[9];
  v454 = 0xAAAAAAAAAAAAAAABLL * ((v543[10] - v453) >> 2);
  v455 = v543[12];
  v456 = (v543[13] - v455) >> 4;
  v457 = v543[3];
  v458 = (v543[4] - v457) >> 3;
  v459 = v543[6];
  v460 = (v543[7] - v459) >> 3;
  v461 = (v443 + 20);
  __asm { FMOV            V0.2S, #1.0 }

  do
  {
    v467 = v452[v444];
    if ((v467 & 0x80000000) != 0 || v451 <= v467)
    {
      *(v461 - 5) = 0;
      v469 = 0;
    }

    else
    {
      v468 = (v450 + 12 * v467);
      *(v461 - 5) = *v468;
      *(v461 - 4) = v468[1];
      v469 = v468[2];
    }

    *(v461 - 3) = v469;
    if (v532 == v531)
    {
      v472 = 3;
      if (!v523)
      {
        goto LABEL_247;
      }

LABEL_238:
      if ((HIDWORD(v467) & 0x80000000) != 0 || v456 <= HIDWORD(v467))
      {
        v475 = (v443 + 4 * v444 * v449 + 4 * v472);
        v476 = &v461[v472];
        if ((v467 & 0x80000000) != 0 || v456 <= v467)
        {
          *(v476 - 5) = 1065353216;
          *(v476 - 2) = _D0;
          v477 = 1.0;
          goto LABEL_246;
        }

        v473 = (v455 + 16 * v467);
        *(v476 - 5) = *v473;
        *(v476 - 4) = v473[1];
        *(v476 - 3) = v473[2];
      }

      else
      {
        v473 = (v455 + 16 * HIDWORD(v467));
        v474 = &v461[v472];
        *(v474 - 5) = *v473;
        v475 = (v474 - 5);
        v475[1] = v473[1];
        v475[2] = v473[2];
      }

      v477 = v473[3];
LABEL_246:
      v472 += 4;
      v475[3] = v477;
      goto LABEL_247;
    }

    if ((DWORD2(v467) & 0x80000000) != 0 || v454 <= DWORD2(v467))
    {
      *(v461 - 1) = 0x3F80000000000000;
      v471 = 0;
    }

    else
    {
      v470 = (v453 + 12 * DWORD2(v467));
      *(v461 - 2) = *v470;
      *(v461 - 1) = v470[1];
      v471 = v470[2];
    }

    *v461 = v471;
    v472 = 6;
    if (v523)
    {
      goto LABEL_238;
    }

LABEL_247:
    if (v530 != v529)
    {
      v478 = &v461[v472];
      if ((DWORD1(v467) & 0x80000000) != 0 || v458 <= DWORD1(v467))
      {
        *(v478 - 5) = 0;
        v480 = 0;
      }

      else
      {
        v479 = (v457 + 8 * DWORD1(v467));
        *(v478 - 5) = *v479;
        v480 = v479[1];
      }

      v472 += 2;
      *(v478 - 4) = v480;
    }

    if (v528 != v527)
    {
      v481 = &v461[v472];
      if ((DWORD1(v467) & 0x80000000) != 0 || v460 <= DWORD1(v467))
      {
        *(v481 - 5) = 0;
        v483 = 0;
      }

      else
      {
        v482 = &v459[8 * DWORD1(v467)];
        *(v481 - 5) = *v482;
        v483 = *(v482 + 1);
      }

      *(v481 - 4) = v483;
    }

    ++v444;
    v461 += v449;
  }

  while (v533 != v444);
  v598 = v385;
  v542 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v459, &v598, 1, _D0, 0.0078125);
  v486 = objc_msgSend_vertexDescriptor(v535, v484, v485);
  v487 = v486 == 0;

  if (v487)
  {
    v510 = v537;
    v511 = v542;
  }

  else
  {
    v548 = 0u;
    v549 = 0u;
    v546 = 0u;
    v547 = 0u;
    v490 = objc_msgSend_vertexDescriptor(v535, v488, v489);
    v493 = objc_msgSend_layouts(v490, v491, v492);

    v497 = objc_msgSend_countByEnumeratingWithState_objects_count_(v493, v494, &v546, v597, 16);
    if (!v497)
    {

      v511 = v542;
      goto LABEL_282;
    }

    v498 = 0;
    v499 = *v547;
    do
    {
      for (j = 0; j != v497; ++j)
      {
        if (*v547 != v499)
        {
          objc_enumerationMutation(v493);
        }

        if (objc_msgSend_stride(*(*(&v546 + 1) + 8 * j), v495, v496))
        {
          ++v498;
        }
      }

      v497 = objc_msgSend_countByEnumeratingWithState_objects_count_(v493, v495, &v546, v597, 16);
    }

    while (v497);

    if (v498 >= 1)
    {
      v503 = objc_msgSend_vertexDescriptor(v535, v501, v502);
      v506 = objc_msgSend_bufferAllocator(v535, v504, v505);
      v507 = sub_239F52A80(v542, v533, v537, v503, 0, v506, 1);

      v510 = objc_msgSend_vertexDescriptor(v535, v508, v509);

      v511 = v507;
      goto LABEL_275;
    }

    v510 = v537;
    v511 = v542;
    if (!v498)
    {
LABEL_282:
      sub_239E552A0(a6, "No valid vertex descriptor layouts found");
      goto LABEL_285;
    }
  }

LABEL_275:
  v537 = v510;
  v541 = v511;
  v512 = [MDLMesh alloc];
  v514 = objc_msgSend_initWithVertexBuffers_vertexCount_descriptor_submeshes_(v512, v513, v511, v533, v510, v521);
  v357 = v514;
  v516 = v543[18];
  if (v543[19] == v516)
  {
    objc_msgSend_setName_(v514, v515, @"OBJ model");
  }

  else
  {
    if (*(v516 + 23) < 0)
    {
      v516 = *v516;
    }

    v517 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v515, v516, 4);
    objc_msgSend_setName_(v357, v518, v517);
  }

  objc_msgSend_addObject_(v535, v519, v357);
  sub_239E552A0(a6, "");
LABEL_284:

  v511 = v541;
LABEL_285:

LABEL_286:
  if (v562)
  {
    v563 = v562;
    operator delete(v562);
  }

  v159 = v537;
  if (v565)
  {
    v566 = v565;
    operator delete(v565);
  }

LABEL_38:

  if (__p)
  {
    v569 = __p;
    operator delete(__p);
  }

  sub_239E7B644(&v571);

  v162 = *MEMORY[0x277D85DE8];
}

void sub_239E94BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47)
{
  v52 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v52;
    operator delete(v52);
  }

  v53 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v53;
    operator delete(v53);
  }

  v54 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v54;
    operator delete(v54);
  }

  sub_239E7B644(&STACK[0x270]);

  _Unwind_Resume(a1);
}

uint64_t sub_239E95344(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_239E5B718(a1, &v3, a2);
  if (!result)
  {
    sub_239E953D0();
  }

  return result;
}

void sub_239E95464(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E95480(v3, v2);
  _Unwind_Resume(a1);
}

void sub_239E95480(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
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

uint64_t sub_239E954E4(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_239E797B4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_239E9565C(a1, v6);
  }

  v7 = 80 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(v7 + 72) = *(a2 + 18);
  *&v18 = 80 * v2 + 80;
  v10 = a1[1];
  v11 = 80 * v2 + *a1 - v10;
  sub_239E956B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239E958A4(&v16);
  return v15;
}

void sub_239E95648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E958A4(va);
  _Unwind_Resume(a1);
}

void sub_239E9565C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E956B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(a4 + 72) = *(v7 + 72);
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v14 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      sub_239E957C0(a1, v5);
      v5 += 80;
    }
  }

  return sub_239E95818(v11);
}

void sub_239E957C0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  sub_239E95924(&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_239E95818(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239E95850(a1);
  }

  return a1;
}

void sub_239E95850(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      sub_239E957C0(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_239E958A4(uint64_t a1)
{
  sub_239E958DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239E958DC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_239E957C0(v5, v4 - 80);
  }
}

void sub_239E95924(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E95978(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E95978(uint64_t *a1)
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

uint64_t sub_239E959D0(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_239E95A5C();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_239E95A74(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    sub_239E95B5C(a1, v6);
  }

  v7 = 4 * ((*(a1 + 8) - *a1) >> 2);
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  v9 = 12 * v2 + 12;
  v10 = *(a1 + 8) - *a1;
  v11 = 12 * v2 - v10;
  memcpy((v7 - v10), *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_239E95B5C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_239E79870();
}

void sub_239E95BB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

void sub_239E95BFC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E95C54(uint64_t a1)
{
  sub_239E95C8C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239E95C8C(uint64_t a1, uint64_t a2)
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

void sub_239E95CEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = *(a1 + 8);
    do
    {
      v7 = *(v5 - 24);
      v5 -= 24;
      v6 = v7;
      if (v7)
      {
        *(v4 - 16) = v6;
        operator delete(v6);
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void *sub_239E95D48(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_239E79984(result, a2);
    }

    sub_239E797B4();
  }

  return result;
}

int32x4_t *sub_239E95DE8(void *a1, int32x4_t *a2)
{
  v4 = sub_239EC3228(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = i->i64[0]; i; i = i->i64[0])
    {
      v9 = i->u64[1];
      if (v9 == v4)
      {
        if (vminv_u16(vmovn_s32(vceqq_s32(i[1], *a2))))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

int32x4_t *sub_239E95ED0(void *a1, int32x4_t *a2)
{
  v4 = sub_239EC3228(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9->u64[1];
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
    v9 = v9->i64[0];
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if ((vminv_u16(vmovn_s32(vceqq_s32(v9[1], *a2))) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_239E96128(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_239E91AC8(result, a2);
    }

    sub_239E797B4();
  }

  return result;
}

BOOL sub_239E961C8(uint64_t a1, uint64_t *a2, void *a3, float32x4_t a4)
{
  v4 = a2[1];
  if (v4 == a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = *v5;
  if (*(a1 + 8) != a2)
  {
    v4 = *(a1 + 8);
  }

  v7 = *(*a3 + 16 * *(a1 + 16));
  v8 = vsubq_f32(v7, *(*a3 + 16 * *(v6 + 16)));
  v9 = vsubq_f32(*(*a3 + 16 * *(v4 + 16)), v7);
  v10 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v8)), vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v9);
  v11 = vmulq_f32(v10, v10);
  if (((v11.f32[2] + v11.f32[0]) + v11.f32[1]) < 1.0e-12)
  {
    return 1;
  }

  v13 = vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), a4);
  return (vaddv_f32(*v13.f32) + v13.f32[2]) < 1.0e-12;
}

float32x2_t *sub_239E9627C(void *a1, unint64_t *a2, float32x4_t a3)
{
  v5 = sub_239EC2F68(a3, a1, a2);
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

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (*&v13 == v7)
    {
      if (sub_239EC2F7C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (*&v13 >= *&v6)
        {
          *&v13 %= *&v6;
        }
      }

      else
      {
        *&v13 &= *&v6 - 1;
      }

      if (*&v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x2_t *sub_239E96378(void *a1, unint64_t *a2, float32x4_t a3)
{
  v5 = sub_239EC2F68(a3, a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (*&v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (*&v13 >= *&v7)
      {
        *&v13 %= *&v7;
      }
    }

    else
    {
      *&v13 &= *&v7 - 1;
    }

    if (*&v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2F7C(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_239E965D0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_239E797B4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_239E79870();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
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
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_239E96704(float32x2_t *a1, float32x2_t *a2)
{
  v2 = vcgt_f32(*a2, *a1);
  if (v2.i8[0])
  {
    v3 = 1;
  }

  else
  {
    if ((vcgt_f32(*a1, *a2).u8[0] & 1) == 0)
    {
      v4 = a1[1];
      v5 = a2[1];
      if (v4 != v5)
      {
        v6 = v4[1];
        v7 = *v5;
        v8 = v5[1];
        if (COERCE_FLOAT(*v4) == *&v6 && *&v7 != *&v8)
        {
          v3 = a1[2].i8[0];
          return v3 & 1;
        }

        if (COERCE_FLOAT(*v4) != *&v6 && *&v7 == *&v8)
        {
          v3 = a2[2].i8[0] ^ 1;
          return v3 & 1;
        }
      }

      v3 = v2.i8[4];
      return v3 & 1;
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_239E96784(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a1;
    v4 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v7 = vsub_f32(*a1, v4);
    v8 = vsub_f32(*a2, v5);
    v9 = vmul_f32(vrev64_s32(v8), v7);
    v10 = vsub_f32(v9, vdup_lane_s32(v9, 1));
    if (v10.f32[0] == 0.0 || vmul_f32(v10, v10).f32[0] < 0.000001)
    {
      v24 = vmul_f32(vsub_f32(v6, v4), vsub_f32(v6, v3));
      v25 = vmul_f32(vsub_f32(v5, v4), vsub_f32(v5, v3));
      v26 = vcltz_f32(vadd_f32(vzip1_s32(v25, v24), vzip2_s32(v25, v24)));
      v27 = v26.i8[4];
    }

    else
    {
      v11 = vsub_f32(v6, v3);
      v12 = vsub_f32(v4, v3);
      v13 = vsub_f32(v5, v3);
      v14 = vsub_f32(v3, v6);
      v15 = vsub_f32(v5, v6);
      v16 = vsub_f32(v4, v6);
      v17 = vext_s8(v13, v15, 4uLL);
      v13.i32[1] = v15.i32[1];
      v18 = vmla_f32(vneg_f32(vmul_f32(v17, __PAIR64__(v14.u32[1], v12.u32[0]))), vext_s8(v12, v14, 4uLL), v13);
      v19 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
      v20 = vext_s8(v11, v15, 4uLL);
      v11.i32[1] = v15.i32[1];
      v21 = vext_s8(v12, v16, 4uLL);
      v12.i32[1] = v16.i32[1];
      v22 = vmla_f32(vneg_f32(vmul_f32(v20, v12)), v21, v11);
      v23 = vmul_f32(vbic_s8(v18, vmovn_s64(vcgtq_f64(v19, vcvtq_f64_f32(vmul_f32(v18, v18))))), vbic_s8(v22, vmovn_s64(vcgtq_f64(v19, vcvtq_f64_f32(vmul_f32(v22, v22))))));
      if (*v23.i32 < 0.0 && *&v23.i32[1] < 0.0)
      {
        v2 = 1;
        return v2 & 1;
      }

      v28 = vsub_f32(v6, v4);
      v29 = vsub_f32(v5, v4);
      v30 = vsub_f32(v3, v5);
      v31 = vsub_f32(v4, v5);
      v32 = vext_s8(v30, v7, 4uLL);
      v30.i32[1] = v7.i32[1];
      v33 = vmla_f32(vneg_f32(vmul_f32(__PAIR64__(v29.u32[1], v8.u32[0]), v32)), v30, vext_s8(v8, v29, 4uLL));
      v34 = vbic_s8(v33, vmovn_s64(vcgtq_f64(v19, vcvtq_f64_f32(vmul_f32(v33, v33)))));
      v35 = vext_s8(v8, v28, 4uLL);
      v36 = vext_s8(v31, v7, 4uLL);
      v31.i32[1] = v7.i32[1];
      v8.i32[1] = v28.i32[1];
      v37 = vmla_f32(vneg_f32(vmul_f32(v8, v36)), v31, v35);
      v38 = vmul_f32(v34, vbic_s8(v37, vmovn_s64(vcgtq_f64(v19, vcvtq_f64_f32(vmul_f32(v37, v37))))));
      v39.i64[0] = __PAIR64__(v38.u32[1], v23.u32[0]);
      *&v39.u32[2] = vext_s8(v23, v38, 4uLL);
      if ((vmaxv_u16(vmovn_s32(vceqzq_f32(v39))) & 1) == 0)
      {
        v2 = 0;
        return v2 & 1;
      }

      v26 = vcltz_f32(v38);
      v27 = (*v23.i32 < 0.0 || *&v23.i32[1] < 0.0) | v26.i8[4];
    }

    v2 = v27 | v26.i8[0];
  }

  return v2 & 1;
}

double sub_239E96984(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = (a2 - 24);
    v193 = a2 - 3;
    v194 = a2;
    v11 = (a2 - 72);
    v12 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v12;
          v13 = a2 - v12;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
          if (v14 > 2)
          {
            if (v14 == 3)
            {
              v122 = (*a3)((v12 + 24), v12);
              v123 = (*a3)(v10, (v12 + 24));
              if (v122)
              {
                if (v123)
                {
                  goto LABEL_106;
                }

                v183 = *v12;
                v200 = v12[1].n128_u64[0];
                v199 = v183;
                *v12 = *(v12 + 24);
                v12[1].n128_u64[0] = v12[2].n128_u64[1];
                *(v12 + 24) = v199;
                v12[2].n128_u64[1] = v200;
                if (!(*a3)(v10, (v12 + 24)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(v12 + 24);
                v199 = a6;
                v126 = v12[2].n128_u64[1];
                v200 = v126;
                v184 = v10[1].n128_u64[0];
                *(v12 + 24) = *v10;
                v12[2].n128_u64[1] = v184;
LABEL_107:
                v10[1].n128_u64[0] = v126;
                *v10 = a6;
                return a6.n128_f64[0];
              }

              if (!v123)
              {
                return a6.n128_f64[0];
              }

              v199 = *(v12 + 24);
              v172 = v199;
              v200 = v12[2].n128_u64[1];
              v173 = v200;
              v174 = v10[1].n128_u64[0];
              *(v12 + 24) = *v10;
              v12[2].n128_u64[1] = v174;
              v10[1].n128_u64[0] = v173;
              *v10 = v172;
LABEL_182:
              if ((*a3)((v12 + 24), v12))
              {
                a6 = *v12;
                v200 = v12[1].n128_u64[0];
                v199 = a6;
                *v12 = *(v12 + 24);
                v12[1].n128_u64[0] = v12[2].n128_u64[1];
                a6.n128_u64[0] = v199.n128_u64[0];
                *(v12 + 24) = v199;
                v12[2].n128_u64[1] = v200;
              }

              return a6.n128_f64[0];
            }

            if (v14 != 4)
            {
              if (v14 == 5)
              {
                a6.n128_u64[0] = sub_239E97AC8(v12, (v12 + 24), v12 + 3, (v12 + 72), v10, a3).n128_u64[0];
                return a6.n128_f64[0];
              }

              goto LABEL_9;
            }

            v127 = (*a3)((v12 + 24), v12);
            v128 = (*a3)(v12 + 3, (v12 + 24));
            if ((v127 & 1) == 0)
            {
              if (v128)
              {
                v175 = v12[2].n128_i64[1];
                v176 = *(v12 + 24);
                *(v12 + 24) = v12[3];
                v12[2].n128_u64[1] = v12[4].n128_u64[0];
                v12[3] = v176;
                v12[4].n128_u64[0] = v175;
                if ((*a3)((v12 + 24), v12))
                {
                  v177 = *v12;
                  v200 = v12[1].n128_u64[0];
                  v199 = v177;
                  *v12 = *(v12 + 24);
                  v12[1].n128_u64[0] = v12[2].n128_u64[1];
                  *(v12 + 24) = v199;
                  v12[2].n128_u64[1] = v200;
                }
              }

              goto LABEL_179;
            }

            if (v128)
            {
              v129 = *v12;
              v200 = v12[1].n128_u64[0];
              v199 = v129;
              *v12 = v12[3];
              v12[1].n128_u64[0] = v12[4].n128_u64[0];
              v12[3] = v199;
              v130 = v200;
            }

            else
            {
              v185 = *v12;
              v200 = v12[1].n128_u64[0];
              v199 = v185;
              *v12 = *(v12 + 24);
              v12[1].n128_u64[0] = v12[2].n128_u64[1];
              *(v12 + 24) = v199;
              v12[2].n128_u64[1] = v200;
              if (!(*a3)(v12 + 3, (v12 + 24)))
              {
                goto LABEL_179;
              }

              v130 = v12[2].n128_u64[1];
              v186 = *(v12 + 24);
              *(v12 + 24) = v12[3];
              v12[2].n128_u64[1] = v12[4].n128_u64[0];
              v12[3] = v186;
            }

            v12[4].n128_u64[0] = v130;
LABEL_179:
            if (!(*a3)(v10, v12 + 3))
            {
              return a6.n128_f64[0];
            }

            v199 = v12[3];
            v187 = v199;
            v200 = v12[4].n128_u64[0];
            v188 = v200;
            v189 = v10[1].n128_u64[0];
            v12[3] = *v10;
            v12[4].n128_u64[0] = v189;
            v10[1].n128_u64[0] = v188;
            *v10 = v187;
            if (!(*a3)(v12 + 3, (v12 + 24)))
            {
              return a6.n128_f64[0];
            }

            v190 = v12[2].n128_i64[1];
            v191 = *(v12 + 24);
            *(v12 + 24) = v12[3];
            v12[2].n128_u64[1] = v12[4].n128_u64[0];
            v12[3] = v191;
            v12[4].n128_u64[0] = v190;
            goto LABEL_182;
          }

          if (v14 < 2)
          {
            return a6.n128_f64[0];
          }

          if (v14 == 2)
          {
            if (!(*a3)(v10, v12))
            {
              return a6.n128_f64[0];
            }

LABEL_106:
            v124 = *v12;
            v200 = v12[1].n128_u64[0];
            v199 = v124;
            v125 = *v10;
            v12[1].n128_u64[0] = v10[1].n128_u64[0];
            *v12 = v125;
            a6 = v199;
            v126 = v200;
            goto LABEL_107;
          }

LABEL_9:
          if (v13 <= 575)
          {
            v131 = (v12 + 24);
            v132 = v12 == a2 || v131 == a2;
            v133 = v132;
            if (a5)
            {
              if ((v133 & 1) == 0)
              {
                v134 = 0;
                v135 = v12;
                do
                {
                  v136 = v135;
                  v135 = v131;
                  if ((*a3)(v131, v136))
                  {
                    v137 = *v135;
                    v200 = v135[1].n128_u64[0];
                    v199 = v137;
                    v138 = v134;
                    while (1)
                    {
                      v139 = v12 + v138;
                      *(v139 + 24) = *(v12 + v138);
                      *(v139 + 5) = *(v12[1].n128_u64 + v138);
                      if (!v138)
                      {
                        break;
                      }

                      v138 -= 24;
                      if (((*a3)(&v199, (v12 + v138)) & 1) == 0)
                      {
                        v140 = (v12 + v138 + 24);
                        goto LABEL_126;
                      }
                    }

                    v140 = v12;
LABEL_126:
                    a6 = v199;
                    v140[1].n128_u64[0] = v200;
                    *v140 = a6;
                  }

                  v131 = (v135 + 24);
                  v134 += 24;
                }

                while (&v135[1].n128_i8[8] != a2);
              }
            }

            else if ((v133 & 1) == 0)
            {
              v178 = &v12[-2].n128_i8[8];
              do
              {
                v179 = a1;
                a1 = v131;
                if ((*a3)(v131, v179))
                {
                  v180 = *a1;
                  v200 = *(a1 + 16);
                  v199 = v180;
                  v181 = v178;
                  do
                  {
                    *(v181 + 3) = *(v181 + 24);
                    *(v181 + 8) = *(v181 + 5);
                    v182 = (*a3)(&v199, v181);
                    v181 -= 24;
                  }

                  while ((v182 & 1) != 0);
                  a6 = v199;
                  *(v181 + 8) = v200;
                  *(v181 + 3) = a6;
                }

                v131 = (a1 + 24);
                v178 += 24;
              }

              while ((a1 + 24) != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (v12 != a2)
            {
              v141 = (v14 - 2) >> 1;
              v196 = v141;
              do
              {
                v142 = v141;
                if (v196 >= v141)
                {
                  v143 = (2 * v141) | 1;
                  v144 = a1 + 24 * v143;
                  if (2 * v141 + 2 < v14 && (*a3)((a1 + 24 * v143), (v144 + 24)))
                  {
                    v144 += 24;
                    v143 = 2 * v142 + 2;
                  }

                  v145 = (a1 + 24 * v142);
                  if (((*a3)(v144, v145) & 1) == 0)
                  {
                    v146 = *v145;
                    v200 = v145[1].n128_u64[0];
                    v199 = v146;
                    do
                    {
                      v147 = v144;
                      v148 = *v144;
                      v145[1].n128_u64[0] = *(v144 + 16);
                      *v145 = v148;
                      if (v196 < v143)
                      {
                        break;
                      }

                      v149 = (2 * v143) | 1;
                      v144 = a1 + 24 * v149;
                      v150 = 2 * v143 + 2;
                      if (v150 < v14 && (*a3)((a1 + 24 * v149), (v144 + 24)))
                      {
                        v144 += 24;
                        v149 = v150;
                      }

                      v145 = v147;
                      v143 = v149;
                    }

                    while (!(*a3)(v144, &v199));
                    v151 = v199;
                    v147[1].n128_u64[0] = v200;
                    *v147 = v151;
                    a2 = v194;
                  }
                }

                v141 = v142 - 1;
              }

              while (v142);
              v152 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
              do
              {
                v153 = 0;
                v154 = *a1;
                v198 = *(a1 + 16);
                v197 = v154;
                v155 = a1;
                do
                {
                  v156 = v155 + 24 * v153;
                  v157 = (v156 + 24);
                  v158 = (2 * v153) | 1;
                  v159 = 2 * v153 + 2;
                  if (v159 < v152)
                  {
                    v160 = (v156 + 48);
                    if ((*a3)((v156 + 24), v156 + 3))
                    {
                      v157 = v160;
                      v158 = v159;
                    }
                  }

                  v161 = *v157;
                  v155[1].n128_u64[0] = v157[1].n128_u64[0];
                  *v155 = v161;
                  v155 = v157;
                  v153 = v158;
                }

                while (v158 <= ((v152 - 2) >> 1));
                v162 = (a2 - 24);
                if (v157 == &a2[-2].n128_i8[8])
                {
                  v164 = (a2 - 24);
                  a6 = v197;
                  v157[1].n128_u64[0] = v198;
                  *v157 = a6;
                }

                else
                {
                  v163 = *v162;
                  v157[1].n128_u64[0] = a2[-1].n128_u64[1];
                  *v157 = v163;
                  a6 = v197;
                  a2[-1].n128_u64[1] = v198;
                  v164 = (a2 - 24);
                  *v162 = a6;
                  v165 = &v157[1].n128_i64[1] - a1;
                  if (v165 >= 25)
                  {
                    v166 = (-2 - 0x5555555555555555 * (v165 >> 3)) >> 1;
                    v167 = (a1 + 24 * v166);
                    if ((*a3)(v167, v157))
                    {
                      v168 = *v157;
                      v200 = v157[1].n128_u64[0];
                      v199 = v168;
                      do
                      {
                        v169 = v167;
                        v170 = *v167;
                        v157[1].n128_u64[0] = v167[1].n128_u64[0];
                        *v157 = v170;
                        if (!v166)
                        {
                          break;
                        }

                        v166 = (v166 - 1) >> 1;
                        v167 = (a1 + 24 * v166);
                        v157 = v169;
                      }

                      while (((*a3)(v167, &v199) & 1) != 0);
                      a6 = v199;
                      v169[1].n128_u64[0] = v200;
                      *v169 = a6;
                    }
                  }
                }

                v171 = v152-- <= 2;
                a2 = v164;
              }

              while (!v171);
            }

            return a6.n128_f64[0];
          }

          v15 = v14 >> 1;
          v16 = (v12 + 24 * v15);
          v17 = *a3;
          if (v13 >= 0xC01)
          {
            v18 = v17((a1 + 24 * v15), a1);
            v19 = (*a3)(v10, (a1 + 24 * v15));
            if (v18)
            {
              if (v19)
              {
                v20 = *a1;
                v200 = *(a1 + 16);
                v199 = v20;
                v21 = *v10;
                *(a1 + 16) = v10[1].n128_u64[0];
                *a1 = v21;
                goto LABEL_26;
              }

              v38 = *a1;
              v200 = *(a1 + 16);
              v199 = v38;
              v39 = *v16;
              *(a1 + 16) = v16[1].n128_u64[0];
              *a1 = v39;
              v40 = v199;
              v16[1].n128_u64[0] = v200;
              *v16 = v40;
              if ((*a3)(v10, (a1 + 24 * v15)))
              {
                v41 = *v16;
                v200 = v16[1].n128_u64[0];
                v199 = v41;
                v42 = *v10;
                v16[1].n128_u64[0] = v10[1].n128_u64[0];
                *v16 = v42;
LABEL_26:
                v43 = v199;
                v10[1].n128_u64[0] = v200;
                *v10 = v43;
              }
            }

            else if (v19)
            {
              v26 = *v16;
              v200 = v16[1].n128_u64[0];
              v199 = v26;
              v27 = *v10;
              v16[1].n128_u64[0] = v10[1].n128_u64[0];
              *v16 = v27;
              v28 = v199;
              v10[1].n128_u64[0] = v200;
              *v10 = v28;
              if ((*a3)((a1 + 24 * v15), a1))
              {
                v29 = *a1;
                v200 = *(a1 + 16);
                v199 = v29;
                v30 = *v16;
                *(a1 + 16) = v16[1].n128_u64[0];
                *a1 = v30;
                v31 = v199;
                v16[1].n128_u64[0] = v200;
                *v16 = v31;
              }
            }

            v44 = a1 + 24 * v15 - 24;
            v45 = (*a3)(v44, (a1 + 24));
            v46 = (*a3)(v193, v44);
            if (v45)
            {
              if (v46)
              {
                v199 = *(a1 + 24);
                v47 = v199;
                v200 = *(a1 + 40);
                v48 = v200;
                v49 = v193[1].n128_u64[0];
                *(a1 + 24) = *v193;
                *(a1 + 40) = v49;
                v193[1].n128_u64[0] = v48;
                *v193 = v47;
              }

              else
              {
                v199 = *(a1 + 24);
                v62 = v199;
                v200 = *(a1 + 40);
                v63 = v200;
                v64 = *(a1 + 24 * v15 - 8);
                *(a1 + 24) = *v44;
                *(a1 + 40) = v64;
                *(a1 + 24 * v15 - 8) = v63;
                *v44 = v62;
                if ((*a3)(v193, (a1 + 24 * v15 - 24)))
                {
                  v65 = *v44;
                  v200 = *(a1 + 24 * v15 - 8);
                  v199 = v65;
                  v66 = *v193;
                  *(a1 + 24 * v15 - 8) = v193[1].n128_u64[0];
                  *v44 = v66;
                  v67 = v199;
                  v193[1].n128_u64[0] = v200;
                  *v193 = v67;
                }
              }
            }

            else if (v46)
            {
              v50 = *v44;
              v200 = *(a1 + 24 * v15 - 8);
              v199 = v50;
              v51 = *v193;
              *(a1 + 24 * v15 - 8) = v193[1].n128_u64[0];
              *v44 = v51;
              v52 = v199;
              v193[1].n128_u64[0] = v200;
              *v193 = v52;
              if ((*a3)((a1 + 24 * v15 - 24), (a1 + 24)))
              {
                v199 = *(a1 + 24);
                v53 = v199;
                v200 = *(a1 + 40);
                v54 = v200;
                v55 = *(a1 + 24 * v15 - 8);
                *(a1 + 24) = *v44;
                *(a1 + 40) = v55;
                *(a1 + 24 * v15 - 8) = v54;
                *v44 = v53;
              }
            }

            v68 = a1 + 24 * v15;
            v69 = (*a3)((v68 + 24), (a1 + 48));
            v70 = (*a3)(v11, (v68 + 24));
            if (v69)
            {
              if (v70)
              {
                v71 = *(a1 + 48);
                v199 = v71;
                v72 = *(a1 + 64);
                v200 = v72;
                v73 = v11[1].n128_u64[0];
                *(a1 + 48) = *v11;
                *(a1 + 64) = v73;
                goto LABEL_46;
              }

              v199 = *(a1 + 48);
              v80 = v199;
              v200 = *(a1 + 64);
              v81 = v200;
              v82 = *(v68 + 40);
              *(a1 + 48) = *(v68 + 24);
              *(a1 + 64) = v82;
              *(v68 + 40) = v81;
              *(v68 + 24) = v80;
              if ((*a3)(v11, (v68 + 24)))
              {
                v83 = *(v68 + 24);
                v200 = *(v68 + 40);
                v199 = v83;
                v84 = *v11;
                *(v68 + 40) = v11[1].n128_u64[0];
                *(v68 + 24) = v84;
                v71 = v199;
                v72 = v200;
LABEL_46:
                v11[1].n128_u64[0] = v72;
                *v11 = v71;
              }
            }

            else if (v70)
            {
              v74 = *(v68 + 24);
              v200 = *(v68 + 40);
              v199 = v74;
              v75 = *v11;
              *(v68 + 40) = v11[1].n128_u64[0];
              *(v68 + 24) = v75;
              v76 = v199;
              v11[1].n128_u64[0] = v200;
              *v11 = v76;
              if ((*a3)((v68 + 24), (a1 + 48)))
              {
                v199 = *(a1 + 48);
                v77 = v199;
                v200 = *(a1 + 64);
                v78 = v200;
                v79 = *(v68 + 40);
                *(a1 + 48) = *(v68 + 24);
                *(a1 + 64) = v79;
                *(v68 + 40) = v78;
                *(v68 + 24) = v77;
              }
            }

            v85 = (*a3)(v16, v44);
            v86 = (*a3)((v68 + 24), v16);
            if (v85)
            {
              if (v86)
              {
                v87 = *v44;
                v200 = *(v44 + 16);
                v199 = v87;
                *v44 = *(v68 + 24);
                *(v44 + 16) = *(v68 + 40);
                goto LABEL_55;
              }

              v92 = *v44;
              v200 = *(v44 + 16);
              v199 = v92;
              *v44 = *v16;
              *(v44 + 16) = v16[1].n128_u64[0];
              v93 = v199;
              v16[1].n128_u64[0] = v200;
              *v16 = v93;
              if ((*a3)((v68 + 24), v16))
              {
                v94 = *v16;
                v200 = v16[1].n128_u64[0];
                v199 = v94;
                *v16 = *(v68 + 24);
                v16[1].n128_u64[0] = *(v68 + 40);
LABEL_55:
                v95 = v199;
                *(v68 + 40) = v200;
                *(v68 + 24) = v95;
              }
            }

            else if (v86)
            {
              v88 = *v16;
              v200 = v16[1].n128_u64[0];
              v199 = v88;
              *v16 = *(v68 + 24);
              v16[1].n128_u64[0] = *(v68 + 40);
              v89 = v199;
              *(v68 + 40) = v200;
              *(v68 + 24) = v89;
              if ((*a3)(v16, v44))
              {
                v90 = *v44;
                v200 = *(v44 + 16);
                v199 = v90;
                *v44 = *v16;
                *(v44 + 16) = v16[1].n128_u64[0];
                v91 = v199;
                v16[1].n128_u64[0] = v200;
                *v16 = v91;
              }
            }

            v96 = *a1;
            v200 = *(a1 + 16);
            v199 = v96;
            v97 = *v16;
            *(a1 + 16) = v16[1].n128_u64[0];
            *a1 = v97;
            v98 = v199;
            v16[1].n128_u64[0] = v200;
            *v16 = v98;
            goto LABEL_57;
          }

          v22 = v17(a1, (a1 + 24 * v15));
          v23 = (*a3)(v10, a1);
          if (v22)
          {
            if (v23)
            {
              v24 = *v16;
              v200 = v16[1].n128_u64[0];
              v199 = v24;
              v25 = *v10;
              v16[1].n128_u64[0] = v10[1].n128_u64[0];
              *v16 = v25;
LABEL_35:
              v61 = v199;
              v10[1].n128_u64[0] = v200;
              *v10 = v61;
              goto LABEL_57;
            }

            v56 = *v16;
            v200 = v16[1].n128_u64[0];
            v199 = v56;
            v57 = *a1;
            v16[1].n128_u64[0] = *(a1 + 16);
            *v16 = v57;
            v58 = v199;
            *(a1 + 16) = v200;
            *a1 = v58;
            if ((*a3)(v10, a1))
            {
              v59 = *a1;
              v200 = *(a1 + 16);
              v199 = v59;
              v60 = *v10;
              *(a1 + 16) = v10[1].n128_u64[0];
              *a1 = v60;
              goto LABEL_35;
            }
          }

          else if (v23)
          {
            v32 = *a1;
            v200 = *(a1 + 16);
            v199 = v32;
            v33 = *v10;
            *(a1 + 16) = v10[1].n128_u64[0];
            *a1 = v33;
            v34 = v199;
            v10[1].n128_u64[0] = v200;
            *v10 = v34;
            if ((*a3)(a1, (a1 + 24 * v15)))
            {
              v35 = *v16;
              v200 = v16[1].n128_u64[0];
              v199 = v35;
              v36 = *a1;
              v16[1].n128_u64[0] = *(a1 + 16);
              *v16 = v36;
              v37 = v199;
              *(a1 + 16) = v200;
              *a1 = v37;
            }
          }

LABEL_57:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((a1 - 24), a1))
          {
            break;
          }

          v112 = *a1;
          v198 = *(a1 + 16);
          v197 = v112;
          if ((*a3)(&v197, v10))
          {
            v12 = a1;
            a2 = v194;
            do
            {
              v12 = (v12 + 24);
            }

            while (((*a3)(&v197, v12) & 1) == 0);
          }

          else
          {
            v113 = (a1 + 24);
            a2 = v194;
            do
            {
              v12 = v113;
              if (v113 >= v194)
              {
                break;
              }

              v114 = (*a3)(&v197, v113);
              v113 = (v12 + 24);
            }

            while (!v114);
          }

          v115 = a2;
          if (v12 < a2)
          {
            v115 = a2;
            do
            {
              v115 = (v115 - 24);
            }

            while (((*a3)(&v197, v115) & 1) != 0);
          }

          while (v12 < v115)
          {
            v116 = *v12;
            v200 = v12[1].n128_u64[0];
            v199 = v116;
            v117 = *v115;
            v12[1].n128_u64[0] = v115[1].n128_u64[0];
            *v12 = v117;
            v118 = v199;
            v115[1].n128_u64[0] = v200;
            *v115 = v118;
            do
            {
              v12 = (v12 + 24);
            }

            while (!(*a3)(&v197, v12));
            do
            {
              v115 = (v115 - 24);
            }

            while (((*a3)(&v197, v115) & 1) != 0);
          }

          v119 = (v12 - 24);
          if (&v12[-2].n128_i8[8] != a1)
          {
            v120 = *v119;
            *(a1 + 16) = v12[-1].n128_u64[1];
            *a1 = v120;
          }

          a5 = 0;
          a6 = v197;
          v12[-1].n128_u64[1] = v198;
          *v119 = a6;
        }

        v99 = 0;
        v100 = *a1;
        v198 = *(a1 + 16);
        v197 = v100;
        do
        {
          v99 += 24;
        }

        while (((*a3)((v99 + a1), &v197) & 1) != 0);
        v101 = (a1 + v99);
        v102 = v194;
        v132 = v99 == 24;
        a2 = v194;
        if (v132)
        {
          v102 = v194;
          do
          {
            if (v101 >= v102)
            {
              break;
            }

            v102 = (v102 - 24);
          }

          while (((*a3)(v102, &v197) & 1) == 0);
        }

        else
        {
          do
          {
            v102 = (v102 - 24);
          }

          while (!(*a3)(v102, &v197));
        }

        if (v101 >= v102)
        {
          v108 = (v101 - 24);
        }

        else
        {
          v103 = v101;
          v104 = v102;
          do
          {
            v105 = *v103;
            v200 = v103[1].n128_u64[0];
            v199 = v105;
            v106 = *v104;
            v103[1].n128_u64[0] = v104[1].n128_u64[0];
            *v103 = v106;
            v107 = v199;
            v104[1].n128_u64[0] = v200;
            *v104 = v107;
            do
            {
              v103 = (v103 + 24);
            }

            while (((*a3)(v103, &v197) & 1) != 0);
            do
            {
              v104 = (v104 - 24);
            }

            while (!(*a3)(v104, &v197));
          }

          while (v103 < v104);
          v108 = (v103 - 24);
        }

        if (v108 != a1)
        {
          v109 = *v108;
          *(a1 + 16) = v108[1].n128_u64[0];
          *a1 = v109;
        }

        v110 = v197;
        v108[1].n128_u64[0] = v198;
        *v108 = v110;
        if (v101 >= v102)
        {
          break;
        }

LABEL_80:
        sub_239E96984(a1, v108, a3, a4, a5 & 1);
        a5 = 0;
        v12 = (v108 + 24);
      }

      v111 = sub_239E97D80(a1, v108, a3);
      v12 = (v108 + 24);
      if (sub_239E97D80(&v108[1].n128_i64[1], v194, a3))
      {
        break;
      }

      if (!v111)
      {
        goto LABEL_80;
      }
    }

    a2 = v108;
    if (!v111)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 sub_239E97AC8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_i64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_i64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_i64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

BOOL sub_239E97D80(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_239E97AC8(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_i64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_239E98290(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E9830C(result, a4);
  }

  return result;
}

void sub_239E982F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E9830C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_239E91AC8(a1, a2);
  }

  sub_239E797B4();
}

uint64_t sub_239E98348(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_239E983E4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_239E983E4(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_239E9858C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E9830C(result, a4);
  }

  return result;
}

void sub_239E985EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239E98608(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_239E98660(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_239E98660(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_239E98348(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_239E986E8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_239E7D38C(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_239E9876C(void *result)
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

uint64_t sub_239E987D0(uint64_t a1)
{
  v8 = (a1 + 144);
  sub_239E98868(&v8);
  sub_239E6A66C(a1 + 120, *(a1 + 128));
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_239E98868(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E988BC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E988BC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_239E957C0(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

void sub_239E98928(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239E98984(exception, a1);
  __cxa_throw(exception, off_278B40280, MEMORY[0x277D825F8]);
}

std::logic_error *sub_239E98984(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t sub_239E989B8(uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE80200](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_239E98A8C(a1);
  return a1;
}

void sub_239E98A64(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_239E98A8C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_239E98B94(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x23EE800F0](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_239E98D40(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EE80100](v13);
  return a1;
}

void sub_239E98CD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EE80100](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x239E98CB8);
}

uint64_t sub_239E98D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_239E95A5C();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_239E98F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float32x4_t **sub_239E98F30(void *a1, __int128 **a2)
{
  v4 = sub_239EC30C8(a1, a2);
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
    sub_239E991B4();
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

  if (!sub_239EC31C4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239E99190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_239E99264(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E99248(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E99264(v3, v2);
  _Unwind_Resume(a1);
}

void sub_239E99264(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[2];
    if (v3)
    {
      __p[3] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

float32x4_t *sub_239E992C8(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
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
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

float32x4_t *sub_239E99520(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FE4(a1, a2);
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
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC3098(a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_239E99778(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_239E997E4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v4 = v3 + 32;
  }

  a1[1] = v4;
  return v4 - 32;
}

uint64_t sub_239E997E4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_239E797B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_239E9990C(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  sub_239E99954(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_239E99A98(&v15);
  return v14;
}

void sub_239E998F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E99A98(va);
  _Unwind_Resume(a1);
}

void sub_239E9990C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E99954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return sub_239E99A18(v9);
}

uint64_t sub_239E99A18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239E99A50(a1);
  }

  return a1;
}

void sub_239E99A50(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t sub_239E99A98(uint64_t a1)
{
  sub_239E99AD0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239E99AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void sub_239E99B30(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E99B84(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E99B84(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 80)
  {
  }

  *(a1 + 8) = a2;
}

uint64_t sub_239E99BE0(uint64_t a1)
{
  sub_239E99C1C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239E99C1C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

float32x4_t *sub_239E99C68(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v12 == v6)
    {
      if (sub_239EC2FB4(a1, i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x4_t **sub_239E99D64(void *a1, __int128 **a2)
{
  v4 = sub_239EC30C8(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_239EC31C4(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x4_t *sub_239E99E60(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FE4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v12 == v6)
    {
      if (sub_239EC3098(a1, i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_239E99F5C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E99FD8(result, a4);
  }

  return result;
}

void sub_239E99FBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E99FD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_239E79984(a1, a2);
  }

  sub_239E797B4();
}

uint64_t sub_239E9A014(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = i->i64[0])
  {
    sub_239E9A08C(a1, i + 1);
  }

  return a1;
}

float32x4_t *sub_239E9A08C(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
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
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_239E9A2DC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = i->i64[0])
  {
    sub_239E9A354(a1, i + 1);
  }

  return a1;
}

float32x4_t *sub_239E9A354(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FE4(a1, a2);
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
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC3098(a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_239E9A5A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_239E9A61C(a1, i + 2);
  }

  return a1;
}

float32x4_t **sub_239E9A61C(void *a1, __int128 **a2)
{
  v4 = sub_239EC30C8(a1, a2);
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
    sub_239E9A888();
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

  if (!sub_239EC31C4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239E9A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_239E99264(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E9A91C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E99264(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_239E9A938(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E9830C(result, a4);
  }

  return result;
}

void sub_239E9A998(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E9A9B4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_239E9AD1C(_Unwind_Exception *a1)
{
  if (*(v2 - 73) < 0)
  {
    operator delete(*(v2 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_239E9AFEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_239E9B514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_239E9B974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_239E9BAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_239E9BB0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_239E9BC28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v5 = dword_27DF912CC;
  if (dword_27DF912CC >= 1)
  {
    v10 = 0;
    *&a5 = *&dword_27DF912D0 * 0.5;
    v11 = vdup_lane_s32(*&a5, 0);
    v12 = 1.0 / dword_27DF912CC;
    v13 = 16 * dword_27DF912CC;
    v19 = 8 * dword_27DF912CC;
    do
    {
      v14 = 0;
      do
      {
        *&v15 = v14 * v12;
        *(&v15 + 1) = v10 * v12;
        v20 = *&v15;
        v16 = sub_239F3805C(a4, v15);
        if (v16 && (v17 = v16, sub_239F3761C(v16, v20)))
        {
          v24 = 0uLL;
          v25 = 0;
          sub_239F37800(v17, &v24, vadd_f32(v20, v11));
          v18 = v25;
          if (!v25)
          {
            sub_239F37800(v17, &v22, v20);
            v18 = v23;
            v25 = v23;
            v24 = v22;
          }

          v21 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v18 + 64), *&v24), *(v18 + 80), *(&v24 + 1)), *(v18 + 96), *(&v24 + 2));
          *(a1 + 16 * v14) = sub_239EC3D28(v18);
          *(a2 + 16 * v14) = v21;
          *(a3 + 8 * v14) = v18;
        }

        else
        {
          *(a1 + 16 * v14) = 0u;
        }

        ++v14;
      }

      while (v5 != v14);
      ++v10;
      a1 += v13;
      a3 += v19;
      a2 += v13;
    }

    while (v10 != v5);
  }
}

void sub_239E9BDC8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = a1;
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  sub_239E9CEF0(a3, &v25);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_239E9BFD8(&__p, &v25);
  v5 = 0;
  for (i = 0; i != 4; ++i)
  {
    v18 = (v23 - __p) >> 3;
    if (v5 < v18)
    {
      v7 = v5;
      v8 = ((v23 - __p) >> 3);
      do
      {
        v9 = 0;
        v10 = *(__p + v7);
        v11 = *(v10 + 80);
        v26[0] = *(v10 + 64);
        v26[1] = v11;
        v26[2] = *(v10 + 96);
        do
        {
          v21 = v26[v9];
          v12 = sub_239E9D158(a2, &v21);
          if (!v12)
          {
            sub_239E98928("unordered_map::at: key not found");
          }

          v14 = v12[2].i64[0];
          v13 = v12[2].i64[1];
          while (v14 != v13)
          {
            v20 = *v14;
            v19 = sub_239EC3D28(v20);
            v15 = vmulq_f32(sub_239EC3D28(v10), v19);
            if ((vaddv_f32(*v15.f32) + v15.f32[2]) > 0.7)
            {
              sub_239E9CEF0(a3, &v20);
              if (v16)
              {
                sub_239E9BFD8(&__p, &v20);
              }
            }

            ++v14;
          }

          ++v9;
        }

        while (v9 != 3);
        ++v7;
      }

      while (v7 != v8);
    }

    v5 = v18;
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_239E9BF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_239E7B644(v18);
  _Unwind_Resume(a1);
}

void sub_239E9BFD8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_239E797B4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_239E7C684(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void sub_239E9C0AC(void *a1, void *a2, float a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v35 = a1;
  v9 = dword_27DF912CC;
  v10 = objc_alloc(MEMORY[0x277CBEB28]);
  v11 = (v9 * v9);
  v34 = objc_msgSend_initWithLength_(v10, v12, (4 * v11));
  v13 = v35;
  objc_msgSend_bytes(v13, v14, v15);
  v16 = v34;
  objc_msgSend_mutableBytes(v16, v17, v18);
  v19 = malloc_type_malloc(16 * v11, 0x1000040451B5BE8uLL);
  v20 = malloc_type_malloc(16 * v11, 0x1000040451B5BE8uLL);
  v21 = malloc_type_malloc(8 * v11, 0x2004093837F09uLL);
  sub_239E9BC28(v19, v20, v21, a2, v22);
  dispatch_group_create();
  dispatch_get_global_queue(0, 0);
  objc_claimAutoreleasedReturnValue();
  v40 = 1065353216;
  memset(v39, 0, sizeof(v39));
  v23 = *a6;
  v24 = a6[1];
  if (*a6 != v24)
  {
    do
    {
      v36.i64[0] = *v23;
      *&v37[0] = v36.i64[0] + 64;
      v25 = sub_239E9D534(v39, (v36.i64[0] + 64));
      sub_239E9BFD8(&v25[2], &v36);
      *&v37[0] = v36.i64[0] + 80;
      v26 = sub_239E9D534(v39, (v36.i64[0] + 80));
      sub_239E9BFD8(&v26[2], &v36);
      *&v37[0] = v36.i64[0] + 96;
      v27 = sub_239E9D534(v39, (v36.i64[0] + 96));
      sub_239E9BFD8(&v27[2], &v36);
      ++v23;
    }

    while (v23 != v24);
  }

  *&dword_27DF912DC = a3 * 8.0;
  v38 = 1065353216;
  memset(v37, 0, sizeof(v37));
  if (v9 >= 1)
  {
    v28 = 0;
    for (i = 0; i != v9; ++i)
    {
      v30 = v9;
      v31 = v28;
      do
      {
        v41[0] = v31;
        v32 = vmulq_f32(v19[v31], v19[v31]);
        if (sqrtf(vaddv_f32(*v32.f32) + v32.f32[2]) > 0.000001)
        {
          *(v36.i64 + 4) = 0;
          v36.i32[0] = 0;
          v36 = v20[v31];
          v33 = sub_239E9D810(v37, &v36);
          sub_239E73254(&v33[2], v41);
        }

        ++v31;
        --v30;
      }

      while (v30);
      v28 += v9;
    }
  }

  operator new();
}

void sub_239E9C8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  _Block_object_dispose((v42 - 240), 8);

  sub_239E9D4AC(v42 - 208);
  sub_239E9D4AC(v42 - 160);

  _Unwind_Resume(a1);
}

uint64_t sub_239E9C9D4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_lock(*(a1 + 32), a2, a3);
  v6 = *(a1 + 56);
  v7 = v6[5];
  if (v7)
  {
    v8 = &dword_27DF912D0;
    __asm { FMOV            V0.4S, #1.0 }

    v73 = _Q0;
    do
    {
      v14 = *(*(v6[1] + ((v6[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6[4] & 0x1FFLL));
      ++v6[4];
      v6[5] = v7 - 1;
      sub_239E9F3E8(v6, 1);
      objc_msgSend_unlock(*(a1 + 32), v15, v16);
      v19 = *(a1 + 64);
      v20 = *v19;
      v21 = *(v19 + 8);
      if (v20 != v21)
      {
        while (*v20 != *&v14[32])
        {
          if (++v20 == v21)
          {
            goto LABEL_44;
          }
        }
      }

      if (v20 != v21)
      {
        v88 = 0;
        memset(v87, 0, sizeof(v87));
        sub_239E9BDC8(v14, *(a1 + 72), v87);
        *&v24 = sub_239EC3CE0(v14);
        v25.i32[0] = *v8;
        *&v26 = vadd_f32(vdup_lane_s32(v25, 0), *&v27);
        *&v27 = vmvn_s8(vcge_f32(*&v26, *&v24));
        if (v27)
        {
          v74 = 0;
        }

        else
        {
          v74 = 0;
          v28 = *(&v24 + 1);
          v29 = *(&v26 + 1);
          v72 = v26;
          do
          {
            if (v28 <= v29)
            {
              *&v27 = v28;
              v75 = v24;
              do
              {
                v76 = v27;
                DWORD1(v24) = v27;
                v30 = sub_239EC2F44(*&v24);
                v31 = llroundf(dword_27DF912CC * v30.f32[0]) + *(a1 + 168) * llroundf(vmuls_lane_f32(dword_27DF912CC, v30, 1));
                v32 = *(a1 + 80);
                v33 = vmulq_f32(*(v32 + 16 * v31), *(v32 + 16 * v31));
                if (sqrtf(vaddv_f32(*v33.f32) + v33.f32[2]) > 0.000001)
                {
                  v34 = v8;
                  v35 = 0;
                  v36 = v31;
                  v86[0] = 0;
                  v86[1] = 0;
                  v85 = v86;
                  v77 = *(v32 + 16 * v31);
                  *(&v37 + 1) = *(v32 + 16 * v31 + 8);
                  v78 = *(*(a1 + 88) + 16 * v31);
                  ++v74;
                  *&v37 = 0;
                  v81 = v37;
                  v80 = 0u;
                  do
                  {
                    v84 = vmlaq_n_f32(v78, xmmword_239F9BF70[v35], *(a1 + 172));
                    v38 = sub_239E9F448((a1 + 96), &v84);
                    v39 = v38;
                    if (v38)
                    {
                      v40 = v38[2].i64[0];
                      if (v40 != v38[2].i64[1])
                      {
                        v41 = v86[0];
                        if (!v86[0])
                        {
                          goto LABEL_24;
                        }

                        v42 = *v40;
                        v43 = v86;
                        do
                        {
                          if (*(v41 + 7) >= v42)
                          {
                            v43 = v41;
                          }

                          v41 = v41[*(v41 + 7) < v42];
                        }

                        while (v41);
                        if (v43 == v86 || v42 < *(v43 + 7))
                        {
LABEL_24:
                          v44 = v38[2].i64[0];
                          sub_239E9F544(&v85, v40);
                          v46 = v39[2].i64[0];
                          v45 = v39[2].i64[1];
                          while (v46 != v45)
                          {
                            v47 = *v46;
                            v48 = *(*(a1 + 80) + 16 * v47);
                            v49 = vmulq_f32(v48, v48);
                            if (sqrtf(vaddv_f32(*v49.f32) + v49.f32[2]) >= 0.000001)
                            {
                              v82 = *(*(a1 + 88) + 16 * v47);
                              v83 = *(*(a1 + 80) + 16 * v47);
                              if (sub_239E9F610(v87, (*(a1 + 136) + 8 * v47)) || *(*(*(a1 + 136) + 8 * v47) + 256) == *(*(*(a1 + 136) + 8 * v36) + 256))
                              {
                                v50.i32[0] = *(*(a1 + 144) + 4 * v47);
                                v79 = vmovl_u8(v50).u64[0];
                                v51 = vsubq_f32(v78, v82);
                                v52 = vmulq_f32(v51, v51);
                                v53 = sqrtf(vaddv_f32(*v52.f32) + v52.f32[2]);
                                v54 = vmulq_f32(v83, v77);
                                v55 = vaddv_f32(*v54.f32);
                                if ((v55 + v54.f32[2]) >= 0.0)
                                {
                                  v56 = v55 + v54.f32[2];
                                }

                                else
                                {
                                  v56 = 0.0;
                                }

                                v57 = v56 * 0.39894228 * expf((v53 * -4.0) / *(a1 + 172));
                                v58 = v81;
                                *&v58 = *&v81 + v57;
                                v81 = v58;
                                v80 = vmlaq_n_f32(v80, vcvtq_f32_u32(vmovl_u16(v79)), v57);
                              }
                            }

                            ++v46;
                          }
                        }
                      }
                    }

                    ++v35;
                  }

                  while (v35 != 8);
                  v59 = vmulq_f32(v80, vdivq_f32(v73, vdupq_lane_s32(*&v81, 0)));
                  if (v59.f32[3] < 5.0)
                  {
                    v60 = 0;
                  }

                  else
                  {
                    v60 = -1;
                  }

                  v61 = (*(a1 + 152) + 4 * v36);
                  *v61 = v59.f32[0];
                  v61[1] = v59.f32[1];
                  v61[2] = v59.f32[2];
                  v61[3] = v60;
                  sub_239E79AAC(&v85, v86[0]);
                  v8 = v34;
                }

                v25.i32[0] = *v8;
                v24 = v75;
                v27 = v76;
                *&v27 = *v8 + *&v76;
              }

              while (*&v27 <= v29);
            }

            *&v24 = *v25.i32 + *&v24;
          }

          while (*&v24 <= *&v72);
        }

        objc_msgSend_lock(*(a1 + 32), v22, v23, v72);
        *(*(*(a1 + 48) + 8) + 24) += v74;
        v62 = *(*(*(a1 + 48) + 8) + 24);
        v63 = *(a1 + 176);
        v66 = objc_msgSend_completedUnitCount(*(a1 + 40), v64, v65);
        v69 = ((v62 * 5.0) / v63);
        v70 = *(a1 + 160);
        if (v66 - v70 < v69)
        {
          objc_msgSend_setCompletedUnitCount_(*(a1 + 40), v67, v70 + v69);
        }

        objc_msgSend_unlock(*(a1 + 32), v67, v68);
        sub_239E7B644(v87);
      }

LABEL_44:
      objc_msgSend_lock(*(a1 + 32), v17, v18);
      v6 = *(a1 + 56);
      v7 = v6[5];
    }

    while (v7);
  }

  return objc_msgSend_unlock(*(a1 + 32), v4, v5);
}

void *sub_239E9CEF0(void *a1, void *a2)
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

float32x4_t *sub_239E9D158(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v6 == v12)
    {
      if (sub_239EC2FB4(a1, i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x4_t *sub_239E9D254(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
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
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_239E9D4AC(uint64_t a1)
{
  sub_239E9D4E8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239E9D4E8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

float32x4_t *sub_239E9D534(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
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
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239E9D7AC(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

float32x4_t *sub_239E9D810(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC32B0(a1, a2);
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
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC32C0(v7, a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_239E9DA88(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_239E9DB10(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_239E9DB10(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_239E9E10C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_239E9DCE4(a1, &v10);
}

void sub_239E9DC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_239E9DCE4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_239E9E10C(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_239E9DDEC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_239E9E10C(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_239E9DEF8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_239E9E10C(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_239E9E000(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_239E9E10C(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_239E9E10C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E9E154(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v61 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v61;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_239E9E998(v9, a2, a3);
      }

      else
      {

        return sub_239E9EA60(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_239E9F024(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v48 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v48)
        {
          v47 = v8[v34];
          v8[v13] = v47;
          v8[v34] = v44;
LABEL_58:
          v44 = v47;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = v8[v26];
          v46 = (*a3)();
          v44 = v8[v13];
          if (v46)
          {
            v47 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v47;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v49 = *v8;
      *v8 = v44;
      v8[v13] = v49;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = sub_239E9EAFC(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v50 = sub_239E9EC0C(v8, a2, a3);
    if ((v51 & 1) == 0)
    {
      goto LABEL_64;
    }

    v52 = sub_239E9ED28(v8, v50, a3);
    v9 = (v50 + 1);
    result = sub_239E9ED28(v50 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v50;
      if (v52)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v52)
    {
LABEL_64:
      result = sub_239E9E154(v8, v50, a3, -v11, a5 & 1);
      v9 = (v50 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return sub_239E9E844(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      sub_239E9E844(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v55;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v56 = v9[1].i64[0];
      v57 = v9->i64[1];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v56;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v59 = v9->i64[1];
      v58 = v9[1].i64[0];
      v60 = v9->i64[0];
      v9->i64[1] = v58;
      v9[1].i64[0] = v59;
      result = (*a3)(v58, v60);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v53 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v53 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v62 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v62;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v54 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v54;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v54;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v61 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_239E9E844(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_239E9E998(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_239E9EA60(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *sub_239E9EAFC(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_239E9EC0C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_239E9ED28(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (*a3)(a1[1], *a1);
        v16 = (*a3)(*(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_239E9E844(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_239E9E844(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v12 = a1[1];
        v11 = a1[2];
        v13 = *a1;
        a1[1] = v11;
        a1[2] = v12;
        v14 = (*a3)(v11, v13);
        break;
      default:
        goto LABEL_17;
    }

    if (v14)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = (*a3)(a1[1], *a1);
  v19 = a1 + 2;
  v20 = (*a3)(a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v25))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if ((*a3)(*v26, *v19))
    {
      v29 = *v26;
      v30 = v27;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          break;
        }

        v30 -= 8;
        if (((*a3)(v29, *(v31 + 1)) & 1) == 0)
        {
          v32 = (a1 + v30 + 24);
          goto LABEL_40;
        }
      }

      v32 = a1;
LABEL_40:
      *v32 = v29;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v19 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_239E9F024(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_239E9F170(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_239E9F170(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = sub_239E9F298(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          sub_239E9F344(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_239E9F170(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *sub_239E9F298(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_239E9F344(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t sub_239E9F3E8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

float32x4_t *sub_239E9F448(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC32B0(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v6 == v12)
    {
      if (sub_239EC32C0(v7, a1, i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *sub_239E9F544(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_239E9F610(void *a1, void *a2)
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

uint64_t sub_239E9F6FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = i->i64[0])
  {
    sub_239E9F774(a1, i + 1);
  }

  return a1;
}

float32x4_t *sub_239E9F774(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC32B0(a1, a2);
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
    sub_239E9F9E0();
  }

  while (1)
  {
    v12 = v11->u64[1];
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
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC32C0(v7, a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239E9F9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_239E9D7AC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E9FA74(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E9D7AC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_239EA0538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v39 = *(v37 - 176);
  if (v39)
  {
    *(v37 - 168) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

id sub_239EA06E8(void *a1, void *a2, unint64_t a3, unint64_t a4, __int16 a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = (8 * a4) | 6;
  if (a6 == 2)
  {
    v13 = 6 * a4 + 3;
  }

  __p = 0;
  v53 = 0;
  v54 = 0;
  sub_239EA0FEC(&__p, v13 * a3);
  if (a6 == 1)
  {
    if (a3)
    {
      v16 = 1;
      do
      {
        v51 = v16 - 1;
        sub_239EA1088(&__p, &v51);
        v17 = v16;
        v51 = v16 % a3;
        sub_239EA1088(&__p, &v51);
        v51 = v16 - 1;
        sub_239EA1088(&__p, &v51);
        v51 = a5;
        sub_239EA1088(&__p, &v51);
        ++v16;
      }

      while (v17 < a3);
    }
  }

  else if (a6 == 2 && a3)
  {
    v14 = 1;
    do
    {
      v51 = a5;
      sub_239EA1088(&__p, &v51);
      v51 = v14 - 1;
      sub_239EA1088(&__p, &v51);
      v51 = v14;
      sub_239EA1088(&__p, &v51);
      v15 = v14++;
    }

    while (v15 < a3);
  }

  if (a4)
  {
    v18 = 0;
    v19 = a3 + 1;
    do
    {
      v20 = (v18 + 1);
      if (a3)
      {
        LOWORD(v21) = 0;
        v22 = v19 * (v18 + 1);
        v23 = v19 * (v18 + 2);
        v24 = 1;
        do
        {
          v51 = v21 + v22;
          v50 = v22 + v24;
          v49 = v21 + v23;
          v48 = v23 + v24;
          sub_239EA1088(&__p, &v51);
          if (a6 == 2)
          {
            sub_239EA1088(&__p, &v49);
            sub_239EA1088(&__p, &v48);
            sub_239EA1088(&__p, &v51);
            sub_239EA1088(&__p, &v48);
            v25 = &v50;
          }

          else
          {
            sub_239EA1088(&__p, &v50);
            sub_239EA1088(&__p, &v50);
            v25 = &v48;
          }

          sub_239EA1088(&__p, v25);
          v21 = v24++;
        }

        while (v21 < a3);
      }

      v18 = v20;
    }

    while (v20 < a4);
  }

  v26 = objc_alloc(MEMORY[0x277CBEA90]);
  v28 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v26, v27, __p, v53 - __p, 0);
  v30 = objc_msgSend_newBufferWithData_type_(v12, v29, v28, 2);
  if (objc_msgSend_conformsToProtocol_(v30, v31, &unk_284D24D98))
  {
    v32 = v30;
    v34 = objc_msgSend_stringByAppendingString_(v11, v33, @"-Indices");
    objc_msgSend_setName_(v32, v35, v34);
  }

  v36 = [MDLMaterial alloc];
  v38 = objc_msgSend_stringByAppendingString_(v11, v37, @"-Material");
  v39 = objc_opt_new();
  v41 = objc_msgSend_initWithName_scatteringFunction_(v36, v40, v38, v39);

  v42 = [MDLSubmesh alloc];
  v44 = objc_msgSend_stringByAppendingString_(v11, v43, @"-Submesh");
  v46 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v42, v45, v44, v30, (v53 - __p) >> 1, 16, a6, v41, 0);

  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  return v46;
}

void sub_239EA0A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_239EA0B1C(void *a1, void *a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = (8 * a4) | 6;
  if (a6 == 2)
  {
    v13 = 6 * a4 + 3;
  }

  __p = 0;
  v51 = 0;
  v52 = 0;
  sub_239E95D48(&__p, v13 * a3);
  if (a6 == 1)
  {
    v49 = 0;
    if (a3)
    {
      v16 = 0;
      do
      {
        sub_239E73254(&__p, &v49);
        v48 = (v16 + 1) % a3;
        sub_239E73254(&__p, &v48);
        sub_239E73254(&__p, &v49);
        v48 = a5;
        sub_239E73254(&__p, &v48);
        v16 = ++v49;
      }

      while (v49 < a3);
    }
  }

  else if (a6 == 2 && a3)
  {
    v14 = 1;
    do
    {
      v49 = a5;
      sub_239E73254(&__p, &v49);
      v49 = v14 - 1;
      sub_239E73254(&__p, &v49);
      v49 = v14;
      sub_239E73254(&__p, &v49);
      v15 = v14++;
    }

    while (v15 < a3);
  }

  if (a4)
  {
    LODWORD(v17) = 0;
    v18 = a3 + 1;
    v19 = 2 * a3;
    v20 = a3;
    do
    {
      if (a3)
      {
        v21 = 1;
        do
        {
          v49 = v20 + v21;
          v47 = v19 + v21 + 1;
          v48 = v20 + v21 + 1;
          v46 = v19 + v21 + 2;
          sub_239E73254(&__p, &v49);
          if (a6 == 2)
          {
            sub_239E73254(&__p, &v47);
            sub_239E73254(&__p, &v46);
            sub_239E73254(&__p, &v49);
            sub_239E73254(&__p, &v46);
            v22 = &v48;
          }

          else
          {
            sub_239E73254(&__p, &v48);
            sub_239E73254(&__p, &v48);
            v22 = &v46;
          }

          sub_239E73254(&__p, v22);
          v23 = v21++;
        }

        while (v23 < a3);
      }

      v17 = (v17 + 1);
      v19 += v18;
      v20 += v18;
    }

    while (v17 < a4);
  }

  v24 = objc_alloc(MEMORY[0x277CBEA90]);
  v26 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v24, v25, __p, v51 - __p, 0);
  v28 = objc_msgSend_newBufferWithData_type_(v12, v27, v26, 2);
  if (objc_msgSend_conformsToProtocol_(v28, v29, &unk_284D24D98))
  {
    v30 = v28;
    v32 = objc_msgSend_stringByAppendingString_(v11, v31, @"-Indices");
    objc_msgSend_setName_(v30, v33, v32);
  }

  v34 = [MDLMaterial alloc];
  v36 = objc_msgSend_stringByAppendingString_(v11, v35, @"-Material");
  v37 = objc_opt_new();
  v39 = objc_msgSend_initWithName_scatteringFunction_(v34, v38, v36, v37);

  v40 = [MDLSubmesh alloc];
  v42 = objc_msgSend_stringByAppendingString_(v11, v41, @"-Submesh");
  v44 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v40, v43, v42, v28, (v51 - __p) >> 2, 32, a6, v39, 0);

  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  return v44;
}

void sub_239EA0EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_239EA0FEC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      sub_239EA1164(result, a2);
    }

    sub_239E797B4();
  }

  return result;
}

void sub_239EA1088(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_239E797B4();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_239EA1164(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_239EA1164(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EA11A8(uint64_t a1, float a2)
{
  v343 = *MEMORY[0x277D85DE8];
  v4 = (**a1)(a1);
  v5 = cos((a2 * 0.017453));
  v6 = *a1;
  if (!**a1 || !v6[1] || !v6[2] || !v6[3] || !v6[4] || v4 < 1)
  {
    goto LABEL_342;
  }

  v7 = 0;
  v8 = 0;
  v9 = v5;
  do
  {
    v10 = (*(*a1 + 8))(a1, v8);
    if (v10 == 4)
    {
      v7 += 2;
    }

    else if (v10 == 3)
    {
      ++v7;
    }

    v8 = (v8 + 1);
  }

  while (v4 != v8);
  if (v7 < 1)
  {
    goto LABEL_342;
  }

  v11 = malloc_type_malloc(12 * v7, 0x100004052888210uLL);
  v12 = malloc_type_malloc(88 * v7, 0x1020040F04E29DEuLL);
  v13 = v12;
  if (!v11 || !v12)
  {
    if (v11)
    {
      free(v11);
    }

    if (!v13)
    {
      goto LABEL_342;
    }

    goto LABEL_33;
  }

  size = 12 * v7;
  v322 = v11;
  v305 = v4;
  v308 = v7;
  v316 = v7;
  v309 = v12;
  if ((**a1)(a1) < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = (v322 + 2);
    do
    {
      v19 = (*(*a1 + 8))(a1, v16);
      if ((v19 - 5) >= 0xFFFFFFFE)
      {
        v20 = v19;
        v21 = v13 + 88 * v17;
        *(v21 + 72) = v16;
        *(v21 + 80) = v15;
        if (v19 == 3)
        {
          *(v21 + 84) = 256;
          *(v21 + 86) = 2;
          v22 = 3 * v17;
          v23 = &v322[3 * v17];
          *v23 = v14;
          v23[1] = v14 + 1;
          v24 = v14 + 2;
          v25 = 1;
        }

        else
        {
          v26 = v13 + 88 * (v17 + 1);
          *(v26 + 72) = v16;
          v27 = v26;
          *(v26 + 80) = v15;
          v28 = 2;
          *&v337 = 0;
          (*(*a1 + 32))(a1, &v337, (v14 >> 2), 0);
          v29 = v337;
          *&v337 = 0;
          (*(*a1 + 32))(a1, &v337, (v14 >> 2), 1);
          v30 = v337;
          *&v337 = 0;
          (*(*a1 + 32))(a1, &v337, (v14 >> 2), 2);
          v31 = v337;
          *&v337 = 0;
          (*(*a1 + 32))(a1, &v337, (v14 >> 2), 3);
          v32 = vsub_f32(v31, v29);
          v33 = vmul_f32(v32, v32);
          v34 = vsub_f32(*&v337, v30);
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vzip2_s32(v33, v35), vzip1_s32(v33, v35));
          if (v36.f32[0] < v36.f32[1])
          {
            goto LABEL_22;
          }

          if (v36.f32[1] < v36.f32[0])
          {
            goto LABEL_25;
          }

          DWORD2(v337) = 0;
          *&v337 = 0;
          (*(*a1 + 16))(a1, &v337, (v14 >> 2), 0);
          v325 = v337;
          v41 = *(&v337 + 4);
          DWORD2(v337) = 0;
          *&v337 = 0;
          (*(*a1 + 16))(a1, &v337, (v14 >> 2), 1);
          v323 = v337;
          v42 = *(&v337 + 4);
          DWORD2(v337) = 0;
          *&v337 = 0;
          (*(*a1 + 16))(a1, &v337, (v14 >> 2), 2);
          v318 = v337;
          v43 = *(&v337 + 4);
          DWORD2(v337) = 0;
          *&v337 = 0;
          (*(*a1 + 16))(a1, &v337, (v14 >> 2), 3);
          v44 = vsub_f32(v43, v41);
          v45 = vmul_f32(v44, v44);
          v46 = vsub_f32(*(&v337 + 4), v42);
          v47 = vmul_f32(v46, v46);
          v48 = vsub_f32(__PAIR64__(v318, v337), __PAIR64__(v325, v323));
          v49 = vadd_f32(vmla_f32(vzip1_s32(v47, v45), v48, v48), vzip2_s32(v47, v45));
          if (vcgt_f32(vdup_lane_s32(v49, 1), v49).u32[0])
          {
LABEL_25:
            v38 = (4 * v16) | 1;
            v40 = v14 + 3;
            v37 = 1;
            v28 = 3;
            v39 = v17;
          }

          else
          {
LABEL_22:
            v37 = 0;
            v38 = v14;
            v39 = v17;
            v40 = (4 * v16) | 2;
          }

          v24 = (4 * v16) | 3;
          *(v21 + 84) = 256;
          *(v21 + 86) = v28;
          v50 = &v322[3 * v39];
          *v50 = v14;
          v50[1] = v14 + 1;
          v50[2] = v40;
          *(v27 + 84) = v37;
          *(v27 + 85) = 770;
          v22 = 3 * (v17 + 1);
          v51 = &v322[v22];
          *v51 = v38;
          v51[1] = v14 + 2;
          v25 = 2;
          v13 = v309;
          v18 = (v322 + 2);
        }

        *&v18[4 * v22] = v24;
        v17 += v25;
        v15 += v20;
      }

      v16 = (v16 + 1);
      v14 += 4;
    }

    while (v16 < (**a1)(a1));
  }

  v306 = v15;
  v53 = (v316 + 3) & 0xFFFFFFFC;
  v54 = vdupq_n_s64(v316 - 1);
  v55 = xmmword_239F9AD30;
  v56 = xmmword_239F9AD40;
  v57 = (v13 + 252);
  v58 = vdupq_n_s64(4uLL);
  do
  {
    v59 = vmovn_s64(vcgeq_u64(v54, v56));
    if (vuzp1_s16(v59, *v54.i8).u8[0])
    {
      *(v57 - 44) = 0;
    }

    if (vuzp1_s16(v59, *&v54).i8[2])
    {
      *(v57 - 22) = 0;
    }

    if (vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, *&v55))).i32[1])
    {
      *v57 = 0;
      v57[22] = 0;
    }

    v55 = vaddq_s64(v55, v58);
    v56 = vaddq_s64(v56, v58);
    v57 += 88;
    v53 -= 4;
  }

  while (v53);
  DWORD2(v337) = 0;
  *&v337 = 0;
  (*(*a1 + 16))(a1, &v337, 0, 0);
  v60 = *(&v337 + 1);
  v61 = *&v337;
  v62 = 3 * v308;
  if (3 * v308 <= 2)
  {
    v63 = 2;
  }

  else
  {
    v63 = 3 * v308;
  }

  v64 = *(&v337 + 2);
  v65 = 4 * v63;
  v66 = 4;
  v67 = *&v337;
  v68 = *(&v337 + 2);
  v69 = *(&v337 + 1);
  do
  {
    v70 = v322[v66 / 4];
    DWORD2(v337) = 0;
    *&v337 = 0;
    (*(*a1 + 16))(a1, &v337, (v70 >> 2), v70 & 3);
    if (v67 < *&v337)
    {
      v71 = *&v337;
    }

    else
    {
      v71 = v67;
    }

    if (v61 > *&v337)
    {
      v61 = *&v337;
    }

    else
    {
      v67 = v71;
    }

    if (v69 < *(&v337 + 1))
    {
      v72 = *(&v337 + 1);
    }

    else
    {
      v72 = v69;
    }

    if (v60 > *(&v337 + 1))
    {
      v60 = *(&v337 + 1);
    }

    else
    {
      v69 = v72;
    }

    if (v64 <= *(&v337 + 2))
    {
      if (v68 < *(&v337 + 2))
      {
        v68 = *(&v337 + 2);
      }
    }

    else
    {
      v64 = *(&v337 + 2);
    }

    v66 += 4;
  }

  while (v65 != v66);
  v73 = v67 - v61;
  v74 = v68 - v64;
  v75 = (v69 - v60) > (v68 - v64) && (v69 - v60) > (v67 - v61);
  v76 = v74 <= v73;
  if (v74 > v73)
  {
    v77 = v64;
  }

  else
  {
    v77 = v61;
  }

  if (v76)
  {
    v78 = v67;
  }

  else
  {
    v78 = v68;
  }

  v79 = v76;
  if (v75)
  {
    v80 = v60;
  }

  else
  {
    v80 = v77;
  }

  if (v75)
  {
    v81 = v69;
  }

  else
  {
    v81 = v78;
  }

  if (v75)
  {
    v82 = 0;
  }

  else
  {
    v82 = v79;
  }

  v83 = malloc_type_malloc(size, 0x100004052888210uLL);
  v84 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
  v85 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
  v86 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
  v87 = v86;
  v307 = v9;
  if (v83 && v84 && v85 && v86)
  {
    v319 = v83;
    v311 = v85;
    bzero(v84, 0x2000uLL);
    bzero(v87, 0x2000uLL);
    v88 = 0;
    if (v62 <= 1)
    {
      v89 = 1;
    }

    else
    {
      v89 = v62;
    }

    v332 = v89;
    v90 = 4 * v89;
    do
    {
      v91 = v322[v88 / 4];
      DWORD2(v337) = 0;
      *&v337 = 0;
      (*(*a1 + 16))(a1, &v337, (v91 >> 2), v91 & 3);
      v92 = &v337 + 1;
      if (!v75)
      {
        v92 = &v337 + 2;
      }

      if (v82)
      {
        v92 = &v337;
      }

      v93 = sub_239EA3CD4(v80, v81, *v92);
      ++*(v84 + v93);
      v88 += 4;
    }

    while (v90 != v88);
    v94 = 0;
    v95 = 0;
    *v311 = 0;
    do
    {
      v95 += *(v84 + v94);
      v311[++v94] = v95;
    }

    while (v94 != 2047);
    sizea = v84;
    v96 = 0;
    v97 = v322;
    do
    {
      v98 = v322[v96];
      DWORD2(v337) = 0;
      *&v337 = 0;
      (*(*a1 + 16))(a1, &v337, (v98 >> 2), v98 & 3);
      v99 = &v337 + 1;
      if (!v75)
      {
        v99 = &v337 + 2;
      }

      if (v82)
      {
        v99 = &v337;
      }

      v100 = sub_239EA3CD4(v80, v81, *v99);
      *&v83[4 * v311[v100] + 4 * (*(v87 + v100))++] = v96++;
    }

    while (v332 != v96);
    free(v87);
    v101 = *sizea;
    for (i = 1; i != 2048; ++i)
    {
      if (v101 <= sizea[i])
      {
        v101 = sizea[i];
      }
    }

    v103 = 0;
    v310 = malloc_type_malloc(16 * v101, 0x1000040451B5BE8uLL);
    do
    {
      v104 = sizea[v103];
      if (v104 >= 2)
      {
        v105 = &v319[4 * v311[v103]];
        if (v310)
        {
          v106 = v310 + 3;
          v107 = sizea[v103];
          do
          {
            v108 = *v105;
            v105 += 4;
            v109 = *(v97 + 4 * v108);
            DWORD2(v337) = 0;
            *&v337 = 0;
            (*(*a1 + 16))(a1, &v337, (v109 >> 2), v109 & 3);
            v110 = DWORD2(v337);
            *(v106 - 3) = v337;
            *(v106 - 1) = v110;
            *v106 = v108;
            v106 += 4;
            --v107;
          }

          while (v107);
          sub_239EA3D00(v97, v310, a1, 0, (v104 - 1));
        }

        else
        {
          for (j = 0; j != v104; ++j)
          {
            v112 = *&v105[4 * j];
            v113 = *(v97 + 4 * v112);
            DWORD2(v337) = 0;
            *&v337 = 0;
            (*(*a1 + 16))(a1, &v337, (v113 >> 2), v113 & 3);
            v114 = v337;
            v333 = *(&v337 + 2);
            DWORD2(v337) = 0;
            *&v337 = 0;
            (*(*a1 + 24))(a1, &v337, (v113 >> 2), v113 & 3);
            v115 = v337;
            v327 = *(&v337 + 2);
            *&v337 = 0;
            (*(*a1 + 32))(a1, &v337, (v113 >> 2), v113 & 3);
            if (j)
            {
              v116 = 0;
              v117 = v337;
              while (1)
              {
                v118 = *&v105[4 * v116];
                v119 = v322[v118];
                DWORD2(v337) = 0;
                *&v337 = 0;
                (*(*a1 + 16))(a1, &v337, (v119 >> 2), v119 & 3);
                v120 = v337;
                v121 = *(&v337 + 2);
                DWORD2(v337) = 0;
                *&v337 = 0;
                (*(*a1 + 24))(a1, &v337, (v119 >> 2), v119 & 3);
                v122 = v337;
                v123 = *(&v337 + 2);
                *&v337 = 0;
                (*(*a1 + 32))(a1, &v337, (v119 >> 2), v119 & 3);
                if (*&v114 == *&v120 && *(&v114 + 1) == *(&v120 + 1) && v333 == v121 && *&v115 == *&v122 && *(&v115 + 1) == *(&v122 + 1) && v327 == v123 && *&v117 == *&v337 && *(&v117 + 1) == *(&v337 + 1))
                {
                  break;
                }

                if (j == ++v116)
                {
                  goto LABEL_130;
                }
              }

              v322[v112] = v322[v118];
            }

LABEL_130:
            v97 = v322;
          }
        }
      }

      ++v103;
    }

    while (v103 != 2048);
    if (v310)
    {
      free(v310);
    }

    free(v319);
    free(sizea);
    free(v311);
    v124 = v316;
  }

  else
  {
    if (v83)
    {
      free(v83);
    }

    if (v84)
    {
      free(v84);
    }

    if (v85)
    {
      free(v85);
    }

    if (v87)
    {
      free(v87);
    }

    v125 = 0;
    v126 = 1;
    do
    {
      v127 = 0;
      v320 = v125;
      v128 = &v322[3 * v125];
      do
      {
        v129 = *&v128[4 * v127];
        DWORD2(v337) = 0;
        *&v337 = 0;
        (*(*a1 + 16))(a1, &v337, (v129 >> 2), v129 & 3);
        v130 = v337;
        v334 = *(&v337 + 2);
        DWORD2(v337) = 0;
        *&v337 = 0;
        (*(*a1 + 24))(a1, &v337, (v129 >> 2), v129 & 3);
        v131 = v337;
        v328 = *(&v337 + 2);
        *&v337 = 0;
        (*(*a1 + 32))(a1, &v337, (v129 >> 2), v129 & 3);
        v132 = 0;
        v133 = v337;
        v134 = v322;
LABEL_146:
        v135 = 0;
        while (1)
        {
          v136 = v134[v135];
          DWORD2(v337) = 0;
          *&v337 = 0;
          (*(*a1 + 16))(a1, &v337, (v136 >> 2), v136 & 3);
          v137 = v337;
          v138 = *(&v337 + 2);
          DWORD2(v337) = 0;
          *&v337 = 0;
          (*(*a1 + 24))(a1, &v337, (v136 >> 2), v136 & 3);
          v139 = v337;
          v140 = *(&v337 + 2);
          *&v337 = 0;
          (*(*a1 + 32))(a1, &v337, (v136 >> 2), v136 & 3);
          if (*&v130 == *&v137 && *(&v130 + 1) == *(&v137 + 1) && v334 == v138 && *&v131 == *&v139 && *(&v131 + 1) == *(&v139 + 1) && v328 == v140 && *&v133 == *&v337 && *(&v133 + 1) == *(&v337 + 1))
          {
            break;
          }

          if (++v135 == 3)
          {
            ++v132;
            v134 += 3;
            if (v132 != v126)
            {
              goto LABEL_146;
            }

            break;
          }
        }

        *&v128[4 * v127++] = -1;
      }

      while (v127 != 3);
      v125 = v320 + 1;
      ++v126;
      v124 = v316;
    }

    while (v320 + 1 != v316);
  }

  v141 = 0;
  v142 = v322 + 2;
  v143 = 19;
  v144 = v309;
  do
  {
    v145 = *(v142 - 2);
    v146 = *(v142 - 1);
    v147 = *v142;
    DWORD2(v337) = 0;
    *&v337 = 0;
    (*(*a1 + 16))(a1, &v337, (v145 >> 2), v145 & 3);
    v148 = v337;
    v149 = *(&v337 + 2);
    DWORD2(v337) = 0;
    *&v337 = 0;
    (*(*a1 + 16))(a1, &v337, (v146 >> 2), v146 & 3);
    v150 = v337;
    v151 = *(&v337 + 2);
    DWORD2(v337) = 0;
    *&v337 = 0;
    (*(*a1 + 16))(a1, &v337, (v147 >> 2), v147 & 3);
    if (*&v148 == *&v150 && *(&v148 + 1) == *(&v150 + 1) && v149 == v151 || *&v148 == *&v337 && *(&v148 + 1) == *(&v337 + 1) && v149 == *(&v337 + 2) || *&v150 == *&v337 && *(&v150 + 1) == *(&v337 + 1) && v151 == *(&v337 + 2))
    {
      v309[v143] |= 1u;
      ++v141;
    }

    v142 += 3;
    v143 += 22;
    --v124;
  }

  while (v124);
  v152 = (v308 - v141);
  if (v308 != 1)
  {
    v153 = 0;
    do
    {
      v154 = &v309[22 * v153];
      if (v154[18] == v154[40])
      {
        v155 = v154[19];
        v156 = v154[41];
        if ((v156 ^ v155))
        {
          v154[19] = v155 | 2;
          v154[41] = v156 | 2;
        }

        v153 += 2;
      }

      else
      {
        ++v153;
      }
    }

    while (v153 < v308 - 1);
  }

  if (v152 >= 1)
  {
    v157 = 0;
    LODWORD(v158) = 1;
    v159 = v322;
    while (1)
    {
      v160 = &v309[22 * v157];
      if (v160[76])
      {
        if (v158 >= v308)
        {
          goto LABEL_195;
        }

        do
        {
          v162 = v309[22 * v158 + 19] & 1;
          v158 = v162 + v158;
          if (v162)
          {
            v163 = v158 < v308;
          }

          else
          {
            v163 = 0;
          }
        }

        while (v163);
        if (v162)
        {
LABEL_195:
          v172 = v309 + 19;
          v173 = (v308 - v141);
          do
          {
            *(v172 - 19) = -1;
            *(v172 - 17) = -1;
            *(v172 - 15) = 0;
            *(v172 - 11) = 0;
            *(v172 - 13) = 0;
            *v172 |= 4u;
            *(v172 - 9) = 0uLL;
            *(v172 - 5) = 0uLL;
            v172 += 22;
            --v173;
          }

          while (v173);
          v174 = v322 + 2;
          v175 = (v309 + 19);
          v176 = v152;
          do
          {
            v177 = *(v174 - 2);
            DWORD2(v337) = 0;
            *&v337 = 0;
            (*(*a1 + 16))(a1, &v337, (v177 >> 2), v177 & 3);
            v329 = v337;
            v330 = *(&v337 + 4);
            v178 = &v337 + 2;
            v179 = vld1_dup_f32(v178);
            v180 = *(v174 - 1);
            DWORD2(v337) = 0;
            *&v337 = 0;
            (*(*a1 + 16))(a1, &v337, (v180 >> 2), v180 & 3);
            v324 = DWORD1(v337);
            v321 = v337;
            v326 = DWORD2(v337);
            v181 = *v174;
            DWORD2(v337) = 0;
            *&v337 = 0;
            (*(*a1 + 16))(a1, &v337, (v181 >> 2), v181 & 3);
            sizeb = DWORD1(v337);
            v312 = v337;
            v317 = DWORD2(v337);
            v182 = *(v174 - 2);
            *&v337 = 0;
            (*(*a1 + 32))(a1, &v337, (v182 >> 2), v182 & 3);
            v183 = v337;
            v184 = *(v174 - 1);
            *&v337 = 0;
            (*(*a1 + 32))(a1, &v337, (v184 >> 2), v184 & 3);
            v335 = DWORD1(v337);
            v331 = v337;
            v185 = *v174;
            *&v337 = 0;
            (*(*a1 + 32))(a1, &v337, (v185 >> 2), v185 & 3);
            v186 = vsub_f32(__PAIR64__(v335, v337), v183);
            v187 = vsub_f32(__PAIR64__(DWORD1(v337), v331), v183);
            v188 = vmul_f32(vext_s8(v187, v186, 4uLL), __PAIR64__(v186.u32[1], v187.u32[0]));
            v190 = vsub_f32(v188, vdup_lane_s32(v188, 1));
            v189 = v175->i32[0] | (8 * (*v190.i32 > 0.0));
            v175->i32[0] = v189;
            *v190.i32 = fabsf(*v190.i32);
            if (*v190.i32 > 1.1755e-38)
            {
              v191 = vsub_f32(__PAIR64__(v321, v312), vdup_lane_s32(v329, 0));
              v192 = vsub_f32(__PAIR64__(v324, sizeb), vdup_lane_s32(v330, 0));
              v193 = vsub_f32(__PAIR64__(v326, v317), v179);
              v194 = vmul_f32(v186, vrev64_s32(v192));
              v195 = vmul_f32(v186, vrev64_s32(v193));
              v196 = vmla_f32(vneg_f32(vmul_f32(v186, vrev64_s32(v191))), v191, v187);
              v197 = vmla_f32(vneg_f32(v194), v192, v187);
              v198 = vmla_f32(vneg_f32(v195), v193, v187);
              v199 = vsqrt_f32(vmla_f32(vmla_f32(vmul_f32(v197, v197), v196, v196), v198, v198));
              if ((v189 & 8) != 0)
              {
                v200 = 1.0;
              }

              else
              {
                v200 = -1.0;
              }

              if (fabsf(v199.f32[1]) > 1.1755e-38)
              {
                *(v175 - 36) = vmul_n_f32(vzip2_s32(v196, v197), v200 / v199.f32[1]);
                v175[-4].f32[1] = vmuls_lane_f32(v200 / v199.f32[1], v198, 1);
              }

              if (fabsf(v199.f32[0]) > 1.1755e-38)
              {
                v201 = v200 / v199.f32[0];
                v175[-3] = vmul_n_f32(vzip1_s32(v196, v197), v201);
                v175[-2].f32[0] = v201 * v198.f32[0];
              }

              v202 = vdiv_f32(v199, vdup_lane_s32(v190, 0));
              *(&v175[-2] + 4) = vrev64_s32(v202);
              v203 = vmvn_s8(vcgt_f32(vabs_f32(v202), 0x80000000800000));
              if (((v203.i32[1] | v203.i32[0]) & 1) == 0)
              {
                v175->i32[0] = v189 & 0xFFFFFFFB;
              }
            }

            v174 += 3;
            v175 += 11;
            --v176;
          }

          while (v176);
          if (v152 != 1)
          {
            v204 = 0;
            do
            {
              v205 = v204;
              v206 = &v309[22 * v204];
              v207 = v205 + 1;
              if (v206[18] == v206[40])
              {
                v208 = v206[19];
                v209 = v206[41];
                if (((v208 | v209) & 1) == 0 && ((v209 ^ v208) & 8) != 0)
                {
                  if ((v209 & 4) != 0 || (sub_239EA41E8(a1, &v322[3 * v205]), v211 = v210, sub_239EA41E8(a1, &v322[3 * v207]), v211 >= v212))
                  {
                    v213 = v205;
                  }

                  else
                  {
                    v213 = v205 + 1;
                    v207 = v205;
                  }

                  v214 = &v309[22 * v207];
                  v215 = *(v214 + 19) & 0xFFFFFFF7;
                  *(v214 + 19) = v215;
                  *(v214 + 19) = v309[22 * v213 + 19] & 8 | v215;
                }

                LODWORD(v207) = v205 + 2;
              }

              v204 = v207;
            }

            while (v207 < v152 - 1);
          }

          break;
        }

        v164 = 0;
        v161 = v158 + 1;
        v165 = &v322[3 * v158];
        do
        {
          v166 = v159[v164];
          v159[v164] = *&v165[v164 * 4];
          *&v165[v164 * 4] = v166;
          ++v164;
        }

        while (v164 != 3);
        v339 = *(v160 + 2);
        v340 = *(v160 + 3);
        v341 = *(v160 + 4);
        v342 = *(v160 + 10);
        v337 = *v160;
        v338 = *(v160 + 1);
        v167 = &v309[22 * v158];
        v168 = *(v167 + 1);
        *v160 = *v167;
        *(v160 + 1) = v168;
        v170 = *(v167 + 3);
        v169 = *(v167 + 4);
        v171 = *(v167 + 2);
        *(v160 + 10) = *(v167 + 10);
        *(v160 + 3) = v170;
        *(v160 + 4) = v169;
        *(v160 + 2) = v171;
        *v167 = v337;
        *(v167 + 10) = v342;
        *(v167 + 4) = v341;
        *(v167 + 3) = v340;
        *(v167 + 2) = v339;
        *(v167 + 1) = v338;
      }

      else if (v158 <= v157 + 2)
      {
        v161 = v157 + 2;
      }

      else
      {
        v161 = v158;
      }

      ++v157;
      v159 += 3;
      LODWORD(v158) = v161;
      if (v157 == v152)
      {
        goto LABEL_195;
      }
    }
  }

  v216 = malloc_type_malloc(36 * v152, 0x10000403E1C8BA9uLL);
  v217 = (3 * v152);
  if (v216)
  {
    v218 = v216;
    if (v152 <= 0)
    {
      sub_239EA42E0(v216, 0, (v217 - 1), 0, 0x26065CAu);
    }

    else
    {
      v219 = 0;
      v220 = v216 + 8;
      v221 = v322;
      do
      {
        v222 = 0;
        v224 = v220;
        do
        {
          v225 = v221[v222];
          if (v222 == 2)
          {
            v226 = 0;
          }

          else
          {
            v226 = v222 + 1;
          }

          v227 = v222 + 1;
          v223 = &v322[3 * v219];
          v228 = *&v223[4 * v226];
          if (v225 >= v228)
          {
            v229 = *&v223[4 * v226];
          }

          else
          {
            v229 = v225;
          }

          if (v225 > v228)
          {
            v228 = v225;
          }

          *(v224 - 2) = v229;
          *(v224 - 1) = v228;
          *v224 = v219;
          v224 += 3;
          v222 = v227;
        }

        while (v227 != 3);
        ++v219;
        v221 += 3;
        v220 += 9;
      }

      while (v219 != v152);
      sub_239EA42E0(v216, 0, (v217 - 1), 0, 0x26065CAu);
      v230 = 0;
      v231 = 0;
      v232 = v217 - 1;
      v233 = 3;
      do
      {
        if (v218[3 * v231] != v218[v233])
        {
          sub_239EA42E0(v218, v231, v230, 1, 0x26065CAu);
          v231 = v230 + 1;
        }

        ++v230;
        v233 += 3;
      }

      while (v232 != v230);
      v234 = 0;
      v235 = 0;
      v236 = v218 + 4;
      do
      {
        v237 = &v218[3 * v235];
        if (*v237 != *(v236 - 1) || v237[1] != *v236)
        {
          sub_239EA42E0(v218, v235, v234, 2, 0x26065CAu);
          v235 = v234 + 1;
        }

        ++v234;
        v236 += 3;
      }

      while (v232 != v234);
      v238 = 0;
      v144 = v309;
      do
      {
        v239 = &v218[3 * v238];
        v240 = *v239;
        v241 = v239[1];
        v242 = v239[2];
        v243 = &v322[3 * v242];
        v244 = *v243;
        v246 = v243 + 1;
        v245 = v243[1];
        if (*v243 == v240 || v244 == v241)
        {
          if (v245 == v240 || v245 == v241)
          {
            v249 = 0;
          }

          else
          {
            v244 = v243[2];
            v249 = 2;
            v246 = &v322[3 * v242];
          }
        }

        else
        {
          v246 = v243 + 2;
          v244 = v243[1];
          v249 = 1;
        }

        v250 = &v309[22 * v242];
        ++v238;
        if (*&v250[4 * v249] == -1 && v238 < v217)
        {
          v252 = &v218[3 * v238];
          if (v240 == *v252 && v241 == v252[1])
          {
            v253 = *v246;
            v254 = v238;
            v255 = v238;
            do
            {
              v256 = v218[3 * v254 + 2];
              v257 = &v322[3 * v256];
              v258 = *v257;
              v259 = v257 + 1;
              v260 = v257[1];
              if (*v257 == v240 || v258 == v241)
              {
                if (v260 == v240 || v260 == v241)
                {
                  v263 = 0;
                }

                else
                {
                  v258 = v257[2];
                  v263 = 2;
                  v259 = &v322[3 * v256];
                }
              }

              else
              {
                v259 = v257 + 2;
                v263 = 1;
                v258 = v257[1];
              }

              if (v244 == *v259 && ((v264 = v309[22 * v256 + v263], v253 == v258) ? (v265 = v264 == -1) : (v265 = 0), v265))
              {
                v267 = 0;
                v266 = 1;
              }

              else
              {
                v266 = 0;
                ++v255;
                v267 = 1;
              }

              v268 = &v218[3 * v255];
              if (v255 >= v217 || v240 != *v268)
              {
                break;
              }

              v254 = v255;
              v269 = v267 ^ 1;
              if (v241 != v268[1])
              {
                v269 = 1;
              }
            }

            while ((v269 & 1) == 0);
            if (v266)
            {
              v270 = v268[2];
              *&v250[4 * v249] = v270;
              v309[22 * v270 + v263] = v242;
            }
          }
        }
      }

      while (v238 != v217);
    }

    free(v218);
  }

  else if (v152 >= 1)
  {
    for (k = 0; k != v152; ++k)
    {
      v272 = 0;
      v273 = &v309[22 * k];
      v274 = &v322[3 * k];
      do
      {
        if (*&v273[4 * v272] == -1)
        {
          v276 = 0;
          v275 = v272 + 1;
          v277 = (v272 + 1);
          if (v272 == 2)
          {
            v277 = 0;
          }

          v278 = *&v274[4 * v277];
          v279 = v322;
          v280 = v309;
          while (k == v276)
          {
LABEL_306:
            ++v276;
            v280 += 22;
            v279 += 3;
            if (v276 == v152)
            {
              goto LABEL_309;
            }
          }

          v281 = 0;
          while (1)
          {
            v282 = v281 < 2 ? v281 + 1 : 0;
            if (*&v274[4 * v272] == v322[3 * v276 + v282] && v278 == v279[v281])
            {
              break;
            }

            if (++v281 == 3)
            {
              goto LABEL_306;
            }
          }

          *&v273[4 * v272] = v276;
          v280[v281] = k;
        }

        else
        {
          v275 = v272 + 1;
        }

LABEL_309:
        v272 = v275;
      }

      while (v275 != 3);
    }
  }

  v283 = malloc_type_malloc(24 * v217, 0x101004035137979uLL);
  v284 = malloc_type_malloc(12 * v152, 0x100004052888210uLL);
  v285 = v284;
  if (!v283 || !v284)
  {
    if (v283)
    {
      free(v283);
    }

    if (v285)
    {
      free(v285);
    }

    free(v322);
    v52 = v144;
    goto LABEL_341;
  }

  v286 = v144;
  v287 = sub_239EA2C40(v144, v283, v284, v322, v152);
  v288 = malloc_type_malloc(40 * v306, 0x10000400A747E1EuLL);
  if (!v288)
  {
    free(v322);
    free(v286);
    free(v283);
    v52 = v285;
    goto LABEL_341;
  }

  v13 = v288;
  bzero(v288, 40 * v306);
  if (v306 >= 1)
  {
    v289 = v306;
    v290 = (v13 + 16);
    do
    {
      *(v290 - 1) = xmmword_239F9C020;
      *v290 = xmmword_239F9C030;
      v290 = (v290 + 40);
      --v289;
    }

    while (v289);
  }

  v291 = sub_239EA2D9C(v13, v309, v283, v287, v322, a1, v307);
  free(v283);
  free(v285);
  if (!v291)
  {
    free(v309);
    free(v322);
LABEL_33:
    v52 = v13;
LABEL_341:
    free(v52);
LABEL_342:
    result = 0;
    goto LABEL_343;
  }

  v292 = v13;
  sub_239EA3A44(v13, v309, v322, a1, v152, v308);
  free(v309);
  free(v322);
  v293 = 0;
  v294 = 0;
  do
  {
    v295 = (*(*a1 + 8))(a1, v293);
    if ((v295 - 3) <= 1)
    {
      v297 = v295;
      v298 = 0;
      v299 = v292 + 40 * v294 + 20;
      do
      {
        *&v337 = *(v299 - 20);
        DWORD2(v337) = *(v299 - 12);
        v336[0] = *(v299 - 4);
        v336[1] = *v299;
        v336[2] = *(v299 + 4);
        v300 = *a1;
        v301 = *(*a1 + 48);
        if (v301)
        {
          v301(a1, &v337, v336, *(v299 + 16), v293, v298, *(v299 - 8), *(v299 + 8));
          v300 = *a1;
        }

        v302 = *(v300 + 40);
        if (v302)
        {
          if (*(v299 + 16) == 1)
          {
            v296.n128_f32[0] = 1.0;
          }

          else
          {
            v296.n128_f32[0] = -1.0;
          }

          v302(a1, &v337, v293, v298, v296);
        }

        v298 = (v298 + 1);
        v299 += 40;
      }

      while (v297 != v298);
      v294 += v298;
    }

    v293 = (v293 + 1);
  }

  while (v293 != v305);
  free(v292);
  result = 1;
LABEL_343:
  v304 = *MEMORY[0x277D85DE8];
  return result;
}